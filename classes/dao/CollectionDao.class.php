<?php
namespace app\dao;

use app\common\Db;
use app\model\UserModel;

/**
* CollectionDao クラス
*/
class CollectionDao
{
  /**
   * CollectionテーブルをUserIdから検索
   * @var int
   * @return array
   */
  static public function getDaoFromUserId($id)
  {
    $sql = 'SELECT * FROM collection WHERE userId=:id';
    $arr[':id'] = $id;

    return Db::select($sql, $arr);
  }

}
