<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Message</title>

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
    text-align:center;
    width:350px;
}

/* Message */
h2{
    color:#333;
    margin-bottom:25px;
}

/* Button Link */
a{
    text-decoration:none;
    background:#4facfe;
    color:white;
    padding:12px 20px;
    border-radius:8px;
    font-weight:bold;
    transition:.3s;
    display:inline-block;
}

/* Hover */
a:hover{
    background:#007bff;
}

</style>

</head>

<body>

<div class="container">

<h2>${msg}</h2>

<a href="/pform">Go Home</a>

</div>

</body>
</html>