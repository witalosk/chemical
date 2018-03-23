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
  makeMenu(6);
  ?>
  <h1 class="bshadow white">レアガチャ</h1>
  <img src="img/gachagacha.png" alt="レアガチャ" width="50%"><br>
  <p class="bshadow white">★1から★5までが出現します。</p>
  <a href="gacha/"><img src="img/gacharu.png" alt="ガチャる" width="80%"></a>
  <p class="white bshadow">※コインが足りない場合、<br>この画面に戻ります。</p>
  <br>
  <h1 class="bshadow white">素材ガチャ</h1>
  <img src="img/gachagacha2.png" alt="レアガチャ" width="50%"><br>
  <p class="bshadow white">★1のみが出現します。</p>
  <a href="gacha/sozaindex"><img src="img/sozaigacharu.png" alt="ガチャる" width="80%"></a>
  <p class="white bshadow">※コインが足りない場合、<br>この画面に戻ります。</p>
  <p class="white bshadow fsize50">
コインガチャはゲーム内コイン専用コンテンツです。<br>
コンテンツご利用後のコインの返金は一切行いませんのでご注意ください｡<br>
画像はイメージです。<br>
一部入手出来ないアイテムが出現する場合があります。<br>
出現するアイテムは被ることがあります。<br>
アイテムの一部や色が正しく表示されない場合があります。
</p>
</body>
</html>
