<html>
<!-- This page will be the main web page that will contain the title, description, map and button to create a new review -->
	<head>
		<title>Socorro Rental Reviews | Home</title>
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

		<!-- Script for google maps --> 
    <script src="js/map.js"></script>
    <script async defer
      src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCS3xTyXT5UrvxdKH9g7D9PtG3H02TRi7c&callback=initMap">
    </script>
	</head>

	<body>
		<div class="container-fluid">
			<section class="titleArea">
				<!-- this area contains the title and/or any elements we want on other pages. -->
				<h1><a href="index.html" class="link">Socorro Rental Reviews</a></h1>
			</section>

			<!-- visually separate sections -->
			<hr class="line-separator">

			<section class="mainDescriptionArea">
				<!-- this area contain the main description and the purpose of this website -->
				<h2><span>About</span></h2>
				<p>
					Socorro is a small community with a high demand for property rentals among us New Mexico Tech students, especially those that are near campus. Often landlords view this as the perfect opportunity to rent their homes, sadly without keeping up with basic home maintenance.
				</p>
				<p>
					The goal of this website is to help other techies be informed about their soon-to-be landlord and rental property prior to signing their lease.
				</p>
				<p>
					So please help by leaving a review about your current home! This will help all other students know what to expect.
				</p>
				<p>
					Click on the pins on the map bellow to look at the reviews left by other techies for their property rental.
					Or Click on <a href="review_template.html" style="color:black" class="inText">"Create A New Review"</a> to help out and review your place.
				</p>
				<h2><span>Please Note</span></h2>
				<p>
					In order to leave a review, you must have a New Mexico Tech email address.
				</p>
			</section>

			<!-- visually separate sections -->
			<hr class="line-separator">

			<section class="mapArea">
				<!-- this area contain a button to create new reviews and a map -->
        <div class="centerText">
  				<a href="check_email.html" style="color:white" class="btn button">Create A New Review<span class="glyphicon glyphicon-chevron-right"></span></a>
        </div>

        <a href="#map"></a>
				<div id="map"></div>
			</section>
		</div>

    <hr class="line-separator">
  	<footer>
  		<p>
  			Created by techies - To help out other techies
  		</p>
  		<p><a href="legal.html" class="link">Legal Disclaimer</a></p>
  	</footer>
	</body>
</html>
