<?php
require __DIR__."/parts/sqlready.php";
require __DIR__."/parts/menus.php";
//変数の受取
$environ = $_POST["environ"];
$itemr = $_POST["itemr"];

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
  <script type="text/javascript" src="js/ex.js"></script>
  <link rel="stylesheet" href="css/style.css">
  <link rel="stylesheet" href="css/animate.css">
</head>
<body class="bblur">
  <?php
  makeLoader();
  makeTopbar($conn,$userId);
  makeMenu(2);
  //メッセージ
  $mes = "組合せを変えてみよう！";

  if(!isset($_SESSION["exId"]) || empty($_SESSION["exId"])){
      //itemrの0を補完, int型に変換
    for($i=0; $i<4; $i++){
      if(!isset($itemr[$i])){
        $itemr[$i] = 0;
      }
      $itemr[$i] = intval($itemr[$i]);
    }

    $array = array(0, 0, 0, 0);
    $res = $conn->query("SELECT * FROM experiment");
    while($row = $res->fetchArray()){
      $array[0] = $row["exB1"];
      $array[1] = $row["exB2"];
      $array[2] = $row["exB3"];
      $array[3] = $row["exB4"];
      //ソート
      sort($itemr, SORT_NUMERIC);
      sort($array, SORT_NUMERIC);

      //比較
      if($itemr == $array && $environ == $row["exEnviron"]){
        $exid = $row["exId"];
        $_SESSION["startTime"] = date("Y/m/d H:i:s", strtotime("+9 hour"));
        $_SESSION["exId"] = $exid;
        $_SESSION["waitTime"] = $row["exWaitTime"];

      }elseif($itemr == $array && $environ != $row["exEnviron"]){
        $mes = "どうやら環境が違うようだぞ...";
      }
    }
  }else{
    $exid = $_SESSION["exId"];

  }

    if(isset($exid)){
      print("<h1 class='bshadow white'>じっけんちゅう！</h1>");
      //待ち時間の表示
      print("<img src='img/loader.gif' width=50% ><br>\n");
      print("<span class='hidden' id='startTime'>{$_SESSION["startTime"]}</span>");
      print("<span class='hidden' id='exid'>{$_SESSION["exId"]}</span>");
      print("<span class='hidden' id='waitTime'>{$_SESSION["waitTime"]}</span>");

      print("<div class='waiting'><div class='waitingbar' id='waitingbar'></div></div>");
      $nowTime=date("Y/m/d H:i:s", strtotime("+9 hour"));
      $diff = (strtotime($nowTime) - strtotime($_SESSION["startTime"]));
      print("<div class='button fsize120' id='timearea'>あと{$diff}秒...</div>");
    }else{
      print("<img src='img/miss.png' width=80%>");
      print("<p class='bshadow white'>{$mes}</p>");
      print("<a class='button' href='experiment'>　　戻る　　</a>");
    }


    ?>

  </body>
  </html>
  <?php $conn->close(); ?>
