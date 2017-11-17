<!DOCTYPE html>

<html>
  <head>
    <title>Socorro Rental Reviews | Legal</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- Latest compiled and minified CSS -->
    <link rel="stylesheet"
    href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <!-- jQuery library -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <!-- Latest compiled JavaScript -->
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <!-- our stylesheets -->
    <link rel="stylesheet" type="text/css" href="style.css">
    <link rel="stylesheet" type="text/css" href="main.css">
    <link rel="stylesheet" type="text/css" href="display_reviews.css">
    <script src="js/main.js"></script>
  </head>

  <body>
    <section class="titleArea">
      <!-- this area contains the title and/or any elements we want on other pages. -->
      <h1><a href="index.html" class="link">Socorro Rental Reviews</a></h1>
    </section>

    <!-- visually separate sections -->
    <hr class="line-separator">

    <section class="mainDescriptionArea">
      <h2><span id="address">Rental Review: 1234 Main Street</span></h2>

      <h3 id="address" class="centerText"> </h3>

      <div class="container overall">
        <h3 class="centerText">Overall for <span id="address_overall">1234 Main Street</span></h3>
        <h4 class="centerText">Rating Average:
          <span>
            <span class="glyphicon glyphicon-star checked"></span>
  					<span class="glyphicon glyphicon-star checked"></span>
  					<span class="glyphicon glyphicon-star checked"></span>
  					<span class="glyphicon glyphicon-star-empty"></span>
  					<span class="glyphicon glyphicon-star-empty"></span>
          </span>
        </h4>
      </div>


      <div id="allReviews">

        <div class="container reviewBox">
          <p class="postHead">Post #<span class="postNum">1</span><span class="timeStamp">2015/08/15</span></p>
          <p class="stars">Rental Rating:
            <span>
              <span class="glyphicon glyphicon-star checked"></span>
    					<span class="glyphicon glyphicon-star checked"></span>
    					<span class="glyphicon glyphicon-star-empty"></span>
    					<span class="glyphicon glyphicon-star-empty"></span>
    					<span class="glyphicon glyphicon-star-empty"></span>
            </span>
          </p>
          <p class="overallDesc">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque at ultrices mauris. Curabitur congue laoreet rutrum. Mauris et molestie elit. Curabitur a tristique diam. Vestibulum sollicitudin libero quis nunc laoreet auctor. Nunc accumsan, nibh at fringilla euismod, nulla purus tempor arcu, id aliquet dolor metus ut est. Maecenas nec hendrerit mauris.</p>
        </div>

        <div class="container reviewBox">
          <p class="postHead">Post #<span class="postNum">2</span><span class="timeStamp">2016/03/22</span></p>
          <p class="stars">Rental Rating:
            <span>
              <span class="glyphicon glyphicon-star checked"></span>
    					<span class="glyphicon glyphicon-star checked"></span>
    					<span class="glyphicon glyphicon-star checked"></span>
    					<span class="glyphicon glyphicon-star checked"></span>
    					<span class="glyphicon glyphicon-star-empty"></span>
            </span>
          </p>
          <p class="overallDesc">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque at ultrices mauris. Curabitur congue laoreet rutrum. Mauris et molestie elit. Curabitur a tristique diam. Vestibulum sollicitudin libero quis nunc laoreet auctor.</p>
        </div>

        <div class="container reviewBox">
          <p class="postHead">Post #<span class="postNum">3</span><span class="timeStamp">2017/01/09</span></p>
          <p class="stars">Rental Rating:
            <span>
              <span class="glyphicon glyphicon-star checked"></span>
    					<span class="glyphicon glyphicon-star checked"></span>
    					<span class="glyphicon glyphicon-star checked"></span>
    					<span class="glyphicon glyphicon-star-empty"></span>
    					<span class="glyphicon glyphicon-star-empty"></span>
            </span>
          </p>
          <p class="overallDesc">Pellentesque viverra odio semper, tristique quam non, pellentesque justo. Fusce quis elit posuere, venenatis eros eget, ultrices ipsum. Nam pellentesque erat risus, sit amet fermentum felis tincidunt ut. Nam blandit hendrerit urna non scelerisque. Nunc vel pharetra eros. Duis rutrum accumsan imperdiet. Nam gravida dui efficitur turpis vehicula lobortis. Nam nec venenatis magna, a egestas sem.</p>
        </div>

      </div><!-- END allReviews -->

      <br><br><br>

      <div class="centerText">
        <button onClick="backPage()" class="btn button"><span class="glyphicon glyphicon-chevron-left"></span>Back</button>
      </div>

    </section>
  </body>

    <!-- visually separate sections -->
    <hr class="line-separator">

  <footer>
    <p>
      Created by techies - To help out other techies
    </p>
    <p><a href="legal.html" class="link">Legal Disclaimer</a></p>  </footer>
</html>
