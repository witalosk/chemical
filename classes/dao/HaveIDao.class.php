<?php
namespace app\dao;

use app\common\Db;
use app\model\UserModel;

/**
* HaveIDao クラス
*/
class HaveIDao
{
  /**
   * HaveIテーブルをUserIdから検索
   * @var int
   * @return array
   */
  static public function getDaoFromUserId($id)
  {
    $sql = 'SELECT * FROM haveI WHERE userId=:id';
    $arr[':id'] = $id;

    return Db::select($sql, $arr);
  }

}
