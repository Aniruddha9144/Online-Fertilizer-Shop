	<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
    <title>Admin Dashboard</title>

    <link rel="stylesheet" href="css/style.css">
    <style><%@include file="css/admin_dashboard.css" %></style>

</head>

<body>
<jsp:include page="admin_navbar.jsp"/>
   <br>
 
    <div class="dashboard">

       
        <div class="cards">
     
      
                


            <div class="card">
                <h3>📦 Products</h3>
                
             <%
               Integer count =0;
                Connection cn = null;
                Statement st = null;
                Class.forName("com.mysql.jdbc.Driver");
                cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/fertilizerproject","root","root");
                st=cn.createStatement();
                String sql = "SELECT * FROM add_product";
                ResultSet rs=st.executeQuery(sql);
                while(rs.next())
                {
                	count++;
                }
                %>
                 <p>   <%=count %></p>
          
            </div>

            <div class="card">
                <h3>👨‍🌾 Farmers</h3>
                 <%
               Integer count1 =0;
     
                 st = null;
                Class.forName("com.mysql.jdbc.Driver");
                cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/fertilizerproject","root","root");
                st=cn.createStatement();
                String sql1 = "SELECT * FROM user_register";
                ResultSet rs1=st.executeQuery(sql1);
                while(rs1.next())
                {
                	count1++;
                }
                %>
                <p><%=count1 %></p>
           
            </div>

            <div class="card">
                <h3>🧾 Orders</h3>
                  <%
               Integer count2 =0;
     
                 st = null;
                Class.forName("com.mysql.jdbc.Driver");
                cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/fertilizerproject","root","root");
                st=cn.createStatement();
                String sql2 = "SELECT * FROM user_order";
                ResultSet rs2=st.executeQuery(sql2);
                while(rs2.next())
                {
                	count2++;
                }
                %>
                <p><%=count2 %></p>
      
            </div>

            <div class="card">
                <h3>Total Sales</h3>
                 <%
               Double total =0.0;
     
                 st = null;
                Class.forName("com.mysql.jdbc.Driver");
                cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/fertilizerproject","root","root");
                st=cn.createStatement();
                String sql4 = "SELECT * FROM user_payment";
                ResultSet rs4=st.executeQuery(sql4);
                while(rs4.next())
                {
                	total += Double.parseDouble(rs4.getString("amount"));
                }
                %>
                <p><%=total %></p>

          
            </div>
            
             <div class="card">
                <h3>📊 feedback</h3>
                 <%
               Integer count3 =0;
     
                 st = null;
                Class.forName("com.mysql.jdbc.Driver");
                cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/fertilizerproject","root","root");
                st=cn.createStatement();
                String sql3 = "SELECT * FROM feedback";
                ResultSet rs3=st.executeQuery(sql3);
                while(rs3.next())
                {
                	count3++;
                }
                %>
                <p><%=count3 %></p>
          
            </div>
          

        </div>
    </div>
<footer class="footer">
<p>🌱 Quality Fertilizers for Better Farming</p>
</footer>
</body>
</html>
