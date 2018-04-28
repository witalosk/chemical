<?php
namespace app\controller;

use app\model\ExperimentController;
use app\dao\ExperimentDao;


class ExperimentController extends ControllerBase
{

  /**
   * インデックスアクション
   */
  public function indexAction()
  {

  }

  static public function getAllExperiment()
  {
    return ExperimentDao::getAllDao();
  }

  static public function getExperimentByBefore($ids)
  {
    return ExperimentDao::getDaoFromItemIds($ids);
  }
}
