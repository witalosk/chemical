<?php

namespace app\controller;

use \app\model\UserModel;
use \app\dao\UserDao;
use \app\model\GimonModel;
use \app\dao\MessageDao;
use app\dao\ItemDao;
use app\dao\HaveIDao;
use app\dao\CollectionDao;
use app\common\InvalidErrorException;
use app\common\ExceptionCode;

/**
* CollectionController クラス
* @brief 図鑑に関する処理を行う
*/
class CollectionController extends ControllerBase
{

  /**
   * 図鑑の表示
   */
  public function indexAction()
  {
    //ログインユーザの取得
    $objUm = new UserModel;
    $objUm = UserController::getLoginUser();

    //Collectionしてあるアイテムの取得
    $col = $this::getCollectionFromUserId($objUm->id);
    $allItem = $this::getAllItem();
    $res = [];

    //Collectionに1が入っているものだけを結果用配列に挿入
    for($i=0; $i<=ITEM_NUM; $i++){
      if(@$col["c$i"]!=0 && isset($col["c$i"])){
        //アイコンがないものはnoimageにする
        if(!isset($allItem[$i-1]["itemIcon"]) || $allItem[$i-1]["itemIcon"]==""){
          $itemIcon = "img/item/noicon.png";
        }else{
          $itemIcon = $allItem[$i-1]["itemIcon"];
        }
        array_push($res, [$i, $itemIcon, $i]);
      }
    }
    $this->view->assign('items', $res);
  }

  public function getcollectionAction()
  {
    $posts = $this->request->getPost();
    $itemId = $posts['itemr'];
    if(@isset($posts)){
      try {
        $row = $this::getItemFromItemId($itemId);
        $reality = $row['itemReality'];
        $iconpath = $row["itemIcon"];
        $name = $row["itemName"];
        $price = $row["itemPrice"];
        $picpath = $row["itemPicture"];
        $molWeight = $row["itemMolWeight"];
        $color = $row["itemColor"];
        $text = $row["itemText"];
      } catch (Exception $e) {
        $iconpath = "img/item/s3.png";
        $name = "アイテムが存在しません。";
        $price = 0;
      }
    }else{
      $iconpath = "img/item/s3.png";
      $name = "アイテムが存在しません!";
      $price = 0;
    }
    if(!isset($row["itemName"])){
      $iconpath = "img/item/s3.png";
      $name = "存在しません";
      $price = 0;
      $molWeight = 0;
      $color = "無色";
    }

    if(!isset($iconpath) || $iconpath==""){
      //アイコンの初期値
      $iconpath = "img/item/noicon.png";
    }
    if(!isset($picpath) || $picpath==""){
      //画像の初期値
      $picpath = "img/noimage.png";
    }

    $this->view->assign('id',$itemId);
    $this->view->assign('iconpath',$iconpath);
    $this->view->assign('reality',$reality);
    $this->view->assign('picpath',$picpath);
    $this->view->assign('name',$name);
    $this->view->assign('price',$price);
    $this->view->assign('molWeight',$molWeight);
    $this->view->assign('color',$color);
    $this->view->assign('text',$text);

  }


  static public function getAllItem()
  {
    return ItemDao::getAllDao();
  }

  static public function getItemFromItemId($id)
  {
    return ItemDao::getDaoFromItemId($id)[0];
  }

  static public function getCollectionFromUserId($id)
  {
    return CollectionDao::getDaoFromUserId($id)[0];
  }
}
