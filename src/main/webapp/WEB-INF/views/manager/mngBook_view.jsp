<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
	<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/titletext.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/content.css">
	<script type="text/javascript" src="${pageContext.request.contextPath }/resources/js/update.js"></script>
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
						<table>
							<form action="mngBook_modify" method="post" name="book_form">
								<tr>
											<td><span class="reg_text">ISBN  &nbsp;</span></td>
											<td><input  class="input_box" type="text"  name="isbn" value="${bookDto.isbn }" readonly></td>
											<td rowspan="6"><img class="book_img" src="${bookDto.image }" name="image"></td>
										</tr>
										<tr>
											<td><span class="reg_text">제목  &nbsp;</span></td>
											<td><input  class="input_box" type="text" name="title" value="${bookDto.title }"></td>
										</tr>
										<tr>
											<td><span class="reg_text">저자  &nbsp;</span></td>
											<td><input  class="input_box" type="text" name="author" value="${bookDto.author }"></td>
										</tr>
										<tr>
											<td><span class="reg_text">출판사  &nbsp;</span></td>
											<td><input  class="input_box" type="text" name="publisher" value="${bookDto.publisher }"></td>
										</tr>
										<tr>
											<td><span class="reg_text">출판일  &nbsp;</span></td>
											<td><input  class="input_box" type="text" name="pdate" value="${bookDto.pdate }"></td>
										</tr>
										<tr>
											<td><span class="reg_text">가격  &nbsp;</span></td>
											<td><input  class="input_box" type="text" name="price" value="${bookDto.price }"></td>
										</tr>
										<tr>
											<td><span class="reg_text">이미지링크  &nbsp;</span></td>
											<td><input  class="input_box" type="text" name="image" value="${bookDto.image }"></td>
										</tr>
										<tr>
											<td><span class="reg_text">책 소개  &nbsp;</span></td>
											<td colspan="2"><textarea class="reg_text" rows="5" cols="25" name="description">${bookDto.description }</textarea></td>
										</tr>
								
								<tr>
									<td colspan="3" align="right">
											<input class="btn_book" type="button" value="도서등록" onclick="location.href='book_register'">
											<input class="btn_book" type="button" value="도서수정" onclick="mngBookCheck()">
											<input class="btn_book" type="button" value="도서삭제" onclick="location.href='mngBook_delete?isbn='+${bookDto.isbn}">
											<input class="btn_book" type="button" value="도서목록" onclick="location.href='mngBook_list'">&nbsp;
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