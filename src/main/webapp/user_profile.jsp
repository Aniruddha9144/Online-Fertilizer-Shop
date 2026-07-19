<%@page import = "java.sql.*" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>user view profile</title>
<link rel="stylesheet" type="text/css" href="css/user_profile.css">
</head>
<body>
<%@ include file="u_navbar.jsp" %>

  <%
String user_id = (String) session.getAttribute("user_id");

Connection cn = null;
Statement st = null;
ResultSet rs = null;

try{
    Class.forName("com.mysql.jdbc.Driver");
    cn = DriverManager.getConnection("jdbc:mysql://localhost:3306/fertilizerproject","root","root");
    st = cn.createStatement();
    String sql = "select * from user_register where user_id ='"+user_id+"'";
    
    rs = st.executeQuery(sql);

    if(rs.next()){

        String name = rs.getString("username");
        String contact = rs.getString("contact");
        String email = rs.getString("email");  // ✅ fix spelling if needed
        String address = rs.getString("address");

        String initials = "";

        if(name != null && !name.trim().isEmpty()) {
            String[] parts = name.trim().split("\\s+");

            for(String part : parts) {
                if(!part.isEmpty()) {
                    initials += part.substring(0,1).toUpperCase();
                }
            }

            // Optional: limit to 2 letters only
            if(initials.length() > 2) {
                initials = initials.substring(0,2);
            }
        }
%>

  <div class="profile-container">
        <div class="profile-header">
            <div class="avatar"><%= initials %></div>
            <h1><%=rs.getString("username") %></h1>
            <p class="subtitle">User Profile</p>
        </div>

        <div class="profile-row">
            <label>Mobile No</label>
            <span><%= rs.getString("contact")  %></span>
        </div>

        <div class="profile-row">
            <label>Email</label>
            <span><%= rs.getString("email")  %></span>
        </div>

        <div class="profile-row">
            <label>Address</label>
            <span><%= rs.getString("address")  %></span>
        </div>

        <div class="profile-buttons">
            <button class="edit-btn"><a href="edit_profile.jsp">Edit Profile</a></button>
            <button class="close-btn" onclick="window.history.back();">Close</button>
        </div>
    </div>
    <%
    }
}catch(Exception e){
    out.println("Error: " + e.getMessage());
}finally{
    if(rs!=null) rs.close();
    if(st!=null) st.close();
    if(cn!=null) cn.close();
}
%>

<footer>
<p>🌱 Quality Fertilizers for Better Farming</p>
</footer>

</body>
</html>