<?php
// Get last inserted donation ID
$donation_id = mysqli_insert_id($connection);

// Find an active delivery person in same district
$sql = "SELECT deliveryPersonID FROM deliverypersons 
        WHERE District = ? AND status = 'Active' LIMIT 1";
$stmt = mysqli_prepare($connection, $sql);
mysqli_stmt_bind_param($stmt, 's', $donor_district);
mysqli_stmt_execute($stmt);
$result = mysqli_stmt_get_result($stmt);

if ($row = mysqli_fetch_assoc($result)) {
    $deliveryPersonID = $row['deliveryPersonID'];
    // Assign to donation
    $update = "UPDATE food_donations SET deliveryPersonID = ? WHERE donation_id = ?";
    $stmt2 = mysqli_prepare($connection, $update);
    mysqli_stmt_bind_param($stmt2, 'ii', $deliveryPersonID, $donation_id);
    mysqli_stmt_execute($stmt2);
}
?>
