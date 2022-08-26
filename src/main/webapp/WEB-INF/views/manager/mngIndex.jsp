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
	<%@ include file="../include/mngHeader.jsp" %>
	<center>
	<table width="75%" cellspacing="0" border="0" cellpadding="20">
		
		<tr>
			<td align="center">
				<span class="index_title02">I'm Jeonghun Ju, a developer who wants a development job. Please call me back</span>
			</td>
		</tr>
		<tr>
			<table width="60%" cellspacing="0" border="0" cellpadding="10">
				<tr>
					<td bgcolor=C4DEFF ><span class="index_skill01">J</span><span class="index_skill02">AVA</span></td>
					<td align="center" rowspan="6" bgcolor=6799FF ><img src="${pageContext.request.contextPath }/resources/img/Library.jfif" width="99%" height="500"></td>
				</tr>
				<tr>
					<td bgcolor="C4DEFF"><span class="index_skill01">J</span><span class="index_skill02">SP</span></td>
				</tr>
				<tr>
					<td bgcolor="C4DEFF"><span class="index_skill01">S</span><span class="index_skill02">PRING</span></td>
				</tr>
				<tr>
					<td bgcolor="C4DEFF"><span class="index_skill01">J</span><span class="index_skill02">AVASCRIPT</span></td>
				</tr>
				<tr>
					<td bgcolor="C4DEFF"><span class="index_skill01">H</span><span class="index_skill02">TML5</span></td>
				</tr>
				<tr>
					<td bgcolor="C4DEFF"><span class="index_skill01">D</span><span class="index_skill02">ATABASE</span></td>
				</tr>
			</table>
		</tr>
	</table>
	</center>
	
	
	<%@ include file="../include/footer.jsp" %>
	
</body>
</html>