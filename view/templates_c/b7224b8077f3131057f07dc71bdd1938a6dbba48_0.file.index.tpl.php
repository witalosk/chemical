<?php
/* Smarty version 3.1.32-dev-35, created on 2018-05-03 16:51:56
  from 'C:\xampp\htdocs\chemical\view\templates\gacha\index.tpl' */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '3.1.32-dev-35',
  'unifunc' => 'content_5aeabf9c5d2264_85758710',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    'b7224b8077f3131057f07dc71bdd1938a6dbba48' => 
    array (
      0 => 'C:\\xampp\\htdocs\\chemical\\view\\templates\\gacha\\index.tpl',
      1 => 1525333906,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
    'file:../template/header.tpl' => 1,
    'file:../template/footer.tpl' => 1,
  ),
),false)) {
function content_5aeabf9c5d2264_85758710 (Smarty_Internal_Template $_smarty_tpl) {
ob_start();
echo $_smarty_tpl->tpl_vars['WEB']->value;
$_prefixVariable1 = ob_get_clean();
$_smarty_tpl->_subTemplateRender('file:../template/header.tpl', $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array('WEB'=>$_prefixVariable1), 0, false);
?>

<h1 class="bshadow white">レアガチャ</h1>
<img src="<?php echo $_smarty_tpl->tpl_vars['WEB']->value;?>
img/gachagacha.png" alt="レアガチャ" width="50%"><br>
<p class="bshadow white">★1から★5までが出現します。</p>
<a href="gacha/"><img src="<?php echo $_smarty_tpl->tpl_vars['WEB']->value;?>
img/gacharu.png" alt="ガチャる" width="80%"></a>
<p class="white bshadow">※コインが足りない場合、<br>この画面に戻ります。</p>
<br>
<h1 class="bshadow white">素材ガチャ</h1>
<img src="<?php echo $_smarty_tpl->tpl_vars['WEB']->value;?>
img/gachagacha2.png" alt="レアガチャ" width="50%"><br>
<p class="bshadow white">★1のみが出現します。</p>
<a href="gacha/sozaindex"><img src="<?php echo $_smarty_tpl->tpl_vars['WEB']->value;?>
img/sozaigacharu.png" alt="ガチャる" width="80%"></a>
<p class="white bshadow">※コインが足りない場合、<br>この画面に戻ります。</p>
<p class="white bshadow fsize50">
コインガチャはゲーム内コイン専用コンテンツです。<br>
コンテンツご利用後のコインの返金は一切行いませんのでご注意ください｡<br>
画像はイメージです。<br>
一部入手出来ないアイテムが出現する場合があります。<br>
出現するアイテムは被ることがあります。<br>
アイテムの一部や色が正しく表示されない場合があります。
</p>
<br>

<?php $_smarty_tpl->_subTemplateRender('file:../template/footer.tpl', $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array('b0'=>'','b1'=>"b",'b2'=>'','b3'=>'','b4'=>''), 0, false);
?>

<?php }
}
