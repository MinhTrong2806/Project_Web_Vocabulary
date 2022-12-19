<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="model.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
  <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.0/css/all.css" integrity="sha384-lZN37f5QGtY3VHgisS14W3ExzMWZxybE1SJSEsQp9S+oqd12jhcu+A56Ebc1zFSJ" crossorigin="anonymous">
  <link rel="stylesheet" href="./css/style.css">
  <link rel="stylesheet" href="./css/menu.css">
  <link rel="stylesheet" href="./css/donelearn.css">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<title>Index</title>
</head>
<body>
	<div class="content_data">
	<!-- menu -->
        <jsp:include page="pages/menu.jsp"/>
    <!-- content -->
        <div class="content">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-3 col_1_content bgr_f2">
 						
                    </div>
                    
                    <div style="background-color: #f2f2f266" class="col-6 col_2_content">       	
  						<div class="content-done">
  							<div class="header">Chọn từ vựng bạn muốn lưu vào sổ tay</div>
  							<div class="img-ogu">
  								<img style="width: 100%" alt="ogu" src="./images_ogu/img-ogu1.gif">
  							</div>
							<form action="<c:url value="donelearnservlet"/>" method="get">
								<div class="box-word">
 									<c:forEach items="${listword}" var="word">
		  								 <div class="word-box">
								            <input name="words" type="checkbox" checked="checked" value="${word.id_word}" id="check">
								            <div class="word col-2">
								                <b>${word.vocabulary}</b>
								                <p>${word.pronounce}</p>
								            </div>
								
								            <div class="type col-2">
								                <p>(${word.type})</p>
								            </div>
								            
								            <div class="mean col-2">
								                <p>${word.mean}</p>
								            </div>
	    								</div>
									</c:forEach> 
	  							</div>
	  							
	  							<div class="btn-submit-div">
	  								<input name="learn" class="btn-submit" type="submit" value="Học từ mới">
	  							</div>
	  							<div class="btn-submit-div">
	  								<input name="out" class="btn-submit" type="submit" value="Thoát">
	  							</div>
							</form>
  						</div>
                    </div>
                    
                    <div class="col-3 col_3_content bgr_f2">
                        
                    </div>
                </div>
            </div>
        </div>
    </div>
    
    <script src="./js/done.js"></script>
</body>
</html>