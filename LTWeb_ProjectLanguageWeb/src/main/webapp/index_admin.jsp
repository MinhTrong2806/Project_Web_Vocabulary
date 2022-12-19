<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="./css_admin/main.css">
<link rel="stylesheet" href="./css_admin/form.css">
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.9.4/Chart.js"></script>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/css/bootstrap.min.css">
<title>Insert title here</title>
</head>
<body>
	<div class="admin-page row">
		<jsp:include page="./nav.jsp"></jsp:include>

		<div
			style="background-color: #ececec; position: relative; padding: 0; min-height: 780px;"
			class="content-admin col-10">
			<div style="background-color: #fff;" class="header">
				<jsp:include page="./topbar.jsp"></jsp:include>
			</div>

			<div class="bg-content"></div>
			<div class="content">
				<div class="content-1 content-data">
					<div class="data data-item1">
						<div class="img-data">
							<i class="far fa-clipboard icon-left" style="font-size: 25px"></i>
						</div>
						<div class="text-data col-8">
							<div class="text-data-name">
								<span>Số lượng khóa học</span>
							</div>
							<div class="text-data-content">${numC}</div>
						</div>
					</div>
					<div class="data data-item2">
						<div class="img-data">
							<i class="far fa-edit icon-left" style="font-size: 25px"></i>
						</div>
						<div class="text-data col-8">
							<div class="text-data-name">
								<span>Số lượng chủ đề</span>
							</div>
							<div class="text-data-content">${numT}</div>
						</div>
					</div>
					<div class="data data-item3">
						<div class="img-data">
							<i class="fa-solid fa-w icon-left" style="font-size: 23px"></i>
						</div>
						<div class="text-data col-8">
							<div class="text-data-name">
								<span>Số lượng từ vựng</span>
							</div>
							<div class="text-data-content">${numW}</div>
						</div>
					</div>
				</div>

				<!-- lấy dữ liệu view -->
				<c:forEach items="${listView}" var="view">
					<input class="view-item" type="hidden"
						value="${view.date}-${view.view}">
				</c:forEach>
				<!--  -->

				<div style="padding: 20px; text-align: center">
					<div class="content-2 form-addword form-simple">
						<div class="addword-packet packet-form">
							<div
								style="width: 100%; background-color: rgb(244, 244, 244); text-align: left; padding-left: 20px; box-shadow: -1px 1px 1px rgb(37 37 37/ 20%), 1px 1px 1px rgb(84 84 84/ 20%); color: #0000ff;">
								<div
									style="line-height: 50px; font-size: 20px; font-weight: bold">Thống
									kê người dùng</div>
							</div>
							<canvas id="myChart" style="width: 100%; padding: 20px"></canvas>
						</div>
					</div>


				</div>
			</div>
		</div>
	</div>
</body>

<script>
	var xValues = [];
	var yValues = [];
	let view = document.querySelectorAll(".view-item");
	for (var i = 0; i < view.length; i++) {

		let arr = view[i].value.split("-");
		
		xValues.push(arr[0]);
		yValues.push(arr[1]);
	}
	
	let maxData = 0;
	if(parseInt(yValues[9]) % 10 == 0){
		maxData = parseInt(yValues[9])+ 100;
	}else{
		let overNum =  parseInt(yValues[9])%10;
		maxData = parseInt(yValues[9]) + 100 - overNum ;
	}
	new Chart("myChart", {
		type : "line",
		data : {
			labels : xValues,
			datasets : [ {
				fill : true,
				lineTension : 0,
				backgroundColor : "rgba(0,0,255,.03)",
				borderColor : "rgba(0,0,255,0.1)",
				data : yValues
			} ]
		},
		options : {
			legend : {
				display : false
			},
			scales : {
				yAxes : [ {
					ticks : {
						min : 0,
						max : maxData
					}
				} ],
			}
		}
	});
</script>
</html>