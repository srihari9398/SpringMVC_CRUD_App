<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="jakarta.tags.core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>All Products</title>

<style>

/* Background */
body{
    margin:0;
    padding:0;
    font-family: Arial, Helvetica, sans-serif;
    background:linear-gradient(135deg,#4facfe,#00f2fe);
    height:100vh;
    display:flex;
    justify-content:center;
    align-items:center;
}

/* Container Card */
.container{
    background:white;
    padding:35px;
    border-radius:12px;
    box-shadow:0px 10px 25px rgba(0,0,0,0.2);
    width:700px;
    text-align:center;
}

/* Heading */
h2{
    margin-bottom:20px;
    color:#333;
}

/* Table */
table{
    width:100%;
    border-collapse:collapse;
}

/* Header */
th{
    background:#4facfe;
    color:white;
    padding:12px;
}

/* Cells */
td{
    padding:10px;
    border-bottom:1px solid #ddd;
}

/* Hover Row */
tr:hover{
    background:#f2f9ff;
}

/* Home Button */
a{
    text-decoration:none;
    background:#4facfe;
    color:white;
    padding:10px 18px;
    border-radius:8px;
    display:inline-block;
    margin-top:20px;
    transition:.3s;
}

a:hover{
    background:#007bff;
}

/* No Data Message */
p{
    color:#777;
    font-size:18px;
}

</style>

</head>

<body>

<div class="container">

<h2>All Products</h2>

<c:choose>

<c:when test="${empty all}">
<p>No products available.</p>
</c:when>

<c:otherwise>

<table>

<tr>
<th>Product ID</th>
<th>Product Name</th>
<th>Product Price</th>
</tr>

<!-- Loop -->
<c:forEach var="product" items="${all}">

<tr>
<td>${product.productId}</td>
<td>${product.productName}</td>
<td>${product.productPrice}</td>
</tr>

</c:forEach>

</table>

</c:otherwise>

</c:choose>

<a href="/">Go Home</a>

</div>

</body>
</html>