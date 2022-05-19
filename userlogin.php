<?php
   session_start();

 ?>

 <!DOCTYPE html>
 <html>
 <head>
  <title>
  Patient Login page
 </title>
 </head>
 <body>
    <style type="text/css">
    #text{
	height: 25px;
	border-radius: 5px;
	padding: 4px;
	border: solid thin #aaa;
}

#button{
	padding: 10px;
	width:  100px;
	color: white;
	background-color: lightblue;
	border: none;
}

#box{
	background-color: grey;
	margin: auto;
	width: 300px;
	padding: 20px;
}
    </style>
    <div id="box">

      <form method = "post" action="backend\loginpat.php">
         <div style="font-size: 20px; margin: 10px; color: white:">Login</div>
         <input id = "text" type = "text" name = "user_name" placeholder = "Enter your user id"><br><br>
         <input id = "text" type = "password" name = "password" placeholder = "Enter your password"><br><br>
         <input id = "button" type = "submit" value = "Login"><br><br>
         Don't have an account? Signup below! <br><br>
         <a href = signup.php > Signup </a>
      </form>
    </div>
    <br><br><br>
    Go back to Homepage
    <button><a style="width:20%" href = index.php> Homepage </a> </button>
  </body>
  </html>
