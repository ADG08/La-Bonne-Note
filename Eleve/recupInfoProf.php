<?php

require('../connectSQL.php');

session_start(); 

$idProf = $_REQUEST["idProf"];

$stmt = $pdo->query("SELECT * from InfoProf where IdProf = $idProf");
$res = $stmt->fetch();
$nomNiv = $res['IdMatiere'];
$nomMat = $res['IdNiveau'];

$result = array();

$stmt = $pdo->query("SELECT * FROM matière where IdMatiere = '$nomMat' " );

$mat = $stmt->fetch();

array_push($result, $mat['NomMatiere']);

$stmt = $pdo->query("SELECT * from niveau where IdNiveau = '$nomNiv' ");

$niv = $stmt->fetch();

array_push($result, $niv['NomNiveau']);

echo json_encode($result);

?>