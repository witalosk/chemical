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

  static public function addMessageDao($userid, $date, $msg)
  {
    $sql = "INSERT INTO `message` VALUES (";
    $sql .= " :id ";
    $sql .= ", :userid ";
    $sql .= ", :mesdate ";
    $sql .= ", :mestext ";
    $sql .= ")";

    $arr = array();
    $arr[':id'] = null;
    $arr[':userid'] = $userid;
    $arr[':mesdate'] = $date;
    $arr[':mestext'] = $msg;

    return Db::insert($sql, $arr);
  }

}
