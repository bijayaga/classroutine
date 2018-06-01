function uservalidate(){
    var user = document.getElementById('username').value;
    var pass = document.getElementById('password').value;
    var repass = document.getElementById('confirmPassword').value;

    if(user==""){
        document.getElementById('uname').innerHTML="** User name required";
        return false;
    }
    if((pass.length < 5) || (codename.length > 20)) {
        document.getElementById('pword').innerHTML = "** Password length must be 5 to 20 character";
        return false;
    }

    if(pass!=repass){
        document.getElementById('confirmPass').innerHTML = "** Password not matched";
        return false;
    }
}
