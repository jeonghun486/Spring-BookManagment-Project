<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
	<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/titletext.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/content.css">
	
<title>도서등록 완료.</title>
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
					
					<c:choose>
						<c:when test="${checkBook=='0' }">
							<span class="login_title" align="center"><h1>도서등록 완료.</h1></span>
								<table>
										<tr>
											<td><span class="reg_text">ISBN  &nbsp;</span></td>
											<td><input  class="input_box" type="text"  name="isbn" id="isbn" value="${isbn }"></td>
											<c:choose>
												<c:when test="${image==null}">
													<c:if test="${fextension == 'jpg' or fextension == 'png' or fextension == 'gif' or fextension == 'bmp'}">
														<td rowspan="6">
															<img class="book_img" src="${pageContext.request.contextPath }/resources/uploadfiles/${fname}">
														</td>
													</c:if>
												</c:when>
												<c:otherwise>
													<td rowspan="6">
														<img class="book_img" src="${image}" name="image">
													</td>
												</c:otherwise>
											</c:choose> 
										</tr>
										<tr>
											<td><span class="reg_text">제목  &nbsp;</span></td>
											<td><input  class="input_box" type="text" name="title" value="${title }"></td>
										</tr>
										<tr>
											<td><span class="reg_text">저자  &nbsp;</span></td>
											<td><input  class="input_box" type="text" name="author" value="${author }"></td>
										</tr>
										<tr>
											<td><span class="reg_text">출판사  &nbsp;</span></td>
											<td><input  class="input_box" type="text" name="publisher" value="${publisher }"></td>
										</tr>
										<tr>
											<td><span class="reg_text">출판일  &nbsp;</span></td>
											<td><input  class="input_box" type="text" name="pdate" value="${pdate }"></td>
										</tr>
										<tr>
											<td><span class="reg_text">가격  &nbsp;</span></td>
											<td><input  class="input_box" type="text" name="price" value="${price }"></td>
										</tr>
										<tr>
											<td><span class="reg_text">책 소개  &nbsp;</span></td>
											<td colspan="2"><textarea class="reg_text" rows="5" cols="25" name="description">${description }</textarea></td>
										</tr>
										<tr height = "40"></tr>
										<tr>
											<td colspan="3" align="center">
												<input class="button" type="button" value="확인" onclick="location.href='mngBook_list'">&nbsp;&nbsp;
											</td>
										</tr>
									</table>
							<td></td>
						</c:when>
					
						<c:otherwise>
							<script type="text/javascript">
								alert("이미 항목에 존재하는 도서입니다.");// 경고창 띄우기
								history.go(-1);// 이전 페이지로 돌려보냄
							</script>
						</c:otherwise>
					</c:choose>
					</td>
				</tr>
			</table>
		</tr>
	</table>
	</center>
	
	
	<%@ include file="../include/footer.jsp" %>
	
</body>
</html>