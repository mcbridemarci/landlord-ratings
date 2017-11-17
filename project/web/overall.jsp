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
		<link rel= "stylesheet"
		href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
		<!-- jQuery library -->
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
		<!-- Latest compiled JavaScript -->
		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
		<!-- our stylesheets -->
		<link rel="stylesheet" type="text/css" href="overall.css">
		<link rel="stylesheet" type="text/css" href="basic.css">
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
				<h3 class="subtitleArea">Overall:</h3>
                                <form action="/project/javaServelet" method="post">
                                    <div class="question">
                                            <Label for="thoughts">Overall Thoughts:</label>
                                            <input type="text" id="thoughts" name="location">
                                    </div>
                                    <div class="question">
                                            <Label for="student_email">Please input NMT student email:</label>
                                            <input type="text" id="student_email" name="location" placeholder ="xxxxx.xxxxx@student.nmt.edu email">
                                    </div>
                                    <div class="question">
                                            <Label for="rating">Overall Rating:</label>
                                            <span class= "fa fa-star checked"></span>
                                            <span class= "fa fa-star checked"></span>
                                            <span class= "fa fa-star"></span>
                                            <span class= "fa fa-star"></span>
                                            <span class= "fa fa-star"></span>
                                    </div>
                                    <!--for next button at bottom of page-->
                                    <!--<input type="Next" value="Next">-->
                                    <div>
                                            <button type="submit" onclick="window.location.href='index.html'" class="butt">VERIFY EMAIL TO SUBMIT<span class="glyphicon glyphicon-chevron-right"></span></button>
                                    </div>
                                    <input type="hidden" name="action" value="overall_page">
                                </form>
			</section>

				<hr class="line-separator">
	  	<footer>
	  		<p>
	  			You are finished with the review! :)
	  		</p>
	  		<p><a href="legal.html" class="link">Legal Disclaimer</a></p>
	  	</footer>
		</div>
	</body>
</html>
