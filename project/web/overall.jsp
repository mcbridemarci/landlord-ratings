<!DOCTYPE html>
<html lang="en">
	<head>
		<title>Socorro Rental Reviews | Review Template | Amenities:</title>
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<!-- Latest compiled and minified CSS -->
		<link rel="stylesheet"
		href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
		<link rel="stylesheet"
		href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
		<!-- jQuery library -->
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
		<!-- Latest compiled JavaScript -->
		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
		<!-- our stylesheets -->
		<link rel="stylesheet" type="text/css" href="basic.css">
    <link rel="stylesheet" type="text/css" href="overall.css">

	</head>
	<body>
		<div class="cointainer">
			<section class="titleArea">
				<h1><a href="index.html" class="link">Socorro Rental Reviews</a></h1>
				<h2>Review Form</h2>
			</section>

			<!-- visually separate sections -->
			<hr class="line-separator">

			<section class="content" id="contentSection">
				<h3 class="subtitleArea">Overall:</h3>
        <form action="/project/javaServelet" method="post">
          <div class="question">
            <h4>Overall Thoughts:</h4>
            <input type="text" id="thoughts" name="location">
          </div>

          <div class="question">
            <h4>Overall Rating:</h4>
            <fieldset id="stars">
              <input type="radio" id="star1" value="1"/>
                <label class="fa fa-star star"></label>
              <input type="radio" id="star2" value="2" />
                <label class="fa fa-star star"></label>
              <input type="radio" id="star3" value="3" checked /> <!-- TODO remove "checked" to remove default choice -->
                <label class="fa fa-star star"></label>
              <input type="radio" id="star4" value="4" />
                <label class="fa fa-star star"></label>
              <input type="radio" id="star5" value="5" />
                <label class="fa fa-star star"></label>
            </fieldset>
            <!-- TODO:
            <input type="radio" value="whatever" />
            <label><img src="put image here"></label>
            set input as display none; do the css to select image and set value
           -->

          </div>

          <br>
          <!--for next button at bottom of page-->
          <!--<input type="Next" value="Next">-->
          <input type="hidden" name="action" value="overall_page" />
          <button type="submit" id="nextButton" class="butt">Next<span class="glyphicon glyphicon-chevron-right"></span></button>
        </form>
			</section>

			<hr class="line-separator">
	  	<footer>
	  		<p>You are finished with the review! :)</p>
	  		<p><a href="legal.html" class="link">Legal Disclaimer</a></p>
	  	</footer>
		</div>
	</body>
</html>
