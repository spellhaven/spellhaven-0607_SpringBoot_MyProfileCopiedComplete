<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel = "stylesheet" href = "${pageContext.request.contextPath }/resources/css/menu.css">
<title>머가리</title>
</head>
<body>

	<table width = "100%" cellspacing = "0" border = "0" cellpadding = "0">
		<tr height = "50" bgcolor = "#000000">
			<td width = "58%" class = "menu01">&nbsp;</td>
			<td width = "6%" class = "menu01"><a href = "/">HOME</a></td>
			
			<td width = "6%" class = "menu01">
				
				<% 
					String sessionValid = (String) session.getAttribute("id"); // WebController.java L117 참조. (mid 아니라 id 맞다)
					if (sessionValid == null) {
				 %>
				 
				<a href = "login">LOGIN</a>
				
				<% 
					} else {
				%>
				
				<a href = "logout">LOGOUT</a>
				
				<% 
					}
				%>
			
			</td>
			
			
			<td width = "6%" class = "menu01">
				
				<% 
					if (sessionValid == null) {
				 %>
				
				<a href = "join">JOIN</a>
			
				<% 
					} else {
				%>
				
				<a href = "infoModify">CHANGE USER INFO</a>
				
				<% 
					}
				%>
			
			</td>
			
			
			<td width = "8%" class = "menu01"><a href = "profile">PROFILE</a></td>
			<td width = "8%" class = "menu01"><a href = "question">QUESTION</a></td>
			<td width = "8%" class = "menu01"><a href = "contact">CONTACT</a></td>
		</tr>
		<tr height = "50">
			<td>&nbsp;</td>
		</tr>
	</table>

</body>
</html>