{include file='../template/header.tpl' WEB={$WEB}}
<h1 id="rare" class="bshadow white">★{$rare}</h1>
<img id="imgarea" src="{$WEB}{$img}" width="50%" class="animated fadeInDownBig">
<h1 id="name" class="bshadow white">{$name}</h1>
<p class="bshadow white">をゲット！</p>
<a href="/gacha/rare" class="buttongreen">もう1回</a>
<a href="/gacha" class="buttonblack">やめる</a>

<script>
{literal}
function huwacard(){
  $("#imgarea").animate({
    marginTop: '-=20px'
  }, 800).animate({
    marginTop: '+=20px'
  }, 800);
  setTimeout('huwacard()', 1600);
  $("#name").animate({
    marginTop: '+=20px'
  }, 800).animate({
    marginTop: '-=20px'
  }, 800);
  setTimeout('huwacard()', 1600);
}

$(function(){
  //ふわふわアニメ
  setTimeout('huwacard()', 1600);


});
{/literal}
</script>
{include file='../template/footer.tpl' b0="" b1="" b2="" b3="" b4="b"}
