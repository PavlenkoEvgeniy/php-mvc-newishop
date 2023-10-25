<?php

namespace core;

use RedBeanPHP\R;

class Db
{

    use TSingleton;

    private function __construct()
    {
        $db = require_once CONFIG . '/config_db.php';
        R::setup($db['dsn'], $db['user'], $db['password']);

        if (!R::testConnection()) {
            throw new \Exception('No connection to db', 500);
        }

        R::freeze(true);

        if (DEBUG) {
            R::debug(true, 3);
        }

        // чтобы обойти ограничение RedbeanPHP в использовании подчеркивания в названии таблиц
        R::ext('xdispense', function( $type ){
            return R::getRedBean()->dispense( $type );
        });
    }

}