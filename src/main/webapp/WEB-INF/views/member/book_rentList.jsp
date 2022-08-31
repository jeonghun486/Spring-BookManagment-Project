<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
    <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
	<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/titletext.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/content.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/qlist.css">
	
<title>도서대여 목록</title>
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
			<table width="90%" cellspacing="0" border="0" cellpadding="10">
				<tr height="534">
					<td bgcolor="C7D3ED" align="center">
						<span class="content_text">※도서대여목록</span>
						<table width="90%" border="0" cellspacing="0" cellpadding="10">
							<tr>
								<td class="book_title" width="12%">ISBN</td>
								<td class="book_title" width="20%">제목</td>
								<td class="book_title" width="12%">저자</td>
								<td class="book_title" width="12%">출판사</td>
								<td class="book_title" width="7%">대여일</td>
								<td class="book_title" width="7%">반납기일</td>
								<td class="book_title" width="7%">반납일</td>
								<td class="book_title" width="6%">가격</td>
								<td class="book_title" width="8%">연체여부</td>
								<td class="book_title" width="8%">반납여부</td>
							</tr>
							<c:forEach items="${rentList }" var="rentDto">
							<tr>
								<td class="book_content">${rentDto.risbn }</td>
								<td class="book_view" >
								<a href="book_rentListView?isbn=${rentDto.risbn}" style="color:#964ed8" >
										<c:choose>
											<c:when test="${fn:length(rentDto.rtitle) > 15 }">
												<c:out value="${fn:substring(rentDto.rtitle,0,15)}"></c:out>...
											</c:when>	
											<c:otherwise>
												<c:out value="${rentDto.rtitle }"></c:out>
											</c:otherwise>
										</c:choose>
									</a>
								</td>
								<td class="book_content">${rentDto.rauthor }</td>
								<td class="book_content">${rentDto.rpublisher }</td>
								<td class="book_content">${rentDto.rntdate }</td>
								<td class="book_content"><sapn id="rdate">${rentDto.rtrndate }</sapn></td>
								<c:choose>
									<c:when test="${rentDto.rent=='0'}">
										<td class="book_content">${rentDto.rdate} </td>
									</c:when>
									<c:otherwise>
										<td class="book_content">-</td>
									</c:otherwise>
								</c:choose>
								<c:set var="today" value="<%=new java.util.Date()%>"/>
															
									<c:set var="rtrndate" value="${rentDto.rtrndate }"/>
															
									<fmt:formatDate var="now" type="date" value="${today}" pattern="yyyy-MM-dd"/>
								
								<script type="text/javascript">
										window.onload = () => {
										now = new Date();
										
										var year = now.getFullYear();	//연도
										var month = now.getMonth()+1;   // 월    
										var day = now.getDate();  //일
										
										var rent_date = document.getElementById('rdate').innerHTML;
										//var rent_date = document.getElementsByTagName('td')[29].childNodes[0].nodeValue;
										var rdate_arr = rent_date.split("-");
										
										var rDate = new Date(rdate_arr[0], rdate_arr[1], rdate_arr[2]);
										var nDate = new Date(year, month, day);
									
										
										var btMs = nDate.getTime() - rDate.getTime() ;
										var btDay = btMs / (1000*60*60*24) ;
									
										document.getElementById('over_Date').innerHTML = btDay;
										
										}
								</script>
								<td class="book_content">${rentDto.rprice }</td>
									
								<c:choose>
								<c:when test="${(now > rtrndate && rentDto.rent=='1') || (now > rtrndate && rentDto.rent=='0')}">
									<td class="book_returnN">
										<span id="over_Date"></span>일 연체
									</td>
								</c:when>
								<c:otherwise>
									<td class="book_returnY">미 연체</td>
								</c:otherwise>
								</c:choose>
								
								<c:choose>
								<c:when test="${rentDto.rent=='1'}">
									<td class="book_returnN">미 반납</td>
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