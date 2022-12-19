<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
<style type="text/css">
body {
	margin: 0;
	box-sizing: border-box;
}

.modal-course {
	width: 100%;
	display: flex;
	justify-content: center;
	align-items: center;
	position: relative;
}

.madal-paket {
	width: 90%;
}

.title-header-modal {
	position: fixed;
	top: 0;
	background-color: #fff;
	z-index: 100;
	width: 45%;
}

.header-course {
	text-align: center;
	font-size: 28px;
	line-height: 80px;
	height: 80px;
	background-color: #ffcb08;
	margin: 20px 0;
	border-radius: 20px;
	width: 93%;
	z-index: 90;
}

.header-course .close-modal {
	position: absolute;
	right: 45px;
	width: 80px;
	height: 80px;
}

.list-course {
	display: flex;
	flex-direction: column;
	align-items: center;
	margin-top: 50px;
	padding-top: 20px;
	animation: show ease-in .3s;
}

@
keyframes show {
	from {
		opacity :0
	}
	
	to {
		opacity: 1
	}
}
.course-item {
	width: 100%;
	display: flex;
	flex-direction: column;
	align-items: center;
	border-radius: 20px;
	padding-top: 20px;
	color: #000;
	box-shadow: 10px 10px 10px rgb(189 189 189/ 30%);
}

.course-item:first-child {
	margin-top: 50px;
}

.course-item-header {
	background-color: #ffcb08;
	font-size: 20px;
	font-weight: bold;
	width: 92%;
	height: 70px;
	text-align: center;
	font-size: 23px;
	line-height: 70px;
	border-radius: 20px;
}

.course-item-link {
	width: 60%;
	min-height: 250px;
	box-sizing: border-box;
	height: 80px;
	margin: 10px 0;
}

.course-item-content {
	width: 100%;
	padding: 20px;
}

.course-item-content .row {
	margin-bottom: 10px;
}

.course-item-content .col-10 p {
	margin: 0;
	line-height: 40px;
}
</style>
<title>Insert title here</title>
</head>
<body>
	<div class="modal-course">
		<div class="madal-paket">
			<div class="title-header-modal">
				<div class="header-course">
					CÁC KHOÁ HỌC
					<button type="button" class="close close-modal"
						data-dismiss="modal">&times;</button>
				</div>
			</div>

			<div class="list-course">
				<c:forEach items="${listCourse}" var="c">
					<a href="course?idcourse=${c.id}" class="course-item-link">
						<div class="course-item">
							<div class="course-item-header">${c.name}</div>

							<div class="course-item-content">
								<div class="row">
									<div class="col-2">
										<img style="height: 40px" alt="" src="./images/img_26.png">
									</div>
									<div class="col-10">
										<p>${c.objectives}</p>
									</div>

								</div>

								<div class="row">
									<div class="col-2">
										<img style="height: 40px" alt="" src="./images/img_27.png">
									</div>
									<div class="col-10">
										<p>${c.content}</p>
									</div>
								</div>
							</div>
						</div>
					</a>
				</c:forEach>
			</div>
		</div>
	</div>
</body>
</html>