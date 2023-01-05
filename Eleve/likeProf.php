<?php

require('../connectSQL.php');

session_start();

$Id = isset($_SESSION['profil']['IdUtilisateur'])?($_SESSION['profil']['IdUtilisateur']):'';

$like = $_REQUEST["like"];
$email = $_REQUEST["email"];

$stmt = $pdo->query("SELECT * FROM `utilisateurs` WHERE Email = '$email' ");
$row = $stmt->fetch();
$row['IdUtilisateur'];

$stmt = $pdo->query("INSERT INTO favori (IdProf, IdEleve) VALUES ($IdUtilisateur, $Id) ");

?>
