{include file='../template/header.tpl' WEB={$WEB}}
<script type="text/javascript">
$(function(){
  $("#modal").css("visibility","visible");
  $("#modal").fadeIn("normal");
});
</script>
<div id="modal" class="window">
  <div class="modalbar">
    ログインボーナス
  </div>
  <article class="modalcontents">
    <br>
    <h2>{$logintimes}日目</h2>
    <img src="{$WEB}img/coins.png" width="70%">
    <p>{$coin}コインゲット!</p>
    <a id="close" class="buttonblack">確認</a>
  </article>
</div>

<h1 class="bshadow white">お知らせ</h1>
<img class="animated fadeIn" src="{$WEB}img/open1.png" width="80%">
<div class="scbox">
  <ul>
    {foreach from=$msgs item=msg}
    <li>{$msg.mesText}({$msg.mesDate})</li>
    {/foreach}
  </ul>
</div>
<p>
  <a class="buttonblack" href="logout">ログアウトする</a>
</p>
<p>
  <form action="" method="post">
    <input type="hidden" name="h2" value="hey">
    <input type="submit" class="button" value="DEBUG +1000coin">
  </form>
</p>
<br>
{include file='../template/footer.tpl' b0="b" b1="" b2="" b3="" b4=""}
