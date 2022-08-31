<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
	<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/titletext.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/content.css">
	
<title>아이디 찾기 완료</title>
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
					<c:choose>
						<c:when test="${checkName=='0' }">
							<script type="text/javascript">
								alert("입력하신 이름은 존재하지 않는 이름 입니다. 다시 확인해주세요.");
								history.go(-1);
							</script>
						</c:when>
						<c:when test="${checkNamePw=='0' }">
							<script type="text/javascript">
								alert("입력하신 비밀번호가 맞지 않습니다. 다시 확인해주세요.");
								history.go(-1);
							</script>
						</c:when>
						<c:otherwise>
							<span class="content_text" >
								${memberDto.memname}님의 아이디는 ${memberDto.memid} 입니다.
							</span>
						</c:otherwise>
					</c:choose>
					</td>
				</tr>
			</table>
		</tr>
	</table>
	</center>
	
	
	<%@ include file="../include/footer.jsp" %>
	
</body>
</html>