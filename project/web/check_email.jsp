<!DOCTYPE html>
<html lang="en">
	<head>
		<title>Email | Socorro Rental Reviews</title>
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<link rel="stylesheet"
		href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
		<link rel="stylesheet" type="text/css" href="email.css">
	</head>

	<body>
		<div class ="container">
    <section class="titleArea">
      <h1><a href="index.html" class="link">Socorro Rental Reviews</a></h1>
      <h2>Verify Your Email</h2>
    </section>

    <hr class="line-separator">

    <section class="content" id="contentSection">
        <div>
            <h3>Hello!</h3>
            <p>Thank you for choosing to leave a review.<br>
                Present techies and future techies will deeply appreciate it! <br>
                Before we let you fill out all the boxes just to find out that you aren't a techie. <br>
                Lets check your email.<br><br>
                Verify your New Mexico Tech student email address bellow.</p>
        </div>
        <div>
          <p id="message"></p>
        </div>
        <div>
          <form action="/apollo.4/project/javaServlet" method="post">
              <Label for="email">Enter Your Email Address:</label>
              <input type="email" class="question" id="email" name="email" placeholder="john.smith@student.nmt.edu" required />
              <input type="hidden" name="action" value="email_page" />
              <br />
              <button type="submit" id="nextButton" class="butt">Next<span class="glyphicon glyphicon-chevron-right"></span></button>
          </form>
        </div>
			</section>
		<hr class="line-separator">
		</div>

    <footer>
       <p>0 section out of 5 complete.</p>
      <p><a href="legal.html" class="link">Legal Disclaimer</a></p>
    </footer>

	</body>
</html>
