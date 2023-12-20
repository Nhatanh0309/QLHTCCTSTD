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
import java.util.logging.Level;
import java.util.logging.Logger;
import java.sql.PreparedStatement;

/**
 *
 * @author hieu0
 */
@WebServlet(urlPatterns = "/add2")
public class Add2Servlet extends HttpServlet {

    private static final long serialVersionUID = 1L;

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String sl = request.getParameter("add");

        try {
            Connection conn = Action.ConServlet.getView2();
            if ("thêm sản phẩm".equals(sl)) {
                String s1 = request.getParameter("1");
                String s2 = request.getParameter("2");
                String s3 = request.getParameter("3");
                String s4 = request.getParameter("4");
                String s5 = request.getParameter("5");
                int ss4 = Integer.parseInt(s4);
                float ss5 = Float.parseFloat(s5);
                String sql = "INSERT INTO sanpham (ma_san_pham, ten_san_pham, nha_san_xuat, thoi_gian_bao_hanh, don_gia) VALUES (?, ?, ?, ?, ?)";
                PreparedStatement st = conn.prepareStatement(sql);
                st.setString(1, s1);
                st.setString(2, s2);
                st.setString(3, s3);
                st.setInt(4, ss4);
                st.setFloat(5, ss5);
                PrintWriter out = response.getWriter();
                int check = st.executeUpdate();
                if (check > 0) {
                    response.sendRedirect("/QLCHGAS/view2.jsp");
                } else {
                    out.print("thêm thất bại!!!");
                }

            }
            if ("thêm khách hàng".equals(sl)) {

                String s1 = request.getParameter("1");
                String s2 = request.getParameter("2");
                String s3 = request.getParameter("3");
                String s4 = request.getParameter("4");
                String sql = "INSERT INTO khach_hang (ma_khach, ten_khach, dia_chi, so_dien_thoai) VALUES (?, ?, ?, ?)";
                PreparedStatement st = conn.prepareStatement(sql);
                st.setString(1, s1);
                st.setString(2, s2);
                st.setString(3, s3);
                st.setString(4, s4);
                PrintWriter out = response.getWriter();
                int check = st.executeUpdate();
                if (check > 0) {
                    response.sendRedirect("/QLCHGAS/view2.jsp");
                } else {
                    out.print("thêm thất bại!!!");
                }

            }
            if ("thêm hãng sản xuất".equals(sl)) {
                String s1 = request.getParameter("1");
                String s2 = request.getParameter("2");
                String s3 = request.getParameter("3");
                String s4 = request.getParameter("4");
                String sql = "INSERT INTO hang_san_xuat (ma_hang_sx, ten_hang_sx, dia_chi_vpchinh_tai_vn, so_dien_thoai) VALUES (?, ?, ?, ?)";
                PreparedStatement st = conn.prepareStatement(sql);
                st.setString(1, s1);
                st.setString(2, s2);
                st.setString(3, s3);
                st.setString(4, s4);
                PrintWriter out = response.getWriter();
                int check = st.executeUpdate();
                if (check > 0) {
                    response.sendRedirect("/QLCHGAS/view2.jsp");
                } else {
                    out.print("thêm thất bại!!!");
                }
            }
            if ("thêm chi tiết phiếu xuất".equals(sl)) {
                String s1 = request.getParameter("1");
                String s2 = request.getParameter("2");
                String s3 = request.getParameter("3");
                int ss1 = Integer.parseInt(s1);
                int ss3 = Integer.parseInt(s3);
                String sql = "INSERT INTO chi_tiet_phieu_xuat (so_phieu_xuat, ma_san_pham, so_luong) VALUES (?, ?, ?)";
                PreparedStatement st = conn.prepareStatement(sql);
                st.setInt(1, ss1);
                st.setString(2, s2);
                st.setInt(3, ss3);
                PrintWriter out = response.getWriter();
                int check = st.executeUpdate();
                if (check > 0) {
                    response.sendRedirect("/QLCHGAS/view2.jsp");
                } else {
                    out.print("thêm thất bại!!!");
                }
            }
            if ("thêm nơi bảo hành".equals(sl)) {
                String s1 = request.getParameter("1");
                String s2 = request.getParameter("2");
                String s3 = request.getParameter("3");
                String s4 = request.getParameter("4");
                String s5 = request.getParameter("5");
                int ss2 = Integer.parseInt(s2);
                String sql = "INSERT INTO noi_bao_hanh (ma_hang_sx, so_tt, ten_diem_bao_hanh, dia_chi, so_dien_thoai) VALUES (?, ?, ?, ?, ?)";
                PreparedStatement st = conn.prepareStatement(sql);
                st.setString(1, s1);
                st.setInt(2, ss2);
                st.setString(3, s3);
                st.setString(4, s4);
                st.setString(5, s5);
                PrintWriter out = response.getWriter();
                int check = st.executeUpdate();
                if (check > 0) {
                    response.sendRedirect("/QLCHGAS/view2.jsp");
                } else {
                    out.print("thêm thất bại!!!");
                }

            }
            if ("thêm phiếu xuất".equals(sl)) {
                String s1 = request.getParameter("1");
                String s2 = request.getParameter("2");
                String s3 = request.getParameter("3");
                int ss1 = Integer.parseInt(s1);              
                String sql = "INSERT INTO phieu_xuat (so_phieu_xuat, ma_khach, ngay_lap_phieu) VALUES (?, ?, ?)";
                PreparedStatement st = conn.prepareStatement(sql);
                st.setInt(1, ss1);
                st.setString(2, s2);
                st.setString(3, s3);
                PrintWriter out = response.getWriter();
                int check = st.executeUpdate();
                if (check > 0) {
                    response.sendRedirect("/QLCHGAS/view2.jsp");
                } else {
                    out.print("thêm thất bại!!!");
                }
            }

        } catch (SQLException ex) {
            Logger.getLogger(AddServlet.class.getName()).log(Level.SEVERE, null, ex);
        }
        out.close();
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        doGet(request, response);
    }

}
