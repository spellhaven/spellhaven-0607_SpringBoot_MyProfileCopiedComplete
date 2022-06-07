<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel = "stylesheet" href = "${pageContext.request.contextPath }/resources/css/title.css">
<link rel = "stylesheet" href = "${pageContext.request.contextPath }/resources/css/content.css">
<link rel = "stylesheet" href = "${pageContext.request.contextPath }/resources/css/member.css">
<title>깜찍한 웹 로그인🙂</title>
</head>
<body>
	<%@ include file="include/header.jsp" %>
	<center> <!-- 아 경고 노란 줄 뭐-임 너무 킹받네 ㅗㅗ -->
		<table width = "75%" border = "0" cellspacing = "0" cellpadding = "20">
			<tr>
				<td align = "center"><span class = "title01">보기만 해도 지려버리는 웹 프로필</span></td>
			</tr>
			<tr>
				<td align = "center"><span class = "title02">어. 깜찍이 Spring Boot 배우고 있어. 어 여기서도 html 해야 되다니 킹받네.</span></td>
			</tr>
			
			<table width = "75%" border = "0" cellspacing = "0" cellpadding = "10">
				<tr height = "500">
					<td bgcolor = "#d5d5d5" align = "center" height = "500">
					
						<table border = "0" cellspacing = "0" cellpadding = "10"> <!-- 이 아이디/비번 입력창을 table 안에 집어넣어야 했다. 안 그러면 빠져나오더라 -->
						<form action = "loginOk" method = "post">
							<tr>
								<td>
									<span class = "text01">MEMBER ID :</span>
								</td>
								<td>
									<input class = "type01" type = "text" name = "mid">
								</td>
							</tr>
							<tr>
								<td>
									<span class = "text01">PASSWORD :</span>
								</td>
								<td>
									<input class = "type01" type = "password" name = "mpw">
								</td>
							</tr>
							<tr>
								<td colspan = "2">
									<input class = "button01" type = "submit" value = "로긔인"> &nbsp;&nbsp;&nbsp;
									<input class = "button01" type = "button" value = "헤언가입" onclick = "location.href='join'">
								</td>
								
							</tr>
						</form>
						</table>
					</td>
				</tr>
			</table>
			
		</table>
	</center>
	<%@ include file="include/footer.jsp" %>
	
	
</body>
</html>