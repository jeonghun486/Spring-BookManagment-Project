<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/header.css">
<title>header</title>
</head>
<body>
	<table width="100%" cellspacing="0" border="0" cellpadding="0" align="center">
		<tr height="50" bgcolor="000042">
			<td width="15%">&nbsp;</td>
			<td class="header_menu" width="10%">
				<a href="index">홈</a>
			</td>
			
			<td class="header_menu" width="10%">
				<a href="book_list">도서목록</a>
			</td>
			<%
					String sessionId = (String)session.getAttribute("smemid");
					if(sessionId != null){
			%>
			<td class="header_menu" width="10%">
				<a href="book_rentList">대여목록</a>
			</td>
			<%
					}
				%>
			
			<td class="header_menu" width="10%">
				<%
					if(sessionId == null){
				%>
				<a href="selectJoin">회원가입</a>
				<%
					} else{
				%>
				<a href="infoModify">정보수정</a>
				
			</td>
			<td class="header_menu" width="10%">
				<a href="infoModify">회원탈퇴</a>
			</td>
			<%
				}
				%>
			<td class="header_menu" width="10%">
				<%
					
					if(sessionId == null){
				%>
				<a href="selectLogin">로그인</a>
				<%
					} else{
				%>
				<a href="logout">로그아웃</a>
				<%
				}
				%>
			</td>
			<td class="header_menu" width="10%">
				<a href="board">고객문의</a>
			</td>
			<td width="15%">&nbsp;</td>
		</tr>
		<%
			sessionId = (String)session.getAttribute("smemid");
			if(sessionId != null){
		%>
		<table width="100%" height="40">
			<tr   align="right">
					<td>${smemid }님이 로그인 중입니다.</td>
			</tr>
		</table>
		<%
			}
		%>
	</table>
	
</body>
</html>