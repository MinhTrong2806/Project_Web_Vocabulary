<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="./css/main.css">
<link rel="stylesheet" href="./css/form.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/5.2.0/css/bootstrap.min.css">
<link rel="stylesheet" href="https://cdn.datatables.net/1.13.1/css/dataTables.bootstrap5.min.css">
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
				<div class="content-2">
					<div class="form-addword form-simple">
						<div class="addword-packet packet-form">
							<div class="br">
								<p>Danh sách từ vựng</p>
							</div>
							<c:if test="${notify != null}">
								<div style="font-size: 16px" class="alert alert-success">
									<strong>${notify}</strong>
								</div>
							</c:if>
							<form method="POST" action="modules/word-management/handle.php">
								<table id="tableword"
									class="table table-hover table-bordered results table-striped">
									<thead>
										<tr>
											<th>#</th>
											<th>Từ vựng</th>
											<th>Phiên âm</th>
											<th>Từ loại</th>
											<th>Nghĩa</th>
											<th>Ví dụ</th>
											<th>Hình ảnh</th>
											<th>Quản lý</th>
										</tr>
									</thead>
									<tbody>
										<c:forEach var="w" items="${listword}" varStatus="loop">
											<tr>
												<th scope="row">${loop.count}</th>
												<td>${w.vocabulary}</td>
												<td>${w.pronounce}</td>
												<td>(${w.type})</td>
												<td>${w.mean }</td>
												<td>  ${w.sample}</td>
												<td><img width="80px" height="80px" alt="Chưa có hình ảnh" src="./images_word/${w.img}"></td>

												<td><a title="Xóa" href="WordController?actionWord=delete&idWord=${w.id_word}&nameWord=${w.vocabulary }"><i class="fa-solid fa-trash-can"></i></a> | 
														
												<a title="Sửa"
													href="setWord.jsp?idWord=${w.id_word}&voca
													=${w.vocabulary}&pro=${w.pronounce}&mean=${w.mean }&sam= ${w.sample}"><i
														class="fa-solid fa-screwdriver-wrench"></i></a>
												</td>
											</tr>
										</c:forEach>
									</tbody>
								</table>
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	
			<script src="https://code.jquery.com/jquery-3.5.1.js"></script>
		<script src="https://cdn.datatables.net/1.13.1/js/jquery.dataTables.min.js"></script>
		<script src="https://cdn.datatables.net/1.13.1/js/dataTables.bootstrap5.min.js"></script>
		<script type="text/javascript">
		$(document).ready(function () {
		    $('#tableword').DataTable();
		});
		</script>
</body>
</html>