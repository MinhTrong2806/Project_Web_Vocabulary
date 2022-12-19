<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="./css_admin/main.css">
<link rel="stylesheet" href="./css_admin/form.css">
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
								<p>Sửa khóa học</p>
							</div>
							<table>
								<form method="get" action="CourseController">
									<c:if test="<%= request.getParameter("nameCourse")!=null %>">
										<div style="font-size: 16px" class="alert alert-success">
											<strong>Sửa khóa học <%=request.getParameter("nameCourse")%></strong>
										</div>
									</c:if>
								<input type="hidden" name="idCourse" value="<%=request.getParameter("idCourse")%>">	
								<input type="hidden" name="nameCourseOld" value="<%=request.getParameter("nameCourse")%>">	
								<tr>
									<td>Tên khóa học</td>
									<td><input type="text" required name="name" value="<%=request.getParameter("nameCourse")%>"></td>
								</tr>
								<tr>
									<td>Mục tiêu khóa học</td>
									<td><input type="text" required name="goal" value="<%=request.getParameter("objCourse")%>"></td>
								</tr>
								<tr>
									<td>Nội dung khóa học</td>
									<td><input type="text" required name="content" value="<%=request.getParameter("contentCourse")%>"></td>
								</tr>
								<tr>
									<td></td>
									<td><input class="btn btn-primary" type="submit"
										name="setCourse" value="Sửa khóa học"></td>
								</tr>
								</form>
							</table>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>