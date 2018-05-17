<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8" />
  <meta name="viewport" content="width=device-width, height=device-height, user-scalable=0">
  <meta name="format-detection" content="telephone=no">
  <title>けみくえ!</title>
  <!--[if IE]>
  <script src="http://html5shiv.googlecode.com/svn/trnk/html5.js"></script>
  <![endif]-->
  <script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
  <script type="text/javascript" src="js/modal.js"></script>
  <script type="text/javascript" src="js/bottombar.js"></script>
  <script type="text/javascript" src="js/loader.js"></script>
  <script type="text/javascript" src="js/uikit.min.js"></script>
  <script>
  if ('serviceWorker' in navigator) {
    navigator.serviceWorker
           .register('/service-worker.js') // ここはservice-worker.jsのパスを指定
           .then(function() { console.log('Service Worker Registered'); });
  }
  if (('standalone' in window.navigator) && window.navigator.standalone) {
      window.addEventListener('load', function() {
          var links = document.links,
              link,
              i;
          for (i = 0; i < links.length; i++) {
              // Don't do this for javascript: links
              if (!~(link = links[i]).href.toLowerCase().indexOf('javascript')) {
                  if('href' in link && link.href.indexOf('http') !== -1 && link.href.indexOf(document.location.host) !== -1)
                  {
                      link.addEventListener('click', function(event) {
                          event.preventDefault();
                          document.location.href = this.href;
                      }, false);
                  }
              }
          }
      }, false);
  }
  </script>
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
