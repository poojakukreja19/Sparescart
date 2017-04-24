<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<!-- <head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
  <title>Bootstrap Case</title>
  <meta charset="utf-8">
  <link rel = "stylesheet" type="text/css" href = "./stylesheet/homeform.css"/>
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="./bootstrap/css/bootstrap.min.css">
  <script src="./bootstrap/js/jquery-2.2.3.min.js"></script>
  <script src="./bootstrap/js/bootstrap.min.js"></script>
  <style>
body  {
background: url("./images/Compressor.jpg");
}

</style>
  </head>-->
  <head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
 <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <link href="https://fonts.googleapis.com/css?family=Montserrat" rel="stylesheet" type="text/css">
  <link href="https://fonts.googleapis.com/css?family=Lato" rel="stylesheet" type="text/css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
   <style>
  body {
      font: 400 15px Lato, sans-serif;
      line-height: 1.8;
      color: #818181;
  }
  h2 {
      font-size: 24px;
      text-transform: uppercase;
      color: #303030;
      font-weight: 600;
      margin-bottom: 30px;
  }
  h4 {
      font-size: 19px;
      line-height: 1.375em;
      color: #303030;
      font-weight: 400;
      margin-bottom: 30px;
  }  
  .jumbotron {
      background-color: #f4511e;
      color: #fff;
      padding: 100px 25px;
      font-family: Montserrat, sans-serif;
  }
  .container-fluid {
      padding: 60px 50px;
  }
  .bg-grey {
      background-color: #f6f6f6;
  }
  .logo-small {
      color: #f4511e;
      font-size: 50px;
  }
  .logo {
      color: #f4511e;
      font-size: 200px;
  }
  .thumbnail {
      padding: 0 0 15px 0;
      border: none;
      border-radius: 0;
  }
  .thumbnail img {
      width: 100%;
      height: 100%;
      margin-bottom: 10px;
  }
  .carousel-control.right, .carousel-control.left {
      background-image: none;
      color: #f4511e;
  }
  .carousel-indicators li {
      border-color: #f4511e;
  }
  .carousel-indicators li.active {
      background-color: #f4511e;
  }
  .item h4 {
      font-size: 19px;
      line-height: 1.375em;
      font-weight: 400;
      font-style: italic;
      margin: 70px 0;
  }
  .item span {
      font-style: normal;
  }
  .panel {
      border: 1px solid #f4511e; 
      border-radius:0 !important;
      transition: box-shadow 0.5s;
  }
  .panel:hover {
      box-shadow: 5px 0px 40px rgba(0,0,0, .2);
  }
  .panel-footer .btn:hover {
      border: 1px solid #f4511e;
      background-color: #fff !important;
      color: #f4511e;
  }
  .panel-heading {
      color: #fff !important;
      background-color: #f4511e !important;
      padding: 25px;
      border-bottom: 1px solid transparent;
      border-top-left-radius: 0px;
      border-top-right-radius: 0px;
      border-bottom-left-radius: 0px;
      border-bottom-right-radius: 0px;
  }
  .panel-footer {
      background-color: white !important;
  }
  .panel-footer h3 {
      font-size: 32px;
  }
  .panel-footer h4 {
      color: #aaa;
      font-size: 14px;
  }
  .panel-footer .btn {
      margin: 15px 0;
      background-color: #f4511e;
      color: #fff;
  }
  .navbar {
      margin-bottom: 0;
      background-color: #f4511e;
      z-index: 9999;
      border: 0;
      font-size: 12px !important;
      line-height: 1.42857143 !important;
      letter-spacing: 4px;
      border-radius: 0;
      font-family: Montserrat, sans-serif;
  }
  .navbar li a, .navbar .navbar-brand {
      color: #fff !important;
  }
  .navbar-nav li a:hover, .navbar-nav li.active a {
      color: #f4511e !important;
      background-color: #fff !important;
  }
  .navbar-default .navbar-toggle {
      border-color: transparent;
      color: #fff !important;
  }
  footer .glyphicon {
      font-size: 20px;
      margin-bottom: 20px;
      color: #f4511e;
  }
  .slideanim {visibility:hidden;}
  .slide {
      animation-name: slide;
      -webkit-animation-name: slide;
      animation-duration: 1s;
      -webkit-animation-duration: 1s;
      visibility: visible;
  }
  @keyframes slide {
    0% {
      opacity: 0;
      transform: translateY(70%);
    } 
    100% {
      opacity: 1;
      transform: translateY(0%);
    }
  }
  @-webkit-keyframes slide {
    0% {
      opacity: 0;
      -webkit-transform: translateY(70%);
    } 
    100% {
      opacity: 1;
      -webkit-transform: translateY(0%);
    }
  }
  @media screen and (max-width: 768px) {
    .col-sm-4 {
      text-align: center;
      margin: 25px 0;
    }
    .btn-lg {
        width: 100%;
        margin-bottom: 35px;
    }
  }
  @media screen and (max-width: 480px) {
    .logo {
        font-size: 150px;
    }
  }
  </style>
