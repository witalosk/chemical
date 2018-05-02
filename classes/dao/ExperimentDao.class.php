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
    * 実験一覧をIdから取得する
    */
    static public function getDaoFromId($id)
    {
      $sql = "SELECT * FROM `experiment` WHERE `exId` = :id";
      $array[':id'] = $id;
      return Db::select($sql, $array);
    }
   /**
    * 指定されたBeforeの反応式を検索する
    * @param array 検索するアイテムidの配列
    */
   static public function getDaoFromItemIds($ids, $env)
   {
     //引数がないとエラー
     if($ids == null) {
       throw new ApplicationErrorException(ExceptionCode::APPLICATION_ERR);
     }
     $ids_t = $ids;
     sort($ids_t);

     $array = [];
     //SQL作成
     $sql = "SELECT * FROM `experiment` WHERE `exBefore` = :exb";
     $array[':exb'] = implode(',', $ids_t);

     return Db::select($sql, $array);
   }

}
