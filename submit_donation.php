<?php
session_start();
include 'connection.php'; // This file defines $connection

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $foodname = $_POST['foodname'] ?? '';
    $meal = $_POST['meal'] ?? '';
    $donor_name = $_POST['donor_name'] ?? '';
    $donor_phone = $_POST['donor_phone'] ?? '';
    $district = $_POST['district'] ?? '';
    $donor_address = $_POST['donor_address'] ?? '';
    $recipientRaw = $_POST['recipient'] ?? '';
    $deliveryPersonRaw = $_POST['deliveryPerson'] ?? '';
    $payment_method = $_POST['payment_method'] ?? '';

    // Extract recipient parts
    $recipientParts = explode('|', $recipientRaw);
    $recipient_id = $recipientParts[0] ?? '';
    $recipient_type = $recipientParts[1] ?? '';
    $recipient_name = $recipientParts[2] ?? '';

    // Extract delivery person parts
    $deliveryParts = explode('|', $deliveryPersonRaw);
    $deliveryPerson_id = $deliveryParts[0] ?? '';
    $deliveryPerson_name = $deliveryParts[1] ?? '';

    $email = $_SESSION['email'] ?? '';

    if (!$connection) {
        die("DB connection failed: " . mysqli_connect_error());
    }

    // Step 1: Get amount from recipients table using recipient_id
    $amount = 0;
    $recipientStmt = $connection->prepare("SELECT amount FROM recipients WHERE id = ?");
    $recipientStmt->bind_param("i", $recipient_id);
    $recipientStmt->execute();
    $recipientStmt->bind_result($amount);
    $recipientStmt->fetch();
    $recipientStmt->close();

    // Step 2: Insert into food_donations including amount
    $stmt = $connection->prepare("INSERT INTO food_donations 
        (email, food, type, donor_name, donor_phone, donor_district, donor_address, recipient_type, recipient_name, delivery_person_name, payment_method, amount, donation_date) 
        VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, NOW())");

    if ($stmt === false) {
        die("Prepare failed: " . $connection->error);
    }

    $stmt->bind_param("sssssssssssi", 
        $email, 
        $foodname, 
        $meal, 
        $donor_name, 
        $donor_phone, 
        $district, 
        $donor_address, 
        $recipient_type, 
        $recipient_name, 
        $deliveryPerson_name, 
        $payment_method,
        $amount
    );

    if ($stmt->execute()) {
        $_SESSION['donation_success'] = true;

        // Redirect based on payment method
        if ($payment_method === 'upi') {
            header('Location: upi_payment.php');
        } elseif ($payment_method === 'visa') {
            header('Location: visa_payment.php');
        } elseif ($payment_method === 'mastercard') {
            header('Location: mastercard_payment.php');
        } else {
            header('Location: home.php');
        }
        exit();
    } else {
        echo "Execute failed: " . $stmt->error;
    }

    $stmt->close();
    $connection->close();
}
?>
