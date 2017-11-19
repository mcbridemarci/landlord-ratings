<!DOCTYPE html>
<html lang="en">
	<head>
		<title>Socorro Rental Reviews | Review Template | Amenities:</title>
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
				<h3 class="subtitleArea">Amenities:</h3>
        <form action="/project/javaServlet" method="post">

  				<div class="question">
  					<h4 for="utilities">Utilities Included:</h4>
  					<fieldset id="utilities">
  						<label><input type="radio" name="utilities" value="Yes"> Yes</label>
  						<label><input type="radio" name="utilities" value="No"> No</label>
  					</fieldset>
  				</div>

  				<div class="question">
  					<h4 for="appliances">Appliances Included:</h4>
  					<fieldset id="appliances">
							<label for="refrigerator">
                <input type="checkbox"  id="refrigerator" name="appliances" value="refrigerator" />
							  Refrigerator
              </label>
							<label for="stove_top">
                <input type="checkbox"  id="stove_top" name="appliances" value="stove_top" />
							  Stove top
              </label>
              <label for="oven">
                <input type="checkbox"  id="oven" name="appliances" value="oven" />
  							Oven
              </label>
							<label for="microwave">
                <input type="checkbox"  id="microwave" name="appliances" value="microwave" />
                Microwave
              </label>
  					</fieldset>
  				</div>

  				<div class="question">
  					<h4 for="cool">Cooling:</h4>
  					<fieldset id="cool">
  							<label for="ac">
                  <input type="checkbox"  id="ac" name="cool" value="AC" />
  							  AC
                </label>

  							<label for="swamp">
                  <input type="checkbox"  id="swamp" name="cool" value="swamply" />
  							  Swamp Cooler
                </label>
  							<label for="fan">
                  <input type="checkbox"  id="fan" name="cool" value="fan" />
				          Fan Only
                </label>
  							<label for="none">
                  <input type="checkbox"  id="nada" name="cool" value="none" />
  							  None
                </label>
  					</fieldset>
  				</div>

  				<div class="question">
  					<h4 for="heating">Heating:</h4>
  					<fieldset id="radio2">
  						<label><input type="radio" name="heating" value="Yes"> Yes</label>
  						<label><input type="radio" name="heating" value="No"> No</label>
  					</fieldset>
  				</div>

  				<div class="question">
  					<h4>Parking:</h4>
  					<fieldset id="parking">
              <label for="cover">
                <input type="checkbox"  id="cover" name="park" value="covered" />
  							Covered
              </label>
							<label for="garage">
                <input type="checkbox"  id="garage" name="park" value="garage" />
							  Garage
              </label>
              <label for="street">
                <input type="checkbox"  id="street" name="park" value="street" />
							  Street Parking
              </label>
              <label for="assigned">
							  <input type="checkbox"  id="assigned" name="park" value="assigned" />
							  Assigned Parking
              </label>
  					</fieldset>
  				</div>

  				<div class="question">
  					<h4>Smoking Permitted:</h4>
  					<fieldset id="radio3">
    					<label><input type="radio" name="smoking" value="Yes"> Yes</label>
    					<label><input type="radio" name="smoking" value="No"> No</label>
  					</fieldset>
  				</div>
  				<!--for next button at bottom of page-->
  				<!--<input type="Next" value="Next">-->
          <input type="hidden" name="action" value="amenities_page" />
				  <button type="submit" id="nextButton" class="butt">Next<span class="glyphicon glyphicon-chevron-right"></span></button>
        </form>
			</section>

				<hr class="line-separator">
	  	<footer>
	  		<p>
	  			2nd section out of 5 complete... We promise the rest aren't as long :)
	  		</p>
	  		<p><a href="legal.html" class="link">Legal Disclaimer</a></p>
	  	</footer>
		</div>
	</body>
</html>
