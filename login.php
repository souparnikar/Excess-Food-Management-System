<?php
session_start();
include("connection.php");

$popupType = "";  // 'success' or 'error'
$popupMessage = "";
$showPopup = false;

if ($_SERVER['REQUEST_METHOD'] === 'POST' && isset($_POST['login'])) {
    $username_email = trim($_POST['username_email']);
    $password = trim($_POST['password']);

    $stmt = $connection->prepare("SELECT * FROM users WHERE username = ? OR email = ?");
    $stmt->bind_param("ss", $username_email, $username_email);
    $stmt->execute();
    $result = $stmt->get_result();

    if ($result->num_rows === 1) {
        $user = $result->fetch_assoc();

        if ($password === $user['password']) {
            $_SESSION['user_id'] = $user['user_id'];
            $_SESSION['username'] = $user['username'];
            $_SESSION['email'] = $user['email'];

            $popupType = "success";
            $popupMessage = "Login Successful! Redirecting...";
            $showPopup = true;
        } else {
            $popupType = "error";
            $popupMessage = "Invalid credentials! Please try again.";
            $showPopup = true;
        }
    } else {
        $popupType = "error";
        $popupMessage = "Invalid credentials! Please try again.";
        $showPopup = true;
    }

    $stmt->close();
}
?>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8" />
<title>Donor Login</title>
<style>
  body {
    background: url('img/login1.jpg') no-repeat center center fixed;
    background-size: cover;
    font-family: 'Poppins', sans-serif;
    margin: 0;
    padding: 0;
    height: 100vh;
    display: flex;
    justify-content: center;
    align-items: center;
  }

  /* Dark overlay */
  body::before {
    content: '';
    position: fixed;
    top: 0; left: 0;
    width: 100%; height: 100%;
    background-color: rgba(0, 0, 0, 0.55);
    z-index: -1;
  }

  .container {
    max-width: 400px;
    width: 90%;
    padding: 30px;
    background: transparent;
    box-shadow: none;
    border-radius: 12px;
    text-align: left;
    position: relative;
    z-index: 1;
    color: white;
  }

  label {
    display: block;
    margin-top: 15px;
    margin-bottom: 5px;
  }

  input[type="text"],
  input[type="password"],
  input[type="submit"] {
    width: 100%;
    height: 48px;
    padding: 0 12px;
    margin: 10px 0;
    border-radius: 6px;
    border: 1px solid #ddd;
    font-size: 16px;
    background: rgba(255 255 255 / 0.15);
    color: white;
    outline: none;
    transition: background-color 0.3s ease;
    box-sizing: border-box;
    position: relative;
  }

  /* Extra right padding only for password for eye icon */
  input[type="password"] {
    padding-right: 40px;
  }

  input::placeholder {
    color: #ddd;
  }

  input[type="text"]:focus,
  input[type="password"]:focus {
    background: rgba(255 255 255 / 0.3);
    border-color: #06C167;
  }

  input[type="submit"] {
    background-color: #06C167;
    border: none;
    cursor: pointer;
    margin-top: 15px;
    transition: background-color 0.3s ease;
  }

  input[type="submit"]:hover {
    background-color: #059a4a;
  }

  .register-link {
    margin-top: 20px;
    color: white;
  }

  .register-link a {
    font-weight: bold;
    text-decoration: underline;
    color: #4AD37D;
  }

  .register-link a:hover {
    color: #06C167;
  }

  .error-message {
    color: #ff6b6b;
    margin-top: 15px;
    font-weight: bold;
  }

  /* Password input wrapper */
  .password-wrapper {
    position: relative;
  }

  /* Eye icon styling */
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

  /* Popup styles */
  .popup {
    display: none;
    position: fixed;
    top: 0; left: 0;
    width: 100vw;
    height: 100vh;
    background-color: rgba(0, 0, 0, 0.5);
    justify-content: center;
    align-items: center;
    z-index: 9999;
    animation: fadeIn 0.4s ease-in;
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

  .popup-icon {
    font-size: 48px;
    margin-bottom: 10px;
  }

  .popup-success {
    color: #06C167; /* Green */
  }

  .popup-error {
    color: #ff4c4c; /* Red */
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

<div class="container">
  <h2>Login</h2>

  <form method="POST" action="<?php echo htmlspecialchars($_SERVER['PHP_SELF']); ?>">
    <label>Username or Email:</label>
    <input type="text" name="username_email" required autofocus placeholder="Enter username or email">

    <label>Password:</label>
    <div class="password-wrapper">
      <input type="password" name="password" id="password" required placeholder="Enter password">
      <span class="toggle-password" id="togglePassword" title="Show/Hide Password">&#128065;</span>
    </div>

    <input type="submit" name="login" value="Login">
  </form>

  <div class="register-link">
    <p>Don't have an account? <a href="register.php">Register here</a></p>
  </div>
</div>

<!-- Universal Popup -->
<div class="popup" id="popup">
  <div class="popup-content">
    <div class="popup-icon" id="popupIcon">✔</div>
    <div class="popup-message" id="popupMessage">Message</div>
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

  <?php if ($showPopup): ?>
    const popup = document.getElementById('popup');
    const popupIcon = document.getElementById('popupIcon');
    const popupMessage = document.getElementById('popupMessage');

    // Set message from PHP
    popupMessage.textContent = <?php echo json_encode($popupMessage); ?>;

    // Set icon and color based on popupType
    <?php if ($popupType === 'success'): ?>
      popupIcon.textContent = "✔";
      popupIcon.classList.add('popup-success');
      popupIcon.classList.remove('popup-error');
      popup.style.display = 'flex';
      setTimeout(() => {
        popup.style.display = 'none';
        window.location.href = 'home.php'; // Redirect on success
      }, 2000);
    <?php else: ?>
      popupIcon.textContent = "❌";
      popupIcon.classList.add('popup-error');
      popupIcon.classList.remove('popup-success');
      popup.style.display = 'flex';
      // No redirect on error; popup hides after 3s
      setTimeout(() => {
        popup.style.display = 'none';
      }, 3000);
    <?php endif; ?>
  <?php endif; ?>
</script>

</body>
</html>
