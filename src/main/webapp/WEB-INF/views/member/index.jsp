<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
	<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/titletext.css">
	
<title>홈 화면</title>
</head>
<body>
	<%@ include file="../include/header.jsp" %>
	<center>
	<table width="75%" cellspacing="0" border="0" cellpadding="20">
		
		<tr>
			<td align="center">
				<span class="index_title02"></span>
			</td>
		</tr>
		<tr>
			<table width="60%" cellspacing="0" border="0" cellpadding="10" >
			
				<tr>
					<td width="10%"></td>
					<td bgcolor=B2CCFF align="center" >
						<a href="best_books" target="if_book">
							<span class="index_skill01">베스트도서</span>
						</a>
					</td>
					<td rowspan="4" width="50%" align="">
						<iframe src="${pageContext.request.contextPath }/resources/img/Library.jpg" width="630" height="500" name="if_book" scrolling="no"></iframe>
					</td>
					<td width="10%"></td>
				</tr>
				<tr>
				<td width="10%"></td>
					<td bgcolor="B2CCFF" align="center">
						<a href="new_books" target="if_book">
							<span class="index_skill01">신간도서</span>
						</a>
					</td>
					<td width="10%"></td>
				</tr>
				<tr>
				<td width="10%"></td>
					<td bgcolor="B2CCFF" align="center">
						<a href="domestic_books" target="if_book">
							<span class="index_skill01">국내도서</span>
						</a>
					</td>
					<td width="10%"></td>
				</tr>
				<tr>
				<td width="10%"></td>
					<td bgcolor="B2CCFF" align="center">
						<a href="foreign_books" target="if_book">
							<span class="index_skill01">외국도서</span>
						</a>
					</td>
					<td width="10%"></td>
				</tr>
				
			</table>
		</tr>
	</table>
	</center>
	
	
	<%@ include file="../include/footer.jsp" %>
	
</body>
</html>