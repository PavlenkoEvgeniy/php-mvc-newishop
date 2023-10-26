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

    // данные для авторизации
    public function login($is_admin = false)
    {
        $email = post('email');
        $password = post('password');

        if ($email && $password) {
            if ($is_admin) {
                $user = R::findOne('user', "email = ? AND role = 'admin'", [$email]);
            } else {
                $user = R::findOne('user', "email = ?", [$email]);
            }

            if ($user) {
                if (password_verify($password, $user->password)) {
                    foreach ($user as $k => $v) {
                        if ($k != 'password')
                        $_SESSION['user'][$k] = $v;
                    }
                    return true;
                }
            }
        }
       return false;
    }

    public function get_count_orders($user_id): int
    {
        return R::count('orders', 'user_id = ?', [$user_id]);
    }

    public function get_user_orders($start, $perpage, $user_id): array
    {
        return R::getAll("SELECT * FROM orders WHERE user_id = ? ORDER BY id DESC LIMIT $start, $perpage", [$user_id]);
    }

}