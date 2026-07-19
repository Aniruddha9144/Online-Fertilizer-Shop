<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Reports</title>
     <link rel="stylesheet" href="css/style.css">
<style><%@include file="css/admin_report.css" %></style>
</head>

<body>
<form action="view_report.jsp" method="post">

    <h2>Normal Report</h2>

     <input type="submit" name="submit" value="address List">
 
     <input type="submit" name="submit" value="cart List">
     
      <input type="submit" name="submit" value="feedback list">
      
       <input type="submit" name="submit" value="order List">
       
              <input type="submit" name="submit" value="payment List">
       
              <input type="submit" name="submit" value="product List">
            
              <input type="submit" name="submit" value="register List">
       
             
 <h2>Id Wise Report</h2>                  
 <input type="text" name="id" placeholder="Enter ID Here"><br>
  <input type="submit" name="submit" value="id wise register list">
  <input type="submit" name="submit" value="id wise payment list">
 
   
     
    
      <h2>Date Wise Report</h2>
       <input type="text" name="date" placeholder="Enter Date Here"><br>
       <input type="submit" name="submit" value="date wise pyment list">
  <input type="submit" name="submit" value="date wise feedback list">
      
     </form>
</body>
</html>