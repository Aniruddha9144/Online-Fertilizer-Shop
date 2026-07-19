<%@ page language="java" contentType="text/html; charset=UTF-8" 
   pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>User Login page</title>
    <link rel="stylesheet" href="css/style.css">
<style><%@include file="css/user_login.css" %></style>


</head>



<body>
  <div class="login-container"> 
    <h1>USER LOGIN</h1>

    <form id="loginForm" name="user_login" action="user_login" method="post">
        <div class="form-group">
            <label for="username">Email:</label>
            <input type="text" id="loginUsername" name="email" placeholder="Enter your email" required>
        </div>
        
        <div class="form-group">
            <label for="password">Password:</label>
            <div class="password-container">
                <input type="password" id="loginPassword" name="password" placeholder="Enter your password" required>
                <button type="button" class="toggle-password" name="submit" id="togglePassword">
                </button>
            </div>
        </div>
        
        <button type="submit" class="login-btn" name="submit" value="login">Login</button>
        
         <a href="admin_user_index.jsp" class="back-home-btn">Back to Home</a>
    </form>
    
    <div class="register-link">
        Don't have an account? <a href="user_register.jsp">Register here</a>
    </div>
</div>

 
</body>
</html>

