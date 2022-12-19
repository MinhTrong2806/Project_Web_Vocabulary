<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="./css/style.css">
<link rel="stylesheet" href="./css/gamelisten.css">
<link rel="stylesheet" href="./css/formgame.css">
<link rel="stylesheet" href="./css/main.css">
<script src="https://kit.fontawesome.com/8c5482f352.js" crossorigin="anonymous"></script>
<title>Insert title here</title>
</head>
<body>
	<div class="container-fluid">
		<div class="row">
			<div class="col-3 col_1_content bgr_f2"></div>

			<div style="background-color: #f2f2f266" class="col-6 col_2_content">
				<form action="<c:url value="reviewgame"/>" method="get">
					<div id="header-game" class="header">
						<div id="exit" class="exit">
							<i class="fa-solid fa-xmark"></i>
						</div>

						<div class="box">
							<div class="boxset">
								<div
									style="width: 20%; background-color: #00a6ff; border-radius: 15px;"
									class="boxrun"></div>
								<div style="position: relative;">
									<div class="boxicon" style="position: absolute; left: -30px; top: -15px; background-image: url('./images/icon_game.png'); background-size: cover"
										id=""></div>
								</div>
							</div>
						</div>
					</div>

					<div id="body-game">
						<div id="gamelisten" class="title">Nghe và viết lại</div>

						<div style="margin: 20px 0; text-align: center;" class="sound">
							<button id="btn-sound">
								<i class="fas fa-volume-up"></i>
							</button>
							<button id="btn-soundSlow">
								<i class="fa-solid fa-ear-listen"></i>
							</button>
						</div>

						<div style="width: 100%; text-align: center">
							<input id="inputlisten"  autocomplete="off" type="text" class="fillword">
						</div>
						<input id="answerUser" type="hidden" value="" name="answer">
						<div id="answer-card" class="pos-bottom">
							<div style="padding: 20px 0px 20px 40px; position: relative;">
								<p id="word-anwser">${currentWord.vocabulary}</p>
								<p id="phonetic-anwser" class="margin-t-20">${currentWord.pronounce}</p>
								<p id="mean-anwser" class="margin-t-20">${currentWord.mean} (<span>${currentWord.type}</span>)</p>
								<p id="example-anwser" class="margin-t-20">${currentWord.sample}</p>
								<button id="btn-sound-answer">
									<i class="fas fa-volume-up"></i>
									<audio id="audioWordAnswer" style="display: none" src="./audio_word/${currentWord.audio}"></audio>
								</button>
							</div>
						</div>
					</div>

					<div id="footer-game">
						<div style="text-align: center">
							<input id="check" class="btn-submit" type="submit"
								value="Kiểm tra" name="next">
						</div>
						<div style="width: 100%; text-align: center; margin: 20px 0;">
							<a href="" class="wordforget">Mình không nhớ từ này</a>
						</div>
					</div>
				</form>
			</div>

			<div class="col-3 col_3_content bgr_f2"></div>
		</div>
	</div>
	<script src="./js/ui.js"></script>
	<script src="./js/js_reviewgame.js"></script>

</body>
</html>