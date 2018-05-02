<?php
namespace app\model;

use app\dao\ExperimentingDao;

/**
 * 化学反応中モデル
 * @brief 化学反応を実行中のテーブル
 */
class ExperimentingModel
{
  public $id = null;
  public $userId = null;
  public $exId = null;
  public $startTime = null;


  /**
  * コンストラクタ
  * @param array $array
  * @return \app\model\UserModel
  */
  public function __construct($array = array())
  {
      if(null != $array)
      {
          $this->setProperty($array);
      }
  }

  /**
  * プロパティを配列で指定するメソッド
  * @param array $array
  * @return \app\model\UserModel
  */
  public function setProperty($array)
  {
      $this->id = $array['id'];
      $this->userId = $array['userId'];
      $this->exId = $array['exId'];
      $this->startTime = $array['startTime'];

      return $this;
  }

  /**
  * DBを更新・DBに保存するメソッド
  * @return bool
  */
  public function save()
  {
      return ExperimentingDao::save($this);
  }

  /**
  * 実験を新規登録する
  *
  * @return bool
  */
  public function register()
  {
      return ExperimentingDao::insert($this);
  }


}
