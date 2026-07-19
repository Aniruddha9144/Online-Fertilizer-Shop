<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>user edit profile</title>
<link rel="stylesheet" href="css\edit_profile.css">
</head>
<body>
<%@ include file="u_navbar.jsp" %>
		<%
		    String name = (String) session.getAttribute("username");
		    String email = (String) session.getAttribute("email");
		    String contact = (String) session.getAttribute("contact");
		    String address = (String) session.getAttribute("address");
		
		    String initials = "";

		    if(name != null && !name.trim().isEmpty()) {

		        String[] parts = name.trim().split("\\s+");

		        for(String part : parts) {
		            if(!part.isEmpty()) {
		                initials += part.substring(0,1).toUpperCase();
		            }
		        }

		        // Limit to 2 letters max (optional)
		        if(initials.length() > 2){
		            initials = initials.substring(0,2);
		        }
		    }
		%>

    <div class="profile-container" style="margin-top:90px;">
        <div class="profile-header">
            <div class="avatar"><%= initials %></div>

            <h1>Edit Profile</h1>
            <p class="subtitle">Update your details</p>
        </div>

        <form action="edit_profile" name="edit_profile" method="post"> 

            <div class="profile-row">
                <label>Name</label>
                <input type="text" name="username" value="<%= name %>">

            </div>

            <div class="profile-row">
                <label>Mobile No</label>
                <input type="text" name="contact" value="<%= contact %>">
            </div>	

            <div class="profile-row">
                <label>Email</label>
                <input type="email" name="email" value="<%= email %>">
            </div>

            <div class="profile-row">
                <label>Address</label>
                <input type="text" name="address" value="<%= address %>">
            </div>
            
			<%
			if(session.getAttribute("email") == null){
			    response.sendRedirect("user_login.jsp");
			}
			%>

            <div class="profile-buttons">
                <button type="submit" name="submit" value="savechanges" class="edit-btn">Save Changes</button>
                <button type="button" class="close-btn" onclick="window.history.back();">Cancel</button>
            </div>

        </form>
    </div>
</body>
</html>