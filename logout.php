<?php
session_start();// start session for current user
session_destroy(); // destroy session for current user
header("Location: index.php"); // redirect to the blog homepage
?>