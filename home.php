<?php
session_start();
include("connection.php");

// Check if the session variables are set
if (isset($_SESSION['name']) && isset($_SESSION['email'])) {
    // Assign session values to local variables
    $username = $_SESSION['name'];
    $email = $_SESSION['email'];
} elseif (isset($_COOKIE['username']) && isset($_COOKIE['email'])) {
    // Restore session if cookies are available
    $_SESSION['name'] = $_COOKIE['username'];
    $_SESSION['email'] = $_COOKIE['email'];

    $username = $_SESSION['name'];
    $email = $_SESSION['email'];
} 

// Prepared statement for fetching donations safely
$stmt = $connection->prepare("SELECT * FROM food_donations WHERE email=?");
$stmt->bind_param("s", $email);
$stmt->execute();
$result = $stmt->get_result();
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Food Connect</title>
    <link rel="stylesheet" href="home.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <style>
        .donate-now-btn {
            background-color: #000000;
            color: white;
            padding: 15px 30px;
            font-size: 22px;
            border: none;
            border-radius: 8px;
            cursor: pointer;
            transition: background-color 0.3s, transform 0.2s;
            margin-top: 20px;
        }

        .donate-now-btn:hover {
            background-color: #000000;
            transform: scale(1.05);
        }

        .donate-options {
            display: none;
            text-align: center;
            margin-top: 20px;
        }

        .donate-options div {
            background-color: #2c3e50;
            color: #ffffff;
            font-size: 18px;
            padding: 14px 20px;
            margin: 12px auto;
            width: 300px;
            border-radius: 6px;
            cursor: pointer;
            transition: background-color 0.3s ease, transform 0.2s ease;
            box-shadow: 0 2px 8px rgba(0, 0, 0, 0.15);
            text-align: center;
        }

        .donate-options div:hover {
            background-color: #1a252f;
            transform: translateY(-1px);
        }
    </style>
    <script>
        function toggleDonateOptions() {
            var options = document.getElementById('donateOptions');
            options.style.display = (options.style.display === "block") ? "none" : "block";
        }

        document.addEventListener("DOMContentLoaded", function () {
            document.querySelector(".hamburger").onclick = function () {
                document.querySelector(".nav-bar").classList.toggle("active");
            };
        });
    </script>
</head>
<body>
<header>
    <div class="logo">Food <b style="color: #06C167;">Connect</b></div>
    <div class="hamburger">
        <div class="line"></div>
        <div class="line"></div>
        <div class="line"></div>
    </div>
    <nav class="nav-bar">
        <ul>
            <li><a href="#home" class="active">Home</a></li>
            <li><a href="about.html">About</a></li>
            <li><a href="contact.html">Contact</a></li>
            <li><a href="profile.php">Profile</a></li>
            <li><a href="donations.php">Donations</a></li>
            <li><a href="logout.php">Logout</a></li>
        </ul>
    </nav>
</header>

<section class="banner">
    <button class="donate-now-btn" onclick="toggleDonateOptions()">Donate To</button>
    <div class="donate-options" id="donateOptions">
        <a href="fooddonateform.php"><div>NGO</div></a>
        <a href="fooddonateform.php"><div>Orphanage</div></a>
        <a href="fooddonateform.php"><div>Railway Stations</div></a>
        <a href="fooddonateform.php"><div>Bus Stands</div></a>
    </div>
</section>

<div class="content">
    <p style="font-size: 23px;">“Cutting food waste is a delicious way of saving money, helping to feed the world, and protecting the planet.”</p>
</div>

<div class="photo">
    <br>
    <p class="heading">The Showcase</p>
    <br>
    <p style="font-size: 28px; text-align: center;">"Witness the change we spark when we come together."</p>
    <br>
    <div class="wrapper">
        <div class="box"><img src="img/p1.jpeg" alt=""></div>
        <div class="box"><img src="img/p4.jpeg" alt=""></div>
        <div class="box"><img src="img/p3.jpeg" alt=""></div>
    </div>
    <br>
</div>

<div class="deli" style="display: grid;">
    <p class="heading">DOOR PICKUP</p>
    <br>
    <p class="para">"Your donation will be quickly gathered and shared with those in need, turning excess into hope."</p>
    <img src="img/delivery.gif" alt="" style="margin-left:auto; margin-right: auto;">
</div>

<footer class="footer">
    <div class="footer-left">
        <p class="about">
            <span>About us</span><br>
            "Food is not just fuel, it's community."<br><br>
            We help reduce food waste by connecting restaurants and individuals with local communities in need. Our tracked delivery service ensures meals reach the right place, right on time.
        </p>
    </div>

    <div class="footer-center">
        <h2>Food<span> Connect</span></h2>
        <p class="menu">
            <a href="#">Home</a> |
            <a href="about.html">About</a> |
            <a href="contact.html">Contact</a>
        </p>
    </div>

    <div class="footer-right">
        <h2>Contact Us</h2>
        <div class="contact-info">
            <p><i class="fa fa-map-marker"></i> Bengaluru, Karnataka, India</p>
            <p><i class="fa fa-phone"></i> +91 98765 43210</p>
            <p><i class="fa fa-envelope"></i> support@foodconnect.com</p>
        </div>
    </div>
</footer>
</body>
</html>
