<?php
/* Smarty version 3.1.32-dev-35, created on 2018-05-03 00:29:52
  from 'C:\xampp\htdocs\chemical\view\templates\experiment\experiment_failed.tpl' */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '3.1.32-dev-35',
  'unifunc' => 'content_5ae9d97058e838_02527720',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    'aa39939fc8c5a1d34cfbc758fa6b063f0573618f' => 
    array (
      0 => 'C:\\xampp\\htdocs\\chemical\\view\\templates\\experiment\\experiment_failed.tpl',
      1 => 1525274989,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
    'file:../template/header.tpl' => 1,
    'file:../template/footer.tpl' => 1,
  ),
),false)) {
function content_5ae9d97058e838_02527720 (Smarty_Internal_Template $_smarty_tpl) {
ob_start();
echo $_smarty_tpl->tpl_vars['WEB']->value;
$_prefixVariable1 = ob_get_clean();
$_smarty_tpl->_subTemplateRender('file:../template/header.tpl', $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array('WEB'=>$_prefixVariable1), 0, false);
?>

<img src='img/miss.png' width=80<?php echo '%>';?>
<p class='wbshadow'>組み合わせが違うか，環境が違うみたい…</p>
<a class='buttongreen' href='experiment'>戻る</a>
<?php $_smarty_tpl->_subTemplateRender('file:../template/footer.tpl', $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array('b0'=>'','b1'=>"b",'b2'=>'','b3'=>'','b4'=>''), 0, false);
?>

<?php }
}
