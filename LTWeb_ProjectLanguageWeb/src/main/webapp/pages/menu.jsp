<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script src="https://kit.fontawesome.com/8c5482f352.js" crossorigin="anonymous"></script>
 <script src="https://cdn.jsdelivr.net/npm/jquery@3.6.0/dist/jquery.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
<title>Insert title here</title>
</head>
<body>
<div class="menu" style="z-index: 100">
	 <div class="container-fluid">
                <div class="row">
                    <div class="col-3 col_1 position-r">
                        <div class="menu-logo">
                            <a href="">
                               <img alt="logo" src="./images/vuongoGU-logo.png">
                            </a>	
                        </div>
                    </div>
                    <div style="padding: 0;" class="col-6 col_2">
                        <div class="menu-list">
                            <div class="col-3 menu-item">
                                <a href="<c:url value="index.jsp"/>">
                                    <div class="menu-item-box">
                                        <img src="./images/review.png" alt="book">
                                        <p>Ôn tập</p>
                                    </div>
                                </a>
                            </div>
                            <div class="col-3 menu-item">
                                <a href="<c:url value="course?idcourse=1"/>">
                                    <div class="menu-item-box">
                                        <img src="./images/learn.png" alt="book">
                                        <p>Học tập</p>
                                    </div>
                                </a></div>
                            <div class="col-3 menu-item">
                                <a href="<c:url value="notebook"/>">
                                    <div class="menu-item-box">
                                        <img src="./images/book.png" alt="book">
                                        <p>Sổ tay</p>
                                    </div>
                                </a></div>
                            <div class="col-3 menu-item">
                                <a href="<c:url value=""/>">
                                    <div class="menu-item-box">
                                        <img src="./images/book.png" alt="book">
                                        <p>Bài viết</p>
                                    </div>
                                </a></div>
                        </div>
                    </div>
					
                    <div class="col-3 col_3">
	                    <c:if test="${sessionScope.user != null}">
	                        <div class="user-packet">
		                        <div class="menu-user-name">${sessionScope.user.nameDisplay}</div>
		                        <img class="menu-user-avatar" alt="avatar" src="./images/${sessionScope.user.img}">
		                        <i style="cursor: pointer;" class="fas fa-angle-down"></i>	   
		                        
		                        <div class="form-user-packet">
									<div class="form-user">
									<button id="openModalAchievements" type="button">Thành tích học tập</button>
									<button id="openmodalAccount" type="button">Tài khoản</button>
		                        	</div>      
								</div>                    
	                        </div>
	                    </c:if>   
	                    
	                    <c:if test="${sessionScope.user == null}">
	                        <div class="user-packet">
		                        <div class="menu-user-name">Guess</div>
		                        <img class="menu-user-avatar" alt="avatar" src="./images/img_28.png">
		                        <i style="cursor: pointer;" class="fas fa-angle-down"></i>	 
		                        
								<div class="form-user-packet">
									<div class="form-user">
									<div class="center">
										<form action="login"><input type="submit" value="Đăng nhập"></form>
									</div>
									<div class="center">
										<form action="register"><input type="submit" value="Đăng kí"></form>
									</div>
			                        
		                        	</div>      
								</div>               
	                        </div>
	                    </c:if>  
                    </div>
                </div>
            </div>
	</div>
	<div class="cushion"></div>
	
<!-- Modal Account -->
	<div id="modalAccount" class="modal">
		<div id="modal-user-content" class="modal-user-content">
			<div id="close" class="btnclose" ><i class="fas fa-times"></i></div>
			
			<div style="height: 10px"></div>
			<div class="header">Cài đặt tài khoản</div>
			
			<div id="info-account">
				<div style="background-image: url('./images/img_28.png'); background-size: cover" id="avatar">
					
				</div>
				
				<div id="info-account-text">	
					<div style="padding: 0 20px;" id="username-text">
						<div class="username">
							<span style="font-size: 23px; font-weight: bold">Minh Trọng</span>
							<i class="fas fa-pen"></i>
						</div>
						
					</div>
				</div>
			</div>
			
			<div id="setting">
				<span>Chọn ngôn ngữ hiển thị</span>
				<select name="language" id="language">
					  <option value="vi">Tiếng Việt</option>
					  <option value="en">Tiếng Anh</option>
				</select>
			</div>
			
			<div id="user-logout"><a href="logout">Đăng xuất <i class="fas fa-sign-out-alt"></i> </a></div>			
		</div>
	</div>	
<!-- end Modal Account -->
	
	
<!-- Modal Achievements -->
	<div id="modalAchievements" class="modal">
		<div id="modal-achie-content" class="modal-user-content">
			<div id="closeAchiement" class="btnclose"><i class="fas fa-times"></i></div>
			<div class="learnachie">
				<div style="height: 10px"></div>
		        <div class="header">Thành tích học tập</div>
		        <div class="framesacc" style="background-image: url('./images/img_28.png'); background-size: cover" id="avatar">
		            <div class="preaccount">Premium account</div>
		        </div>
		        <!-- ô 1 -->
		        <div class="section handlistlevel">
		            <div class="image imagebook"><img src="./images/book.png" alt=""></div>
		            <div class="part1right">
		                <div class="text1 part1right1">SỔ TAY CẤP ĐỘ 7</div>
		                <div class="text2 part1right2">1234/2000</div>
		                <div class="part1right3"></div>
		            </div>
		        </div>
		        <!-- ô 2 -->
		        <div class="section memorylevel">
		            <div class="image imagebrain"> <img src="./images/book.png" alt=""></div>
		            <div class="part2right">
		                <div class="text1 part2right1">SIÊU TRI NHỚ CẤP ĐỘ 7</div>
		                <div class="text2 part2right2">1234/2000</div>
		                <div class="part2right3"></div>
		            </div>
		        </div>
		        <!-- ô 3 -->
		        <div class="section studiedhard">
		            <div class="image imagehard"><img src="./images/book.png" alt=""></div>
		            <div class="part3right">
		                <div class="text1 part3right1">BẠN ĐÃ HỌC CHĂM CHỈ</div>
		                <div class="text2 part3right2">40 ngày liên tiếp</div>
		            </div>
		        </div>
   			 </div>
		</div>
	</div>	
	
	
<!-- end Modal Achievements -->	
	
	<script src="https://code.jquery.com/jquery-latest.js"></script>
	<script src="./js/menu.js"></script>
</body>
</html>