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
  <meta content="Mashup templates have been developped by Orson.io team" name="author">

  <!-- Disable tap highlight on IE -->
  <meta name="msapplication-tap-highlight" content="no">
  
  
  <link rel="apple-touch-icon" sizes="180x180" href="./resources/apple-icon-180x180.png">
  <link href="./resources/images/favicon.ico" rel="icon">

  <link href="" rel="stylesheet">


  <title>Title page</title>

<link href="./resources/css/main.550dcf66.css" rel="stylesheet"></head>

<body> <!-- Add your content of header -->
<header>
  <nav class="navbar navbar-default active">
    <div class="container">
      <div class="navbar-header">
        <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar-collapse" aria-expanded="false">
          <span class="sr-only">Toggle navigation</span>
          <span class="icon-bar"></span>
          <span class="icon-bar"></span>
          <span class="icon-bar"></span>
        </button>
        <a class="navbar-brand" href="./" title="">
          <img src="./resources/images/mashup-icon.svg" class="navbar-logo-img" alt="">
          Mashup Template
        </a>
      </div>

      <div class="collapse navbar-collapse" id="navbar-collapse">
        <ul class="nav navbar-nav navbar-right">
          <li><a href="./" title="">Home</a></li>
          <li><a href="./allDaycare.do" title="">allDaycare</a></li>
          <li>
            <p>
              <a href="./joinpage.do" class="btn btn-default navbar-btn" title="">회원가입</a>
            </p>
          </li>

        </ul>
      </div> 
    </div>
  </nav>
</header>

<!-- Add your site or app content here -->
 <div class="section-container contact-container">
    <div class="container">
      <div class="row">
        <div class="col-xs-12 col-md-12">
          <div class="section-container-spacer">
            <h2 class="text-center">Login</h2>
            <p class="text-center">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
            tempor incididunt ut labore et dolore magna aliqua.</p>
          </div>
          <div class="card-container">
            <div class="card card-shadow col-xs-10 col-xs-offset-1 col-md-8 col-md-offset-2 reveal">
              <form action="./login.do" class="reveal-content" method="post">
                <div class="row">
                  <div class="col-md-7">
                    <div class="form-group">
                      <input type="text" class="form-control" id="m_id" name="id" placeholder="id를 입력해주세요.">
                    </div>
                    <div class="form-group">
                      <input type="password" class="form-control" id="m_pass" name="pass" placeholder="비밀번호를 입력해주세요.">
                    </div>
                    <c:if test="${list == '0' }">
                    	<p class="text-center" style="color: red;">아이디와 비밀번호가 일치하지 않습니다.</p>
                    </c:if>
                    <button type="submit" class="btn btn-primary">로그인</button>
                    <button type="reset" class="btn btn-primary">취소</button>
                  </div>
                  <div class="col-md-5">
                    <ul class="list-unstyled address-container">
                      <li>
                        <span class="fa-icon">
                          <i class="fa fa-phone" aria-hidden="true"></i>
                        </span>
                        + 33 9 07 45 12 65
                      </li>
                      <li>
                        <span class="fa-icon">
                          <i class="fa fa fa-map-o" aria-hidden="true"></i>
                        </span>
                        42 rue Moulbert 75016 Paris
                      </li>
                    </ul>
                  </div>
                </div>
              </form>
            </div>
            <div class="card-image col-xs-12" style="background-image: url('./resources/images/img-01.jpg')">
            </div>
          </div>
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
            <p><small>Website created with <a href="http://www.mashup-template.com/" title="Create website with free html template">Mashup Template</a>/<a href="https://www.unsplash.com/" title="Beautiful Free Images">Unsplash</a></small>
            </p>
          </div>
          <div class="col-xs-12 col-sm-5">
            <p class="text-right">
              <a href="https://facebook.com/" class="social-round-icon white-round-icon fa-icon" title="">
                <i class="fa fa-facebook" aria-hidden="true"></i>
              </a>
              <a href="https://twitter.com/" class="social-round-icon white-round-icon fa-icon" title="">
                <i class="fa fa-twitter" aria-hidden="true"></i>
              </a>
              <a href="https://www.linkedin.com/" class="social-round-icon white-round-icon fa-icon" title="">
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
  document.addEventListener("DOMContentLoaded", function (event) {
    navActivePage();
    scrollRevelation('.reveal');
  });
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

--> <script type="text/javascript" src="./resources/js/main.0cf8b554.js"></script></body>

</html>