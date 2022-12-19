<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
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
								<p>Thêm từ vựng</p>
							</div>
							<table>

								<div style="font-size: 16px" class="alert alert-success">
									<strong>Thêm từ vựng vào chủ đề <%=request.getParameter("nameTopic")%></strong>
								</div>

								<form method="post" action="WordController"
									enctype="multipart/form-data">
									<input type="hidden" name="idTopic"
										value="<%=request.getParameter("idTopic")%>">
									<table>
										<tr>
											<td>Từ vựng</td>
											<td><input type="text" name="vocabulary"></td>
										</tr>
										<tr>
											<td>Phiên âm</td>
											<td><input type="text" name="pronounce"></td>
										</tr>
										<tr>
											<td>Từ loại</td>
											<td><select name="type">
													<option selected="selected" value="n">(n)</option>
													<option value="v">(v)</option>
													<option value="adj">(adj)</option>
													<option value="adv">(adv)</option>
											</select></td>
										</tr>
										<tr>
											<td>Nghĩa</td>
											<td><input type="text" name="mean"></td>
										</tr>
										<tr>
											<td>Ví dụ</td>
											<td><input type="text" name="sample"></td>
										</tr>
										<tr class="tr-img">
											<td>Hình ảnh</td>
											<td><input class="imageinput" type="file" name="img"></td>
										</tr>
										<tr class="tr-img">
											<td>Âm thanh</td>
											<td><input class="imageinput" type="file" name="audio"></td>
										</tr>
										<tr>
											<td></td>
											<td><input class="btn btn-primary" type="submit"
												name="addWord" value="Thêm từ vựng"></td>
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