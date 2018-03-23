<?php
require __DIR__."/parts/sqlready.php";

#アイテムIDと個数を前ページから取得
$itemId = $_POST["itemId"];
$itemNum = $_POST["num"];
$mes = "";

$res = itemOperate($conn, $userId, $itemId, ($itemNum*(-1)));

if($res>=0){
  #コインをゲット
  $resCoin = coinOperate($conn, $userId, $res);
  if($resCoin<0){
    die("コインエラー");
  }
  header("Location: item");
}else if($res==-1){
  $mes="その数量は売れません。";
}else{
  $mes="エラー";
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
   <link rel="stylesheet" href="css/signup.css">
   <link rel="stylesheet" href="css/animate.css">
 </head>
 <body>
   <div id="loader-bg">
     <div id="loader">
       <img src="img/loader.gif" width="80" height="80" alt="Now Loading..." />
       <p>読み込み中...</p>
     </div>
   </div>
   <div class="modalbar">
     <div class="modalclose">
       <a href="item">←</a>
     </div>
     アイテム売却
   </div>
   <div class="white bshadow"><br>
     <p><?=$mes?></p>
   </div>
 </body>
 </html>
