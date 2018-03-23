<?php
//セッション開始
session_start();

//エラーメッセージ
$errorMessage = "";
$SignUpMessage = "";

// ログインボタンが押された場合
if (isset($_POST["signup"])) {
  // メールアドレスの入力チェック
  if (empty($_POST["mail"])) {  // 値が空のとき
    $errorMessage = 'メールアドレスが未入力です。';
  } else if (empty($_POST["pass"])) {
    $errorMessage = 'パスワードが未入力です。';
  } else if (empty($_POST["pass2"])) {
    $errorMessage = 'パスワードが未入力です。';
  } else if (empty($_POST["nickname"])) {
    $errorMessage = 'ニックネームが未入力です。';
  }

  if (!empty($_POST["mail"]) && !empty($_POST["pass"]) && !empty($_POST["pass2"]) && $_POST["pass"] == $_POST["pass2"] && !empty($_POST["nickname"])) {
    // 入力したメールアドレスとパスワード、ニックネームを格納
    $mail = $_POST["mail"];
    $password = $_POST["pass"];
    $nickname = $_POST["nickname"];

    // 認証する
    $pdo = new PDO('sqlite:game.db');
    $pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
    $pdo->setAttribute(PDO::ATTR_DEFAULT_FETCH_MODE, PDO::FETCH_ASSOC);

    //同じメールアドレスを使用するアカウントがあった場合、エラー
    $chkmail = "SELECT COUNT(*) FROM user WHERE mailAddress = '$mail'";
    if($res = $pdo->query($chkmail)){
      if($res->fetchColumn()!=0){
        $errorMessage = 'そのメールアドレスは登録済みです。';
      }else{
        // エラー処理
        try {
          $stmt = $pdo->prepare("INSERT INTO user(mailAddress, password, nickName) VALUES (?, ?, ?)");
          $stmt->execute(array($mail, password_hash($password, PASSWORD_DEFAULT), $nickname));  // パスワードのハッシュ化を行う（今回は文字列のみなのでbindValue(変数の内容が変わらない)を使用せず、直接excuteに渡しても問題ない）
          $userid = $pdo->lastinsertid();  // 登録した(DB側でauto_incrementした)IDを$useridに入れる
          $stmt = $pdo->prepare("INSERT INTO haveI(userId) VALUES (?)");
          $stmt->execute(array($userid));
          $stmt = $pdo->prepare("INSERT INTO collection(userId) VALUES (?)");
          $stmt->execute(array($userid));
          $SignUpMessage = '登録が完了しました。<br>あなたの登録メールアドレスは '. $mail. ' です。<br>パスワードは '. $password. ' です。<br><a class="buttongreen" href="index.php">ログイン</a>';  // ログイン時に使用するメールアドレスとパスワード
        } catch (PDOException $e) {
          $errorMessage = $e->getMessage();
          // $e->getMessage() でエラー内容を参照可能（デバック時のみ表示）
          //echo $e->getMessage();
        }
      }
    }
  } else if($_POST["pass"] != $_POST["pass2"]) {
    $errorMessage = 'パスワードに誤りがあります。';
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
      <a href="login.php">←</a>
    </div>
    新規登録
  </div>
  <form id="loginForm" name="loginForm" action="" method="POST">
    <p class="white bshadow">ニックネーム</p>
    <p><input class="text" type="text" name="nickname" placeholder="nickname" required></p>
    <p class="white bshadow">メールアドレス</p>
    <p><input class="text" type="text" name="mail" placeholder="abcde@example.com" required></p>
    <p class="white bshadow">パスワード</p>
    <p><input class="text" type="password" name="pass" placeholder="password" required></p>
    <p class="white bshadow">パスワード(確認用)</p>
    <p><input class="text" type="password" name="pass2" placeholder="password" required></p>
    <p  class="white bshadow"><?php echo $errorMessage ?></p>
    <p class="white bshadow"><?php echo $SignUpMessage ?></p>
    <p><input class="buttonred" style="font-size:110%" type="submit" value="　登録　" name="signup">
    </p>
  </form>
</body>
</html>
