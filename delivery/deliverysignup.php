<?php
include '../connection.php';

$msg = 0;

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    $Name     = trim(mysqli_real_escape_string($connection, $_POST['Name']));
    $Email    = trim(mysqli_real_escape_string($connection, $_POST['Email']));
    $Password = trim(mysqli_real_escape_string($connection, $_POST['Password']));
    $District = trim(mysqli_real_escape_string($connection, $_POST['District']));
    $Phone    = trim(mysqli_real_escape_string($connection, $_POST['Phone']));  // Phone number

    // Check if email, username, or phone already exists
    $check = mysqli_query($connection, "SELECT * FROM deliverypersons WHERE Email='$Email' OR Name='$Name' OR Phone='$Phone'");
    if (mysqli_num_rows($check) > 0) {
        $msg = 1; // Already exists
    } else {
        $insert = mysqli_query($connection, "
            INSERT INTO deliverypersons (Name, Email, Password, District, Phone)
            VALUES ('$Name', '$Email', '$Password', '$District', '$Phone')
        ");
        if ($insert) {
            $msg = 2; // Success
        } else {
            $msg = 3; // Error
        }
    }
}
?>

<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <title>Delivery Signup</title>
  <style>
    @import url('https://fonts.googleapis.com/css2?family=Poppins&display=swap');

    * {
      box-sizing: border-box;
    }

    body {
      margin: 0;
      font-family: 'Poppins', sans-serif;
      background: #f9f9f9;
      height: 100vh;
      display: flex;
      justify-content: center;
      align-items: center;
    }

    .signup-wrapper {
      display: flex;
      width: 1100px;
      height: 680px;
      background: rgba(255, 255, 255, 0.85);
      box-shadow: 0 10px 30px rgba(0,0,0,0.1);
      border-radius: 15px;
      overflow: hidden;
    }

    .image-side {
      width: 50%;
      background: #e1f5fe;
      display: flex;
      justify-content: center;
      align-items: center;
      padding: 30px;
    }

    .image-side img {
      max-width: 100%;
      max-height: 100%;
    }

    .form-side {
      width: 50%;
      padding: 40px 50px;
      display: flex;
      flex-direction: column;
      justify-content: center;
    }

    .form-side h1 {
      margin-bottom: 30px;
      font-weight: 700;
      font-size: 28px;
      color: #06C167;
      text-align: center;
    }

    form {
      display: flex;
      flex-direction: column;
      gap: 15px;
    }

    label {
      font-weight: 600;
    }

    input, select {
      padding: 12px 15px;
      font-size: 16px;
      border: 1.5px solid #ddd;
      border-radius: 8px;
      transition: border-color 0.3s ease;
    }

    input:focus, select:focus {
      border-color: #06C167;
      outline: none;
    }

    .toggle-password {
      position: absolute;
      right: 15px;
      top: 50%;
      transform: translateY(-50%);
      cursor: pointer;
      font-size: 20px;
      color: #999;
      user-select: none;
    }

    .password-wrapper {
      position: relative;
    }

    .toggle-password:hover {
      color: #06C167;
    }

    input[type="submit"] {
      background-color: #06C167;
      border: none;
      color: white;
      font-weight: 600;
      font-size: 18px;
      padding: 12px 0;
      border-radius: 10px;
      cursor: pointer;
      transition: background-color 0.3s ease;
    }

    input[type="submit"]:hover {
      background-color: #059a4a;
    }

    .message {
      margin-top: 10px;
      text-align: center;
      font-weight: 600;
      display: flex;
      justify-content: center;
      align-items: center;
      gap: 8px;
      font-size: 16px;
    }

    .error {
      color: #d93025;
    }

    .success {
      color: #06C167;
    }

    .login-link {
      margin-top: 20px;
      text-align: center;
      font-size: 14px;
    }

    .login-link a {
      color: #06C167;
      font-weight: 600;
      text-decoration: none;
    }

    .login-link a:hover {
      text-decoration: underline;
    }

    .popup {
      position: fixed;
      top: 20px;
      left: 50%;
      transform: translateX(-50%);
      background-color: #06C167;
      color: white;
      padding: 15px 25px;
      border-radius: 8px;
      box-shadow: 0 5px 15px rgba(0,0,0,0.2);
      font-weight: 600;
      z-index: 9999;
      animation: fadeIn 0.5s ease-out;
      transition: opacity 0.5s ease;
      display: flex;
      align-items: center;
      gap: 10px;
      font-size: 18px;
    }

    .popup.error-popup {
      background-color: #d93025;
    }

    @keyframes fadeIn {
      from { opacity: 0; transform: translateX(-50%) translateY(-10px); }
      to   { opacity: 1; transform: translateX(-50%) translateY(0); }
    }
  </style>
</head>
<body>

<div class="signup-wrapper">
  <div class="image-side">
    <img src="../img/d1.jpg" alt="Signup Illustration" />
  </div>
  <div class="form-side">
    <h1>Delivery Signup</h1>
    <form method="post" autocomplete="off">
      <label for="Name">Username</label>
      <input type="text" id="Name" name="Name" required />

      <label for="Email">Email</label>
      <input type="email" id="Email" name="Email" required />

      <label for="Password">Password</label>
      <div class="password-wrapper">
        <input type="password" id="Password" name="Password" required />
        <span class="toggle-password" id="togglePassword">&#128065;</span>
      </div>

      <label for="Phone">Phone Number</label>
      <input type="text" id="Phone" name="Phone" required pattern="[0-9]{10}" title="Enter a valid 10-digit phone number" />

      <label for="District">District</label>
      <select id="District" name="District" required>
        <option value="" disabled selected>Select District</option>
        <option value="Bangalore">Bangalore</option>
        <option value="Chamarajanagar">Chamarajanagar</option>
        <option value="Hassan">Hassan</option>
        <option value="Kodagu">Kodagu</option>
        <option value="Mysore">Mysore</option>
      </select>

      <input type="submit" value="Sign Up" />
    </form>

    <?php if ($msg == 1): ?>
      <p class="message error">&#10060; Account with this email, username or phone already exists.</p>
    <?php elseif ($msg == 2): ?>
      <div class="popup" id="popup">&#9989; Signup successful! Redirecting to login...</div>
      <script>
        setTimeout(() => {
          document.getElementById('popup').style.opacity = '0';
        }, 2500);
        setTimeout(() => {
          window.location.href = 'deliverylogin.php';
        }, 3000);
      </script>
    <?php elseif ($msg == 3): ?>
      <p class="message error">&#10060; Something went wrong. Please try again.</p>
    <?php endif; ?>

    <div class="login-link">
      Already have an account? <a href="deliverylogin.php">Login</a>
    </div>
  </div>
</div>

<script>
  const togglePassword = document.getElementById('togglePassword');
  const passwordInput = document.getElementById('Password');

  togglePassword.addEventListener('click', () => {
    const type = passwordInput.type === 'password' ? 'text' : 'password';
    passwordInput.type = type;
    togglePassword.style.color = type === 'password' ? '#999' : '#06C167';
  });
</script>

</body>
</html>
