<?php
require __DIR__."/parts/sqlready.php";
require __DIR__."/parts/menus.php";

function makeItem($conn, $userId){
  try {
    $res = $conn->query('SELECT * FROM collection WHERE userId = '.$userId);
    $row = $res->fetchArray();
  } catch (Exception $e) {
    print "情報を取得できませんでした。<br>";
  }
  for($i=0; $i<=55; $i++){
    if($row["c$i"]!=0 && isset($row["c$i"])){
        $resI = $conn->query('SELECT * FROM item WHERE itemId='.$i);
        $rowI = $resI->fetchArray();
        if(!isset($rowI["itemIcon"]) || $rowI["itemIcon"]==""){
          $itemIcon = "img/item/noicon.png";
        }else{
          $itemIcon = $rowI["itemIcon"];
        }
        print <<< EOF
      <div class="item">
        <label>
          <input type="radio" class="rb" value="{$rowI["itemId"]}" name="itemr" id="itemr">
          <div class="checkbox-icon">
            <img src="{$itemIcon}" width="100%" >
            <div class="itemNumber white">{$rowI["itemId"]}</div>
          </div>
        </label>
      </div>
EOF;
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
  <script type="text/javascript" src="js/collection.js"></script>
  <link rel="stylesheet" href="css/style.css">
  <link rel="stylesheet" href="css/selection.css">
  <link rel="stylesheet" href="css/animate.css">
</head>
<body>
  <?php
  makeLoader();
  makeTopbar($conn,$userId);
  makeMenu(5);
  ?>
  <a id="send" class="buttonsell buttongreen">図鑑</a>
  <div class="itemInfo" id="iteminfo">
    アイテムを選択してください。<br>
    (番号は図鑑番号)
  </div>
  <div class="itemBox">
    <form id="itembox" method="post" action="collectiondetail">
    <?php
      makeItem($conn,$userId);
    ?>
  </form>
  </div>
</body>
</html>
<?php $conn->close(); ?>
