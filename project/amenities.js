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
		<link rel="stylesheet" type="text/css" href="review_template.css">
	</head>
	<body>
		<div class ="cointainer">
			<section class="titleArea">
				<h1><a href="index.html" class="link">Socorro Rental Reviews</a></h1>
				<h2>Review Form</h2>
			</section>

			<!-- visually separate sections -->
			<hr class="line-separator">

			<section class="content" id="contentSection">
				<h3 class="subtitleArea">Amenities:</h3>
				<div class="question">
					<Label for="utilities">Utilities Included:</label>
					<form>
						<input type="radio" name="utilities" value="Yes"> Yes
						<input type="radio" name="utilities" value="No"> No<br>
					</form>
				</div>
				<div class="question">
					<Label for="appliances">Appliances Included:</label>
					<fieldset>
						<div>
							<input type="checkbox"  id= "refrigerator" name= "appliances" value="refrigerators" />
							<label for="refrigerator">Refrigerator</label>
						</div>
						<div>
							<input type="checkbox"  id= "stove_top" name= "appliances" value="stove_tops" />
							<label for="stove_top">Stove top</label>
						</div>
						<div>
							<input type="checkbox"  id= "oven" name= "appliances" value="oven" />
							<label for="oven">Oven</label>
						</div>
						<div>
							<input type="checkbox"  id= "microwave" name= "appliances" value="microwaves" />
							<label for="microwave">Microwave</label>
						</div>
					</fieldset>
				</div>
				<div class="question">
					<Label for="cool">Cooling:</label><br />
					<fieldset>
						<div>
							<input type="checkbox"  id= "ac" name= "cool" value="cool" />
							<label for="ac">AC</label>
						</div>
						<div>
							<input type="checkbox"  id= "swamp" name= "cool" value="swamply" />
							<label for="swamp">Swamp Cooler</label>
						</div>
						<div>
							<input type="checkbox"  id= "fan" name= "cool" value="fan" />
							<label for="fan">Fan Only</label>
						</div>
						<div>
							<input type="checkbox"  id= "none" name= "cool" value="nada" />
							<label for="none">None</label>
						</div>
					</fieldset>
				</div>
				<div class="question">
					<Label for="heating">Heating:</label>
					<form>
						<input type="radio" name="heating" value="Yes"> Yes
						<input type="radio" name="heating" value="No"> No<br>
					</form>
				</div>
				<div class="question">
					<Label for="park">Parking:</label><br />
					<fieldset>
						<div>
							<input type="checkbox"  id= "cover" name= "park" value="covered" />
							<label for="cover">Covered</label>
						</div>
						<div>
							<input type="checkbox"  id= "garage" name= "park" value="garage" />
							<label for="garage">Garage</label>
						</div>
						<div>
							<input type="checkbox"  id= "street" name= "park" value="street" />
							<label for="street">Street Parking</label>
						</div>
						<div>
							<input type="checkbox"  id= "assigned" name= "park" value="assigned" />
							<label for="assigned">Assigned Parking</label>
						</div>
						<div>
							<input type="checkbox"  id= "other" name= "park" value="other" />
							<label for="other">Other</label>
						</div>
					</fieldset>
				</div>
				<div class="question">
					<Label for="smoking">Smoking Permitted:</label>
					<form>
						<input type="radio" name="smoking" value="Yes"> Yes
						<input type="radio" name="smoking" value="No"> No<br>
					</form>
				</div>
				<!--for next button at bottom of page-->
				<!--<input type="Next" value="Next">-->
				<div>
					<button onclick="window.location.href='pets.html'" class="butt">Next<span class="glyphicon glyphicon-chevron-right"></span></button>
				</div>
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
