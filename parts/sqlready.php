<?php

try {
	$conn = new SQLite3(__DIR__.'/../game.db');
} catch (Exception $e) {
	print("DBに接続できませんでした。<br>");
	print $e->getTraceAsString();
}

session_start();

//ログイン状態をチェックする
if(!isset($_SESSION["userId"])){
	header("Location: logout.php");
	exit;
}else{
	$userId = $_SESSION["userId"];
}

function itemOperate($conn, $userId, $itemId, $itemNum){
	#エラー処理
	try {
	  $sql = $conn->escapeString("SELECT * FROM item WHERE itemId=".$itemId);
	  $res = $conn->query($sql);
	  $row = $res->fetchArray();
	  #売値を取得
	  $price = $row["itemPrice"];
	  #ユーザーテーブルから個数を取得
	  $sql = $conn->escapeString("SELECT * FROM haveI WHERE userId=".$userId);
	  $res = $conn->query($sql);
	  $row = $res->fetchArray();
		$nowUserHave = $row["hi".$itemId];
		#操作量が所持量を下回ったとき-1を返す
		if($nowUserHave+$itemNum<0){
			return -1;
		}else{
			#正常に実行できるとき
			#アイテム増減
			$sql = $conn->escapeString("UPDATE haveI SET hi".$itemId."=".($nowUserHave+$itemNum)." WHERE userId=".$userId);
			$res = $conn->query("UPDATE haveI SET hi".$itemId."=".($nowUserHave+$itemNum)." WHERE userId=".$userId);

			#売値を返す
			return $price*$itemNum*(-1);
		}
	} catch (Exception $e) {
		return -2;
	}
}

function coinOperate($conn, $userId, $coinNum){
	try {
		#現在のコイン枚数を取得
		$res=$conn->query("SELECT * FROM user WHERE userId=".$userId);
		$row=$res->fetchArray();
		$nowCoin = $row["coin"];
		#操作後のコイン枚数の判定
		if($coinNum + $nowCoin<0){
			return -1;
		}else{
			#正常に実行できるとき
			$sql = $conn->escapeString("UPDATE user SET coin=".($coinNum + $nowCoin)." WHERE userId=".$userId);
			$conn->query($sql);
			$res = $conn->query("SELECT * FROM user WHERE userId=".$userId);
			$row = $res->fetchArray();
			return $coinNum + $nowCoin;
		}
	} catch (Exception $e) {
		print $e;
		return -2;
	}
}

function collectionUpdate($conn, $userId, $itemId){
	try {
		#collectionに1を入れます
		$conn->query("UPDATE collection SET c".$itemId."=1 WHERE userId=".$userId);
	} catch (Exception $e) {
		return $e;
	}
}

function addMessage($conn, $userId, $message){
	$nowDate = date('Y/m/d H:i', strtotime('+ 9 hour'));
	try {
		$conn->query("INSERT INTO message(userId, mesDate, mesText) VALUES('{$userId}', '{$nowDate}', '{$message}')");
	} catch (Exception $e) {
		return $e;
	}

}

?>
