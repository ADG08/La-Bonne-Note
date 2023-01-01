const adresse = document.querySelectorAll(".adresse");
const complement = document.querySelectorAll(".complement");
const arrondissement = document.querySelectorAll(".arrondissement");
const naissance = document.querySelectorAll('.naissance');
//var form = document.formulaire;

/*lance de la fonction checkInputs*/
form.addEventListener('submit', e => {
	e.preventDefault();
	checkInputs();
});

/*fonction checkInput*/
function checkInputs() {   
    if(adresse == '') {
        setErrorFor(adresse, "L'adresse ne peut pas être vide");
    } else {
        setSuccessFor(adresse);
    }
    
    setSuccessFor(complement);
    
    if(arrondissement == '') {
        setErrorFor(arrondissement, "L'arrondissement ne peut pas être vide");
    } else if(arrondissement.length<5) {
        setErrorFor(arrondissement, "L'arrondissement ne peut pas faire moins de 5 chiffres");
    } else if (arrondissement.values < 75001 || arrondissement.values > 75020){
        setErrorFor(arrondissement, "Le nombre doit être compris entre 75001 et 75020");
    } else {
        setSuccessFor(arrondissement);
    }
}

/*fonction error, succes*/
function setErrorFor(input, message) {
    const formControl = input.parentElement;
    const small = formControl.querySelector('small');
    formControl.className = 'input-box error';
    small.innerText = message;
}

function setSuccessFor(input) {
    const formControl = input.parentElement;
    formControl.className = 'input-box success';
}