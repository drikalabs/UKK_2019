<?php 
session_start();
if (isset($_SESSION['user'])) 
{
  echo "<script>location='user/index.php'</script>";
 }
include"act/net.php";

 ?>

<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <title>PLNkita</title>

  <link href="css/bootstrap.min.css" rel="stylesheet">
  <link rel="stylesheet" href="css/font-awesome.css">
  <link href="css/style.css" rel="stylesheet">
  
</head>

<body>
  <nav class="navbar navbar-default navbar-fixed-top" role="navigation">
    <div class="container">
      
      <div class="navbar-header">
        <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target=".navbar-collapse.collapse">
          <span class="sr-only">Toggle navigation</span>
          <span class="icon-bar"></span>
          <span class="icon-bar"></span>
          <span class="icon-bar"></span>
        </button>
        <a class="navbar-brand" href="index.php"><span>PLNkita</span></a>
      </div>
      <div class="navbar-collapse collapse">
        <div class="menu">
          <ul class="nav nav-tabs" role="tablist">
            <li role="presentation"><a href="index.php">Beranda</a></li>
            <li role="presentation"><a href="cari.php">Pencarian Tagihan</a></li>
            <li role="presentation"><a href="contact.php">Kontak</a></li>
            <li role="presentation"><a href="login-user.php">Masuk</a></li>
          </ul>
        </div>
      </div>
    </div>
  </nav> 