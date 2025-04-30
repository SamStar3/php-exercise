<?php
include 'db.php';
$id = (int) $_GET['id'];

$result = $conn->query("SELECT * FROM posts WHERE id = $id");
$post = $result->fetch_assoc();
?>

<h2><?= htmlspecialchars($post['title']) ?></h2>
<p><?= nl2br(htmlspecialchars($post['content'])) ?></p>
<a href="index.php">← Back</a>
