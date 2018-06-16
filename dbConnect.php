<?php
$servername = "localhost";
$username = "mayanuzs_ts";
$password = "d3f4ult0r";
$dbname = "mayanuzs_ts";

// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);
// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}
else{
  echo "Connected";
  exec('mysqldump -umayanuzs_ts -pd3f4ult0r mayanuzs_ts > db_backup.sql');
  echo "Loaded  data successfully";
}

$conn->close();
?>
