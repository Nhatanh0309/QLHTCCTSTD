<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>

    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title> View list bếp gas </title>
    </head>
    <body>
        <h1> Danh sách LopHoc </h1>
        <div style=height: 200px; overflow-y: scroll;">
            <h3> action edit </h3> 
            <ul> 
                <li><a href="http://localhost:9999/QLCHGAS/Login?txtU=Hieu&txtP=123">return</a></li>
                <li><a href="/QLHTCCTSTTD/addsp.jsp">ADD</a></li>
                <li><a href="/QLHTCCTSTTD/upsp.jsp">edit</a></li>
            </ul>
        </div>
        <table border="1">
            <tr>
                <th>Ma Lop</th>
                <th>Ten Lop</th>
            </tr>
            <% 
                try {
               
                    java.sql.Connection con = Action.ConServlet.getView();
                    if (con != null) {
                        java.sql.Statement stml = con.createStatement();
                        String sql = "select * from sanpham";
                        java.sql.ResultSet rs = stml.executeQuery(sql);
                    
                        while (rs.next()) {
                            String mabg = rs.getString("ma_san_pham");
                            String tenbg = rs.getString("ten_san_pham");
                            String nsx = rs.getString("nha_san_xuat");
                            float dg = rs.getFloat("don_gia");
                            int tgbh = rs.getInt("thoi_gian_bao_hanh");
            %>
            <tr>
                <td><%= mabg %></td>
                <td><%= tenbg %></td>
                <td><%= nsx %></td>
                <td><%= tgbh %></td>
                <td><%= dg %></td>
                <td><form action="de" method="post">
                        <input type="hidden" name="1" value="<%= mabg %>"/>
                        <input type="submit" name="de" value="delete sản phẩm">
                    </form>
                </td>
            </tr>
            <%
                        }
                        rs.close();
                        con.close();
                    } else {
                        out.println("Connection is null");
                    }
                } catch (Exception e) {
                    out.println("Error: " + e.getMessage());
                }
            %>

        </table>


        <h1> MonHoc </h1>


        <table border="1">
            <tr>
                <th>Ma Mon Hoc</th>
                <th>Ten Mon Hoc</th>
                <th>So Tiet</th>     
            </tr>
            <% 
                try {
               
                    java.sql.Connection con = Action.ConServlet.getView();
                    if (con != null) {
                        java.sql.Statement stml = con.createStatement();
                        String sql = "select * from hang_san_xuat";
                        java.sql.ResultSet rs = stml.executeQuery(sql);
                    
                        while (rs.next()) {
                            String mahsx = rs.getString("ma_hang_sx");
                            String tenhsx = rs.getString("ten_hang_sx");
                            String dc = rs.getString("dia_chi_vpchinh_tai_vn");
                            String sdt = rs.getString("so_dien_thoai");
                        
            %>
            <tr>
                <td><%= mahsx %></td>
                <td><%= tenhsx %></td>
                <td><%= dc %></td>
                <td><%= sdt %></td>                           
                <td><form action="de" method="post">
                        <input type="hidden" name="1" value="<%= mahsx %>"/>
                        <input type="submit" name="de" value="delete hãng sản xuất">
                    </form>
                </td>
            </tr>
            <%
                        }
                        rs.close();
                        con.close();
                    } else {
                        out.println("Connection is null");
                    }
                } catch (Exception e) {
                    out.println("Error: " + e.getMessage());
                }
            %>
        </table>
        <h1> GiaoVien </h1>


        <table border="1">
            <tr>
                <th>Ma Giao Vien</th>
                <th>Ten Giao Vien</th>
                <th>Phai </th>
                <th>Ngay Sinh</th> 
                <th>Dia Chi</th>   
                <th>So Dien Thoai</th>   
            </tr>
            <% 
                try {
               
                    java.sql.Connection con = Action.ConServlet.getView();
                    if (con != null) {
                        java.sql.Statement stml = con.createStatement();
                        String sql = "select * from khach_hang";
                        java.sql.ResultSet rs = stml.executeQuery(sql);
                    
                        while (rs.next()) {
                            String makh = rs.getString("ma_khach");
                            String tenkh = rs.getString("ten_khach");
                            String dckh = rs.getString("dia_chi");
                            String sdtkh = rs.getString("so_dien_thoai");
                        
            %>
            <tr>
                <td><%= makh %></td>
                <td><%= tenkh %></td>
                <td><%= dckh %></td>
                <td><%= sdtkh %></td>                           
                <td><form action="de" method="post">
                        <input type="hidden" name="1" value="<%= makh %>"/>
                        <input type="submit" name="de" value="delete khách hàng">
                    </form>
                </td>

            </tr>
            <%
                        }
                        rs.close();
                        con.close();
                    } else {
                        out.println("Connection is null");
                    }
                } catch (Exception e) {
                    out.println("Error: " + e.getMessage());
                }
            %>
        </table>
        <h1> TuSy </h1>


        <table border="1">
            <tr>
                <th>Ma Tu Sy</th>
                <th>Ten Tu Sy</th>
                <th>Phai</th>
                <th>Ngay Sinh</th>
                <th>Que Quan</th>
                <th>Ma Lop</th>

            </tr>
            <% 
                try {
               
                    java.sql.Connection con = Action.ConServlet.getView();
                    if (con != null) {
                        java.sql.Statement stml = con.createStatement();
                        String sql = "select * from chi_tiet_phieu_xuat";
                        java.sql.ResultSet rs = stml.executeQuery(sql);
                    
                        while (rs.next()) {
                            int spx = rs.getInt("so_phieu_xuat");
                            String masp = rs.getString("ma_san_pham");
                            int sl = rs.getInt("so_luong");                                    
            %>
            <tr>
                <td><%= spx %></td>
                <td><%= masp %></td>
                <td><%= sl %></td>
                <td><form action="de" method="post">
                        <input type="hidden" name="1" value="<%= spx %>"/>
                        <input type="submit" name="de" value="delete chi tiết phiếu xuất">
                    </form>
                </td>


            </tr>
            <%
                        }
                        rs.close();
                        con.close();
                    } else {
                        out.println("Connection is null");
                    }
                } catch (Exception e) {
                    out.println("Error: " + e.getMessage());
                }
            %>
        </table>
        <h1> KhoaHoc </h1>


        <table border="1">
            <tr>
                <th>Ma Khoa Hoc</th>
                <th>Ten Khoa Hoc</th>
                <th>Ngay Bat Dau</th>
                <th>Ngay Ket Thuc</th>
                <th>Ma Mon Hoc</th>
                <th>Ma Giao Vien</th>
            </tr>
            <% 
                try {
               
                    java.sql.Connection con = Action.ConServlet.getView();
                    if (con != null) {
                        java.sql.Statement stml = con.createStatement();
                        String sql = "select * from phieu_xuat";
                        java.sql.ResultSet rs = stml.executeQuery(sql);
                    
                        while (rs.next()) {
                            int spx = rs.getInt("so_phieu_xuat");
                            String makh = rs.getString("ma_khach");
                            String nlp = rs.getString("ngay_lap_phieu");                                    
            %>
            <tr>
                <td><%= spx %></td>
                <td><%= makh %></td>
                <td><%= nlp %></td>
                <td><form action="de" method="post">
                        <input type="hidden" name="1" value="<%= spx %>"/>
                        <input type="submit" name="de" value="delete phiếu xuất">
                    </form>
                </td>


            </tr>
            <%
                        }
                        rs.close();
                        con.close();
                    } else {
                        out.println("Connection is null");
                    }
                } catch (Exception e) {
                    out.println("Error: " + e.getMessage());
                }
            %>
        </table>
        <h1> KhaNang </h1>


        <table border="1">
            <tr>
                <th>Ma Giao Vien</th>
                <th>Ma Mon Hoc</th>
            </tr>
            <% 
                try {
               
                    java.sql.Connection con = Action.ConServlet.getView();
                    if (con != null) {
                        java.sql.Statement stml = con.createStatement();
                        String sql = "select * from noi_bao_hanh";
                        java.sql.ResultSet rs = stml.executeQuery(sql);
                    
                        while (rs.next()) {
                            String mahsx = rs.getString("ma_hang_sx");
                            int sott = rs.getInt("so_tt");
                            String tdbh = rs.getString("ten_diem_bao_hanh"); 
                            String dc = rs.getString("dia_chi");
                            String sdt = rs.getString("so_dien_thoai");


            %>
            <tr>
                <td><%= mahsx%></td>
                <td><%= sott %></td>
                <td><%= tdbh %></td>
                <td><%= dc %></td>
                <td><%= sdt %></td>
                <td><form action="de" method="post">
                        <input type="hidden" name="1" value="<%= sott %>"/>
                        <input type="submit" name="de" value="delete nơi bảo hành">
                    </form>
                </td>


            </tr>
            <%
                        }
                        rs.close();
                        con.close();
                    } else {
                        out.println("Connection is null");
                    }
                } catch (Exception e) {
                    out.println("Error: " + e.getMessage());
                }
            %>
        </table>
        <h1> KetQuaHocTap </h1>


        <table border="1">
            <tr>
                <th>Ma Hoc Sinh</th>
                <th>Ma Mon Hoc</th>
                <th>Diem Thi</th>
                <th>Diem Tong Ket</th>
            </tr>
            <% 
                try {
               
                    java.sql.Connection con = Action.ConServlet.getView();
                    if (con != null) {
                        java.sql.Statement stml = con.createStatement();
                        String sql = "select * from noi_bao_hanh";
                        java.sql.ResultSet rs = stml.executeQuery(sql);
                    
                        while (rs.next()) {
                            String mahsx = rs.getString("ma_hang_sx");
                            int sott = rs.getInt("so_tt");
                            String tdbh = rs.getString("ten_diem_bao_hanh"); 
                            String dc = rs.getString("dia_chi");
                            String sdt = rs.getString("so_dien_thoai");


            %>
            <tr>
                <td><%= mahsx%></td>
                <td><%= sott %></td>
                <td><%= tdbh %></td>
                <td><%= dc %></td>
                <td><%= sdt %></td>
                <td><form action="de" method="post">
                        <input type="hidden" name="1" value="<%= sott %>"/>
                        <input type="submit" name="de" value="delete nơi bảo hành">
                    </form>
                </td>


            </tr>
            <%
                        }
                        rs.close();
                        con.close();
                    } else {
                        out.println("Connection is null");
                    }
                } catch (Exception e) {
                    out.println("Error: " + e.getMessage());
                }
            %>
        </table>
    </body>   
</html>

