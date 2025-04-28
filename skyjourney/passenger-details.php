<?php
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $flight_id = $_POST['flight_id'];
    $from = $_POST['from'];
    $to = $_POST['to'];
    $departure_date = $_POST['departure_date'];
    $price = $_POST['price'];
    $passenger_count = (int)$_POST['passenger_count'];
} else {
    header("Location: index.php"); // if accessed directly
    exit();
}
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Passenger Details - SkyJourney</title>
    <link rel="stylesheet" href="css/styles.css">
</head>
<body>

<header>
    <nav>
        <div class="logo">
            <img src="assets/skyjourney-logo.png" alt="SkyJourney Logo" style="height: 50px; vertical-align: middle;">
            <h1 style="display: inline; margin-left: 10px;">SkyJourney</h1>
        </div>
    </nav>
</header>

<section class="passenger-details-form">
    <h2>Passenger Information</h2>

    <form action="payment.php" method="POST">
        <input type="hidden" name="flight_id" value="<?php echo htmlspecialchars($flight_id); ?>">
        <input type="hidden" name="from" value="<?php echo htmlspecialchars($from); ?>">
        <input type="hidden" name="to" value="<?php echo htmlspecialchars($to); ?>">
        <input type="hidden" name="departure_date" value="<?php echo htmlspecialchars($departure_date); ?>">
        <input type="hidden" name="price" value="<?php echo htmlspecialchars($price); ?>">
        <input type="hidden" name="passenger_count" value="<?php echo htmlspecialchars($passenger_count); ?>">

        <?php for ($i = 1; $i <= $passenger_count; $i++): ?>
            <div class="passenger-card">
                <h3>Passenger <?php echo $i; ?></h3>
                <label>Full Name:</label>
                <input type="text" name="passenger_name[]" required>

                <label>Age:</label>
                <input type="number" name="passenger_age[]" max="85" maxlength="2" required>

                <label>Sex:</label>
                <select name="passenger_sex[]" required>
                    <option value="">Select</option>
                    <option value="Male">Male</option>
                    <option value="Female">Female</option>
                    <option value="Other">Other</option>
                </select>
            </div>
        <?php endfor; ?>

        <h3>Contact Information</h3>

        <div style="display: flex; justify-content: space-between; margin: 0 10px;">
            <div style="flex: 1; margin-right: 10px;">
            <label>Phone Number:</label>
            <input type="tel" name="phone" required>
            </div>
            <div style="flex: 1; margin-left: 10px;">
            <label>Email Address:</label>
            <input type="email" name="email" required>
            </div>
        </div>

        <div class="button-center">
    <button id="pay" type="submit">Continue to Payment</button>
</div>

    </form>
</section>

</body>
</html>
