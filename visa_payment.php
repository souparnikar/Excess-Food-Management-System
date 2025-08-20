<?php
$showSuccess = false;

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    // Simulate success (replace with DB logic as needed)
    $cardNumber = $_POST['cardNumber'] ?? '';
$month = $_POST['month'] ?? '';
$year = $_POST['year'] ?? '';
$cvv = $_POST['cvv'] ?? '';


    $showSuccess = true;
}
?>

<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
  <title>Visa Details Form</title>
  <style>
    body {
      font-family: Arial, sans-serif;
      background-color: #f2f2f2;
      display: flex;
      justify-content: center;
      align-items: center;
      height: 100vh;
      margin: 0;
    }

    .form-container {
      background: #fff;
      padding: 20px;
      box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
      width: 400px;
      border-radius: 8px;
    }

    .form-container h2 {
      text-align: center;
      color: #333;
      margin-bottom: 20px;
    }

    .form-container label {
      font-weight: bold;
      color: #555;
    }

    .form-container input,
    .form-container select {
      width: 100%;
      padding: 10px;
      margin-bottom: 20px;
      border: 1px solid #ccc;
      border-radius: 5px;
      font-size: 14px;
    }

    .form-container input[type="text"] {
      text-transform: uppercase;
    }

    .form-container .cvv-info {
      font-size: 12px;
      color: #888;
      margin-top: -15px;
      margin-bottom: 15px;
    }

    .form-container button {
      width: 100%;
      padding: 12px;
      background-color: #4CAF50;
      color: white;
      border: none;
      border-radius: 5px;
      font-size: 16px;
      cursor: pointer;
    }

    .form-container button:hover {
      background-color: #45a049;
    }

    /* Popup styles */
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
      <form method="GET" action="home.php">
        <button type="submit">OK</button>
      </form>
    </div>
  </div>
<?php endif; ?>

<div class="form-container">
  <h2>Visa Detail</h2>
  <form method="POST">
    <label for="cardNumber">Card Number</label>
    <input type="text" id="cardNumber" name="cardNumber" placeholder="1234 5678 9876 5432" maxlength="19">

    <label for="expiryDate">Expiry Date</label>
    <div style="display: flex; gap: 10px;">
      <select id="month" name="month">
        <option value="" disabled selected>Month</option>
        <?php
        for ($i = 1; $i <= 12; $i++) {
            $val = str_pad($i, 2, '0', STR_PAD_LEFT);
            echo "<option value=\"$val\">$val</option>";
        }
        ?>
      </select>
      <select id="year" name="year">
        <option value="" disabled selected>Year</option>
        <?php
        $currentYear = date("Y");
        for ($i = 0; $i < 6; $i++) {
            $year = $currentYear + $i;
            echo "<option value=\"$year\">$year</option>";
        }
        ?>
      </select>
    </div>

    <label for="cvv">CVV</label>
    <input type="text" id="cvv" name="cvv" placeholder="123" maxlength="4">
    <div class="cvv-info">3 or 4 digits usually found on the signature strip</div>

    <button type="submit">Submit</button>
  </form>
</div>

</body>
</html>
