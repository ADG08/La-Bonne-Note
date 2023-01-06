<?php
session_start();

if(isset($_POST["deco"])) {
    session_destroy();
    header("Location:http://localhost:59000/la-bonne-note/Login/login.php");
}

if(isset($_SESSION['profil'])) {
require("prof.tpl");
}else {

    header("Location:http://localhost:59000/la-bonne-note/Login/login.php");
}
?>