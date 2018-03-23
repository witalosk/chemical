rareValue = 1;
function submitForm(){
  var html = "<form method='post' action='sozairesult' id='refresh' style='display: none;'>" +
  "<input type='hidden' name='res' value='" + rareValue + "' >" +
  "</form>";
  $("body").append(html);
  $("#refresh").submit();
}

function huwacard(){
  $("#cardimage").animate({
    marginTop: '-=10px'
  }, 800).animate({
    marginTop: '+=10px'
  }, 800);
  setTimeout('huwacard()', 1600);
}

$(function(){
  //ふわふわアニメ
  setTimeout('huwacard()', 1600);

  //必ず★１
  $("body").css('background-image','url("../img/gachabg/normal.jpg")');
  $("#cardimage").attr('src','../img/gachacards/1.jpg');
  $("#cardimage").css("box-shadow","0px 0px 6px 3px #6800e6");

  $(document).ready(function() {
    $("#card").animate({
      'top':'170px',
      'left':'70px',
      'right':'70px',
      'opacity': '0.95'
    },{
      'duration': 3000,
      'easing': 'swing'
    });
    $("#tap").animate({
      'opacity':'1.0'
    }, 5000);
  });

  $("#card").click(function(){
    $("#black").css("visibility","visible");
    $("#tap").animate({
      'opacity':'0.0'
    }, 1000);
    $("#card").animate({
      'top':'0px',
      'left':'-50px',
      'right':'-50px',
      'bottom':'0px'
    },{
      'duration': 1000,
      'easing': 'swing'
    });
    $("#black").animate({
      'opacity':'1.0'
    }, {
      'duration': 1500,
      'complete': submitForm
    });
  });
});
