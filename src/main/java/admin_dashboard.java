

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.beans.Statement;
import java.io.IOException;

import com.sun.jdi.connect.spi.Connection;

/**
 * Servlet implementation class admin_dashboard
 */
@WebServlet("/admin_dashboard")
public class admin_dashboard extends HttpServlet {
	
	Connection cn = null;
	Statement st = null;
@Override
protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	
	
	
}
}
