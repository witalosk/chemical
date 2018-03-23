<?php

//上のバー作成用関数
function makeTopbar($conn,$userId){
  try {
    $userId = $conn->escapeString($userId);
    $res = $conn->query('SELECT * FROM user WHERE userId='.$userId);
    $row = $res->fetchArray();

    //ここから合計分子量、ずかんの計算
    $i=0;
    $zukan=0;
    $sum=0;
    $resHaveI = $conn->query('SELECT * FROM haveI WHERE userId='.$userId);
    $rowHaveI = $resHaveI->fetchArray();
    $resColl = $conn->query('SELECT * FROM collection WHERE userId='.$userId);
    $rowColl = $resColl->fetchArray();


    $resItem = $conn->query('SELECT * FROM item');
    while($rowItem = $resItem->fetchArray()){
      $molWeight = $rowHaveI["hi".$rowItem["itemId"]] * $rowItem["itemMolWeight"];
      $sum += $molWeight;

      $i++;
      $zukan += $rowColl["c".$rowItem["itemId"]];
    }
  } catch (Exception $e) {
    die($e);
  }

  $percentage = intval($zukan/$i*100);
  if($percentage>99){
    $classtext="化学マスター";
  }elseif ($percentage>50) {
    $classtext="そこそこの研究者";
  }elseif ($percentage>25) {
    $classtext="まだまだな研究者";
  }else{
    $classtext="駆け出しの研究者";
  }


print <<< EOM
<div class="topbar">
  <div class="level frale">
    {$percentage}<span class="fsize50">%</span>
  </div>
  <div class="exp frale">
    {$zukan}/{$i}
  </div>
  <div class="rank">
    {$classtext}：{$row["nickName"]}
  </div>
  <div class="coin frale">
    {$row["coin"]}
  </div>
  <div class="mol frale">
    {$sum}
  </div>
</div>
EOM;
}

//下のメニュー作成用関数、$pageに選択されているページ
function makeMenu($page){
  $b = array("","","","","","");
  $b[$page-1] = "b";
  //<a><div id="ia4" class="black bottomitem fsize50"><img src="img/menu/environ{$b[3]}.png" width="20"><br>道具</div></a>

print <<< EOM
<div class="bottombar">
  <a href="info"><div id="ia1" class="black bottomitem fsize50"><img src="img/menu/info{$b[0]}.png" width="20"><br>お知らせ</div></a>
  <a href="experiment"><div id="ia2" class="black bottomitem fsize50"><img src="img/menu/experiment{$b[1]}.png" width="20"><br>実験</div></a>
  <a href="item"><div id="ia3" class="black bottomitem fsize50"><img src="img/menu/item{$b[2]}.png" width="20"><br>アイテム</div></a>
  <a href="collection"><div id="ia5" class="black bottomitem fsize50"><img src="img/menu/collection{$b[4]}.png" width="20"><br>図鑑</div></a>
  <a href="gachatop"><div id="ia6" class="black bottomitem fsize50"><img src="img/menu/gacha{$b[5]}.png" width="20"><br>ガチャ</div></a>
</div>
EOM;
}

//ローディング画面作成用関数
function makeLoader(){
  $rand = rand(1,8);
  switch($rand){
    case 1:
      $text = "読み込み中…";
      break;
    case 2:
      $text = "道具は使うたびに、耐久値が減っていくぞ！";
      break;
    case 3:
      $text = "図鑑コンプリートを目指そう！";
      break;
    case 4:
      $text = "ガチャはコインで引けるぞ！";
      break;
    case 5;
      $text = "連続ログインボーナスを狙おう！";
      break;
    case 6;
      $text = "今日も実験びより！";
      break;
    case 7;
      $text = "レアアイテムもガチャでゲットできるかも？";
      break;
    case 8;
      $text = "図鑑で性質が詳しく見れるぞ！";
      break;
  }
print <<< EOM
  <div id="loader-bg">
    <div id="loader">
      <img src="img/loader.gif" width="80" height="80" alt="Now Loading..." />
      <p>{$text}</p>
    </div>
  </div>
EOM;
}
 ?>
