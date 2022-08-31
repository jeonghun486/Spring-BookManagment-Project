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
<title>대여기간 연장</title>
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
							<form action="date_extensionOk" method="post" name="book_form">
								<span></span>
								<tr>
											<td><span class="reg_text">ISBN  &nbsp;</span></td>
											<td><input  class="input_box" type="text"  name="risbn" value="${rentDto.risbn }" readonly></td>
											<c:choose>
										<c:when test="${rentDto.rimage==null}">
											<c:if test="${fbDto.fextension == 'jpg' or fbDto.fextension == 'png' or fbDto.fextension == 'gif' or fbDto.fextension == 'bmp'}">
												<td rowspan="6">&nbsp;&nbsp;
													<img class="book_img" src="${pageContext.request.contextPath }/resources/uploadfiles/${fbDto.fname}">
												</td>
											</c:if>
										</c:when>
										<c:otherwise>
											<td rowspan="6">&nbsp;&nbsp;
												<img class="book_img" src="${rentDto.rimage}" name="image">
											</td>
										</c:otherwise>
									</c:choose> 
										</tr>
										<tr>
											<td><span class="reg_text">제목  &nbsp;</span></td>
											<td><input  class="input_box" type="text" name="title" value="${rentDto.rtitle }" readonly></td>
										</tr>
										<tr>
											<td><span class="reg_text">저자  &nbsp;</span></td>
											<td><input  class="input_box" type="text" name="author" value="${rentDto.rauthor }" readonly></td>
										</tr>
										<tr>
											<td><span class="reg_text">출판사  &nbsp;</span></td>
											<td><input  class="input_box" type="text" name="publisher" value="${rentDto.rpublisher }" readonly></td>
										</tr>
										<tr>
											<td><span class="reg_text">출판일  &nbsp;</span></td>
											<td><input  class="input_box" type="text" name="pdate" value="${bookDto.pdate }" readonly></td>
										</tr>
										<tr>
											<td><span class="reg_text">가격  &nbsp;</span></td>
											<td><input  class="input_box" type="text" name="price" value="${rentDto.rprice }" readonly></td>
										</tr>
										<tr>
											<td><span class="reg_text">대여기간 &nbsp;</span></td>
											<td>
												<input  class="input_date" type="date" name="rntdate" value="${rentDto.rntdate }" readonly> ~
												<input  class="input_date" type="date" name="rtrndate" value="${rentDto.rtrndate }">
											</td>
											
										</tr>
										<tr>
											<td><span class="reg_text">책 소개  &nbsp;</span></td>
											<td colspan="2"><textarea class="reg_text" rows="5" cols="25" name="description"  readonly>${bookDto.description }</textarea></td>
										</tr>
								
								<tr>
									<td colspan="3" align="center">
											<input class="btn_rent" type="button" value="취소" onclick="location.href='book_rentList'">&nbsp;
											<input class="btn_rent" type="submit" value="연장하기">&nbsp;
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