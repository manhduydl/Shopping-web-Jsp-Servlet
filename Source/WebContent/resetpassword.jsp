<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="css/login.css" rel='stylesheet' type='text/css' />
<title>Khôi phục mật khẩu</title>
</head>
<body>
	<%
		String err = "";
		if (request.getAttribute("err") != null) {
			err = (String) request.getAttribute("err");
		}
	%>
	<!--/start-login-one-->
	<div class="login-01">
		<div class="one-login  hvr-float-shadow">
			<div class="one-login-head">
				<img src="images/top-lock.png" alt="" />
				<h1>Khôi phục mật khẩu</h1>
				<span></span>
			</div>
			<form action="ResetPassword" method="post">
				<li style="color: red"><%=err%></li>
				<li><input type="text" class="text" value="Username"
					onfocus="this.value = '';"
					onblur="if (this.value == '') {this.value = 'Username';}"
					name="username"><a href="#" class=" icon user"></a></li>
				
				<div class="p-container">
					
					<div class="clear"></div>
				</div>
				<div class="submit">
					<input type="submit" value="KHÔI PHỤC">
				</div>
	
			</form>
		</div>
	</div>

</body>
</html>