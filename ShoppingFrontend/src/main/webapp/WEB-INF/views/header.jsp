<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    
<!DOCTYPE html>
<html>
<style>
body {margin:0}

#bs-example-nav{
  overflow: hidden;
  background-color: #333;
}

#bs-example-nav a {
  float: left;
  display: block;
  color: #f2f2f2;
  text-align: center;
  padding: 14px 16px;
  text-decoration: none;
  font-size: 17px;
}

#bs-example-nav a:hover {
  background-color: red;
  color: white;
}


</style>
<head>
<title>Insert title here</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
<link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

</head>
<body>
<nav class="navbar navbar-default">
	<div class="container-fluid">

		

<nav id="navbar-red" class="navbar navbar-default navbar-static-top" role="navigation">
<div class="container" id="iconbar">
<ul class ="nav navbar-nav">
<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-nav">
<span class="icon-bar"></span>
<span class="icon-bar"></span>
<span class="icon-bar"></span>
<span class="icon-bar"></span>
</button>
</ul>
</div>
<div class="collapse navbar-collapse" id="bs-example-nav">
<ul class="nav navbar-nav">
<li><a href="#"><i class="fa fa-home" aria-hidden="true"></i>Home</a></li>
<li><a href="#">Product</a>
<li><a href="#">Category</a>
</ul>

<ul class="nav navbar-nav navbar-right">
<li><a href="#"><i class="fa fa-sign-in" aria-hidden="true"></i>Login</a>
<li><a href="${contextRoot})register">Register</a>
</ul>


<form class="navbar-form navbar-left">
      <div class="form-group">
        <input type="text" class="form-control" placeholder="Search">
      </div>
      <button type="submit" class="btn btn-default">Submit</button>
    </form>









</div>
</body>
</html>