<?php
session_start();

// 1) Ensure logged in
if (!isset($_SESSION['deliveryPersonID'], $_SESSION['Name'], $_SESSION['District'])) {
    echo "<script>
            alert('Please login first');
            window.location.href = 'deliverylogin.php';
          </script>";
    exit();
}

// 2) Grab session values
$deliveryPersonName = $_SESSION['Name'];
$deliveryPersonDistrict = $_SESSION['District'];

include '../connection.php';

// 3) Query: only donations from the same district
$sql = "
  SELECT
    donor_name,
    donor_phone,
    donor_district,
    donor_address,
    food,
    type        AS meal_type,
    recipient_type,
    recipient_name,
    donation_date
  FROM food_donations
  WHERE donor_district = '" . mysqli_real_escape_string($connection, $deliveryPersonDistrict) . "'
    AND delivery_person_name = '" . mysqli_real_escape_string($connection, $deliveryPersonName) . "'
  ORDER BY donation_date DESC
";

$result = mysqli_query($connection, $sql);
if (!$result) {
    die("Error fetching orders: " . mysqli_error($connection));
}
?>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>My Delivery Orders</title>
  <style>
    body { font-family: Arial, sans-serif; background: #f4f4f4; padding: 20px; }
    h2  { text-align: center; color: #06C167; }
    table { width: 100%; margin: 30px auto; border-collapse: collapse; background: #fff; }
    th, td { padding: 12px; text-align: left; border-bottom: 1px solid #ddd; }
    th { background-color: #06C167; color: white; }
    tr:hover { background-color: #f1f1f1; }
    .note { text-align: center; font-size: 18px; color: #555; margin-top: 40px; }
  </style>
</head>
<body>
  <h2>
    Welcome, <?= htmlspecialchars($deliveryPersonName) ?> 
    — Deliveries in <?= htmlspecialchars($deliveryPersonDistrict) ?>
  </h2>
  <a href="../logout.php" style="position:absolute; top:20px; right:20px;">Logout</a>


  <?php if (mysqli_num_rows($result) > 0): ?>
    <table>
      <tr>
        <th>Donor Name</th>
        <th>Donor Phone</th>
        <th>Donor Address</th>
        <th>Food</th>
        <th>Meal Type</th>
        <th>Recipient Type</th>
        <th>Recipient Name</th>
        <th>Donation Date</th>
      </tr>
      <?php while ($row = mysqli_fetch_assoc($result)): ?>
        <tr>
          <td><?= htmlspecialchars($row['donor_name']) ?></td>
          <td><?= htmlspecialchars($row['donor_phone']) ?></td>
          <td><?= htmlspecialchars($row['donor_address']) ?></td>
          <td><?= htmlspecialchars($row['food']) ?></td>
          <td><?= htmlspecialchars($row['meal_type']) ?></td>
          <td><?= htmlspecialchars($row['recipient_type']) ?></td>
          <td><?= htmlspecialchars($row['recipient_name']) ?></td>
          <td><?= htmlspecialchars($row['donation_date']) ?></td>
        </tr>
      <?php endwhile; ?>
    </table>
  <?php else: ?>
    <div class="note">No deliveries assigned in <?= htmlspecialchars($deliveryPersonDistrict) ?>.</div>
  <?php endif; ?>
</body>
</html>
