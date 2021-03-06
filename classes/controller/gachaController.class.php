<?php
namespace app\controller;

use app\common\Db;
use app\model\UserModel;
use app\controller\ControllerBase;
use app\controller\ItemController;
use app\controller\UserController;
use app\controller\CollectionController;


class GachaController extends ControllerBase
{
  public function indexAction()
  {
    UserController::checkLogin();
  }

  public function rareAction()
  {
    UserController::checkLogin();
    $objUm = new UserModel;
    $objUm = UserController::getLoginUser();
    if($objUm->coin < 250) {
      header("Location: /gacha");
      die();
    }
    $random = rand(0,99);
    $rare = 0;
    if($random < 3) {
      $rare = 5;
    }
    else if($random < 10) {
      $rare = 4;
    }
    else if($random < 20) {
      $rare = 3;
    }
    else if($random < 60) {
      $rare = 2;
    }
    else {
      $rare = 1;
    }
    $items = ItemController::getItemFromRare($rare);
    $item = $items[rand(0,sizeof($items)-1)];
    Db::transaction();
    ItemController::itemOperate($item['itemId'], '+ 1');
    CollectionController::resistCollection($item['itemId']);
    UserController::coinOperate('- 250');
    $objUm->addMessage("[★".$rare."] ".$item['itemName']."を手に入れた!");
    Db::commit();
    $this->view->assign('rare', $item['itemReality']);
    $this->view->assign('img', $item['itemPicture']);
    $this->view->assign('name', $item['itemName']);
  }

  public function normalAction()
  {
    UserController::checkLogin();
    $objUm = new UserModel;
    $objUm = UserController::getLoginUser();
    if($objUm->coin < 100) {
      header("Location: /gacha");
      die();
    }
    $random = rand(0,99);
    $rare = 0;
    if($random < 20) {
      $rare = 2;
    }
    else {
      $rare = 1;
    }
    $items = ItemController::getItemFromRare($rare);
    $item = $items[rand(0,sizeof($items)-1)];
    Db::transaction();
    ItemController::itemOperate($item['itemId'], '+ 1');
    CollectionController::resistCollection($item['itemId']);
    UserController::coinOperate('- 100');
    $objUm->addMessage("[★".$rare."] ".$item['itemName']."を手に入れた!");
    Db::commit();
    $this->view->assign('rare', $item['itemReality']);
    $this->view->assign('img', $item['itemPicture']);
    $this->view->assign('name', $item['itemName']);
  }
}
