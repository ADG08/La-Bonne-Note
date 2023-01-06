<?php

require('../connectSQL.php');

session_start();

$res = array();
$result = array();


$id = isset($_SESSION['profil']['IdUtilisateur'])?($_SESSION['profil']['IdUtilisateur']):'';


if (empty($res)) {
    $stmt = $pdo->query("SELECT * FROM `favori`");
    while ($row = $stmt->fetch()) {
        array_push($res, $row['IdProf']);
    }
}

foreach($res as &$x){
  $stmt = $pdo->query("SELECT * FROM utilisateurs, infosup, localisation WHERE infosup.IdUtilisateur = '$x' AND  infosup.IdUtilisateur =  utilisateurs.IdUtilisateur AND utilisateurs.IdUtilisateur = localisation.IdUtilisateur");
  while ($row = $stmt->fetch()) {
      array_push($result, $row);
  }
}

echo json_encode($result);

?>
