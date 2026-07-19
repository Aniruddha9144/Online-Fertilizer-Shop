<%@ page language="java" contentType="text/html; charset=UTF-8" 
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>User Login page</title>

<link rel="stylesheet" href="css/register.css">
<style><%@include file="css/user_register.css" %></style>

</head>
<body>



  <div class="login-container"> 
    <h1>REGISTRATION</h1>

    <form id="RegisterForm" name="user_register" action="user_register" method="post">
        <div class="form-group">
            <label for="username">Name:</label>
            <input type="text" id="loginUsername" placeholder="Enter your  Name" required name="username">
        </div>
       
       <div class="form-group">
            <label for="Contact">Contact:</label>
            <div class="contact-container">
                <input type="text" id="contact" placeholder="Enter your Contact" required name="contact">
                    
            </div>
           </div>
         <div class="form-group">
            <label for="Email">Email:</label>
            <div class="email-container">
                <input type="text" id="loginEmail" placeholder="Enter your Email" required name="email">
                    
            </div>
           </div>
           
           
        
          <div class="form-group">
            <label for="Address">Address:</label>
            <div class="Address-container">
                <input type="text" id="loginAddress" placeholder="Enter your address" name="address" required>
                    
            </div>
           </div>
      
         
        <div class="form-group">
        <label for="password">Password:</label>
        <div class= "password-container">
          <input type="password" id="password" placeholder="Enter Password" name="password"  required>
          </div>
          </div>      
     
      
        <button type="submit" class="login-btn" name="submit" value="Register">Register</button>
        
                 <a href="admin_user_index.jsp" class="back-home-btn">Back to Home</a>
        
    </form>
    
    <div class="register-link">
        Already have an account? <a href="user_login.jsp">Login here</a>
    </div>
</div>

 
</body>
</html>