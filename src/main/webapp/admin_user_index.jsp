<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Login | Fertilizer Shop</title> 

    <link rel="stylesheet"
          href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css">
    
    
    <link rel="stylesheet" href="css/admin_user_index.css">
    <style><%@include file="css/admin_user_index.css" %></style>
</head>
<body>

<jsp:include page="main_admin_navbar.jsp"/> 


    <div class="login-wrapper">
    
        <div class="login-content">
       
            <h1>Nourish Your Soil,<br>Grow Naturally</h1>
            <p>Choose your login type to continue</p>

            <div class="login-buttons">
                <a href="user_login.jsp" class="btn user-btn">User Login</a>
                <a href="admin_login.jsp" class="btn admin-btn">Admin Login</a>
            </div>
        </div>
        
        

        <div class="login-image">
            <img src="images/template.jpg" alt="Organic Gardening">
        </div>
    </div>
    
   
<section class="product-section">
    <h2 class="section-title">Our Fertilizer Products</h2>
    <br>
    <br>

    <div class="product-container">

        <div class="product-card">
    <img src="images/oragnic_fertilizer.png" alt="Organic Compost">
    <h3>Organic Compost</h3>
    <p>Improves soil fertility and increases crop yield naturally.</p>
        </div>
        
            <div class="product-card">
            <img src="images/inorganic_wallpaper.png" alt="Liquid Fertilizer">
            <h3>In-Organic Fertilizer</h3>
            <p>Fast absorbing nutrients for quick plant growth.</p>
        </div>

        <div class="product-card">
            <img src="images/bio_wallpaper.png" alt="Bio Fertilizer">
            <h3>Bio Fertilizer</h3>
            <p>Enhances root growth and boosts plant immunity.</p>
           
        </div>

    

    </div>
</section>
  
<footer class="footer">
<p>🌱 Quality Fertilizers for Better Farming</p>
</footer>
<script>
const cards = document.querySelectorAll(".product-card");

window.addEventListener("scroll", function() {

    cards.forEach((card, index) => {

        const windowHeight = window.innerHeight;
        const cardTop = card.getBoundingClientRect().top;
        const visiblePoint = 100;

        if (cardTop < windowHeight - visiblePoint) {
            setTimeout(() => {
                card.classList.add("show");
            }, index * 300); // 300ms delay for each box
        }

    });

});
</script>
</body>
</html>
