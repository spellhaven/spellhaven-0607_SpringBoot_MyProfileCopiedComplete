<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel = "stylesheet" href = "${pageContext.request.contextPath }/resources/css/title.css">
<title>깜찍한 웹 프로필🙂</title>
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
			
			<tr>
				<table width = "70%" border = "0" cellspacing = "0" cellpadding = "20">
					<tr>
						<td bgcolor = "d5d5d5"><span class = "title03">J</span><span class = "title04">AVA</span></td>
						<td align = "center" bgcolor = "333333" rowspan = "7">
							<img alt = "다정한 카피바라" src = "${pageContext.request.contextPath}/resources/img/capybara.png">
						</td>
					</tr>
					<tr>
						<td bgcolor = "d5d5d5"><span class = "title03">J</span><span class = "title04">SP</span></td>
					</tr>
					<tr>
						<td bgcolor = "d5d5d5"><span class = "title03">S</span><span class = "title04">PRING BOOT</span></td>
					</tr>
					<tr>
						<td bgcolor = "d5d5d5"><span class = "title03">J</span><span class = "title04">AVASCRIPT</span></td>
					</tr>
					<tr>
						<td bgcolor = "d5d5d5"><span class = "title03">H</span><span class = "title04">TML5</span></td>
					</tr>
					<tr>
						<td bgcolor = "d5d5d5"><span class = "title03">P</span><span class = "title04">YTHON</span></td>
					</tr>
					<tr>
						<td bgcolor = "d5d5d5"><span class = "title03">D</span><span class = "title04">ATABASE</span></td>
					</tr>
							
				</table>
		</table>
	</center>
	<%@ include file="include/footer.jsp" %>
	
	
</body>
</html>