<?php
require_once "common.php";
use \app\common\Db;

$sql = "SELECT * FROM `experiment`";
$result = Db::select($sql);

foreach ($result as $item) {
  $tempA = array();
  $tempB = array();
  for($i = 1; $i<=4; $i++) {
    if($item["exB$i"] != "0") {
      array_push($tempB, $item["exB$i"]);
    }
    if($item["exA$i"] != "0") {
      array_push($tempA, $item["exA$i"]);
    }
  }
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
