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
	<% String sessionId = (String)session.getAttribute("smngid"); %>
	<table width="100%" cellspacing="0" border="0" cellpadding="0" align="center">
		<tr height="50" bgcolor="000042">
			<td width="15%">&nbsp;</td>
			<td class="header_menu" width="10%">
				
				<%
					if(sessionId != null){
				%>
				<a href="mngIndex">홈</a>
				<%
					}else{
				%>
				<a href="../index">홈</a>
				<%
					}
				%>
			</td>
			
			<td class="header_menu" width="10%">
				<%
					if(sessionId != null){
				%>
					<a href="mngBook_list">도서목록</a>
				<%
					}else{
				%>
					<a href="../book_list">도서목록</a>
				<%
					}
				%> 
				
			</td>
				<%
						if(sessionId != null){
				%>
			<td class="header_menu" width="10%">
				<a href="mngProfile">대여요청목록</a>
			</td>
				<%
					}
				%>
			
			<td class="header_menu" width="10%">
				<%
					if(sessionId == null){
				%>
					<a href="../selectJoin">회원가입</a>
				<%
					} else{
				%>
					<a href="mngInfoModify">정보수정</a>
				
			</td>
			<td class="header_menu" width="10%">
				<a href="mngInfoModify">회원탈퇴</a>
			</td>
			<%
				}
				%>
			<td class="header_menu" width="10%">
				<%
					
					if(sessionId == null){
				%>
				<a href="../selectLogin">로그인</a>
				<%
					} else{
				%>
				<a href="mngLogout">로그아웃</a>
				<%
				}
				%>
			</td>
			<td class="header_menu" width="10%">
				<%					
					if(sessionId == null){
				%>
					<a href="../board">고객문의</a>
				<%
					}else{
				%>
					<a href="mngBoard_list">고객문의</a>
				<%
					}
				%>
			</td>
			<td width="15%">&nbsp;</td>
		</tr>
		<%
			sessionId = (String)session.getAttribute("smngid");
			if(sessionId != null){
		%>
		<table width="100%" height="40">
			<tr   align="right">
					<td>${smngid }(관리자)님이 로그인 중입니다.</td>
			</tr>
		</table>
		<%
			}
		%>
	</table>
	
</body>
</html>