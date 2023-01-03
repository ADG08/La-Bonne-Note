var firstContentSuivie = '<div class="container"> <h1>'
var lastContentSuivie = '</h1></div>'

$(document).ready(function () {
    
$.ajax({
    type: "POST",
    url: "recupEleveSuivi.php",
    success: function (res) {
        var result= firstContentSuivie + res + lastContentSuivie;
        $(".suivie .eleves").append(result);
    },
    error: function (err) {
        console.error(err);
    },
});



/* 
Pour les eleves potentiels faut ajouter sa 

<div class="imgContainer"> <img src="https://t3.ftcdn.net/jpg/00/26/43/56/360_F_26435684_nI2nmc5VtQ0N3vbBld4DQFGSXN0G54vj.jpg" alt=""> <img src="https://cdn-icons-png.flaticon.com/512/59/59254.png" alt=""> */






})