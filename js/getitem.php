<?php
require __DIR__."/../parts/sqlready.php";
$itemId = $_POST["itemr"];
if(isset($_POST["itemr"])){
  try {
    $res = $conn->query('SELECT * FROM item WHERE itemId='.$itemId);
    $row = $res->fetchArray();
    $iconpath = $row["itemIcon"];
    $name = $row["itemName"];
    $price = $row["itemPrice"];
    $picpath = $row["itemPicture"];
    $molWeight =$row["itemMolWeight"];
    $color = $row["itemColor"];
  } catch (Exception $e) {
    $iconpath = "img/item/s3.png";
    $name = "アイテムが存在しません。";
    $price = 0;
  }
}else{
  $iconpath = "img/item/s3.png";
  $name = "アイテムが存在しません!";
  $price = 0;
}
if(!isset($row["itemName"])){
  $iconpath = "img/item/s3.png";
  $name = "存在しません";
  $price = 0;
  $molWeight = 0;
  $color = 無色;
}

if(!isset($iconpath) || $iconpath==""){
  //アイコンの初期値
  $iconpath = "img/item/noicon.png";
}
if(!isset($picpath) || $picpath==""){
  //画像の初期値
  $picpath = "img/noimage.png";
}

print <<< EOM
{
  "item":[
    {
      "icon": "{$iconpath}",
      "picture": "{$picpath}",
      "name": "{$name}",
      "price": "{$price}",
      "molweight": "{$molWeight}",
      "color": "{$color}"
    }
  ]
}
EOM;
?>
