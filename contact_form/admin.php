<?php
session_start();
if (!isset($_SESSION['admin_logged_in'])) {
    header("Location: login.php");
    exit;
}

include 'db.php';

if (isset($_GET['delete'])) {
    $id = (int) $_GET['delete'];
    $conn->query("DELETE FROM contacts WHERE id = $id");
    header("Location: admin.php");
    exit;
}

$result = $conn->query("SELECT * FROM contacts ORDER BY created_at DESC");
?>

<!DOCTYPE html>
<html>
<head><title>Admin Panel</title></head>
<body>
  <h2>Admin Dashboard</h2>
  <a href="logout.php">Logout</a>
  <br><br>
  <?php if ($result->num_rows > 0): ?>
    <table border="1" cellpadding="10">
      <tr>
        <th>ID</th><th>Name</th><th>Email</th><th>Message</th><th>Time</th><th>Action</th>
      </tr>
      <?php while($row = $result->fetch_assoc()): ?>
        <tr>
          <td><?= $row["id"] ?></td>
          <td><?= htmlspecialchars($row["name"]) ?></td>
          <td><?= htmlspecialchars($row["email"]) ?></td>
          <td><?= nl2br(htmlspecialchars($row["message"])) ?></td>
          <td><?= $row["created_at"] ?></td>
          <td><a href="?delete=<?= $row["id"] ?>" onclick="return confirm('Delete this message?');">Delete</a></td>
        </tr>
      <?php endwhile; ?>
    </table>
  <?php else: ?>
    <p>No messages found.</p>
  <?php endif; ?>
</body>
</html>

<?php $conn->close(); ?>
