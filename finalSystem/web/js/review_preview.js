function loadData(){;
  var xmlhttp = new XMLHttpRequest();
  //Check HTTP statuses before display the data
  xmlhttp.onreadystatechange = function() {
//alert(this.readyState + ":" + this.status);
    if (this.readyState == 4 && this.status == 200) {
      show(this);
    }
  };
//alert("load data");
  xmlhttp.open("GET", "https://takyon.cs.nmt.edu/apollo.4/marci_hw5/Populator", true);
  //xmlhttp.open("GET", "populatorTest.xml", true);
  xmlhttp.send();
}

function show(xml) {
  var i;
  var doc = xml.responseXML;
  var data = "";
  //Get the address for the review page 
  var y = doc.getElementsByTagName("address");
  var address = "Rental Review for ";
  address += y[0].getElementsByTagName("address1")[0].childNodes[0].nodeValue;
  // Now put it on the web page 
  document.getElementById("address").innerHTML = address;
  document.getElementById("address_overall").innerHTML = address;
  
  
  //Now lets get all the info for each review 
  var postNum = "";
  var price = "";
  var emoji = 0;
  var overallDesc = "";
  var x = doc.getElementsByTagName("review");
  for (i = 0; i <x.length; i++) { 
    postNum += x[i].getElementsByTagName("postNumber")[0].childNodes[0].nodeValue;
    document.getElementByClassName("postNum").innerHTML = postNum;
    
    price += x[i].getElementsByTagName("price")[0].childNodes[0].nodeValue;
    document.getElementByClassName("price").innerHTML = price;
    /*
    emoji = x[i].getElementsByTagName("overallRating")[0].childNodes[0].nodeValue;
    if (emoji == 1) {
        
    } else if (emoji == 2) {
        
    }else if (emoji == 3) {
        
    }else if (emoji == 4) {
        
    }else if (emoji == 5) {
        
    } */
   overallDesc += x[i].getElementsByTagName("overallThoughts")[0].childNodes[0].nodeValue;
   document.getElementByClassName("overallDesc").innerHTML = overallDesc;

    /*
    x[i].getElementsByTagName("bedrooms")[0].childNodes[0].nodeValue +
    "<br />" +
    x[i].getElementsByTagName("bathrooms")[0].childNodes[0].nodeValue +
    "<br /><br />" +
    x[i].getElementsByTagName("leaseLength")[0].childNodes[0].nodeValue +
    x[i].getElementsByTagName("furnished")[0].childNodes[0].nodeValue +
    x[i].getElementsByTagName("leaseType")[0].childNodes[0].nodeValue +
    x[i].getElementsByTagName("lateFee")[0].childNodes[0].nodeValue +
    x[i].getElementsByTagName("lateDays")[0].childNodes[0].nodeValue +
    x[i].getElementsByTagName("paymentMethods")[0].childNodes[0].nodeValue +
    x[i].getElementsByTagName("deposit")[0].childNodes[0].nodeValue +
    x[i].getElementsByTagName("depositReturned")[0].childNodes[0].nodeValue +
    x[i].getElementsByTagName("receiptGiven")[0].childNodes[0].nodeValue +
    x[i].getElementsByTagName("utilities")[0].childNodes[0].nodeValue +
    x[i].getElementsByTagName("appliances")[0].childNodes[0].nodeValue +
    x[i].getElementsByTagName("cooling")[0].childNodes[0].nodeValue +
    x[i].getElementsByTagName("heating")[0].childNodes[0].nodeValue +
    x[i].getElementsByTagName("parking")[0].childNodes[0].nodeValue +
    x[i].getElementsByTagName("smoking")[0].childNodes[0].nodeValue +
    x[i].getElementsByTagName("petsAllowed")[0].childNodes[0].nodeValue +
    x[i].getElementsByTagName("petDeposit")[0].childNodes[0].nodeValue +
    x[i].getElementsByTagName("petWeight")[0].childNodes[0].nodeValue +
    x[i].getElementsByTagName("petSize")[0].childNodes[0].nodeValue +
    x[i].getElementsByTagName("lawnMaintenance")[0].childNodes[0].nodeValue +
    x[i].getElementsByTagName("responseTime")[0].childNodes[0].nodeValue +
    x[i].getElementsByTagName("maintenanceTime")[0].childNodes[0].nodeValue +
    x[i].getElementsByTagName("maintenanceQuality")[0].childNodes[0].nodeValue +

  }
  document.getElementById("experienceSection").innerHTML = data; */
    }
}
