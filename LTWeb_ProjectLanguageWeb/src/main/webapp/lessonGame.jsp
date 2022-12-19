<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="model.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="./css/style.css">
<link rel="stylesheet" href="./css/lesson.css">
<link rel="stylesheet" href="./css/main.css">
<script src="https://kit.fontawesome.com/8c5482f352.js" crossorigin="anonymous"></script>
<title>Ogu-lesson</title>
</head>
<body>
<%
	Topic topicCurrent = (Topic) session.getAttribute("topicCurrent");
	Word currentWord =(Word) topicCurrent.getCurrentWord();
%>
	<div class="container-fluid">
		<div class="row">
			<div class="col-3 col_1_content bgr_f2"></div>
			<div style="background-color: #f2f2f266" class="col-6 col_2_content">
				<div class="form-game form-center">
					<div id="form-word" class="form-packet form-word">
						<div id="form-1" class="hide">
							<div id="form-word-card" class="word-card">
							<!-- sua -->
								<div class="sound">
									<button id="btn-sound" ><i class="fas fa-volume-up"></i></button>
									<button id="btn-soundSlow"><i class="fa-solid fa-ear-listen"></i></button>
									<div id="audio_word" class="hide"><%=currentWord.getAudio()%></div>
								</div>
								<img alt="img word" src="./images_word/<%=currentWord.getImg()%>">
								<p id="word" class="name-word"><%=currentWord.getVocabulary()%></p>
								<div id="detail" class="detail_word">
									<div id="phonetic"><%=currentWord.getPronounce()%></div>
									<div id="mean"><%=currentWord.getMean()%></div>
									<div id="sample"><%=currentWord.getSample()%></div>
								</div>
							</div>
						</div>
						
						<div style="width: 100%" id="form-2" class="hide">
							<form style="z-index:2" action="<c:url value="lessongame"/>">
							<div style="width: 100%; margin: 0 auto; text-align: center">
								<input id="form-input" placeholder="Gõ lại từ" type="text" name="wordAnwser">
							</div>
							<div id="answer-card" class="hide">
								<div style="padding: 20px 0px 20px 40px;">
									<p id="word-anwser"><%=currentWord.getVocabulary()%></p>
									<p id="phonetic-anwser" class="margin-t-20"><%=currentWord.getPronounce()%></p>
									<p id="mean-anwser" class="margin-t-20"><%=currentWord.getMean()%></p>
									<p id="example-anwser" class="margin-t-20"><%=currentWord.getSample()%></p>
								</div>
							</div>
							<div class="btn-center">
								<input id="btn-nextWord" type="submit" name="nextWord" value="Tiếp tục" class="hide">
							</div>
							</form>
						</div>

						<button id="next" class="btn-next">Tiếp tục</button>
					</div>
				</div>
			</div>
			<div class="col-3 col_3_content bgr_f2"></div>
			
			</div>
		</div>
	</div>
	<script src="./js/ui.js"></script>
	<script src="./js/script.js"></script>
</body>
</html>