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
	<table width="60%" cellspacing="0" border="0" cellpadding="0" align="center" >
		<%
			String sessionId = (String)session.getAttribute("smemid");
			if(sessionId != null){
		%>
			<tr height="40" width="85%" >
				<td width="20%"></td>
				<td colspan="5" align="center" width="60%" valign="middle">
					<img src="https://search.pstatic.net/common/?src=http%3A%2F%2Fblogfiles.naver.net%2FMjAxOTAyMDNfNDIg%2FMDAxNTQ5MTU2NzczOTc1.ZLD54gbpF86z7AXt4aRbU-UAV_osc2AzQvW7mCFYgtsg.U6O9ZmSvRH-ExwE2Ua8CtS8QbwMysKIdLWaPvpII3CAg.PNG.youmi9080%2FSE-aa48316e-2bf5-4aa0-905a-2d058f718387.png&type=sc960_832" width="50" height="50">
					<span class="header_title">D O B B Y 도비문고</span>
				</td>
				<td width="20%" align="right">
					<a class="join" href="infoModify">정보수정</a> | 
					<a class="join" href="logout">로그아웃</a> | 
					<a class="join" href="infoModify">회원탈퇴</a>
				</td>
			</tr>
			<tr  height="40" align="right" class="log_font">
					<td colspan="9">${smemid }님이 로그인 중입니다.</td>
			</tr>
		<%
			}else{
		%>
			<tr height="40" width="85%" >
				<td width="20%"></td>
				<td colspan="5" align="center" width="60%" valign="middle">
					<img src="https://search.pstatic.net/common/?src=http%3A%2F%2Fblogfiles.naver.net%2FMjAxOTAyMDNfNDIg%2FMDAxNTQ5MTU2NzczOTc1.ZLD54gbpF86z7AXt4aRbU-UAV_osc2AzQvW7mCFYgtsg.U6O9ZmSvRH-ExwE2Ua8CtS8QbwMysKIdLWaPvpII3CAg.PNG.youmi9080%2FSE-aa48316e-2bf5-4aa0-905a-2d058f718387.png&type=sc960_832" width="50" height="50">
					<span class="header_title">D O B B Y 도비문고</span>
				</td>
				<td width="20%" align="right">
					<a class="join" href="selectLogin">로그인</a> | 
					<a class="join" href="join">회원가입</a>
				</td>
			</tr>
			<tr  height="40" align="right"></tr>
		<%
			}
		%>
		<tr height="50" bgcolor="4742DB">
			<td class="empty_rmenu" width="15%">&nbsp;</td>
			<td class="header_menu" width="10%">
				<a href="index">홈</a>
			</td>
			
			<td class="header_menu" width="10%">
				<a href="book_list">도서목록</a>
			</td>
			<%
					
					if(sessionId != null){
			%>
			<td class="header_menu" width="10%">
				<a href="book_rentList">대여목록</a>
			</td>
			<%
					}else{
				%>
				<td class="header_menu" width="10%">
					<a href="alert_login">대여목록</a>
				</td>
				<%
					}
				%>
			<td class="header_menu" width="10%">
				<a href="board">고객문의</a>
			</td>
			<td class="header_menu" width="10%">
				<a href="book_map">오시는길</a>
			</td>
			<td class="empty_lmenu" width="15%">&nbsp;</td>
		</tr>
		
	</table>
	
</body>
</html>