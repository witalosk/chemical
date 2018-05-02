<?php
namespace app\controller;

use \app\controller\UserController;
use \app\controller\ItemController;
use \app\model\UserModel;
use \app\model\ExperimentModel;
use \app\dao\ExperimentDao;
use \app\dao\EnvironDao;


class ExperimentController extends ControllerBase
{

  /**
   * インデックスアクション
   */
  public function indexAction()
  {
    //アイテムを取得
    $objUm = new UserModel;
    $objUm = UserController::getLoginUser();
    $haveI = ItemController::getHaveIFromUserId($objUm->id);
    $allItem = ItemController::getAllItem();
    $res = [];

    for($i=0; $i<=ITEM_NUM; $i++){
      if(@$haveI["hi$i"]!=0 && isset($haveI["hi$i"])){
        if(!isset($allItem[$i-1]["itemIcon"]) || $allItem[$i-1]["itemIcon"]==""){
          $itemIcon = "img/item/noicon.png";
        }else{
          $itemIcon = $allItem[$i-1]["itemIcon"];
        }
        array_push($res, [$i, $itemIcon, $haveI["hi$i"], $allItem[$i-1]["itemName"]]);
      }
    }
    $this->view->assign('items', $res);

    //環境を取得
    $environs = $this::getAllEnviron();
    $this->view->assign('environs', $environs);
  }

  static public function getAllExperiment()
  {
    return ExperimentDao::getAllDao();
  }

  static public function getExperimentByBefore($ids)
  {
    return ExperimentDao::getDaoFromItemIds($ids);
  }

  static public function getAllEnviron()
  {
    return EnvironDao::getAllDao();
  }
}
