<?php
/* Smarty version 3.1.32-dev-35, created on 2018-04-27 20:29:30
  from 'C:\xampp\htdocs\chemical\view\templates\collection\index.tpl' */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '3.1.32-dev-35',
  'unifunc' => 'content_5ae3099a1f61a5_88106957',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    '73979e8d82ba3200580921cf50567aa382a21175' => 
    array (
      0 => 'C:\\xampp\\htdocs\\chemical\\view\\templates\\collection\\index.tpl',
      1 => 1524828568,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
    'file:../template/header.tpl' => 1,
    'file:../template/footer.tpl' => 1,
  ),
),false)) {
function content_5ae3099a1f61a5_88106957 (Smarty_Internal_Template $_smarty_tpl) {
ob_start();
echo $_smarty_tpl->tpl_vars['WEB']->value;
$_prefixVariable1 = ob_get_clean();
$_smarty_tpl->_subTemplateRender('file:../template/header.tpl', $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array('WEB'=>$_prefixVariable1), 0, false);
?>


<div id="modal" class="window">
  <div class="modalbar">
    <div id="close" class="modalclose">✕</div>
    詳細データ
  </div>
  <article class="modalcontents">
    <div id="sellimage"></div>
    <div id="sellarea">キャラクターを選択してください。</div>
    <div id="sellbtnarea"></div>
  </article>
</div>

<div class="itemInfo" id="iteminfo">
  アイテムを選択してください。<br>
  (番号は図鑑番号)
</div>

<div class="itemBox">
  <form id="itembox" onsubmit="return false;">
    <?php
$_from = $_smarty_tpl->smarty->ext->_foreach->init($_smarty_tpl, $_smarty_tpl->tpl_vars['items']->value, 'item');
if ($_from !== null) {
foreach ($_from as $_smarty_tpl->tpl_vars['item']->value) {
?>
    <div class="item">
      <label>
        <input type="radio" class="rb" value="<?php echo $_smarty_tpl->tpl_vars['item']->value[0];?>
" name="itemr" id="itemr">
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

  </form>
</div>
<?php echo '<script'; ?>
>

$(function(){
  $("form").change(function(){
    var itemr={
      "itemr": $("input[name=itemr]:checked").val()
    };

    $.ajax({
      type: "post",
      data: itemr,
      dataType: "html",
      url: "collection/getcollection",
      success: function(data){
        console.log(data);
        $("#sellarea").html(data);
      },
      error: function(XMLHttpRequest, textStatus, errorThrown) {
        console.log("XMLHttpRequest : " + XMLHttpRequest.status);
        console.log("textStatus : " + textStatus);
        console.log("errorThrown : " + errorThrown.message);
      }
    });
    $("#modal").addClass("animated zoomIn");
    $("#modal").css("visibility","visible");
    $("#modal").css("display","block");

  });

});

<?php echo '</script'; ?>
>
<?php $_smarty_tpl->_subTemplateRender('file:../template/footer.tpl', $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array('b0'=>'','b1'=>'','b2'=>'','b3'=>"b",'b4'=>''), 0, false);
?>

<?php }
}
