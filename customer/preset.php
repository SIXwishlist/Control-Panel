<?php
ob_start();
$BASEDIR = substr(dirname(__FILE__),0,-9);
$SMARTYDIR = $BASEDIR . "/backend/class/tpl/";

define("BASEDIR", $BASEDIR);
define("SMARTY", $SMARTYDIR);

require_once SMARTY . "Smarty.class.php";
require_once(BASEDIR."/backend/inc/preset.php");
error_reporting(E_ALL^E_NOTICE); 

$ADMINTHEME = $pref['admintheme'];
if(!$ADMINTHEME || !is_dir("templates/" . $ADMINTHEME)) {
	define("ADMINTHEME", "eCP");
	} else {
	define("ADMINTHEME", $pref['admintheme']);
}
?>