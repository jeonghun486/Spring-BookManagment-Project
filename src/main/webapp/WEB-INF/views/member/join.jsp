<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
	<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/titletext.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/content.css">
	<script type="text/javascript" src="${pageContext.request.contextPath }/resources/js/join.js"></script>
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
						<form action="joinOk" method="post" name="join_form">
						<table>
								<span class="login_title"><h1>일반 회원가입</h1></span>
								<tr>
									<td><span class="content_text">아이디  &nbsp;</span></td>
									<td>
										<input  class="input_box" type="text"  name="memid" id="memid">
										<!-- <input class="button" type="button" value="중복확인" onclick="#"> -->
									</td>
								</tr>
								<tr>
									<td><span class="content_text">비밀번호  &nbsp;</span></td>
									<td><input  class="input_box" type="password" name="mempw"></td>
								</tr>
								<tr>
									<td><span class="content_text">비밀번호 확인  &nbsp;</span></td>
									<td><input  class="input_box" type="password" name="mempw_check"></td>
								</tr>
								<tr>
									<td><span class="content_text">이름  &nbsp;</span></td>
									<td><input  class="input_box" type="text" name="memname"></td>
								</tr>
								<tr>
									<td><span class="content_text">주소  &nbsp;</span></td>
									<td><input  class="input_box" type="text" name="memaddr"></td>
								</tr>
								
								<tr>
									<td><span class="content_text">전화번호  &nbsp;</span></td>
									<td>
										<input  class="input_box" type="text" name="memtel">			  	
									</td>
									
								</tr>
								<tr>
									<td><span class="content_text">이메일  &nbsp;</span></td>
									<td><input  class="input_box" type="text" name="mememail"></td>
								</tr>
								<tr height = "40"></tr>
								<tr>
									<td colspan="2" align="center">
										<input class="button" type="button" value="회원가입" onclick="joinCheck()">&nbsp;&nbsp;
										<input class="button" type="button" value="취소" onclick="location.href='index'">
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