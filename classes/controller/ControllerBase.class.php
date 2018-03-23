<?php
namespace app\controller;
use \app\model\UserModel;
use \app\common\Request;
use \SmartyBC;

abstract class ControllerBase
{
  protected $controller = 'index';
  protected $action = 'index';
  protected $view;
  protected $request;
  protected $templatePath;
  protected $meta ='';

  // コンストラクタ
  public function __construct()
  {
    $this->request = new Request();
  }

  // コントローラーとアクションの文字列設定
  public function setControllerAction($controller, $action)
  {
    $this->controller = $controller;
    $this->action = $action;
  }

  // 処理実行
  public function run()
  {
    try {
      // ビューの初期化
      $this->initializeView();
      // 共通前処理
      $this->preAction();
      // アクションメソッド
      $methodName = sprintf('%sAction', $this->action);
      $this->$methodName();
      //WEB_URLの展開
      $this->view->assign('WEB', WEB_URL);
      $this->view->assign('meta', $this->meta);

      //ログイン中なら情報を計算
      if (null != $_SESSION[UserController::LOGINUSER]) {
        $this->view->assign('info', $this->calcInfo());
      }

      // 表示
      $this->view->display($this->templatePath);
    } catch (Exception $e) {
      // ログ出力等の処理を記述
    }
  }

  // ビューの初期化
  protected function initializeView()
  {
    $this->view = new SmartyBC();
    $this->view->php_handling = SmartyBC::PHP_ALLOW;
    $this->view->template_dir = sprintf('%s/view/templates/', BASE_DIR);
    $this->view->compile_dir = sprintf('%s/view/templates_c/', BASE_DIR);

    $this->templatePath = sprintf('%s/%s.tpl', $this->controller, $this->action);
  }

  //情報の計算
  protected function calcInfo()
  {
    $objUm = new UserModel;
    $objUm = UserController::getLoginUser();

    $rowHaveI = ItemController::getHaveIFromUserId($objUm->id);
    $rowColl = ItemController::getCollectionFromUserId($objUm->id);
    $resItem = ItemController::getAllItem();
    //ここから合計分子量、ずかんの計算
    $i=0;
    $zukan=0;
    $sum=0;
    foreach ($resItem as $item) {
      $molWeight = $rowHaveI["hi".$item["itemId"]] * $item["itemMolWeight"];
      $sum += $molWeight;

      $i++;
      $zukan += $rowColl["c".$item["itemId"]];
    }

    $percentage = intval($zukan/$i*100);
    if($percentage>99){
      $classtext="化学マスター";
    }elseif ($percentage > 90) {
      $classtext="マジ卍な研究者";
    }elseif ($percentage>50) {
      $classtext="そこそこの研究者";
    }elseif ($percentage>25) {
      $classtext="まだまだな研究者";
    }else{
      $classtext="駆け出しの研究者";
    }

    $result['percentage'] = $percentage;
    $result['zukan'] = $zukan;
    $result['i'] = $i;
    $result['classtext'] = $classtext;
    $result['nickName'] = $objUm->nickName;
    $result['coin'] = $objUm->coin;
    $result['sum'] = $sum;

    return $result;
  }

  // 共通前処理（オーバーライド前提）
  protected function preAction()
  {
  }
}
