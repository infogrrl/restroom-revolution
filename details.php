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

$id = $_POST['bathroom_id'];
$where_str = "id = $id";
	
$sql = "select * from building natural join bathroom where $where_str";

$result = mysql_query($sql) or die ("Query error: " . mysql_error());

$records = array();

while($row = mysql_fetch_assoc($result)) {
	$records[] = $row;
}

mysql_close($con);

echo $_GET['jsoncallback'] . '(' . json_encode($records) . ');';
?>
