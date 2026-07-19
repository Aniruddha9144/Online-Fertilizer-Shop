

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

@WebServlet("/admin_dashboard_farmers")
public class admin_dashboard_farmers extends HttpServlet {

    Connection cn = null;

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {

        resp.setContentType("text/html");
        PrintWriter out = resp.getWriter();

        String event = req.getParameter("submit");

        if (event != null && event.equals("delete")) {

            try {
                String user_id = req.getParameter("user_id");

                // ✅ Load Driver
                Class.forName("com.mysql.jdbc.Driver");

                // ✅ Database Connection
                cn = DriverManager.getConnection(
                        "jdbc:mysql://localhost:3306/fertilizerproject",
                        "root",
                        "root");

                // ✅ Delete Query (Secure)
                String sql = "DELETE FROM user_register WHERE user_id = ?";
                PreparedStatement ps = cn.prepareStatement(sql);
                ps.setString(1, user_id);

                int i = ps.executeUpdate();

                if (i > 0) {
                    resp.sendRedirect("admin_dashboard_farmers.jsp");
                } else {
                    out.println("<script>alert('Farmer Not Deleted');</script>");
                }

            } catch (Exception ex) {
                out.println(ex.toString());
            }
        }
    }
}