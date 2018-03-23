$(function(){
  $("form").change(function(){
    var itemr={
      "itemr": $("input[name=itemr]:checked").val()
    };

    $.ajax({
      type: "post",
      data: itemr,
      dataType: "json",
      url: "js/getitem.php",
      success: function(data){
        item = data.item;
        $("#iteminfo").html('<div class="inlineblock"><img src='
        + item[0].icon
        + ' height=100%></div><div class="inlineblock w40p"><span class="fsize120">'
        + item[0].name
        + '</span><br>分子量:' + item[0].molweight
        + '<br>' + item[0].color
        + '</div>');
        $("#sellimage").html('<img src="' + item[0].picture + '" width=80%>');
        $("#sellarea").html(item[0].name + 'を何個売却しますか？<br>(１個' + item[0].price + 'コイン)');
        $("#sellbtnarea").html(
          '<form action="sell" method="post">'
         + '<input type="number" name="num" class="text" value=1 min=1>個'
         + '<input type="hidden" name="itemId" value=' + itemr["itemr"] + '>'
         + '<input type="submit" value="　　売却　　" class="buttongreen mar5 fsize120">'
         + '</form>');
      }
    });

  });

  $("#send").click(function(){
    $("#itembox").submit();
  });
});
