<?php
$con = mysqli_connect("dz8959rne9lumkkw.chr7pe7iynqr.eu-west-1.rds.amazonaws.com","avy61ko0q2hrh9n8","g8ofi97wbjn0k4rt"); //connecting database

if (!$con) //if connection is not true do this
{
  die('Could not connect: ' . mysqli_error());
}
//then select the database name blog
//echo 'Success';
mysqli_select_db( $con, "wagmcqrrf3vtlusd");

//setting timestamp for every date to be used
date_default_timezone_set("Europe/Dublin");
$date=date('Y-m-d H:i:s');
ob_start();
?>
