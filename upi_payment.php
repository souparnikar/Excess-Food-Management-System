<?php
session_start();

$showSuccess = false;

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $upiId = $_POST['upiId'] ?? '';
    $upiBank = $_POST['upiBank'] ?? '';
    $upiName = $_POST['upiName'] ?? '';

    $_SESSION['upi_payment'] = [
        'upiId' => $upiId,
        'upiBank' => $upiBank,
        'upiName' => $upiName,
    ];

    $showSuccess = true;
}
?>

<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1" />
  <title>UPI Payment</title>
  <style>
    body {
      font-family: Arial, sans-serif;
      background: #f2f2f2;
      display: flex;
      justify-content: center;
      align-items: center;
      height: 100vh;
      margin: 0;
    }

    .wrapper {
      display: flex;
      background: #fff;
      padding: 30px;
      border-radius: 10px;
      box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
      gap: 20px;
      align-items: center;
      max-width: 1000px;
    }

    .form-section, .qr-section {
      flex: 1;
      min-width: 280px;
    }

    .form-section h2,
    .qr-section h2 {
      text-align: center;
      color: #333;
      margin-bottom: 20px;
    }

    label {
      display: block;
      margin-bottom: 8px;
      font-weight: bold;
      color: #555;
    }

    input {
      width: 100%;
      padding: 10px;
      margin-bottom: 20px;
      border: 1px solid #ccc;
      border-radius: 5px;
    }

    button {
      background-color: #06C167;
      color: white;
      border: none;
      padding: 12px;
      width: 100%;
      border-radius: 6px;
      font-size: 16px;
      cursor: pointer;
      margin-top: 20px;
    }

    button:hover {
      background-color: #049851;
    }

    .qr-section {
      text-align: center;
    }

    .qr-section img {
      width: 250px;
      height: 250px;
      border: 1px solid #ccc;
      border-radius: 10px;
    }

    .or-divider {
      font-weight: bold;
      font-size: 18px;
      color: #888;
      padding: 0 10px;
    }

    .popup-overlay {
      position: fixed;
      top: 0; left: 0;
      width: 100vw;
      height: 100vh;
      background: rgba(0, 0, 0, 0.5);
      display: flex;
      justify-content: center;
      align-items: center;
      z-index: 1000;
    }

    .popup {
      background: white;
      padding: 30px 40px;
      border-radius: 10px;
      box-shadow: 0 0 10px rgba(0,0,0,0.2);
      text-align: center;
      max-width: 400px;
    }

    .checkmark {
      font-size: 60px;
      color: #4CAF50;
      margin-bottom: 20px;
    }

    .popup h2 {
      color: #333;
      margin-bottom: 10px;
    }

    .popup p {
      color: #555;
    }

    .popup button {
      margin-top: 20px;
      padding: 10px 20px;
      background-color: #4CAF50;
      border: none;
      color: white;
      border-radius: 6px;
      font-size: 16px;
      cursor: pointer;
    }

    .popup button:hover {
      background-color: #43a047;
    }
  </style>
</head>
<body>

<?php if ($showSuccess): ?>
  <div class="popup-overlay">
    <div class="popup">
      <div class="checkmark">&#10004;</div>
      <h2>Payment Submitted!</h2>
      <p>Your donation details were submitted successfully.</p>
      <p><strong>Please check your registered mobile number for confirmation details.</strong></p>
      <form method="POST" action="home.php">
        <button type="submit">OK</button>
      </form>
    </div>
  </div>
<?php endif; ?>

<?php if (!$showSuccess): ?>
<form method="POST" action="">
  <div class="wrapper">
    <!-- UPI Form -->
    <div class="form-section">
      <h2>Enter UPI Details</h2>
      <label for="upiId">UPI ID</label>
      <input type="text" id="upiId" name="upiId" placeholder="example@upi" >

      <label for="upiBank">Bank Name</label>
      <input type="text" id="upiBank" name="upiBank" placeholder="Enter your bank name" >

      <label for="upiName">Account Holder's Name</label>
      <input type="text" id="upiName" name="upiName" placeholder="Enter account holder's name" >

      <button type="submit">Submit</button>
    </div>

    <!-- OR Divider -->
    <div class="or-divider">OR</div>

    <!-- QR Code Section -->
    <div class="qr-section">
      <h2>Scan to Pay</h2>
      <img src="img/qr.jpg" alt="UPI QR Code" />
      <p>Scan using any UPI app</p>
    </div>
  </div>
</form>
<?php endif; ?>

</body>
</html>
