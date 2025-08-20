<?php
$connection = mysqli_connect("localhost", "root", "", "demo"); // replace 'food_waste_management' with your actual database name

if (!$connection) {
    die("Connection failed: " . mysqli_connect_error());
}
?>
