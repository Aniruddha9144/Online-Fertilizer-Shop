<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Payment | Fertilizer Shop</title>

<style>
body {
    font-family: Arial, sans-serif;
    background: linear-gradient(to right, #2e7d32, #66bb6a);
    display: flex;
    justify-content: center;
    align-items: center;
    height: 100vh;
}

.payment-container {
    background: white;
    width: 450px;
    padding: 30px;
    border-radius: 10px;
    box-shadow: 0px 5px 20px rgba(0,0,0,0.2);
}

h2 {
    text-align: center;
    color: #2e7d32;
}

.payment-fields {
    display: none;
    margin: 10px 0 15px 15px;
}

.payment-fields input {
    width: 100%;
    padding: 8px;
    margin: 5px 0;
    border-radius: 5px;
    border: 1px solid #ccc;
}

.checkout-btn {
    width: 100%;
    padding: 10px;
    background-color: #2e7d32;
    color: white;
    border: none;
    border-radius: 5px;
    font-size: 16px;
    cursor: pointer;
}

.checkout-btn:hover {
    background-color: #1b5e20;
}
</style>

<script>
function showFields(method) {

    // Hide all first
    document.getElementById("cardFields").style.display = "none";
    document.getElementById("upiFields").style.display = "none";

    // Show card fields for both Credit & Debit
    if(method == "Credit Card" || method == "Debit Card") {
        document.getElementById("cardFields").style.display = "block";
    }
    else if(method == "UPI") {
        document.getElementById("upiFields").style.display = "block";
    }
}
</script>

</head>
<body>

    <jsp:include page="u_navbar.jsp"/>  


<div class="payment-container">

    <h2><% %></h2>

    <form action="user_payment" method="post">
    <center>$ <%=session.getAttribute("subtotal") %></center>

        <h3>Select Payment Method</h3>

        <!-- Credit -->
        <label>
            <input type="radio" name="payment_method" value="Credit Card"
                   onclick="showFields(this.value)" required>
            Credit Card
        </label>

        <!-- Debit -->
        <label>
            <input type="radio" name="payment_method" value="Debit Card"
                   onclick="showFields(this.value)">
            Debit Card
        </label>

        <!-- COMMON CARD FIELDS -->
        <div id="cardFields" class="payment-fields">
            <input type="text" name="card_name" placeholder="Card Holder Name">
            <input type="text" name="card_number" placeholder="Card Number">
            <input type="text" name="card_expiry" placeholder="Expiry Date (MM/YY)">
            <input type="text" name="card_cvv" placeholder="CVV">
        </div>

        <!-- UPI -->
        <label>
            <input type="radio" name="payment_method" value="UPI"
                   onclick="showFields(this.value)">
            UPI
        </label>

        <div id="upiFields" class="payment-fields">
            <input type="text" name="upi_id" placeholder="Enter UPI ID">
        </div>

        <!-- COD -->
        <label>
            <input type="radio" name="payment_method" value="Cash on Delivery"
                   onclick="showFields(this.value)">
            Cash on Delivery
        </label>

        <br><br>

        <button type="submit" name="submit" value="checkout" class="checkout-btn">
            Proceed To Payment
        </button>

    </form>

</div>

</body>
</html>