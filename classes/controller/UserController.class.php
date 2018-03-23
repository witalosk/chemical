<?php

namespace app\controller;

use \app\model\UserModel;
use \app\dao\UserDao;
use \app\model\GimonModel;
use \app\dao\GimonDao;
use \app\controller\GimonController;
use \app\common\Db;
use \app\common\InvalidErrorException;
use \app\common\ExceptionCode;
use \app\common\Request;
use Abraham\TwitterOAuth\TwitterOAuth;


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
    
  }

  /**
  * ブロック処理
  */
  public function blockAction()
  {
    //ログインチェック
    $this::checkLogin();

    //postを受け取り
    $posts = $this->request->getPost();

    if(null == $posts['id']) {
      throw new InvalidErrorException(ExceptionCode::INVALID_URL);
    }

    $objUm = new UserModel(); //ユーザモデル
    $objUm = UserController::getLoginUser();

    //ぎもんIDからIPアドレスを検索
    $objGm = new GimonModel();
    $objGm->getModelById($posts['id']);

    //ブロックリストを配列に
    $blocklist = explode(';',$objUm->blocklist);
    //ブロックリストに追加
    array_push($blocklist, $objGm->ipaddress);

    $strblocklist = implode(';', $blocklist);
    $objUm->blocklist = $strblocklist;
    $objUm->updated_at = date('Y/m/d H:i:s');

    //DBを更新
    Db::transaction();
    $objUm->save();
    Db::commit();

    $_SESSION[self::LOGINUSER] = $objUm;
    $this->view->assign('back', WEB_URL.'user/main');
  }

  /**
  * データベースを更新・挿入
  */
  public function updateAction()
  {
    $access_token = $_SESSION['access_token'];

    //OAuthトークンとシークレットも使って TwitterOAuth をインスタンス化
    $connection = new TwitterOAuth(CONSUMER_KEY, CONSUMER_SECRET, $access_token['oauth_token'], $access_token['oauth_token_secret']);

    $user = $connection->get("account/verify_credentials");
    $id = $user->id;

    //データベースに存在しなければ登録、する場合ログイン
    $objUM = new UserModel;
    $objUM->getModelById($id);
    if(null != $objUM->id)
    {
      //存在する場合
      $objUM->name = $user->name;
      $objUM->screen_name = $user->screen_name;
      $objUM->updated_at = date('Y/m/d H:i:s');
      Db::transaction();
      $objUM->save();
      Db::commit();
    }
    else
    {
      $objUM->id = $id;
      $objUM->name = $user->name;
      $objUM->screen_name = $user->screen_name;
      $objUM->updated_at = date('Y/m/d H:i:s');
      $objUM->created_at = date('Y/m/d H:i:s');
      Db::transaction();
      $objUM->register();
      Db::commit();
    }
    $_SESSION[self::LOGINUSER] = $objUM;

    //トップページにリダイレクト
    header( 'location: '.WEB_URL.'user/main' );
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
   * ログイン処理
   *
   * @return bool
   */
  static public function login($mailAddress, $password)
  {
    $objUm = new UserModel;
    $objUm->getModelByMailAddress($mailAddress);

    //データが見つからなかったり、パスワードが不一致の場合false
    if (null == $objUm->id || !password_verify($password, $objUm->password)) {
      return false;
    }

    //見つかった場合、セッションに保存
    $_SESSION[self::LOGINUSER] = $objUm;
    return true;
  }

  /**
  * ログアウトする
  *
  * @return void
  */
  static public function logoutAction()
  {
    $access_token = $_SESSION['access_token'];
    $connection = new TwitterOAuth(CONSUMER_KEY, CONSUMER_SECRET, $access_token['oauth_token'], $access_token['oauth_token_secret']);
    $result = $connection->post("account/end_session");

    $_SESSION = [];
    session_destroy();
    header('Location: '.WEB_URL);
  }
}
