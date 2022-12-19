<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="dao.CourseDAO"%>
<%@page import="model.*"%>
<%@page import="dao.*"%>
<%@page import="java.util.ArrayList"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="./css_admin/main.css">
<link rel="stylesheet" href="./css_admin/form.css">
<title>Insert title here</title>
</head>
<body>
	<%
	CourseDAO courseDAO = new CourseDAO();
	ArrayList<Course> listCourse = (ArrayList<Course>) courseDAO
			.getAllCourseSubtract(Integer.parseInt(request.getParameter("idCourse")));
	%>
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
								<p>Thêm chủ đề</p>
							</div>
							<div style="font-size: 16px" class="alert alert-success">
								<strong>Thêm chủ đề vào khóa học <%=request.getParameter("nameCourse")%></strong>
							</div>


							<form method="post" action="TopicController"
								enctype="multipart/form-data">
								<input type="hidden"
									value="<%=request.getParameter("idCourse")%>">
								<table>
									<tr>
										<td>Tên chủ đề</td>
										<td><input type="text" required name="name"></td>
									</tr>
									<tr>
										<td>Mô tả</td>
										<td><input type="text" required name="des"></td>
									</tr>
									<tr>
										<td>Khóa học</td>
										<td><select name="course">
												<option selected="selected"
													value="<%=request.getParameter("idCourse")%>"><%=request.getParameter("nameCourse")%></option>
												<c:forEach items="<%=listCourse%>" var="c">
													<option value="${c.id}">${c.name}</option>
												</c:forEach>

										</select></td>
									</tr>
									<tr>
										<td>Hình ảnh</td>
										<td><input class="imageinput" type="file" name="img"></td>
									</tr>
									<tr>
										<td></td>
										<td><input class="btn btn-primary" type="submit"
											name="addTopic" value="Thêm chủ đề"></td>
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