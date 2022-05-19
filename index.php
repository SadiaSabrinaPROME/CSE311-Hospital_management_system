<?php
   session_start();
   $_SESSION;
 ?>

 <!DOCTYPE html>
 <html>
 <head>
  <meta charset="UTF-8">
  <link rel="stylesheet" type="text/css" href="styles.css">
   <title>
    ABC HOSPITAL
   </title>
 </head>
 <body>
    <header>
      <center><h1>ABC HOSPITAL LTD</h1></center>
      <center><h2>Dhaka,Bangladesh<h2></center>
      <hr size="5" width="50%" align="center" color="red">
    </header>
    <section>
    <center><u>This is the index page.</u></center><br><br>
    </section>
      <div id = login>
      <li>
              <a href="adminlogin.php" class="btn btn-info" role="button">Admin Login</a><br><br>
      </li>
      <li>
            <a href="userlogin.php" class="btn btn-info" role="button">User Login</a><br><br>
      </li>
      <li>
            <a href="doctorlogin.php" class="btn btn-info" role="button">Doctor Login</a><br><br>
      </li>
      </div>
      <br><br><br><br>
      <div id="button1">
         <hr>
         <button><a style="width:20%" href = "backend/doclist.php">Take an appointment</a></button>
         <button><a style="width:20%" href = "backend/iculist.php">See Hospitals with ICU</a></button>
         <button><a style="width:20%" href = "backend/plasmalist.php">See Plasma Bank list</a></button>
      </div>
 </body>
 </html>
