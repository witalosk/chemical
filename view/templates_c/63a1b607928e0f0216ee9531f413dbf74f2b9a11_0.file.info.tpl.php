<?php
/* Smarty version 3.1.32-dev-35, created on 2018-05-07 21:21:24
  from 'C:\xampp\htdocs\chemical\view\templates\user\info.tpl' */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '3.1.32-dev-35',
  'unifunc' => 'content_5af044c4c963d0_85640917',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    '63a1b607928e0f0216ee9531f413dbf74f2b9a11' => 
    array (
      0 => 'C:\\xampp\\htdocs\\chemical\\view\\templates\\user\\info.tpl',
      1 => 1525695681,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
    'file:../template/header.tpl' => 1,
    'file:../template/footer.tpl' => 1,
  ),
),false)) {
function content_5af044c4c963d0_85640917 (Smarty_Internal_Template $_smarty_tpl) {
ob_start();
echo $_smarty_tpl->tpl_vars['WEB']->value;
$_prefixVariable1 = ob_get_clean();
$_smarty_tpl->_subTemplateRender('file:../template/header.tpl', $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array('WEB'=>$_prefixVariable1), 0, false);
?>

  <h1 class="bshadow white">お知らせ</h1>
  <img class="animated fadeIn" src="<?php echo $_smarty_tpl->tpl_vars['WEB']->value;?>
img/open1.png" width="80%">
  <div class="scbox">
    <ul>
      <?php
$_from = $_smarty_tpl->smarty->ext->_foreach->init($_smarty_tpl, $_smarty_tpl->tpl_vars['msgs']->value, 'msg');
if ($_from !== null) {
foreach ($_from as $_smarty_tpl->tpl_vars['msg']->value) {
?>
      <li><?php echo $_smarty_tpl->tpl_vars['msg']->value['mesText'];?>
(<?php echo $_smarty_tpl->tpl_vars['msg']->value['mesDate'];?>
)</li>
      <?php
}
}
$_smarty_tpl->smarty->ext->_foreach->restore($_smarty_tpl, 1);
?>

    </ul>
  </div>
  <p>
    <a class="buttonblack" href="logout">ログアウトする</a>
  </p>
  <br>
<?php $_smarty_tpl->_subTemplateRender('file:../template/footer.tpl', $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array('b0'=>"b",'b1'=>'','b2'=>'','b3'=>'','b4'=>''), 0, false);
?>

<?php }
}
