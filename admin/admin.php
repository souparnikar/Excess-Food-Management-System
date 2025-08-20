<?php
session_start();
include("../connection.php");


// Database connection
$connection = mysqli_connect("localhost", "root", "", "demo", 3306);
if (!$connection) {
    die("Connection failed: " . mysqli_connect_error());
}

// Handle food donation assignment
if (isset($_POST['food']) && isset($_POST['delivery_person_id']) && isset($_POST['order_id'])) {
    $order_id = mysqli_real_escape_string($connection, $_POST['order_id']);
    $delivery_person_id = mysqli_real_escape_string($connection, $_POST['delivery_person_id']);
    
    // Check if the order is already assigned
    $sql = "SELECT * FROM food_donations WHERE Fid = $order_id AND assigned_to IS NOT NULL";
    $result = mysqli_query($connection, $sql);

    if (mysqli_num_rows($result) > 0) {
        die("Sorry, this order has already been assigned to someone else.");
    }

    // Assign the order to the delivery person
    $sql = "UPDATE food_donations SET assigned_to = $delivery_person_id WHERE Fid = $order_id";
    $result = mysqli_query($connection, $sql);

    if (!$result) {
        die("Error assigning order: " . mysqli_error($connection));
    }

    // Redirect after form submission
    header('Location: ' . $_SERVER['REQUEST_URI']);
    ob_end_flush();
    exit;
}
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="admin.css">
    <link rel="stylesheet" href="https://unicons.iconscout.com/release/v4.0.0/css/line.css">
    <title>Admin Dashboard Panel</title>
</head>
<body>
    <nav>
        <div class="logo-name">
            <span class="logo_name">ADMIN</span>
        </div>

        <div class="menu-items">
            <ul class="nav-links">
                <li><a href="#"><i class="uil uil-estate"></i><span class="link-name">Dashboard</span></a></li>
                <li><a href="analytics.php"><i class="uil uil-chart"></i><span class="link-name">Analytics</span></a></li>
                <li><a href="donate.php"><i class="uil uil-heart"></i><span class="link-name">Donates</span></a></li>
                <li><a href="feedback.php"><i class="uil uil-comments"></i><span class="link-name">Feedbacks</span></a></li>
    
            </ul>
            <ul class="logout-mode">
                <li><a href="../logout.php"><i class="uil uil-signout"></i><span class="link-name">Logout</span></a></li>
                <li class="mode">
                    <a href="#"><i class="uil uil-moon"></i><span class="link-name">Dark Mode</span></a>
                    <div class="mode-toggle"><span class="switch"></span></div>
                </li>
            </ul>
        </div>
    </nav>

    <section class="dashboard">
        <div class="top">
            <p class="logo">Food <b style="color: #06C167;">Connect</b></p>
        </div>

        <div class="dash-content">
            <div class="overview">
                <div class="title">
                    <i class="uil uil-tachometer-fast-alt"></i><span class="text">Dashboard</span>
                </div>

                <div class="boxes">
                <div class="box box1">
    <a href="users.php" style="text-decoration:none; color:inherit;">
        <i class="uil uil-user"></i>
        <span class="text">Total users</span>
        <?php
            $query = "SELECT count(*) as count FROM users";
            $result = mysqli_query($connection, $query);
            $row = mysqli_fetch_assoc($result);
            echo "<span class=\"number\">" . $row['count'] . "</span>";
        ?>
    </a>
</div>

<div class="box box2">
    <a href="feedbacks.php" style="text-decoration:none; color:inherit;">
        <i class="uil uil-comments"></i>
        <span class="text">Feedbacks</span>
        <?php
            $query = "SELECT count(*) as count FROM user_feedback";
            $result = mysqli_query($connection, $query);
            $row = mysqli_fetch_assoc($result);
            echo "<span class=\"number\">" . $row['count'] . "</span>";
        ?>
    </a>
</div>

<div class="box box3">
    <a href="donations.php" style="text-decoration:none; color:inherit;">
        <i class="uil uil-heart"></i>
        <span class="text">Total donations</span>
        <?php
            $query = "SELECT count(*) as count FROM food_donations";
            $result = mysqli_query($connection, $query);
            $row = mysqli_fetch_assoc($result);
            echo "<span class=\"number\">" . $row['count'] . "</span>";
        ?>
    </a>
</div>

                </div>
            </div>

            
        </div>
    </section>

    <script src="admin.js"></script>
</body>
</html>