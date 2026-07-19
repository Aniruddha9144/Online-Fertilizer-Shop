

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
 * Servlet implementation class admin_edit_product
 */
@WebServlet("/admin_edit_product")
public class admin_edit_product extends HttpServlet {

	Connection cn = null;
	Statement st = null;
 
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	
      PrintWriter out = resp.getWriter();
      
      Database db = new Database();
      String result = db.Connectdb();
		
		String product_name=req.getParameter("product_name");
		String category=req.getParameter("category");
		String price=req.getParameter("price");
		String quantity=req.getParameter("quantity");
		String description=req.getParameter("description");
		String image=req.getParameter("image");
		
        String event = req.getParameter("submit");
		
		if(event.equals("update_product"))
		{
			try
			{
			 
				HttpSession session = req.getSession();		
				String product_id = (String) session.getAttribute("product_id");
					
				String sql = "update add_product set product_name='"+product_name+"', category='"+category+"', price='"+price+"', Quantity='"+quantity+"', description='"+description+"'  where product_id='"+product_id+"'";
			    String result1 = db.update(sql);
				out.println(result1);
				resp.setContentType("text/html");
				out.println("<script type='text/javascript'>");
				out.println("alert('Information Updated Successfully')");
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
