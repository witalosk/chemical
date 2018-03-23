<?php
require __DIR__."/parts/sqlready.php";
require __DIR__."/parts/menus.php";

if(!isset($_POST["exid"])){
  die("不正な操作です");
}else{
  $exid = $_POST["exid"];
}

$_SESSION["startTime"] = "";
$_SESSION["exId"] = "";
$_SESSION["waitTime"] = "";
$res = $conn->query("SELECT * FROM experiment WHERE exId=".$exid);
$row = $res->fetchArray();
for($i=1; $i<=4; $i++){
  $itemIdB = $row["exB".$i];
  if($itemIdB!=0){
    //アイテムを減らす
    if(itemOperate($conn, $userId, $itemIdB, -1)<0){
      header("Location: error");
    }

  }
}
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
  <script type="text/javascript" src="js/modal.js"></script>
  <script type="text/javascript" src="js/bottombar.js"></script>
  <script type="text/javascript" src="js/loader.js"></script>
  <link rel="stylesheet" href="css/style.css">
  <link rel="stylesheet" href="css/animate.css">
</head>
<body class="bblur">
  <?php
  makeLoader();
  makeTopbar($conn,$userId);
  makeMenu(2);
  ?>
  <img src="img/jikken.png" width=70%>
  <?php
  print('<p class="white bshadow fsize120">'.$row["exFormura"].'</p>');
  for($i=1; $i<=4; $i++){
    $itemId = $row["exA".$i];
    if($itemId!=0){
      $res2 = $conn->query("SELECT * FROM item WHERE itemId=".$itemId);
      $row2 = $res2->fetchArray();
      $itemName = $row2["itemName"];
      $itemPicture = $row2["itemPicture"];
      if(empty($itemPicture)){
        $itemPicture="img/noimage.png";
      }
      print("<div class='nbox'><img src='".$itemPicture."' width=40%>\n");
      print("<p class='fsize120 white'>".$itemName."</p></div>\n");
      //アイテムを増やす
      itemOperate($conn, $userId, $itemId, 1);

      //図鑑処理
      collectionUpdate($conn, $userId, $itemId);
      addMessage($conn, $userId, "[★{$row2["itemReality"]}]{$itemName}を手に入れた！");
    }
  }
  ?>
  <p class="white">をゲット！</p>
  <a class="button" href="experiment">　　戻る　　</a>
</body>
</html>
