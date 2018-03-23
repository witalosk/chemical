<?php
require __DIR__."/parts/sqlready.php";
require __DIR__."/parts/menus.php";
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
  <link rel="stylesheet" href="css/style.css">
  <link rel="stylesheet" href="css/animate.css">
</head>
<body class="bblur">
  <?php
  makeLoader();
  makeTopbar($conn,$userId);
  makeMenu(4);
  ?>
  <h1 class="bshadow white">エラー</h1>
  <p class="white">
    不正な操作です。
  </p>
  <p>
</body>
</html>
