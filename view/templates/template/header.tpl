<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8" />
  <meta name="viewport" content="width=device-width, height=device-height, user-scalable=0">
  <meta name="format-detection" content="telephone=no">
  <title>Chemiquest</title>
  <!--[if IE]>
  <script src="http://html5shiv.googlecode.com/svn/trnk/html5.js"></script>
  <![endif]-->
  <script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
  <script type="text/javascript" src="{$WEB}js/uikit.min.js"></script>
  <script type="text/javascript" src="{$WEB}js/modal.js"></script>
  <script type="text/javascript" src="{$WEB}js/bottombar.js"></script>
  <script type="text/javascript" src="{$WEB}js/loader.js"></script>
  <link rel="stylesheet" href="{$WEB}css/uikit.min.css">
  <link rel="stylesheet" href="{$WEB}css/style.css">
  <link rel="stylesheet" href="{$WEB}css/animate.css">
  <link rel="stylesheet" href="{$WEB}css/selection.css">
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
