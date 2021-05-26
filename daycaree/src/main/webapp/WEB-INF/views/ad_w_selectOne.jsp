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
					<h2 class="text-center">정보수정</h2>
					<p></p>
					<form method="post">
						<c:forEach var="vo" items="${one}">
							<table class="table table-hover" style="width: 100%;">
								<tr>
									<th>지역<input type="hidden" id="w_number"
										value="${vo.w_number }"></th>
									<td><input type="text" class="form-control input-sm" id="w_loca"
										value="${vo.w_loca}"></td>
									<th colspan="2">어린이집 유형</th>
									<td colspan="2"><input type="text" class="form-control input-sm" id="w_type"
										value="${vo.w_type}"></td>
								</tr>
								<tr>
									<th>어린이집 이름</th>
									<td><input type="text" class="form-control input-sm" id="w_name" value="${vo.w_name}"></td>
									<th>대표자</th>
									<td><input type="text" class="form-control input-sm" id="w_leader"
										value="${vo.w_leader}"></td>
									<th>원장</th>
									<td><input type="text" class="form-control input-sm" id="w_boss" value="${vo.w_boss}"></td>
								</tr>
								
								<tr>
									<th>어린이집 주소</th>
									<td colspan="8"><input type="text" class="form-control input-sm" id="w_address"
										value="${vo.w_address}"></td>
								</tr>
								<tr>
									<th>위반 행위</th>
									<td colspan="8"><input type="text" class="form-control input-sm" id="w_act"
										value="${vo.w_act}"></td>
								</tr>
								<tr>
									<th>처분 내용</th>
									<td colspan="8"><input type="text" class="form-control input-sm" id="w_content"
										value="${vo.w_content}"></td>
								</tr>
								<tr>
									<td colspan="8">
										<button class="btn btn-primary" type="button"
											onclick="updateDay()">수정</button>
										<button class="btn btn-warning" type="reset">취소</button>
										<button class="btn btn-danger" type="button"
											onclick="deleteDay()">삭제</button>
									</td>
								</tr>
							</table>
						</c:forEach>
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
		function updateDay(){
				var w_number = $('#w_number').val();
				var w_name = $('#w_name').val();
				var w_address = $('#w_address').val();
				var w_loca = $('#w_loca').val();
				var w_type = $('#w_type').val();
				var w_leader = $('#w_leader').val();
				var w_boss = $('#w_boss').val();
				var w_act = $('#w_act').val();
				var w_content = $('#w_content').val();
			$.ajax({
				url:'w_updateOne.do',
				type: 'post',
				dataType: 'json',
				data: {
					w_number:w_number,
					w_name:w_name,
					w_address: w_address,
					w_loca: w_loca,
					w_type: w_type,
					w_leader: w_leader,
					w_boss: w_boss,
					w_act: w_act,
					w_content: w_content
				},
				success:function(response){
					if (response == 1) {						
					//location.href='./ad_selectOne.do';
					alert('정상적으로 수정되었습니다.');
					}
				},
				error: function(){
					alert('Error!');
				}
			});
		}
	</script>
	<script type="text/javascript">
		function deleteDay(){
			if(confirm('삭제하시겠습니까?')){
				
			var w_number = $('#w_number').val();
			$.ajax({
				url:'w_deleteDay.do',
				type: 'post',
				data: {
					w_number: w_number
				},
				success: function(result){
					if(result==1){
					alert('삭제되었습니다.');
					window.close();						
					}
				},
				error: function(){
					alert('Error!');
				}
			});
			}
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