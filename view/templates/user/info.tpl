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
    <a class="uk-button uk-button-secondary" href="logout">ログアウトする</a>
  </p>
  <p>
    <form action="" method="post">
      <input type="hidden" name="h2" value="hey">
      <input type="submit" class="uk-button uk-button-default" value="DEBUG +1000coin">
    </form>
  </p>
  <br>
{include file='../template/footer.tpl' b0="b" b1="" b2="" b3="" b4=""}
