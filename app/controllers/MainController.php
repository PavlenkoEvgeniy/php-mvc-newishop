<?php

namespace app\controllers;

use RedBeanPHP\R;

/** @property Main $model*/
class MainController extends AppController
{
    public function indexAction()
    {
        $slides = R::findAll('slider');

        $products = $this->model->get_hits(1, 6);

        $this->set(compact('slides', 'products'));
    }
}