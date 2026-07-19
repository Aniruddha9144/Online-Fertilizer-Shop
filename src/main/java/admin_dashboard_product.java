  
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
import java.sql.PreparedStatement;

@WebServlet("/admin_dashboard_product")
public class admin_dashboard_product extends HttpServlet {

    Connection cn = null;

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {

        resp.setContentType("text/html");
        PrintWriter out = resp.getWriter();

        String event = req.getParameter("submit");

        try {
            // ✅ Load Driver
            Class.forName("com.mysql.jdbc.Driver");

            // ✅ Create Connection
            cn = DriverManager.getConnection(
                    "jdbc:mysql://localhost:3306/fertilizerproject",
                    "root",
                    "root");

            // ================= EDIT =================
            if (event.equals("edit")) {

                String product_id = req.getParameter("product_id");

                HttpSession session = req.getSession();
                session.setAttribute("product_id", product_id);

                resp.sendRedirect("admin_edit_product.jsp");
            }

            // ================= DELETE =================
            if (event.equals("delete")) {

                String product_id = req.getParameter("product_id");

                String sql = "DELETE FROM add_product WHERE product_id = ?";
                PreparedStatement ps = cn.prepareStatement(sql);
                ps.setString(1, product_id);

                int i = ps.executeUpdate();

                if (i > 0) {
                    resp.sendRedirect("admin_dashboard_product.jsp");
                } else {
                    out.println("<script>alert('Product Not Deleted');</script>");
                }
            }

        } catch (Exception ex) {
            out.println(ex.toString());
        }
    }
}