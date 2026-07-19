

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
 * Servlet implementation class admin_login
 */
@WebServlet("/admin_login")

public class admin_login extends HttpServlet {
	Connection cn = null;
	Statement st = null;
	
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		PrintWriter out = resp.getWriter();
		
		Database db = new Database();
		String result = db.Connectdb();	
		
		String email=req.getParameter("email");
		String password=req.getParameter("password");
		
		String event = req.getParameter("submit");
		
		if(event.equals("Login"))
		{
			if(email.equals("admin@gmail.com")&&password.equals("admin"))
			{
				resp.setContentType("text/html");
				out.println("<script type='text/javascript'>");
				out.println("alert ('Admin Login Success...!')");
				out.println("location='admin_dashboard.jsp'");
				out.println("</script>");
				
			}
			else {
				resp.setContentType("text/html");
				out.println("<script type='text/javascript'>");
				out.println("<alert('Login Failed...')");
			}
		}
		
		
	}
}
