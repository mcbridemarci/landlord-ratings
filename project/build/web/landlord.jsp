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
				<h3 class="subtitleArea">Landlord:</h3>
				<div class="question">
					<Label for="maintain">Lawn maintenance covered by landlord:</label>
					<form>
						<input type="radio" name="maintain" value="Yes"> Yes
						<input type="radio" name="maintain" value="No"> No<br>
					</form>
				</div>
				<div class="question">
					<Label for="response">Landlord response time:</label>
					<input type="text" id="response" name="location">
				</div>
				<div class="question">
					<Label for="maintenance">Maintenance response time:</label>
					<input type="text" id="maintenance" name="location" placeholder ="within days of request.">
				</div>
				<div class="question">
					<Label for="quality">Maintenance quality:</label>
					<input type="text" id="quality" name="location" placeholder ="you may be as expressive as you would like here.">
				</div>
				<!--for next button at bottom of page-->
				<!--<input type="Next" value="Next">-->
				<div>
					<button onclick="window.location.href='overall.jsp'" class="butt">Next<span class="glyphicon glyphicon-chevron-right"></span></button>
				</div>
			</section>

				<hr class="line-separator">
	  	<footer>
	  		<p>
	  			4th section out of 5 complete... only one more page! :)
	  		</p>
	  		<p><a href="legal.html" class="link">Legal Disclaimer</a></p>
	  	</footer>
		</div>
	</body>
</html>
