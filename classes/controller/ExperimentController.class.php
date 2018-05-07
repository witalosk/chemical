<?php
namespace app\controller;

use \app\controller\UserController;
use \app\controller\ItemController;
use \app\controller\CollectionController;
use \app\model\UserModel;
use \app\model\ExperimentModel;
use \app\dao\ExperimentDao;
use \app\model\ExperimentingModel;
use \app\dao\ExperimentingDao;
use \app\dao\EnvironDao;
use \app\common\Db;


class ExperimentController extends ControllerBase
{

  /**
   * インデックスアクション
   */
  public function indexAction()
  {
    UserController::checkLogin();

    $objUm = new UserModel;
    $objUm = UserController::getLoginUser();

    //POSTを取得
    $posts = $this->request->getPost();

    //POSTされていなかったら
    if(null == $posts) {
      //現在実験中のものがあるかチェックする
      $nowEx = ExperimentController::getExperimentingByUserId($objUm->id);
      if(null == $nowEx->id) {
        //アイテムを取得して通常ページを生成
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
      else {
        $ex = ExperimentController::getExperimentById($nowEx->exId);
        //時間満了なら結果画面を表示(時間計算)
        $now = time();
        $endTime = strtotime($nowEx->startTime) + $ex[0]['exWaitTime'];
        if($endTime <= $now) {
          //実験完了画面を表示
          $befores = explode(',', $ex[0]['exAfter']);
          Db::transaction();
          foreach ($befores as $before) {
            ItemController::itemOperate($before, '+ 1');
            CollectionController::resistCollection($before);
          }
          $nowEx->delete();
          $objUm->addMessage('[実験完了!] '.$ex[0]['exFormura']);
          Db::commit();
          $this->templatePath = 'experiment/experiment_finished.tpl';
          $this->view->assign('exFormura', $ex[0]['exFormura']);
        }
        else {
          //実験中画面を表示
          $this->templatePath = 'experiment/experimenting.tpl';
          $this->view->assign('startTime', $nowEx->startTime);
          $this->view->assign('exId', $nowEx->exId);
          $this->view->assign('waitTime', $ex[0]['exWaitTime']);
          $this->view->assign('diff', $ex[0]['exWaitTime']);
        }
      }
    }
    else {
      //POSTされていたら実験テーブルから実験を検索
      $items = $posts['itemr'];
      $ex = ExperimentController::getExperimentByBefore($items, $posts['environ']);

      if(null == $ex) {
        //失敗なら
        $this->templatePath = 'experiment/experiment_failed.tpl';
      }
      else {
        //挿入して実験中画面を表示する
        $objEm = new ExperimentingModel();
        $objEm->userId = $objUm->id;
        $objEm->exId = $ex[0]['exId'];
        $objEm->startTime = date('Y/m/d H:i:s');
        $befores = explode(',', $ex[0]['exBefore']);
        Db::transaction();
        foreach ($befores as $before) {
          ItemController::itemOperate($before, '- 1');
        }
        $objEm->register();
        Db::commit();
        $this->templatePath = 'experiment/experimenting.tpl';
        $this->view->assign('startTime', $objEm->startTime);
        $this->view->assign('exId', $objEm->exId);
        $this->view->assign('waitTime', $ex[0]['exWaitTime']);
        $this->view->assign('diff', $ex[0]['exWaitTime']);

      }


    }
  }

  static public function getExperimentingByUserId($id)
  {
    $array = ExperimentingDao::getDaoFromUserId($id);
    @$objEm = new ExperimentingModel($array[0]);

    return $objEm ;
  }

  static public function getAllExperiment()
  {
    return ExperimentDao::getAllDao();
  }

  static public function getExperimentByBefore($ids, $env)
  {
    return ExperimentDao::getDaoFromItemIds($ids, $env);
  }

  static public function getExperimentById($id)
  {
    return ExperimentDao::getDaoFromId($id);
  }

  static public function getAllEnviron()
  {
    return EnvironDao::getAllDao();
  }
}
