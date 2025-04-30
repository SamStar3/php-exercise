<?php
include 'db.php';

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $title = $conn->real_escape_string($_POST['title']);
    $content = $conn->real_escape_string($_POST['content']);

    $conn->query("INSERT INTO posts (title, content) VALUES ('$title', '$content')");
    header("Location: index.php");
}
?>

<h2>Create Post</h2>
<form method="POST">
  Title: <br><input type="text" name="title" required><br><br>
  Content: <br><textarea name="content" rows="5" cols="40" required></textarea><br><br>
  <button type="submit">Post</button>
</form>
