<?php

namespace app\controllers;

use core\App;

class LanguageController extends AppController
{
    public function changeAction()
    {
        $lang = get('lang', 's');
        if ($lang) {
            if (array_key_exists($lang, App::$app->getProperty('languages'))) {
                // отрезаеи базовый URL
                $url = trim(str_replace(PATH, '', $_SERVER['HTTP_REFERER']), '/');

                // разбиваем на две части... 1-я часть - это возможный бывший язык
                $url_parts = explode('/', $url, 2);

                // ищем первую часть (бывший язык) в массиве языков
                if (array_key_exists($url_parts[0], App::$app->getProperty('languages'))) {
                    // присваиваем первой части новый язык, если он не является базовым
                    if ($lang != App::$app->getProperty('language')['code']) {
                        $url_parts[0] = $lang;
                    } else {
                        // если это базовый язык - удалим язык из url
                        array_shift($url_parts);
                    }
                } else {
                    // присваиваем первой части новый язык, если он не является базовым
                    if ($lang != App::$app->getProperty('language')['code']) {
                        array_unshift($url_parts, $lang);
                    }
                }
                $url = PATH . '/' . implode('/', $url_parts);
                redirect($url);
            }
        }
        redirect();
    }
}