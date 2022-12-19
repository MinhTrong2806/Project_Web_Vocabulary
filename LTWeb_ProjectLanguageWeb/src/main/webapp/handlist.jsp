<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="./css/handlist.css">
<meta charset="UTF-8">
<script src="https://kit.fontawesome.com/8c5482f352.js" crossorigin="anonymous"></script>
<link rel="stylesheet" href="./css/style.css">
<link rel="stylesheet" href="./css/menu.css">
<link rel="stylesheet" href="./css/review.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<title>Ogu sổ tay</title>
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
						<!--  -->
						<div class="content-notebook">
							<div class="level-word">
								<!-- mục cấp độ -->
								<div id="level-1" class="level level-1">
									<div class="level-text">Cấp độ 1</div>
									<div class="star star-1">
										<i class="fa-sharp fa-solid fa-star"></i> <i
											class="far fa-star"></i> <i class="far fa-star"></i> <i
											class="far fa-star"></i> <i class="far fa-star"></i>
									</div>
									<div class="border border-1"></div>
								</div>
								<div id="level-2" class="level level-2">
									<div class="level-text">Cấp độ 2</div>
									<div class="star star-2">
										<i class="fa-sharp fa-solid fa-star"></i> <i
											class="fa-sharp fa-solid fa-star"></i> <i class="far fa-star"></i>
										<i class="far fa-star"></i> <i class="far fa-star"></i>
									</div>
									<div class="border border-2"></div>
								</div>
								<div id="level-3" class="level level-3">
									<div class="level-text">Cấp độ 3</div>
									<div class="star star-3">
										<i class="fa-sharp fa-solid fa-star"></i> <i
											class="fa-sharp fa-solid fa-star"></i> <i
											class="fa-sharp fa-solid fa-star"></i> <i class="far fa-star"></i>
										<i class="far fa-star"></i>
									</div>
									<div class="border border-3"></div>
								</div>
								<div id="level-4" class="level level-4">
									<div class="level-text">Cấp độ 4</div>
									<div class="star star-4">
										<i class="fa-sharp fa-solid fa-star"></i> <i
											class="fa-sharp fa-solid fa-star"></i> <i
											class="fa-sharp fa-solid fa-star"></i> <i
											class="fa-sharp fa-solid fa-star"></i> <i class="far fa-star"></i>
									</div>
									<div class="border border-4"></div>
								</div>
								<div id="level-5" class="level level-5">
									<div class="level-text">Cấp độ 5</div>
									<div class="star star-5">
										<i class="fa-sharp fa-solid fa-star"></i> <i
											class="fa-sharp fa-solid fa-star"></i> <i
											class="fa-sharp fa-solid fa-star"></i> <i
											class="fa-sharp fa-solid fa-star"></i> <i
											class="fa-sharp fa-solid fa-star"></i>
									</div>
									<div class="border border-5"></div>
								</div>
							</div>
							<!-- mục tìm từ -->
							
							
							<div class="search">
								<input type="text" name="search-word"> <i
									class="fas fa-search"></i>
							</div>
							
							
							<!-- mục từ mẫu -->
							<!-- Tu vung level 1 -->
							<div id="data-1" class="form-word form-data1">
								<c:forEach items="${ListWordLevel_1}" var="word">
									<div class="box-word">
										<input style="margin-right:10%;width: 18px; " name="words" type="checkbox" checked="checked" value="" id="check">
										<div class="vocabulary col-4">
											<b>${word.vocabulary}</b>
											<p>${word.pronounce}</p>
										</div>
										<div style="margin-right:10% " class="type-word">
										  	<p>(${word.type})</p>
										</div>
										<div class="mean ">
										  	<p>${word.mean}</p>
										</div>
									</div>
								</c:forEach>
							</div>
							

							<!-- Tu vung level 2 -->
							<div id="data-2" class="form-word">
								<c:forEach items="${ListWordLevel_2}" var="word">
									<div class="box-word">
										<input style="margin-right:10%;width: 18px; " name="words" type="checkbox" checked="checked" value="" id="check">
										<div class="vocabulary col-4">
											<b>${word.vocabulary}</b>
											 <p>${word.pronounce}</p>
										</div>
										<div style="margin-right:10% " class="type-word">
										  	<p>(${word.type})</p>
										</div>
										<div class="mean ">
										  	<p>${word.mean}</p>
										</div>
									</div>
								</c:forEach>
							</div>
							

							<!-- Tu vung level 3 -->
							<div id="data-3" class="form-word">
								<c:forEach items="${ListWordLevel_3}" var="word">
									<div class="box-word">
										<input style="margin-right:10%;width: 18px; " name="words" type="checkbox" checked="checked" value="" id="check">
										<div class="vocabulary col-4">
											<b>${word.vocabulary}</b>
											 <p>${word.pronounce}</p>
										</div>
										<div style="margin-right:10% " class="type-word">
										  	<p>(${word.type})</p>
										</div>
										<div class="mean ">
										  	<p>${word.mean}</p>
										</div>
									</div>
								</c:forEach>
							</div>
							
							

							<!-- Tu vung level 4 -->
							<div id="data-4" class="form-word">
								<c:forEach items="${ListWordLevel_4}" var="word">
									<div class="box-word">
										<input style="margin-right:10%;width: 18px; " name="words" type="checkbox" checked="checked" value="" id="check">
										<div class="vocabulary col-4">
											<b>${word.vocabulary}</b>
											 <p>${word.pronounce}</p>
										</div>
										<div style="margin-right:10% " class="type-word">
										  	<p>(${word.type})</p>
										</div>
										<div class="mean ">
										  	<p>${word.mean}</p>
										</div>
									</div>
								</c:forEach>
							</div>
							

								<!-- Tu vung level 5 -->
							<div id="data-5" class="form-word">
								<c:forEach items="${ListWordLevel_5}" var="word">
									<div class="box-word">
										<input style="margin-right:10%;width: 18px; " name="words" type="checkbox" checked="checked" value="" id="check">
										<div class="vocabulary col-4">
											<b>${word.vocabulary}</b>
											 <p>${word.pronounce}</p>
										</div>
										<div style="margin-right:10% " class="type-word">
										  	<p>(${word.type})</p>
										</div>
										<div class="mean ">
										  	<p>${word.mean}</p>
										</div>
									</div>
								</c:forEach>
							</div>
						</div>
					</div>

					<div class="col-3 col_3_content bgr_f2"></div>
				</div>
			</div>
		</div>
	</div>
<script src="./js/handlist.js"></script>
</body>
</html>