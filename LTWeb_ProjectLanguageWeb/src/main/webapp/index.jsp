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
					
					
						<div class="progress_learn">
							<div class="progress_learn_packet">
								<div id="data1" data="${numW_1}" class="data data-item-1">
									<div class="text_count_word">${numW_1} từ</div>
									<div class="text_stt">1</div>
								</div>
								<div id="data2" data="${numW_2}" class="data data-item-2">
									<div class="text_count_word">${numW_2} từ</div>
									<div class="text_stt">2</div>
								</div>
								<div id="data3" data="${numW_3}" class="data data-item-3">
									<div class="text_count_word">${numW_3} từ</div>
									<div class="text_stt">3</div>
								</div>
								<div id="data3" data="${numW_4}" class="data data-item-4">
									<div class="text_count_word">${numW_4} từ</div>
									<div class="text_stt">4</div>
								</div>
								<div id="data3" data="${numW_5}" class="data data-item-5">
									<div class="text_count_word">${numW_5} từ</div>
									<div class="text_stt">5</div>
								</div>
								<input id="dataTotal" type="hidden" value="${numW_total}">
								<div class="dashboard-border"></div>
							</div>
						</div>


						<div
							style="margin: 50px auto 0; text-align: center; font-size: 18px">
							<c:if test="${user != null}">
	                    	Chuẩn bị ôn tập: <span>${numWordReview}</span> từ
	                    	</c:if>
						</div>


						<div class="btn-learn">
							<c:if test="${user == null}">
								<a style="width: 100%" href="<c:url value="${link}"/>">
									<button class="btn-style">Học từ mới</button>
								</a>
							</c:if>

							<c:if test="${user != null}">
								<a id="waiting" onclick="event.stopPropagation();"
									style="width: 100%" href="<c:url value="${link}"/>">
									<button id="btn-review" class="btn-style">
										<span id="time">00</span>
									</button>
								</a>
								<input id="inputTime" type="hidden" value="${timeReview}">
							</c:if>
						</div>
					</div>
					<div class="col-3 col_3_content bgr_f2">
						<div class="contain-right">
						
							<div class="contain-right-item">
								<img style="height: 100%; position: absolute; left: 0"
									alt="image error" src="./images/img_25.png">
								<div class="contain-right-item-text">
									<p class="item-text-header">Sổ tay</p>
									<p class="item-text">Bạn đã học được ${numW_total} từ</p>
								</div>
							</div>
							
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

	<script src="./js/index.js"></script>
</body>
</html>