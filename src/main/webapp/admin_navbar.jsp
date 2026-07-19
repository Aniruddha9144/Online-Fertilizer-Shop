<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Admin Navbar</title>

<!-- Font Awesome Icon Link -->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css">

<!-- External CSS -->
<link rel="stylesheet" href="css/admin_navbar.css">

</head>
<body>

<div class="admin-navbar">
    
    <div class="logo">
        <h2><i class="fas fa-user-shield"></i> Admin Panel</h2>
    </div>

    <div class="nav-links">
        <a href="admin_dashboard.jsp">
            <i class="fas fa-home"></i> Home
        </a>

        <a href="admin_dashboard_product.jsp">
            <i class="fas fa-box"></i> Products
        </a>

        <a href="admin_dashboard_farmers.jsp">
            <i class="fas fa-tractor"></i> Farmers
        </a>

        <a href="admin_dashboard_orders.jsp">
            <i class="fas fa-shopping-cart"></i> Orders
        </a>

        <a href="admin_cancel_order.jsp">
            <i class="fas fa-times-circle"></i> Order Cancel
        </a>

        <a href="admin_order_history.jsp">
            <i class="fas fa-history"></i> Order History
        </a>

        <a href="admin_dashboard_reports.jsp">
            <i class="fas fa-chart-line"></i> Reports
        </a>

        <a href="admin_feedback.jsp">
            <i class="fas fa-comments"></i> Feedback
        </a>

        <a href="a_logout.jsp" class="logout">
            <i class="fas fa-sign-out-alt"></i> Logout
        </a>
    </div>

</div>

</body>
</html>