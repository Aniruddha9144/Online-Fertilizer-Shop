<%@page import = "java.sql.*" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Admin Feedback | GreenGrow</title>
    <link rel="stylesheet" href="css/style.css">
        <style><%@include file="css/admin_feedback.css" %></style>

</head>
<body>

<jsp:include page="admin_navbar.jsp"/>

<div class="container">
    <h2>Feedback Management</h2>
    <p class="subtitle">View feedback from farmers and customers</p>

    
<div class="feedback-grid">
        
					<%
        
			        Connection cn = null;
			    	Statement st = null;
			        
			        Class.forName("com.mysql.jdbc.Driver");
			        cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/fertilizerproject","root","root");
			        st=cn.createStatement();
			        String sql = "select * from feedback";
			        ResultSet rs=st.executeQuery(sql);
			        while(rs.next())
			        {
			        	
			        
			        %>
        <div class="feedback-card">
            <label class="name">Name :</label>
                <span class="email"><%=rs.getString("full_name") %></span><br><br>
            <label class="name">Email :</label>
            <span class="email"><%=rs.getString("email") %></span><br><br>
            <label class="name">Product :</label>
            <span class="email"><%=rs.getString("product") %></span><br><br>
            <label class="name">Rating :</label>
            <span class="email"><%=rs.getString("rating") %></span><br><br>
            <label class="name">Message :</label>
            <span class="email"><%=rs.getString("message") %></span><br><br>
            <label class="name">Date :</label>
            <span class="email"><%=rs.getString("c_date") %></span>
        </div>
				<%} %>
    </div>
</div>
   

    <footer class="footer">
<p>🌱 Quality Fertilizers for Better Farming</p>
</footer>
</body>
</html>
