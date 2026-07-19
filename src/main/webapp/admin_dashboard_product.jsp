<%@page import = "java.sql.*" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Admin Dashboard - Products</title>
    <link rel="stylesheet" href="css/style.css">
    <style><%@include file="css/admin_dashboard_product.css" %></style>
</head>
<body>
<jsp:include page="admin_navbar.jsp"/>
<div class="dashboard">

    <main class="main-content">

  
        <header class="header">
            <h1>Product Management</h1>
          <a href="admin_add_product.jsp" class="add-btn">+ Add Product</a>
         
        </header>

        
        <section class="table-section">
            <table>
                <thead>
                    <tr>
                        <th>ID</th>
                        <th>Product Name</th>
                        <th>Price (₹)</th>
                        <th>Stock</th>             
                        <th>Category</th>             
                        <th>Description</th>
                        <th>Image</th>
                        <th>Action</th>
                      
                        
                    </tr>
                </thead>
                
                     <%
                     
                Connection cn = null;
                Statement st = null;
                
                Class.forName("com.mysql.jdbc.Driver");
                cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/fertilizerproject","root","root");
                st=cn.createStatement();
                String sql = "SELECT * FROM add_product";
                ResultSet rs=st.executeQuery(sql);
                while(rs.next())
                {
                
                %>
                <form action="admin_dashboard_product" name="admin_dashboard_product" method="post">
                <input type="hidden" name="product_id" value="<%=rs.getString("product_id")%>">
                <tr>
                        <td><%=rs.getString("product_id") %></td>
                        <td><%=rs.getString("product_name") %></td>
                        <td><%=rs.getString("price") %></td>
                       <td><%=rs.getString("Quantity") %></td>
                          <td><%=rs.getString("category") %></td>
                        <td><%=rs.getString("description") %></td>
                        <td><img src="images/<%=rs.getString("image") %>" style= width:10%></td>
                        <td>
                        <button type="submit" name="submit" value="edit" class="a">Edit</button>
                        <button type="submit" name="submit" value="delete" class="r">Delete</button>
                       
                        </td>
                    </tr>
                    </form>                    
			<%
			
			}
			
			%>
                    
                    
            </table>
        </section>

    </main>

</div>
<footer class="footer">
<p>🌱 Quality Fertilizers for Better Farming</p>
</footer>
</body>
</html>
    