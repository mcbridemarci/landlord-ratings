function checkEmail() {
    var x = document.getElementById("email");
    var email = document.getElementById("email").value;
    var split = email.split("@");

    var message = document.getElementById("message");
    var button = document.getElementById("nextButton")

    if (split.length == 2 && split[1] == "student.nmt.edu"){
      button.disabled = false;
      button.style = "background-color: #373737"
      message.innerHTML = "Email address valid";
      message.style = "color: green;";
    }
    else {
      button.disabled = true;
      button.style = "background-color: #CCC"
      message.innerHTML = "Email address invalid. Must end in @student.nmt.edu";
      message.style = "color: red;";
    }
}
