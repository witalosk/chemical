<?php
session_start();
$_SESSION["userId"] = 4;
$message = "";
require __DIR__."/../parts/sqlready.php";

function makeSelect($conn, $name){
  $res = $conn->query("SELECT * FROM item");
  print("<select name='{$name}''>\n");
  print("<option value=0>0:なし</option>\n");
  while($row = $res->fetchArray()){
    print("<option value={$row["itemId"]}>{$row["itemId"]}:{$row["itemName"]}</option>\n");
  }
  print("</select>\n");
}

function makeSelectE($conn, $name){
  $res = $conn->query("SELECT * FROM environment");
  print("<select name='{$name}''>\n");
  while($row = $res->fetchArray()){
    print("<option value={$row["environId"]}>{$row["environName"]}</option>\n");
  }
  print("</select>\n");
}

//ここから処理
$before = array($_POST["before1"], $_POST["before2"], $_POST["before3"], $_POST["before4"]);
$after = array($_POST["after1"], $_POST["after2"], $_POST["after3"], $_POST["after4"]);
$environId = $_POST["environ"];
$waitTime = $_POST["waittime"];
$formura = $_POST["formura"];
$pass = $_POST["pass"];
/*
print_r($before);
print_r($after);
print($environId);
print($waitTime);
print($formura);
*/
if(!empty($environId)){
  //実験の被りがないかチェック
  $temp = array("","","","");
  $res = $conn->query("SELECT * FROM experiment");
  while($row = $res->fetchArray()){
    $temp[0] = $row["exB1"];
    $temp[1] = $row["exB2"];
    $temp[2] = $row["exB3"];
    $temp[3] = $row["exB4"];
    //ソート
    sort($temp, SORT_NUMERIC);
    sort($before, SORT_NUMERIC);

    //比較
    $flag = 0;
    if($temp == $before){
      $message = "ERROR:同じ材料をもとにした式があります。";
      $flag = 1;
      break;
    }
  }
  if($pass!="mast"){
    $flag = 1;
    $message = "ERROR:パスワードが違います。";
  }
  if($flag == 0){
    try{
      $conn->query("INSERT INTO experiment(exB1,exB2,exB3,exB4,exA1,exA2,exA3,exA4,exEnviron,exWaitTime,exFormura) ".
      "VALUES('{$before[3]}','{$before[2]}','{$before[1]}','{$before[0]}','{$after[3]}','{$after[2]}','{$after[1]}','{$after[0]}','{$environId}','{$waitTime}','{$formura}')");
      $message = "SUCCESS:登録成功しました。";
    }catch(Exception $e){
      print "ERR";
      $message = "ERROR:";
    }
  }
}else{
  $message = "登録前によく確認してください。";
}


?>
<!DOCTYPE html>
<head>
  <title>化学反応式ジェネレーター</title>
  <link rel="stylesheet" type="text/css" href="../css/style.css"></link>
  <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
</head>
<body class="bblur">
  <h1 class="white bshadow">化学反応式ジェネレーター</h1>
  <p class="white bshadow"><?= $message ?></p>
  <form action="" method="post" id="form">
    <h2 class="white bshadow">反応前物質を選択</h2>
    <?php
    makeSelect($conn, "before1");
    makeSelect($conn, "before2");
    makeSelect($conn, "before3");
    makeSelect($conn, "before4");
    ?>
    <h2 class="white bshadow">反応後物質を選択</h2>
    <?php
    makeSelect($conn, "after1");
    makeSelect($conn, "after2");
    makeSelect($conn, "after3");
    makeSelect($conn, "after4");
    ?>
    <h2 class="white bshadow">環境を選択</h2>
    <?php makeSelectE($conn, "environ"); ?>
    <h2 class="white bshadow">待機時間を入力</h2>
    <input class="fsize120" type="number" value="30" name="waittime">
    <h2 class="white bshadow">化学反応式を入力</h2>
    <p class="white fsize70 bshadow">subタグを使って下付き文字を入力できます</p>
    <input id="ff" class="fsize70 long" type="text" value="→" name="formura">
    <p class="white fsize70 bshadow" id="pre"></p>
    <h2 class="white bshadow">データ編集用パスワードを入力</h2>
    <input id="pass" class="fsize70" type="password" name="pass">
    <p class="white bshadow"><?=$message?></p>
    <p><input type="submit" class="buttongreen fsize120" value="　登録　"></p>
  </form>
</body>
