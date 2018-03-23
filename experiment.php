<?php
require __DIR__."/parts/sqlready.php";
require __DIR__."/parts/menus.php";

function makeItem($conn, $userId){
  try {
    $res = $conn->query('SELECT * FROM haveI WHERE userId = '.$userId);
    $row = $res->fetchArray();
  } catch (Exception $e) {
    print "情報を取得できませんでした。<br>";
  }
  //上限にはアイテム数を入力
  for($i=0; $i<=55; $i++){
    if($row["hi$i"]!=0){
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
          <input type="checkbox" class="checkbox" value="{$rowI["itemId"]}" data-name="{$rowI["itemName"]}" name="itemr[]" id="itemr">
          <div class="checkbox-icon">
            <img src="{$itemIcon}" width="100%" >
            <div class="itemNumber white">{$row["hi$i"]}</div>
          </div>
        </label>
      </div>
EOF;
    }
  }
}
function makeSelect($conn, $userId){
  $res = $conn->query("SELECT * FROM environment");
  while($row = $res->fetchArray()){
    print('<option value="'.$row["environId"].'">'.$row["environName"].'</option>');;
  }
}
//ページ読み込み時に実行
  if(isset($_SESSION["exId"]) && !empty($_SESSION["exId"])){
    header("Location: experimenting");

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
  <script type="text/javascript" src="js/experiment.js"></script>

  <link rel="stylesheet" href="css/style.css">
  <link rel="stylesheet" href="css/selection.css">
  <link rel="stylesheet" href="css/animate.css">
</head>
<body>
  <?php
  makeLoader();
  makeTopbar($conn,$userId);
  makeMenu(2);
  ?>
  <div id="modal" class="window">
    <div class="modalbar">
      <div id="close" class="modalclose">✕</div>
      実験
    </div>
    <div id="sellimage"><img src="img/kenkyu_woman.png" width=80% alt="実験"></div>
    <div id=sellarea>アイテムを選んでください。</div><br>
    <div id=sellbtnarea><div id="exp" class="button none">　　実験!　　</div></div>
  </div>
  <a id="open" class="buttonsell buttongreen">実験!</a>
  <form id="itembox" action="experimenting.php" method="post">
    <div class="itemInfo" id="iteminfo">
      アイテムと環境を選択<br>
      <select id="environ" name="environ">
        <?php makeSelect($conn, $userId); ?>
      </select>
      <br>
      <span id="selecttext" class="fsize50"></span>
    </div>
    <div class="itemBox">
      <?php
        makeItem($conn,$userId);
        ?>
    </div>
  </form>
</body>
</html>
<?php $conn->close(); ?>
