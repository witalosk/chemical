<?php
require __DIR__."/../parts/sqlready.php";
require __DIR__."/../parts/menus.php";
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
  <script type="text/javascript" src="../js/modal.js"></script>
  <script type="text/javascript" src="sozaigacha.js"></script>
  <script type="text/javascript" src="../js/loader.js"></script>
  <link rel="stylesheet" href="../css/style.css">
  <link rel="stylesheet" href="../css/animate.css">
  <link rel="stylesheet" href="../css/gacha.css">
</head>
<body>
  <?php
  makeLoader();
  makeTopbar($conn,$userId);
  ?>
  <div id="card" class="card"><img id="cardimage" src="../img/gachacards/1.jpg" width=100%></div>
  <div id="tap" class="tap"><img id="taphere" src="../img/taphere.gif" width=100%></div>
  <div id="black" class="blackall"></div>
  <h1 class="bshadow white">素材ガチャ</h1>
  </p>
</body>
</html>
