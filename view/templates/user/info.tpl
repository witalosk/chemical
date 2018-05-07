{include file='../template/header.tpl' WEB={$WEB}}
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
  <br>
{include file='../template/footer.tpl' b0="b" b1="" b2="" b3="" b4=""}
