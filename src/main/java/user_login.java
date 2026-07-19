

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;
/**
 * Servlet implementation class user_login
 */
@WebServlet("/user_login")
public class user_login extends HttpServlet {

	Connection cn = null;
	Statement st = null;
	
	

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		PrintWriter out = resp.getWriter();
	   HttpSession session = req.getSession();
		String email=req.getParameter("email");
		String password=req.getParameter("password");
		
        String event = req.getParameter("submit");
		
		
		if(event.equals("login"))
		{
			try
			{
				Class.forName("com.mysql.jdbc.Driver");
				cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/fertilizerproject","root","root");
				st=cn.createStatement();
				String sql ="select * from user_register where email='"+email+"' && password = '"+password+"' ";
				ResultSet rs=st.executeQuery(sql);
				
				if(rs.next())
				{
				
	
				    session.setAttribute("user_id", rs.getString("user_id"));
				    session.setAttribute("username", rs.getString("username"));
				    session.setAttribute("email", rs.getString("email"));
				    session.setAttribute("contact", rs.getString("contact"));
				    session.setAttribute("address", rs.getString("address"));

				    resp.setContentType("text/html");
					out.println("<script type='text/javascript'>");
					out.println("alert('Login Successful')");
					out.println("location='index.jsp'");
					out.println("</script>");
				}
				else
				{
					resp.setContentType("text/html");
					out.println("<script type='text/javascript'>");
					out.println("alert('Invalid login credentials')");
					out.println("location='user_login.jsp'");
					out.println("</script>");
				}
			}
			catch(Exception e)
			{
				out.println(e.toString());
			}
		}
		
		}
	}


