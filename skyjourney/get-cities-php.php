<?php
include 'db/db-config.php';

if (isset($_GET['q'])) {
    $q = $_GET['q'];
    $q = mysqli_real_escape_string($conn, $q);

    $sql = "SELECT name FROM cities WHERE name LIKE '%$q%' LIMIT 10";
    $result = mysqli_query($conn, $sql);

    $cities = [];
    while ($row = mysqli_fetch_assoc($result)) {
        $cities[] = $row['name'];
    }

    echo json_encode($cities);
}
?>
