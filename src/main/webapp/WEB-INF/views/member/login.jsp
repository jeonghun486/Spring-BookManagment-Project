<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
	<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/titletext.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/content.css">
	<script type="text/javascript" src="${pageContext.request.contextPath }/resources/js/login.js"></script>
<title>** Profile Web</title>
</head>
<body>
	<%@ include file="../include/header.jsp" %>
	<center>
	<table width="70%" cellspacing="0" border="0" cellpadding="20">
		<tr >
			<td align="center">
				<span class="index_title01">DEVELOPER JEONGHOON'S PROFILE</span>
			</td>
		</tr>
		<tr>
			<td align="center">
				<span class="index_title02">I'm Jeonghun Ju, a developer who wants a development job. Please call me back</span>
			</td>
		</tr>
		<tr>
			<table width="70%" cellspacing="0" border="0" cellpadding="10">
				<tr height="534">
					<td bgcolor="#B3B3B3" align="center">
						<table>
							<form action="loginOk" method="post" name="login_form">
							<span class="login_title"><h1>일반회원 로그인</h1></span>
								<tr>
									<td><span class="content_text">아이디  &nbsp;</span></td>
									<td><input  class="input_box" type="text" name="memid"></td>
								<td rowspan="2"><input class="button_log" type="button" value="로그인" onclick="loginCheck()"></td>
									
								</tr>
								<tr>
									<td><span class="content_text">비밀번호 &nbsp;</span></td>
									<td><input  class="input_box" type="password" name="mempw"></td>
								</tr>
								<tr>
									<td colspan="3" align="right">
										<a href="#">아이디/비밀번호 찾기</a> |
										<a href="join">회원가입</a>
									</td>
									
								</tr>
								<tr height="100">
									<td></td>
								</tr>
								<tr >
									<td valign="bottom" colspan="3" align="center">
										<input class="button" type="button" value="홈으로" onclick="location.href='index'">
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
	
	
	<%@ include file="../include/footer.jsp" %>
	
</body>
</html>