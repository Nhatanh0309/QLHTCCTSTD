<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>add new</title>
    </head>
    <body>
        <p>add new sanpham </p>
        <form action="add" method="post">
            <input type="text" name="1" placeholder="Ma bep gas"><br>
            <input type="text" name="2" placeholder="Ten bep gas"><br>
            <input type="text" name="3" placeholder="Nha san xuat"><br>
            <input type="number" name="4" placeholder="Thoi gian bao hanh"><br>
            <input type="number" name="5" placeholder="Don gia"><br>
            <input type="submit" name="add" value="thêm sản phẩm">
        </form>
        <p>add new khach hang </p>
        <form action="add" method="post" >
            <input type="text" name="1" placeholder="Ma khach hang"><br>
            <input type="text" name="2" placeholder="Ten khach hang"><br>
            <input type="text" name="3" placeholder="dia chi"><br>
            <input type="tel" name="4" placeholder="so dien thoai"><br>
            <input type="submit" name ="add" value="thêm khách hàng">
        </form>
        <p>add new hang san xuat </p>
        <form action="add" method="post" >
            <input type="text" name="1" placeholder="Ma khach hang"><br>
            <input type="text" name="2" placeholder="Ten khach hang"><br>
            <input type="text" name="3" placeholder="dia chi"><br>
            <input type="tel" name="4" placeholder="so dien thoai"><br>
            <input type="submit" name ="add" value="thêm hãng sản xuất">
        </form>
         <p>add new chi tiet phieu xuat </p>
        <form action="add" method="post" >
            <input type="number" name="1" placeholder="so phieu xuat"><br>
            <input type="text" name="2" placeholder="ma san pham"><br>
            <input type="number" name="3" placeholder="soluong"><br>            
            <input type="submit" name ="add" value="thêm chi tiết phiếu xuất">
        </form>
         <p>add new phieu xuat </p>
        <form action="add" method="post" >
            <input type="number" name="1" placeholder="so phieu xuat"><br>
            <input type="text" name="2" placeholder="ma khach"><br>
            <input type="datetime-local" name="3" placeholder="ngay lap phieu"><br>            
            <input type="submit" name ="add" value="thêm phiếu xuất">
        </form>
          <p>add new noi bao hanh </p>
        <form action="add" method="post" >
            <input type="text" name="1" placeholder="Ma hang san xuat"><br>
            <input type="number" name="2" placeholder="so tt"><br>
            <input type="text" name="3" placeholder="ten diem bao hanh"><br>
            <input type="text" name="4" placeholder="dia chi"><br>
            <input type="tel" name="5" placeholder="so dien thoai"><br>
            <input type="submit" name ="add" value="thêm nơi bảo hành">
    </body>
</html>
