<%@page import = "java.sql.*" %>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Shipping Address | Fertilizer Shop</title>
    <link rel="stylesheet" href="css/shipping_address.css">
</head>
<body>



    <div class="container">
   
        <div class="address-box">
            <h2>Shipping Address</h2>

          <form id="shippingForm" name="shipping_address1" action="shipping_address1" method="post">

                <div class="row">
                    <div class="input-group">
                        <label>Full Name</label>
                        <input type="text" name="full_name" placeholder="Enter full name">
                    </div>

                    <div class="input-group">
                        <label>Mobile Number</label>
                        <input type="tel" name="mobile" placeholder="Enter mobile number">
                    </div>
                </div>

                <div class="input-group">
                    <label>Email</label>
                    <input type="text" name="email" placeholder="Enter your email">
                </div>

                <div class="input-group">
                    <label>Address Line </label>
                    <input type="text" name="address" placeholder="Area, Landmark "required>
                </div>

                <div class="row">
                    <div class="input-group">
                        <label>City</label>
                        <input type="text" name="city" placeholder="Enter city" required>
                    </div>

                    <div class="input-group">
                        <label>State</label>
                        <input type="text" name="state" placeholder="Enter state" required>
                    </div>
                </div>

                <div class="row">
                    <div class="input-group">
                        <label>Pin Code</label>
                        <input type="text" name="pincode" placeholder="Enter Pin code" required>
                    </div>
                  </div>

                    <div class="input-group">
                        <label>Country</label>
                        <input type="text" name="country" placeholder="enter your country" required>
                </div>
              

                <div class="button-group">
                    <button type="submit" class="btn" name="submit" value="Payment">Continue To Payment</button>
                   
                </div>

            </form>
       
            
        </div>
        
    </div>
    
    

</body>
</html>