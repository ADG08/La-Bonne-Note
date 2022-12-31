<?php
$pdo = require_once '../connectSQL.php';

$adresse = isset($_POST['adresse']) ? ($_POST['adresse']) : '';
$complement = isset($_POST['complement']) ? ($_POST['complement']) : '';
$arrondissement = isset($_POST['arrondissement']) ? ($_POST['arrondissement']) : '';
$naissance = isset($_POST['naissance']) ? ($_POST['naissance']) : '';

$user_actuel = $pdo->prepare('SELECT id FROM users WHERE id = (
                             SELECT MAX(id) FROM users );');

$user_actuel->execute();

/*ajout dans la base de donnée*/
if (count($_POST) == 0){
    require("infos_sup.tpl");
}else{
    if (!empty($prenom) && !empty($passw) && !empty($email)) {

        $sql = "insert into infos (user_id, adresse, complement, code, naissance) values (:user_actuel, :adresse, :complement, :arrondissemnt, :naissance)";

        $pdo = require_once '../connectSQL.php';
        $res = $pdo->prepare($sql);
        $res->execute([
            ':user_actuel' => $user_actuel,
            ':adresse' => $adresse,
            ':complement' => $complement,
            ':arrondissement' => $complement,
            ':naissance' => $naissance,
        ]);

        $url = "../redirect.php";
        header("Location:" . $url);
    }
}
