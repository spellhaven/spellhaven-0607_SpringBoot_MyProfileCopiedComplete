<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/title.css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/content.css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/member.css">
<script type="text/javascript" src="${pageContext.request.contextPath }/resources/js/join.js"></script>
<title>깜찍한 회원정보수정확인🙂</title>
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
						<table border = "0" cellspacing = "0" cellpadding = "10"> 
						<form action="" method="post" name="reg_frm">
							<tr>
								<td colspan="2">
									<span class="text02">${memberDto.mid }님의 회원정보를 수정하였습니다.</span>
								</td>
							</tr>							
							<tr>
								<td>
									<span class="text01">MEMBER ID : </span> 
								</td>
								<td>
									<span class="text02">${memberDto.mid }</span>
								</td>
							</tr>
							<tr>
								<td>
									<span class="text01">PASSWORD : </span> 
								</td>
								<td>
									<span class="text02">${memberDto.mpw}</span>
								</td>
							</tr>							
							<tr>
								<td>
									<span class="text01">NAME : </span> 
								</td>
								<td>
									<span class="text02">${memberDto.mname}</span>
								</td>
							</tr>
							<tr>
								<td>
									<span class="text01">E-MAIL : </span> 
								</td>
								<td>
									<span class="text02">${memberDto.memail}</span>
								</td>
							</tr>
							<tr>
								<td>
									<span class="text01">JOIN DATE : </span> 
								</td>
								<td>
									<span class="text02">${memberDto.mdate}</span>
								</td>
							</tr>
							<tr>
								<td colspan="2">
									<input class="button01" type="button" value="정보수정" onclick="location.href='infoModify'">&nbsp;&nbsp;									
									<input class="button01" type="button" value="홈바로가기" onclick="location.href='index'">
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