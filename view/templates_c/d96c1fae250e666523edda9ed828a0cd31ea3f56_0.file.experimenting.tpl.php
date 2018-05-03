<?php
/* Smarty version 3.1.32-dev-35, created on 2018-05-03 03:22:43
  from 'C:\xampp\htdocs\chemical\view\templates\experiment\experimenting.tpl' */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '3.1.32-dev-35',
  'unifunc' => 'content_5aea01f36f2618_82660335',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    'd96c1fae250e666523edda9ed828a0cd31ea3f56' => 
    array (
      0 => 'C:\\xampp\\htdocs\\chemical\\view\\templates\\experiment\\experimenting.tpl',
      1 => 1525285349,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
    'file:../template/header.tpl' => 1,
    'file:../template/footer.tpl' => 1,
  ),
),false)) {
function content_5aea01f36f2618_82660335 (Smarty_Internal_Template $_smarty_tpl) {
ob_start();
echo $_smarty_tpl->tpl_vars['WEB']->value;
$_prefixVariable1 = ob_get_clean();
$_smarty_tpl->_subTemplateRender('file:../template/header.tpl', $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array('WEB'=>$_prefixVariable1), 0, false);
?>

<h1 class='bshadow white'>じっけんちゅう！</h1>
<img src='img/loader.gif' width=50% ><br>
<span class='hidden' id='startTime'><?php echo $_smarty_tpl->tpl_vars['startTime']->value;?>
</span>
<span class='hidden' id='exid'><?php echo $_smarty_tpl->tpl_vars['exId']->value;?>
</span>
<span class='hidden' id='waitTime'><?php echo $_smarty_tpl->tpl_vars['waitTime']->value;?>
</span>
<div class='waiting'><div class='waitingbar' id='waitingbar'></div></div>
<div class='button fsize120' id='timearea'>あと<?php echo $_smarty_tpl->tpl_vars['diff']->value;?>
秒...</div>

<?php echo '<script'; ?>
>

$(function(){
  var exid = $("#exid").text();
  var startTimeRaw = $("#startTime").text();
  var waitTime = $("#waitTime").text();
  var nowTime = new Date();
  var startTime = new Date(Date.parse(startTimeRaw));
  var diff = parseInt((nowTime.getTime() - startTime.getTime())/1000);
  var nokori = waitTime - diff;
  var percent = diff/waitTime*100 + "%";
  var color = 'hsl(' + diff/waitTime*300 + ', 82%, 58%)';
  $("#timearea").text("　あと"+nokori+"秒　");


  setTimeout(repeat,1000);
  function repeat(){
    nowTime = new Date();
    diff = parseInt((nowTime.getTime() - startTime.getTime())/1000);
    nokori = waitTime - diff;
    percent = diff/waitTime*100 + "%";
    color = 'hsl(' + diff/waitTime*300 + ', 82%, 58%)';


    $("#waitingbar").animate({
      'width': percent
    }, {
      'duration':1000,
      'easing':'linear'
    });
    $("#timearea").text("　あと"+nokori+"秒　");
    setTimeout(repeat,1000);
    if(nokori<1){
      window.location.href = "experiment";
    }
  }

});

<?php echo '</script'; ?>
>

<?php $_smarty_tpl->_subTemplateRender('file:../template/footer.tpl', $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array('b0'=>'','b1'=>"b",'b2'=>'','b3'=>'','b4'=>''), 0, false);
?>

<?php }
}
