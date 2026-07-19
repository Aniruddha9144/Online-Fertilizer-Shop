<%@page import = "java.sql.*" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Edit Product</title>
    <link rel="stylesheet" href="css/style.css">
    <style><%@include file="css/admin_edit_product.css"%></style>
</head>
<body>

  <jsp:include page="admin_navbar.jsp"/>


<div class="container">
    <div class="product-box">
   			 <%
            
            String product_id = (String) session.getAttribute("product_id");
            %>
				<%
                     
                Connection cn = null;
                Statement st = null;
                
                Class.forName("com.mysql.jdbc.Driver");
                cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/fertilizerproject","root","root");
                st=cn.createStatement();
                String sql = "SELECT * FROM add_product where product_id='"+product_id+"'";
                ResultSet rs=st.executeQuery(sql);
                while(rs.next())
                {
                
                %>
        <div class="header">
            EDIT PRODUCT
        </div>

        <form name="admin_edit_product" action="admin_edit_product" method="post">

            <label>Product Name :</label>
            <input type="text" name="product_name" value="<%=rs.getString("product_name") %>" required>

            <label>Category :</label>
            <select name="category" required>
                <option value="">"<%=rs.getString("category") %>"</option>
                <option value="Organic">Organic</option>
                <option value="Chemical">Chemical</option>
                <option value="Liquid Based">Liquid Based</option>
                <option value="Bio">Bio</option>
            </select>

            <label>Price :</label>
            <input type="number" name="price" value="<%=rs.getString("price") %>" required>

            <label>Quantity :</label>
            <input type="number" name="quantity" value="<%=rs.getString("Quantity") %>" required>

            <label>Description :</label>
            <input type="text" name="description" value="<%=rs.getString("description") %>" required>

            <label>Product Image :</label>
            <input type="file" name="image" value="images<%=rs.getString("image") %>">

            <button type="submit" class="btn" name="submit" value="update_product">UPDATE PRODUCT</button>

        </form>
<%} %>
    </div>
</div>
<footer class="footer">
<p>🌱 Quality Fertilizers for Better Farming</p>
</footer>

</body>
</html>
