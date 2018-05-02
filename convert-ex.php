<?php
require_once "common.php";
use \app\common\Db;

$sql = "SELECT * FROM `experiment`";
$result = Db::select($sql);

foreach ($result as $item) {
  $tempA = explode(',', $item['exAfter']);
  $tempB = explode(',', $item['exBefore']);

  sort($tempA);
  sort($tempB);

  $tempB = implode(",", $tempB);
  $tempA = implode(",", $tempA);

  //DBの更新
  $sql = "UPDATE `experiment` SET `exBefore` = :before, `exAfter` = :after WHERE `exId` = :id";
  $array[":before"] = $tempB;
  $array[":after"] = $tempA;
  $array[":id"] = (int)$item["exId"];

  Db::transaction();
  Db::update($sql, $array);
  print("step".$item["exId"]."<br>");
  Db::commit();
}
print("<h1>COMPLETE!</h1>");


 ?>
