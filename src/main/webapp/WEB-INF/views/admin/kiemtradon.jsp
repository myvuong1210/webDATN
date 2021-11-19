

<%@ page pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jstl/fmt_rt" prefix="f"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>DANH SÁCH ĐƠN ĐẶT HÀNG</title>
<base href="${pageContext.servletContext.contextPath}/">
<jsp:include page="stylebanhang.css"></jsp:include>
<jsp:include page="banhang.css"></jsp:include>
<link rel="shortcut icon" type="image/png" href="./images/iconweb.png">
<style type="text/css">
.bg {
	background-image: url("./images/moi.png");
	width: 100%;
	height: 100%;
	background-position: center;
	background-repeat: no-repeat;
	background-size: cover;
	position: relative;
}

.lb{
	font-weight: bold;
}</style>
</head>
<body>
<div class="sidebar">
  <a href="admin/index.html"><i class="fas fa-users"></i> Xin chào ${sessionScope.admin.getHoTen()} đã đến với trang quản trị
  </a><hr><p><a href="admin/sanpham.html"><i class="far fa-list-alt"></i> Danh sách sản phẩm</a></p>
  <p>
    <a href="admin/thuonghieu.html"><i class="far fa-list-alt"></i>Thương hiệu sản phẩm</a>
    <a href="admin/theloai.html"><i class="far fa-list-alt"></i>Thể loại sản phẩm</a>
    <a href="admin/taikhoan.html"><i class="far fa-list-alt"></i>Tài khoản người dùng</a>
    <a href="admin/tintuc.html"><i class="far fa-list-alt"></i>Tin tức</a>
    <a href="admin/phieunhaphang.html"><i class="far fa-list-alt"></i>Phiếu nhập hàng</a>
    <a href="admin/kiemtradon.html"><i class="far fa-list-alt"></i>Kiểm tra đơn hàng</a>
    <a href="admin/dangxuat.html"><i class="fas fa-sign-out-alt"></i>Đăng xuất </a></p>
</div>
	<div class="main bg">
 <h2 style="margin-left: 250px; font-style: italic; color: #8B4513"> Xin chào ${sessionScope.admin.getHoTen()}! </h2>
  <p style="margin-left: 250px; color: brown">Chào mừng bạn quay trở lại với trang quản trị của Website </p>
		<div class="container">   <br>
<h2 style="font-weight: bold;color: #FF6666">DANH SÁCH ĐƠN ĐẶT HÀNG</h2>
<a href="admin/chitietdon.html"><i class="far fa-list-alt"></i>Chi tiết đơn hàng</a>
  <table class="table table-bordered table-hover" style="margin-left: 12px">
		<tr>
		<th><div align="center">Mã đơn hàng</div></th>
		<th><div align="center">Mã Tài Khoản</div></th>
		<th><div align="center">Tên Tài Khoản</div></th>
		<th><div align="center">Địa chỉ</div></th>
		<th><div align="center">Số điện thoại</div></th>
		<th><div align="center">Tổng tiền</div></th>
		<th><div align="center">Ngày đặt</div></th>
		<th><div align="center">Trạng thái đơn</div></th>
		<th><div align="center">Xem chi tiết đặt</div></th>
		<th>Cập nhật</th>
       	</tr>
		<c:forEach var="o" items="${donhangs}">
			<tr>
				<td><div align="center">${o.id}</div></td>
				<td><div align="center">${o.taiKhoanId}</div></td>
				<td><div align="center">${sessionScope.admin.getHoTen()}</div></td>
				<td><div align="center">${o.diachi}</div></td>
				<td><div align="center">${sessionScope.admin.getSdt()}</div></td>
			     <td><div align="center"><f:formatNumber minFractionDigits="0" value="${o.tongTien}"
						type="number" /> vnd</div></td>
				<td><div align="center"><f:formatDate pattern="dd-MM-yyyy" value="${o.ngayLap}"/></div></td>
				<td><div align="center">
				<c:choose>
				<c:when test="${o.trangThai==0}">Chờ xác nhận</c:when>
				<c:when test="${o.trangThai==1}">Đã xác nhận</c:when>
				<c:when test="${o.trangThai==2}">Đang giao hàng</c:when>
				<c:when test="${o.trangThai==3}">Đã hoàn thành</c:when>
				<c:when test="${o.trangThai==4}">Giao hàng không thành công</c:when>
				<c:when test="${o.trangThai==-1}">Đã hủy</c:when>
				</c:choose>
				</div>
				</td>
				<c:forEach var="p" items="${chitietdats}">
				<c:if test="${o.id==p.idPhieuDatHang}">
				<td><a href="admin/chitiet_dat/${p.id}.html">Xem chi tiết phiếu đặt</a>
				</td></c:if></c:forEach>
				 <td><div><a href="admin/capnhatdon/${o.id}.html" onclick="if(!(confirm('Bạn có chắc chắn muốn sửa đơn hàng này không?'))) return false;">Cập nhật</a></div></td>
        	</tr>
		</c:forEach>
		
	</table>
					
  </div>
 </div>
</body>
</html>