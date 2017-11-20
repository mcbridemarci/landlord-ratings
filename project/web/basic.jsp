<!DOCTYPE html>
<html lang="en">
        <script type="text/javascript" src="js/basic.js"></script>
        <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCS3xTyXT5UrvxdKH9g7D9PtG3H02TRi7c&libraries=places&callback=initAutocomplete" async defer>
        </script>
	<head>
		<title>Basic Information | Socorro Rental Reviews</title>
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<!-- Latest compiled and minified CSS -->
		<link rel="stylesheet"
		href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
		<!-- jQuery library -->
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
		<!-- Latest compiled JavaScript -->
		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
		<!-- our stylesheets -->
		<link rel="stylesheet" type="text/css" href="basic.css">
	</head>
	<body>
		<div class ="container">
			<section class="titleArea">
				<h1><a href="index.html" class="link">Socorro Rental Reviews</a></h1>
				<h2>Review Form</h2>
			</section>

			<!-- visually separate sections -->
			<hr class="line-separator">

      <section class="content" id="contentSection">
                    <input type="text" id="coordinate" name="coordinate" >  
        <h3 class="subtitleArea">Basic Information:</h3>
        <form action="/project/javaServlet" method="post">
          <div class="question">
            <h4>Rental Address</h4>
            <input id="autocomplete" placeholder="Enter your address here, the rest of the fields bellow should autocomplete"
             onFocus="geolocate()" type="text"></input>
          </div>
          <div class="question">
            <h4>Rental Street Address</h4>
            <input type="hidden" id="street_number" name="location" >
            <input type="text" id="route" name="location" required>
          </div>
          <div class="question">
            <h4>Rental Unit:</h4>
            <input type="text" id="unit" name="unit">
          </div>
          <div class="question">
            <h4>Rental City</h4>
            <input type="text" id="locality" name="city" required>
          </div>
          <div class="question">
            <h4>Rental State</h4>
            <input type="text" id="administrative_area_level_1" name="state"  required>
          </div>
          <div class="question">
            <h4>Zip Code</h4>
            <input type="text" id="postal_code" name="zip" required>
          </div>
          <div class="question">
            <h4>Rental Country</h4>
            <input type="text" id="country" name="country" required>
          </div> 
          
          <div class="question">
            <h4>Number of bedrooms:</h4>
            <input type="number" id="numbe_bed" value ="1" name="bedrooms" required />
          </div>

          <div class="question">
            <h4>Number of bathrooms:</h4>
            <input type="number" id="numbe_bath" value ="1" name="bathrooms" required />
          </div>

          <div class="question">
            <h4>Length of your lease:</h4>
            <input type="text" id="lease_length" placeholder ="e.g. One Year" name="lease" required />
          </div>

          <div class="question">
            <h4 for="furnished">Furnished:</h4>
            <fieldset>
              <label><input type="radio" name="furnished" value="Yes" required /> Yes</label>
              <label><input type="radio" name="furnished" value="No" /> No</label>
            </fieldset>
          </div>

          <div class="question">
            <h4>Type of lease allowed:</h4>
            <fieldset>
                <label for="month">
                  <input type="checkbox" id="month" name="lease_allowed" value="monthly" />
                  Month-to-Month
                </label>
                <label for="yearly">
                  <input type="checkbox" id="yearly" name="lease_allowed" value="year" />
                  Yearly
                </label>
            </fieldset>
          </div>

          <div class="question">
            <h4>Late fee:</h4>
            <input type="text" id="late_fee" name="fee" placeholder = "Dollar amount" required />
          </div>

          <div class="question">
            <h4>Late days allowed per month:</h4>
            <input type="text" id="late_days" name="late_days" required />
          </div>

          <div class="question">
            <h4>Payment Methods allowed:</h4>
            <fieldset>
              <label for="check">
                <input type="checkbox"  id="check" name="payments_allowed" value="checks" />
                Check
              </label>
              <label for="mobile_app">
                <input type="checkbox"  id="mobile_app" name="payments_allowed" value="apps" />
                Mobile App
              </label>
              <label for="direct_deposit">
                <input type="checkbox"  id="direct_deposit" name="payments_allowed" value="direct" />
                Direct Deposit
              </label>
            </fieldset>
          </div>

          <div class="question">
            <h4>Deposit amount:</h4>
            <input type="number" id="deposit" name="deposit_amnt" required />
          </div>

          <div class="question">
            <h4>Amount returned from deposit:</h4>
            <input type="number" id="deposit_returned" name="return_deposit" required />
          </div>

          <div class="question">
            <h4>Itemized receipt given with deposit decution</h4>
            <fieldset>
              <label><input type="radio" name="receipt" value="Yes" required /> Yes</label>
              <label><input type="radio" name="receipt" value="No" /> No</label>
            </fieldset>
          </div>
          <input type="hidden" name="action" value="basic_page" />
          <button type="submit" id="nextButton" class="butt">Next<span class="glyphicon glyphicon-chevron-right"></span></button>

        </form>
      </section>

			<hr class="line-separator">
	  	<footer>
	  		<p>
	  			1 section out of 5 complete... We promise the rest aren't as long :)
	  		</p>
	  		<p><a href="legal.html" class="link">Legal Disclaimer</a></p>
	  	</footer>
		</div>
	</body>
</html>
