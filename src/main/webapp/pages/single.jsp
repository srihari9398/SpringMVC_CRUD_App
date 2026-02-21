<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Product Details</title>

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

/* Card Container */
.container{
    background:white;
    padding:35px;
    border-radius:12px;
    box-shadow:0px 10px 25px rgba(0,0,0,0.2);
    width:500px;
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
    padding:12px;
    border-bottom:1px solid #ddd;
}

/* Hover Effect */
tr:hover{
    background:#f2f9ff;
}

/* Button */
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

</style>

</head>

	<body>

		<div class="container">

			<h2>Product Details</h2>

				<table>

					<tr>
						<th>Product Id</th>
						<th>Product Name</th>
						<th>Product Price</th>
					</tr>

					<tr>
						<td>${res.productId}</td>
						<td>${res.productName}</td>
						<td>${res.productPrice}</td>

					</tr>

				</table>

<a href="/pform">Go Home</a>

</div>

</body>
</html>