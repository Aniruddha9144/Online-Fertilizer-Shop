<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>GreenGrow Fertilizer Shop</title>
    <link rel="stylesheet" href="css/category.css">
    <style><%@ include file="css/category.css" %></style>
</head>
<body>

<jsp:include page="u_navbar.jsp"/>   
<br>
<br>
<section class="hero">
    <h2>Healthy Crops, Better Yield</h2>
    <p>Best quality fertilizers for every type of farming</p>
    <br>
       <h1>Fertilizer Categories</h1>
</section>

<section class="features">

    <div class="box">		
   		
        <h3>Organic Products</h3>
        <a href="organic_category.jsp">
        <p>Eco-friendly and soil-safe fertilizers</p>
        </a>
    </div>
    
   
    <div class="box">
    
    <h3>Chemical (Mineral Based Products)</h3>
     <a href="chemical(mineral)_category.jsp">
        <p>Precise Nutrition. Powerful Growth</p>
        </a>
    </div>
    
    <div class="box">
        <h3>Liquid Based Products</h3>
        <a href="liquid_based_category.jsp">
        <p>Liquid Power for Growing Crops</p>
        </a> 
    </div>
    
     <div class="box">
        <h3>Bio Fertilizer Products</h3>
        <a href="Bio_fertilizers_category.jsp">
        <p>Boosting Crops the Natural Way</p>
        </a>
    </div>
    

</section>

<footer>
<p>🌱 Quality Fertilizers for Better Farming</p>
</footer>

</body>
</html>

