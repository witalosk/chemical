<?php

namespace app\dao;

use app\model\ExperimentingModel;
use app\common\Db;
use app\common\ApplicationErrorException;
use app\common\ExceptionCode;

/**
* ExperimentingDao クラス
* @brief 実験中テーブル用のSQLをつくる
*/
class ExperimentingDao
{

  /**
   * 実験中一覧を取得する
   */
   static public function getAllDao()
   {
     $sql = "SELECT * FROM `experimenting`";

     return Db::select($sql);
   }

   /**
    * 指定されたexperimentingidのexperimentingを返す
    * @param int 検索するexperimentingid
    */
   static public function getDaoFromExperimentingId($id)
   {
     $sql = "SELECT * FROM `experimenting` WHERE `experimentingId` = :id";
     $array[':id'] = $id;

     return Db::select($sql, $array);
   }

   /**
    * 指定されたuseridのexperimentingを返す
    * @param int 検索するexperimentingid
    */
   static public function getDaoFromUserId($id)
   {
     $sql = "SELECT * FROM `experimenting` WHERE `userId` = :id";
     $array[':id'] = $id;

     return Db::select($sql, $array);
   }

   /**
   * 更新する
   * @param experimentingModel $objUM
   * @return bool
   */
   public static function save(experimentingModel $objUM)
   {
       $sql = "UPDATE `experimenting` SET ";
       $sql .= "`userId`= :userId, ";
       $sql .= "`exId`= :exId, ";
       $sql .= "`startTime`= :startTime ";
       $sql .= "WHERE `id` = :id ";

       $arr = array();
       $arr[':userId'] = $objUM->userId;
       $arr[':exId'] = $objUM->exId;
       $arr[':startTime'] = $objUM->startTime;
       $arr[':id'] = $objUM->id;

       return Db::update($sql, $arr);
   }

   /**
   * 新規作成する
   * @return int
   */
   public static function insert(experimentingModel $objUM)
   {
       $sql = "INSERT INTO `experimenting` VALUES (";

       $sql .= ":id ";
       $sql .= ", :userId ";
       $sql .= ", :exId ";
       $sql .= ", :startTime ";
       $sql .= ")";

       $arr = array();
       $arr[':id'] = $objUM->id;
       $arr[':userId'] = $objUM->userId;
       $arr[':exId'] = $objUM->exId;
       $arr[':startTime'] = $objUM->startTime;

       return Db::insert($sql, $arr);
   }

   /**
    * 削除する
    */
   public static function delete(experimentingModel $objEm)
   {
     $sql = "DELETE FROM `experimenting` WHERE id = :id";
     $arr[':id'] = $objEm->id;

     return Db::delete($sql, $arr);
   }


}