</head>
<body id="myPage" data-spy="scroll" data-target=".navbar" data-offset="60">

<nav class="navbar navbar-default navbar-fixed-top">
  <div class="container">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>                        
      </button>
      <a class="navbar-brand" href="#myPage">Logo</a>
    </div>
    <div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav navbar-right">
        <li><a href="mycart">MYCART</a></li>
        <li><a href="viewproducts">PRODUCTS</a></li>
        <li><a href="#services">SERVICES</a></li>
        <c:if test="${empty loginmessage}">
        <li><a href="login">LOGIN</a></li>
        </c:if>
        <c:if test="${empty loginmessage}">
        <li><a href="register">REGISTER</a></li>
        </c:if>
        <li><a href="contact">CONTACT</a></li>
       <c:if test="${not empty loginmessage}">
       <li><a href="logout"><span class="glyphicon glyphicon-log-out"></span> Logout</a></li>
      </c:if>         
      </ul>
    </div>
  </div>
</nav>
<div class="jumbotron text-center">
  <h1>SparesCart</h1> 
  <p>Subscribe Offer by Mail</p> 
  <form>
    <div class="input-group">
      <input type="email" class="form-control" size="50" placeholder="Email Address" required>
      <div class="input-group-btn">
        <button type="button" class="btn btn-danger">Subscribe</button>
      </div>
    </div>
  </form>
</div>




<!-- <body> 


<center><h1>SparesCart Application</h1></center>

<center><h3>${msg}</h3></center>
<h3>${loginmessage}</h3>

<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
    </div>
    <ul class="nav navbar-nav">
      <li class="active"><a href="/">Home</a></li>
      <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">Page 1 <span class="caret"></span></a>
        <ul class="dropdown-menu">
          <li><a href="#">Page 1-1</a></li>
          <li><a href="#">Page 1-2</a></li>
          <li><a href="#">Page 1-3</a></li>
        </ul>
      </li>
      <li><a href="#">Page 2</a></li>
    </ul>
    <ul class="nav navbar-nav navbar-right">
    <c:if test="${empty loginmessage}">
      <li><a href="register"><span class="glyphicon glyphicon-user"></span>Register</a></li>
      </c:if>
      <c:if test="${empty loginmessage}">
      <li><a href="login"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
      </c:if>
      <c:if test="${not empty loginmessage}">
      <li><a href="logout"><span class="glyphicon glyphicon-log-out"></span> Logout</a></li>
      </c:if> 
      <c:if test="${isAdmin==false}">
      <li><a href="myCart"><span class="glyphicon glyphicon-shopping-cart"></span>MyCart</a></li>
      </c:if>
      <c:if test="${isAdmin==false}">
      <li><a href="viewproducts"><span class="glyphicon glyphicon-shopping-products"></span>Products</a></li>
      </c:if>
    </ul>
  </div>
</nav> -->

<center><h4>${successmessage}</h4></center>
<center><h4>${errormessage}</h4></center>

<c:if test="${isAdmin==true }">
<jsp:include page="Admin/AdminHome.jsp"></jsp:include>
</c:if>

<<c:if test="${IsuserclickedListProducts==true}">
<jsp:include page="ListProducts.jsp"></jsp:include>
</c:if>

<c:if test="${Isuserclickedmycart==true}">
<jsp:include page="MyCart.jsp"></jsp:include>
</c:if>

<c:if test="${Isuserclickedlogin==true}"> 
<jsp:include page="Login.jsp"></jsp:include>
</c:if>

<c:if test="${not empty errormessage}">
<jsp:include page="Login.jsp"></jsp:include>
</c:if>

