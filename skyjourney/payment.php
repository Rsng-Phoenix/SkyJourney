<?php
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $flight_id = $_POST['flight_id'];
    $from = $_POST['from'];
    $to = $_POST['to'];
    $departure_date = $_POST['departure_date'];
    $price = $_POST['price'];
    $passenger_count = $_POST['passenger_count'];

    $passenger_names = $_POST['passenger_name'];
    $passenger_ages = $_POST['passenger_age'];
    $passenger_sexes = $_POST['passenger_sex'];

    $phone = $_POST['phone'];
    $email = $_POST['email'];
} else {
    header("Location: index.php");
    exit();
}
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Payment - SkyJourney</title>
    <link rel="stylesheet" href="css/styles.css">
    <script src="js/script.js" defer></script>
</head>
<body>

<header>
    <nav>
        <div class="logo">
            <img src="assets/skyjourney-logo.png" alt="SkyJourney Logo" style="height: 50px; vertical-align: middle;">
            <h1 style="display: inline-block; margin-left: 10px;">SkyJourney</h1>
        </div>
    </nav>
</header>

<section class="payment-form">
    <h2 style="text-align: center;">Payment Information</h2>
    <form action="generate_pdf.php" method="POST">
        <input type="hidden" name="flight_id" value="<?php echo htmlspecialchars($flight_id); ?>">
        <input type="hidden" name="from" value="<?php echo htmlspecialchars($from); ?>">
        <input type="hidden" name="to" value="<?php echo htmlspecialchars($to); ?>">
        <input type="hidden" name="departure_date" value="<?php echo htmlspecialchars($departure_date); ?>">
        <input type="hidden" name="price" value="<?php echo htmlspecialchars($price); ?>">
        <input type="hidden" name="passenger_count" value="<?php echo htmlspecialchars($passenger_count); ?>">

        <?php for ($i = 0; $i < $passenger_count; $i++): ?>
            <input type="hidden" name="passenger_name[]" value="<?php echo htmlspecialchars($passenger_names[$i]); ?>">
            <input type="hidden" name="passenger_age[]" value="<?php echo htmlspecialchars($passenger_ages[$i]); ?>">
            <input type="hidden" name="passenger_sex[]" value="<?php echo htmlspecialchars($passenger_sexes[$i]); ?>">
        <?php endfor; ?>

        <input type="hidden" name="phone" value="<?php echo htmlspecialchars($phone); ?>">
        <input type="hidden" name="email" value="<?php echo htmlspecialchars($email); ?>">

        <div style="text-align: center;">
            <label>Card Number:</label><br>
            <input type="text" name="card_number" id="card-number" maxlength="19" style="width: 40ch; text-align: center;" required 
                   oninput="this.value = this.value.replace(/\D/g, '').replace(/(.{4})/g, '$1 ').trim();"><br>

            <label>Expiry Date:</label><br>
            <input type="text" name="expiry_date" id="expiry-date" maxlength="7" placeholder="MM / YY" style="width: 40ch; text-align: center;" required 
                   oninput="this.value = this.value.replace(/[^0-9]/g, '').replace(/^(\d{2})(\d{1,2})?$/, '$1 / $2').trim();" 
                   pattern="(0[1-9]|1[0-2]) \/ (2[5-9]|30)" title="Enter a valid expiry date in MM / YY format where MM is 01-12 and YY is 25-30"><br>

            <label>CVV:</label><br>
            <input type="text" name="cvv" maxlength="3" style="width: 40ch; text-align: center;" required>
        </div>

        <div style="text-align: center; margin-top: 20px;">
            <button type="submit" style="border: 2px solid #000; border-radius: 10px; padding: 10px 20px; background-color: #f8f9fa; cursor: pointer;">
            Pay ₹<?php echo htmlspecialchars($price); ?>
            </button>
        </div>
    </form>
</section>

</body>
</html>
