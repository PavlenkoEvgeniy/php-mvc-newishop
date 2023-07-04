<?php

namespace app\controllers;

use wfm\Controller;

/** @property Main $model*/
class MainController extends Controller
{
    public function indexAction()
    {
        $names = $this->model->get_names();
//        debug($names);
        $this->setMeta('Главная страница', 'Description...', 'keywords...');
        $this->set(compact('names'));
    }
}