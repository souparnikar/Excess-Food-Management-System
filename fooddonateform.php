<?php
session_start();

$showSuccessPopup = false;
if (isset($_SESSION['donation_success']) && $_SESSION['donation_success'] === true) {
    $showSuccessPopup = true;
    unset($_SESSION['donation_success']);
}
?>

<!DOCTYPE html>
<html>
<head>
    <title>Food Donation Form</title>
    <style>
        body { font-family: Arial; background-color: #f2f2f2; }
        .container { width: 600px; margin: auto; background: #fff; padding: 25px; margin-top: 40px; border-radius: 8px; box-shadow: 0 0 8px #ccc; }
        h2 { text-align: center; color: #06C167; }
        label { font-weight: bold; }
        input[type="text"], select { width: 100%; padding: 8px; margin-top: 8px; margin-bottom: 16px; border: 1px solid #ccc; border-radius: 5px; }
        button[type="submit"] { background-color: #06C167; color: white; border: none; padding: 10px 16px; border-radius: 5px; cursor: pointer; }
        button[type="submit"]:hover { background-color: #04a85b; }
        .payment-grid { display: flex; justify-content: space-between; gap: 12px; margin-top: 10px; }
        .payment-option { border-radius: 0; padding: 8px; text-align: left; cursor: pointer; position: relative; background-color: #fff; width: 130px; height: 60px; display: flex; align-items: center; gap: 10px; transition: background-color 0.3s; }
        .payment-option.selected { background-color: #f0fff5; }
        .payment-option img { max-width: 24px; }
        .payment-option div { font-size: 14px; }
        #successPopup { position: fixed; top: 0; left: 0; width: 100vw; height: 100vh; background: rgba(0,0,0,0.4); display: none; justify-content: center; align-items: center; z-index: 9999; font-family: Arial, sans-serif; }
        #successPopup .popup-content { background: #fff; padding: 30px 40px; border-radius: 12px; text-align: center; box-shadow: 0 10px 25px rgba(0,0,0,0.3); }
        #successPopup .checkmark { font-size: 48px; color: #06C167; margin-bottom: 10px; }
        #successPopup .popup-message { font-size: 20px; font-weight: 500; color: #333; }
    </style>
</head>
<body>
<div class="container">
    <h2>Food Donation Form</h2>
    <form id="donationForm" method="POST" action="submit_donation.php">
        <label>Food Name:</label>
        <input type="text" name="foodname" required>

        <label>Meal Type:</label>
        <select name="meal" required>
            <option value="">-- Select Meal Type --</option>
            <option value="veg">Veg</option>
            <option value="non-veg">Non-Veg</option>
        </select>

        <label>Donor Name:</label>
        <input type="text" name="donor_name" value="<?php echo htmlspecialchars($_SESSION['name'] ?? '', ENT_QUOTES); ?>" required>

        <label>Phone Number:</label>
        <input type="text" name="donor_phone" maxlength="10" pattern="[0-9]{10}" required>

        <label>District:</label>
        <select name="district" id="district" onchange="fetchData();" required>
            <option value="">--Select District--</option>
            <option value="Bangalore">Bangalore</option>
            <option value="Chamarajanagar">Chamarajanagar</option>
            <option value="Hassan">Hassan</option>
            <option value="Kodagu">Kodagu</option>
            <option value="Mysore">Mysore</option>
        </select>

        <label>Donor Address:</label>
        <input type="text" name="donor_address" required>

        <label>Select Recipient:</label>
        <select name="recipient" id="recipient" required>
            <option value="">-- Select Recipient --</option>
        </select>

        <label>Select Delivery Person:</label>
        <select name="deliveryPerson" id="deliveryPerson" required>
            <option value="">-- Select Delivery Person --</option>
        </select>

        <label>Choose Payment Method:</label>
        <div class="payment-grid">
            <label class="payment-option" for="pay_upi">
                <input type="radio" name="payment_method" id="pay_upi" value="upi" required>
                <img src="img/upi.svg" alt="UPI">
                <div>UPI</div>
            </label>

            <label class="payment-option" for="pay_visa">
                <input type="radio" name="payment_method" id="pay_visa" value="visa">
                <img src="img/visa.svg" alt="Visa">
                <div>Visa</div>
            </label>

            <label class="payment-option" for="pay_mastercard">
                <input type="radio" name="payment_method" id="pay_mastercard" value="mastercard">
                <img src="img/mastercard.svg" alt="Mastercard">
                <div>Mastercard</div>
            </label>

            <label class="payment-option" for="pay_cod">
                <input type="radio" name="payment_method" id="pay_cod" value="cod">
                <img src="img/cod.svg" alt="Cash on Delivery">
                <div>Cash</div>
            </label>
        </div>

        <br><br>
        <button type="submit" name="submit">Proceed & Donate</button>
    </form>
</div>

<div id="successPopup">
    <div class="popup-content">
        <div class="checkmark">✔</div>
        <div class="popup-message">Submitted successfully!</div>
    </div>
</div>

<script>
document.addEventListener('DOMContentLoaded', () => {
    const paymentRadios = document.querySelectorAll('input[name="payment_method"]');

    paymentRadios.forEach(radio => {
        radio.addEventListener('change', function() {
            // Highlight selected payment method
            document.querySelectorAll('.payment-option').forEach(opt => opt.classList.remove('selected'));
            this.closest('.payment-option').classList.add('selected');
        });
    });

    // Show success popup if PHP flag is set
    <?php if ($showSuccessPopup): ?>
    const popup = document.getElementById('successPopup');
    popup.style.display = 'flex';
    setTimeout(() => {
        popup.style.display = 'none';
        window.location.href = 'home.php';
    }, 2000);
    <?php endif; ?>
});

function fetchData() {
    const district = document.getElementById('district').value;

    fetch('get_recipients.php?district=' + encodeURIComponent(district))
        .then(response => response.json())
        .then(data => {
            const recipientSelect = document.getElementById('recipient');
            recipientSelect.innerHTML = '<option value="">-- Select Recipient --</option>';

            for (const type in data) {
                const optgroup = document.createElement('optgroup');
                optgroup.label = type;
                data[type].forEach(item => {
                    const option = document.createElement('option');
                    option.value = `${item.id}|${type}|${item.name}|${item.amount}`;
                    option.textContent = `${item.name} - ${item.address} (Amount: ₹${item.amount})`;
                    optgroup.appendChild(option);
                });
                recipientSelect.appendChild(optgroup);
            }
        });

    fetch('get_delivery_persons.php?district=' + encodeURIComponent(district))
        .then(response => response.json())
        .then(data => {
            const deliverySelect = document.getElementById('deliveryPerson');
            deliverySelect.innerHTML = '<option value="">-- Select Delivery Person --</option>';

            data.forEach(person => {
                const option = document.createElement('option');
                option.value = `${person.id}|${person.name}`;
                option.textContent = `${person.name} (${person.phone})`;
                deliverySelect.appendChild(option);
            });
        });
}
</script>
</body>
</html>
