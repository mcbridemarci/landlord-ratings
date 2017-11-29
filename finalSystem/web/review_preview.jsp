<!DOCTYPE html>

<html>
  <head>
    <title>Socorro Rental Reviews | Overall</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- Latest compiled and minified CSS -->
    <link rel="stylesheet"
    href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <!-- jQuery library -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <!-- Latest compiled JavaScript -->
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <!-- our stylesheets -->
    <link rel="stylesheet" type="text/css" href="style.css">
    <link rel="stylesheet" type="text/css" href="main.css">
    <link rel="stylesheet" type="text/css" href="display_reviews.css">
    <script src="js/main.js"></script>
    <script src="js/review_preview.js"></script>
    <script> /* moving this js to external file breaks it due to JSP */
      function loadData() {
        var xml = `<%= (String)request.getAttribute("xml")%>`;
        showXML(xml);
      }
    </script>
  </head>

  <body onload="loadData();">
    <section class="titleArea">
      <!-- this area contains the title and/or any elements we want on other pages. -->
      <h1><a href="index.html" class="link">Socorro Rental Reviews</a></h1>
    </section>

    <!-- visually separate sections -->
    <hr class="line-separator">

    <section class="mainDescriptionArea">
      <h2><span id="address"></span></h2>
      <h3 id="address" class="centerText"> </h3>
      <div class="container overall">
        <h3 class="centerText">All <span id="address_overall"></span></h3>
      </div>

      <div id="allReviews">
          <!-- review_preview.js will populate this area-->
      </div>

      <br><br><br>

      <div class="centerText">
        <button onClick="backPage()" class="btn button"><span class="glyphicon glyphicon-chevron-left"></span>Back</button>
      </div>

    </section>
  </body>

    <!-- visually separate sections -->
    <hr class="line-separator">

  <footer>
    <p>
      Created by techies - To help out other techies
    </p>
    <p><a href="legal.html" class="link">Legal Disclaimer</a></p>  </footer>
</html>
