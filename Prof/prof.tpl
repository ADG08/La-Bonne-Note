<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8" />
  <meta http-equiv="X-UA-Compatible" content="IE=edge" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <link rel="stylesheet" href="prof.css" />
  <script src="recupEleve.js"></script>
  <title>Document</title>
</head>

<body>
  <div class="rec">
    <button class="boutton">Profil</button>
    <button class="boutton">Carte</button>
    <button class="boutton">Déconnexion</button>
  </div>
  <div class="content">

    <div class="potential">
      <h3 class="title">Demandes</h3>
      <div class="eleves">
        <div class="container">
          <div class="nom"><h3>Bab Isk</h3></div>
          <div class="icones">
            <a href=""><img src="../Prof/icones/check.svg" alt="check image to accept"></a>
            <a href=""><img src="../Prof/icones/cross.svg" alt="check image to refuse"></a>
          </div>
        </div>
        <div class="container">
          <div class="nom"><h3>Andre LeGoat</h3></div>
          <div class="icones">
            <a href=""><img src="../Prof/icones/check.svg" alt="check image to accept"></a>
            <a href=""><img src="../Prof/icones/cross.svg" alt="check image to refuse"></a>
          </div>
        </div>
      </div>
    </div>

    <div class="suivie">
      <h3 class="title">Élèves suivis</h3>
      <div class="eleves">
      </div>
    </div>

  </div>
</body>

</html>