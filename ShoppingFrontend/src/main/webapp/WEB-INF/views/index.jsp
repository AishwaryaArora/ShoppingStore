<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
      
<!DOCTYPE html>
<html lang="en">
<head>

<title>Web App</title>
<link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
<link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
</head>

<%-- <%@ include file="header.jsp"%> --%>
<body>
<jsp:include page="header.jsp"></jsp:include>

  <h2 style="color:red"><strong><i><center>SHOPPING STORE</center></i></strong></h2>  
<!--<jsp:include page="header.jsp"></jsp:include> -->
<div class="container">
<!--  <h2 style="color:red"><i>Shopping Store</i></h2> -->

<div id="myCarousel" class="carousel slide" data-ride="carousel">
<ol class="carousel-indicators">
<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
<li data-target="#myCarousel" data-slide-to="1" class="active"></li>
<li data-target="#myCarousel" data-slide-to="2" class="active"></li>
</ol>

<div class="carousel-inner">

 <div class="item active">
 <img src="resources/img7.png" style="width:100%"
 class="img-rounded" class="img-responsive center-block">
 </div>
 
 <div class="item">
 <img class="img-rounded" class="img-responsive center-block"
 src="resources/img8.png" style="width:100%">
 <div class="carousel-caption">
        <h3 style="color:deeppink"><strong>Women Clothing</strong></h3>
        <p style="color:deeppink"><strong>Be the Next Diva!</strong></p>
      </div>
 </div>
 
 <div class="item">
 <img class="img-rounded" class="img-responsive center-block"
 src="resources/img6.png" style="width:100%">
 <div class="carousel-caption">
        <h3>Electronics Items</h3>
        <p>Ultimate Destination for Gadgets!</p>
      </div>
 </div>
 
</div>

<a class="left carousel-control" href="#myCarousel" data-slide="prev">
<span class="glyphicon glyphicon-chevron-left"></span>
<span class="sr-only">Previous</span>
</a>

<a class="right carousel-control" href="#myCarousel" data-slide="next">
<span class="glyphicon glyphicon-chevron-right"></span>
<span class="sr-only">Next</span>
</a>


</div>

</div>
<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>
