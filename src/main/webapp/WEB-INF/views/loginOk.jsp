<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel = "stylesheet" href = "${pageContext.request.contextPath }/resources/css/title.css">
<link rel = "stylesheet" href = "${pageContext.request.contextPath }/resources/css/content.css">
<title>깜찍한 로그인 완료 화면🙂</title>
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
			
			<table width = "75%" border = "0" cellspacing = "0" cellpadding = "20">
				<tr height = "500">
					<td bgcolor = "#d5d5d5" align = "center">
						
						<% 
							// 얘는 변수 하나가 아니고 아예 속성이 크게 들어오니까, 형변환을 (int) 말고 이런 식으로 했다.
							int checkId = Integer.parseInt(request.getAttribute("checkId").toString()); 
							int checkPw = Integer.parseInt(request.getAttribute("checkPw").toString()); 
							if (checkId == 0) {
						%>
						
							<script type = "text/javascript">
								alert("입력하신 아이디가 존재하지 않는다. 확인 ㄱㄱ");
								history.go(-1);
								document.reg_frm.mid.focus;
							</script>
							
						<% 
							} else if (checkPw == 0) {
						%>
						
						<script type = "text/javascript">
								alert("입력한 비밀번호가 틀렸다. 다시 입력 ㄱㄱ");
								history.go(-1);
								document.reg_frm.mpw.focus;
						</script>
						
						<% 
							} else {
								session.setAttribute("ValidMem", "yes");
							}
						%>		
							
						<span class = "content01">
							${mname }님 안녕하세요 ㅋ <br>
							아이디 ${mid }로 로그인에 성공하셨습니다 ㅋ <br>
						</span>
					</td>
				</tr>
			</table>
			
		</table>
	</center>
	<%@ include file="include/footer.jsp" %>
	
	
</body>
</html>