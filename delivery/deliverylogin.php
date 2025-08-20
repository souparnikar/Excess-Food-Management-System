<?php
session_start();
include '../connection.php';

$msg = 0;

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    if (!empty($_POST['Name']) && !empty($_POST['Password'])) {
        $NameInput     = trim(mysqli_real_escape_string($connection, $_POST['Name']));
        $PasswordInput = trim(mysqli_real_escape_string($connection, $_POST['Password']));

        $sql = "
            SELECT deliveryPersonID, Name, Email, Password, District
            FROM deliverypersons
            WHERE Name = '$NameInput'
               OR Email = '$NameInput'
            LIMIT 1
        ";
        $result = mysqli_query($connection, $sql);

        if ($result && mysqli_num_rows($result) >= 1) {
            $row = mysqli_fetch_assoc($result);

            if ($PasswordInput === $row['Password']) {
                $_SESSION['Name']             = $row['Name'];
                $_SESSION['deliveryPersonID'] = $row['deliveryPersonID'];
                $_SESSION['District']         = $row['District'];
                $_SESSION['Email']            = $row['Email'];

                // Success popup HTML + redirect
                echo "
                <!DOCTYPE html>
                <html lang='en'>
                <head>
                    <meta charset='UTF-8' />
                    <title>Login Success</title>
                    <style>
                        @keyframes fadeIn {
                          from {opacity: 0;}
                          to {opacity: 1;}
                        }
                        .popup {
                            position: fixed;
                            top: 0; left: 0;
                            width: 100vw;
                            height: 100vh;
                            background-color: rgba(0, 0, 0, 0.5);
                            display: flex;
                            justify-content: center;
                            align-items: center;
                            z-index: 9999;
                            font-family: Arial, sans-serif;
                            animation: fadeIn 0.5s ease forwards;
                        }
                        .popup-content {
                            background-color: #fff;
                            padding: 40px 50px;
                            border-radius: 15px;
                            text-align: center;
                            box-shadow: 0 10px 30px rgba(0, 0, 0, 0.3);
                            max-width: 320px;
                            width: 90%;
                        }
                        .checkmark {
                            width: 72px;
                            height: 72px;
                            margin: 0 auto 20px;
                        }
                        .popup-message {
                            font-size: 22px;
                            font-weight: 600;
                            color: #06C167;
                        }
                    </style>
                </head>
                <body>
                    <div class='popup'>
                        <div class='popup-content'>
                            <svg class='checkmark' xmlns='http://www.w3.org/2000/svg' viewBox='0 0 52 52'>
                              <circle cx='26' cy='26' r='25' fill='none' stroke='#06C167' stroke-width='4'/>
                              <path fill='none' stroke='#06C167' stroke-width='4' d='M14 27l7 7 16-16'/>
                            </svg>
                            <div class='popup-message'>Logged in successfully!</div>
                        </div>
                    </div>
                    <script>
                        setTimeout(function() {
                            window.location.href = 'deliverymyord.php';
                        }, 2000);
                    </script>
                </body>
                </html>";
                exit();
            } else {
                $msg = 1; // Incorrect password
            }
        } else {
            $msg = 2; // Account not found
        }
    } else {
        $msg = 3; // Missing fields
    }
}
?>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <title>Delivery Login</title>
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
      position: relative;
      overflow: hidden;
    }

    .login-wrapper {
      display: flex;
      width: 800px;
      height: 450px;
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
      object-fit: contain;
    }

    .form-side {
      width: 50%;
      padding: 40px 50px;
      display: flex;
      flex-direction: column;
      justify-content: center;
      color: #111;
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
      gap: 20px;
    }

    label {
      font-weight: 600;
      margin-bottom: 6px;
    }

    input[type="text"],
    input[type="password"] {
      padding: 12px 40px 12px 15px;
      font-size: 16px;
      border: 1.5px solid #ddd;
      border-radius: 8px;
      transition: border-color 0.3s ease;
      height: 42px;
      box-sizing: border-box;
    }

    input[type="text"]:focus,
    input[type="password"]:focus {
      border-color: #06C167;
      outline: none;
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
      font-size: 20px;
      color: #999;
      user-select: none;
      transition: color 0.3s ease;
      height: 42px;
      line-height: 42px;
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

    .signup-link {
      margin-top: 20px;
      text-align: center;
      font-size: 14px;
    }

    .signup-link a {
      color: #06C167;
      font-weight: 600;
      text-decoration: none;
    }

    .signup-link a:hover {
      text-decoration: underline;
    }

    /* Popup styles for errors */
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

    .checkmark {
      font-size: 48px;
      color: #06C167;
      margin-bottom: 10px;
    }

    .crossmark {
      width: 72px;
      height: 72px;
      margin: 0 auto 20px;
      stroke: #D93025;
      fill: none;
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

<div class="login-wrapper">
  <div class="image-side">
    <img src="../img/d1.jpg" alt="Delivery Illustration" />
  </div>
  <div class="form-side">
    <h1>Delivery Login</h1>
    <form method="post" autocomplete="off">
      <label for="Name">Username or Email</label>
      <input type="text" id="Name" name="Name" required autocomplete="username" />

      <label for="Password">Password</label>
      <div class="password-wrapper">
        <input type="password" id="Password" name="Password" required autocomplete="current-password" />
        <span class="toggle-password" id="togglePassword">&#128065;</span>
      </div>

      <input type="submit" value="Login" />
    </form>

    <div class="signup-link">
      Not a member? <a href="deliverysignup.php">Sign up</a>
    </div>
  </div>
</div>

<?php if ($msg > 0): 
    $errorMessages = [
        1 => 'Incorrect password.',
        2 => 'Account does not exist.',
        3 => 'Please enter both username/email and password.',
    ];
?>
<div class="popup" id="errorPopup" style="display:flex;">
  <div class="popup-content">
    <svg class="crossmark" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 52 52">
      <circle cx="26" cy="26" r="25" stroke="#D93025" stroke-width="4" fill="none"/>
      <path stroke="#D93025" stroke-width="4" d="M16 16 36 36 M36 16 16 36"/>
    </svg>
    <div class="popup-message" style="color: #D93025; font-weight: 600; font-size: 22px; text-align: center;">
      <?= htmlspecialchars($errorMessages[$msg]) ?>
    </div>
  </div>
</div>
<script>
  setTimeout(() => {
    const popup = document.getElementById('errorPopup');
    if (popup) popup.style.display = 'none';
  }, 3000);
</script>
<?php endif; ?>

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
