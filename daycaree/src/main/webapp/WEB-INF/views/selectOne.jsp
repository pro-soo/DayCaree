<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta content="IE=edge" http-equiv="X-UA-Compatible">
<meta content="width=device-width,initial-scale=1" name="viewport">
<meta content="description" name="description">
<meta name="google" content="notranslate" />
<meta content="Mashup templates have been developped by Orson.io team"
	name="author">

<!-- Disable tap highlight on IE -->
<meta name="msapplication-tap-highlight" content="no">


<link rel="apple-touch-icon" sizes="180x180"
	href="./resources/apple-icon-180x180.png">
<link href="./resources/favicon.ico" rel="icon">

<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

<title>어린이집 상세보기 페이지</title>

<link href="./resources/css/main.550dcf66.css" rel="stylesheet">
<style type="text/css">
tr td, th {
	text-align: center;
}
</style>
</head>

<body>
	<!-- Add your content of header -->
	<header>
		<nav class="navbar navbar-default active">
			<div class="container">
				<div class="navbar-header">
					<button type="button" class="navbar-toggle collapsed"
						data-toggle="collapse" data-target="#navbar-collapse"
						aria-expanded="false">
						<span class="sr-only">Toggle navigation</span> <span
							class="icon-bar"></span> <span class="icon-bar"></span> <span
							class="icon-bar"></span>
					</button>
					<p class="navbar-brand">
						<img src="./resources/images/mashup-icon.svg"
							class="navbar-logo-img" alt=""> DayCaree
					</p>
				</div>

				<div class="collapse navbar-collapse" id="navbar-collapse">
					<ul class="nav navbar-nav navbar-right">
						
					</ul>
				</div>
			</div>
		</nav>
	</header>

	<div class="section-container">
		<div class="container">
			<div class="row">
				<div class="col-xs-12 col-md-8 col-md-offset-2">
					<h1 class="text-center">Moon</h1>
					<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.
						Maecenas luctus at sem quis varius. Class aptent taciti sociosqu
						ad litora torquent per conubia nostra, per inceptos himenaeos.
						Phasellus iaculis magna sagittis elit sagittis, at hendrerit lorem
						venenatis. Morbi accumsan iaculis blandit. Cras ultrices hendrerit
						nisl.</p>

					<!-- services와 clusterer, drawing 라이브러리 불러오기 -->
					<script type="text/javascript"
						src="//dapi.kakao.com/v2/maps/sdk.js?appkey=b746de34a877fc1e36118c594a3112e2&libraries=services,clusterer,drawing"></script>
					<div id="map" style="width: 100%; height: 400px;"></div>
					<script>
						var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
						mapOption = {
							center : new kakao.maps.LatLng(33.450701,
									126.570667), // 지도의 중심좌표
							level : 3
						// 지도의 확대 레벨
						};

						// 지도를 생성합니다    
						var map = new kakao.maps.Map(mapContainer, mapOption);

						// 주소-좌표 변환 객체를 생성합니다
						var geocoder = new kakao.maps.services.Geocoder();

						// 주소로 좌표를 검색합니다
						geocoder
								.addressSearch(
										'${one[0].i_address}',
										function(result, status) {

											// 정상적으로 검색이 완료됐으면 
											if (status === kakao.maps.services.Status.OK) {

												var coords = new kakao.maps.LatLng(
														result[0].y,
														result[0].x);

												// 결과값으로 받은 위치를 마커로 표시합니다
												var marker = new kakao.maps.Marker(
														{
															map : map,
															position : coords
														});

												// 인포윈도우로 장소에 대한 설명을 표시합니다
												var infowindow = new kakao.maps.InfoWindow(
														{
															content : '<div style="width:150px;text-align:center;padding:6px 0;">${one[0].i_name}</div>'
														});
												infowindow.open(map, marker);

												// 지도의 중심을 결과값으로 받은 위치로 이동시킵니다
												map.setCenter(coords);
											}
										});
					</script>
					<c:forEach var="vo" items="${one}">
						<table class="table table-hover" style="width: 100%">
							<colgroup>
								<col style="width: 40%">
								<col style="width: 60%">
							</colgroup>
							<tr>
								<th>어린이집 이름</th>
								<td>${vo.i_name }</td>
							</tr>
							<tr>
								<th>지역</th>
								<td>${vo.i_loca}</td>
							</tr>
							<tr>
								<th>어린이집 주소</th>
								<td>${vo.i_address}</td>
							</tr>
							<tr>
								<th>어린이집 유형</th>
								<td>${vo.i_type}</td>
							</tr>

							<tr>
								<th>어린이집 상태</th>
								<td>${vo.i_state}</td>
							</tr>
							<tr>
								<th>설치구분</th>
								<td>${vo.i_state}</td>
							</tr>
							<tr>
								<th>총 설치대수</th>
								<td>${vo.i_cctv}</td>
							</tr>
							<tr>
								<th>필수설치_보육실</th>
								<td>${vo.i_cctv_bo}대</td>
							</tr>
							<tr>
								<th>필수설치_공동놀이실</th>
								<td>${vo.i_cctv_gong}대</td>
							</tr>
							<tr>
								<th>필수설치_놀이터</th>
								<td>${vo.i_cctv_nol}대</td>
							</tr>
							<tr>
								<th>필수설치_식당</th>
								<td>${vo.i_cctv_sik}대</td>
							</tr>
							<tr>
								<th>필수설치_강당</th>
								<td>${vo.i_cctv_gang}대</td>
							</tr>
							<tr>
								<th>조리실</th>
								<td>${vo.i_cctv_jo}대</td>
							</tr>
							<tr>
								<th>복도, 현관</th>
								<td>${vo.i_cctv_bok}대</td>
							</tr>
							<tr>
								<th>사무실</th>
								<td>${vo.i_cctv_office}대</td>
							</tr>
							<tr>
								<th>양호실</th>
								<td>${vo.i_cctv_yang}대</td>
							</tr>
							<tr>
								<th>건물외부</th>
								<td>${vo.i_cctv_out}대</td>
							</tr>
							<tr>
								<th>영상정보 보존기간</th>
								<td>${vo.i_cctv_time}</td>
							</tr>
							<tr>
								<th>영상 화질</th>
								<td>${vo.i_cctv_hd}</td>
							</tr>
							<tr>
								<th>설치일자</th>
								<td>${vo.i_cctv_date}</td>
							</tr>
							<tr>
								<th>설치운영비용</th>
								<td>${vo.i_cctv_money}</td>
							</tr>
							<tr>
								<th>운영방식</th>
								<td>${vo.i_system}</td>
							</tr>
						</table>
					</c:forEach>

				</div>
			</div>
		</div>
	</div>

	<div class="section-container">
		<div class="container">
			<div class="row section-container-spacer">
				<div class="col-xs-12 col-md-8 col-md-offset-2">
					<h2 class="text-center">More</h2>
					<div class="section-container-spacer">
						<p>Praesent at feugiat est, at faucibus ipsum. Aenean
							condimentum mauris vel malesuada pulvinar. Vestibulum sit amet
							hendrerit leo, quis vehicula mi.</p>
						<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit,
							sed do eiusmod tempor incididunt ut labore et dolore magna
							aliqua. Ut enim ad minim veniam, quis nostrud exercitation
							ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis
							aute irure dolor in reprehenderit in voluptate velit esse cillum
							dolore eu fugiat nulla pariatur. Excepteur sint occaecat
							cupidatat non proident, sunt in culpa qui officia deserunt mollit
							anim id est laborum.</p>
					</div>
					<img src="./resources/images/img-05.jpg" alt=""
						class="img-responsive reveal-content" data-action="zoom">
				</div>
			</div>
		</div>
	</div>

	<div class="section-container">
		<div class="container text-center">
			<div class="row section-container-spacer">
				<div class="col-xs-12 col-md-12">

					<h3>Do you like it ?</h3>
					<p>
						<a href="https://facebook.com/" class="social-round-icon fa-icon"
							title=""> <i class="fa fa-facebook" aria-hidden="true"></i>
						</a> <a href="https://twitter.com/" class="social-round-icon fa-icon"
							title=""> <i class="fa fa-twitter" aria-hidden="true"></i>
						</a> <a href="https://www.linkedin.com/"
							class="social-round-icon fa-icon" title=""> <i
							class="fa fa-linkedin" aria-hidden="true"></i>
						</a>
					</p>
				</div>
			</div>

		</div>
	</div>

	<footer class="footer-container white-text-container">
		<div class="container">
			<div class="row">


				<div class="col-xs-12">
					<h3>Mountain</h3>

					<div class="row">
						<div class="col-xs-12 col-sm-7">
							<p>
								<small>Website created with <a
									href="http://www.mashup-template.com/"
									title="Create website with free html template">Mashup
										Template</a>/<a href="https://www.unsplash.com/"
									title="Beautiful Free Images">Unsplash</a></small>
							</p>
						</div>
						<div class="col-xs-12 col-sm-5">
							<p class="text-right">
								<a href="https://facebook.com/"
									class="social-round-icon white-round-icon fa-icon" title="">
									<i class="fa fa-facebook" aria-hidden="true"></i>
								</a> <a href="https://twitter.com/"
									class="social-round-icon white-round-icon fa-icon" title="">
									<i class="fa fa-twitter" aria-hidden="true"></i>
								</a> <a href="https://www.linkedin.com/"
									class="social-round-icon white-round-icon fa-icon" title="">
									<i class="fa fa-linkedin" aria-hidden="true"></i>
								</a>
							</p>
						</div>
					</div>


				</div>
			</div>
		</div>
	</footer>

	<script>
		document.addEventListener("DOMContentLoaded", function(event) {
			navActivePage();
			scrollRevelation('.reveal');
		});
	</script>

	<script type="text/javascript">
		function selectOne(i_number) {

		}
	</script>

	<!-- Google Analytics: change UA-XXXXX-X to be your site's ID 

<script>
  (function (i, s, o, g, r, a, m) {
    i['GoogleAnalyticsObject'] = r; i[r] = i[r] || function () {
      (i[r].q = i[r].q || []).push(arguments)
    }, i[r].l = 1 * new Date(); a = s.createElement(o),
      m = s.getElementsByTagName(o)[0]; a.async = 1; a.src = g; m.parentNode.insertBefore(a, m)
  })(window, document, 'script', '//www.google-analytics.com/analytics.js', 'ga');
  ga('create', 'UA-XXXXX-X', 'auto');
  ga('send', 'pageview');
</script>

-->
	<script type="text/javascript" src="./resources/js/main.0cf8b554.js"></script>
</body>

</html>