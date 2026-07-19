

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
 * Servlet implementation class oragnic_category
 */
@WebServlet("/oragnic_category")
public class oragnic_category extends HttpServlet {
	
	Connection cn = null;
	Statement st = null;
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
        PrintWriter out = resp.getWriter();
		
		Database db = new Database();
		out.println(db.Connectdb());
		
		String event = req.getParameter("submit");
		
		if(event.equals("viewproduct"))
			try
		{
				
			HttpSession session = req.getSession();		
			String product_id = req.getParameter("product_id");
			session.setAttribute("product_id", product_id);
		    resp.setContentType("text/html");
			out.println("<script type='text/javascript'>");
			out.println("location='product_info.jsp'");
			out.println("</script>");
			
			
			
			
		}
		catch(Exception ex)
		{
			out.println(ex.toString());
		}
		
	}
}
