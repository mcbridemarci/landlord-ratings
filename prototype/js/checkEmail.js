function checkEmail() {
    var x = document.getElementById("email");
    var email = document.getElementById("email").value;
    var split = email.split("@");

    var message = document.getElementById("message");

    if (split.length == 2 && split[1] == "student.nmt.edu"){
      document.getElementById("nextButton").disabled = false;
      message.innerHTML = "Email address valid";
      message.style = "color: green;";
    }
    else {
      document.getElementById("nextButton").disabled = true;
      message.innerHTML = "Email address invalid. Must end in @student.nmt.edu";
      message.style = "color: red;";
    }

}
