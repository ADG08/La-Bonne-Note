const container = document.querySelector(".container"),
        showHide = document.querySelectorAll(".showHide"),
        password = document.querySelectorAll(".motdepasse"),
        password2 = document.querySelectorAll(".motdepasse2"),
        email = document.querySelectorAll('.email');

        showHide.forEach(eyeIcon =>{
            eyeIcon.addEventListener("click", ()=>{
                password.forEach(password =>{
                    if(password.type=="password"){
                        password.type ="text";

                        showHide.forEach(icon =>{
                            icon.classList.replace("fa-eye-slash","fa-eye")
                        })
                    }else{
                        password.type ="password";

                        showHide.forEach(icon =>{
                            icon.classList.replace("fa-eye","fa-eye-slash")
                        })
                    }
                })
                password2.forEach(password =>{
                    if(password.type=="password"){
                        password.type ="text";

                        showHide.forEach(icon =>{
                            icon.classList.replace("fa-eye-slash","fa-eye")
                        })
                    }else{
                        password.type ="password";

                        showHide.forEach(icon =>{
                            icon.classList.replace("fa-eye","fa-eye-slash")
                        })
                    }
                })
            })
        })

        function checkInputs() {
            // trim to remove the whitespaces
            
            if(email == '') {
                setErrorFor(email, 'Email cannot be blank');
            } else if (!isEmail(email)) {
                setErrorFor(email, 'Not a valid email');
            } else {
                setSuccessFor(email);
            }
            
            if(password == '') {
                setErrorFor(password, 'Password cannot be blank');
            } else {
                setSuccessFor(password);
            }
            
            if(password2 == '') {
                setErrorFor(password2, 'Password2 cannot be blank');
            } else if(password !== password2) {
                setErrorFor(password2, 'Passwords does not match');
            } else{
                setSuccessFor(password2);
            }
        }

        function isEmail(email) {
            return /^(([^<>()\[\]\\.,;:\s@"]+(\.[^<>()\[\]\\.,;:\s@"]+)*)|(".+"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/.test(email);
        }