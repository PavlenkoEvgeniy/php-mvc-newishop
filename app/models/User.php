<?php

namespace app\models;

use RedBeanPHP\R;

class User extends AppModel
{
    // безопасные данные
    public array $attributes = [
        'email' => '',
        'password' => '',
        'name' => '',
        'address' => '',
    ];

    // массив с правилами для валидации
    public array $rules = [
        'required' => ['email', 'password', 'name', 'address'],
        'email' => ['email',],
        'lengthMin' => [
            ['password', 6],
        ],
    ];

    // переводные фразы для названий полей при выводе ошибок
    public array $labels = [
        'email' => 'tpl_signup_email_input',
        'password' => 'tpl_signup_password_input',
        'name' => 'tpl_signup_name_input',
        'address' => 'tpl_signup_address_input',
    ];

    // проверка залогинен ли юзер
    public static function checkAuth(): bool
    {
        return isset($_SESSION['user']);
    }

    // проверка есть ли такой пользователь в базе данных
    public function checkUnique($text_error = ''): bool
    {
        $user = R::findOne('user', 'email = ?', [$this->attributes['email']]);

        if ($user) {
            $this->errors['unique'][] = $text_error ?: ___('user_signup_error_email_unique');
            return false;
        }
        return true;
    }



}