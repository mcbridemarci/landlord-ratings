function selects(selected) {
  var x = document.getElementsByClassName("emoji");
  for (var i = 0; i < x.length; i++) {
    x[i].style.backgroundColor = "transparent";
  };
  selected.style.backgroundColor = "black";
}
