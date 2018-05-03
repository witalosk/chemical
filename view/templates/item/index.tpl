{include file='../template/header.tpl' WEB={$WEB}}
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
    {foreach from=$items item=item}
    <div class="item">
      <label>
        <input type="radio" class="rb" value="{$item[0]}" name="itemr" id="itemr">
        <div class="checkbox-icon">
          <img src="{$item[1]}" width="100%" >
          <div class="itemNumber white">{$item[2]}</div>
        </div>
      </label>
    </div>
    {/foreach}
  </form>
</div>
<script>
{literal}
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
        $("#sellimage").html('<img src="' + item[0].picture + '" width=80%>');
        $("#sellarea").html(item[0].name + 'を何個売却しますか？<br>(１個' + item[0].price + 'コイン)');
        $("#sellbtnarea").html(
          '<form action="/item/sell" method="post">'
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
  {/literal}
  </script>
  {include file='../template/footer.tpl' b0="" b1="" b2="b" b3="" b4=""}
