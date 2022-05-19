<?php

session_start();

 ?>

 <!DOCTYPE html>
 <html>
 <head>
  <title>
    Signup page
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
    <div id = box>
    <div class= "form">
    <form style="margin-left: 10px;" action="backend/docinput.php" method="post">
      <label> Doc ID </label>
      <input type="text" name="id" placeholder="Enter ID">
      <br><br>
      <label> Name </label>
      <input type="text" name="name" placeholder="Enter name">
      <br><br>
      <label> Specialisation</label>
      <input type="text" name="specialisation" placeholder="Enter Field">
      <br><br>
      <label> Password </label>
      <input type="text" name="password" placeholder="Enter Password">
      <br><br>
      <label> Admin ID </label>
      <select id="admin_id" name="admin_id">
        <?php
        include_once("backend/connection.php");
        session_start();
        $sql = "SELECT DISTINCT AdminID FROM `admin`";
        $result = mysqli_query($conn, $sql);
        while($row = mysqli_fetch_row($result)){
          ?>
          <option value="<?php echo $row[0]?>"> <?php echo $row[0]?> </option>
          <?php
        }
        ?>
        </select>
        <br><br>
        <input type="submit" value="Submit " style="margin-left: 30%; color: green;">
        </form>
        </div>
        <br><br>
         <br><br>
         Return to Homepage<br>
         <div>
           <a href = index.php > Homepage </a>
         </div>
    </div>
  </body>
  </html>
