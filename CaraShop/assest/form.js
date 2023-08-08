
function check1() {
    var ten = document.getElementById("name").value;
    var email = document.getElementById("email").value;
    var password = document.getElementById("password").value;
    var number = document.getElementById("number").value;

    var loi_name = document.getElementById("tb_name");
    var loi_email = document.getElementById("tb_email");
    var loi_pass = document.getElementById("tb_pass");
    var loi_number = document.getElementById("tb_number");

    check1 = true;

    if (ten == "") {
        loi_name.innerHTML = "fill name!";
        check1 = false;
    }
    else {
        loi_name.innerHTML = "";
        check1 = true;
    }

    if (email == "") {
        loi_email .innerHTML = "fill email!";
        check1 = false;
    }
    else {
        loi_email .innerHTML = "";
        check1 = true;
    }

    if (password == "") {
        loi_pass.innerHTML = "fill password!";
        check1 = false;
    }
    else {
        loi_pass.innerHTML = "";
        check1 = true;
    }

    if (number == "") {
        loi_number.innerHTML = "fill number phone!";
        check1 = false;
    }
    else {
        loi_number.innerHTML = "";
        check1 = true;
    }

    return check1;

}
/*
submitBtn.addEventListener('click', () =>{ 
    if(ten !=null){ // sign up page
        if(ten.value.lenght <3){
            showAlert('name must be 3 letters long');
        } else if (!email.value.lenght){
            showAlert('enter your wmail');
        } else if(password.value.length < 8){
            showAlert('password should be 8 letters long');
        } else if(!number.value.lenght){
            showAlert('enter your phone mumber');
        } else if(!Number(number.value)|| mumber.value.lenght <10){
            showAlert('invalid number, please enter vailid one');
        } else if(!tac.checked){
            showAlert('you must agree to our terms and conditions');
        } else{
            // submit form
            // loader.style.display = 'block';
            sendData('signup', {
                name: ten.value,
                email: email.value,
                password: password.value,
                number: number.value,
                tac: tac.checked,
                notification: notification.checked,
                seller: false
            })
        }
    } else{
        //login page
        if(!email.value.length || !password.value.length){
            showAlert('fill all the inputs');
        } else{
            // loader.style.display = 'block';
            sendData('login', {
                name: ten.value,
                email: email.value,
                password: password.value,
                
        })
    }
    }
})*/

