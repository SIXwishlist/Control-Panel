<?php 

// constant.php

// Info:
//
// n/A
//


// MySQLkonstanten - Bei Bedarf editieren!
	
	$db_host = "localhost";
	$db_user = "user";
	$db_pass = "pass";
	$db_name = "name";
	
	
// MySQLkonstanten - Nur editieren, wenn man wei� was man macht ;)

	$db_prefix = "ts3admin_";
	$db_prefix_cpmin = "ts3admin_";
	

// Systemkonstanten - Nicht editieren!

	// Keine Vorhanden
	
	
// Sollen MySQL Fehlermeldungen ausgegeben werden - "On" = Ja, "Off" = Nein

define(DEBUG, "OFF");

// Sollen PHP Fehlermeldungen ausgegeben werden - E_ALL^E_NOTICE = Ja, 0 = Nein 

error_reporting(E_ALL^E_NOTICE); 

?>
