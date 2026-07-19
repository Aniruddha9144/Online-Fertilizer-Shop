

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;


import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.text.SimpleDateFormat;
import java.util.Date;

/**
 * Servlet implementation class user_payment
 */
@WebServlet("/user_payment")
public class user_payment extends HttpServlet {

	Connection cn = null;
	Statement st = null;
	private static final long serialVersionUID = 1L;

  @Override
protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	
	  PrintWriter out = resp.getWriter();
	  HttpSession session = req.getSession();
		Database db = new Database();
		String result = db.Connectdb();
	  
	  String card_name=req.getParameter("card_name");
	  String card_number=req.getParameter("card_number");
	  String card_expiry=req.getParameter("card_expiry");
	  String card_cvv=req.getParameter("card_cvv");
	  String payment_method=req.getParameter("payment_method");
	  String upi_id = req.getParameter("	");
	  
	  
		String event = req.getParameter("submit");
    
		  Date date = new Date();
		  SimpleDateFormat formmater = new SimpleDateFormat("dd/MM/yyyy");
		  String c_date = formmater.format(date);
		  
		  
		  long millis = date.getTime();
		  long sevenDays = 7L * 24 * 60 * 60 * 1000;   // 7 days in milliseconds
		  Date delivery = new Date(millis + sevenDays);

		  // Format Delivery Date
		  String delivery_date = formmater.format(delivery);

	  
		if(event.equals("checkout"))
		{
			try
			{
				
				
				if(payment_method.equals("Credit Card"))
				{
				
					 String sql = "insert into user_payment( card_name, card_number_upi_id, card_expiry, card_cvv, payment_method, pay_date, user_id,amount)values('"+card_name+"','"+card_number+"','"+card_expiry+"','"+card_cvv+"','"+payment_method+"','"+c_date+"','"+session.getAttribute("user_id")+"','"+session.getAttribute("subtotal")+"')";
					 String result1 = db.Insert(sql);
					 out.println(result1);
				}
				else if(payment_method.equals("UPI"))
				{
					 String sql = "insert into user_payment( card_name, card_number_upi_id, card_expiry, card_cvv, payment_method, pay_date, user_id,amount)values('-','"+upi_id+"','-','-','"+payment_method+"','"+c_date+"','"+session.getAttribute("user_id")+"','"+session.getAttribute("subtotal")+"')";
					 String result1 = db.Insert(sql);
					 out.println(result1);
				}
			 
			
		        Connection cn = null;
		    	Statement st = null;
		        
		        Class.forName("com.mysql.jdbc.Driver");
		        cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/fertilizerproject","root","root");
		        st=cn.createStatement();
		        String sql1 = "select * from cart where user_id ='"+session.getAttribute("user_id")+"'";
		        ResultSet rs=st.executeQuery(sql1);
		        while(rs.next())
		        {
		        	
		        	
		       
		        	String insert = db.Insert("insert into user_order( user_id, product_name, product_image, price, quantity, total, full_name, mobile, email, address, status, pay_date, delevery_date)values('"+session.getAttribute("user_id")+"','"+rs.getString("product_name")+"','"+rs.getString("product_image")+"','"+rs.getString("price")+"','"+rs.getString("quantity")+"','"+rs.getString("total")+"','"+session.getAttribute("full_name")+"','"+session.getAttribute("mobile")+"','"+session.getAttribute("email")+"','"+session.getAttribute("address")+"','Pending','"+c_date+"','"+delivery_date+"')");
		    		
		    		out.println(insert);
		    		
		    		String delete = db.delete("delete from cart where user_id='"+session.getAttribute("user_id")+"'");
					out.println(delete);
					
			 
			
			resp.setContentType("text/html");
			out.println("<script type='text/javascript'>");
			out.println("alert('payment Success')");
			out.println("location='payment_successful.jsp'");
			out.println("</script>");		
		        }
			}
			catch(Exception ex)
			{
				out.println(ex.toString());
			}
		  
		
		
		
		}	
	 
}
	
}
