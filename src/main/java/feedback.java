

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
 * Servlet implementation class feedback
 */
@WebServlet("/feedback")
public class feedback extends HttpServlet {

	Connection cn = null;
	Statement st = null;

@Override
protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	
	
	PrintWriter out = resp.getWriter();
	
	  Database db = new Database();
	  out.println(db.Connectdb());
	
	String full_name=req.getParameter("full_name");
	String email=req.getParameter("email");
	String product=req.getParameter("product");
	String rating=req.getParameter("rating");
	String message=req.getParameter("message");
	

    String event = req.getParameter("submit");
	
		
		if(event.equals("submit_feedback"))
		{
			try
			{
			 String sql = "insert into feedback(full_name,email,product,rating,message)values('"+full_name+"','"+email+"','"+product+"','"+rating+"','"+message+"')";
			 String result = db.Insert(sql);
			 out.println(result);
			 
			 	resp.setContentType("text/html");
				out.println("<script type='text/javascript'>");
				out.println("alert ('Feedback Sent Successfuly...!')");
				out.println("location='feedback.jsp'");
				out.println("</script>");
					
			}
			catch(Exception ex)
			{
				out.println(ex.toString());
			}
		}

}
}
