<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Logout - Fertilizer Shop Admin</title>
    <link rel="stylesheet" href="css/style.css">
        <style><%@include file="css/a_logout.css" %></style>
    
</head>
<body>

    <div class="logout-container">
        <div class="logout-box">
            <h1>Logout</h1>
            <p>Are you sure you want to logout from the user panel?</p>

            <div class="buttons">
                <a href="admin_user_index.jsp" class="btn yes" name="submit" value="yes_logout">Yes, Logout</a>
                <a href="admin_dashboard.jsp" class="btn no" name="submit" value="cancel">Cancel</a>
            </div>
        </div>
    </div>

</body>
</html>
