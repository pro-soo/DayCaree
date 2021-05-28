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

<title>어린이집 등록 페이지</title>

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
					<h2 class="text-center">정보등록</h2>
					<p></p>
					
					<form method="post">
						<table class="table table-hover" style="width: 100%">
							<colgroup>
								<col style="width: 25%">
								<col style="width: 25%">
								<col style="width: 25%">
								<col style="width: 25%">
							</colgroup>
							<tr>
								<th>어린이집 이름</th>
								<td><input type="text" class="form-control input-sm" name="i_name" id="i_name" value=" "></td>
								<th>지역</th>
								<td><input type="text" class="form-control input-sm" name="i_loca" id="i_loca" value=" "></td>
							</tr>
							
							<tr>
								<th>어린이집 주소</th>
								<td><input type="text" class="form-control input-sm" name="i_address" id="i_address" value=" "></td>
								<th>어린이집 유형</th>
								<td><input type="text" class="form-control input-sm" name="i_type" id="i_type" value=" "></td>
							</tr>
							<tr>
								<th>어린이집 상태</th>
								<td><input type="text" class="form-control input-sm" name="i_state" id="i_state" value=" "></td>
								<th>설치구분</th>
								<td><input type="text" class="form-control input-sm" name="i_cctv" id="i_cctv" value=" "></td>
							</tr>
							<tr>
								<th>총 설치대수</th>
								<td><input type="text" class="form-control input-sm" name="i_cctv_all" id="i_cctv_all" value="0"></td>
								<th>필수설치_보육실</th>
								<td><input type="text" class="form-control input-sm" name="i_cctv_bo" id="i_cctv_bo" value="0"></td>
							</tr>
							<tr>
								<th>필수설치_공동놀이실</th>
								<td><input type="text" class="form-control input-sm" name="i_cctv_gong" id="i_cctv_gong" value="0"></td>
								<th>필수설치_놀이터</th>
								<td><input type="text" class="form-control input-sm" name="i_cctv_nol" id="i_cctv_nol" value="0"></td>
							</tr>
							<tr>
								<th>필수설치_식당</th>
								<td><input type="text" class="form-control input-sm" name="i_cctv_sik" id="i_cctv_sik" value="0"></td>
								<th>필수설치_강당</th>
								<td><input type="text" class="form-control input-sm" name="i_cctv_gang" id="i_cctv_gang" value="0"></td>
							</tr>
							<tr>
								<th>조리실</th>
								<td><input type="text" class="form-control input-sm" name="i_cctv_jo" id="i_cctv_jo" value="0"></td>
								<th>복도, 현관</th>
								<td><input type="text" class="form-control input-sm" name="i_cctv_bok" id="i_cctv_bok" value="0"></td>
							</tr>
							<tr>
								<th>사무실</th>
								<td><input type="text" class="form-control input-sm" name="i_cctv_office" id="i_cctv_office" value="0"></td>
								<th>양호실</th>
								<td><input type="text" class="form-control input-sm" name="i_cctv_yang" id="i_cctv_yang" value="0"></td>
							</tr>
							<tr>
								<th>건물외부</th>
								<td><input type="text" class="form-control input-sm" name="i_cctv_out" id="i_cctv_out" value="0"></td>
								<th>영상정보 보존기간</th>
								<td><input type="text" class="form-control input-sm" name="i_cctv_time" id="i_cctv_time" value=" "></td>
							</tr>
							
							<tr>
								<th>영상 화질</th>
								<td><input type="text" class="form-control input-sm" name="i_cctv_hd" id="i_cctv_hd" value=" "></td>
								<th>설치일자</th>
								<td><input type="text" class="form-control input-sm" id="i_cctv_date" name="i_cctv_date" value=" "></td>
							</tr>
							<tr>
								<th>설치운영비용</th>
								<td><input type="text" class="form-control input-sm" id="i_cctv_money" name="i_cctv_money" value=" "></td>
								<th>운영방식</th>
								<td><input type="text" class="form-control input-sm" id="i_system" name="i_system" value=" "></td>
							</tr>
							<tr>
							<td colspan="4">
							<button class="btn btn-primary" type="button" onclick="insertDay()">등록하기</button>
							<button class="btn btn-warning" type="reset">취소</button>
							</td>
							</tr>
						</table>
					</form>

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
		function insertDay(){
				var i_name = $('#i_name').val();
				var i_address = $('#i_address').val();
				var i_loca = $('#i_loca').val();
				var i_type = $('#i_type').val();
				var i_state = $('#i_state').val();
				var i_cctv = $('#i_cctv').val();
				var i_cctv_all = $('#i_cctv_all').val();
				var i_cctv_bo = $('#i_cctv_bo').val();
				var i_cctv_gong = $('#i_cctv_gong').val();
				var i_cctv_nol = $('#i_cctv_nol').val();
				var i_cctv_sik = $('#i_cctv_sik').val();
				var i_cctv_gang = $('#i_cctv_gang').val();
				var i_cctv_jo = $('#i_cctv_jo').val();
				var i_cctv_bok = $('#i_cctv_bok').val();
				var i_cctv_office = $('#i_cctv_office').val();
				var i_cctv_yang = $('#i_cctv_yang').val();
				var i_cctv_out = $('#i_cctv_out').val();
				var i_cctv_time = $('#i_cctv_time').val();
				var i_cctv_hd = $('#i_cctv_hd').val();
				var i_cctv_date = $('#i_cctv_date').val();
				var i_cctv_money = $('#i_cctv_money').val();
				var i_system = $('#i_system').val();
			$.ajax({
				url:'ad_insertDay.do',
				type: 'post',
				dataType: 'json',
				data: {
					i_name:i_name,
					i_address: i_address,
					i_loca: i_loca,
					i_type: i_type,
					i_state: i_state,
					i_cctv: i_cctv,
					i_cctv_all: i_cctv_all,
					i_cctv_bo: i_cctv_bo,
					i_cctv_gong: i_cctv_gong,
					i_cctv_nol: i_cctv_nol,
					i_cctv_sik: i_cctv_sik,
					i_cctv_gang: i_cctv_gang,
					i_cctv_jo: i_cctv_jo,
					i_cctv_bok: i_cctv_bok,
					i_cctv_office: i_cctv_office,
					i_cctv_yang: i_cctv_yang,
					i_cctv_out: i_cctv_out,
					i_cctv_time: i_cctv_time,
					i_cctv_hd: i_cctv_hd,
					i_cctv_date: i_cctv_date,
					i_cctv_money: i_cctv_money,
					i_system:i_system
					
				},
				success:function(response){
					if (response == 1) {						
					//location.href='./ad_selectOne.do';
					alert('정상적으로 등록되었습니다.');
					window.close();
					}
				},
				error: function(){
					alert('Error!');
				}
			});
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