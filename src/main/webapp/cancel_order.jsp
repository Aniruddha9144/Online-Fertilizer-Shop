<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Cancel Order | Fertilizer Shop</title>
     <link rel="stylesheet" href="css/cancel_order.css">
    <style> <%@ include file="css/cancel_order.css" %></style>
</head>
<body>

    <jsp:include page="u_navbar.jsp"/> 
    
   
    <div class="cancel-container">
        <h2>Cancel Order</h2>

    <form id="cancelorderForm" name="cancel_order" action="cancel_order" method="post">

            <div class="form-group">
                <label>Order ID</label>
                <input type="text" name="orderId" placeholder="Enter Order ID" required>
            </div>

            <div class="form-group">
                <label>Product Name</label>
                <input type="text" name="productName" placeholder="Enter Product Name" required>
            </div>

            <div class="form-group">
                <label>Reason for Cancellation</label>
                <textarea name="reason" rows="4" placeholder="Enter reason..." required></textarea>
            </div>

            <div class="button-group">
                <button type="submit" class="cancel-btn" name="submit" value="Cancel Order">Cancel Order</button>
                <a href="user_my_orders.jsp" class="back-btn">Back</a>
            </div>

        </form>
    </div>
<footer class="footer">
    <div class="container">
<p>🌱 Quality Fertilizers for Better Farming</p>
    </div>
 
    
</footer>
</body>
</html>
