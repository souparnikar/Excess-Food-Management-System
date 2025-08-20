<?php
include('../connection.php');

// Query for users by district
$q1 = "SELECT district, COUNT(*) as count FROM users GROUP BY district";
$res1 = mysqli_query($connection, $q1);

// Query for donations by donor district
$q2 = "SELECT donor_district, COUNT(*) as count FROM food_donations GROUP BY donor_district";
$res2 = mysqli_query($connection, $q2);
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Analytics Dashboard</title>
    <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
    <style>
        body {
            font-family: Arial, sans-serif;
            padding: 20px;
        }
        canvas {
            max-width: 500px;
            margin: 40px auto;
            display: block;
        }
        h2 {
            text-align: center;
        }
    </style>
</head>
<body>

    <h1 style="text-align: center;">Analytics Dashboard</h1>

    <h2>User Distribution by District</h2>
    <canvas id="userChart"></canvas>

    <h2>Donation Distribution by Donor District</h2>
    <canvas id="donationChart"></canvas>

    <script>
        <?php
        // Prepare user data
        $userLabels = [];
        $userData = [];
        while ($row = mysqli_fetch_assoc($res1)) {
            $userLabels[] = $row['district'];
            $userData[] = $row['count'];
        }

        // Prepare donation data
        $donationLabels = [];
        $donationData = [];
        while ($row = mysqli_fetch_assoc($res2)) {
            $donationLabels[] = $row['donor_district'];
            $donationData[] = $row['count'];
        }
        ?>

        // Function to generate random colors
        function getColors(count) {
            const colors = [];
            for (let i = 0; i < count; i++) {
                colors.push(`hsl(${i * 30 % 360}, 70%, 60%)`);
            }
            return colors;
        }

        const userColors = getColors(<?php echo count($userLabels); ?>);
        const donationColors = getColors(<?php echo count($donationLabels); ?>);

        // User Doughnut Chart
        new Chart(document.getElementById("userChart"), {
            type: "doughnut",
            data: {
                labels: <?php echo json_encode($userLabels); ?>,
                datasets: [{
                    data: <?php echo json_encode($userData); ?>,
                    backgroundColor: userColors
                }]
            },
            options: {
                responsive: true,
                plugins: {
                    title: {
                        display: false
                    },
                    legend: {
                        position: 'right'
                    }
                }
            }
        });

        // Donation Doughnut Chart
        new Chart(document.getElementById("donationChart"), {
            type: "doughnut",
            data: {
                labels: <?php echo json_encode($donationLabels); ?>,
                datasets: [{
                    data: <?php echo json_encode($donationData); ?>,
                    backgroundColor: donationColors
                }]
            },
            options: {
                responsive: true,
                plugins: {
                    title: {
                        display: false
                    },
                    legend: {
                        position: 'right'
                    }
                }
            }
        });
    </script>
</body>
</html>
