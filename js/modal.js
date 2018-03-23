$(function(){
  $("#open").click(function(){
    $("#modal").addClass("animated zoomIn");
    $("#modal").css("visibility","visible");
    $("#modal").css("display","block");
  });
  $("#close").click(function(){
    $("#modal").removeClass("animated zoomIn");
    $("#modal").fadeOut("normal", function() {
      $("#modal").css("visibility","hidden");
    });
  })
});
