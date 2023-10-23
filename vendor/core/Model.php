<?php

namespace core;

use RedBeanPHP\R;
use Valitron\Validator;

abstract class Model
{
    public array $attributes = []; // что именно мы ожидаем от пользователя чтобы не могло попасть ничего лишнего
    public array $errors = []; // ошибки валидации
    public array $rules = []; // правила валидации
    public array $labels = []; // переводные фразы для ошибки валидации

    public function __construct()
    {
        Db::getInstance();
    }

    // проверяем пришедшие от пользователя через POST данные, отсекаем ненужное, и загружаем в $attributes
    public function load($data)
    {
        foreach ($this->attributes as $name => $value) {
            if (isset($data[$name])) {
                $this->attributes[$name] = $data[$name];
            }
        }
    }

    // валидируем данные пришедшие от пользователя
    public function validate($data): bool
    {
        Validator::langDir(APP . '/languages/validator/lang'); // языковые файлы для валиватора
        Validator::lang('ru');
        $validator = new Validator($data);
        $validator->rules($this->rules);
        $validator->labels($this->getLabels());
        if ($validator->validate()) {
            return true;
        } else {
            $this->errors = $validator->errors();
            debug($this->errors);
            return false;
        }
    }

    // собираем ошибки валидации чтобы их показать
    public function getErrors()
    {
        $errors = '<ul>';
        foreach ($this->errors as $error) {
            foreach ($error as $item) {
                $errors .= "<li>{$item}</li>";
            }
        }
        $errors .= '</ul>';
        $_SESSION['errors'] = $errors;
    }

    // записываем переводные фразы для названий полей при выводе ошибок
    public function getLabels(): array
    {
        $labels = [];
        foreach ($this->labels as $k => $v) {
            $labels[$k] = ___($v);
        }
        return $labels;
    }

    // сохранение данных в базу данных
    public function save($table): int|string
    {
        $tbl = R::dispense($table);
        foreach ($this->attributes as $name => $value) {
            if ($value != '') {
                $tbl->$name = $value;
            }
        }
        return R::store($tbl);
    }
}