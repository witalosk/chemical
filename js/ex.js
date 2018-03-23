$(function(){
  var exid = $("#exid").text();
  var startTimeRaw = $("#startTime").text();
  var waitTime = $("#waitTime").text();
  var nowTime = new Date();
  var startTime = new Date(Date.parse(startTimeRaw));
  var diff = parseInt((nowTime.getTime() - startTime.getTime())/1000);
  var nokori = waitTime - diff;
  var percent = diff/waitTime*100 + "%";
  var color = 'hsl(' + diff/waitTime*300 + ', 82%, 58%)';
  $("#timearea").text("　あと"+nokori+"秒　");


  setTimeout(repeat,1000);
  function repeat(){
    nowTime = new Date();
    diff = parseInt((nowTime.getTime() - startTime.getTime())/1000);
    nokori = waitTime - diff;
    percent = diff/waitTime*100 + "%";
    color = 'hsl(' + diff/waitTime*300 + ', 82%, 58%)';


    $("#waitingbar").animate({
      'width': percent
    }, {
      'duration':1000,
      'easing':'linear'
    });
    $("#timearea").text("　あと"+nokori+"秒　");
    setTimeout(repeat,1000);
    if(nokori<1){
      var html = "<form method='post' action='experimentres' id='refresh' style='display: none;'>" +
      "<input type='hidden' name='exid' value='"+ exid +"' >" +
      "</form>";
      $("body").append(html);
      $("#refresh").submit();
    }
  }

});
