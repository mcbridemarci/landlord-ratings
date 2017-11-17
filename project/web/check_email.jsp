<!DOCTYPE html>
<html lang="en">
	<head>
		<title>Socorro Rental Reviews | Review Form | Email</title>
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<link rel="stylesheet"
		href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
		<link rel="stylesheet" type="text/css" href="review_template.css">
	</head>

	<body>
		<div class ="cointainer">
			<section class="titleArea">
				<h1><a href="index.html" class="link">Socorro Rental Reviews</a></h1>
				<h2>Review Form</h2>
			</section>

			<hr class="line-separator">

			<section class="content" id="contentSection">
        <div>
          <p>Hi. Thanks for choosing to leave a review. To do so, please verify your New Mexico Tech email address.</p>
        </div>
        <div>
          <p id="message"></p>
        </div>
        <div>
            <form action="/project/javaServlet" method="post">
                <Label for="email">Email Address:</label>
                <input type="email" class="question" id="email" name="email" placeholder="john.smith@student.nmt.edu">
                <input type="hidden" name="action" value="email_page">
                <br>
                <button type="submit" id="nextButton" class="butt">Next<span class="glyphicon glyphicon-chevron-right"></span></button>
            </form>
        </div>

        <div>
          
        </div>
        <p>0 section out of 5 complete.</p>
			</section>

			<hr class="line-separator">

		</div>

    <footer>
      <p><a href="legal.html" class="link">Legal Disclaimer</a></p>
    </footer>

	</body>
</html>
