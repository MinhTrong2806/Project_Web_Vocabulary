<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="./css/login.css">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/css/bootstrap.min.css">
<title>Đăng ký</title>
</head>
<body>
	<div class="content">
		<div style="min-height: 105vh;" class="row center">
			<div style="background-color: #fff;" class="col-lg-6 center">
				<div class="form-register center al-center">
					<div class="packet-form">
						<h2 class="center">Sign Up</h2>
						<div
							style="color: greentext-align: center; font-size: 20px; margin-bottom: 10px;">${message_success_register}</div>
						<form action="register" method="POST">

							<div class="form-floating mb-3">
								<input type="text" required="required" name="username"
									class="form-control"
									<c:if test="${reusername!='null'}">value="${reusername}"</c:if>
									placeholder="Username"> <label for="floatingInput"">Username</label>
							</div>

							<div class="form-floating mb-3">
								<input type="password" required="required" name="password"
									class="form-control" placeholder="Password"> <label
									for="floatingInput"">Password</label>
							</div>
							<div class="form-floating mb-3">
								<input type="password" required="required" name="repassword"
									class="form-control" placeholder="Repeat Password"> <label
									for="floatingInput"">Repeat Password</label>
							</div>


							<div class="form-floating mb-3">
								<input type="text" required="required" name="name"
									class="form-control" placeholder="Tên người dùng"> <label
									for="floatingInput"">Tên người dùng</label>
							</div>

							<div style="color: red; margin-bottom: 12px">${message_fail_repassword}</div>
							<div style="color: red; margin-bottom: 12px">${message_fail_username}</div>
							<input class="btn btn-primary" type="submit" value="Sign In">
						</form>
						<div style="margin: 20px 0; font-size: 17px;" class="center">
							<span>Have already an account?</span> <a
								style="margin-left: 5px; font-weight: bold" href="login.jsp">Login</a>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/js/bootstrap.bundle.min.js"
		crossorigin="anonymous"></script>
</body>
</html>