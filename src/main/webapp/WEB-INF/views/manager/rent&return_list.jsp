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
<title>대여 및 반납확인</title>

</head>
<body >
	<%@ include file="../include/mngHeader.jsp" %>
	
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
						<span class="content_text">※도서대여 목록</span><br>
						
						<table width="90%" border="0" cellspacing="0" cellpadding="10" id="mytable">
								
							<tr>
								<td class="book_title" width="10%">아이디</td>
								<td class="book_title" width="7%">이름</td>
								<td class="book_title" width="10%">전화번호</td>
								<td class="book_title" width="20%">제목</td>
								<td class="book_title" width="7%">대여일</td>
								<td class="book_title1" width="7%">반납기일</td>
								<td class="book_title1" width="7%">반납일</td>
								<td class="book_title" width="8%">반납·연체여부</td>
								<td class="" width="8%"></td>
							</tr>
							
							<c:forEach items="${rentList }" var="rentDto">
							<input type="hidden" name="rid" value="${rentDto.rid }">
								<input type="hidden" name="rname" value="${rentDto.rname }">
								<input type="hidden" name="rtitle" value="${rentDto.rtitle }">
								<input type="hidden" name="rauthor" value="${rentDto.rauthor}">
								<input type="hidden" name="rtrndate" value="${rentDto.rtrndate}">
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
							<tr id="tr_id">
								<td class="book_content">${rentDto.rid }</td>
								<td class="book_content">${rentDto.rname }</td>
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
								
								<td class="book_content">${rentDto.rntdate }</td>
								<td id="rtrndate" class="book_content"><span id="rdate">${rentDto.rtrndate }</span></td>
								<c:choose>
									<c:when test="${rentDto.rent=='0'}">
										<td class="book_content">
											<c:out value="${fn:substring(rentDto.rdate,0,10)}"></c:out>
										</td>
										
									</c:when>
									<c:otherwise>
										<td class="book_content">-</td>
									</c:otherwise>
								</c:choose>
									<c:set var="today" value="<%=new java.util.Date()%>"/>
															
									<fmt:formatDate var="now" type="date" value="${today}" pattern="yyyy-MM-dd"/>
									
									<fmt:parseDate var="now_D"  value="${now }" pattern="yyyy-MM-dd"/>
									<fmt:parseDate var="rtn_D" value="${rentDto.rtrndate }"  pattern="yyyy-MM-dd"/>
									 
									<fmt:parseNumber var="now_N" value="${now_D.time / (1000*60*60*24)}" integerOnly="true" />
									<fmt:parseNumber var="rtn_N" value="${rtn_D.time / (1000*60*60*24)}" integerOnly="true" /> 
									 
 									 
								
								<c:choose>
									<c:when test="${now_N - rtn_N > 0 && rentDto.rent==1}">
										<td class="book_returnN">
											미반납 / ${now_N - rtn_N}일 연체
										</td>
										<td class="">
											<input type="button" class="btn_returnN" value="반납확인" onclick="location.href='book_return?isbn=${rentDto.risbn}'">
										</td>
									</c:when>
									<c:when test="${now_N - rtn_N > 0 && rentDto.rent==0}">
										<td class="book_returnY">
											반납완료
										</td>
									</c:when>
								</c:choose>
								<c:choose>
									<c:when test="${now_N - rtn_N <= 0 && rentDto.rent==1}">
										<td class="book_return">
											<span class="book_returnN">미반납</span> / 
											<span class="book_returnY">미연체</span>
										</td>
										<td class="">
											<input type="button" class="btn_returnN" value="반납확인" onclick="location.href='book_return?isbn=${rentDto.risbn}'">
										</td>
									</c:when>
									<c:when test="${now_N - rtn_N <= 0 && rentDto.rent==0}">
										<td class="book_returnY">
											반납완료
										</td>
									</c:when>
								</c:choose>
							</tr>
							
							</c:forEach>
							
							<tr height="50"></tr>
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