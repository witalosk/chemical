<?php
/* Smarty version 3.1.32-dev-35, created on 2018-05-03 02:47:02
  from 'C:\xampp\htdocs\chemical\view\templates\experiment\experiment_finished.tpl' */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '3.1.32-dev-35',
  'unifunc' => 'content_5ae9f996777a36_87656293',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    'abbdb09ff2840a5e97b77a3cbab16e6d1bec597e' => 
    array (
      0 => 'C:\\xampp\\htdocs\\chemical\\view\\templates\\experiment\\experiment_finished.tpl',
      1 => 1525283220,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
    'file:../template/header.tpl' => 1,
    'file:../template/footer.tpl' => 1,
  ),
),false)) {
function content_5ae9f996777a36_87656293 (Smarty_Internal_Template $_smarty_tpl) {
ob_start();
echo $_smarty_tpl->tpl_vars['WEB']->value;
$_prefixVariable1 = ob_get_clean();
$_smarty_tpl->_subTemplateRender('file:../template/header.tpl', $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array('WEB'=>$_prefixVariable1), 0, false);
?>

<img src="img/jikken.png" width=70<?php echo '%>';?>
<h2><?php echo $_smarty_tpl->tpl_vars['exFormura']->value;?>
</h2>
<a class="buttongreen" href="experiment">戻る</a>
<?php $_smarty_tpl->_subTemplateRender('file:../template/footer.tpl', $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array('b0'=>'','b1'=>"b",'b2'=>'','b3'=>'','b4'=>''), 0, false);
?>

<?php }
}
