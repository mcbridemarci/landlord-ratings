<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
				<h3 class="subtitleArea">Pets:</h3>
				<div class="question">
					<Label for="allowed">Pet Allowed:</label>
					<form>
						<input type="radio" name="allowed" value="Yes"> Yes
						<input type="radio" name="allowed" value="No"> No<br>
					</form>
				</div>
				<div class="question">
					<Label for="pet_deposit">Pet Deposit:</label>
					<input type="text" id="pet_deposit" name="location" placeholder ="$">
				</div>
				<div class="question">
					<Label for="weight">Weight Restriction:</label>
					<input type="text" id="weight" name="location" placeholder ="in LBS.">
				</div>
				<div class="question">
					<Label for="size">Size Restriction:</label><br />
					<fieldset>
						<div>
							<input type="checkbox"  id= "small" name= "size" value="small" />
							<label for="small">Small</label>
						</div>
						<div>
							<input type="checkbox"  id= "medium" name= "size" value="medium" />
							<label for="medium">Medium</label>
						</div>
						<div>
							<input type="checkbox"  id= "large" name= "size" value="large" />
							<label for="large">Large</label>
						</div>
					</fieldset>
				</div>
				<!--for next button at bottom of page-->
				<!--<input type="Next" value="Next">-->
				<div>
					<button onclick="window.location.href='landlord.jsp'" class="butt">Next<span class="glyphicon glyphicon-chevron-right"></span></button>
				</div>
			</section>

				<hr class="line-separator">
	  	<footer>
	  		<p>
	  			3rd section out of 5 complete... :)
	  		</p>
	  		<p><a href="legal.html" class="link">Legal Disclaimer</a></p>
	  	</footer>
		</div>
	</body>
</html>
