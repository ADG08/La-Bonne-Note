<?php

session_start();

$prof = isset($_SESSION['profil']['prof'])?($_SESSION['profil']['prof']):'';


if($prof==1){
  $url = "./Prof/prof.php";
  header("Location:" . $url);
}else{
  $url = "./Eleve/eleve.php";
  header("Location:" . $url);
}

?>