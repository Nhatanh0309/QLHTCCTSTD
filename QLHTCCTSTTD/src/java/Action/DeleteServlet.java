package Action;

import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.PrintWriter;
import static java.lang.System.out;
import java.sql.Connection;
import java.sql.SQLException;
import java.sql.PreparedStatement;

@WebServlet(urlPatterns = "/de")
public class DeleteServlet extends HttpServlet {

    private static final long serialVersionUID = 1L;

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String sl = request.getParameter("de");

        try {
            Connection conn = Action.ConServlet.getView();
            if ("delete sản phẩm".equals(sl)) {
                String s1 = request.getParameter("1");               
                String sql = "DELETE FROM sanpham WHERE ma_san_pham = ?";
                PreparedStatement st = conn.prepareStatement(sql);
                st.setString(1, s1);               
                PrintWriter out = response.getWriter();
                int check = st.executeUpdate();
                if (check > 0) {
                    response.sendRedirect("/QLCHGAS/view.jsp");
                } else {
                    out.print("delete error");
                }

            }
            if ("delete khách hàng".equals(sl)) {

                String s1 = request.getParameter("1");                
                String sql = "DELETE FROM khach_hang WHERE ma_khach = ?";
                PreparedStatement st = conn.prepareStatement(sql);
                st.setString(1, s1);                
                PrintWriter out = response.getWriter();
                int check = st.executeUpdate();
                if (check > 0) {
                    response.sendRedirect("/QLCHGAS/view.jsp");
                } else {
                    out.print("delete error");
                }

            }
            if ("delete hãng sản xuất".equals(sl)) {
                String s1 = request.getParameter("1");              
                String sql = "DELETE FROM hang_san_xuat where ma_hang_sx = ? ";
                PreparedStatement st = conn.prepareStatement(sql);
                st.setString(1, s1);               
                PrintWriter out = response.getWriter();
                int check = st.executeUpdate();
                if (check > 0) {
                    response.sendRedirect("/QLCHGAS/view.jsp");
                } else {
                    out.print("delete error");
                }
            }
            if ("delete chi tiết phiếu xuất".equals(sl)) {
                String s1 = request.getParameter("1");          
                int ss1 = Integer.parseInt(s1);
                String sql = "DELETE FROM chi_tiet_phieu_xuat where so_phieu_xuat =?";
                PreparedStatement st = conn.prepareStatement(sql);
                st.setInt(1, ss1);               
                PrintWriter out = response.getWriter();
                int check = st.executeUpdate();
                if (check > 0) {
                    response.sendRedirect("/QLCHGAS/view.jsp");
                } else {
                    out.print("delete error");
                }
            }
            if ("delete nơi bảo hành".equals(sl)) {
                String s1 = request.getParameter("1");               
                String sql = "DELETE FROM noi_bao_hanh where so_tt = ?";
                PreparedStatement st = conn.prepareStatement(sql);
                st.setString(1, s1);                
                PrintWriter out = response.getWriter();
                int check = st.executeUpdate();
                if (check > 0) {
                    response.sendRedirect("/QLCHGAS/view.jsp");
                } else {
                    out.print("delete error");
                }

            }
            if ("delete phiếu xuất".equals(sl)) {
                String s1 = request.getParameter("1");
                int ss1 = Integer.parseInt(s1);              
                String sql = "DELETE FROM phieu_xuat where so_phieu_xuat= ?";
                PreparedStatement st = conn.prepareStatement(sql);
                st.setInt(1, ss1);               
                PrintWriter out = response.getWriter();
                int check = st.executeUpdate();
                if (check > 0) {
                    response.sendRedirect("/QLCHGAS/view.jsp");
                } else {
                    out.print("delete error");
                }
            }

        } catch (SQLException ex) {
            out.print("error");
        }
        out.close();
    }


    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        doGet(request, response);
    }
}
