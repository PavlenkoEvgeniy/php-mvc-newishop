<?php

if (PHP_MAJOR_VERSION < 8) {
    exit('Необходима версия PHP >= 8.0');
}

require_once dirname(__DIR__) . '/config/init.php';

new \wfm\App();

//throw new Exception('Возникла ошибочка ', 404);

//echo $test;

echo 'Hello!';