<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
	<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/titletext.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/content.css">
	
<title>관리자 로그인 완료.</title>
</head>
<body>
	<%@ include file="../include/mngHeader.jsp" %>
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
					<c:choose>
						<c:when test="${checkId=='0' }">
							<script type="text/javascript">
								alert("입력하신 아이디는 존재하지 않는 아이디 입니다. 다시 확인해주세요.");
								history.go(-1);
							</script>
						</c:when>
						<c:when test="${checkIdPw=='0' }">
							<script type="text/javascript">
								alert("입력하신 비밀번호가 맞지 않습니다. 다시 확인해주세요.");
								history.go(-1);
							</script>
						</c:when>
						<c:otherwise>
							<span class="content_text" >
								${mngid} 님 안녕하세요.<br>
								아이디 ${mngname }로 로그인 하셨습니다.<br>
							</span>
						</c:otherwise>
					</c:choose>
					</td>
				</tr>
				<tr >
					<td bgcolor="C7D3ED" align="center">
						<input class="button" type="button" value="확인" onclick="location.href='mngIndex'">
					</td>
				</tr>
			</table>
		</tr>
	</table>
	</center>
	
	
	<%@ include file="../include/footer.jsp" %>
	
</body>
</html>