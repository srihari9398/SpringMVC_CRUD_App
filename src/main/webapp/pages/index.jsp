<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Save Product</title>

<style>

/* Background */
body{
margin:0;
padding:0;
font-family: Arial, Helvetica, sans-serif;
background: linear-gradient(135deg,#4facfe,#00f2fe);
height:100vh;
display:flex;
justify-content:center;
align-items:center;
}

/* Card */
.container{
background:white;
padding:40px;
border-radius:12px;
box-shadow:0px 10px 25px rgba(0,0,0,0.2);
width:350px;
}

/* Heading */
h1{
text-align:center;
margin-bottom:25px;
color:#333;
}

/* Label */
label{
font-weight:bold;
color:#555;
}

/* Inputs */
input[type="text"]{
width:100%;
padding:10px;
margin-top:5px;
margin-bottom:15px;
border-radius:6px;
border:1px solid #ccc;
outline:none;
transition:.3s;
}

input[type="text"]:focus{
border-color:#4facfe;
box-shadow:0 0 6px rgba(79,172,254,.5);
}

/* Buttons container */
.actions{
display:flex;
gap:12px;
margin-top:10px;
}

/* Save Button */
button{
flex:1;
padding:12px;
border:none;
background:#4facfe;
color:white;
font-size:16px;
border-radius:8px;
cursor:pointer;
transition:.3s;
}

button:hover{
background:#007bff;
}

/* View All Button */
a{
flex:1;
text-align:center;
text-decoration:none;
background:#28a745;
color:white;
padding:12px;
border-radius:8px;
font-weight:bold;
transition:.3s;
display:inline-block;
}

a:hover{
background:#1e7e34;
}

</style>

</head>

<body>

<div class="container">

<h1>Save Product</h1>

<form action="pdata" method="post">

<label>Product Id</label>
<input type="text" name="productId"/>

<label>Product Name</label>
<input type="text" name="productName"/>

<label>Product Price</label>
<input type="text" name="productPrice"/>

<div class="actions">

<button type="submit">Save Product</button>

<a href="/all">View All</a>

</div>

</form>

</div>

</body>
</html>