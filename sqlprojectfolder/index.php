<?php

$servername = "35.184.196.106";
$username = "cain";
$password= "";
$dbname = "bookstore";
$dbport = "3306";



$sql = $_GET['message'];

$conn = new mysqli($servername,$username,$password,$dbname,$dbport,"/cloudsql/project-256223:us-central1:sqlproject");

if(!$conn){
	die("Error you have used an invalid statement" . $conn->connect_error);

}

echo "Connected successfully to bookstore, now executing query \r\n";
$result = mysqli_query($conn, $sql) or die ("\r \n-Error: {$conn->error} \r\n");
while ($res = $result->fetch_array()) {
print_r($res);
}
Echo "Query has been successfully executed on bookstore";
?>