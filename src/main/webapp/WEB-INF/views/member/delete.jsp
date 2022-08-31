<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
	<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/titletext.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/content.css">
	<script type="text/javascript" src="${pageContext.request.contextPath }/resources/js/delete.js"></script>
<title>회원탈퇴</title>
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
							<form action="deleteOk" method="post" name="delete_form">
									
									<input class="input_box" type="hidden" value="${memberDto.memid}" name="memid">
									<input class="input_box" type="hidden" value="${memberDto.mempw}" name="mempw">
								
									<span class="content_text">비밀번호를 입력해 주세요 &nbsp;</span><br><br>
									
									<input class="input_box" type="password" name="mempw_check" placeholder="비밀번호 입력."><br><br><br><br>
								
									
									<input class="button" type="button" value="회원탈퇴" onclick="deleteCheck()">
									<input class="button" type="button" value="취소" onclick="location.href='index'">
									
								
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