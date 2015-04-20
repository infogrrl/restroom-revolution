<?php

//Restroom Revolution - mobile website for displaying information about 
//gender inclusive, accessible, and lactation-supportive restrooms on the 
//University of Iowa campus.

//Copyright 2013 Kelly Thompson, Bennett Magnino, and Kassi Smith.

//This program is free software: you can redistribute it and/or modify
//it under the terms of the GNU General Public License as published by
//the Free Software Foundation, either version 3 of the License, or
//(at your option) any later version.

//This program is distributed in the hope that it will be useful,
//but WITHOUT ANY WARRANTY; without even the implied warranty of
//MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
//GNU General Public License for more details.
//You should have received a copy of the GNU General Public License
//along with this program.  If not, see <http://www.gnu.org/licenses/>.

header('Content-type: application/json');

$server = "REDACTED";
$username = "REDACTED";
$password = "REDACTED";
$database = "REDACTED";

$con = mysql_connect($server, $username, $password) or die ("Could not connect: " . mysql_error());
mysql_select_db($database, $con);

$private = $_POST["private"];
$changingtable = $_POST["changingtable"];
$sharps = $_POST["sharps"];
$lactation = $_POST["lactation"];
$braille = $_POST["braille"];
$sink = $_POST["sink"];
$accessible = $_POST["accessible"];
$shower = $_POST["shower"];
$genderneutral = $_POST["genderneutral"];
$women = $_POST["women"];
$men = $_POST["men"];

$where_str = "";

if ($genderneutral != "" && $women != "" && $men != "") {$where_str .= ' (type="n" or type="f" or type="m")';}
if ($genderneutral != "" && $women == "" && $men == "") {$where_str .= 'type="n"';}
if ($genderneutral != "" && $women != "" && $men == "" && $where_str != "") {$where_str .= ' OR (type="n" or type="f")';}
	else if ($genderneutral != "" && $women != "" && $men == "" && $where_str == "") {$where_str .= '(type="n" or type="f")';}
if ($genderneutral != "" && $women == "" && $men != "" && $where_str != "") {$where_str .= ' OR (type="n" or type="m")';}
	else if ($genderneutral != "" && $women == "" && $men != "" && $where_str == "") {$where_str .= '(type="n" or type="m")';}
if ($genderneutral == "" && $women != "" && $men != "" && $where_str != "") {$where_str .= ' OR (type="n" or type="f" or type="m")';}
	else if ($genderneutral == "" && $women != "" && $men != "" && $where_str == "") {$where_str .= '(type="n" or type="f" or type="m")';}
if ($genderneutral == "" && $women != "" && $men == "" && $where_str != "") {$where_str .= ' OR (type="n" or type="f")';}
	else if ($genderneutral == "" && $women != "" && $men == "" && $where_str == "") {$where_str .= '(type="n" or type="f")';}
if ($genderneutral == "" && $women == "" && $men != "" && $where_str != "") {$where_str .= ' OR (type="n" or type="m")';}
	else if ($genderneutral == "" && $women == "" && $men != "" && $where_str == "") {$where_str .= '(type="n" or type="m")';}

if ($private != "" && $where_str == "") {$where_str = $where_str . "private=1";}
	else if ($private != "" && $where_str != "") {$where_str .= " AND private=1";}
if ($changingtable != "" && $where_str != "") {$where_str .= " AND changing_table=1";}
	else if ($changingtable != "" && $where_str == "") {$where_str .= "changing_table=1";}
if ($sharps != "" && $where_str != "") {$where_str .= " AND sharps=1";}
	else if ($sharps != "" && $where_str == "") {$where_str .= "sharps=1";}
if ($lactation != "" && $where_str != "") {$where_str .= " AND lactation=1";}
	else if ($lactation != "" && $where_str == "") {$where_str .= "lactation=1";}	
if ($braille != "" && $where_str != "") {$where_str .= " AND braille_sign=1";}
	else if ($braille != "" && $where_str == "") {$where_str .= "braille_sign=1";}
if ($sink != "" && $where_str != "") {$where_str .= " AND accessible_sink=1";}
	else if ($sink != "" && $where_str == "") {$where_str .= "accessible_sink=1";}	
if ($shower != "" && $where_str != "") {$where_str .= " AND shower=1";}
	else if ($shower != "" && $where_str == "") {$where_str .= "shower=1";}
if ($accessible != "" && $where_str != "") {$where_str .= " AND wheelchair_access=1";}
	else if ($accessible != "" && $where_str == "") {$where_str .= "wheelchair_access=1";}

if ($where_str == "") {$sql = "select * from building natural join bathroom order by building_id";}
	else {$sql = "SELECT * from building natural join bathroom where " . $where_str . " order by building_id";}
		
$result = mysql_query($sql) or die ("Query error: " . mysql_error());

while ($row = mysql_fetch_assoc($result)) {
	$matches[] = $row;
}
mysql_close($con);

echo $_GET['jsoncallback'] . '(' . json_encode($matches) . ');';
?>
