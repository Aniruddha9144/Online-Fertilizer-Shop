<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Admin Dashboard - Orders</title>
    <link rel="stylesheet" href="css/style.css">
     <style><%@include file="css/admin_dashboard_orders.css" %></style>
</head>
<body>

<jsp:include page="admin_navbar.jsp"/>				

    
    <div class="main-content">

        
        <header>
            <h1>Order Management</h1>
        </header>
        
    <br>
        
        <div class="table-container">
            <table>
                <thead>
                    <tr>
                        <th>Order ID</th>
                        <th>Product</th>
                        <th>Quantity</th>
                        <th>Price</th>
                        <th>Total(₹)</th>
                        <th>Cust Name</th>
                        <th>Mobile</th>
                        <th>Address</th>
                          <th>Order Date</th>
                        <th>Delivery date</th>
                        <th>Status</th>
                        <th>Change</th>
                          <th>Action</th>
                    </tr>
                </thead>
 <%
                Connection cn = null;
                Statement st = null;
                Class.forName("com.mysql.jdbc.Driver");
                cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/fertilizerproject","root","root");
                st=cn.createStatement();
                String sql = "SELECT * FROM user_order where status='Pending' || status='Confirm' || status='Packed' || status='Shipped'";
                ResultSet rs=st.executeQuery(sql);
                while(rs.next())
                {
                
                %>
            <form action="admin_dashboard_orders" method="post">
            <input type="hidden" value="<%=rs.getString("order_id") %>" name="order_id">
            <tbody>
                <tr>
                    <td>#<%=rs.getString("order_id") %></td>
                    <td>
                    <img src="images/<%=rs.getString("product_image") %>" style="height: 50px;width: 50px;"><br>
                    <%=rs.getString("product_name") %>
                    </td>
                    <td><%=rs.getString("quantity") %></td>
                    <td><%=rs.getString("price") %></td>
                    <td><%=rs.getString("total") %></td>
                         <td><%=rs.getString("full_name") %></td>
                              <td><%=rs.getString("mobile") %></td>
                                   <td><%=rs.getString("address") %></td>
                    <td><%=rs.getString("pay_date") %></td>
                       <td><%=rs.getString("delevery_date") %></td>
                        <td><%=rs.getString("status") %></td>
                       
                       <td>
                       <select name="status">
                       <option>pending</option>
                        <option>Confirm</option>
                       <option>Packed</option>
                         <option>Shipped</option>
                           <option>Delivered</option>
                       </select>
                       </td>
                       
                        <td>
                           <button name="submit" type="submit" value="Update" class="cancel-btn">Update</button>
                        </td>
                    </tr>
             </form>      
                    
    <%} %>
                </tbody>
            </table>
        </div>



</div>
       <footer class="footer">
<p>🌱 Quality Fertilizers for Better Farming</p>
</footer>
</body>
</html>
