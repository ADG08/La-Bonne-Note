<?php

require('../connectSQL.php');

session_start();

$res = array();


$id = isset($_SESSION['profil']['IdUtilisateur'])?($_SESSION['profil']['IdUtilisateur']):'';


$stmt = $pdo->query("SELECT * FROM `suivi` where IdProf=$id");
while ($row = $stmt->fetch()) {
    array_push($res, $row['IdEleve']."\n");
}

echo $res;

?>
