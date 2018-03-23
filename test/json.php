<?php
$omiya = "大宮";
$naoko = "直子"
if(isset($_POST["toggle"])){
  $omiya = $_POST["toggle"];
}
if(isset($_POST["toggle2"])){
  $naoko = $_POST("toggle2");
}
if($omiya == "大宮"){
  $mes = "ログイン成功";
  $tel = "やったね！";
}else{
  $mes = "ログイン失敗...";
  $tel = "ざんね～ん";
}
print <<< EOM
{
  "person":[
    {
      "name": "{$mes}",
      "tel": "{$tel}",
      "mail": "　"
    },
    {
      "name": "{$omiya}　{$naoko}",
      "tel": "0038-038-0038",
      "mail": "omiya_pan@mast.jp"
    },
    {
      "name": "小島　なお",
      "tel": "027-700-2770",
      "mail": "kojima_90@mast.jp"
    },
    {
      "name": "佐々木　こーすけ",
      "tel": "331-5025-5025",
      "mail": "sasaki_sakotsu@mast.jp"
    },
    {
      "name": "長津　しゅん",
      "tel": "752-400-7424",
      "mail": "nagatsu_clinic@mast.jp"
    }
  ]
}
EOM;
 ?>
