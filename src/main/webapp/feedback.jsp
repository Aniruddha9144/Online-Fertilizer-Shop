<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Fertilizer Shop - Feedback</title>
    
    <link rel="stylesheet" href="css/feedback.css">
    <style><%@ include file="css/feedback.css" %> </style>
    
    <jsp:include page="u_navbar.jsp"/>  
    
</head>

<body>



    <div class="feedback-wrapper">

      
        <div class="feedback-info">
            <h1>Customer Feedback</h1>
            <p>
                Your feedback is very important to us.  
                It helps improve product quality and farmer satisfaction.
            </p>

            <ul>
                <li>🌱 Improve fertilizer quality</li>
                <li>📦 Better product availability</li>
                <li>👨‍🌾 Farmer-friendly services</li>
                <li>📊 Better future planning</li>
            </ul>
        </div>

       
        <div class="feedback-form-box">
            <h2>Send Your Feedback</h2>

           <form id="FeedbackForm" name="feedback" action="feedback" method="post">

                <label>Full Name</label>
                <input type="text" name="full_name" placeholder="Enter your name" required>

                <label>Email</label>
                <input type="email" name="email" placeholder="Enter your email" required>

                <label>Product Purchased</label>
                <input type="text" name="product" placeholder="e.g. Urea Fertilizer">

                <label>Rating</label>
                <select name="rating" required>
                    <option value="">Select Rating</option>
                    <option value="Excellent">Excellent</option>
                    <option value="Good">Good</option>
                    <option value="Average">Average</option>
                    <option value="Poor">Poor</option>
                </select>

                <label>Feedback</label>
                <textarea name="message" rows="4"
                    placeholder="Write your feedback here..." required></textarea>

                <button type="submit" name="submit" value="submit_feedback">Submit Feedback</button>

            </form>
        </div>

    </div>
<footer class="footer">
<p>🌱 Quality Fertilizers for Better Farming</p>
</footer>
</body>
</html>
