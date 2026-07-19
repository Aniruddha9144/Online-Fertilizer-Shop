<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
        <%@page import = "java.sql.*" %>
    
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <title>Chemical Fertilizers</title>
  <link rel="stylesheet" href="css/style.css">
  <style><%@ include file ="css/chemical(mineral)_category.css"%></style>
</head>
<body>
  
   <h2>Mineral Fertilizer</h2>
          <div class="products">
        <%
                Connection cn = null;
                Statement st = null;
                Class.forName("com.mysql.jdbc.Driver");
                cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/fertilizerproject","root","root");
                st=cn.createStatement();
                String sql = "SELECT * FROM add_product where category='chemical'";
                ResultSet rs=st.executeQuery(sql);
                while(rs.next())
                {
                
                %>
                
            <form action="oragnic_category" name="oragnic_category" method="post"> 
                <input type="hidden" name="product_id" value="<%=rs.getString("product_id")%>">    
        <div class="product-card">
            <img src="images/<%=rs.getString("image") %>">
            <div class="product-name"><%=rs.getString("product_name") %></div>
            <div class="price">Rs<%=rs.getString("price") %></div>
            <button type="submit" name="submit" class="btn" value="viewproduct">View Product</button>
        </div>
        </form>
        
        	<%
			
			}
			
			%>
               
    </div>
    
   
</body>
</html>
