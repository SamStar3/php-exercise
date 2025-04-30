<?php include 'db.php'; ?>
<h2>My Blog</h2>
<a href="create.php">+ New Post</a><br><br>

<?php
$result = $conn->query("SELECT * FROM posts ORDER BY created_at DESC");
while ($row = $result->fetch_assoc()):
?>
  <h3><?= htmlspecialchars($row['title']) ?></h3>
  <a href="view.php?id=<?= $row['id'] ?>">Read More</a> |
  <a href="delete.php?id=<?= $row['id'] ?>" onclick="return confirm('Delete this post?')">Delete</a>
  <hr>
<?php endwhile; ?>
