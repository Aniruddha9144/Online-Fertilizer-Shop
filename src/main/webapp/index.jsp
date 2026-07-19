<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Fertilizer Shop</title>
    <link rel="stylesheet" href="css/style.css">
    <style><%@ include file="css/index.css"%></style>
    
    <!-- Font Awesome CDN -->
    <link rel="stylesheet"
          href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css">
    
    
</head>
<body>

<jsp:include page="u_navbar.jsp"/>
   
   
    <div class="page-content">
        <h2>Welcome to Fertilizer Shop 🌱</h2>
        <p>Healthy soil, healthy crops.</p>
    </div>
    

<section class="hero">
    <div class="container hero-flex">

       
        <div class="hero-text">
            <h1>Empowering Farmers with Quality Fertilizers</h1>
            <p>Organic, Chemical, Bio Fertilizer Products</p>
            <a href="user_product.jsp" class="btn">Shop Now</a>				
        </div>

       
        <div class="hero-image">
            <img src="images/80.png" alt="Organic Fertilizer">
        </div>

    </div>
</section>

  <section class="features">
  <div class="feature-box">
    <h3>🌱 100% Organic</h3>
    <p>No chemicals. Safe for soil & plants.</p>
  </div>
  <div class="feature-box">
    <h3>🚚 Fast Delivery</h3>
    <p>Delivered fresh to your farm.</p>
  </div>
  <div class="feature-box">
    <h3>♻ Eco Friendly</h3>
    <p>Protecting nature for the future.</p>
  </div>
</section>





<footer class="footer">
    <div class="container">
<p>🌱 Quality Fertilizers for Better Farming</p>
    </div>
 
    
</footer>

</body>
</html>
    