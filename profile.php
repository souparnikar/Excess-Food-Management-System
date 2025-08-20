<?php
session_start();
include("connection.php");

// Check if user is logged in
$user_email = $_SESSION['email'] ?? '';

if (empty($user_email)) {
    echo "<script>alert('Please log in first.'); window.location='login.php';</script>";
    exit();
}

// Fetch user name from users table
$user_name = '';
$stmtUser = $connection->prepare("SELECT username FROM users WHERE email = ?");
$stmtUser->bind_param("s", $user_email);
$stmtUser->execute();
$resultUser = $stmtUser->get_result();

if ($userRow = $resultUser->fetch_assoc()) {
    $user_name = $userRow['username'];
}
$stmtUser->close();

// Fetch user's food donations
$stmt = $connection->prepare("SELECT food, type, donation_date, recipient_name FROM food_donations WHERE email = ?");
$stmt->bind_param("s", $user_email);
$stmt->execute();
$result = $stmt->get_result();
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>User Profile</title>
    <link rel="stylesheet" href="home.css">
    <link rel="stylesheet" href="profile.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <style>
        .table {
            width: 100%;
            border-collapse: collapse;
        }

        .table th, .table td {
            border: 1px solid #ccc;
            padding: 10px;
            text-align: center;
        }

        .table thead {
            background-color: #06C167;
            color: black;
        }

        .table tbody tr:nth-child(even) {
            background-color: rgb(255, 255, 255);
        }

        .table-wrapper {
            overflow: visible; /* show full table, no scroll */
        }
    </style>
</head>
<body>
<header>
    <div class="logo">Food <b style="color: #06C167;">Connect</b></div>
    <div class="hamburger">
        <div class="line"></div><div class="line"></div><div class="line"></div>
    </div>
    <nav class="nav-bar">
        <ul>
            <li><a href="home.php">Home</a></li>
            <li><a href="about.html">About</a></li>
            <li><a href="contact.html">Contact</a></li>
            <li><a href="profile.php" class="active">Profile</a></li>
            <li><a href="logout.php">Logout</a></li>
        </ul>
    </nav>
</header>

<script>
    document.querySelector(".hamburger").onclick = function() {
        document.querySelector(".nav-bar").classList.toggle("active");
    }
</script>

<div class="profile">
    <div class="profilebox">
        <p class="headingline" style="text-align: left; font-size: 30px;"> 
            <i class="fa fa-user" style="padding-right: 10px;"></i>Profile
        </p><br>
        <div class="info" style="padding-left:10px;">
            <p>Name: <?php echo htmlspecialchars($user_name); ?></p><br>
            <p>Email: <?php echo htmlspecialchars($user_email); ?></p><br>
        </div><br><br>

        <hr><br>
        <p class="heading">Your Donations</p>
        <div class="table-container">
            <div class="table-wrapper">
                <table class="table">
                    <thead>
                        <tr>
                            <th>Food</th>
                            <th>Type</th>
                            <th>Date</th>
                            <th>Recipient</th>
                        </tr>
                    </thead>
                    <tbody>
                        <?php
                        if ($result->num_rows > 0) {
                            while ($row = $result->fetch_assoc()) {
                                echo "<tr>
                                        <td>" . htmlspecialchars($row['food']) . "</td>
                                        <td>" . htmlspecialchars($row['type']) . "</td>
                                        <td>" . htmlspecialchars($row['donation_date']) . "</td>
                                        <td>" . htmlspecialchars($row['recipient_name']) . "</td>
                                      </tr>";
                            }
                        } else {
                            echo "<tr><td colspan='4'>No donations found.</td></tr>";
                        }
                        $stmt->close();
                        ?>
                    </tbody>
                </table>
            </div>
        </div>          
    </div>
</div>

</body>
</html>

<?php
$connection->close();
?>
