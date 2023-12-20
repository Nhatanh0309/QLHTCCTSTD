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

/**
 *
 * @author hieu0
 */
@WebServlet(urlPatterns = "/up2")
public class Up2Servlet extends HttpServlet {

    private static final long serialVersionUID = 1L;

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String sl = request.getParameter("up");

        try {
            Connection conn = Action.ConServlet.getView2();
            if ("Update sản phẩm".equals(sl)) {
                String s1 = request.getParameter("1");
                String s2 = request.getParameter("2");
                String s3 = request.getParameter("3");
                String s4 = request.getParameter("4");
                String s5 = request.getParameter("5");
                int ss4 = Integer.parseInt(s4);
                float ss5 = Float.parseFloat(s5);
                String sql = "update sanpham set ten_san_pham = ?, nha_san_xuat = ?, thoi_gian_bao_hanh = ?, don_gia=? where ma_san_pham = ?";
                PreparedStatement st = conn.prepareStatement(sql);                                         
                st.setString(1, s2);
                st.setString(2, s3);
                st.setInt(3, ss4);
                st.setFloat(4, ss5);
                st.setString(5, s1);
                PrintWriter out = response.getWriter();
                int check = st.executeUpdate();
                if (check > 0) {
                    response.sendRedirect("/QLCHGAS/view2.jsp");
                } else {
                    out.print("data error");
                }
                
            }
            if ("Update khách hàng".equals(sl)) {

                String s1 = request.getParameter("1");
                String s2 = request.getParameter("2");
                String s3 = request.getParameter("3");
                String s4 = request.getParameter("4");
                String sql = "update khach_hang set ten_khach= ?, dia_chi= ?, so_dien_thoai= ? where ma_khach= ?";
                PreparedStatement st = conn.prepareStatement(sql);
                st.setString(4, s1);
                st.setString(1, s2);
                st.setString(2, s3);
                st.setString(3, s4);
                PrintWriter out = response.getWriter();
                int check = st.executeUpdate();
                if (check > 0) {
                    response.sendRedirect("/QLCHGAS/view2.jsp");
                } else {
                    out.print("data error");
                }

            }
            if ("Update hãng sản xuất".equals(sl)) {
                String s1 = request.getParameter("1");
                String s2 = request.getParameter("2");
                String s3 = request.getParameter("3");
                String s4 = request.getParameter("4");
                String sql = "Update hang_san_xuat set ten_hang_sx = ?, dia_chi_vpchinh_tai_vn = ?, so_dien_thoai = ? where ma_hang_sx = ?";
                PreparedStatement st = conn.prepareStatement(sql);
                st.setString(4, s1);
                st.setString(1, s2);
                st.setString(2, s3);
                st.setString(3, s4);
                PrintWriter out = response.getWriter();
                int check = st.executeUpdate();
                if (check >0) {
                    response.sendRedirect("/QLCHGAS/view2.jsp");
                } else {
                    out.print("data error");
                }
            }
            if ("Update chi tiết phiếu xuất".equals(sl)) {
                String s1 = request.getParameter("1");
                String s2 = request.getParameter("2");
                String s3 = request.getParameter("3");
                int ss1 = Integer.parseInt(s1);
                int ss3 = Integer.parseInt(s3);
                String sql = "Update chi_tiet_phieu_xuat set ma_san_pham = ?, so_luong=? where so_phieu_xuat =?";
                PreparedStatement st = conn.prepareStatement(sql);
                st.setInt(3, ss1);
                st.setString(1, s2);
                st.setInt(2, ss3);
                PrintWriter out = response.getWriter();
                int check = st.executeUpdate();
                if (check > 0) {
                    response.sendRedirect("/QLCHGAS/view2.jsp");
                } else {
                    out.print("data error");
                }
            }
            if ("Update nơi bảo hành".equals(sl)) {
                String s1 = request.getParameter("1");
                String s2 = request.getParameter("2");
                String s3 = request.getParameter("3");
                String s4 = request.getParameter("4");
                String s5 = request.getParameter("5");
                int ss2 = Integer.parseInt(s2);
                String sql = "Update noi_bao_hanh set so_tt=?, ten_diem_bao_hanh = ?, dia_chi=?, so_dien_thoai=? where ma_hang_sx=?";
                PreparedStatement st = conn.prepareStatement(sql);
                st.setString(5, s1);
                st.setInt(1, ss2);
                st.setString(2, s3);
                st.setString(3, s4);
                st.setString(4, s5);
                PrintWriter out = response.getWriter();
                int check = st.executeUpdate();
                if (check > 0) {
                    response.sendRedirect("/QLCHGAS/view2.jsp");
                } else {
                    out.print("data error");
                }

            }
            if ("Update phiếu xuất".equals(sl)) {
                String s1 = request.getParameter("1");
                String s2 = request.getParameter("2");
                String s3 = request.getParameter("3");
                int ss1 = Integer.parseInt(s1);              
                String sql = "Update phieu_xuat set  ma_khach=?, ngay_lap_phieu=? where so_phieu_xuat=?";
                PreparedStatement st = conn.prepareStatement(sql);
                st.setInt(3, ss1);
                st.setString(1, s2);
                st.setString(2, s3);
                PrintWriter out = response.getWriter();
                int check = st.executeUpdate();
                if (check > 0) {
                    response.sendRedirect("/QLCHGAS/view2.jsp");
                } else {
                    out.print("data error");
                }
            }

        } catch (SQLException ex) {
            out.print("data error");
        }
        out.close();
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        doGet(request, response);
    }

}
