<?php
/* Smarty version 3.1.32-dev-35, created on 2018-05-05 00:53:54
  from 'C:\xampp\htdocs\chemical\view\templates\gacha\rare.tpl' */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '3.1.32-dev-35',
  'unifunc' => 'content_5aec821284c7d4_64418595',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    '8b6657e2518dd03e64ba694bc66caf939aaa3f9d' => 
    array (
      0 => 'C:\\xampp\\htdocs\\chemical\\view\\templates\\gacha\\rare.tpl',
      1 => 1525449231,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
    'file:../template/header.tpl' => 1,
    'file:../template/footer.tpl' => 1,
  ),
),false)) {
function content_5aec821284c7d4_64418595 (Smarty_Internal_Template $_smarty_tpl) {
ob_start();
echo $_smarty_tpl->tpl_vars['WEB']->value;
$_prefixVariable1 = ob_get_clean();
$_smarty_tpl->_subTemplateRender('file:../template/header.tpl', $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array('WEB'=>$_prefixVariable1), 0, false);
?>

<h1 id="rare" class="bshadow white">★<?php echo $_smarty_tpl->tpl_vars['rare']->value;?>
</h1>
<img id="imgarea" src="<?php echo $_smarty_tpl->tpl_vars['WEB']->value;
echo $_smarty_tpl->tpl_vars['img']->value;?>
" width="50%" class="animated fadeInDownBig">
<h1 id="name" class="bshadow white"><?php echo $_smarty_tpl->tpl_vars['name']->value;?>
</h1>
<p class="bshadow white">をゲット！</p>
<a href="/gacha/rare" class="buttongreen">もう1回</a>
<a href="/gacha" class="buttonblack">やめる</a>

<?php echo '<script'; ?>
>

function huwacard(){
  $("#imgarea").animate({
    marginTop: '-=20px'
  }, 800).animate({
    marginTop: '+=20px'
  }, 800);
  setTimeout('huwacard()', 1600);
  $("#name").animate({
    marginTop: '+=20px'
  }, 800).animate({
    marginTop: '-=20px'
  }, 800);
  setTimeout('huwacard()', 1600);
}

$(function(){
  //ふわふわアニメ
  setTimeout('huwacard()', 1600);


});

<?php echo '</script'; ?>
>
<?php $_smarty_tpl->_subTemplateRender('file:../template/footer.tpl', $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array('b0'=>'','b1'=>'','b2'=>'','b3'=>'','b4'=>"b"), 0, false);
?>

<?php }
}
