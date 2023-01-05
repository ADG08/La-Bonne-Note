<?php

if(session_status() !== PHP_SESSION_ACTIVE) session_start();

$id = isset($_SESSION['profil']['IdUtilisateur'])?($_SESSION['profil']['IdUtilisateur']):'';

echo $id;

$pdo = require_once './connectSQL.php';
$stmt = $pdo->query("SELECT * FROM `infosup` where IdUtilisateur=$id");
$prof = $stmt->fetch();
$res = $prof['Prof'];



?>