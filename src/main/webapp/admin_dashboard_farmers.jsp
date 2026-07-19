<%@page import = "java.sql.*" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
 <!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin Dashboard - Farmers Page</title>
    <link rel="stylesheet" href="css/style.css">
    <style><%@ include file="css/admin_dashboard_farmers.css" %></style>
</head>
<body>

  <jsp:include page="admin_navbar.jsp"/>

    <div class="main-content">
        <header>
            <h1>Farmers Page</h1>
        </header>

        
        <div class="table-container">
            <table>
                <thead>
                    <tr>
                        <th>ID</th>
                        <th>Name</th>
                        <th>Contact</th>
                        <th>Email</th>
                        <th>Address</th>
                        <th>Actions</th>
                    </tr>
                </thead>
                <%
                
                Connection cn = null;
                Statement st = null;
                
                Class.forName("com.mysql.jdbc.Driver");
                cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/fertilizerproject","root","root");
                st=cn.createStatement();
                String sql = "select * from user_register";
                ResultSet rs=st.executeQuery(sql);
                		while(rs.next())
                		{
                			%>
                		
                
                    <tr>
                        <td><%=rs.getString("user_id")%></td>
                        <td><%=rs.getString("username")%></td>
                        <td><%=rs.getString("contact")%></td>
                        <td><%=rs.getString("email")%></td>
                        <td><%=rs.getString("address")%></td>
                       <td>
<form action="admin_dashboard_farmers" method="post">
        <input type="hidden" name="user_id" value="<%=rs.getString("user_id")%>">
        <button type="submit" name="submit" value="delete" class="delete-btn">
            Delete
        </button>
    </form>
</td>
                    </tr>
                    <%}%>
            </table>
        </div>
    </div>
    <footer class="footer">
<p>🌱 Quality Fertilizers for Better Farming</p>
</footer>
</body>
</html>
