<%@page import="dao.UserDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="dao.UserDAOImpl"%>
<%@page import="model.User"%>
<%@page import="dao.UserDAO"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="css/login.css" rel='stylesheet' type='text/css' />
<title>Đăng kí tài khoản</title>
</head>
<body>
	<%
		String err = "";
		if (request.getAttribute("err") != null) {
			err = (String) request.getAttribute("err");
		}
		String username= request.getParameter("username");
		UserDAOImpl userDAO = new UserDAOImpl();
		User u= userDAO.getUser(username);
	%>

	<!--/start-login-two-->
	<div class="login-02">
		<div class="two-login  hvr-float-shadow">
			<div class="two-login-head">
				<img src="images/top-note.png" alt="" />
				<h2>Cập nhật thông tin</h2>
				<lable></lable>
			</div>
			<form action="UpdateUser" method="post">
				<li style="color: red"><%=err%></li>
				Tên đăng nhập
				<li><input type="text" class="text"
					value="<%=u.getUsername()%>" readonly name="username"><a
					href="#" class=" icon2 user2"></a></li>
				Mật khẩu
				<li><input type="password" value="" 
					name="password"><a href="#" class=" icon2 lock2"></a></li>
				Ngày sinh
				<li><input type="date" value="<%=u.getNgaysinh()%>"
					onfocus="this.value = '';"
					onblur="if (this.value == '') {this.value = '<%=u.getNgaysinh() %>';}"
					name="ngaysinh"><a href="#" class=" icon2 lock2"></a></li>
				Giới tính
				<li><input type="text" value="<%=u.getGioitinh() %>"
					list="exampleList" onfocus="this.value = '';"
					onblur="if (this.value == '') {this.value = '<%=u.getGioitinh() %>';}"
					name="gioitinh"> <datalist id="exampleList">
					<option value="Nam">
					<option value="Nữ">
					</datalist><a href="#" class=" icon2 lock2"></a></li>
				Email
				<li><input type="text" value="<%= u.getEmail() %>" onfocus="this.value = '';"
					onblur="if (this.value == '') {this.value = '<%=u.getEmail() %>';}" name="email"><a
					href="#" class=" icon2 lock2"></a></li>
				Số điện thoại
				<li><input type="text" value="<%=u.getSdt() %>"
					onfocus="this.value = '';"
					onblur="if (this.value == '') {this.value = '<%=u.getSdt() %>';}" name="sdt"><a
					href="#" class=" icon2 lock2"></a></li>
				Địa chỉ
				<li><input type="text" value="<%=u.getDiachi() %>"
					onfocus="this.value = '';"
					onblur="if (this.value == '') {this.value = '<%=u.getDiachi() %>';}"
					name="diachi"><a href="#" class=" icon2 lock2"></a></li>

				
				<div class="submit two">
					<input type="submit" value="CẬP NHẬT">
					<input type="hidden" value="<%=u.getUser_id()%>" name="id">
				</div>
				<h5>
					<a href="index.jsp">Trở về</a>
				</h5>
			</form>
		</div>
	</div>
</body>
</html>