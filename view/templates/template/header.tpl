<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8" />
  <meta name="viewport" content="width=device-width, height=device-height, user-scalable=0">
  <meta name="format-detection" content="telephone=no">
  <title>けみくえ!</title>
  <!--[if IE]>
  <script src="http://html5shiv.googlecode.com/svn/trnk/html5.js"></script>
  <![endif]-->
  <script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
  <script type="text/javascript" src="{$WEB}js/uikit.min.js"></script>
  <script type="text/javascript" src="{$WEB}js/modal.js"></script>
  <script type="text/javascript" src="{$WEB}js/bottombar.js"></script>
  <script type="text/javascript" src="{$WEB}js/loader.js"></script>
  <script>
  if ('serviceWorker' in navigator) {
    navigator.serviceWorker
           .register('/service-worker.js') // ここはservice-worker.jsのパスを指定
           .then(function() { console.log('Service Worker Registered'); });
  }
  if (('standalone' in window.navigator) && window.navigator.standalone) {
      window.addEventListener('load', function() {
          var links = document.links,
              link,
              i;
          for (i = 0; i < links.length; i++) {
              // Don't do this for javascript: links
              if (!~(link = links[i]).href.toLowerCase().indexOf('javascript')) {
                  if('href' in link && link.href.indexOf('http') !== -1 && link.href.indexOf(document.location.host) !== -1)
                  {
                      link.addEventListener('click', function(event) {
                          event.preventDefault();
                          document.location.href = this.href;
                      }, false);
                  }
              }
          }
      }, false);
  }
  </script>
  <link rel="stylesheet" href="{$WEB}css/uikit.min.css">
  <link rel="stylesheet" href="{$WEB}css/style.css">
  <link rel="stylesheet" href="{$WEB}css/animate.css">
  <link rel="stylesheet" href="{$WEB}css/selection.css">
  <link rel="manifest" href="/manifest.json">
</head>
<body>
  <article>
    <div class="topbar">
      <div class="level frale">
        {$info.percentage}<span class="fsize50">%</span>
      </div>
      <div class="exp frale">
        {$info.zukan}/{$info.i}
      </div>
      <div class="rank">
        {$info.classtext}：{$info.nickName}
      </div>
      <div class="coin frale">
        {$info.coin}
      </div>
      <div class="mol frale">
        {$info.sum}
      </div>
    </div>
