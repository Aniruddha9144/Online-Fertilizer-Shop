

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
 * Servlet implementation class admin_dashboard_orders
 */
@WebServlet("/admin_dashboard_orders")
public class admin_dashboard_orders extends HttpServlet {
	Connection cn =null;
	 Statement st =null;

	 @Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

			PrintWriter out = resp.getWriter();
			HttpSession session = req.getSession();
			
			Database db = new Database();
			String result = db.Connectdb();
			
			String order_id=req.getParameter("order_id");
			String status=req.getParameter("status");
			
			String event = req.getParameter("submit");
			
			if(event.equals("Update"))
			{
				try
				{
					
					String update = db.update("update user_order set status='"+status+"' where order_id='"+order_id+"'");
					out.println(update);
					
				
				 
				 resp.setContentType("text/html");
					out.println("<script type='text/javascript'>");
					out.println("alert('Order Updated Successfully')");
					out.println("location='admin_dashboard_orders.jsp'");
					out.println("</script>");
				
					
				}
				catch(Exception ex)
				{
					out.println(ex.toString());
				}
			}
			
			
			
	 }
	}

