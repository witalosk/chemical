<?php
namespace app\model;

/**
 * 化学反応モデル
 * @brief 化学反応式のモデル
 */
class ExperimentModel
{
  public $exId = null;
  public $exBefore = null;
  public $exAfter = null;
  public $exEnviron = null;
  public $exCost = null;
  public $exWaitTime = null;
  public $exFormura = null;

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
      $this->exId = $array['exId'];
      $this->exBefore = explode(',', $array['exBefore']); //カンマ区切りのデータを配列に格納
      $this->exAfter = explode(',', $array['exAfter']); //カンマ区切りのデータを配列に格納
      $this->exEnviron = $array['exEnviron'];
      $this->exCost = $array['exCost'];
      $this->exWaitTime = $array['exWaitTime'];
      $this->exFormura = $array['exFormura'];

      return $this;
  }

  
}
