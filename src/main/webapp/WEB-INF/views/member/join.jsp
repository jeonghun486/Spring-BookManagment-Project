<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
	<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/titletext.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/content.css">
	<script type="text/javascript" src="${pageContext.request.contextPath }/resources/js/join.js"></script>
<title>회원 가입</title>
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
						<form action="joinOk" method="post" name="join_form">
						<table>
								<span class="login_title"><h1>회원가입</h1></span>
								<tr>
									<td><span class="content_text">아이디  &nbsp;</span></td>
									<td>
										<input  class="input_box" type="text"  name="memid" id="memid" placeholder="아이디를 입력해주세요">
										<!-- <input class="button" type="button" value="중복확인" onclick="#"> -->
									</td>
								</tr>
								<tr>
									<td><span class="content_text">비밀번호  &nbsp;</span></td>
									<td><input  class="input_box" type="password" name="mempw" placeholder="비밀번호를 입력해주세요"></td>
								</tr>
								<tr>
									<td><span class="content_text">비밀번호 확인  &nbsp;</span></td>
									<td><input  class="input_box" type="password" name="mempw_check" placeholder="비밀번호를 입력해주세요"></td>
								</tr>
								<tr>
									<td><span class="content_text">이름  &nbsp;</span></td>
									<td><input  class="input_box" type="text" name="memname" placeholder="이름을 입력해주세요"></td>
								</tr>
								<tr>
									<td><span class="content_text">주소  &nbsp;</span></td>
									<td><input  class="input_box" type="text" name="memaddr" placeholder="주소를 입력해주세요"></td>
								</tr>
								
								<tr>
									<td><span class="content_text">전화번호  &nbsp;</span></td>
									<td>
										<input  class="input_box" type="text" name="memtel" placeholder="전화번호를 입력해주세요">			  	
									</td>
									
								</tr>
								<tr>
									<td><span class="content_text">이메일  &nbsp;</span></td>
									<td><input  class="input_box" type="text" name="mememail" placeholder="이메일을 입력해주세요"></td>
								</tr>
								<tr height = "40"></tr>
								<tr>
									<td colspan="2" align="center">
										<input class="btn_rent" type="button" value="회원가입" onclick="joinCheck()">&nbsp;&nbsp;
										<input class="btn_rent" type="button" value="취소" onclick="location.href='index'">
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