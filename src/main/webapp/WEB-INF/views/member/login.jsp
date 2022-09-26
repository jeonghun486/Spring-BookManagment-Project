<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
	<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/titletext.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/content.css">
	<script type="text/javascript" src="${pageContext.request.contextPath }/resources/js/login.js"></script>
<title>회원 로그인</title>
</head>
<body>
	<%@ include file="../include/header.jsp" %>
	<center>
	<table width="70%" cellspacing="0" border="0" cellpadding="20">
		
		<tr>
			<td align="center">
				<span class="index_title02"></span>
			</td>
		</tr>
		<tr>
			<table width="70%" cellspacing="0" border="0" cellpadding="10">
				<tr height="534">
					<td bgcolor="C7D3ED" align="center">
						<table>
							<form action="loginOk" method="post" name="login_form">
							<span class="login_title"><h1>일반회원 로그인</h1></span>
								<tr>
									<td><span class="content_text">아이디  &nbsp;</span></td>
									<td><input  class="input_box" type="text" name="memid" placeholder="아이디를 입력해주세요"></td>
								<td rowspan="2"><input class="button_log" type="button" value="로그인" onclick="loginCheck()"></td>
									
								</tr>
								<tr>
									<td><span class="content_text">비밀번호 &nbsp;</span></td>
									<td><input  class="input_box" type="password" name="mempw" placeholder="비밀번호를 입력해주세요"></td>
								</tr>
								<tr>
									<td colspan="3" align="right">
										<a class="h_log" href="select_sch">아이디/비밀번호 찾기</a> |
										<a class="h_log" href="join">회원가입</a>
									</td>
									
								</tr>
								<tr height="100">
									<td></td>
								</tr>
								<tr >
									<td valign="bottom" colspan="3" align="center">
										<input class="btn_rent" type="button" value="홈으로" onclick="location.href='index'">
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