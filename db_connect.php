<?php 
$conn = new mysqli('localhost', 'manage_mart', 'manage_mart', 'manage_mart');

if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}
?>
