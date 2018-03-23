<?php
namespace app\dao;

use app\common\Db;
use app\model\UserModel;

/**
* ItemDao クラス
*/
class ItemDao
{
  /**
   * Itemテーブル全体を返す
   * @return array
   */
  static public function getAllDao()
  {
    $sql = 'SELECT * FROM item';
    $arr = [];

    return Db::select($sql, $arr);
  }

  /**
   * ItemテーブルをItemIdから検索
   * @var int
   * @return array
   */
  static public function getDaoFromItemId($id)
  {
    $sql = 'SELECT * FROM item WHERE itemId=:id';
    $arr[':id'] = $id;

    return Db::select($sql, $arr);
  }

}
