<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
	<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/titletext.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/content.css">
	<script type="text/javascript" src="${pageContext.request.contextPath }/resources/js/login.js"></script>
<title>아이디 찾기</title>
</head>
<body>
	<%@ include file="../include/header.jsp" %>
	<center>
	<table width="70%" cellspacing="0" border="0" cellpadding="20">
		<tr >
			<td align="center">
				<span class="index_title01"></span>
			</td>
		</tr>
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
							<form action="search_idOk" method="post" name="search_form">
							<span class="login_title"><h1>아이디 찾기</h1>(<span class="login_title">이름과 비밀번호를 입력해주세요.</span>)</span><br><br><br><br>
								<tr>
									<td><span class="content_text">이름  &nbsp;</span></td>
									<td><input  class="input_box" type="text" name="memname"></td>
								<td rowspan="2"><input class="button_log" type="button" value="확인" onclick="schCheckId()"></td>
									
								</tr>
								<tr>
									<td><span class="content_text">비밀번호 &nbsp;</span></td>
									<td><input  class="input_box" type="password" name="mempw"></td>
								</tr>
								
								<tr height="100">
									<td></td>
								</tr>
								<tr >
									<td valign="bottom" colspan="3" align="center">
										<input class="button" type="button" value="뒤로" onclick="location.href='select_sch'">
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