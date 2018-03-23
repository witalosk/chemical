<?php
require __DIR__."/parts/sqlready.php";
require __DIR__."/parts/menus.php";

//ログインボーナス処理
//userテーブルのlastLoginを取得
function loginBonus($conn, $userId){
  //今日の日付を取得
  $nowDate = date('Ymd', strtotime('+9 hour'));
  $res = $conn->query('SELECT * FROM user WHERE userId='.$userId);
  $row = $res->fetchArray();
  if ($row["lastLogin"]!=$nowDate) {
    #もしlastLoginが今日の日付と違ったら
    #ログインボーナス処理を実行
    $loginTimes = $conn->escapeString($row["loginTimes"])+1;
    $getCoin = ($loginTimes%7+1)*100;
    print <<< EOM
<script type="text/javascript">
$(function(){
  $("#modal").css("visibility","visible");
  $("#modal").fadeIn("normal");
});
</script>
<div id="modal" class="window">
<div class="modalbar">
ログインボーナス
</div>
<h2>ログインボーナス</h2>
<p>{$loginTimes}日目</p>
<img src="img/coins.png" width="70%">
<p>{$getCoin}コインゲット!</p>
<a id="close" class="buttonblack">　確認　</a>
</div>
EOM;
    try {
      //コイン追加＆日付更新処理
      $coin = $conn->escapeString($row["coin"]) + $getCoin;
      $res=$conn->query('UPDATE user SET coin='.$coin.', lastLogin='.$nowDate.', loginTimes='.$loginTimes.' WHERE userId='.$userId);
      //メッセージ処理
      addMessage($conn, $userId, "[ログインボーナス]{$getCoin}コインゲット!");
    } catch (Exception $e) {
      print $e;
    }

  }
}

function makeMessage($conn, $userId){
  print("<ul>\n");
  $res = $conn->query("SELECT * FROM message WHERE userId=".$userId." ORDER BY mesId DESC LIMIT 30");
  while($row=$res->fetchArray()){
    print("<li>{$row["mesText"]}({$row["mesDate"]})</li>\n");
  }
  print("</ul>\n");
}

//以下、テスト用。
//もし「＋1000」が押されたとき
if(isset($_POST["h2"])){
coinOperate($conn, $userId, 1000);
addMessage($conn, $userId, "[DEBUG]1000コインゲット!");

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
  loginBonus($conn,$userId);
  makeLoader();
  makeTopbar($conn,$userId);
  makeMenu(1);
  ?>
  <h1 class="bshadow white">お知らせ</h1>
  <img class="animated fadeIn" src="img/open1.png" width="80%">
  <div class="scbox">
    <?php makeMessage($conn, $userId); ?>
  </div>
  <p>
    <a class="button" href="logout">ログアウトする</a>
  </p>
  <p>
    <form action="" method="post">
      <input type="hidden" name="h2" value="hey">
      <input type="submit" class="button" value="DEBUG +1000coin">
    </form>
</body>
</html>
