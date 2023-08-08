function check() {
    kiemtra();
    validateEmail();
    checkhoten();

    return kiemtra() && validateEmail() && checkhoten();
}

function kiemtra() {
    email = document.getElementById("Email").value;
    loi_email = document.getElementById("loi_email");
    sdt = document.getElementById("SDT").value;
    loi_sdt = document.getElementById("loi_sdt");
/*    var tim_nam = new Date(ngaysinh);
    var year = tim_nam.getFullYear();*/

    check = false;

    if (sdt.length < 10 || sdt.length > 12) {
        loi_sdt.innerHTML = "Phone number must have 10 to 12 letters.";
        check = false;
    }
        else if (sdt.charAt(0) != "0") {
            loi_sdt.innerHTML = "First number must be 0.";
            check = false;
        }
        else {
            loi_sdt.innerHTML = "";
            check = true;
        }
  
    return check;
}


function validateEmail() {
    check = true;
    loi_email = document.getElementById("loi_email");
    email = document.getElementById("Email").value;
    atpos = email.indexOf("@");

    dotpos = email.lastIndexOf(".");

    if (atpos < 0 || (dotpos - atpos < 2)) {
        loi_email.innerHTML = "format error!";
        check = false;
    }
    return check;
}


function checkhoten() {
    loi_ht = document.getElementById("loi_ht");
    hoten = document.getElementById("hoten").value;
    check = true;


    for (let i = 0; i < hoten.length; i++) {

        if (isNaN(hoten[i]) == true) {

            loi_ht.innerHTML = "error!";
            check = false;
        }
        else {
            loi_ht.innerHTML = "";
            check = true;
        }

        return check;

    }
}

