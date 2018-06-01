
$("#codeName").onchange(function (event) {
    $.ajax({
        url:"${g.createLink(controller:'teacher',action: 'checkIfExist')}",
        method:"post",
        success: function (data) {
            alert("code name already exist");
            console.log(data);
        }

    });
});
function validate(){
    // alert("here");
    var fullname = document.getElementById('fullName').value;
    var codename = document.getElementById('codeName').value;
    var mobileno = document.getElementById('mobileNo').value;
    var email = document.getElementById('email').value;

    if(fullname==""){
        // alert("Subject name required");
        document.getElementById('fname').innerHTML="** Full name required";
        return false;
    }

    if(!isNaN(fullname)){
        document.getElementById('fname').innerHTML="** Only characters are allowed for full name";
        return false;
    }

    if(codename==""){
        // alert("Subject name required");
        document.getElementById('cname').innerHTML="** Code name required";
        return false;
    }

    if((codename.length < 2) || (codename.length > 3)){
        document.getElementById('cname').innerHTML="** Code name length must be 2 or 3 character";
        return false;
    }

    if(mobileno==""){
        // alert("Subject name required");
        document.getElementById('mobile').innerHTML="** Mobile no. required";
        return false;
    }

    if(isNaN(mobileno)){
        document.getElementById('mobile').innerHTML="** Mobile no must be digits only";
        return false;
    }

    if(mobileno.length!=10){
        document.getElementById('mobile').innerHTML="** Mobile no must be 10 digits";
        return false;
    }

    if(email==""){
        document.getElementById('emailid').innerHTML="** Email required";
        return false;
    }

    if(email.indexOf('@') <=0){
        document.getElementById('emailid').innerHTML="** @ Invalid position";
        return false;
    }

    if((email.charAt(email.length-4)!='.') && (email.charAt(email.length-3)!='.')){
        document.getElementById('emailid').innerHTML="** .(dot) Invalid position";
        return false;
    }


}