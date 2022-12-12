<?php

require('../connectSQL.php');


$stmt = $pdo->query("SELECT * FROM `users` where prof=1");
while ($row = $stmt->fetch()) {
    echo $row['nom']."\n";
}

?>
