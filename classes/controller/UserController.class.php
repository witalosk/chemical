<?php

namespace app\controller;

use app\controller\ItemController;
use \app\model\UserModel;
use \app\dao\UserDao;
use \app\model\GimonModel;
use \app\dao\MessageDao;
use \app\common\Db;
use \app\common\InvalidErrorException;
use \app\common\ExceptionCode;
use \app\common\Request;


/**
* UserController クラス
* @brief ユーザに関する処理を行う
*/
class UserController extends ControllerBase
{
  //!セッション保存用の名前
  const LOGINUSER = 'lum';

  public function infoAction()
  {
    $objUm = new UserModel;
    $objUm = $this::getLoginUser();

    //ログインボーナス
    if($objUm->lastLogin != date('Ymd')) {
      if ($objUm->loginTimes < 8) {
        $coin = $objUm->loginTimes%7*100 + 1000;
        $this->templatePath = 'user/startloginbonus.tpl';
      }
      else {
        $coin = $objUm->loginTimes%7*100 + 100;
        $this->templatePath = 'user/loginbonus.tpl';
      }
      Db::transaction();
      UserController::coinOperate('+ '.$coin);
      $objUm->addMessage("[ログインボーナス] ".$coin."コインゲット!");
      $objUm->loginTimes++;
      $objUm->lastLogin = date('Ymd');
      $objUm->save();
      UserController::sessionUpdate();
      Db::commit();

      $this->view->assign('coin', $coin);
      $this->view->assign('logintimes', $objUm->loginTimes);
    }

    //メッセージを取得
    $msgs = $objUm->getMessage();

    $this->view->assign('msgs', $msgs);
  }

  /**
  * ログイン状態かどうかをチェックする
  *
  * @param str ログイン後のリダイレクト先のURL
  * @param bool リダイレクトするか
  * @return void
  */
  static public function checkLogin($redirectURL = '', $redirect = true)
  {
    $token = (isset($_SESSION['access_token'])) ?
    $_SESSION['access_token'] : null;

    if(isset($token))
    {
      return true;
    }
    if($redirect == true)
    {
      header('Location:'.WEB_URL);
    }
    else
    {
      return false;
    }
  }




  /**
  * ログイン中のユーザーモデルを取得する
  *
  * @return UserModel
  */
  static public function getLoginUser()
  {
    return $_SESSION[self::LOGINUSER];
  }

  /**
   * コインを操作
   */
  static public function coinOperate($number)
  {
    $objUm = new UserModel;
    $objUm = UserController::getLoginUser();
    UserDao::operateDao($objUm->id, $number);
    UserController::sessionUpdate();
  }

  /**
   * ログイン処理
   *
   * @return bool
   */
  static public function login($mailAddress, $password)
  {
    $objUm = new UserModel;
    $objUm->getModelByMailAddress($mailAddress);
    var_dump($objUm);

    //データが見つからなかったり、パスワードが不一致の場合false
    if (null == $objUm->id || !password_verify($password, $objUm->password)) {
      return false;
    }

    //見つかった場合、セッションに保存
    $_SESSION[self::LOGINUSER] = $objUm;
    return true;
  }

  static public function sessionUpdate()
  {
    $objUm = new UserModel;
    $objUm = UserController::getLoginUser();
    $objUm->getModelById($objUm->id);

    //見つかった場合、セッションに保存
    $_SESSION[self::LOGINUSER] = $objUm;
  }

  /**
  * ログアウトする
  *
  * @return void
  */
  static public function logoutAction()
  {
    $_SESSION = [];
    session_destroy();
    header('Location: '.WEB_URL);
  }
}
