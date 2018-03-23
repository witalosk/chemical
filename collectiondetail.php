<?php
require __DIR__."/parts/sqlready.php";
require __DIR__."/parts/menus.php";

$itemId = $_POST["itemr"];
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
  makeMenu(5);
  $res = $conn->query("SELECT * FROM item WHERE itemId=".$itemId);
  $row = $res->fetchArray();
  $itemPicture = $row["itemPicture"];
  if(empty($row["itemPicture"]) || $row["itemPicture"]=""){
    $itemPicture = "img/noimage.png";
  }
  print <<< EOM
  <br>
<img src="{$itemPicture}" width=70%>
<h1 class="bshadow white">No.{$row["itemId"]} {$row["itemName"]}</h1>
<p class="bshadow white">
EOM;
for($i=0; $i<$row["itemReality"]; $i++){
  print("★");
}
print <<< EOM
</p>
<p class="bshadow white">分子量: {$row["itemMolWeight"]}</p>
<p class="bshadow white">{$row["itemColor"]}</p>
<p class="bshadow white">売値: {$row["itemPrice"]}</p>
<div class="scbox">
{$row["itemText"]}
</div>

<a class="button" href="collection">　　戻る　　</a>
EOM;
  ?>
</body>
</html>
