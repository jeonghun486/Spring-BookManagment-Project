<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
	<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/titletext.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/content.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/qlist.css">
	
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
			<table width="90%" cellspacing="0" border="0" cellpadding="10">
				<tr height="534">
					<td bgcolor="#B3B3B3" align="center">
						<span class="content_text">※도서목록 조회</span>
						<table width="90%" border="0" cellspacing="0" cellpadding="10">
							<tr>
								<td class="book_title" width="13%">ISBN</td>
								<td class="book_title" width="17%">저자</td>
								<td class="book_title" width="25%">제목</td>
								<td class="book_title" width="20%">출판사</td>
								<td class="book_title" width="10%">출판일</td>
								<td class="book_title" width="10%">가격</td>
								<td class="book_title" width="5%">대여</td>
							</tr>
							<c:forEach items="${bookList }" var="bookDto">
							<tr>
								<td class="book_content">${bookDto.isbn }</td>
								<td class="book_content">${bookDto.author }</td>
								<td class="book_view" style="text-align:left;">
									<a href="mngBook_view?isbn=${bookDto.isbn}" style="color:#964ed8" >
										<c:choose>
											<c:when test="${fn:length(bookDto.title) > 10 }">
												<c:out value="${fn:substring(bookDto.title,0,10)}"></c:out>...
											</c:when>	
											<c:otherwise>
												<c:out value="${bookDto.title }"></c:out>
											</c:otherwise>
										</c:choose>
									</a>
								</td>
								<td class="book_content">${bookDto.publisher }</td>
								<td class="book_content">${bookDto.pdate }</td>
								<td class="book_content">${bookDto.price }</td>
								<c:choose>
								<c:when test="${bookDto.amount=='1'}">
									<td class="book_content"><input type="button" class="btn_rentY" value="대여" onclick="location.href='#'"></td>
								</c:when>
								<c:otherwise>
									<td class="book_content"><input type="button" class="btn_rentN" value="불가" onclick="location.href='#'"></td>
								</c:otherwise>
								</c:choose>
							</tr>
							</c:forEach>
							<tr height="50"></tr>
							<tr>
								<td colspan="7" align="right">
									<input class="button" type="button" value="도서등록" onclick="location.href='book_register'">
								</td>
							</tr>
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