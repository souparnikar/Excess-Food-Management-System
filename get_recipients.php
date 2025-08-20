<?php
$connection = mysqli_connect("localhost", "root", "", "demo");
$district = $_GET['district'] ?? '';

if (!$district) {
    echo json_encode([]);
    exit;
}

$sql = "SELECT id, recipient_type, name, address, amount FROM recipients WHERE district = ?";
$stmt = $connection->prepare($sql);
$stmt->bind_param("s", $district);
$stmt->execute();
$result = $stmt->get_result();

$data = [];
while ($row = $result->fetch_assoc()) {
    $type = $row['recipient_type'];
    if (!isset($data[$type])) {
        $data[$type] = [];
    }
    $data[$type][] = [
        'id' => $row['id'],
        'name' => $row['name'],
        'address' => $row['address'],
        'amount' => $row['amount']
    ];
}

echo json_encode($data);
?>
