<h1>collectionテーブルの列を追加します</h1>
<?php
//実行時は下の１行をコメントアウト
die("<p>実行できません</p>");

require __DIR__."/../parts/sqlready.php";
//ここから必要変数の編集(ミスるとやばい)
$numRows = 2; //現在の最後のitemId
$maxNum = 55; //増やした場合の最後のitemId
//ここまで必要変数

for($i=$numRows+1; $i<=$maxNum; $i++){
  $conn->query("ALTER TABLE collection ADD c".$i." INTEGER DEFAULT 0");
}

print("<p>成功</p>");
$conn->close();
 ?>
