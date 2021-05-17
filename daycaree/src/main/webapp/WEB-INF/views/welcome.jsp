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


  <title>DayCaree</title>

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
          DayCaree
        </a>
      </div>

      <div class="collapse navbar-collapse" id="navbar-collapse">
        <ul class="nav navbar-nav navbar-right">
          <li><a href="./" title="">Home</a></li>
          <li><a href="#about" title="">Service</a></li>
          <li><a href="#developer" title="">Developer</a></li>
          <li>
            <p>
              <a href="./loginpage.do" class="btn btn-default navbar-btn" title="">로그인</a>
            </p>
          </li>
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
  <div class="hero-full-container background-image-container white-text-container">
    <div class="container">
      <div class="row">
        <div class="col-xs-12">
          <h1>DayCaree</h1>
          <p>WELCOME TO DayCaree WEBSITE.</p>
          <br>
          <a href="#introduce" class="btn btn-default btn-lg" title="">살펴보기</a>
        </div>
      </div>
    </div>
  </div>

<section id="about"><br></section>
  <div class="section-container">
    <div class="container">
      <div class="row">
        <div class="col-xs-12 col-md-8 col-md-offset-2">
          <div class="text-center">
            <h2>About Service</h2>
            <p>DayCaree 서비스는 
            <br>'광주광역시 광산구 어린이집 CCTV 설치현황'
            <br>공공데이터를 사용하여 정보를 제공합니다.
            </div>
       </div>
      </div>
    </div>
  </div>

<!-- 간단한 사이트 소개 사진 필요 - 완성되고 난 후 -->
  <div class="section-container" id="introduce">
    <div class="container">
      <div class="row">      
          <div class="col-xs-12">


            <div id="carousel-example-generic" class="carousel carousel-fade slide" data-ride="carousel">
                
                <div class="carousel-inner" role="listbox">

                    <div class="item active">
                        <img class="img-responsive" src="./resources/images/img-06.jpg" alt="First slide">
                        <div class="carousel-caption card-shadow reveal">
                          
                          <h3>Moon</h3>
                          <a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev">
                            <i class="fa fa-chevron-left" aria-hidden="true"></i>
                            <span class="sr-only">Previous</span>
                          </a>
                          <a class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next">
                            <i class="fa fa-chevron-right" aria-hidden="true"></i>
                            <span class="sr-only">Next</span>
                          </a>
                          <p>
                            Sed id tellus in risus pre
                            tium imperdiet eu lobortis dolor. Sed pellentesque, urna ac viverra lacinia, erat mauris venenatis purus, mollis egestas urna purus ac ex.
                            Aenean nunc sem, lobortis at elit non, lobortis laoreet nibh. Maecenas at mi ipsum.
                          </p>
                          
                          <p>
                            Quisque tempor, ligula pharetra luctus elementum, arcu nisl suscipit ante, pharetra commodo dui est et enim. Sed eu vestibulum elit. Donec ut libero non.
                          </p>
                          <a href="./allDaycare.do" class="btn btn-primary" title="">
                            Discover
                          </a>
                        </div>
                    </div>
                    <div class="item">
                        <img class="img-responsive" src="./resources/images/img-07.jpg" alt="First slide">
                        <div class="carousel-caption card-shadow reveal">

                          <h3>Lbortis</h3>
                            <a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev">
                              <i class="fa fa-chevron-left" aria-hidden="true"></i>
                              <span class="sr-only">Previous</span>
                            </a>
                            <a class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next">
                              <i class="fa fa-chevron-right" aria-hidden="true"></i>
                              <span class="sr-only">Next</span>
                            </a>
                          <p>
                            Pre id tellus in risus pre
                            tium imperdiet eu lobortis dolor. Sed pellentesque, urna ac viverra lacinia, erat mauris venenatis purus, mollis egestas urna purus ac ex.
                            Aenean nunc sem, lobortis at elit non, lobortis laoreet nibh. Maecenas at mi ipsum.
                          </p>
                          
                          <p>
                            Quisque tempor, ligula pharetra luctus elementum, arcu nisl suscipit ante, pharetra commodo dui est et enim. Sed eu vestibulum elit. Donec ut libero non.
                          </p>
                          <a href="./allDaycare.do" class="btn btn-primary" title="">
                            Discover
                          </a>
                        </div>
                    </div>
                </div>
               
            </div>

           
          </div>
          
        </div>  
      
    </div>
  </div>

<!-- 내 소개 - 완성된 후 -->
  <div class="section-container" id="developer">
    <div class="container text-center">
      <div class="row section-container-spacer">
        <div class="col-xs-12 col-md-12">
          <h2>Developer</h2>
          <p>Praesent at feugiat est, at faucibus ipsum. Aenean condimentum mauris vel malesuada pulvinar. <br>Vestibulum sit amet hendrerit leo, quis vehicula mi.</p>
        </div>  
      </div>
      <div class="row">
        <div class="col-xs-12 col-md-12">
          <img src="./resources/images/profil-01.jpg" alt="" class="reveal img-responsive reveal-content image-center">
          <h3>Kim Changsoo</h3>
          <h4>UX designer</h4>
          <p>Sed elementum vehicula nisl, a egestas velit rhoncus nec.Cras vel sapien tincidunt, lacinia risus vel, imperdiet neque.</p>
          <p>
            <a href="https://facebook.com/" class="social-round-icon fa-icon" title="">
              <i class="fa fa-facebook" aria-hidden="true"></i>
            </a>
            <a href="https://twitter.com/" class="social-round-icon fa-icon" title="">
              <i class="fa fa-twitter" aria-hidden="true"></i>
            </a>
            <a href="https://www.linkedin.com/" class="social-round-icon fa-icon" title="">
              <i class="fa fa-linkedin" aria-hidden="true"></i>
            </a>
          </p>
        </div>
        </div>
      </div>
    </div>


 
 
<script>
  document.addEventListener("DOMContentLoaded", function (event) {
    navbarFixedTopAnimation();
  });
</script>

<footer class="footer-container white-text-container">
  <div class="container">
    <div class="row">

     
      <div class="col-xs-12">
        <h3>DayCaree</h3>

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