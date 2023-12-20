<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>UPDATE</title>
    </head>
    <body>
        <p>Update LopHoc </p>
        <form action="up" method="post">
            <input type="text" name="1" placeholder="Ma Lop"><br>
            <input type="text" name="2" placeholder="Ten Lop"><br>
            <input type="submit" name="up" value="Update Lop">
        </form>
        <p>Update MonHoc </p>
        <form action="up" method="post" >
            <input type="text" name="1" placeholder="Ma Mon Hoc"><br>
            <input type="text" name="2" placeholder="Ten Mon Hoc"><br>
            <input type="text" name="3" placeholder="So Tiet"><br>
            <input type="submit" name ="up" value="Update Môn Học">
        </form>
        <p>Update GiaoVien </p>
        <form action="up" method="post" >
            <input type="text" name="1" placeholder="Ma Giao Vien"><br>
            <input type="text" name="2" placeholder="Ten Giao Vien"><br>
            <input type="text" name="3" placeholder="Phai"><br>
            <input type="tel" name="4" placeholder="Ngay Sinh"><br>
            <input type="tel" name="4" placeholder="Dia Chi"><br>
            <input type="tel" name="4" placeholder="So Dien Thoai"><br>
            <input type="submit" name ="up" value="Update Giáo Viên">
        </form>
        <p>Update TuSy </p>
        <form action="up" method="post" >
            <input type="number" name="1" placeholder="Ma Tu Sy"><br>
            <input type="text" name="2" placeholder="Ten Tu Sy"><br>
            <input type="number" name="3" placeholder="Phai"><br> 
            <input type="number" name="3" placeholder="Ngay Sinh"><br>   
            <input type="number" name="3" placeholder="Que Quan"><br>   
            <input type="number" name="3" placeholder="Ma Lop"><br>              
            <input type="submit" name ="up" value="Update Tu Sỹ">
        </form>
        <p>Update KhoaHoc </p>
        <form action="up" method="post" >
            <input type="number" name="1" placeholder="Ma Khoa Hoc"><br>
            <input type="text" name="2" placeholder="Ten Khoa Hoc"><br>
            <input type="datetime-local" name="3" placeholder="Ngay Bat Dau"><br>   
            <input type="datetime-local" name="3" placeholder="Ngay Ket Thuc"><br>  
            <input type="text" name="2" placeholder="Ma Mon Hoc"><br>
            <input type="text" name="2" placeholder="Ma Giao Vien"><br> 
            <input type="submit" name ="up" value="Update Khóa Học">
        </form>
        <p>Update KhaNang </p>
        <form action="up" method="post" >
            <input type="text" name="1" placeholder="Ma Giao Vien"><br>
            <input type="number" name="2" placeholder="Ma Mon Hoc"><br>
        </form>
        <p>Update KetQuaHocTap </p>
        <form action="up" method="post" >
            <input type="text" name="1" placeholder="Ma Hoc Sinh"><br>
            <input type="number" name="2" placeholder="Ma Mon Hoc"><br>
            <input type="text" name="3" placeholder="Diem Thi"><br>
            <input type="text" name="4" placeholder="Diem Tong Ket"><br>
            <input type="submit" name ="up" value="Update Kết Quả Học Tập">
        </form>
    </body>
</html>
