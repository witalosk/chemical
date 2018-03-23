<title>実験テーブルのソート</title>
<h1>実験テーブルのソートツール</h1>
<h2>現在状態の表示</h2>
<?php
require __DIR__."/../parts/sqlready.php";

$array = array(0, 0, 0, 0);

try{
  $res = $conn->query("SELECT * FROM experiment");
  while($row = $res->fetchArray()){
    print($row["exFormura"]."<br>");
    $array[0] = $row["exB1"];
    $array[1] = $row["exB2"];
    $array[2] = $row["exB3"];
    $array[3] = $row["exB4"];
  }
  $num = $conn->exec("SELECT count(*) FROM experiment");
  print("総列数=".$num."<br><br>");
}catch(Exception $e){
  print $e;
}
?>
<h2>並べ替え処理</h2>
<?php
  for($i=0; $i<4; $i++){
    print("array[".$i."] = ".$array[$i]."<br>");
  }
  natsort($array, SORT_NUMERIC);
?><?php
  for($i=0; $i<4; $i++){
    print("array[".$i."] = ".$array[$i]."<br>");
  }
?>
