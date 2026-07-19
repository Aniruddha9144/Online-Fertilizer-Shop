

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
 * Servlet implementation class cancel_order
 */
@WebServlet("/cancel_order")
public class cancel_order extends HttpServlet {

	Connection cn = null;
	Statement st = null;
	
	private static final long serialVersionUID = 1L;

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		PrintWriter out = resp.getWriter();
		
		
		String orderId=req.getParameter("orderId");
		String productName=req.getParameter("productName");
		String reason=req.getParameter("reason");

		
		
		out.println(orderId);
		out.println(productName);
		out.println(reason);
	
		
		
	}

}
