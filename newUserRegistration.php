<?php
$pdo = new PDO("mysql:host=localhost;dbname=einkaufsliste", "root", "");

$sql = "INSERT INTO users (username, email, password_hash) 
        VALUES (:username, :email, :password_hash)";

$username = $_POST["username"] ?? '';
$email = $_POST["email"] ?? '';
$password = $_POST["password"] ?? '';

$password_hash = password_hash($password, PASSWORD_DEFAULT);

$statement = $pdo->prepare($sql);

$data = [
    "username" => $username,
    "email" => $email,
    "password_hash" => $password_hash,
];

$statement->execute($data);

header("Location: SuccessfulRegistration.html");
exit;
?>