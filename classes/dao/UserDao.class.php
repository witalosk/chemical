<?php

namespace app\dao;

use app\common\Db;
use app\model\UserModel;

/**
* UserDao クラス
* @brief ユーザに関する処理のSQL文をつくる
*/
class UserDao
{

    /**
    * ユーザーIDから配列を取得する
    * @param int $userId
    * @return array
    */
    public static function getDaoFromId($id)
    {
        $sql = "SELECT ";
        $sql .= " * ";
        $sql .= "FROM `user` ";
        $sql .= "WHERE `id` = :id ";

        $arr = array();
        $arr[':id'] = $id;

        $res = Db::select($sql, $arr);
        return $res;
    }
    /**
    * mailAddressから配列を取得する
    * @param int $userId
    * @return array
    */
    public static function getDaoFromMailAddress($mailAddress)
    {
        $sql = "SELECT ";
        $sql .= " * ";
        $sql .= "FROM `user` ";
        $sql .= "WHERE `mailAddress` = :mailAddress ";

        $arr = array();
        $arr[':mailAddress'] = $mailAddress;

        $res = Db::select($sql, $arr);
        return $res;
    }

    /**
    * 更新する
    * @param UserModel $objUM
    * @return bool
    */
    public static function save(UserModel $objUM)
    {
        $sql = "UPDATE `user` SET ";
        $sql .= "`mailAddress`= :mailAddress, ";
        $sql .= "`password`= :password, ";
        $sql .= "`nickName`= :nickName, ";
        $sql .= "`coin`= :coin, ";
        $sql .= "`level`= :level ";
        $sql .= "`exp`= :exp ";
        $sql .= "`loginTimes`= :loginTimes ";
        $sql .= "`lastLogin`= :lastLogin ";
        $sql .= "WHERE `id` = :id ";

        $arr = array();
        $arr[':mailAddress'] = $objUM->mailAddress;
        $arr[':password'] = $objUM->password;
        $arr[':nickName'] = $objUM->nickName;
        $arr[':coin'] = $objUM->coin;
        $arr[':level'] = $objUM->level;
        $arr[':exp'] = $objUM->exp;
        $arr[':loginTimes'] = $objUM->loginTimes;
        $arr[':lastLogin'] = $objUM->lastLogin;
        $arr[':id'] = $objUM->id;

        return Db::update($sql, $arr);
    }

    /**
    * 新規作成する
    * @return int
    */
    public static function insert(UserModel $objUM)
    {
        $sql = "INSERT INTO `user` VALUES (";
        $sql .= ":id ";
        $sql .= ", :mailAddress ";
        $sql .= ", :password ";
        $sql .= ", :nickName ";
        $sql .= ", :coin ";
        $sql .= ", :level ";
        $sql .= ", :exp ";
        $sql .= ", :loginTimes ";
        $sql .= ", :lastLogin ";
        $sql .= ")";

        $arr = array();
        $arr[':id'] = $objUM->id;
        $arr[':mailAddress'] = $objUM->mailAddress;
        $arr[':password'] = $objUM->password;
        $arr[':nickName'] = $objUM->nickName;
        $arr[':coin'] = $objUM->coin;
        $arr[':level'] = $objUM->level;
        $arr[':exp'] = $objUM->exp;
        $arr[':loginTimes'] = $objUM->loginTimes;
        $arr[':lastLogin'] = $objUM->lastLogin;

        return Db::insert($sql, $arr);
    }

}
