<?php

require('../connectSQL.php');

session_start();

$res = array();
$result = array();

$id = isset($_SESSION['profil']['id'])?($_SESSION['profil']['id']):'';


$stmt = $pdo->query("SELECT * FROM `suivi` where IdProf=$id");
while ($row = $stmt->fetch()) {
    array_push($res, $row['IdEleve']."\n");
}


foreach($res as &$test){
    $stmt = $pdo->query("SELECT * FROM `users` where id=$test");
    $row = $stmt->fetch();
    array_push($result, $row['nom']);
}

echo json_encode($result);

?>
