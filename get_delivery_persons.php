<?php
// Database connection
$connection = new mysqli("localhost", "root", "", "demo");

// Check connection
if ($connection->connect_error) {
    die("Connection failed: " . $connection->connect_error);
}

// Get district from GET request
$district = isset($_GET['district']) ? $_GET['district'] : '';

// Prepare SQL to fetch active delivery persons by district
$query = "SELECT deliveryPersonID AS id, Name AS name, PhoneNumber AS phone 
          FROM deliverypersons 
          WHERE status = 'Active' AND District = ?";

// Prepare and bind
$stmt = $connection->prepare($query);
$stmt->bind_param("s", $district);
$stmt->execute();
$result = $stmt->get_result();

$deliveryPersons = [];

// Fetch and format the data
while ($row = $result->fetch_assoc()) {
    $deliveryPersons[] = [
        'id' => $row['id'],
        'name' => $row['name'],
        'phone' => $row['phone']  // You still need phone in the dropdown display
    ];
}

// Return as JSON
header('Content-Type: application/json');
echo json_encode($deliveryPersons);

// Close everything
$stmt->close();
$connection->close();
?>
