<?php

session_start();

$prof = isset($_SESSION['profil']['prof'])?($_SESSION['profil']['prof']):'';


if($prof==1){
  require("prof.html");
}else{
  require("eleve.html");
}

?>