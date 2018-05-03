<?php
namespace app\controller;

use app\model\UserModel;
use app\dao\ItemDao;
use app\dao\HaveIDao;
use app\dao\CollectionDao;
use app\controller\UserController;
use app\common\InvalidErrorException;
use app\common\ExceptionCode;
use app\common\Db;

class ItemController extends ControllerBase
{
  public function indexAction()
  {
    $objUm = new UserModel;
    $objUm = UserController::getLoginUser();
    $haveI = $this::getHaveIFromUserId($objUm->id);
    $allItem = $this::getAllItem();
    $res = [];

    for($i=0; $i<=ITEM_NUM; $i++){
      if(@$haveI["hi$i"]!=0 && isset($haveI["hi$i"])){
        if(!isset($allItem[$i-1]["itemIcon"]) || $allItem[$i-1]["itemIcon"]==""){
          $itemIcon = "img/item/noicon.png";
        }else{
          $itemIcon = $allItem[$i-1]["itemIcon"];
        }
        array_push($res, [$i, $itemIcon, $haveI["hi$i"]]);
      }
    }
    $this->view->assign('items', $res);
  }

  public function getitemAction()
  {
    $posts = $this->request->getPost();
    $itemId = $posts['itemr'];
    if(@isset($posts)){
      try {
        $row = $this::getItemFromItemId($itemId);
        $iconpath = $row["itemIcon"];
        $name = $row["itemName"];
        $price = $row["itemPrice"];
        $picpath = $row["itemPicture"];
        $molWeight = $row["itemMolWeight"];
        $color = $row["itemColor"];
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

    $this->view->assign('iconpath',$iconpath);
    $this->view->assign('picpath',$picpath);
    $this->view->assign('name',$name);
    $this->view->assign('price',$price);
    $this->view->assign('molWeight',$molWeight);
    $this->view->assign('color',$color);

  }

  public function sellAction()
  {
    $posts = $this->request->getPost();
    $item = ItemController::getItemFromItemId($posts['itemId']);
    Db::transaction();
    ItemController::itemOperate($item['itemId'], '- '.$posts['num']);
    UserController::coinOperate('+ '.$item['itemPrice'] * $posts['num']);
    Db::commit();
    header('Location: /item');
  }

  /**
   * アイテムの個数を操作
   */
  static public function itemOperate($itemId, $number)
  {
    $objUm = new UserModel;
    $objUm = UserController::getLoginUser();
    HaveIDao::operateDao($objUm->id, $itemId, $number);
  }


  static public function getAllItem()
  {
    return ItemDao::getAllDao();
  }

  static public function getItemFromItemId($id)
  {
    return ItemDao::getDaoFromItemId($id)[0];
  }

  static public function getHaveIFromUserId($id)
  {
    return HaveIDao::getDaoFromUserId($id)[0];
  }

  static public function getCollectionFromUserId($id)
  {
    return CollectionDao::getDaoFromUserId($id)[0];
  }

}
