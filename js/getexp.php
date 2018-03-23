<?php
require __DIR__."/../parts/sqlready.php";
#配列にチェックボックスの内容を代入
$array = $_POST["itemr"];

#JSONの始まりをプリント
print <<< EOM
{
  "item":[
EOM;

    foreach ($array as $itemId) {
      $picpath = "img/item/s3.png";
      if(isset($itemId)){
        try {
          $res = $conn->query('SELECT * FROM item WHERE itemId='.$itemId);
          $row = $res->fetchArray();
          $iconpath = $row["itemIcon"];
          $name = $row["itemName"];
          $price = $row["itemPrice"];
          $picpath = $row["itemPicture"];
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
      }

      if(!isset($iconpath)){
        //アイコンの初期値
        $iconpath = "img/item/c5.png";
      }

print <<< EOM
      {
        "icon": "{$iconpath}",
        "picture": "{$picpath}",
        "name": "{$name}",
        "price": "{$price}"
      },
EOM;
    }

#JSONの終わりをプリント
print <<< EOM
{
  "icon": "{$iconpath}",
  "picture": "{$picpath}",
  "name": "{$name}",
  "price": "{$price}"
}
  ]
}
EOM;
?>
