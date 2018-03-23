<?php
//セッション開始
session_start();

//エラーメッセージ
$errorMessage = "";

if(isset($_POST["login"])){
  //POST変数の受取
  $mail = $_POST["mail"];
  $password = $_POST["pass"];

  //エラーチェック
  if(empty($mail)){
    $errorMessage = 'メールアドレスが未入力です。';
  }else if(empty($password)){
    $errorMessage = 'パスワードが未入力です。';
  }

  //認証
  if(!empty($mail) && !empty($password)){
    //エラー処理
    try{
      $pdo = new PDO('sqlite:game.db');
      $pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
      $pdo->setAttribute(PDO::ATTR_DEFAULT_FETCH_MODE, PDO::FETCH_ASSOC);
      $stmt = $pdo->prepare('SELECT * FROM user WHERE mailAddress = ?');
      $stmt->execute(array($mail));

      if($row = $stmt->fetch(PDO::FETCH_ASSOC)){
        if(password_verify($password, $row["password"])){
          session_regenerate_id(true);
          echo "1";
          //入力したメールアドレスのIDを取得
          $sql = "SELECT * FROM user WHERE mailAddress = '".$mail."'";
          $stmt = $pdo->query($sql);
          echo "2";
          foreach ($stmt as $row) {
            $row['userId']; //ユーザーID
          }
          $_SESSION["userId"] = $row["userId"];
          header("Location: info"); //お知らせ画面へ
          exit();
        }else{
          //ログイン失敗
          $errorMessage = "入力された内容に誤りがあります!";
        }
      } else {
        //該当データなし
        $errorMessage = "入力された内容に誤りがあります。";
      }
    } catch (PDOException $e){
      $errorMessage = "データベースエラー:".$e->getMessage();
    }
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
  <script type="text/javascript">
  $(function(){
    $("#modal").css("visibility","visible");
  });
  </script>
  <link rel="stylesheet" href="css/style.css">
  <link rel="stylesheet" href="css/animate.css">
</head>
<body>
  <div id="modal" class="window">
    <div class="modalbar">
      <div id="close" class="modalclose">✕</div>
      ログイン
    </div>
    <form id="loginForm" name="loginForm" action="" method="POST">
      <p class="frale">MailAddress</p>
      <p><input class="text"type="text" name="mail" required></p>
      <p class="frale">Password</p>
      <p><input class="text" type="password" name="pass" required></p>
      <p><?php echo $errorMessage ?></p>
      <p><input class="buttongreen frale" style="font-size:110%" type="submit" value="Login" name="login">
        <a class="buttonred frale" href="signup.php">Sign Up</a>
      </p>
    </form>
  </div>
  <br>
  <img class="animated fadeIn" src="img/open1.png" width="80%">
  <br>
  <p>
    <a id="open" href="#" class="fsize120 button" /><b>　スタート！　</b></a>
  </p>
</body>
</html>
