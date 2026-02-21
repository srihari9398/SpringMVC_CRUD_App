<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Result</title>

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

/* Card */
.container{
    background:white;
    padding:40px;
    border-radius:12px;
    box-shadow:0px 10px 25px rgba(0,0,0,0.2);
    width:380px;
    text-align:center;
}

/* Message */
h2{
    color:#333;
    margin-bottom:30px;
}

/* Button Container */
.buttons{
    display:flex;
    justify-content:center;
    gap:15px;
}

/* Buttons */
a{
    text-decoration:none;
    background:#4facfe;
    color:white;
    padding:12px 18px;
    border-radius:8px;
    font-weight:bold;
    transition:.3s;
}

/* Hover */
a:hover{
    background:#007bff;
}

</style>

</head>

<body>

<div class="container">

<h2>${res}</h2>

<div class="buttons">

<a href="/all">View All Products</a>

<a href="/pform">Go Home</a>

</div>

</div>

</body>
</html>