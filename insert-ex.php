<?php
require_once "common.php";
use \app\common\Db;

$sql = "SELECT * FROM `item`";
$result = Db::select($sql);
?>
<h1>Before</h1>
<select multiple size="10">
<?php
foreach($result as $item) {
  ?>
  <option value="<?=$item['itemId']?>"><?=$item['itemName']?></option>
  <?php
}
?>
</select>
<h1>After</h1>
<select multiple size="10">
<?php
foreach($result as $item) {
  ?>
  <option value="<?=$item['itemId']?>"><?=$item['itemName']?></option>
  <?php
}
?>
</select>
<?php

print("<h1>COMPLETE!</h1>");


 ?>
