<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
	<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/titletext.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/content.css">
	<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=8812661cf4dc7f08858b830661316969"></script>
	<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=8812661cf4dc7f08858b830661316969&libraries=services,clusterer"></script><!-- Kakao Map API Key -->
	<!-- 출처: https://juahnpop.tistory.com/254 [Blacklog:티스토리] -->
<title>오시는 길</title>
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
			<table width="60%" cellspacing="0" border="0" cellpadding="10">
				<tr height="534">
					<td bgcolor="C7D3ED" align="center" >
						<hr color="1a64d5">
						<span class="book_title2">오시는 길</span>
						<hr color="1a64d5"><br><br>
											<!-- * 카카오맵 - 지도퍼가기 -->
					<!-- 1. 지도 노드 -->
					<div id="daumRoughmapContainer1662889912006" class="root_daum_roughmap root_daum_roughmap_landing"></div>
					
					<!--
						2. 설치 스크립트
						* 지도 퍼가기 서비스를 2개 이상 넣을 경우, 설치 스크립트는 하나만 삽입합니다.
					-->
					<script charset="UTF-8" class="daum_roughmap_loader_script" src="https://ssl.daumcdn.net/dmaps/map_js_init/roughmapLoader.js"></script>
					
					<!-- 3. 실행 스크립트 -->
					<script charset="UTF-8">
						new daum.roughmap.Lander({
							"timestamp" : "1662889912006",
							"key" : "2bo9h",
							"mapWidth" : "750",
							"mapHeight" : "450"
						}).render();
					</script>
					</td>
					
				</tr>
				<tr >
					<td bgcolor="C7D3ED" align="center" ><br>
						<input class="btn_rent" type="button" value="홈으로" onclick="location.href='index'"><br><br>
					</td>
				</tr>
			</table>
		</tr>
	</table>
	</center>
	
	
	<%@ include file="../include/footer.jsp" %>
	
</body>
</html>