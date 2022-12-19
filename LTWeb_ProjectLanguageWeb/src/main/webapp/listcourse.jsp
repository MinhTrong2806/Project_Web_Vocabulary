<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/5.2.0/css/bootstrap.min.css">
<link rel="stylesheet" href="https://cdn.datatables.net/1.13.1/css/dataTables.bootstrap5.min.css">

<title>Danh sách khóa học</title>
</head>
<body>
	<div class="admin-page row">
		<jsp:include page="./nav.jsp"></jsp:include>
		<div id="main" style="background-color: #ececec; position: relative; padding: 0; min-height: 780px;"
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
								<p>Danh sách khóa học</p>
							</div>
							<c:if test="${notify != null}">
									<div style="font-size: 16px" class="alert alert-success">
									<strong>${notify}</strong>
								</div>
							</c:if>

							<form method="get" action="CourseController">
							<table  id="tablecourse" class="table table-hover table-bordered results table-striped">
								<thead>
									<tr>
										<th>STT</th>
										<th>Tên khóa học</th>
										<th>Mục tiêu</th>
										<th>Nội dung</th>
										<th>Quản lý</th>
									</tr>
								</thead>
								<tbody>
									<c:forEach var="c" items="${listcourse}" varStatus="loop">
										<tr>
											<th scope="row">${loop.count}</th>
											<td>${c.name}</td>
											<td>${c.objectives}</td>
											<td>${c.content}</td>
											<td>
												<a title="Xóa" href="CourseController?action=delete&idCourse=${c.id}&nameCourse=${c.name}"><i class="fa-solid fa-trash-can"></i></a>
													| 
												<a title="Sửa" href="setCourse.jsp?idCourse=${c.id}&nameCourse=${c.name}&objCourse=${c.objectives}&contentCourse=${c.content}"><i class="fa-solid fa-screwdriver-wrench"></i></a>
													| 
												<a title="Thêm chủ đề" href="addtopic.jsp?idCourse=${c.id}&nameCourse=${c.name}"><i class="fa-solid fa-file-circle-plus"></i>
												</a>
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
		<script src="https://code.jquery.com/jquery-3.5.1.js"></script>
		<script src="https://cdn.datatables.net/1.13.1/js/jquery.dataTables.min.js"></script>
		<script src="https://cdn.datatables.net/1.13.1/js/dataTables.bootstrap5.min.js"></script>
		<script type="text/javascript">
		$(document).ready(function () {
		    $('#tablecourse').DataTable();
		});
		</script>
</body>
</html>