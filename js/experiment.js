$(function(){
  $("form").change(function(){
    var count = 0;
    var moji;
    var selecttext = "";
    moji = "";
    $("[name='itemr[]']:checked").each(function(){
      count++;
      moji += $(this).attr("data-name");
      moji += "<br>";
      selecttext += $(this).attr("data-name");
      selecttext += " ";
    });
    if(count!=0){
      $("#exp").css("display","inline-block");
      moji += "を<br>";
      moji += $('[name=environ] option:selected').text();
      moji += "<br>で実験しますか？"
    }else{
      $("#exp").css("display","none");
      moji = "アイテムを選んでください。";
    }
    $("#sellarea").html(moji);
    $("#selecttext").text(selecttext);
  });

  $("#exp").click(function(){
    $("#itembox").submit();
  });
});
