{include file='../template/header.tpl' WEB={$WEB}}
<div id="modal" class="window">
  <div class="modalbar">
    <div id="close" class="modalclose">✕</div>
    実験
  </div>
  <div id="sellimage"><img src="img/kenkyu_woman.png" width=80% alt="実験"></div>
  <div id=sellarea>アイテムを選んでください。</div><br>
  <div id=sellbtnarea><div id="exp" class="button none">　　実験!　　</div></div>
</div>
<a id="open" class="buttonsell buttongreen">実験!</a>
<form id="itembox" action="experimenting.php" method="post">
  <div class="itemInfo" id="iteminfo">
    アイテムと環境を選択<br>
    <select id="environ" name="environ">
      {foreach from=$environs item=environ}
      <option value="{$environ.environId}">{$environ.environName}</option>
      {/foreach}
    </select>
    <br>
    <span id="selecttext" class="fsize50"></span>
  </div>
  <div class="itemBox">
    {foreach from=$items item=item}
    <div class="item">
      <label>
        <input type="checkbox" class="rb" value="{$item[0]}" name="itemr" id="itemr" data-name="{$item[3]}">
        <div class="checkbox-icon">
          <img src="{$item[1]}" width="100%" >
          <div class="itemNumber white">{$item[2]}</div>
        </div>
      </label>
    </div>
    {/foreach}
  </div>
</form>
<script>
{literal}
$(function(){
  var stritems = "";
  var environ = "";
  $("form").change(function(){
    stritems = "";
    environ = $('#environ option:selected').text();
    var itemr = $("input[name=itemr]:checked");
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

});
{/literal}
</script>

{include file='../template/footer.tpl' b0="" b1="b" b2="" b3="" b4=""}
