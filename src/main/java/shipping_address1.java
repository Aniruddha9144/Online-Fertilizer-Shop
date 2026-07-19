

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.beans.Statement;
import java.io.IOException;
import java.io.PrintWriter;

import com.sun.jdi.connect.spi.Connection;

/**
 * Servlet implementation class shipping_address1
 */
@WebServlet("/shipping_address1")
public class shipping_address1 extends HttpServlet {
	Connection cn = null;
	Statement st = null;
@Override
protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	
	PrintWriter out = resp.getWriter();
	HttpSession session = req.getSession();
	
	Database db = new Database();
	String result = db.Connectdb();
	
	String full_name=req.getParameter("full_name");
	String mobile=req.getParameter("mobile");
	String email=req.getParameter("email");
	String address=req.getParameter("address");
	String city=req.getParameter("city");
	String state=req.getParameter("state");
	String pincode=req.getParameter("pincode");
	String country=req.getParameter("country");


	String event = req.getParameter("submit");
	
	if(event.equals("Payment"))
	{
		try
		{
		 String sql = "insert into shipping_address(full_name,mobile,email,address,city,state,pincode,country,user_id)values('"+full_name+"','"+mobile+"','"+email+"','"+address+"','"+city+"','"+state+"','"+pincode+"','"+country+"','"+session.getAttribute("user_id")+"')";
			
		 String result1 = db.Insert(sql);
		 out.println(result1);
		 
		 
		 session.setAttribute("full_name", full_name);
		 session.setAttribute("mobile", mobile);
		 session.setAttribute("address", address);
		 session.setAttribute("email", email);
		 
		 resp.setContentType("text/html");
			out.println("<script type='text/javascript'>");
			out.println("alert('shipping information sent Successfully..!')");
			out.println("location='user_payment1.jsp'");
			out.println("</script>");
				
		}
		catch(Exception ex)
		{
			out.println(ex.toString());
		}
	}

   }
}
