<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="./css/style.css">
<link rel="stylesheet" href="./css/menu.css">
<link rel="stylesheet" href="./css/review.css">

<script src="https://kit.fontawesome.com/8c5482f352.js"
	crossorigin="anonymous"></script>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
	
<title>Ogu Ogu</title>
</head>
<body>
	<div class="content_data">
		<!-- menu -->
		<jsp:include page="pages/menu.jsp" />

		<!-- content -->
		<div class="content">
			<div class="container-fluid">
				<div class="row">
					<div class="col-3 col_1_content bgr_f2"></div>

					<div class="col-6 col_2_content">


						<div class="notify" style="text-align: center; font-size: 25px; margin: 40px">
							Bạn chưa học từ nào!</br> Hãy học một từ mới.
						</div>
						<div style="text-align: center; margin-bottom: 40px">
							<img width="300px" height="300px" alt="img" src="./images/no-user-learn.png">
						</div>


						<div class="btn-learn">
							<a style="width: 100%" href="course?idcourse=1">
								<button class="btn-style">Học từ mới</button>
							</a>
						</div>
					</div>
					<div class="col-3 col_3_content bgr_f2">
						<div class="contain-right"></div>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>