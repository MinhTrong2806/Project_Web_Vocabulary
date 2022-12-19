<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
    <link rel="stylesheet" href="./css_admin/main.css">
	<link rel="stylesheet" href="./css_admin/form.css">
	<link rel="stylesheet" href="./css_admin/nav.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <script src="https://kit.fontawesome.com/8c5482f352.js" crossorigin="anonymous"></script>
<!-- Bootstrap 5 CSS -->
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-giJF6kkoqNQ00vy+HMDP7azOuL0xtbfIcaT9wjKHr8RbDVddVHyTfAAsrekwKmP1" crossorigin="anonymous">
<!-- jQuery -->
	<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>	
	
<title>Insert title here</title>
</head>
<body>
	<div style="padding-right: 0;" class="navbar-admin col-2">
            <nav class='animated bounceInDown bg-white'>
                <div class="logo"><div class="img-logo"></div></div>
                <ul>
                    <li><a href='index_admin.jsp'> <i class="fa fa-bar-chart icon-left" style="font-size:20px"></i>Website traffic</a></li>
                    
                    <li class='sub-menu'> <a href='#settings'><i class="far fa-clipboard icon-left" style="font-size:20px"></i>Quản lý khóa học<div class='fas fa-angle-down right'></div></a>
                        <ul>
                            <li><a href='./addcourse.jsp'>Thêm khóa học</a></li>
                            <li><a href='./listcourse.jsp'>Danh sách khóa học</a></li>
                        </ul>
                    </li>
                    <li class='sub-menu'><a href='#message'><i class="far fa-edit icon-left" style="font-size:20px"></i> Quản lý chủ đề<div class='fas fa-angle-down right'></div></a>
                        <ul>
                            <li><a href='listtopic.jsp'>Danh sách chủ đề</a></li>
                        </ul>
                    </li>
                    <li class='sub-menu'><a href='#message'><i class="fa-solid fa-w icon-left" style="font-size:20px"></i> Quản lý từ vựng<div class='fas fa-angle-down right'></div></a>
                        <ul>
                            <li><a href='listword.jsp'>Danh sách từ vựng</a></li>
                        </ul>
                    </li>

                    <li><a href='#message'><i class="far fa-user icon-left" style="font-size:20px"></i>Quản lý tài khoản</a></li>
                </ul>
            </nav>
        </div>
   <script>
   $('.sub-menu ul').hide();
   $(".sub-menu a").click(function () {
      $(this).parent(".sub-menu").children("ul").slideToggle("100");
      $(this).find(".right").toggleClass("fas fa-angle-up fas fa-angle-down");
   });
   </script>
</body>
</html>