<%@ page language="java" contentType="text/html; charset=UTF-8" 
   pageEncoding="UTF-8"%>
   
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Admin | Add Fertilizer Product</title>
    <link rel="stylesheet" href="css/style.css">
<style><%@include file="css/admin_add_product.css" %></style>
</head>
<body>

  <jsp:include page="admin_navbar.jsp"/>

    <div class="form-card">

        <h2>ADD PRODUCT</h2>

        <form id="addproductForm" name="admin_add_product" action="admin_add_product" method="post">

            <div class="form-row">
                <label>Product Name :</label>
                <input type="text" placeholder="Enter product name" required name="product_name">
            </div>

            <div class="form-row">
                <label>Category :</label>
                <select required name="category">
                    <option value="">Select Category</option>
                    <option>Organic</option>
                    <option>Chemical</option>
                    <option>Liquid Based</option>
                    <option>Bio</option>
                </select>
            </div>

            <div class="form-row">
                <label>Price :</label>
                <input type="number" placeholder="Enter price" required name="price">
            </div>

            <div class="form-row">
                <label>Quantity :</label>
                <input type="number" placeholder="Enter quantity" required name="Quantity">
            </div>

            <div class="form-row">
                <label>Description :</label>
              <input type ="text" placeholder="Enter product description" name="description">
            </div>

            <div class="form-row">
                <label>Product Image :</label>
                <input type="file" accept="image/*" name="image"> 
            </div>
            
            
            

            <div class="form-row">
                <button type="submit" name="submit" value="addproduct">ADD PRODUCT</button>
            </div>

        </form>

    </div>
    <footer class="footer">
<p>🌱 Quality Fertilizers for Better Farming</p>
</footer>

</body>
</html>
