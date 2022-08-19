<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
	<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/titletext.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/content.css">
	<script type="text/javascript" src="${pageContext.request.contextPath }/resources/js/register.js"></script>
<title>** Profile Web</title>
</head>
<body>
	<%@ include file="../include/mngHeader.jsp" %>
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
						<form action="book_registerOk" method="post" name="reg_form">
						<span class="login_title" align="center"><h1>도서 등록</h1></span>
						<table>
								<tr>
									<td><span class="reg_text">ISBN  &nbsp;</span></td>
									<td><input  class="input_box" type="text"  name="isbn" id="isbn"></td>
								</tr>
								<tr>
									<td><span class="reg_text">제목  &nbsp;</span></td>
									<td><input  class="input_box" type="text" name="title"></td>
								</tr>
								<tr>
									<td><span class="reg_text">저자  &nbsp;</span></td>
									<td><input  class="input_box" type="text" name="author"></td>
								</tr>
								<tr>
									<td><span class="reg_text">출판사  &nbsp;</span></td>
									<td><input  class="input_box" type="text" name="publisher"></td>
								</tr>
								<tr>
									<td><span class="reg_text">출판일  &nbsp;</span></td>
									<td><input  class="input_box" type="text" name="pdate"></td>
								</tr>
								<tr>
									<td><span class="reg_text">가격  &nbsp;</span></td>
									<td><input  class="input_box" type="text" name="price"></td>
									
								</tr>
								<tr>
									<td><span class="reg_text">이미지링크  &nbsp;</span></td>
									<td><input  class="input_box" type="text" name="image"></td>
								</tr>
								<tr>
									<td><span class="reg_text">책 소개  &nbsp;</span></td>
									<td><textarea class="reg_text" rows="5" cols="25" name="description"></textarea></td>
								</tr>
								<tr height = "40"></tr>
								<tr>
									<td colspan="2" align="center">
										<input class="button" type="button" value="등록" onclick="regCheck()">&nbsp;&nbsp;
										<input class="button" type="button" value="취소" onclick="location.href='mngBook_list'">
									</td>
								</tr>
							</table>
						</form>
					</td>
				</tr>
			</table>
		</tr>
	</table>
	</center>
	
	
	<%@ include file="../include/footer.jsp" %>
	
</body>
</html>