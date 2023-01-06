<?php

require('../connectSQL.php');

session_start(); 

$idProf = $_REQUEST["idProf"];

$stmt = $pdo->query("Select * from InfoProf where IdProf = $idProf");
$res = $stmt->fetch();

$result = array();

$stmt = $pdo->query("Select * from matiere where IdMatiere = $res['IdMatiere']" );

$mat = $stmt->fetch();

array_push($result, $mat['NomMatiere']);

$stmt = $pdo->query("Select * from niveau where IdNiveau = $res['IdNiveau']" );

$niv = $stmt->fetch();

array_push($result, $niv['NomNiveau']);

echo json_encode($result);

?>