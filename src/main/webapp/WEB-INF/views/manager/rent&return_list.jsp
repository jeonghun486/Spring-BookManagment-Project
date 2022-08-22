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
						<span class="content_text">※도서대여목록</span>
						<table width="90%" border="0" cellspacing="0" cellpadding="10">
								<input type="hidden" name="isbn" value="${rentDto.risbn }">
								<input type="hidden" name="rent" value="${rentDto.rent}">
							<tr>
								<td class="book_title" width="10%">아이디</td>
								<td class="book_title" width="7%">이름</td>
								<td class="book_title" width="14%">주소</td>
								<td class="book_title" width="10%">전화번호</td>
								<td class="book_title" width="20%">제목</td>
								<td class="book_title" width="15%">대여기간</td>
								<td class="book_title" width="8%">연체여부</td>
								<td class="book_title" width="8%">반납여부</td>
								<td class="" width="8%"></td>
							</tr>
							<c:forEach items="${rentList }" var="rentDto">
							<tr>
								<td class="book_content">${rentDto.rid }</td>
								<td class="book_content">${rentDto.rname }</td>
								<td class="book_content">${rentDto.raddr }</td>
								<td class="book_content">${rentDto.rtel }</td>
								<td class="book_rtitle" >
									<c:choose>
										<c:when test="${fn:length(rentDto.rtitle) > 15 }">
											<c:out value="${fn:substring(rentDto.rtitle,0,15)}"></c:out>...
										</c:when>	
										<c:otherwise>
											<c:out value="${rentDto.rtitle }"></c:out>
										</c:otherwise>
									</c:choose>
								</td>
								
								<td class="book_content">${rentDto.rdate }</td>
								<td class="book_returnY">미 연체</td>
								<c:choose>
								<c:when test="${rentDto.rent=='1'}">
									<td class="book_returnN">미 반납</td>
									<td class=""><input type="button" class="btn_returnN" value="반납확인" onclick="location.href='book_return?isbn=${rentDto.risbn}'"></td>
								</c:when>
								<c:otherwise>
									<td class="book_returnY">반납완료</td>
								</c:otherwise>
								</c:choose>
							</tr>
							</c:forEach>
							<tr height="50"></tr>
							<tr>
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