

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.beans.Statement;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;

/**
 * Servlet implementation class edit_profile
 */
@WebServlet("/edit_profile")
public class edit_profile extends HttpServlet {
	
	Connection cn = null;
	Statement st = null;
	
	@Override
protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {


		PrintWriter out = resp.getWriter();
		
		Database db = new Database();
		out.println(db.Connectdb());
		
		String username = req.getParameter("username");
		String contact = req.getParameter("contact");
		String email = req.getParameter("email");
		String address = req.getParameter("address");
		
		String event = req.getParameter("submit");
		
		if(event.equals("savechanges"))
			try
		{
				
			HttpSession session = req.getSession();		
			String user_id = (String) session.getAttribute("user_id");
				
			String sql = "update user_register set username='"+username+"', contact='"+contact+"', email='"+email+"', address='"+address+"'  where user_id='"+user_id+"'";
		    String result = db.update(sql);
			out.println(result);
			
			
			resp.setContentType("text/html");
			out.println("<script type='text/javascript'>");
			out.println("alert('edit profile Successfully')");
			out.println("location='user_profile.jsp'");
			out.println("</script>");
			
			
		}
		catch(Exception ex)
		{
			out.println(ex.toString());
		}
}

}
