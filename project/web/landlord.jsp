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
				<h3 class="subtitleArea">Landlord:</h3>
        <form action="/project/javaServelet" method="post">

          <div class="question">
            <h4>Lawn maintenance covered by landlord:</h4>
            <fieldset>
              <label><input type="radio" name="maintain" value="Yes"> Yes</label>
              <label><input type="radio" name="maintain" value="No"> No</label>
            </fieldset>
          </div>

          <div class="question">
            <h4>Landlord response time:</h4>
            <input type="text" id="response" name="location">
          </div>

          <div class="question">
            <h4>Maintenance response time:</h4>
            <input type="text" id="maintenance" name="location" placeholder ="Within days of request">
          </div>
          
          <div class="question">
            <h4>Maintenance quality:</h4>
            <input type="text" id="quality" name="location" placeholder ="140 Characters">
          </div>
            <!--for next button at bottom of page-->
            <!--<input type="Next" value="Next">-->
          <input type="hidden" name="action" value="landloard_page">
          <button type="submit" onclick="window.location.href='overall.jsp'" class="butt">Next<span class="glyphicon glyphicon-chevron-right"></span></button>
        </form>
			</section>

				<hr class="line-separator">
	  	<footer>
	  		<p>4th section out of 5 complete... only one more page! :)</p>
	  		<p><a href="legal.html" class="link">Legal Disclaimer</a></p>
	  	</footer>
		</div>
	</body>
</html>
