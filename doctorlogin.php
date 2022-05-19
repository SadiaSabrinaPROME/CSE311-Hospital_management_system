<?php
   session_start();

 ?>

 <!DOCTYPE html>
 <html>
 <head>
  <title>
    Doctor Login page
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

      <form method = "post"action="backend\logindoc.php">
         <div style="font-size: 20px; margin: 10px; color: white:">Login</div>
         <input id = "text" type = "text" name = "user_name" placeholder = "Enter your user id"><br><br>
         <input id = "text" type = "password" name = "password" placeholder = "Enter your password"><br><br>
         <input id = "button" type = "submit" value = "Login"><br><br>
      </form>
    </div>
    <br><br><br>
    Go back to Homepage
    <button><a style="width:20%" href = index.php> Homepage </a> </button>
  </body>
  </html>
