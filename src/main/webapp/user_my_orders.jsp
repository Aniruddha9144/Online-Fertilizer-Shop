<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>My Orders | Fertilizer Shop</title>
    <link rel="stylesheet" href="css/user_my_orders.css">
    <style> <%@ include file="css/user_my_orders.css" %></style>
</head>
<body>

<jsp:include page="u_navbar.jsp"/>   


<main class="main-content">

    <div class="container">
        <h1>My Orders</h1>

        <table>
            <thead>
                <tr>
                    <th>Order ID</th>
                    <th>Product </th>
                    <th>Quantity</th>
                    <th>Price (₹)</th>
                    <th>Status</th>
                    <th>Order Date</th>
                      <th>Delivery Date</th>
                    <th>Action</th> <!-- New Column -->
                </tr>
            </thead>
            
              
              <%
                Connection cn = null;
                Statement st = null;
                Class.forName("com.mysql.jdbc.Driver");
                cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/fertilizerproject","root","root");
                st=cn.createStatement();
                String sql = "SELECT * FROM user_order where user_id='"+session.getAttribute("user_id")+"'";
                ResultSet rs=st.executeQuery(sql);
                while(rs.next())
                {
                
                %>
            <form action="user_my_orders" method="post">
            <input type="hidden" value="<%=rs.getString("order_id") %>" name="order_id">
            <tbody>
                <tr>
                    <td>#<%=rs.getString("order_id") %></td>
                    <td>
                    <img src="images/<%=rs.getString("product_image") %>" style="height: 100px;width: 100px;"><br>
                    <%=rs.getString("product_name") %>
                    </td>
                    <td><%=rs.getString("quantity") %></td>
                    <td><%=rs.getString("price") %></td>
                    <td class="delivered"><%=rs.getString("status") %></td>
                    <td><%=rs.getString("pay_date") %></td>
                       <td><%=rs.getString("delevery_date") %></td>
                     <td>
                        <button name="submit" type="submit" value="Cancel" class="cancel-btn">Cancel Order</button>
                    </td>
                </tr>
            </form>
               <%} %>
            </tbody>
        </table>
    </div>

<footer class="footer">
<p>🌱 Quality Fertilizers for Better Farming</p>
</footer>

</main>
</body>
</html>