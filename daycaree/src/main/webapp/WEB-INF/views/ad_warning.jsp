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

<title>전체 어린이집 정보 페이지</title>

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
						<span class="sr-only">Toggle navigation</span><span
							class="icon-bar"></span> <span class="icon-bar"></span> <span
							class="icon-bar"></span> <span class="icon-bar"></span>
					</button>
					<p class="navbar-brand">
						<img src="./resources/images/mashup-icon.svg"
							class="navbar-logo-img" alt=""> DayCaree
					</p>
				</div>

				<div class="collapse navbar-collapse" id="navbar-collapse">
					<ul class="nav navbar-nav navbar-right">
						<li><a title="">${list[0].m_id} 상태입니다!</a></li>
						<li><a href="./ad_allday.do" title="">어린이집 등록</a></li>
						<li><a href="./ad_warning.do" title="">위반시설 등록</a></li>
						<li><a href="./project.html" title="">공지사항</a></li>
						<li>
							<p>
								<a href="./components.html" class="btn btn-default navbar-btn"
									title="">로그아웃</a>
							</p>
						</li>
					</ul>
				</div>
			</div>
		</nav>
	</header>

	<div class="section-container">
		<div class="container">
			<div class="row">
				<div class="col-xs-12 col-md-8 col-md-offset-2">
					<h1 class="text-center">Information</h1>
					<p align="center">법 위반 사실 공표 제도에 대한 근거를 마련한 영유아보육법이 <br>
					<a style="color: red;">2013년 12월 5일</a>부터 시행됨에 따라 시행 이후의 위반사실을 대상으로 공표 합니다.</p>

					<table class="table table-hover" style="width: 100%">
						<colgroup>
							<col style="width: 5%">
								<col style="width: 15%">
								<col style="width: 15%">
								<col style="width: 13%">
								<col style="width: 12%">
								<col style="width: 12%">
								<col style="width: 38%">
						</colgroup>
						<thead>
							<tr>
								<th style="text-align: right"><input
									id="search" type="text"> <input id="" type="hidden"></th>
								<th style="text-align: right"><button
										type="button" class="btn btn-primary" onclick="searchOne()">검색</button></th>
							<th colspan="7" style="text-align: right"><button
										type="button" class="btn btn-primary" onclick="insertDay()">등록</button></th>
							</tr>
							<tr>
								<th>번호</th>
								<th>시도/시군구</th>
								<th>어린이집 이름</th>
								<th>유형</th>
								<th>대표자</th>
								<th>원장</th>
								<th>어린이집 주소</th>
							</tr>
						</thead>
					</table>
					<c:forEach var="vo" items="${all}">
						<table class="table table-hover" style="width: 100%">
							<colgroup>
								<col style="width: 5%">
								<col style="width: 15%">
								<col style="width: 15%">
								<col style="width: 13%">
								<col style="width: 12%">
								<col style="width: 12%">
								<col style="width: 38%">
							</colgroup>
							<tr onclick="selectOne(${vo.w_number})">
								<td id="w_number">${vo.w_number}</td>
								<td>${vo.w_loca}</td>
								<td id="w_name">${vo.w_name }</td>
								<td>${vo.w_type}</td>
								<td>${vo.w_leader}</td>
								<td>${vo.w_boss}</td>
								<td>${vo.w_address}</td>
							</tr>
						</table>
					</c:forEach>

				</div>
			</div>
		</div>
	</div>

	<footer class="footer-container white-text-container">
		<div class="container">
			<div class="row">


				<div class="col-xs-12">
					<h3>DayCaree</h3>

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
		function searchOne(){
			var i_name = $('#search').val();				
			consol.log("test : ");
			$.ajax({
				url: 'searchOne.do',
				type: 'post',
				data: i_name,
				sucess: function(search){
					alert(search+'');
				},
				error: function(){
					alert('error');
				}
				
			});
			
		}
	</script>
	<script type="text/javascript">
		function selectOne(w_number){
			var url = 'ad_w_selectOne.do?w_number='+w_number;
			var name = 'ad_w_SelectOne';
			var option = 'width = 1000, height = 700, top = 100, left = 200, location = no';
			window.open(url, name, option);
		}
	</script>
	
<script type="text/javascript">
		function insertDay(){
			var url = 'ad_w_insertDaypage.do';
			var name = 'ad_w_insertDay';
			var option = 'width = 1000, height = 700, top = 100, left = 200, location = no';
			window.open(url, name, option);
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