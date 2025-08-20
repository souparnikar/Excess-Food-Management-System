<?php
session_start();

// Check if user is logged in
$loggedIn = isset($_SESSION['email']);

if (!$loggedIn) {
    echo "<p>You must be logged in to view your donations.</p>";
    exit;
}

// Database connection
$connection = mysqli_connect("localhost", "root", "", "demo");

// Check if the database connection is successful
if (!$connection) {
    die("Connection failed: " . mysqli_connect_error());
}

$donor_email = $_SESSION['email'];

// Secure query using prepared statements
$stmt = $connection->prepare("SELECT fd.id AS donation_id, fd.food, fd.type AS meal_type, fd.donor_name, fd.donor_phone, fd.donor_district, fd.donor_address, 
                                     fd.delivery_person_name AS delivery_person, fd.recipient_name 
                              FROM food_donations fd
                              WHERE fd.email = ?");

$stmt->bind_param("s", $donor_email);
$stmt->execute();
$result = $stmt->get_result();
?>


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Donations List</title>
    <link rel="stylesheet" href="home.css">
    <style>
        table {
            width: 100%;
            margin: 20px 0;
            border-collapse: collapse;
        }
        table, th, td {
            border: 1px solid #ddd;
        }
        th, td {
            padding: 12px;
            text-align: center;
        }
        th {
            background-color: #f2f2f2;
            color: black;
        }
        td {
            background-color: #fafafa;
        }
        .header {
            text-align: center;
            font-size: 28px;
            margin: 20px;
        }
        .back-link {
            display: block;
            margin: 20px 0;
            text-align: center;
        }
        .back-link a {
            text-decoration: none;
            background-color: #06C167;
            padding: 10px 20px;
            color: white;
            border-radius: 5px;
        }
    </style>
</head>
<body>

    

    <?php 
    // Check if the query returned any results
    if (mysqli_num_rows($result) > 0): 
    ?>
        <table>
            <thead>
                <tr>
                    <th>Food Item</th>
                    <th>Meal Type</th>
                    <th>Phone Number</th>
                    <th>District</th>
                    <th>Address</th>
                    <th>Donor Name</th>
                    <th>Recipient</th>
                    <th>Delivery Person</th>
                </tr>
            </thead>
            <tbody>
                <?php while ($row = mysqli_fetch_assoc($result)): ?>
                    <tr>
                        <td><?php echo htmlspecialchars($row['food']); ?></td>
                        <td><?php echo ucfirst($row['meal_type']); ?></td>
                        <td><?php echo htmlspecialchars($row['donor_phone']); ?></td>
                        <td><?php echo htmlspecialchars($row['donor_district']); ?></td>
                        <td><?php echo htmlspecialchars($row['donor_address']); ?></td>
                        <td><?php echo htmlspecialchars($row['donor_name']); ?></td>
                        <td><?php echo htmlspecialchars($row['recipient_name']); ?></td>
                        <td><?php echo htmlspecialchars($row['delivery_person']); ?></td>
                    </tr>
                <?php endwhile; ?>
            </tbody>
        </table>
    <?php 
    else: 
    ?>
        <p>No donations available at the moment.</p>
    <?php 
    endif; 
    ?>

    <div class="back-link">
        <a href="home.php">Back to Home</a>
    </div>

</body>
</html>
