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
  <script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
  <script type="text/javascript" src="js/modal.js"></script>
  <script type="text/javascript" src="js/bottombar.js"></script>
  <script type="text/javascript" src="js/loader.js"></script>
  <script type="text/javascript" src="js/uikit.min.js"></script>
  <link rel="stylesheet" href="css/style.css">
  <link rel="stylesheet" href="css/animate.css">
  <link rel="stylesheet" href="css/uikit.min.css">
</head>
<body>
  <article>
    <div id="loader-bg">
      <div id="loader">
        <img src="img/loader.gif" width="80" height="80" alt="Now Loading..." />
        <p>読み込み中...</p>
      </div>
    </div>
    <div id="modal" class="window">
      <div class="modalbar">
        <div id="close" class="modalclose">✕</div>
        ログイン
      </div>
      <form id="loginForm" name="loginForm" action="" method="POST">
        <p class="frale">メールアドレス</p>
        <p><input class="text" type="text" name="mail" required></p>
        <p class="frale">パスワード</p>
        <p><input class="text" type="password" name="pass" required></p>
        <p>
          <input class="buttongreen fsize120" type="submit" value="ログイン" name="login">
          <a class="buttonred" href="signup.php">新規登録</a>
        </p>
      </form>
    </div>
    <br>
    <img class="animated fadeIn" src="img/open1.png" width="80%">
    <br>
    <br>
    <p>
      <a id="open" href="#" class="buttongreen"><b>スタート！</b></a>
    </p>
  </article>
</body>
</html>
