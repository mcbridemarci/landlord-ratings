function showXML(xmlStr) {
  var doc = (new DOMParser()).parseFromString(xmlStr, "text/xml");

  var i;

  //Get the address for the review page
  var y = doc.getElementsByTagName("address")[0].childNodes[0].nodeValue;
  var address = "Rental Review for ";
  address += y;
  // Now put it on the web page
  document.getElementById("address").innerHTML = address;
  document.getElementById("address_overall").innerHTML = address;


  //Now lets get all the info for each review
  var x = doc.getElementsByTagName("review");
  var html = "";

  for (i = 0; i < x.length; i++) {
    var price = x[i].getElementsByTagName("price")[0].childNodes[0].nodeValue;
    var postNumber = x[i].getElementsByTagName("postNumber")[0].childNodes[0].nodeValue;
    var overallDesc = x[i].getElementsByTagName("overallThoughts")[0].childNodes[0].nodeValue;
    var emoji = x[i].getElementsByTagName("overallRating")[0].childNodes[0].nodeValue;
    if (emoji == 1) {
        var emojiChoice = "<img class='emoji' src='img/terrible.png'/>";
    } else if (emoji == 2) {
        var emojiChoice = "<img class='emoji' src='img/bad.png'/>";
    }else if (emoji == 3) {
        var emojiChoice = "<img class='emoji' src='img/neutral.png'/>";
    }else if (emoji == 4) {
        var emojiChoice = "<img class='emoji' src='img/ok.png'/>";
    }else if (emoji == 5) {
        var emojiChoice = "<img class='emoji' src='img/happy.png'/>";
    }

    var furnished = x[i].getElementsByTagName("furnished")[0].childNodes[0].nodeValue;
    if (furnished == 1){
        furnished = "Yes";
    } else {
        furnished = "No";
    }
    var leaseType = x[i].getElementsByTagName("leaseType")[0].childNodes[0].nodeValue;
    if (leaseType == 3){
        leaseType = "Month-to-Month & Yearly";
    } else if (leaseType == 2){
        leaseType = "Yearly";
    } else if(leaseType == 1){
        leaseType = "Month-to-Month";
    } else{
        leaseType = "Unknown";
    }

    //TODO
    var payment = x[i].getElementsByTagName("paymentMethods")[0].childNodes[0].nodeValue;
    if (payment == 4){
        payment = "Direct Deposit";
    } else if(payment == 3){
        payment = "Mobile App & Checks";
    } else if (payment == 2){
        payment = "Mobile App";
    } else if(payment == 1){
        payment = "Checks";
    } else if(payment == 5){
        payment = "Direct Deposit & Checks";
    }else if(payment == 6){
        payment = "Direct Deposit & Mobile App";
    }else if(payment == 7){
        payment = "Direct Deposit, Mobile App & Checks";
    }else{
        payment = "Unknown";
    }
    var itemized = x[i].getElementsByTagName("receiptGiven")[0].childNodes[0].nodeValue;
    if (itemized == 1){
        itemized = "Yes";
    } else {
        itemized = "No";
    }
    var utilities = x[i].getElementsByTagName("utilities")[0].childNodes[0].nodeValue;
    if (utilities == 1){
        utilities = "Yes";
    } else {
        utilities = "No";
    }

    // TODO: Check for correctness... don't know what Number(ap).toString(2) does.
    var ap = x[i].getElementsByTagName("appliances")[0].childNodes[0].nodeValue;
    var apResult = "";

    if ((ap & 0b0001) != 0) {
      apResult += "Refrigerator, ";
    }
    if ((ap & 0b0010) != 0) {
      apResult += "Stove Top, ";
    }
    if ((ap & 0b0100) != 0) {
      apResult += "Oven, ";
    }
    if ((ap & 0b1000) != 0) {
      apResult += "Microwave, ";
    }
    if (ap == 0) {
      apResult = "Unknown";
    } else { /* delete last space and comma, this is lazy but who cares */
      apResult = apResult.substring(0, apResult.length - 2);
    }

    //TODO: check for correctness
    var cool = Number(x[i].getElementsByTagName("cooling")[0].childNodes[0].nodeValue);
    var cooling = "";
    if ((cool & 0b0001) != 0) {
      cooling += "AC, ";
    }
    if ((cool & 0b0010) != 0) {
      cooling += "Swamp Cooler, ";
    }
    if ((cool & 0b0100) != 0) {
      cooling += "Fan Only, ";
    }
    if ((cool & 0b1000) != 0) {
      cooling = "None, ";
    }
    if (cool == 0) {
      cooling = "Unknown";
    } else { /* delete last space and comma, this is lazy but who cares */
      cooling = cooling.substring(0, cooling.length - 2);
    }

    var heating = x[i].getElementsByTagName("heating")[0].childNodes[0].nodeValue;
    if (heating == 1){
        heating = "Yes";
    } else {
        heating = "No";
    }
    //TODO: check for correctness
    var park = Number(x[i].getElementsByTagName("parking")[0].childNodes[0].nodeValue);
    var parking = "";
    if ((park & 0b0001) != 0) {
      parking += "Covered, ";
    }
    if ((park & 0b0010) != 0) {
      parking += "Garage, ";
    }
    if ((park & 0b0100) != 0) {
      parking += "Street Parking, ";
    }
    if ((park & 0b1000) != 0) {
      parking += "Assigned Parking, ";
    }
    if (park == 0) {
      parking = "Unknown";
    } else { /* delete last space and comma */
      parking = parking.substring(0, parking.length - 2);
    }

    var smoking = x[i].getElementsByTagName("smoking")[0].childNodes[0].nodeValue;
    if (smoking == 1){
        smoking = "Yes";
    } else {
        smoking = "No";
    }
    var petsAllowed = x[i].getElementsByTagName("petsAllowed")[0].childNodes[0].nodeValue ;
    if (petsAllowed == 1){
        petsAllowed = "Yes";
    } else {
        petsAllowed = "No";
    }
    var petSize = x[i].getElementsByTagName("petSize")[0].childNodes[0].nodeValue;
    if (payment == 4){
        payment = "Large";
    } else if(payment == 3){
        payment = "Medium & Small";
    } else if (payment == 2){
        payment = "Medium";
    } else if(payment == 1){
        payment = "Small";
    } else if(payment == 5){
        payment = "Large & Small";
    }else if(payment == 6){
        payment = "Large & Medium";
    }else if(payment == 7){
        payment = "Large, Medium & Small";
    }else{
        payment = "Unknown";
    }
    var lawn = x[i].getElementsByTagName("lawnMaintenance")[0].childNodes[0].nodeValue;
    if (lawn == 1){
        lawn = "Yes";
    } else {
        lawn = "No";
    }
    html += "<div class='container reviewBox' id='box'>"+
            "<p class='postHead'>Post #<span id='postNum'>"+postNumber+"</span></p>" +
            "<p class='postHead'>Price: $<span id='price'>"+price+"</span></p>"+
            "<p class='stars'>Rental Rating: "+emojiChoice+"</p>"+
            "<p class='stars'> Overall thoughts: </p>"+
            "<p id='overallDesc'>"+overallDesc+"</p>";

    var collapse = "collapseExample";
    collapse += postNumber;
    html += "<div class='more'><a data-toggle='collapse' href='#"+collapse+"'"+
            "aria-expanded='false' aria-controls='collapseExample'>" +
            "More<span class='glyphicon glyphicon-chevron-down'></a></div>";

    html += "<div class='collapse' id='"+collapse+"'>"+
            "<h4 class='details'>Rental Details</h4>"+
            "<hr class='line-separator'>"+
            "<p><span class='info'>Number of bedrooms: </span>"+
            x[i].getElementsByTagName("bedrooms")[0].childNodes[0].nodeValue+"</p>"+
            "<p><span class='info'>Number of bathrooms: </span> "+
            x[i].getElementsByTagName("bathrooms")[0].childNodes[0].nodeValue +"</p>"+
            "<p><span class='info'>Length of lease: </span>"+
            x[i].getElementsByTagName("leaseLength")[0].childNodes[0].nodeValue +"</p>"+
            "<p><span class='info'>Place furnished: </span>"+
            furnished+"</p>"+
            "<p><span class='info'>Type of lease allowed: </span>"+
            leaseType+"</p>"+
            "<p><span class='info'>Late Fee: </span>"+
            x[i].getElementsByTagName("lateFee")[0].childNodes[0].nodeValue +"</p>"+
            "<p><span class='info'>Late days allowed per month: </span>"+
            x[i].getElementsByTagName("lateDays")[0].childNodes[0].nodeValue +"</p>"+
            "<p><span class='info'>Payment methods allowed: </span>"+
            payment+"</p>"+
            "<p><span class='info'>Deposit amount: </span>"+
            x[i].getElementsByTagName("deposit")[0].childNodes[0].nodeValue +"</p>"+
            "<p><span class='info'>Amount returned from deposit: </span>"+
            x[i].getElementsByTagName("depositReturned")[0].childNodes[0].nodeValue +"</p>"+
            "<p><span class='info'>Itemized receipt given with deposit decution: </span>"+
            itemized+"</p>"+
            "<p><span class='info'>Utilities Included: </span>"+
            utilities+"</p>"+
            "<p><span class='info'>Appliances Included: </span>"+
            apResult+"</p>"+
            "<p><span class='info'>Cooling: </span>"+
            cooling +"</p>"+
            "<p><span class='info'>Heating: </span>"+
            heating +"</p>"+
            "<p><span class='info'>Parking: </span>"+
            parking +"</p>"+
            "<p><span class='info'>Smoking Permitted: </span>"+
            smoking+"</p>"+
            "<p><span class='info'>Are pets allowed: </span>"+
            petsAllowed+"</p>"+
            "<p><span class='info'>Pet deposit amount: </span>"+
            x[i].getElementsByTagName("petDeposit")[0].childNodes[0].nodeValue +"</p>"+
            "<p><span class='info'>Pet weight restriction: </span>"+
            x[i].getElementsByTagName("petWeight")[0].childNodes[0].nodeValue +"</p>"+
            "<p><span class='info'>Pet Size Restriction: </span>"+
            petSize+"</p>"+
            "<p><span class='info'>Lawn maintenance is covered by landlord: </span>"+
            lawn +"</p>"+
            "<p><span class='info'>Landlord response time: </span>"+
            x[i].getElementsByTagName("responseTime")[0].childNodes[0].nodeValue +"</p>"+
            "<p><span class='info'>Maintenance response time: </span>"+
            x[i].getElementsByTagName("maintenanceTime")[0].childNodes[0].nodeValue +"</p>"+
            "<p><span class='info'>Maintenance quality: </span>"+
            x[i].getElementsByTagName("maintenanceQuality")[0].childNodes[0].nodeValue +"</p>"+
            + "</div>";
    html += "</div></div>";
    }
    document.getElementById("allReviews").innerHTML = html;
}
