<?php
/* Smarty version 3.1.32-dev-35, created on 2018-04-27 19:43:31
  from 'C:\xampp\htdocs\chemical\view\templates\collection\getcollection.tpl' */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '3.1.32-dev-35',
  'unifunc' => 'content_5ae2fed3dfbec0_10769635',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    '50833ac0238e059964f75c2b8c053b21fe6ba41c' => 
    array (
      0 => 'C:\\xampp\\htdocs\\chemical\\view\\templates\\collection\\getcollection.tpl',
      1 => 1524825807,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_5ae2fed3dfbec0_10769635 (Smarty_Internal_Template $_smarty_tpl) {
?>
<img src="<?php echo $_smarty_tpl->tpl_vars['picpath']->value;?>
" width=70<?php echo '%>';?>
<h1>No.<?php echo $_smarty_tpl->tpl_vars['id']->value;?>
 <?php echo $_smarty_tpl->tpl_vars['name']->value;?>
</h1>
<p>★<?php echo $_smarty_tpl->tpl_vars['reality']->value;?>
/5</p>
<p>分子量: <?php echo $_smarty_tpl->tpl_vars['molWeight']->value;?>
</p>
<p><?php echo $_smarty_tpl->tpl_vars['color']->value;?>
</p>
<p>売値: <?php echo $_smarty_tpl->tpl_vars['price']->value;?>
コイン</p>
<div class="scbox">
<?php echo $_smarty_tpl->tpl_vars['text']->value;?>

</div>
<?php }
}
