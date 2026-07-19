<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>User Cart</title>
    <link rel="stylesheet" href="css/style.css">
     <style><%@include file="css/user_cart.css"%></style>
</head>
<body>

<jsp:include page="u_navbar.jsp"/>   


<div class="cart-container">
<br>
    <h2>🛒 My Cart</h2>
    <br>  
    <br>  	  

    <table class="cart-table">
        <thead>
             <th>Product Image</th>
            <th>Product Name</th>
            <th>Price</th>
            <th>Quantity</th>
            <th>Total</th>
            <th>Action</th>
        </thead>
        
        
          <%
        Double subtotal = 0.0;
        Connection cn = null;
    	Statement st = null;
        
        Class.forName("com.mysql.jdbc.Driver");
        cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/fertilizerproject","root","root");
        st=cn.createStatement();
        String sql = "select * from cart where user_id ='"+session.getAttribute("user_id")+"'";
        ResultSet rs=st.executeQuery(sql);
        while(rs.next())
        {
        	
        	subtotal += Double.parseDouble(rs.getString("total"));
        %>	  

        <input type="hidden" value="<%=rs.getString("cart_id")%>" name="cart_id">
              
        
     <tr>
<form action="user_cart" method="post">

<input type="hidden" name="cart_id" value="<%=rs.getString("cart_id")%>">

<td class="product">
    <img src="images/<%=rs.getString("product_image")%>">
</td>

<td><span><%=rs.getString("product_name")%></span></td>

<td>₹<%=rs.getString("price")%></td>

<td><%=rs.getString("quantity")%></td>

<td class="item-total">₹<%=rs.getString("total")%></td>

<td>
<button type="submit" class="remove-btn" name="submit" value="Remove">
Remove
</button>
</td>

</form>
</tr>
    
        <%} %>

    </table>
    <br>
        <form action="user_cart" method="post">
         <input type="hidden" value="<%=subtotal%>" name="subtotal">
    <div class="cart-summary">
        <h3>Cart Summary</h3>
        <br>
        <p>Total Amount: <span id="grandTotal">₹<%=subtotal %></span></p>
        <input type="hidden" name="g_total" value="<%=subtotal %>">
        <br>
      
    <button type="submit" class="checkout-btn" name="submit" value="Proceed">Proceed to Shipping</button>
    </form>

    </div>

</div>

<script src="js/user_cart.js"></script>
<footer>
<p>🌱 Quality Fertilizers for Better Farming</p>
</footer>

</body>
</html>