<?php
// Database connection
$host = "localhost";
$dbname = "doc_finder";
$username = "root";
$password = "";

// Create a connection
$conn = new mysqli($host, $username, $password, $dbname);

// Check connection 
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error); 
}
?>
