<?php
include 'db/db-config.php';

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $from = $_POST['from'];
    $to = $_POST['to'];
    $departure_date = $_POST['departure_date'];
    $return_date = isset($_POST['return_date']) ? $_POST['return_date'] : '';
    $passengers = $_POST['passengers']; // will pass this ahead
    $class = $_POST['class'];
    $trip_type = $_POST['trip_type'];

    $sql = "SELECT * FROM flights WHERE from_city LIKE '%$from%' AND to_city LIKE '%$to%' LIMIT 5";
    $result = mysqli_query($conn, $sql);
}
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Flight Results - SkyJourney</title>
    <link rel="stylesheet" href="css/styles.css">
    <link rel="stylesheet" href="css/flights.css">
    <script src="https://kit.fontawesome.com/a076d05399.js" crossorigin="anonymous"></script>
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

<section class="search-results-container">
    <div class="search-summary">
        <h2>Flight Results</h2>
        <div class="route-summary">
            <div class="city"><?php echo htmlspecialchars($from); ?></div>
            <div class="route-arrow"><i class="fas fa-arrow-right"></i></div>
            <div class="city"><?php echo htmlspecialchars($to); ?></div>
            <div class="date"><?php echo htmlspecialchars($departure_date); ?></div>
        </div>
    </div>

    <div class="flights-container">
        <?php if (mysqli_num_rows($result) > 0): ?>
            <?php while($row = mysqli_fetch_assoc($result)): ?>
                <div class="flight-card">
                    <div class="flight-header">
                        <div class="airline">
                            <div class="airline-name"><?php echo $row['airline']; ?></div>
                            <div class="flight-number"><?php echo $row['flight_number']; ?></div>
                        </div>
                        <div class="flight-class"><?php echo ucfirst($class); ?></div>
                    </div>
                    <div class="flight-details">
                        <div class="flight-time">
                            <div class="departure">
                                <div class="time"><?php echo $row['departure_time']; ?></div>
                                <div class="airport"><?php echo $row['from_city']; ?></div>
                            </div>
                            <div class="flight-duration">
                                <div class="flight-line">
                                    <hr>
                                    <i class="fas fa-plane"></i>
                                </div>
                                <div class="flight-type">Nonstop</div>
                            </div>
                            <div class="arrival">
                                <div class="time"><?php echo $row['arrival_time']; ?></div>
                                <div class="airport"><?php echo $row['to_city']; ?></div>
                            </div>
                        </div>
                        <div class="flight-pricing">
                            <div class="price">₹<?php echo $row['price']; ?></div>

                            <!-- Corrected form -->
                            <form action="passenger-details.php" method="POST">
                                <input type="hidden" name="flight_id" value="<?php echo $row['id']; ?>">
                                <input type="hidden" name="from" value="<?php echo htmlspecialchars($from); ?>">
                                <input type="hidden" name="to" value="<?php echo htmlspecialchars($to); ?>">
                                <input type="hidden" name="departure_date" value="<?php echo htmlspecialchars($departure_date); ?>">
                                <input type="hidden" name="price" value="<?php echo $row['price']; ?>">
                                <input type="hidden" name="passenger_count" value="<?php echo (int)$passengers; ?>">
                                <button type="submit" class="book-button">Book Now</button>
                            </form>

                        </div>
                    </div>
                </div>
            <?php endwhile; ?>
        <?php else: ?>
            <div class="no-results">
                <p>No flights found. Please try a different search!</p>
                <a href="index.html" class="back-button">← Back to Search</a>
            </div>
        <?php endif; ?>
    </div>
</section>

</body>
</html>
