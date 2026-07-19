    <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
    <title>Admin Dashboard</title>
    
     <!-- Font Awesome CDN -->
	    <link rel="stylesheet"
	          href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css">
    
    
    <link rel="stylesheet" href="css/a_navebar.css">
    <style><%@include file="css/a_navebar.css" %></style>
</head>
<body>

   
<nav class="navbar">

    <!-- Logo -->
    <div class="logo">
        <i class="fa-solid fa-leaf"></i>
        <span>Welcome to Fertilizer Shop</span>
    </div>

 <!-- Menu -->
    <ul class="nav-links">

 <li>
            <a href="a_logout.jsp" class="logout" >
                <i class="fa-solid fa-right-from-bracket"></i>
                <span>Logout</span>
            </a>
        </li>

</ul>

</nav>
</body>
</html>
