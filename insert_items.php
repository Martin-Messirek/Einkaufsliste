<?php
$pdo = new PDO("mysql:host=localhost;dbname=einkaufsliste", "root", "");

$sql = "INSERT INTO items(list_id, name, quantity) 
        VALUES(:list_id, :name, :quantity)";

$list_id = $_POST["list_id"] ?? 1;
$name = $_POST["name"] ?? '';
$quantity = $_POST["quantity"] ?? '1';

$statement = $pdo->prepare($sql);

$data = [
   "list_id" => $list_id,
   "name" => $name,
   "quantity" => $quantity,
];

$statement->execute($data);

header("Location: hinzugefuegt.html");
exit;
?>