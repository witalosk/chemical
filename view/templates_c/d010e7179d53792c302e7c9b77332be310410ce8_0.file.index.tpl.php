<?php
/* Smarty version 3.1.32-dev-35, created on 2018-05-07 20:24:40
  from 'C:\xampp\htdocs\chemical\view\templates\experiment\index.tpl' */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '3.1.32-dev-35',
  'unifunc' => 'content_5af03778295cf5_46794314',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    'd010e7179d53792c302e7c9b77332be310410ce8' => 
    array (
      0 => 'C:\\xampp\\htdocs\\chemical\\view\\templates\\experiment\\index.tpl',
      1 => 1525692267,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
    'file:../template/header.tpl' => 1,
    'file:../template/footer.tpl' => 1,
  ),
),false)) {
function content_5af03778295cf5_46794314 (Smarty_Internal_Template $_smarty_tpl) {
ob_start();
echo $_smarty_tpl->tpl_vars['WEB']->value;
$_prefixVariable1 = ob_get_clean();
$_smarty_tpl->_subTemplateRender('file:../template/header.tpl', $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array('WEB'=>$_prefixVariable1), 0, false);
?>

<div id="modal" class="window">
  <div class="modalbar">
    <div id="close" class="modalclose">✕</div>
    実験
  </div>
  <article class="modalcontents">
    <div id="sellimage"><img src="img/kenkyu_woman.png" width=80% alt="実験"></div>
    <div id=sellarea>アイテムを選んでください。</div><br>
    <div id=sellbtnarea><a id="exp" class="buttongreen none">実験!</a></div>
  </article>
</div>

<a id="open" class="buttonsell buttongreen">実験!</a>
<form id="itembox" action="" method="post">
  <div class="itemInfo" id="iteminfo">
    アイテムと環境を選択<br>
    <select id="environ" name="environ">
      <?php
$_from = $_smarty_tpl->smarty->ext->_foreach->init($_smarty_tpl, $_smarty_tpl->tpl_vars['environs']->value, 'environ');
if ($_from !== null) {
foreach ($_from as $_smarty_tpl->tpl_vars['environ']->value) {
?>
      <option value="<?php echo $_smarty_tpl->tpl_vars['environ']->value['environId'];?>
"><?php echo $_smarty_tpl->tpl_vars['environ']->value['environName'];?>
</option>
      <?php
}
}
$_smarty_tpl->smarty->ext->_foreach->restore($_smarty_tpl, 1);
?>

    </select>
    <br>
    <span id="selecttext" class="fsize50"></span>
  </div>
  <div class="itemBox">
    <?php
$_from = $_smarty_tpl->smarty->ext->_foreach->init($_smarty_tpl, $_smarty_tpl->tpl_vars['items']->value, 'item');
if ($_from !== null) {
foreach ($_from as $_smarty_tpl->tpl_vars['item']->value) {
?>
    <div class="item">
      <label>
        <input type="checkbox" class="rb" value="<?php echo $_smarty_tpl->tpl_vars['item']->value[0];?>
" name="itemr[]" id="itemr" data-name="<?php echo $_smarty_tpl->tpl_vars['item']->value[3];?>
">
        <div class="checkbox-icon">
          <img src="<?php echo $_smarty_tpl->tpl_vars['item']->value[1];?>
" width="100%" >
          <div class="itemNumber white"><?php echo $_smarty_tpl->tpl_vars['item']->value[2];?>
</div>
        </div>
      </label>
    </div>
    <?php
}
}
$_smarty_tpl->smarty->ext->_foreach->restore($_smarty_tpl, 1);
?>

  </div>
</form>
<?php echo '<script'; ?>
>

$(function(){
  var stritems = "";
  var environ = "";
  $("form").change(function(){
    stritems = "";
    environ = $('#environ option:selected').text();
    var itemr = $("input[name='itemr[]']:checked");
    for(var i = 0 ; i < itemr.length ; i ++){
      if(itemr[i].checked == true){
        stritems = stritems + itemr[i].dataset.name + " ";
      }
    }
    $('#selecttext').text(stritems);
    $('#sellarea').html(stritems + "を<br>" + environ + "で<br>実験しますか？");
    if(stritems == "") {
      $('#exp').css('display', 'none');
      $('#sellarea').html("アイテムを選んでください．");
    }
    else {
      $('#exp').css('display', 'block');
    }
  });

  //実験ボタンを押したとき
  $('#exp').click(function(){
    $('#itembox').submit();
  });

});

<?php echo '</script'; ?>
>

<?php $_smarty_tpl->_subTemplateRender('file:../template/footer.tpl', $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array('b0'=>'','b1'=>"b",'b2'=>'','b3'=>'','b4'=>''), 0, false);
?>

<?php }
}
