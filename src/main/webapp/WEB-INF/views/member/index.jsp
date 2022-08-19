<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
	<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/titletext.css">
	
<title>** Profile Web</title>
</head>
<body>
	<%@ include file="../include/header.jsp" %>
	<center>
	<table width="75%" cellspacing="0" border="0" cellpadding="20">
		<tr>
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
				<tr>
					<td bgcolor="#D5D5D5" ><span class="index_skill01">J</span><span class="index_skill02">AVA</span></td>
					<td align="center" rowspan="6" bgcolor="#7A7A7A"><img src="${pageContext.request.contextPath }/resources/img/Library.jfif" width="90%" height="450"></td>
				</tr>
				<tr>
					<td bgcolor="#D5D5D5"><span class="index_skill01">J</span><span class="index_skill02">SP</span></td>
				</tr>
				<tr>
					<td bgcolor="#D5D5D5"><span class="index_skill01">S</span><span class="index_skill02">PRING</span></td>
				</tr>
				<tr>
					<td bgcolor="#D5D5D5"><span class="index_skill01">J</span><span class="index_skill02">AVASCRIPT</span></td>
				</tr>
				<tr>
					<td bgcolor="#D5D5D5"><span class="index_skill01">H</span><span class="index_skill02">TML5</span></td>
				</tr>
				<tr>
					<td bgcolor="#D5D5D5"><span class="index_skill01">D</span><span class="index_skill02">ATABASE</span></td>
				</tr>
			</table>
		</tr>
	</table>
	</center>
	
	
	<%@ include file="../include/footer.jsp" %>
	
</body>
</html>