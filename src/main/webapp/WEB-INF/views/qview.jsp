<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/title.css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/content.css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/member.css">
<script type="text/javascript" src="${pageContext.request.contextPath }/resources/js/board.js"></script>
<title>## Leegyojin Profile Web</title>
</head>
<body>
	<%@ include file="include/header.jsp" %>
	<center>
	<table width = "75%" border = "0" cellspacing = "0" cellpadding = "20">
		<tr>
			<td align = "center"><span class = "title01">보기만 해도 지려버리는 웹 프로필</span></td>
		</tr>
		<tr>
			<td align = "center"><span class = "title02">어. 깜찍이 Spring Boot 배우고 있어. 어 여기서도 html 해야 되다니 킹받네.</span></td>
		</tr>
		<tr>
			<table width="70%" border="0" cellspacing="0" cellpadding="10">
				<tr height="535">
					<td bgcolor="#d5d5d5" align="center" height="500">
						<table border="0" cellspacing="0" cellpadding="10">
						<form action="boardModify" method="post" name="question_frm">
							<input type="hidden" name="qnum" value="${boardDto.qnum }" >
						
							<tr>
								<td>
									<span class="text01">ID : </span> 
								</td>
								<td>
									<input class="type01" type="text" name="qid" value="${boardDto.qid }" readonly>
								</td>
							</tr>							
							<tr>
								<td>
									<span class="text01">NAME : </span> 
								</td>
								<td>
									<input class="type01" type="text" name="qname" value="${boardDto.qname }">
								</td>
							</tr>
							<tr>
								<td>
									<span class="text01">QUESTION : </span> 
								</td>
								<td>
									<textarea id="textarea01" rows="5" cols="25" name="qcontent">${boardDto.qcontent }</textarea>
								</td>
							</tr>
							
							<tr>
								<td>
									<span class="text01">E-MAIL : </span> 
								</td>
								<td>
									<input class="type01" type="text" name="qemail" value="${boardDto.qemail }">
								</td>
							</tr>
							<tr>
								<td>
									<span class="text01">DATE : </span> 
								</td>
								<td>
									<input class="type01" type="text" name="qdate" value="${boardDto.qdate }">
								</td>
							</tr>
							<tr>
								<td colspan="2">
								<%
									String sessionId = (String)session.getAttribute("id");
									String boardId = request.getAttribute("boardId").toString();
									
									if(sessionId == null) {
								
								%>
									<input class="button01" type="button" value="질문수정" onclick="modifyAlert()">&nbsp;&nbsp;
									
								<%
									} else if(sessionId.equals(boardId)) {
								%>									
									<input class="button01" type="submit" value="질문수정" >&nbsp;&nbsp;
									<input class="button01" type="button" value="글삭제" onclick="location.href='delete?qnum=${boardDto.qnum}'">&nbsp;&nbsp;
								<%
									} else {
								%>
									<input class="button01" type="button" value="질문수정" onclick="modifyAlert()">&nbsp;&nbsp;
								<%
									}
								%>									
									<input class="button01" type="button" value="글목록" onclick="location.href='list'">
								</td>
							</tr>
						</form>
						</table>				
					</td>
				</tr>
			</table>
		</tr>
	</table>
	</center>
	<%@ include file="include/footer.jsp" %>
</body>
</html>