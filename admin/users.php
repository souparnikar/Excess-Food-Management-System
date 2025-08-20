<?php
$connection = mysqli_connect("localhost", "root", "", "demo");

if (!$connection) {
    die("Connection failed: " . mysqli_connect_error());
}

// Count
$countResult = mysqli_query($connection, "SELECT COUNT(*) as total FROM users");
$count = mysqli_fetch_assoc($countResult)['total'];

// Details
$usersResult = mysqli_query($connection, "SELECT * FROM users");
?>

<h2>Total Users: <?php echo $count; ?></h2>

<table border="1" cellpadding="10">
    <tr>
        <th>ID</th><th>Name</th><th>Email</th><th>Phone</th>
    </tr>
    <?php while ($user = mysqli_fetch_assoc($usersResult)) { ?>
        <tr>
            <td><?php echo $user['user_id']; ?></td>
            <td><?php echo $user['username']; ?></td>
            <td><?php echo $user['email']; ?></td>
            <td><?php echo $user['phone']; ?></td>
        </tr>
    <?php } ?>
</table>
