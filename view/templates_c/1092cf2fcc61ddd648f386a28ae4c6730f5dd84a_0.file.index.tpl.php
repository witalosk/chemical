<?php
/* Smarty version 3.1.32-dev-35, created on 2018-03-23 20:57:47
  from 'C:\xampp\htdocs\chemical\view\templates\item\index.tpl' */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '3.1.32-dev-35',
  'unifunc' => 'content_5ab4ebbb3aa821_33326324',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    '1092cf2fcc61ddd648f386a28ae4c6730f5dd84a' => 
    array (
      0 => 'C:\\xampp\\htdocs\\chemical\\view\\templates\\item\\index.tpl',
      1 => 1521806261,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
    'file:../template/header.tpl' => 1,
    'file:../template/footer.tpl' => 1,
  ),
),false)) {
function content_5ab4ebbb3aa821_33326324 (Smarty_Internal_Template $_smarty_tpl) {
ob_start();
echo $_smarty_tpl->tpl_vars['WEB']->value;
$_prefixVariable1 = ob_get_clean();
$_smarty_tpl->_subTemplateRender('file:../template/header.tpl', $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array('WEB'=>$_prefixVariable1), 0, false);
?>

<div id="modal" class="window">
  <div class="modalbar">
    <div id="close" class="modalclose">✕</div>
    アイテムを売る
  </div>
  <article>
    <div id="sellimage"></div>
    <div id=sellarea>アイテムを選択してください。</div>
    <div id=sellbtnarea></div>
  </article>
</div>

<a id="open" class="buttonsell buttongreen">売る</a>
<div class="itemInfo" id="iteminfo">
  アイテムを選択してください。
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
      dataType: "json",
      url: "item/getitem",
      success: function(data){
        item = data.item;
        console.log(item);
        $("#iteminfo").html('<div class="inlineblock"><img src='
        + item[0].icon
        + ' style="height: 100%;"></div><div class="inlineblock w40p"><span class="fsize120">'
        + item[0].name
        + '</span><br>' + item[0].price
        + 'コイン</div>');
        $("#sellimage").html('<img src="' + item[0].picture + '" width=80<?php echo '%>'; ?>
');
        $("#sellarea").html(item[0].name + 'を何個売却しますか？<br>(１個' + item[0].price + 'コイン)');
        $("#sellbtnarea").html(
          '<form action="sell" method="post">'
          + '<input type="number" name="num" class="textmini" value=1 id="num" readonly="readonly">個'
          + '<br><br><a id="plus" class="minibutton" href="javascript:void(0);">▲</a>'
          + '<a id="minus" class="minibutton" href="javascript:void(0);">▼</a>'
          + '<input type="hidden" name="itemId" value=' + itemr["itemr"] + '>'
          + '<br><br><input type="submit" value="　　売却　　" class="buttongreen mar5 fsize120">'
          + '</form>');
        },
        error: function(XMLHttpRequest, textStatus, errorThrown) {
          console.log("XMLHttpRequest : " + XMLHttpRequest.status);
          console.log("textStatus : " + textStatus);
          console.log("errorThrown : " + errorThrown.message);
        }
      });

    });

    $(document).on("click", "#plus", function(){
      var n = parseInt($("#num").val());
      $("#num").val(n+1);
    });
    $(document).on("click", "#minus", function(){
      var n = parseInt($("#num").val());
      if(n!=1){
        $("#num").val(n-1);
      }
    });
  });
  
  <?php echo '</script'; ?>
>
  <?php $_smarty_tpl->_subTemplateRender('file:../template/footer.tpl', $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array('b0'=>'','b1'=>'','b2'=>"b",'b3'=>'','b4'=>''), 0, false);
?>

<?php }
}
