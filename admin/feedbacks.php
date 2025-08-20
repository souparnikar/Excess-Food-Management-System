<?php
$connection = mysqli_connect("localhost", "root", "", "demo");
if (!$connection) {
    die("Connection failed: " . mysqli_connect_error());
}

$countResult = mysqli_query($connection, "SELECT COUNT(*) as total FROM user_feedback");
$count = mysqli_fetch_assoc($countResult)['total'];

$feedbacksResult = mysqli_query($connection, "SELECT id, name, message FROM user_feedback");
?>

<!DOCTYPE html>
<html>
<head>
    <title>All Feedbacks</title>
    <style>
        table { width: 100%; border-collapse: collapse; margin-top: 20px; }
        th, td { border: 1px solid #ddd; padding: 8px; text-align: center; }
        th { background-color: #f2f2f2; }
        h2 { margin-top: 20px; }
    </style>
</head>
<body>
    <h2>Total Feedbacks: <?php echo $count; ?></h2>
    <table>
        <tr>
            <th>ID</th><th>User Email</th><th>Feedback</th>
        </tr>
        <?php while ($row = mysqli_fetch_assoc($feedbacksResult)) { ?>
        <tr>
            <td><?php echo $row['id']; ?></td>
            <td><?php echo $row['name']; ?></td>
            <td><?php echo $row['message']; ?></td>
        </tr>
        <?php } ?>
    </table>
</body>
</html>
