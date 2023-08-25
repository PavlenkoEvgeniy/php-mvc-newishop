<?php

namespace app\controllers;

class Language extends AppController
{
    public function changeAction()
    {
        $lang = $_GET['lang'] ?? null;
        var_dump($lang);
        die;
    }
}