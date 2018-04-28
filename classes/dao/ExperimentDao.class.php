<?php

namespace app\dao;

use app\common\Db;
use app\common\ApplicationErrorException;
use app\common\ExceptionCode;

/**
* ExperimentDao クラス
* @brief 実験テーブル用のSQLをつくる
*/
class ExperimentDao
{

  /**
   * 実験一覧を取得する
   */
   static public function getAllDao()
   {
     $sql = "SELECT * FROM `experiment`";

     return Db::select($sql);
   }

   /**
    * 指定されたBeforeの反応式を検索する
    * @param array 検索するアイテムidの配列
    */
   static public function getDaoFromItemIds($ids)
   {
     //引数がないとエラー
     if($ids == null) {
       throw new ApplicationErrorException(ExceptionCode::APPLICATION_ERR);
     }

     $firstflag = 1;
     $array = [];

     //SQL作成
     $sql = "SELECT * FROM `experiment` WHERE ";
     foreach ($ids as $id) {
       if($firstflag == 1) {
         $sql .= "`exBefore like '%:id".$id."%'`";
         $firstflag = 0;
       }
       else {
         $sql .= " and `exBefore like '%:id".$id."%'`";
       }
       array_push($array, $id);
     }

     print $sql;
     var_dump($array);
   }

}
