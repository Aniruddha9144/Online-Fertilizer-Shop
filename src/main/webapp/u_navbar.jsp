<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Fertilizer Shop</title>

    <!-- Font Awesome CDN -->
    <link rel="stylesheet"
          href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css">

    <!-- External CSS -->
    <link rel="stylesheet" href="css/u_navbar.css">
</head>
<body>

<nav class="navbar">

    <!-- Logo -->
    <div class="logo">
        <i class="fa-solid fa-leaf"></i>
        <span>Fertilizer Shop</span>
    </div>

    <!-- Menu -->
    <ul class="nav-links">

        <li>
            <a href="index.jsp">
                <i class="fa-solid fa-house"></i>
                <span>Home</span>
            </a>
        </li>

        <li>
            <a href="category.jsp">
                <i class="fa-solid fa-layer-group"></i>
                <span>Categories</span>
            </a>
        </li>

        <li>
            <a href="user_my_orders.jsp">
                <i class="fa-solid fa-box"></i>
                <span>Orders</span>
            </a>
        </li>

        <li>
            <a href="user_cart.jsp">
                <i class="fa-solid fa-cart-shopping"></i>
                <span>Cart</span>
            </a>
        </li>

        <li>
            <a href="feedback.jsp">
                <i class="fa-solid fa-message"></i>
                <span>Feedback</span>
            </a>
        </li>

        <li>
            <a href="user_profile.jsp">
                <i class="fa-solid fa-user"></i>
                <span>Profile</span>
            </a>
        </li>

        <li>
            <a href="u_logout.jsp" class="logout">
                <i class="fa-solid fa-right-from-bracket"></i>
                <span>Logout</span>
            </a>
        </li>

    </ul>

</nav>

</body>
</html>
