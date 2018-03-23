<?php
/* Smarty version 3.1.32-dev-35, created on 2018-03-23 17:53:34
  from 'C:\xampp\htdocs\chemical\view\templates\index\index.tpl' */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '3.1.32-dev-35',
  'unifunc' => 'content_5ab4c08e617fa8_76127911',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    '89f1e08f5ac97e68dfecc6cfa799a79a36aef394' => 
    array (
      0 => 'C:\\xampp\\htdocs\\chemical\\view\\templates\\index\\index.tpl',
      1 => 1521791379,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_5ab4c08e617fa8_76127911 (Smarty_Internal_Template $_smarty_tpl) {
?>
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8" />
  <meta name="viewport" content="width=device-width, height=device-height, user-scalable=0">
  <meta name="format-detection" content="telephone=no">
  <title>Chemiquest</title>
  <!--[if IE]>
  <?php echo '<script'; ?>
 src="http://html5shiv.googlecode.com/svn/trnk/html5.js"><?php echo '</script'; ?>
>
  <![endif]-->
  <?php echo '<script'; ?>
 type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"><?php echo '</script'; ?>
>
  <?php echo '<script'; ?>
 type="text/javascript" src="js/modal.js"><?php echo '</script'; ?>
>
  <?php echo '<script'; ?>
 type="text/javascript" src="js/bottombar.js"><?php echo '</script'; ?>
>
  <?php echo '<script'; ?>
 type="text/javascript" src="js/loader.js"><?php echo '</script'; ?>
>
  <?php echo '<script'; ?>
 type="text/javascript" src="js/uikit.min.js"><?php echo '</script'; ?>
>
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
          <input class="uk-button uk-button-primary uk-button-large" type="submit" value="ログイン" name="login">
          <a class="uk-button uk-button-secondary uk-button-large" href="signup.php">新規登録</a>
        </p>
      </form>
    </div>
    <br>
    <img class="animated fadeIn" src="img/open1.png" width="80%">
    <br>
    <br>
    <p>
      <a id="open" href="#" class="uk-button uk-button-primary uk-button-large"><b>スタート！</b></a>
    </p>
  </article>
</body>
</html>
<?php }
}
