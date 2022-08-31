<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
	<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/titletext.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/content.css">
	<script type="text/javascript" src="${pageContext.request.contextPath }/resources/js/register.js"></script>
<title>도서 등록</title>
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
						<form action="book_registerOk" method="post" name="reg_form" enctype="multipart/form-data">
						<span class="login_title" align="center"><h1>도서 등록</h1></span>
						<table>
								<tr>
									<td><span class="reg_text">ISBN  &nbsp;</span></td>
									<td><input  class="input_box" type="text"  name="isbn" id="isbn" placeholder="ISBN을 입력해주세요"></td>
								</tr>
								<tr>
									<td><span class="reg_text">제목  &nbsp;</span></td>
									<td><input  class="input_box" type="text" name="title" placeholder="제목을 입력해주세요"></td>
								</tr>
								<tr>
									<td><span class="reg_text">저자  &nbsp;</span></td>
									<td><input  class="input_box" type="text" name="author" placeholder="저자를 입력해주세요"></td>
								</tr>
								<tr>
									<td><span class="reg_text">출판사  &nbsp;</span></td>
									<td><input  class="input_box" type="text" name="publisher" placeholder="출판사를 입력해주세요"></td>
								</tr>
								<tr>
									<td><span class="reg_text">출판일  &nbsp;</span></td>
									<td><input  class="input_box" type="text" name="pdate" placeholder="출판일을 입력해주세요"></td>
								</tr>
								<tr>
									<td><span class="reg_text">가격  &nbsp;</span></td>
									<td><input  class="input_box" type="text" name="price" placeholder="가격을 입력해주세요"></td>
									
								</tr>
								<tr>
									<td><span class="reg_text">이미지링크  &nbsp;</span></td>
									<td><input  class="input_box" type="text" name="image" placeholder="이미지링크를 입력해주세요"> or &nbsp;<input type="file" name="uploadFiles"></td>
								    
								</tr>
								<tr>
									<td><span class="reg_text">책 소개  &nbsp;</span></td>
									<td><textarea class="reg_text" rows="5" cols="25" name="description" placeholder="책 소개를 입력해주세요"></textarea></td>
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