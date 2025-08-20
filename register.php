<?php
$showPopup = false;
if (isset($_POST['register'])) {
    $conn = new mysqli('localhost', 'root', '', 'demo');

    if ($conn->connect_error) {
        die("Connection failed: " . $conn->connect_error);
    }

    $username = $conn->real_escape_string(trim($_POST['username']));
    $email = $conn->real_escape_string(trim($_POST['email']));
    $password = $conn->real_escape_string(trim($_POST['password']));
    $phone = $conn->real_escape_string(trim($_POST['phone']));
    $district = $conn->real_escape_string(trim($_POST['district']));

    $check = "SELECT * FROM users WHERE username='$username' OR email='$email'";
    $result = $conn->query($check);

    if ($result->num_rows > 0) {
        echo "<script>alert('Username or Email already exists!');</script>";
    } else {
        $query = "INSERT INTO users (username, email, password, phone, district) 
                  VALUES ('$username', '$email', '$password', '$phone', '$district')";

        if ($conn->query($query) === TRUE) {
            $showPopup = true;
            echo "<script>
                    setTimeout(function() {
                        window.location.href = 'login.php';
                    }, 2000);
                  </script>";
        } else {
            echo "Error: " . $conn->error;
        }
    }

    $conn->close();
}
?>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8" />
<title>Donor Registration</title>
<style>
  @import url('https://fonts.googleapis.com/css2?family=Poppins&display=swap');
  body {
    margin: 0;
    padding: 0;
    height: 100vh;
    font-family: 'Poppins', sans-serif;
    background: url('img/login1.jpg') no-repeat center center fixed;
    background-size: cover;
    display: flex;
    justify-content: center;
    align-items: center;
    position: relative;
  }

  body::before {
    content: '';
    position: fixed;
    top: 0; left: 0;
    width: 100%; height: 100%;
    background-color: rgba(0, 0, 0, 0.55);
    z-index: -1;
  }

  form {
    max-width: 400px;
    width: 90%;
    padding: 30px;
    background: transparent;
    box-shadow: none;
    border-radius: 12px;
    color: white;
  }

  h2 {
    text-align: center;
    margin-bottom: 25px;
    color: white;
  }

  label {
    display: block;
    margin-top: 15px;
    margin-bottom: 5px;
  }

  input[type="text"],
  input[type="email"],
  input[type="password"],
    select {
      width: 100%;
      height: 48px;
      padding: 0 12px;
      margin: 10px 0;
      border-radius: 6px;
      border: 1px solid #ddd;
      font-size: 16px;
      background: rgba(0, 0, 0, 0.3);
      color: white;
      outline: none;
      transition: background-color 0.3s ease;
      box-sizing: border-box;
      position: relative;
  }

  select option {
      background-color: #222;
      color: white;
  }

  input[type="password"] {
    padding-right: 40px;
  }

  input::placeholder,
  select::placeholder {
    color: #ddd;
  }

  input:focus,
  select:focus {
    background: rgba(255 255 255 / 0.3);
    border-color: #06C167;
  }

  input[type="submit"] {
    background-color: #06C167;
    border: none;
    cursor: pointer;
    margin-top: 15px;
    transition: background-color 0.3s ease;
    height: 48px;
    font-size: 16px;
    border-radius: 6px;
    color: white;
    width: 100%;
  }

  input[type="submit"]:hover {
    background-color: #059a4a;
  }

  .password-wrapper {
    position: relative;
  }

  .toggle-password {
    position: absolute;
    top: 50%;
    right: 12px;
    transform: translateY(-50%);
    cursor: pointer;
    color: #ddd;
    font-size: 20px;
    user-select: none;
  }

  .toggle-password:hover {
    color: #06C167;
  }

  .popup {
    display: none;
    position: fixed;
    top: 0; left: 0;
    width: 100vw;
    height: 100vh;
    background-color: rgba(0, 0, 0, 0.6);
    justify-content: center;
    align-items: center;
    z-index: 9999;
    animation: fadeIn 0.3s ease-in;
  }

  .popup-content {
    background-color: #ffffff;
    padding: 30px 40px;
    border-radius: 12px;
    text-align: center;
    box-shadow: 0 10px 25px rgba(0, 0, 0, 0.3);
    animation: slideUp 0.3s ease-in-out;
    color: #333;
  }

  .checkmark {
    font-size: 48px;
    color: #06C167;
    margin-bottom: 10px;
  }

  .popup-message {
    font-size: 20px;
    font-weight: 500;
  }

  @keyframes fadeIn {
    from { opacity: 0; }
    to { opacity: 1; }
  }

  @keyframes slideUp {
    from { transform: translateY(20px); opacity: 0; }
    to { transform: translateY(0); opacity: 1; }
  }
</style>
</head>
<body>

<form method="POST" action="">
  <h2>Register</h2>

  <label>Username:</label>
  <input type="text" name="username" placeholder="Enter username" required>

  <label>Email:</label>
  <input type="email" name="email" placeholder="Enter email" required>

  <label>Password:</label>
  <div class="password-wrapper">
    <input type="password" name="password" id="password" placeholder="Enter password" required>
    <span class="toggle-password" id="togglePassword" title="Show/Hide Password">&#128065;</span>
  </div>

  <label>Phone Number:</label>
  <input type="text" name="phone" placeholder="Enter phone number" required>

  <label>District:</label>
  <select name="district" required>
      <option value="">Select District</option>
      <option value="Bangalore">Bangalore</option>
      <option value="Chamarajanagar">Chamarajanagar</option>
      <option value="Hassan">Hassan</option>
      <option value="Kodagu">Kodagu</option>
      <option value="Mysore">Mysore</option>
  </select>

  <input type="submit" name="register" value="Register">
</form>

<!-- Success Pop-up -->
<div class="popup" id="popup">
  <div class="popup-content">
    <div class="checkmark">&#10004;</div>
    <div class="popup-message">Registered successfully! Log in to access the page.</div>
  </div>
</div>

<script>
  const togglePassword = document.getElementById('togglePassword');
  const passwordInput = document.getElementById('password');

  togglePassword.addEventListener('click', () => {
    const type = passwordInput.type === 'password' ? 'text' : 'password';
    passwordInput.type = type;
    togglePassword.style.color = type === 'password' ? '#ddd' : '#06C167';
  });
</script>

<script>
  <?php if ($showPopup) { ?>
    const popup = document.getElementById('popup');
    popup.style.display = 'flex';
    setTimeout(() => {
      window.location.href = 'login.php';
    }, 2000);
  <?php } ?>
</script>

</body>
</html>
