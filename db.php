<?php
$servername = "sql12.freesqldatabase.com";
$username = "sql12765002";
$password = "v6rMDHEyyw";
$dbname = "sql12765002";

$conn = new mysqli($servername, $username, $password, $dbname);

if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}
else
{
    echo " ";
}

