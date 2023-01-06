<?php

require('../connectSQL.php');

session_start();

$res = array();

$id = isset($_SESSION['profil']['IdUtilisateur'])?($_SESSION['profil']['IdUtilisateur']):'';


$stmt = $pdo->query("SELECT * FROM `utilisateurs`, `infosup`, `infoprof`, `matière`, `niveau` WHERE utilisateurs.IdUtilisateur = 1 AND utilisateurs.IdUtilisateur = infosup.IdUtilisateur AND infoprof.IdNiveau = niveau.IdNiveau AND infoprof.IdMatiere = matière.IdMatiere");
$row = $stmt->fetch();

array_push($res, $row);

echo json_encode($res);

?>
