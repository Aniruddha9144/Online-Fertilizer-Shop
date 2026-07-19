

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
 * Servlet implementation class admin_add_product
 */
@WebServlet("/admin_add_product")
public class admin_add_product extends HttpServlet {
	
 Connection cn =null;
 Statement st =null;

 @Override
protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		PrintWriter out = resp.getWriter();
		
		Database db = new Database();
		String result = db.Connectdb();
		
		String product_name=req.getParameter("product_name");
		String price=req.getParameter("price");
		String Quantity=req.getParameter("Quantity");
		String description=req.getParameter("description");
		String image=req.getParameter("image");
		String category= req.getParameter("category");
		String event = req.getParameter("submit");
		
		if(event.equals("addproduct"))
		{
			try
			{
			 String sql = "insert into add_product(product_name,price,Quantity,description,image,category)values('"+product_name+"','"+price+"','"+Quantity+"','"+description+"','"+image+"', '"+category+"')";
			 String result1 = db.Insert(sql);
			 out.println(result1);
			 
			 resp.setContentType("text/html");
				out.println("<script type='text/javascript'>");
				out.println("alert('Add Product Successfully')");
				out.println("location='admin_dashboard_product.jsp'");
				out.println("</script>");
			
				
			}
			catch(Exception ex)
			{
				out.println(ex.toString());
			}
		}
 }
}
