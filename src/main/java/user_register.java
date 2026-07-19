	

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.beans.Statement;
import java.io.IOException;
import java.io.PrintWriter;

import com.sun.jdi.connect.spi.Connection;

/**
 * Servlet implementation class user_register
 */
@WebServlet("/user_register")
public class user_register extends HttpServlet {
      
	Connection cn = null;
	Statement st = null;

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		
		PrintWriter out = resp.getWriter();
		
		Database db = new Database();
		String result = db.Connectdb();
		
		String username=req.getParameter("username");
		String contact=req.getParameter("contact");
		String email=req.getParameter("email");
		String address=req.getParameter("address");
		String password=req.getParameter("password");
		
		String event = req.getParameter("submit");
	
		
		if(event.equals("Register"))
		{
			try
			{
			 String sql = "insert into user_register(username,contact,email,address,password)values('"+username+"','"+contact+"','"+email+"','"+address+"','"+password+"')";
			 String result1 = db.Insert(sql);
			 out.println(result1);
			
			resp.setContentType("text/html");
			out.println("<script type='text/javascript'>");
			out.println("alert('Register Success')");
			out.println("location='user_login.jsp'");
			out.println("</script>");		
			}
			catch(Exception ex)
			{
				out.println(ex.toString());
			}
		}
		
	}
}



