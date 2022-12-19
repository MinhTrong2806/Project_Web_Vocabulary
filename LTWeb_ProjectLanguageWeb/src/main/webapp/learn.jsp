<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<style type="text/css">
  .body{
	box-sizing: border-box;
  }
  .modal#myModal{
  left:25%;
  justify-content: center;
  align-items: center;
  margin-right: 25%; 
  }
  .modal-course-dialog{
  	min-width : 50%;
  	width: 50%;
  }
  .modal-course-content{
  	height: 100%;
  	background-color: #fff;
  }
  </style>
  <link rel="stylesheet" href="./css/style.css">
  <link rel="stylesheet" href="./css/menu.css">
  <link rel="stylesheet" href="./css/learn.css">
  <script src="https://kit.fontawesome.com/8c5482f352.js" crossorigin="anonymous"></script>
<title>Hoc tap</title>
</head>
<body>
<div class="content_data">
		<!-- menu -->
		<jsp:include page="pages/menu.jsp"/>	

        <div class="container-fluid">
             <div class="row">
                   <div class="col-3 col_1_content bgr_f2">
 
                   </div>
                   
                   <div style="position: relative;" class="col-6 col_2_content">    
                   		<div class="title-header-lesson">
                   			<div class="header-lesson">
                   				${courseCurrent.name}
                   			</div>
                   		</div>
                   		
                   		<div class="list-lesson">
                   			<div class="less-packet">
                   			
                   			<c:if test="${listTopicUser == null }">
                   				<c:forEach items="${listTopic}" var="topic">
                   				<div style="box-shadow: 5px 5px 5px rgb(106 106 106 / 25%)" class="lesson-item br-f8">
		                   			<a href="lessongame?idtopic=${topic.id_topic}">
		                   				<div class="row">
		                   					<div style="padding: 0 10px" class="col-2">
		                   						<div style="margin: 15px 20px; width: 100%" class="lesson-item-img">
		                   							<img style="width: 100%; border-radius: 50%" src="./images_topic/${topic.img}" alt="" />
		                   						</div>
		                   					</div>
		                   					
		                   					<div class="col-10 lesson-content">
		                   						<p class="content-1">${topic.name}</p>
		                   						<p class="content-2">${topic.description}</p>
		                   					</div>
		                   				</div>
	                   				</a>
                   				</div>
							</c:forEach>
                   			</c:if>
	                   	
	                   	
	                   	<c:if test="${listTopicUser != null }">

                   				<c:forEach items="${listTopicUser}" var="topic">
	                   				
	                   				<div style="box-shadow: 5px 5px 5px rgb(106 106 106 / 25%)" class="lesson-item <c:if test="${topic.status_learned == 'true'}">br-green</c:if> <c:if test="${topic.status_learned == 'false'}">br-f8</c:if>">
			                   			<a href="<c:url value="lessongame?idtopic=${topic.id_topic}"/>">
			                   				<div class="row">
			                   					<div style="padding: 0 10px" class="col-2">
			                   						<div style="margin: 15px 20px; width: 100%" class="lesson-item-img">
			                   							<img style="width: 100%; border-radius: 50%" src="./images_topic/${topic.img}" alt="" />
			                   						</div>
			                   					</div>
			                   					
			                   					<div class="col-10 lesson-content">
			                   						<p class="content-1">${topic.name}</p>
			                   						<p class="content-2">${topic.description}</p>
			                   					</div>
			                   				</div>
		                   				</a>
	                   				</div>
							</c:forEach>
                   			</c:if>
                   			</div>
                   		</div>
                   </div>
                   
                   <div class="col-3 col_3_content bgr_f2">
  						<div class="contain-right">
                         	<div class="contain-right-item" data-toggle="modal" data-target="#myModal">
                         		<img style="height: 100%; max-width:70px ;width:20%; position: absolute; left: 10px" alt="image error" src="./images/img_25.png">
                         		<div class="contain-right-item-text">
                         			<p class="item-text-header">Danh sách khóa học</p>
                         			<i class="fas fa-chevron-circle-right"></i>
                         		</div>
                         	</div>
                        </div>
                   </div>
        	 </div>
        </div>
	</div>
	
	
	 <!-- The Modal -->
	  <div class="modal show" id="myModal">
		    <div class="modal-course-dialog">
			      <div class="modal-course-content">
				        <!-- Modal body -->
				        <jsp:include page="pages/course.jsp"></jsp:include>
				        <!-- Modal footer -->
				        <div class="modal-footer">
				          <button type="button" class="btn btn-danger" data-dismiss="modal">Close</button>
				        </div>
			      </div>
		    </div>
	  </div>
</body>
</html>