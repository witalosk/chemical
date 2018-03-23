<?php
namespace app\controller;

use app\dao\ItemDao;
use app\dao\HaveIDao;
use app\dao\CollectionDao;
use app\common\InvalidErrorException;
use app\common\ExceptionCode;

class ItemController extends ControllerBase
{
  static public function getAllItem()
  {
    return ItemDao::getAllDao();
  }

  static public function getHaveIFromUserId($id)
  {
    return HaveIDao::getDaoFromUserId($id)[0];
  }

  static public function getCollectionFromUserId($id)
  {
    return CollectionDao::getDaoFromUserId($id)[0];
  }

}
