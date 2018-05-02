<?php

namespace app\dao;

use app\common\Db;
use app\common\ApplicationErrorException;
use app\common\ExceptionCode;

class EnvironDao
{
  static public function getAllDao()
  {
    $sql = "SELECT * FROM `environment`";

    return Db::select($sql);
  }
}
