<%@ page language="java" contentType="text/html" import="com.model.User"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%@ taglib uri="http://www.springframework.org/tags/form" prefix="spring" %>

<html>
<head>
<link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
<link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Registration</title>
</head>
<body>
<!-- <form action="AddCategory" method="post">-->
<jsp:include page="header.jsp"></jsp:include>
<div class="container">
<h1>customer sign up form</h1>
<div class="col-lg-12">

<div class="row">
<spring:form modelAttribute="user" action="saveRegister" method="post">
<div class="col-lg-10">
 
 <div class="form-group">
 
 <label>Email</label>
 <spring:input path="email" placeholder="Enter email id..." class="form-control"/>
 </div>
 
 <div class="form-group">
 
 <label>Name</label>
 <spring:input path="name" placeholder="Enter name..." class="form-control"/>
 </div>
 
 <div class="form-group">
 
 <label>Password</label>
 <spring:input path="password" placeholder="Enter password..." class="form-control"/>
 </div>
 
 <div class="form-group">
 
 <label>Phone</label>
 <spring:input path="phone" placeholder="Enter phone no..." class="form-control"/>
 </div>
 
 <div class="form-group">
 
 <label>Address</label>
 <spring:input path="address" placeholder="Enter address..." class="form-control"/>
 </div>
 
 <div class="form-group">
 
 <label>Country</label>
 <spring:input path="country" placeholder="Enter country..." class="form-control"/>
 </div>
 <button type="submit" class="btn btn-lg btn-info">Submit</button>
 <button type="reset" class="btn btn-lg btn-info">Cancel</button>

</div>
</spring:form>
</div>
</div>
</div>


</body>
</html>