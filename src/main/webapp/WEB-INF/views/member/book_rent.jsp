<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
	<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/titletext.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/content.css">
	<script type="text/javascript" src="${pageContext.request.contextPath }/resources/js/rent.js"></script>
<title>** Profile Web</title>
</head>
<body>
	<%@ include file="../include/header.jsp" %>
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
					<td bgcolor="6799FF" align="center">
						<table>
							<form action="book_rentOk" method="post" name="rent_form"><br><br>
								<span class="rent_title">아래의 양식을 작성해 주세요.</span><br><br><br><br>
								<input  class="input_box" type="hidden" name="image"  value="${bookDto.image }">
								
								<tr>	
									<td><span class="content_text">ISBN : &nbsp;</span></td>
									<td><input  class="input_box" type="text" name="isbn"  value="${bookDto.isbn }" readonly></td>
									<td colspan="2" rowspan="5">&nbsp;&nbsp;<img class="rnt_img" src="${bookDto.image }" name="image"></td>
								</tr>
								<tr>
									<td><span class="content_text">제목 : &nbsp;</span></td>
									<td><input  class="input_box" type="text" name="title"  value="${bookDto.title }" readonly></td>
								</tr>
								<tr>
									<td><span class="content_text">저자 : &nbsp;</span></td>
									<td><input  class="input_box" type="text" name="author"  value="${bookDto.author }" readonly></td>
								</tr>
								<tr>
									<td><span class="content_text">출판사 : &nbsp;</span></td>
									<td><input  class="input_box" type="text" name="publisher"  value="${bookDto.publisher }" readonly></td>
								</tr>
								<tr>
									<td><span class="content_text">가격 : &nbsp;</span></td>
									<td><input  class="input_box" type="text" name="price"  value="${bookDto.price }" readonly></td>
								</tr>
								<tr height="50"></tr>
								<tr>
									<td><span class="content_text">이름 : &nbsp;</span></td>
									<td><input  class="input_box" type="text" name="memname"  value="${memberDto.memname}" readonly></td>
									<td><span class="content_text">주소 : &nbsp;</span></td>
									<td><input  class="input_box" type="text" name="memaddr"  value="${memberDto.memaddr}" readonly></td>
								</tr>
								<tr>
									<td><span class="content_text">전화번호 : &nbsp;</span></td>
									<td><input  class="input_box" type="text" name="memtel"  value="${memberDto.memtel}" readonly></td>
									<td><span class="content_text">이메일 : &nbsp;</span></td>
									<td><input  class="input_box" type="text" name="mememail"  value="${memberDto.mememail }" readonly></td>
								</tr>
								<tr>
									<td><span class="content_text">대여기간 : &nbsp;</span></td>
									<td>
										<input  class="input_date" type="date" name="from_date"> ~
										<input  class="input_date" type="date" name="by_date">
									</td>
									
								</tr>
								<tr height="50">
								</tr>
								<tr>
									<td colspan="4" align="center">
										<input class="btn_rent" type="button" value="대여" onclick="rntCheck()">
										<input class="btn_rent" type="button" value="취소" onclick="location.href='book_list'">
									</td>
								</tr>
							</form>
						</table><br><br>
					</td> 
				</tr>
			</table>
		</tr>
	</table>
	</center>
	
	
	<%@ include file="../include/footer.jsp" %>
	
</body>
</html>