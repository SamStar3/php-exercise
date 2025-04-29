<?php
include 'db.php';

$sql = "SELECT * FROM contacts ORDER BY created_at DESC";
$result = $conn->query($sql);
?>

<!DOCTYPE html>
<html>
<head>
  <title>Submitted Messages</title>
</head>
<body>
  <h2>All Contact Form Messages</h2>
  <?php if ($result->num_rows > 0): ?>
    <table border="1" cellpadding="10">
      <tr>
        <th>ID</th>
        <th>Name</th>
        <th>Email</th>
        <th>Message</th>
        <th>Date</th>
      </tr>
      <?php while($row = $result->fetch_assoc()): ?>
        <tr>
          <td><?= $row["id"] ?></td>
          <td><?= htmlspecialchars($row["name"]) ?></td>
          <td><?= htmlspecialchars($row["email"]) ?></td>
          <td><?= nl2br(htmlspecialchars($row["message"])) ?></td>
          <td><?= $row["created_at"] ?></td>
        </tr>
      <?php endwhile; ?>
    </table>
  <?php else: ?>
    <p>No messages yet.</p>
  <?php endif; ?>
</body>
</html>

<?php $conn->close(); ?>
