function loadData(){
  var xmlhttp = new XMLHttpRequest();
  //Check HTTP statuses before display the data
  xmlhttp.onreadystatechange = function() {
//alert(this.readyState + ":" + this.status);
    if (this.readyState == 4 && this.status == 200) {
      show(this);
    }
  };
//alert("load data");
  xmlhttp.open("GET", "https://takyon.cs.nmt.edu/apollo.4/marci_hw5/JobServlet", true);
  xmlhttp.send();
}
function show(xml) {
  var i;
  var doc = xml.responseXML;
  var data="";
  var x = doc.getElementsByTagName("job");
  for (i = 0; i <x.length; i++) { 
    data += "" +
    x[i].getElementsByTagName("title")[0].childNodes[0].nodeValue +
    "<br />" +
    x[i].getElementsByTagName("company")[0].childNodes[0].nodeValue +
    "<br />" +
    x[i].getElementsByTagName("location")[0].childNodes[0].nodeValue +
    "<br />" +
    x[i].getElementsByTagName("date")[0].childNodes[0].nodeValue +
    "<br /><br />" +
    x[i].getElementsByTagName("description")[0].childNodes[0].nodeValue +
    "<br /><br />";
  }
  document.getElementById("experienceSection").innerHTML = data;
}
