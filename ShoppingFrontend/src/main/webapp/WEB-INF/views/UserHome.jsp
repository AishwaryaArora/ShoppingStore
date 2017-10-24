<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<table cellspacing="2" align="center">
		<tr bgcolor="gray">
			<td>Product Name</td>
			<td>Price</td>
			<td>Category</td>
			<td>Stock</td>
			<td>Photo</td>
		</tr>

		<c:forEach items="${productList}" var="product">
			<tr>
				<td>${product.productName}</td>
				<td>${product.price}</td>
				<td>${product.catId}</td>
				<td>${product.stock}</td>
				<%-- <td>
				<c:out value="/resources/images/${product.productId}.jpg"/>
				<img src="<c:url value="/resources/images/${product.productId}.jpg"/> >
				</td>--%>
			</tr>

		</c:forEach>



	</table>
</body>
</html>