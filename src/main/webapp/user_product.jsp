<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>Fertilizer Shop</title>

<link rel="stylesheet" href="css/user_product.css">
<style><%@ include file="css/user_product.css" %></style>

</head>
<body>

<jsp:include page="u_navbar.jsp"/>

<div class="products">

<%
Connection cn = null;
Statement st = null;

Class.forName("com.mysql.jdbc.Driver");   // Updated driver
cn = DriverManager.getConnection(
        "jdbc:mysql://localhost:3306/fertilizerproject",
        "root",
        "root");

st = cn.createStatement();
String sql = "SELECT * FROM add_product;";
ResultSet rs = st.executeQuery(sql);

while(rs.next()) {
%>

    <form action="oragnic_category" method="post"> 
        <input type="hidden" name="product_id"
               value="<%=rs.getString("product_id")%>">          

        <div class="product-card">
            <img src="images/<%=rs.getString("image") %>" alt="Product Image">
            <div class="product-name">
                <%=rs.getString("product_name") %>
            </div>
            <div class="price">
                Rs <%=rs.getString("price") %>
            </div>
            <button type="submit" name="submit"
                    class="btn" value="viewproduct">
                View Product
            </button>       
        </div>
    </form>

<%
}
rs.close();
st.close();
cn.close();
%>

</div>

<footer>
<p>🌱 Quality Fertilizers for Better Farming</p>
</footer>

</body>
</html>