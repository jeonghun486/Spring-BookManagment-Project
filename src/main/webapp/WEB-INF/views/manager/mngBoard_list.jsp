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
	
<title>게시판목록</title>
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
						<span class="content_text">※고객문의 게시판</span>
						<table width="90%" border="0" cellspacing="0" cellpadding="10">
							
							<tr>
								<td class="board_title" width="5%">No.</td>
								<td class="board_title" width="10%">작성자</td>
								<td class="board_title" width="15%">제목</td>
								<td class="board_title" width="35%">내용</td>
								<td class="board_title" width="15%">작성날짜</td>
								<td class="board_title" width="7%">조회수</td>
							</tr>
							<c:forEach items="${list }" var="dto">
							<tr>
								<td class="board_content">${dto.bmnum }</td>
								<td class="board_content">${dto.bmid }</td>
								<td class="board_content">${dto.bmtitle }</td>
								<td class="board_content" style="text-align:center;">
									<a href="mngBoard_view?bmnum=${dto.bmnum}" style="color:#0a367a" >
										<c:choose>
											<c:when test="${fn:length(dto.bmcontent) > 25 }">
												<c:out value="${fn:substring(dto.bmcontent,0,25)}"></c:out>...
											</c:when>	
											<c:otherwise>
												<c:out value="${dto.bmcontent }"></c:out>
											</c:otherwise>
										</c:choose>
									</a>
								</td>
								<td class="board_content">
									<c:out value="${fn:substring(dto.bmdate,0,10)}"></c:out>
								</td> 
								<td class="board_content">${dto.bmhit }</td>
							</tr>
							</c:forEach>
							<tr>
								<td colspan="6" align="right">
									<input class="button" type="button" value="글쓰기" onclick="location.href='mngBoard'">
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