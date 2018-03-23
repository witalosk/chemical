<?php
/* Smarty version 3.1.32-dev-35, created on 2018-03-23 20:22:19
  from 'C:\xampp\htdocs\chemical\view\templates\template\header.tpl' */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '3.1.32-dev-35',
  'unifunc' => 'content_5ab4e36b281199_72680874',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    'f5065e9226dd34044d9efaa95eb13a43c1f70bf8' => 
    array (
      0 => 'C:\\xampp\\htdocs\\chemical\\view\\templates\\template\\header.tpl',
      1 => 1521804132,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_5ab4e36b281199_72680874 (Smarty_Internal_Template $_smarty_tpl) {
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
 type="text/javascript" src="<?php echo $_smarty_tpl->tpl_vars['WEB']->value;?>
js/uikit.min.js"><?php echo '</script'; ?>
>
  <?php echo '<script'; ?>
 type="text/javascript" src="<?php echo $_smarty_tpl->tpl_vars['WEB']->value;?>
js/modal.js"><?php echo '</script'; ?>
>
  <?php echo '<script'; ?>
 type="text/javascript" src="<?php echo $_smarty_tpl->tpl_vars['WEB']->value;?>
js/bottombar.js"><?php echo '</script'; ?>
>
  <?php echo '<script'; ?>
 type="text/javascript" src="<?php echo $_smarty_tpl->tpl_vars['WEB']->value;?>
js/loader.js"><?php echo '</script'; ?>
>
  <link rel="stylesheet" href="<?php echo $_smarty_tpl->tpl_vars['WEB']->value;?>
css/uikit.min.css">
  <link rel="stylesheet" href="<?php echo $_smarty_tpl->tpl_vars['WEB']->value;?>
css/style.css">
  <link rel="stylesheet" href="<?php echo $_smarty_tpl->tpl_vars['WEB']->value;?>
css/animate.css">
  <link rel="stylesheet" href="<?php echo $_smarty_tpl->tpl_vars['WEB']->value;?>
css/selection.css">
</head>
<body>
  <article>
    <div class="topbar">
      <div class="level frale">
        <?php echo $_smarty_tpl->tpl_vars['info']->value['percentage'];?>
<span class="fsize50">%</span>
      </div>
      <div class="exp frale">
        <?php echo $_smarty_tpl->tpl_vars['info']->value['zukan'];?>
/<?php echo $_smarty_tpl->tpl_vars['info']->value['i'];?>

      </div>
      <div class="rank">
        <?php echo $_smarty_tpl->tpl_vars['info']->value['classtext'];?>
：<?php echo $_smarty_tpl->tpl_vars['info']->value['nickName'];?>

      </div>
      <div class="coin frale">
        <?php echo $_smarty_tpl->tpl_vars['info']->value['coin'];?>

      </div>
      <div class="mol frale">
        <?php echo $_smarty_tpl->tpl_vars['info']->value['sum'];?>

      </div>
    </div>
<?php }
}
