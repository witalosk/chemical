<?php
namespace app\dao;

use app\common\Db;
use app\model\UserModel;

/**
* MessageDao クラス
*/
class MessageDao
{
  /**
   * MessageテーブルをUserIdから検索
   * @var int
   * @return array
   */
  static public function getDaoFromUserId($id)
  {
    $sql = 'SELECT * FROM message WHERE userId=:id ORDER BY mesId DESC';
    $arr[':id'] = $id;

    return Db::select($sql, $arr);
  }

}
