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
<title>Đăng nhập</title>
</head>
<body>
	<div class="content">
		<div style="min-height: 105vh;" class="row center">
			<div style="background-color: #fff;" class="col-lg-6 center">
				<div class="form-login center al-center">
					<div class="packet-form">
						<h2 class="center">Login</h2>
						<c:url var="url" value="login" />
						<form action="${url}" method="POST">
							<div class="form-floating mb-3">
								<c:if test="${username != null}">
									<input type="text" required="required" name="username"
										class="form-control" id="floatingInput" placeholder="Username"
										style="font-size: 16px" value="${username}">

									<label for="floatingInput">Username</label>
								</c:if>
								<c:if test="${username == null}">
									<input type="text" required="required" name="username"
										class="form-control" id="floatingInput" placeholder="Username"
										style="font-size: 16px">
									<label for="floatingInput">Username</label>
								</c:if>
							</div>

							<div class="form-floating mb-3">

								<c:if test="${password != null}">
									<input type="password" required="required" name="password"
										class="form-control" id="floatingInput" placeholder="Password" value="${password}">
									<label for="floatingInput">Password</label>
								</c:if>
								<c:if test="${password == null}">
									<input type="password" required="required" name="password"
										class="form-control" id="floatingInput" placeholder="Password">
									<label for="floatingInput">Password</label>
								</c:if>
							</div>
							<div class="check">
								<input style="margin: 0;" class="form-check" name="remember"
									type="checkbox"> <label
									style="line-height: 25px; margin: 0 10px; font-weight: 300;">Remember
									me</label>
							</div>
							<div style="margin-bottom: 12px; color: red">${message_fail}</div>
							<input class="btn btn-primary btn-login text-uppercase fw-bold"
								type="submit" value="Login">
						</form>
						<div style="margin: 20px 0; font-size: 17px;" class="center">
							<span>Don't have an account?</span> <a
								style="margin-left: 5px; font-weight: bold" href="register.jsp">Sign
								Up</a>
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