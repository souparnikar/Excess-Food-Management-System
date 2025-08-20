<?php
session_start();
include('../connection.php');  // Correct the path to your connection file

$msg = 0;  // Initialize message variable for password error

// Check if the form is submitted
if (isset($_POST['login'])) {
    $username = $_POST['name'];
    $password = $_POST['password'];

    // Sanitize inputs to prevent SQL injection
    $sanitized_name = mysqli_real_escape_string($connection, $username);
    $sanitized_password = trim(mysqli_real_escape_string($connection, $password));  // Trim spaces

    // Query to check if the username exists in the database
    $sql = "SELECT * FROM admin WHERE name='$sanitized_name'";
    $result = mysqli_query($connection, $sql);
    $num = mysqli_num_rows($result);

    // If username exists, compare the password
    if ($num == 1) {
        $row = mysqli_fetch_assoc($result);  // Fetch the user details

        // Directly compare the entered password with the stored password
        if ($sanitized_password === $row['password']) {
            // If passwords match, store the session variables
            $_SESSION['name'] = $sanitized_name;
            $_SESSION['Aid'] = $row['Aid'];  // Assuming 'Aid' is the user ID
            
            // Redirect to admin page after successful login
            header("Location: admin.php");
            exit();  // Prevent further code execution
        } else {
            // If password doesn't match, show an error message
            $msg = 1;
        }
    } else {
        // If username does not exist
        echo "<h1><center>Account does not exist</center></h1>";
    }
}
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="formstyle.css">
    <script src="signin.js" defer></script>
    <link rel="stylesheet" href="https://unicons.iconscout.com/release/v4.0.0/css/line.css">
    <title>Login</title>
</head>
<body>
    <div class="container">
        <form action="" id="form" method="post">
            <span class="title">Login</span>
            <br><br>
            
            <!-- Username input field -->
            <div class="input-group">
                <label for="name">Username</label>
                <input type="name" id="name" name="name" required>
                <div class="error"></div>
            </div>

            <!-- Password input field -->
            <label class="textlabel" for="password">Password</label>
            <div class="password">
                <input type="password" name="password" id="password" required />
                <i class="uil uil-eye-slash showHidePw" id="showpassword"></i>
                <?php
                    if ($msg == 1) {
                        echo '<i class="bx bx-error-circle error-icon"></i>';
                        echo '<p class="error">Password doesn\'t match.</p>';
                    }
                ?>
            </div>

            <!-- Submit button -->
            <button type="submit" name="login">Login</button>
        </form>
    </div>
    
    <!-- JavaScript for password visibility toggle -->
    <script src="login.js"></script>
</body>
</html>
