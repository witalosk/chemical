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
        + '</span><br>' + item[0].price
        + 'コイン</div>');
        $("#sellimage").html('<img src="' + item[0].picture + '" width=80%>');
        $("#sellarea").html(item[0].name + 'を何個売却しますか？<br>(１個' + item[0].price + 'コイン)');
        $("#sellbtnarea").html(
          '<form action="sell" method="post">'
         + '<input type="number" name="num" class="textmini" value=1 id="num" readonly="readonly">個'
         + '<br><br><a id="plus" class="minibutton" href="javascript:void(0);">▲</a>'
         + '<a id="minus" class="minibutton" href="javascript:void(0);">▼</a>'
         + '<input type="hidden" name="itemId" value=' + itemr["itemr"] + '>'
         + '<br><br><input type="submit" value="　　売却　　" class="buttongreen mar5 fsize120">'
         + '</form>');
      }
    });

  });

  $(document).on("click", "#plus", function(){
    var n = parseInt($("#num").val());
    $("#num").val(n+1);
  });
  $(document).on("click", "#minus", function(){
    var n = parseInt($("#num").val());
    if(n!=1){
      $("#num").val(n-1);
    }
  });
});
