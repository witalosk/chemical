$(function() {
  var h = $(window).height();
  $('#loader-bg ,#loader').height(h).css('display','block');

  $('a').click(function(){ //ページ離脱時処理
    var url = $(this).attr('href');
    if (url != '' && typeof url != 'undefined' && url != '#') {
      $('#loader-bg').fadeIn(500);
      $('#loader').fadeIn(700);
      setTimeout(function(){
        location.href = url;
      },700);
    }
    return false;
  });

});

$(window).load(function () { //全ての読み込みが完了したら実行
  $('#loader-bg').delay(900).fadeOut(800);
  $('#loader').delay(600).fadeOut(300);
});



//10秒たったら強制的にロード画面を非表示
$(function(){
  setTimeout('stopload()',10000);
});

function stopload(){
  //$('#wrap').css('display','block');
  $('#loader-bg').delay(900).fadeOut(800);
  $('#loader').delay(600).fadeOut(300);
}
