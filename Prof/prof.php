<?php
session_start();
if ($_POST["deco"]) {
    session_destroy();
}
require("prof.tpl");


?>