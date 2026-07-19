<%@page import="java.sql.*" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Product Info</title>

<style>
<%@include file="css/product_info.css" %>
</style>

</head>
<body>

<jsp:include page="u_navbar.jsp"/>

<%
String product_id = (String) session.getAttribute("product_id");

Connection cn = null;
Statement st = null;

Class.forName("com.mysql.jdbc.Driver");
cn = DriverManager.getConnection("jdbc:mysql://localhost:3306/fertilizerproject","root","root");
st = cn.createStatement();

String sql = "select * from add_product where product_id ='"+product_id+"'";
ResultSet rs = st.executeQuery(sql);

while(rs.next())
{
%>

<form action="product_info" method="post" class="product-container">

    <input type="hidden" name="product_id" value="<%=rs.getString("product_id")%>">
    <input type="hidden" name="product_name" value="<%=rs.getString("product_name")%>">
    <input type="hidden" name="price" value="<%=rs.getString("price")%>">

    <!-- LEFT SIDE IMAGE -->
    <div class="product-image">
        <img src="images/<%=rs.getString("image") %>">
    </div>

    <!-- RIGHT SIDE DETAILS -->
    <div class="product-details">

        <h1><%=rs.getString("product_name") %></h1>

        <p class="category">
            Category: <%=rs.getString("category") %>
        </p>

        <p class="description">
            <%=rs.getString("description") %>
        </p>

        <p class="price">
            Price: ₹ <%=rs.getString("price") %>
        </p>

        <div class="quantity">
            <label>Quantity:</label>
            <input type="number" value="1" min="1" name="quantity">
        </div>

        <div class="buttons">
            <button type="submit" class="cart-btn" name="submit" value="addtocart">
                Add to Cart
            </button>

            <button type="submit" class="buy-btn" name="submit" value="Buynow">
                Buy Now
            </button>
        </div>

    </div>

</form>

<%
}
rs.close();
st.close();
cn.close();
%>



</body>
</html>