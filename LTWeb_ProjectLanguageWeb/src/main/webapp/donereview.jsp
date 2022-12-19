<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="./css/style.css">
<link rel="stylesheet" href="./css/formgame.css">
<link rel="stylesheet" href="./css/main.css">
<link rel="stylesheet" href="./css/donereview.css">
<script src="https://kit.fontawesome.com/8c5482f352.js"
	crossorigin="anonymous"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.9.4/Chart.js"></script>
<title>Insert title here</title>
</head>
<body>
	<div class="container-fluid">
		<div class="row">
			<div class="col-3 col_1_content bgr_f2"></div>

			<div style="background-color: #f2f2f266" class="col-6 col_2_content">
				<form action="reviewgame" method="get">
					<div id="header" class="" style="text-align: center; line-height: 100px; font-size: 25px">
						Kết quả học tập header</div>

					<div id="body-game">
						<canvas id="myChart"
							style="width: 100%; max-width: 600px; margin: 0 auto"></canvas>
						<input id="correct" type="hidden" value="${numberCorrect}">
						<input id="wrong" type="hidden" value="${numberWrong}">
						<input id="total" type="hidden" value="${numberTotal}">
						<div class="box-word">
							<c:forEach items="${wordWrongs}" var="word">
								<div class="word-box">
									<i class="fa-solid fa-circle-xmark"></i>
									<div style="word-break: break-word;" class="word col-2">
										<b>${word.vocabulary}</b>
									</div>
	
									<div style="word-break: break-word;" class="type col-2">
										<p>(${word.type})</p>
									</div>
	
									<div style="word-break: break-word;" class="mean col-4">
										<p>${word.mean}</p>
									</div>
								</div>
							</c:forEach>
						</div>
					</div>

					<div id="footer-game">
						<div style="text-align: center">
							<a href="<c:url value="./index.jsp"/>" style="padding: 10px 45px" id="check" class="btn-submit" >Tiếp tục</a>
						</div>
					</div>
				</form>
			</div>

			<div class="col-3 col_3_content bgr_f2"></div>
		</div>
	</div>


	<script>
	
		let numWrong = document.querySelector("#wrong").value;
		let numCorrect = document.querySelector("#correct").value;
		let numTotal = document.querySelector("#total").value;
		console.log(numWrong,numCorrect,numTotal);
		var xValues = [ "Số từ đúng", "Số từ sai" ];
		var yValues = [ numCorrect, numWrong];
		var barColors = [ "#00a6ff", "#f2f2f2",

		];

		new Chart("myChart", {
			type : "doughnut",
			data : {
				labels : xValues,
				datasets : [ {
					backgroundColor : barColors,
					data : yValues
				} ]
			},
			options : {

				title : {
					display : true,
					text : "Bạn đã trả lời đúng "+numCorrect+"/"+numTotal+" từ"
				}
			}
		});
		
		
		//set header
		let header = document.querySelector("#header");
		var score = numCorrect/numTotal;
		if(score <= 0.5){
			header.innerHTML = 'Cố gắng lên nhé!'
		}else{
			header.innerHTML = 'Tuyệt vời!'
		}
		
	</script>
</body>
</html>