<?php
//config

//admin mailaddress
define("ADMIN_MAIL", 'admin@test.jp');

//admin hash(please create hash by passhash.php)
define("ADMIN_HASH", '$2y$10$yBkkzV7p8MprPXi2YUHoDOI1d.D0HTqX39L0m0UTq3luFiEVBj1Am');

//サーバーのページルートのディレクトリ
define('BASE_DIR', __DIR__);

//WebrootのURL
$WEB_URL = "http://localhost/";
define('WEB_URL', 'http://localhost/');

//Webrootまでのディレクトリ数
define("DIR_NUM", 0);

//デフォルトタイムゾーン
date_default_timezone_set('Asia/Tokyo');

//database
define("DSN", "mysql:dbname=%s;host=localhost;charset=utf8");
define("DBNAME", "chemical");
define("DBUSER", "root");
define("DBPASS", "");

define( 'ITEM_NUM', 55);

//error
error_reporting(E_ALL);

//セッション有効期限
ini_set( 'session.gc_maxlifetime', 43200 );
