var firstContentSuivie = '<div class="container"><div class="info"> <h2>'
var lastContentSuivie = '</h2>'

$(document).ready(function () {


    $.ajax({
        type: "POST",
        url: "recupEleveSuivi.php",
        success: function (res) {
            var resultat = JSON.parse(res)

            resultat.forEach(element => {
                var result = firstContentSuivie + element.nom + " " + element.prenom + lastContentSuivie;
                $(".suivie .eleves").append(result);

            });
        },
        error: function (err) {
            console.error(err);
        },
    });
    
    

    $.ajax({
        type: "POST",
        url: "recupElevePotentiel.php",
        success: function (res) {

            var resultat = JSON.parse(res)

            console.log(resultat);

            resultat.forEach(element => {
                var leReste = '</div><div class="imgContainer"> `<img src="https://t3.ftcdn.net/jpg/00/26/43/56/360_F_26435684_nI2nmc5VtQ0N3vbBld4DQFGSXN0G54vj.jpg" alt="" class="valider"> <img src="https://cdn-icons-png.flaticon.com/512/59/59254.png" alt="" class="del"></img></div>'

                var result = firstContentSuivie + element.nom + " " + element.prenom + lastContentSuivie + "<p class='email'>" + element.email + "</p>" + leReste;
                $(".potential .eleves").append(result);

                $('.valider').click(valider)
                $('.del').click(del)
                

            });
        },
        error: function (err) {
            console.error(err);
        },
    });

    
    
    function valider() {
        var resu = $(".email").text()
        $.ajax({
            type: "POST",
            url: "ajoutEleveSuivi.php",
            data: {
                "Email": resu
              },
            success: function (res) {
                
                console.log(res)
                
            },
            error: function (err) {
                console.error(err);
            },
        });

    }

    function del(){
        var resu = $(".email").text()
        $.ajax({
            type: "POST",
            url: "deleteElevePotentiel.php",
            data: {
                "Email": resu
              },
            success: function (res) {
                console.log(res)
                
            },
            error: function (err) {
                console.error(err);
            },
        });
    }




    /*
        
    
         
        Pour les eleves potentiels faut ajouter sa 
        
        <div class="imgContainer"> <img src="https://t3.ftcdn.net/jpg/00/26/43/56/360_F_26435684_nI2nmc5VtQ0N3vbBld4DQFGSXN0G54vj.jpg" alt=""> <img src="https://cdn-icons-png.flaticon.com/512/59/59254.png" alt=""> */






})