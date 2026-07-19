

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
 * Servlet implementation class user_cart
 */
@WebServlet("/user_cart")
public class user_cart extends HttpServlet {
	Connection cn =null;
	 Statement st =null;

	 @Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

			PrintWriter out = resp.getWriter();
			HttpSession session = req.getSession();
			
			Database db = new Database();
			String result = db.Connectdb();
			
			String cart_id=req.getParameter("cart_id");
			String subtotal=req.getParameter("subtotal");
			String g_total = req.getParameter("g_total");
			String event = req.getParameter("submit");
			
			if(event.equals("Remove"))
			{
			    try
			    {
			        String delete = db.delete("delete from cart where cart_id='"+cart_id+"'");
			        
			        resp.sendRedirect("user_cart.jsp");
			    }
			    catch(Exception ex)
			    {
			        out.println(ex.toString());
			    }
			}
			
			if(event.equals("Proceed"))
			{
				session.setAttribute("g_total", g_total);
			    session.setAttribute("subtotal", subtotal);
			    resp.sendRedirect("shipping_address.jsp");
			}
			
	 }
	}