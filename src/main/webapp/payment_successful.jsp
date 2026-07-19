<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Payment Successful | Fertilizer Shop</title>
    <link rel="stylesheet" href="css/payment_successful.css">
</head>
<body>

    <div class="success-container">
        <div class="success-box">
            
            <div class="checkmark-circle">
                <div class="checkmark"></div>
            </div>

            <h1>Payment Successful!</h1>
            <p>Thank you for your purchase.</p>
            <p>Your fertilizer order has been placed successfully.</p>
        <div class="order-info">
               
                <p><strong>amount</strong><%=session.getAttribute("total") %></p>
                <p><strong>Payment Method:</strong><%=session.getAttribute("payment_method") %></p>
            </div>

            <div class="button-group">
                <a href="user_product.jsp" class="btn">Continue Shopping</a>
                <a href="user_my_orders.jsp" class="btn secondary">View Orders</a>
            </div>

        </div>
    </div>

</body>
</html>