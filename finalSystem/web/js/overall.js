function selects(selected) {
  //console.log("\n\n");
  var x = document.getElementsByClassName("emoji");
  for (var i = 0; i < x.length; i++) {
    x[i].style.backgroundColor = "transparent";
    //console.log(x[i]);
  };
  selected.style.backgroundColor = "black";
  //var y = document.getElementsByClassName("emoji");
  /* for (var i = 0; i < y.length; i++) {
      console.log(i +" " + y[i].childNodes[1].checked);
    }*/
  //console.log(selected.childNodes[1].checked);
  //console.log(selected);
}
