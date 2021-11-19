<%@ page pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jstl/fmt_rt" prefix="fmt"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%><%-- 
<c:url value="http://localhost:8080/img" var="url"></c:url> --%>
<!DOCTYPE html>
<html>
<head>
<jsp:include page="stylebanhang.css"></jsp:include>
<jsp:include page="banhang.css"></jsp:include>
<link rel="shortcut icon1" type="image/png" href="./images/icon1web.png">
<base href="${pageContext.servletContext.contextPath}/">
</head>
<style type="text/css">
 
.errors {
	color: red;
	font-style: italic;
}

.icon1 {
	padding: 10px;
	background: brown;
	color: white;
	min-width: 50px;
	text-align: center;
	border-radius: 4px;
	height: 40px;
}



.frm1 {
	width: 83%;
	height: 40px;
	padding: 12px 20px;
	margin: 8px 0;
	box-sizing: border-box;
	border: 2px solid #2e6f51;
	border-radius: 4px;
}
	.bg {
	background-image: url("./images/them.jpg");
	width: 100%;
	height: 100%;
	background-position: center;
	background-repeat: no-repeat;
	background-size: cover;
	position: relative;
}

	</style>
<body>
	<jsp:include page="firstpg.jsp"></jsp:include>
	
 <div class="header"  style=" margin-left: 5px">
 
		<form:form action="home/thaydoiuser/${taikhoan.id}.html" method="post" modelAttribute="taikhoan">		
			<h2 style="text-align: center; color: #2e6f51"><i class="fa fa-user"></i>Thay đổi thông tin tài khoản</h2> <h6 style="color: red">${tb}</h6><h6 style="color: red">${message}</h6> 
			<div class="container-fluid">
			<div class="row"> 
			                 
			
			<div class="col-sm-6" style="background-color: white;">
					<div class="form-group">
					<form:errors style="color:red;" path="id"/><br>
						<i class="fa fa-user icon1"></i>
					<form:input type="text" readonly="true" class="frm1" placeholder="Nhập tài khoản" path="id" maxlength="20" />
						</div></div>
						<div class="col-sm-6" style="background-color: white;">
					<div class="form-group"><form:errors style="color:red;" path="hoTen"/><br>
					<i class="fas fa-file-signature icon1"></i>
							<form:input type="text" class="frm1" placeholder="Họ và tên" path="hoTen" />
						</div>
						</div>
					<div class="col-sm-6" style="background-color: white;">
					<div class="form-group"><form:errors style="color:red;" path="username"/><br>
					<i class="fa fa-key icon1"></i>
						<form:input type="username" readonly="true" class="frm1" placeholder="Nhập vào username" path="username" maxlength="20" />
					</div></div>
						<div class="col-sm-6" style="background-color: white;">
					<div class="form-group"><form:errors style="color:red;" path="email"/><br>
						<i class="fa fa-envelope icon1"></i>
						<form:input class="frm1" readonly="true" placeholder="Nhập vào email" path="email" type="email"/>
						</div></div>
					<div class="col-sm-6" style="background-color: white;">
					<div class="form-group"><form:errors style="color:red;" path="sdt"/><br>
						<i class="fa fa-phone icon1"></i>
						<form:input type="tel" class="frm1" placeholder="Số điện thoại" path="sdt" maxlength="10"/>
						</div></div>
					<div class="col-sm-6" style="background-color: white;">
					<div class="form-group"><form:errors style="color:red;" path="diaChi"/><br>
					<i class="fa fa-address-card icon1"></i>
						<form:input type="text" class="frm1" placeholder="Địa chỉ" path="diaChi" />
						</div></div>
						<form:hidden path="quyen" value="CUSTOMER"/>
						<form:hidden path="password"/>
						<form:hidden path="trangThai" />
						<div class="col-sm-6" style="background-color: white;">
						<div class="form-group">
			<label class="lb">Chọn Ảnh Đại Diện</label> <br>
			<input class="frm1" type="file" name="photo"  style="margin-left: 55px">
			<form:hidden path="anh"/>
			</div></div>
						<button style="text-align: center;margin-left: 330px; background-color: #2e6f51; margin-top: 2px; color: white; width: 50%;" class=""><b>Thay đổi thông tin</b></button>
				</div></div>
				</form:form>
				</div>
				<br>
				
<jsp:include page="footer.jsp"></jsp:include>

</body>
</html>