<?php
namespace app\controller;

use app\controller\UserController;
use app\common\InvalidErrorException;
use app\common\ExceptionCode;

class IndexController extends ControllerBase
{
  public function indexAction()
  {
    //POSTを取得
    $posts = $this->request->getPost();
    //ポストされていたらログイン処理
    if(null != $posts) {
      //成功なら遷移、失敗ならエラー
      if(UserController::login($posts['mail'], $posts['pass'])) {
        header('Location: user/info');
      }
      else {
        throw new InvalidErrorException(ExceptionCode::INVALID_LOGIN_FAIL);
      }
    }

  }
}
