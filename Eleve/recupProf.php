<?php

require('../connectSQL.php');

session_start();

$res = array();


$id = isset($_SESSION['profil']['IdUtilisateur'])?($_SESSION['profil']['IdUtilisateur']):'';


$stmt = $pdo->query("SELECT * FROM `infosup`,`favori`,`potentiel`,`suivi` WHERE infosup.Prof = 1 AND NOT favori.IdProf = infosup.IdUtilisateur AND NOT potentiel.IdProf = infosup.IdUtilisateur AND NOT suivi.IdProf = infosup.IdUtilisateur");
while ($row = $stmt->fetch()) {
    array_push($res, $row['']);
}

echo json_encode($res);

?>
