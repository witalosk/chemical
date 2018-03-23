<?php
/* Smarty version 3.1.32-dev-35, created on 2018-03-23 15:13:53
  from 'C:\xampp\htdocs\chemical\view\templates\template\header.tpl' */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '3.1.32-dev-35',
  'unifunc' => 'content_5ab49b219d31a9_54677189',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    'f5065e9226dd34044d9efaa95eb13a43c1f70bf8' => 
    array (
      0 => 'C:\\xampp\\htdocs\\chemical\\view\\templates\\template\\header.tpl',
      1 => 1518069382,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_5ab49b219d31a9_54677189 (Smarty_Internal_Template $_smarty_tpl) {
?>
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <?php echo $_smarty_tpl->tpl_vars['meta']->value;?>

  <link rel="apple-touch-icon" href="<?php echo $_smarty_tpl->tpl_vars['WEB']->value;?>
logo.PNG" sizes="205x205" />
  <link rel="icon" href="<?php echo $_smarty_tpl->tpl_vars['WEB']->value;?>
logo.PNG" sizes="205x205" />
  <link rel="stylesheet" href="<?php echo $_smarty_tpl->tpl_vars['WEB']->value;?>
css/uikit.min.css" />
  <link rel="stylesheet" href="<?php echo $_smarty_tpl->tpl_vars['WEB']->value;?>
css/master.css" />
  <?php echo '<script'; ?>
 src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"><?php echo '</script'; ?>
>
  <?php echo '<script'; ?>
 src="<?php echo $_smarty_tpl->tpl_vars['WEB']->value;?>
js/uikit.min.js"><?php echo '</script'; ?>
>
  <?php echo '<script'; ?>
 src="<?php echo $_smarty_tpl->tpl_vars['WEB']->value;?>
js/uikit-icons.min.js"><?php echo '</script'; ?>
>
  <?php echo '<script'; ?>
 src="<?php echo $_smarty_tpl->tpl_vars['WEB']->value;?>
js/barba.js"><?php echo '</script'; ?>
>
  <?php echo '<script'; ?>
 async src="//pagead2.googlesyndication.com/pagead/js/adsbygoogle.js"><?php echo '</script'; ?>
>
  <?php echo '<script'; ?>
>
    (adsbygoogle = window.adsbygoogle || []).push({
      google_ad_client: "ca-pub-5412159726057775",
      enable_page_level_ads: true
    });
  <?php echo '</script'; ?>
>
  <title><?php echo $_smarty_tpl->tpl_vars['title']->value;?>
 - gimon</title>
</head>
<body class="uk-background-muted">
  <div id="barba-wrapper">
    <div class="barba-container">
      <header class="">
        <nav class="default-primary-color primary-text-color uk-padding" uk-navbar>
          <div class="uk-navbar-left">
            <ul class="uk-navbar-nav">
              <a class="text-primary-color" href="<?php echo $_smarty_tpl->tpl_vars['WEB']->value;?>
">gimon</a>
            </ul>
          </div>
          <div class="uk-navbar-center">
            <ul class="uk-navbar-nav">
              <li class="uk-logo text-primary-color"><?php echo $_smarty_tpl->tpl_vars['title']->value;?>
</li>
            </ul>
          </div>
          <!--
          <div class="uk-navbar-right">
          <ul class="uk-navbar-nav">
          <li class="uk-active"><a href="#">Active</a></li>
          <li><a href="#">Item</a></li>
        </ul>
      </div>
    -->
  </nav>
</header>
<main class="">
<?php }
}
