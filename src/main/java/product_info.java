

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;


import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;


/**
 * Servlet implementation class product_info
 */
@WebServlet("/product_info")
public class product_info extends HttpServlet {
	
	Connection cn = null;
	Statement st = null;

	
@Override
protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	
	
	PrintWriter out = resp.getWriter();
	HttpSession session = req.getSession();	
	
	Database db = new Database();
	out.println(db.Connectdb());
	
	String product_id=req.getParameter("product_id");
	String product_image=req.getParameter("product_image");
	String price=req.getParameter("price"); 
	String quantity=req.getParameter("quantity"); 
	
	String event = req.getParameter("submit");
	
	
	Double p  = Double.parseDouble(price);
	Double q  = Double.parseDouble(quantity);
	
	
	Double total = p*q;
	
	out.println(quantity);
	
	if(event.equals("addtocart"))
	{
		try
	    {
			
		
        Connection cn = null;
    	Statement st = null;
        
        Class.forName("com.mysql.jdbc.Driver");
        cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/fertilizerproject","root","root");
        st=cn.createStatement();
        String sql = "select * from add_product where product_id ='"+product_id+"'";
        ResultSet rs=st.executeQuery(sql);
        while(rs.next())
        {
        	
        
		
        	String insert = db.Insert("insert into cart( user_id, product_name, product_image, price, quantity, total)values('"+session.getAttribute("user_id")+"','"+rs.getString("product_name")+"','"+rs.getString("image")+"','"+rs.getString("price")+"','"+quantity+"','"+total+"')");
    		
    		out.println(insert);
    		
    		
    		
		
	    resp.setContentType("text/html");
		out.println("<script type='text/javascript'>");
		out.println("location='user_cart.jsp'");
		out.println("</script>");
		
		
		
		
	}
	}
	catch(Exception ex)
	{
		out.println(ex.toString());
	}
	
	}
	
	
	
	
	if(event.equals("Buynow"))
	  {
				try
				
			 {
					
				
		        Connection cn = null;
		    	Statement st = null;
		        
		        Class.forName("com.mysql.jdbc.Driver");
		        cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/fertilizerproject","root","root");
		        st=cn.createStatement();
		        String sql = "select * from add_product where product_id ='"+product_id+"'";
		        ResultSet rs=st.executeQuery(sql);
		        while(rs.next())
		        {
		        	
		         session.setAttribute("product_id", rs.getString("product_id"));
		         session.setAttribute("product_name", rs.getString("product_name"));
		         session.setAttribute("category", rs.getString("category"));
		         session.setAttribute("price", rs.getString("price"));
		         session.setAttribute("description", rs.getString("description"));
		         session.setAttribute("image", rs.getString("image"));
		         session.setAttribute("total", total);
		         session.setAttribute("quantity", quantity);
		        	
			    resp.setContentType("text/html");
				out.println("<script type='text/javascript'>");
				out.println("location='shipping_address1.jsp'");
				out.println("</script>");
				
		
	           }
	         }
				
	catch(Exception ex)
	{
		out.println(ex.toString());
	}
	
	}
	
	
	
}
	

}