<c:if test="${Isuserclickedregister==true}">
<jsp:include page="Register.jsp"></jsp:include>
</c:if>
<center>
<div id="myCarousel" class="carousel slide" data-ride="carousel">
								<!-- Indicators -->
								<ol class="carousel-indicators">
									<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
									<li data-target="#myCarousel" data-slide-to="1"></li>
									<li data-target="#myCarousel" data-slide-to="2"></li>
									<li data-target="#myCarousel" data-slide-to="3"></li>
								</ol>

								<!-- Wrapper for slides -->
								<div class="carousel-inner" role="listbox">
									<div class="item active">
										<a target="_blank"
											class="irc_mil i3597 isQNn16n93y4-zixyDjKkw5M" rel="noopener"
											jsaction="mousedown:irc.rl;keydown:irc.rlk" data-noload=""
											tabindex="0"
											href="/url?sa=i&amp;rct=j&amp;q=&amp;esrc=s&amp;source=images&amp;cd=&amp;cad=rja&amp;uact=8&amp;ved=0ahUKEwiOmoGI_JzTAhVJtY8KHVEQArEQjRwIBw&amp;url=https%3A%2F%2Fwww.commander.com.au%2Fmobiles%2Fmobile-phones&amp;bvm=bv.152180690,d.c2I&amp;psig=AFQjCNF1Zk4BPsDRi5GKiGymKjvMOfYq6g&amp;ust=1492019532742096"
											data-href="https://www.commander.com.au/mobiles/mobile-phones"
											data-ved="0ahUKEwiOmoGI_JzTAhVJtY8KHVEQArEQjRwIBw"><img
											class="irc_mi"
											src="./images/Compressor.jpg"
											onload="google.aft&amp;&amp;google.aft(this)" width="500"
											height="550" style="margin-top: 110px;"
											alt="Image result for images of mobile phones"></a>
									</div>

									<div class="item">
										<img class="irc_mi"
											src="./images/AirCondInside.jpg"
											onload="google.aft&amp;&amp;google.aft(this)" width="500"
											height="150" style="margin-top: 95px;"
											alt="Image result for images of clothes of men">
									</div>

									<div class="item">
										<img class="irc_mi"
											src="./images/29-5.jpg"
											onload="google.aft&amp;&amp;google.aft(this)" width="500"
											height="550" style="margin-top: 88px;" alt="Related image">
									</div>

									<div class="item">
										<img class="irc_mi"
											src="./images/1470974820-.jpg"
											onload="google.aft&amp;&amp;google.aft(this)" width="500"
											height="550" style="margin-top: 45px;"
											alt="Image result for images of watches of boy and girls">
									</div>
								</div>


								<!-- Left and right controls -->
								<a class="left carousel-control" href="#myCarousel"
									role="button" data-slide="prev"> <span
									class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
									<span class="sr-only">Previous</span>
								</a> <a class="right carousel-control" href="#myCarousel"
									role="button" data-slide="next"> <span
									class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
									<span class="sr-only">Next</span>
								</a>
							</div>
					</div>
    </center>
    
    <!-- Container (Services Section) -->
<div class="container-fluid text-center">
  <h2>SERVICES</h2>
  <h4>What we offer</h4>
  <br>
  <div class="row">
    <div class="col-sm-4">
      <span class="glyphicon glyphicon-off logo-small"></span>
      <h4>QUALITY</h4>
    </div>
    <div class="col-sm-4">
      <span class="glyphicon glyphicon-heart logo-small"></span>
      <h4>CARE</h4>
    </div>
    <div class="col-sm-4">
      <span class="glyphicon glyphicon-lock logo-small"></span>
      <h4>JOB DONE</h4>
    </div>
  </div>
  <br><br>
  <div class="row">
    <div class="col-sm-4">
      <span class="glyphicon glyphicon-leaf logo-small"></span>
      <h4>MAINTENANCE</h4>
    </div>
    <div class="col-sm-4">
      <span class="glyphicon glyphicon-certificate logo-small"></span>
      <h4>CERTIFIED</h4>
    </div>
    <div class="col-sm-4">
      <span class="glyphicon glyphicon-wrench logo-small"></span>
      <h4 style="color:#303030;">HARD WORK</h4>
    </div>
  </div>
</div>
    
</body>
</html>

