<?php
require __DIR__."/../parts/sqlready.php";
require __DIR__."/../parts/menus.php";
try{
  $rareValue = $_POST["res"];
  $res = $conn->query("SELECT * FROM item WHERE itemReality=".$rareValue." ORDER BY RANDOM()");
  $row = $res->fetchArray();
  $itemId = $row["itemId"];
  $itemName = $row["itemName"];
  $itemPicture = $row["itemPicture"];
}catch(Exception $e){
  die($e);
}
if(!isset($row["itemPicture"]) || $row["itemPicture"]==""){
  $itemPicture = "img/noimage.png";
}
//コインを減らす
$rescoin=coinOperate($conn, $userId, -250);
if($rescoin<0){
  header("Location: ../gachatop");
  die();
}
//アイテムを増やす
itemOperate($conn, $userId, $itemId, 1);

//図鑑処理
collectionUpdate($conn, $userId, $itemId);
addMessage($conn, $userId, "[★{$row["itemReality"]}]{$itemName}を手に入れた！");
?>

<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8" />
  <meta name="viewport" content="width=device-width, height=device-height, user-scalable=0">
  <meta name="format-detection" content="telephone=no">
  <title>Chemiquest</title>
  <!--[if IE]>
  <script src="http://html5shiv.googlecode.com/svn/trnk/html5.js"></script>
  <![endif]-->
  <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
  <script type="text/javascript" src="../js/modal.js"></script>
  <script type="text/javascript" src="../js/loader.js"></script>
  <script typr="text/javascript">
  <!---
  rareValue = <?=$rareValue?>;
  $(function(){
    if (rareValue==5) {
      $("body").css('background-image','url("../img/gachabg/ssrare.jpg")');
    }else if (rareValue==4) {
      rareValue = 4;
      $("body").css('background-image','url("../img/gachabg/srare.jpg")');
    }else if (rareValue==3) {
      rareValue = 3;
      $("body").css('background-image','url("../img/gachabg/rare.jpg")');
    }else if (rareValue==2) {
      rareValue = 2;
      $("body").css('background-image','url("../img/gachabg/normal.jpg")');
    }else{
      $("body").css('background-image','url("../img/gachabg/normal.jpg")');
    }
  });
  // -->
  </script>
  <link rel="stylesheet" href="../css/style.css">
  <link rel="stylesheet" href="../css/animate.css">
  <link rel="stylesheet" href="../css/gachares.css">

  </head>
  <body>
  <?php
  makeLoader();
  makeTopbar($conn,$userId);
  ?>
  <div class="card"><img src="../img/gachacards/<?=$rareValue?>.jpg" width=100%><br></div>
  <div class="card"><br><img src="../<?=$itemPicture?>" width=80%><p class="white fsize120"><?=$itemName?></p></div>
  <h1 class="bshadow white">
  <?php
  $mes = array("ノーマル","ノーマルレア","レア","超レア","超絶レア");
  $stars = array("★","★★","★★★","★★★★","★★★★★");
  print($mes[$rareValue-1]."ゲット!!");

?>
  </h1>
  <div class="bottombar">
  <a class="buttongreen" href="index">　もう一度　</a>
  <a class="buttonred" href="../gachatop">　戻る　</a>
  </div>
  </body>
  </html>
