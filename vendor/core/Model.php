<?php

namespace core;

abstract class Model
{
    public array $attributes = []; // что именно мы ожидаем от пользователя чтобы не могло попасть ничего лишнего
    public array $errors = []; // ошибки
    public array $rules = []; // правила валидации
    public array $labels = []; // переводные фразы для ошибки валидации

    public function __construct()
    {
        Db::getInstance();
    }

    // проверка пришедших через POST данных, отсекаем ненужное
    public function load($data)
    {
        foreach ($this->attributes as $name => $value) {
            if (isset($data[$name])) {
                $this->attributes[$name] = $data[$name];
            }
        }
    }
}