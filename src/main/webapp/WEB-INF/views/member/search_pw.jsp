<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
	<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/titletext.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/content.css">
	<script type="text/javascript" src="${pageContext.request.contextPath }/resources/js/login.js"></script>
<title>비밀번호 찾기</title>
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
							<form action="search_pwOk" method="post" name="search_form">
							<span class="login_title"><h1>비밀번호 찾기</h1>(<span class="login_title">아이디와 이름을 입력해주세요.</span>)</span><br><br><br><br>
								<tr>
									<td><span class="content_text">아이디  &nbsp;</span></td>
									<td><input  class="input_box" type="text" name="memid"></td>
								<td rowspan="2"><input class="button_log" type="button" value="확인" onclick="schCheckPw()"></td>
									
								</tr>
								<tr>
									<td><span class="content_text">이름 &nbsp;</span></td>
									<td><input  class="input_box" type="text" name="memname"></td>
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