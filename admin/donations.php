<?php
$connection = mysqli_connect("localhost", "root", "", "demo");
if (!$connection) {
    die("Connection failed: " . mysqli_connect_error());
}

$countResult = mysqli_query($connection, "SELECT COUNT(*) as total FROM food_donations");
$count = mysqli_fetch_assoc($countResult)['total'];

$donationsResult = mysqli_query($connection, "SELECT * FROM food_donations");
?>

<!DOCTYPE html>
<html>
<head>
    <title>All Donations</title>
    <style>
        table { width: 100%; border-collapse: collapse; margin-top: 20px; }
        th, td { border: 1px solid #ddd; padding: 8px; text-align: center; }
        th { background-color: #f2f2f2; }
        h2 { margin-top: 20px; }
    </style>
</head>
<body>
    <h2>Total Donations: <?php echo $count; ?></h2>
    <table>
        <tr>
            <th>ID</th><th>Food</th><th>Type</th><th>Donor Name</th><th>Phone</th>
            <th>District</th><th>Address</th><th>Recipient</th><th>Delivery Person</th><th>Date</th>
        </tr>
        <?php while ($row = mysqli_fetch_assoc($donationsResult)) { ?>
        <tr>
            <td><?php echo $row['id']; ?></td>
            <td><?php echo $row['food']; ?></td>
            <td><?php echo $row['type']; ?></td>
            <td><?php echo $row['donor_name']; ?></td>
            <td><?php echo $row['donor_phone']; ?></td>
            <td><?php echo $row['donor_district']; ?></td>
            <td><?php echo $row['donor_address']; ?></td>
            <td><?php echo $row['recipient_name']; ?></td>
            <td><?php echo $row['delivery_person_name']; ?></td>
            <td><?php echo $row['donation_date']; ?></td>
        </tr>
        <?php } ?>
    </table>
</body>
</html>
