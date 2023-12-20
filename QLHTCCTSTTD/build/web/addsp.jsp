<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Thêm mới</title>
    </head>
    <body>
        <p>Thêm mới Lớp Học</p>
        <form action="add" method="post">
            <label for="maLop">Mã Lớp:</label>
            <input type="text" id="maLop" name="maLop" placeholder="Mã Lớp"><br>
            <label for="tenLop">Tên Lớp:</label>
            <input type="text" id="tenLop" name="tenLop" placeholder="Tên Lớp"><br>
            <input type="submit" name="add" value="Thêm lớp">
        </form>
        <p>Thêm mới Môn Học</p>
        <form action="add" method="post">
            <label for="maMonHoc">Mã Môn Học:</label>
            <input type="text" id="maMonHoc" name="maMonHoc" placeholder="Mã Môn Học"><br>
            <label for="tenMonHoc">Tên Môn Học:</label>
            <input type="text" id="tenMonHoc" name="tenMonHoc" placeholder="Tên Môn Học"><br>
            <label for="soTiet">Số Tiết:</label>
            <input type="number" id="soTiet" name="soTiet" placeholder="Số Tiết"><br>
            <input type="submit" name="add" value="Thêm môn">
        </form>

        <!-- Form thêm mới Giáo Viên -->
        <p>Thêm mới Giáo Viên</p>
        <form action="add" method="post">
            <label for="maGiaoVien">Mã Giáo Viên:</label>
            <input type="text" id="maGiaoVien" name="maGiaoVien" placeholder="Mã Giáo Viên"><br>
            <label for="tenGiaoVien">Tên Giáo Viên:</label>
            <input type="text" id="tenGiaoVien" name="tenGiaoVien" placeholder="Tên Giáo Viên"><br>
            <label for="phaiGiaoVien">Phái:</label>
            <input type="text" id="phaiGiaoVien" name="phaiGiaoVien" placeholder="Phái"><br>
            <label for="ngaySinhGiaoVien">Ngày Sinh:</label>
            <input type="date" id="ngaySinhGiaoVien" name="ngaySinhGiaoVien" placeholder="Ngày Sinh"><br>
            <label for="diaChiGiaoVien">Địa Chỉ:</label>
            <input type="text" id="diaChiGiaoVien" name="diaChiGiaoVien" placeholder="Địa Chỉ"><br>
            <label for="soDienThoaiGiaoVien">Số Điện Thoại:</label>
            <input type="tel" id="soDienThoaiGiaoVien" name="soDienThoaiGiaoVien" placeholder="Số Điện Thoại"><br>
            <input type="submit" name="add" value="Thêm giáo viên">
        </form>
        <p>Thêm mới Tu Sỹ</p>
        <form action="add" method="post">
            <label for="maTuSi">Mã Tu Sỹ:</label>
            <input type="number" id="maTuSi" name="maTuSi" placeholder="Mã Tu Sỹ"><br>
            <label for="tenTuSi">Tên Tu Sỹ:</label>
            <input type="text" id="tenTuSi" name="tenTuSi" placeholder="Tên Tu Sỹ"><br>
            <label for="phaiTuSi">Phái:</label>
            <input type="number" id="phaiTuSi" name="phaiTuSi" placeholder="Phái"><br>
            <label for="ngaySinhTuSi">Ngày Sinh:</label>
            <input type="date" id="ngaySinhTuSi" name="ngaySinhTuSi" placeholder="Ngày Sinh"><br>
            <label for="queQuanTuSi">Quê Quán:</label>
            <input type="text" id="queQuanTuSi" name="queQuanTuSi" placeholder="Quê Quán"><br>
            <label for="maLopTuSi">Mã Lớp:</label>
            <input type="number" id="maLopTuSi" name="maLopTuSi" placeholder="Mã Lớp"><br>
            <input type="submit" name="add" value="Thêm Tu Sỹ">
        </form>

        <!-- Form thêm mới Khoa Học -->
        <p>Thêm mới Khoa Học</p>
        <form action="add" method="post">
            <label for="maKhoaHoc">Mã Khóa Học:</label>
            <input type="number" id="maKhoaHoc" name="maKhoaHoc" placeholder="Mã Khóa Học"><br>
            <label for="tenKhoaHoc">Tên Khóa Học:</label>
            <input type="text" id="tenKhoaHoc" name="tenKhoaHoc" placeholder="Tên Khóa Học"><br>
            <label for="ngayBatDau">Ngày Bắt Đầu:</label>
            <input type="datetime-local" id="ngayBatDau" name="ngayBatDau" placeholder="Ngày Bắt Đầu"><br>
            <label for="ngayKetThuc">Ngày Kết Thúc:</label>
            <input type="datetime-local" id="ngayKetThuc" name="ngayKetThuc" placeholder="Ngày Kết Thúc"><br>
            <label for="maMonHocKhoaHoc">Mã Môn Học:</label>
            <input type="text" id="maMonHocKhoaHoc" name="maMonHocKhoaHoc" placeholder="Mã Môn Học"><br>
            <label for="maGiaoVienKhoaHoc">Mã Giáo Viên:</label>
            <input type="text" id="maGiaoVienKhoaHoc" name="maGiaoVienKhoaHoc" placeholder="Mã Giáo Viên"><br>
            <input type="submit" name="add" value="Thêm khóa học">
        </form>

        <!-- Form thêm mới Khả Năng -->
        <p>Thêm mới Khả Năng</p>
        <form action="add" method="post">
            <label for="maGiaoVienKhaNang">Mã Giáo Viên:</label>
            <input type="text" id="maGiaoVienKhaNang" name="maGiaoVienKhaNang" placeholder="Mã Giáo Viên"><br>
            <label for="maMonHocKhaNang">Mã Môn Học:</label>
            <input type="number" id="maMonHocKhaNang" name="maMonHocKhaNang" placeholder="Mã Môn Học"><br>
            <input type="submit" name="add" value="Thêm khả năng">
        </form>

        <!-- Form thêm mới Kết Quả Học Tập -->
        <p>Thêm mới Kết Quả Học Tập</p>
        <form action="add" method="post">
            <label for="maHocSinh">Mã Học Sinh:</label>
            <input type="text" id="maHocSinh" name="maHocSinh" placeholder="Mã Học Sinh"><br>
            <label for="maMonHocKQHT">Mã Môn Học:</label>
            <input type="number" id="maMonHocKQHT" name="maMonHocKQHT" placeholder="Mã Môn Học"><br>
            <label for="diemThi">Điểm Thi:</label>
            <input type="text" id="diemThi" name="diemThi" placeholder="Điểm Thi"><br>
            <label for="diemTongKet">Điểm Tổng Kết:</label>
            <input type="number" id="diemTongKet" name="diemTongKet" placeholder="Điểm Tổng Kết"><br>
            <input type="submit" name="add" value="Thêm Kết Quả Học Tập">
        </form>
    </body>
</html>
