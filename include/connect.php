<?php
	$link=mysql_connect("localhost","root","123456") or die("Cannot connect to the localhost");
	mysql_select_db("trasua",$link) or die("Cannot connect to the database");
	mysql_query("SET NAMES 'UTF8'");
?>
