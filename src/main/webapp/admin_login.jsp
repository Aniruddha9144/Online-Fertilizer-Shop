<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Admin Login Page</title>

<link rel="stylesheet" href="css/style.css">
<style> <%@ include file="css/admin_login.css" %></style>

</head>
<body>

<div class="login-container"> 
    <h1>ADMIN LOGIN</h1>

    <form id="loginForm" name="admin_login" action="admin_login" method="post">
        
        <div class="form-group">
            <label for="loginUsername">Email:</label>
            <input type="text" id="loginEmail" placeholder="Enter your Email" name="email" required>
        </div>
        
        <div class="form-group">`
            <label for="loginPassword">Password:</label>
            <div class="password-container">
                <input type="password" id="loginPassword" name="password" placeholder="Enter your password" required >
                <button type="button" class="toggle-password" id="togglePassword">
                    
                </button>
            </div>
        </div>
        
        <button type="submit" name="submit" class="login-btn" value="Login">Login</button>
        
        <a href="admin_user_index.jsp" class="back-home-btn">Back to Home</a>
    </form>
    
   
</div>

</body>
</html>
