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


  <title>DayCaree-메인페이지</title>

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
        <p class="navbar-brand" title="">
          <img src="./resources/images/mashup-icon.svg" class="navbar-logo-img" alt="">
          DayCaree
        </p>
      </div>

      <div class="collapse navbar-collapse" id="navbar-collapse">
        <ul class="nav navbar-nav navbar-right">
          <li><a href="./" title="">Home</a></li>
          <li><a href="./alldaycare.do" title="">allDaycare</a></li>
          <li>
            <p>
              <a href="./compo.do" class="btn btn-default navbar-btn" title="">로그아웃</a>
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
          <h1>${list[0].m_id}님 환영합니다!</h1>
          <p>WELCOME TO DAYCAREE WEBSITE.</p>
          <br>
          <a href="./allday.do" class="btn btn-default btn-lg" title="">어린이집 확인하기</a>
        </div>
      </div>
    </div>
  </div>

  <div class="section-container">
    <div class="container">
      <div class="row">
        <div class="col-xs-12 col-md-8 col-md-offset-2">
          <div class="text-center">
            <h2>About Us</h2>
            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas luctus at sem quis varius. 
            <br>
            Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Phasellus iaculis magna sagittis elit sagittis, at hendrerit lorem venenatis. Morbi accumsan iaculis blandit. Cras ultrices hendrerit nisl.</p>
          </div>
       </div>
      </div>
    </div>
  </div>

  <div class="section-container">
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

  <div class="section-container">
    <div class="container text-center">
      <div class="row section-container-spacer">
        <div class="col-xs-12 col-md-12">
          <h2>Partners</h2>
          <p>Praesent at feugiat est, at faucibus ipsum. Aenean condimentum mauris vel malesuada pulvinar. <br>Vestibulum sit amet hendrerit leo, quis vehicula mi.</p>
        </div>  
      </div>
      <div class="row">
        <div class="col-xs-12 col-md-4">
          <img src="./resources/images/profil-01.jpg" alt="" class="reveal img-responsive reveal-content image-center">
          <h3>John Snow</h3>
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
       
        <div class="col-xs-12 col-md-4">
          <img src="./resources/images/profil-02.jpg" alt="" class="reveal img-responsive reveal-content image-center">
          <h3>Sansa Stark</h3>
          <h4>UI designer</h4>
          <p>Praesent at feugiat est, at faucibus ipsum. Aenean condimentum mauris vel malesuadav pulvinar. Vestibulum sit amet hendrerit leo, quis vehicula mi.</p>
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
        <div class="col-xs-12 col-md-4">
          <img src="./resources/images/profil-03.jpg" alt="" class="reveal img-responsive reveal-content image-center">
          <h3>Gregor Clegane</h3>
          <h4>Developer</h4>
          <p>Busce rutrum nisi non dui placerat sodales. Vivamus feugiat rutrum malesuada. Nulla volutpat sapien ac gravida varius</p>
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

  <div class="section-container">
    <div class="container text-center">
      <div class="row section-container-spacer">
        <div class="col-xs-12 col-md-12">
          <h2 class="text-center">Customers</h2>
          <p>Praesent at feugiat est, at faucibus ipsum. Aenean condimentum mauris vel malesuada pulvinar. <br>Vestibulum sit amet hendrerit leo, quis vehicula mi.</p>
        </div>  
      </div>
      <div class="row">
        <div class="col-xs-12 col-md-4">
          <img src="./resources/images/logo-01.png" alt="" class="img-responsive reveal-content image-center">

        </div>
       
        <div class="col-xs-12 col-md-4">
          <img src="./resources/images/logo-02.png" alt="" class="img-responsive reveal-content image-center">
        </div>
        <div class="col-xs-12 col-md-4">
          <img src="./resources/images/logo-03.png" alt="" class="img-responsive reveal-content image-center">
        </div>
      </div>
    </div>
  </div>
 
 
  <div class="section-container contact-container">
    <div class="container">
      <div class="row">
        <div class="col-xs-12 col-md-12">
          <div class="section-container-spacer">
            <h2 class="text-center">Get in touch</h2>
            <p class="text-center">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
            tempor incididunt ut labore et dolore magna aliqua.</p>
          </div>
          <div class="card-container">
            <div class="card card-shadow col-xs-10 col-xs-offset-1 col-md-8 col-md-offset-2 reveal">
              <form action="" class="reveal-content">
                <div class="row">
                  <div class="col-md-7">
                    <div class="form-group">
                      <input type="email" class="form-control" id="email" placeholder="Email">
                    </div>
                    <div class="form-group">
                      <input type="text" class="form-control" id="subject" placeholder="Subject">
                    </div>
                    <div class="form-group">
                      <textarea class="form-control" rows="3" placeholder="Enter your message"></textarea>
                    </div>
                    <button type="submit" class="btn btn-primary">Send message</button>
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

<script>
  document.addEventListener("DOMContentLoaded", function (event) {
    navbarFixedTopAnimation();
  });
</script>

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