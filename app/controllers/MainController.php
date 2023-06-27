<?php

namespace app\controllers;

class MainController
{
    public function indexAction()
    {
        echo "Привет, мир";
        echo __METHOD__;
    }
}