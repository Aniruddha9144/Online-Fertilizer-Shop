

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.beans.Statement;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;

/**
 * Servlet implementation class user_checkout
 */
@WebServlet("/user_checkout")
public class user_checkout extends HttpServlet {
	Connection cn = null;
	Statement st = null;
	private static final long serialVersionUID = 1L;

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	
        PrintWriter out = resp.getWriter();
        
        Database db = new Database();
		String result = db.Connectdb();
		
		String fullname=req.getParameter("fullname");
		String email=req.getParameter("email");
		String phone=req.getParameter("phone");
		String address=req.getParameter("address");
		String city=req.getParameter("city");
		String pincode=req.getParameter("pincode");



String event = req.getParameter("submit");
	
		
		if(event.equals("place order"))
		{
			try
			{
			 String sql = "insert into user_checkout(fullname,email,phone,address,city,pincode)values('"+fullname+"','"+email+"','"+phone+"','"+address+"','"+city+"','"+pincode+"')";
			 String result1 = db.Insert(sql);
			 out.println(result1);
			
			resp.setContentType("text/html");
			out.println("<script type='text/javascript'>");
			out.println("alert('Checkout Success')");
			out.println("location='user_checkout.jsp'");
			out.println("</script>");		
			}
			catch(Exception ex)
			{
				out.println(ex.toString());
			}
		}

		
	}

	}


