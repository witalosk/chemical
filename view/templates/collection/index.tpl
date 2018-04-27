{include file='../template/header.tpl' WEB={$WEB}}

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
{/literal}
</script>
{include file='../template/footer.tpl' b0="" b1="" b2="" b3="b" b4=""}
