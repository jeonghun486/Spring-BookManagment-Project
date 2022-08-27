<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
	<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/titletext.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/content.css">
	
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
					<c:choose>
						<c:when test="${checkId=='0' }">
							<script type="text/javascript">
								alert("입력하신 아이디는 존재하지 않는 아이디 입니다. 다시 확인해주세요.");
								history.go(-1);
							</script>
						</c:when>
						<c:when test="${checkName=='0' }">
							<script type="text/javascript">
								alert("입력하신 이름은 존재하지 않는 이름 입니다. 다시 확인해주세요.");
								history.go(-1);
							</script>
						</c:when>
						<c:when test="${checkIdName=='0' }">
							<script type="text/javascript">
								alert("입력하신 정보가 맞지 않습니다. 다시 확인해주세요.");
								history.go(-1);
							</script>
						</c:when>
						<c:otherwise>
							<span class="content_text" >
								${memberDto.memname}님의 비밀번호는 ${memberDto.mempw} 입니다.
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