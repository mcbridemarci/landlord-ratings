<!DOCTYPE html>
<html lang="en">
	<head>
		<title>Overall Rating | Socorro Rental Reviews</title>
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
    <script src="js/overall.js"></script>


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
				<h3 class="subtitleArea">Overall:</h3>
        <form action="/project/javaServlet" method="post">
          <div class="question">
            <h4>Overall Thoughts:</h4>
            <input type="text" id="thoughts" name="overall_thoughts" placeholder="140 character limit" maxlength="140" />
          </div>

          <div class="question">
            <h4>Overall Rating:</h4>
            <fieldset id="emoji_rating">
              <label class="emoji" onclick="selects(this)">
                <input type="radio" name="rating" id="emoji1" value="1" />
                <img src="img/trash.png" />
              </label>

              <label class="emoji" onclick="selects(this)">
                <input type="radio" name="rating" id="emoji2" value="2" />
                <img src="img/settings.png" />
              </label>

              <label class="emoji" onclick="selects(this)">
                <input type="radio" name="rating" id="emoji3" value="3" />
                <img src="img/settings.png" />
              </label>

              <label class="emoji" onclick="selects(this)">
                <input type="radio" name="rating" id="emoji4" value="4" />
                <img src="img/settings.png" />
              </label>

             <label class="emoji" onclick="selects(this)">
               <input type="radio" name="rating" id="emoji5" value="5" />
               <img src="img/fancy.png" />
             </label>
           </fieldset>


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
