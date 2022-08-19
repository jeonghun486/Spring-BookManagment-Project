<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
	<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/titletext.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/content.css">
	
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
					<td bgcolor="#B3B3B3" align="center">
						<table border="0" cellspacing="0" cellpadding="10">
							
								<tr>
                      				<td colspan="2"><span class="content_text" >${memberDto.memname }님의 회원정보를 수정하였습니다.</span></td>
                    			 </tr>
								<tr>
									<td><span class="content_text">아이디 : &nbsp;</span></td>
									<td><span class="info_text">${memberDto.memid}</span></td>
								</tr>
								<tr>
									<td><span class="content_text">비밀번호 : &nbsp;</span></td>
									<td><span class="info_text">${memberDto.mempw}</span></td>
								</tr>
								<tr>
									<td><span class="content_text">비밀번호 확인 : &nbsp;</span></td>
									<td></td>
								</tr>
								<tr>
									<td><span class="content_text">이름 : &nbsp;</span></td>
									<td><span class="info_text">${memberDto.memname}</span></td>
								</tr>
								<tr>
									<td><span class="content_text">주소 : &nbsp;</span></td>
									<td><span class="info_text">${memberDto.memaddr}</span></td>
								</tr>
								<tr>
									<td><span class="content_text">전화번호 : &nbsp;</span></td>
									<td><span class="info_text">${memberDto.memtel}</span></td>
								</tr>
								<tr>
									<td><span class="content_text">이메일 : &nbsp;</span></td>
									<td><span class="info_text">${memberDto.mememail}</span></td>
								</tr>
								<tr>
									<td><span class="content_text">가입일자 : &nbsp;</span></td>
									<td><span class="info_text">${memberDto.memdate}</span></td>
								</tr>
								<tr>
									<td colspan="2">
										<input class="button" type="button" value="정보수정" onclick="location.href='infoModify'">&nbsp;&nbsp;
										<input class="button" type="button" value="메인 홈으로" onclick="location.href='index'">
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