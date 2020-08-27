<?php

$hostname = "localhost";
$username = "root";
$password = "";
$db = "dbfood";

$dbconnect=mysqli_connect($hostname,$username,$password,$db);

if ($dbconnect->connect_error) {
  die("Database connection failed: " . $dbconnect->connect_error);
}

if(isset($_POST['submit'])) {
  $fname=$_POST['name'];
  $smail=$_POST['email'];
  $per=$_POST['pers'];
  $mobil=$_POST['mob'];
  $datee=$_POST['date'];
  $timee=$_POST['time'];
  $notess=$_POST['notes'];

  $query = "INSERT INTO tbresv (Name,Email, Person,Phone,Date,Time,note)
  VALUES ('$fname', '$smail', '$per', '$mobil', '$datee', '$timee', '$notess')";

    if (!mysqli_query($dbconnect, $query)) {
        die('An error occurred.xxx Your review has not been submitted.');
    } else {
      echo "Thanks for your review.";
    }

}

if(isset($_POST['sub'])) {
  $cname=$_POST['name'];
  $lmail=$_POST['email'];
  $msges=$_POST['msg'];
  
  $query = "INSERT INTO cinfo (Name,Email,msg)
  VALUES ('$cname', '$lmail', '$msges')";

    if (!mysqli_query($dbconnect, $query)) {
        die('An error occurred.xxx Your review has not been submitted.');
    } else {
      echo "Thanks for your review.";
    }

}
?>