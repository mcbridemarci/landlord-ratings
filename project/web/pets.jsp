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
		<div class="container">
			<section class="titleArea">
				<h1><a href="index.html" class="link">Socorro Rental Reviews</a></h1>
				<h2>Review Form</h2>
			</section>

			<!-- visually separate sections -->
			<hr class="line-separator">

			<section class="content" id="contentSection">
				<h3 class="subtitleArea">Pets:</h3>
        <form action="/project/javaServelet" method="post">
          <div class="question">
            <h4>Pet Allowed:</h4>
            <fieldset>
              <label><input type="radio" name="allowed" value="Yes" data-toggle="collapse" data-target=".hides:not(.in)"  required /> Yes</label>
              <label><input type="radio" name="allowed" value="No" data-toggle="collapse" data-target=".hides.in"> No</label>
            </fieldset>
          </div>

          <div class="hides in">
            <div class="question">
              <h4>Pet Deposit:</h4>
              <input type="text" id="pet_deposit" name="pet_deposit" placeholder="$">
            </div>

            <div class="question">
              <h4>Weight Restriction:</h4>
              <input type="number" id="weight" name="weight" placeholder="number of lbs allowed">
            </div>

            <div class="question">
              <h4>Size Restriction:</h4>
              <fieldset>
                <label for="small">
                  <input type="checkbox"  id="small" name="size" value="small" />
                  Small
                </label>
                <label for="medium">
                  <input type="checkbox"  id="medium" name="size" value="medium" />
                  Medium
                </label>
                <label for="large">
                  <input type="checkbox"  id="large" name="size" value="large" />
                  Large
                </label>
              </fieldset>
            </div>
          </div>
          <!--for next button at bottom of page-->
          <!--<input type="Next" value="Next">-->
          <input type="hidden" name="action" value="pets_page" />
				  <button type="submit" id="nextButton" class="butt">Next<span class="glyphicon glyphicon-chevron-right"></span></button>
        </form>
			</section>

      <hr class="line-separator">
	  	<footer>
	  		<p>3rd section out of 5 complete... :)</p>
	  		<p><a href="legal.html" class="link">Legal Disclaimer</a></p>
	  	</footer>
		</div>
	</body>
</html>
