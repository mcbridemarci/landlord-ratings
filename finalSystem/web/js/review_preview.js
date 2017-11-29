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
  //xmlhttp.open("GET", "https://takyon.cs.nmt.edu/apollo.4/marci_hw5/Populator", true);
  xmlhttp.open("GET", "populatorTest.xml", true);
  xmlhttp.send();
}

function show(xml) {
  var i;
  var doc = xml.responseXML;
  //Get the address for the review page 
  var y = doc.getElementsByTagName("address");
  var address = "Rental Review for ";
  address += y[0].getElementsByTagName("address1")[0].childNodes[0].nodeValue;
  // Now put it on the web page 
  document.getElementById("address").innerHTML = address;
  document.getElementById("address_overall").innerHTML = address;
  
  
  //Now lets get all the info for each review 
  var emoji = 0;
  var x = doc.getElementsByTagName("review");
  var image1 = "img/terrible.png";
  var image2 = "img/bad.png";
  var image3 = "img/neutral.png";
  var image4 = "img/ok.png";
  var image5 = "img/happy.png";
  var html = "";


  for (i = 0; i <x.length; i++) { 
    var price = x[i].getElementsByTagName("price")[0].childNodes[0].nodeValue;
    var postNumber = x[i].getElementsByTagName("postNumber")[0].childNodes[0].nodeValue;
    var overallDesc = x[i].getElementsByTagName("overallThoughts")[0].childNodes[0].nodeValue;
    html += "<div class='container reviewBox' id='box'>"+
            "<p class='postHead'>Post #<span id='postNum'>"+postNumber+"</span></p>" +
            "<p class='postHead'>Price: $<span id='price'>"+price+"</span></p>"+
            "<p class='stars'>Rental Rating: <img id='emoji'></p>"+
            "<p class='stars'> Overall thoughts: </p>"+
            "<p id='overallDesc'>"+overallDesc+"</p>";
    
    var collapse = "collapseExample";
    collapse += postNumber;
    html += "<a class='' data-toggle='collapse' href='#"+collapse+"'"+
            "aria-expanded='false' aria-controls='collapseExample'>" +
            "More<span class='glyphicon glyphicon-chevron-down'></a>";
     
    html += "<div class='collapse' id='"+collapse+"'>"+ 
            "<p>"+ x[i].getElementsByTagName("bedrooms")[0].childNodes[0].nodeValue+"</p>"+
            "<p>"+x[i].getElementsByTagName("bathrooms")[0].childNodes[0].nodeValue +"</p>"+
            "<p>"+x[i].getElementsByTagName("leaseLength")[0].childNodes[0].nodeValue +"</p>"+
            "<p>"+x[i].getElementsByTagName("furnished")[0].childNodes[0].nodeValue +"</p>"+
            "<p>"+x[i].getElementsByTagName("leaseType")[0].childNodes[0].nodeValue +"</p>"+
            "<p>"+x[i].getElementsByTagName("lateFee")[0].childNodes[0].nodeValue +"</p>"+
            "<p>"+x[i].getElementsByTagName("lateDays")[0].childNodes[0].nodeValue +"</p>"+
            "<p>"+x[i].getElementsByTagName("paymentMethods")[0].childNodes[0].nodeValue +"</p>"+
            "<p>"+x[i].getElementsByTagName("deposit")[0].childNodes[0].nodeValue +"</p>"+
            "<p>"+x[i].getElementsByTagName("depositReturned")[0].childNodes[0].nodeValue +"</p>"+
            "<p>"+x[i].getElementsByTagName("receiptGiven")[0].childNodes[0].nodeValue +"</p>"+
            "<p>"+x[i].getElementsByTagName("utilities")[0].childNodes[0].nodeValue +"</p>"+
            "<p>"+x[i].getElementsByTagName("appliances")[0].childNodes[0].nodeValue +"</p>"+
            "<p>"+x[i].getElementsByTagName("cooling")[0].childNodes[0].nodeValue +"</p>"+
            "<p>"+x[i].getElementsByTagName("heating")[0].childNodes[0].nodeValue +"</p>"+
            "<p>"+x[i].getElementsByTagName("parking")[0].childNodes[0].nodeValue +"</p>"+
            "<p>"+x[i].getElementsByTagName("smoking")[0].childNodes[0].nodeValue +"</p>"+
            "<p>"+x[i].getElementsByTagName("petsAllowed")[0].childNodes[0].nodeValue +"</p>"+
            "<p>"+x[i].getElementsByTagName("petDeposit")[0].childNodes[0].nodeValue +"</p>"+
            "<p>"+x[i].getElementsByTagName("petWeight")[0].childNodes[0].nodeValue +"</p>"+
            "<p>"+x[i].getElementsByTagName("petSize")[0].childNodes[0].nodeValue +"</p>"+
            "<p>"+x[i].getElementsByTagName("lawnMaintenance")[0].childNodes[0].nodeValue +"</p>"+
            "<p>"+x[i].getElementsByTagName("responseTime")[0].childNodes[0].nodeValue +"</p>"+
            "<p>"+x[i].getElementsByTagName("maintenanceTime")[0].childNodes[0].nodeValue +"</p>"+
            "<p>"+x[i].getElementsByTagName("maintenanceQuality")[0].childNodes[0].nodeValue +"</p>"+
            + "</div>";
    html += "</div>";
    
    

      /*
    emoji = x[i].getElementsByTagName("overallRating")[0].childNodes[0].nodeValue;
    if (emoji == 1) {
        function showImage() {
            var img = document.createElement("img");
            img.src = image1;
            img.width = width;
            img.height = height;
            // This next line will just add it to the <body> tag
            document.getElementById("emoji").innerHTML=img;
        }
    } else if (emoji == 2) {
        newImg.onload = function() {
        spot.src = this.src;
        }
        newImg.src = image2;
        
    }else if (emoji == 3) {
        newImg.onload = function() {
        spot.src = this.src;
        }
        newImg.src = image3;
        
    }else if (emoji == 4) {
        newImg.src = image4;
        
    }else if (emoji == 5) {
        newImg.src = image5;     
    } 
*/
        
    }
    document.getElementById("allReviews").innerHTML = html;
}
