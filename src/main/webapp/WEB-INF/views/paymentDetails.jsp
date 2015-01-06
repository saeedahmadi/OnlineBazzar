<!DOCTYPE HTML>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<html>
<head>
<title>Online Bazzar</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
<script src="https://code.jquery.com/jquery.js"></script>

<link href="<c:url value="/resources/css/bootstrap.css"/>"
	rel='stylesheet' type='text/css' />
<!-- jQuery (necessary JavaScript plugins) -->
<script type='text/javascript'
	src="<c:url value="/resources/js/jquery-1.11.1.min.js"/>"></script>
<!-- Custom Theme files -->
<link href="<c:url value="/resources/css/style.css"/>" rel='stylesheet'
	type='text/css' />
<!-- Custom Theme files -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<script type="application/x-javascript"> 
	 addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } 
</script>
<!--webfont-->
<link href='http://fonts.googleapis.com/css?family=Open+Sans'
	rel='stylesheet' type='text/css'>
<!-- start menu -->
<link href="<c:url value="/resources/css/megamenu.css"/>"
	rel="stylesheet" type="text/css" media="all" />
<script type="text/javascript"
	src="<c:url value="/resources/js/megamenu.js"/>"></script>
<script>
	$(document).ready(function() {
		$(".megamenu").megamenu();
	});
</script>
<!-- start  slider -->


<link rel="stylesheet"
	href="<c:url value="/resources/css/fwslider.css"/>" media="all">
<script src="<c:url value="/resources/js/jquery-ui.min.js"/>"></script>
<script src="<c:url value="/resources/js/fwslider.js"/>"></script>
<script src="<c:url value="/resources/js/menu_jquery.js"/>"></script>
</head>
<body>
	<!-- header_top -->
	<div class="top_bg">
		<div class="container">
			<div class="header_top">
				<div class="top_left">
					<h2>
						<a href="#">50%off</a> use coupon code "big61" and get extra 33%
						off on orders above rs 2,229
					</h2>
				</div>
				<div class="top_right">
					<ul>
						<li><a href="#">Recently viewed</a></li>|
						<li><a href="contact.html">Contact</a></li>|
						<li class="login">
							<div id="loginContainer">
								<a href="#" id="loginButton"><span>Login</span></a>
								<div id="loginBox">
									<form id="loginForm">
										<fieldset id="body">
											<fieldset>
												<label for="email">Email Address</label> <input type="text"
													name="email" id="email">
											</fieldset>
											<fieldset>
												<label for="password">Password</label> <input
													type="password" name="password" id="password">
											</fieldset>
											<input type="submit" id="login" value="Sign in"> <label
												for="checkbox"><input type="checkbox" id="checkbox">
												<i>Remember me</i></label>
										</fieldset>
										<span><a href="#">Forgot your password?</a></span>
									</form>
								</div>
							</div>
						</li>
					</ul>
				</div>
				<div class="clearfix"></div>
			</div>
		</div>
	</div>
	<!-- header -->
	<div class="header_bg">
		<div class="container">
			<div class="header">
				<div class="logo">
					<a href="index.html"><img src="images/logo.png" alt="" /> </a>
				</div>
				<!-- start header_right -->
				<div class="header_right">
					<div class="create_btn">
						<a class="arrow" href="registration.html">create account <img
							src="images/right_arrow.png" alt="" />
						</a>
					</div>
					<ul class="icon1 sub-icon1 profile_img">
						<li><a class="active-icon c2" href="#"> </a>
							<ul class="sub-icon1 list">
								<li><h3>shopping cart empty</h3> <a href=""></a></li>
								<li><p>
										if items in your wishlit are missing, <a href="">login to
											your account</a> to view them
									</p></li>
							</ul></li>
					</ul>
					<ul class="icon1 sub-icon1 profile_img">
						<li><a class="active-icon c1" href="#"> </a>
							<ul class="sub-icon1 list">
								<li><h3>wishlist empty</h3> <a href=""></a></li>
								<li><p>
										if items in your wishlit are missing, <a href="">login to
											your account</a> to view them
									</p></li>
							</ul></li>
					</ul>
					<div class="search">
						<form action="productSearch" method="post">
							<input type="text" name="name" value="" placeholder="search...">
							<input type="submit" value="">
						</form>
					</div>
					<div class="clearfix"></div>
				</div>
				<!-- start header menu -->
				<ul class="megamenu skyblue">
					<li><a class="color1" href="<c:url value='/'/>">Home</a></li>
					<li class="grid"><a class="color2"
						href="<c:url value='/newArrivals'/>">new arrivals</a></li>
					<li class="active grid"><a class="color4" href="#">women</a>
						<div class="megapanel">
							<div class="row">
								<div class="col1">
									<div class="h_nav">
										<h4>shop</h4>
										<ul>
											<li><a href="women.html">new arrivals</a></li>
											<li><a href="women.html">men</a></li>
											<li><a href="women.html">women</a></li>
											<li><a href="women.html">accessories</a></li>
											<li><a href="women.html">kids</a></li>
											<li><a href="women.html">brands</a></li>
										</ul>
									</div>
								</div>
								<div class="col1">
									<div class="h_nav">
										<h4>help</h4>
										<ul>
											<li><a href="women.html">trends</a></li>
											<li><a href="women.html">sale</a></li>
											<li><a href="women.html">style videos</a></li>
											<li><a href="women.html">accessories</a></li>
											<li><a href="women.html">kids</a></li>
											<li><a href="women.html">style videos</a></li>
										</ul>
									</div>
								</div>
								<div class="col1">
									<div class="h_nav">
										<h4>my company</h4>
										<ul>
											<li><a href="women.html">trends</a></li>
											<li><a href="women.html">sale</a></li>
											<li><a href="women.html">style videos</a></li>
											<li><a href="women.html">accessories</a></li>
											<li><a href="women.html">kids</a></li>
											<li><a href="women.html">style videos</a></li>
										</ul>
									</div>
								</div>
								<div class="col1">
									<div class="h_nav">
										<h4>account</h4>
										<ul>
											<li><a href="women.html">login</a></li>
											<li><a href="women.html">create an account</a></li>
											<li><a href="women.html">create wishlist</a></li>
											<li><a href="women.html">my shopping bag</a></li>
											<li><a href="women.html">brands</a></li>
											<li><a href="women.html">create wishlist</a></li>
										</ul>
									</div>
								</div>
								<div class="col1">
									<div class="h_nav">
										<h4>my company</h4>
										<ul>
											<li><a href="women.html">trends</a></li>
											<li><a href="women.html">sale</a></li>
											<li><a href="women.html">style videos</a></li>
											<li><a href="women.html">accessories</a></li>
											<li><a href="women.html">kids</a></li>
											<li><a href="women.html">style videos</a></li>
										</ul>
									</div>
								</div>
								<div class="col1">
									<div class="h_nav">
										<h4>popular</h4>
										<ul>
											<li><a href="women.html">new arrivals</a></li>
											<li><a href="women.html">men</a></li>
											<li><a href="women.html">women</a></li>
											<li><a href="women.html">accessories</a></li>
											<li><a href="women.html">kids</a></li>
											<li><a href="women.html">style videos</a></li>
										</ul>
									</div>
								</div>
							</div>
							<div class="row">
								<div class="col2"></div>
								<div class="col1"></div>
								<div class="col1"></div>
								<div class="col1"></div>
								<div class="col1"></div>
							</div>
						</div></li>
					<li><a class="color5" href="#">accessories</a>
						<div class="megapanel">
							<div class="row">
								<div class="col1">
									<div class="h_nav">
										<h4>shop</h4>
										<ul>
											<li><a href="women.html">new arrivals</a></li>
											<li><a href="women.html">men</a></li>
											<li><a href="women.html">women</a></li>
											<li><a href="women.html">accessories</a></li>
											<li><a href="women.html">kids</a></li>
											<li><a href="women.html">brands</a></li>
										</ul>
									</div>
								</div>
								<div class="col1">
									<div class="h_nav">
										<h4>help</h4>
										<ul>
											<li><a href="women.html">trends</a></li>
											<li><a href="women.html">sale</a></li>
											<li><a href="women.html">style videos</a></li>
											<li><a href="women.html">accessories</a></li>
											<li><a href="women.html">kids</a></li>
											<li><a href="women.html">style videos</a></li>
										</ul>
									</div>
								</div>
								<div class="col1">
									<div class="h_nav">
										<h4>my company</h4>
										<ul>
											<li><a href="women.html">trends</a></li>
											<li><a href="women.html">sale</a></li>
											<li><a href="women.html">style videos</a></li>
											<li><a href="women.html">accessories</a></li>
											<li><a href="women.html">kids</a></li>
											<li><a href="women.html">style videos</a></li>
										</ul>
									</div>
								</div>
								<div class="col1">
									<div class="h_nav">
										<h4>account</h4>
										<ul>
											<li><a href="women.html">login</a></li>
											<li><a href="women.html">create an account</a></li>
											<li><a href="women.html">create wishlist</a></li>
											<li><a href="women.html">my shopping bag</a></li>
											<li><a href="women.html">brands</a></li>
											<li><a href="women.html">create wishlist</a></li>
										</ul>
									</div>
								</div>
								<div class="col1">
									<div class="h_nav">
										<h4>my company</h4>
										<ul>
											<li><a href="women.html">trends</a></li>
											<li><a href="women.html">sale</a></li>
											<li><a href="women.html">style videos</a></li>
											<li><a href="women.html">accessories</a></li>
											<li><a href="women.html">kids</a></li>
											<li><a href="women.html">style videos</a></li>
										</ul>
									</div>
								</div>
								<div class="col1">
									<div class="h_nav">
										<h4>popular</h4>
										<ul>
											<li><a href="women.html">new arrivals</a></li>
											<li><a href="women.html">men</a></li>
											<li><a href="women.html">women</a></li>
											<li><a href="women.html">accessories</a></li>
											<li><a href="women.html">kids</a></li>
											<li><a href="women.html">style videos</a></li>
										</ul>
									</div>
								</div>
							</div>
							<div class="row">
								<div class="col2"></div>
								<div class="col1"></div>
								<div class="col1"></div>
								<div class="col1"></div>
								<div class="col1"></div>
							</div>
						</div></li>
					<li><a class="color6" href="#">kids</a>
						<div class="megapanel">
							<div class="row">
								<div class="col1">
									<div class="h_nav">
										<h4>shop</h4>
										<ul>
											<li><a href="women.html">new arrivals</a></li>
											<li><a href="women.html">men</a></li>
											<li><a href="women.html">women</a></li>
											<li><a href="women.html">accessories</a></li>
											<li><a href="women.html">kids</a></li>
											<li><a href="women.html">brands</a></li>
										</ul>
									</div>
								</div>
								<div class="col1">
									<div class="h_nav">
										<h4>help</h4>
										<ul>
											<li><a href="women.html">trends</a></li>
											<li><a href="women.html">sale</a></li>
											<li><a href="women.html">style videos</a></li>
											<li><a href="women.html">accessories</a></li>
											<li><a href="women.html">kids</a></li>
											<li><a href="women.html">style videos</a></li>
										</ul>
									</div>
								</div>
								<div class="col1">
									<div class="h_nav">
										<h4>my company</h4>
										<ul>
											<li><a href="women.html">trends</a></li>
											<li><a href="women.html">sale</a></li>
											<li><a href="women.html">style videos</a></li>
											<li><a href="women.html">accessories</a></li>
											<li><a href="women.html">kids</a></li>
											<li><a href="women.html">style videos</a></li>
										</ul>
									</div>
								</div>
								<div class="col1">
									<div class="h_nav">
										<h4>account</h4>
										<ul>
											<li><a href="women.html">login</a></li>
											<li><a href="women.html">create an account</a></li>
											<li><a href="women.html">create wishlist</a></li>
											<li><a href="women.html">my shopping bag</a></li>
											<li><a href="women.html">brands</a></li>
											<li><a href="women.html">create wishlist</a></li>
										</ul>
									</div>
								</div>
								<div class="col1">
									<div class="h_nav">
										<h4>my company</h4>
										<ul>
											<li><a href="women.html">trends</a></li>
											<li><a href="women.html">sale</a></li>
											<li><a href="women.html">style videos</a></li>
											<li><a href="women.html">accessories</a></li>
											<li><a href="women.html">kids</a></li>
											<li><a href="women.html">style videos</a></li>
										</ul>
									</div>
								</div>
								<div class="col1">
									<div class="h_nav">
										<h4>popular</h4>
										<ul>
											<li><a href="women.html">new arrivals</a></li>
											<li><a href="women.html">men</a></li>
											<li><a href="women.html">women</a></li>
											<li><a href="women.html">accessories</a></li>
											<li><a href="women.html">kids</a></li>
											<li><a href="women.html">style videos</a></li>
										</ul>
									</div>
								</div>
							</div>
							<div class="row">
								<div class="col2"></div>
								<div class="col1"></div>
								<div class="col1"></div>
								<div class="col1"></div>
								<div class="col1"></div>
							</div>
						</div></li>
					<li><a class="color7" href="#">brands</a>
						<div class="megapanel">
							<div class="row">
								<div class="col1">
									<div class="h_nav">
										<h4>shop</h4>
										<ul>
											<li><a href="women.html">new arrivals</a></li>
											<li><a href="women.html">men</a></li>
											<li><a href="women.html">women</a></li>
											<li><a href="women.html">accessories</a></li>
											<li><a href="women.html">kids</a></li>
											<li><a href="women.html">brands</a></li>
										</ul>
									</div>
								</div>
								<div class="col1">
									<div class="h_nav">
										<h4>help</h4>
										<ul>
											<li><a href="women.html">trends</a></li>
											<li><a href="women.html">sale</a></li>
											<li><a href="women.html">style videos</a></li>
											<li><a href="women.html">accessories</a></li>
											<li><a href="women.html">kids</a></li>
											<li><a href="women.html">style videos</a></li>
										</ul>
									</div>
								</div>
								<div class="col1">
									<div class="h_nav">
										<h4>my company</h4>
										<ul>
											<li><a href="women.html">trends</a></li>
											<li><a href="women.html">sale</a></li>
											<li><a href="women.html">style videos</a></li>
											<li><a href="women.html">accessories</a></li>
											<li><a href="women.html">kids</a></li>
											<li><a href="women.html">style videos</a></li>
										</ul>
									</div>
								</div>
								<div class="col1">
									<div class="h_nav">
										<h4>account</h4>
										<ul>
											<li><a href="women.html">login</a></li>
											<li><a href="women.html">create an account</a></li>
											<li><a href="women.html">create wishlist</a></li>
											<li><a href="women.html">my shopping bag</a></li>
											<li><a href="women.html">brands</a></li>
											<li><a href="women.html">create wishlist</a></li>
										</ul>
									</div>
								</div>
								<div class="col1">
									<div class="h_nav">
										<h4>my company</h4>
										<ul>
											<li><a href="women.html">trends</a></li>
											<li><a href="women.html">sale</a></li>
											<li><a href="women.html">style videos</a></li>
											<li><a href="women.html">accessories</a></li>
											<li><a href="women.html">kids</a></li>
											<li><a href="women.html">style videos</a></li>
										</ul>
									</div>
								</div>
								<div class="col1">
									<div class="h_nav">
										<h4>popular</h4>
										<ul>
											<li><a href="women.html">new arrivals</a></li>
											<li><a href="women.html">men</a></li>
											<li><a href="women.html">women</a></li>
											<li><a href="women.html">accessories</a></li>
											<li><a href="women.html">kids</a></li>
											<li><a href="women.html">style videos</a></li>
										</ul>
									</div>
								</div>
							</div>
							<div class="row">
								<div class="col2"></div>
								<div class="col1"></div>
								<div class="col1"></div>
								<div class="col1"></div>
								<div class="col1"></div>
							</div>
						</div></li>
					<li><a class="color8" href="#">trends</a>
						<div class="megapanel">
							<div class="row">
								<div class="col1">
									<div class="h_nav">
										<h4>shop</h4>
										<ul>
											<li><a href="women.html">new arrivals</a></li>
											<li><a href="women.html">men</a></li>
											<li><a href="women.html">women</a></li>
											<li><a href="women.html">accessories</a></li>
											<li><a href="women.html">kids</a></li>
											<li><a href="women.html">brands</a></li>
										</ul>
									</div>
								</div>
								<div class="col1">
									<div class="h_nav">
										<h4>help</h4>
										<ul>
											<li><a href="women.html">trends</a></li>
											<li><a href="women.html">sale</a></li>
											<li><a href="women.html">style videos</a></li>
											<li><a href="women.html">accessories</a></li>
											<li><a href="women.html">kids</a></li>
											<li><a href="women.html">style videos</a></li>
										</ul>
									</div>
								</div>
								<div class="col1">
									<div class="h_nav">
										<h4>my company</h4>
										<ul>
											<li><a href="women.html">trends</a></li>
											<li><a href="women.html">sale</a></li>
											<li><a href="women.html">style videos</a></li>
											<li><a href="women.html">accessories</a></li>
											<li><a href="women.html">kids</a></li>
											<li><a href="women.html">style videos</a></li>
										</ul>
									</div>
								</div>
								<div class="col1">
									<div class="h_nav">
										<h4>account</h4>
										<ul>
											<li><a href="women.html">login</a></li>
											<li><a href="women.html">create an account</a></li>
											<li><a href="women.html">create wishlist</a></li>
											<li><a href="women.html">my shopping bag</a></li>
											<li><a href="women.html">brands</a></li>
											<li><a href="women.html">create wishlist</a></li>
										</ul>
									</div>
								</div>
								<div class="col1">
									<div class="h_nav">
										<h4>my company</h4>
										<ul>
											<li><a href="women.html">trends</a></li>
											<li><a href="women.html">sale</a></li>
											<li><a href="women.html">style videos</a></li>
											<li><a href="women.html">accessories</a></li>
											<li><a href="women.html">kids</a></li>
											<li><a href="women.html">style videos</a></li>
										</ul>
									</div>
								</div>
								<div class="col1">
									<div class="h_nav">
										<h4>popular</h4>
										<ul>
											<li><a href="women.html">new arrivals</a></li>
											<li><a href="women.html">men</a></li>
											<li><a href="women.html">women</a></li>
											<li><a href="women.html">accessories</a></li>
											<li><a href="women.html">kids</a></li>
											<li><a href="women.html">style videos</a></li>
										</ul>
									</div>
								</div>
							</div>
							<div class="row">
								<div class="col2"></div>
								<div class="col1"></div>
								<div class="col1"></div>
								<div class="col1"></div>
								<div class="col1"></div>
							</div>
						</div></li>
					<li><a class="color9" href="#">sale</a>
						<div class="megapanel">
							<div class="row">
								<div class="col1">
									<div class="h_nav">
										<h4>shop</h4>
										<ul>
											<li><a href="women.html">new arrivals</a></li>
											<li><a href="women.html">men</a></li>
											<li><a href="women.html">women</a></li>
											<li><a href="women.html">accessories</a></li>
											<li><a href="women.html">kids</a></li>
											<li><a href="women.html">brands</a></li>
										</ul>
									</div>
								</div>
								<div class="col1">
									<div class="h_nav">
										<h4>help</h4>
										<ul>
											<li><a href="women.html">trends</a></li>
											<li><a href="women.html">sale</a></li>
											<li><a href="women.html">style videos</a></li>
											<li><a href="women.html">accessories</a></li>
											<li><a href="women.html">kids</a></li>
											<li><a href="women.html">style videos</a></li>
										</ul>
									</div>
								</div>
								<div class="col1">
									<div class="h_nav">
										<h4>my company</h4>
										<ul>
											<li><a href="women.html">trends</a></li>
											<li><a href="women.html">sale</a></li>
											<li><a href="women.html">style videos</a></li>
											<li><a href="women.html">accessories</a></li>
											<li><a href="women.html">kids</a></li>
											<li><a href="women.html">style videos</a></li>
										</ul>
									</div>
								</div>
								<div class="col1">
									<div class="h_nav">
										<h4>account</h4>
										<ul>
											<li><a href="women.html">login</a></li>
											<li><a href="women.html">create an account</a></li>
											<li><a href="women.html">create wishlist</a></li>
											<li><a href="women.html">my shopping bag</a></li>
											<li><a href="women.html">brands</a></li>
											<li><a href="women.html">create wishlist</a></li>
										</ul>
									</div>
								</div>
								<div class="col1">
									<div class="h_nav">
										<h4>my company</h4>
										<ul>
											<li><a href="women.html">trends</a></li>
											<li><a href="women.html">sale</a></li>
											<li><a href="women.html">style videos</a></li>
											<li><a href="women.html">accessories</a></li>
											<li><a href="women.html">kids</a></li>
											<li><a href="women.html">style videos</a></li>
										</ul>
									</div>
								</div>
								<div class="col1">
									<div class="h_nav">
										<h4>popular</h4>
										<ul>
											<li><a href="women.html">new arrivals</a></li>
											<li><a href="women.html">men</a></li>
											<li><a href="women.html">women</a></li>
											<li><a href="women.html">accessories</a></li>
											<li><a href="women.html">kids</a></li>
											<li><a href="women.html">style videos</a></li>
										</ul>
									</div>
								</div>
							</div>
							<div class="row">
								<div class="col2"></div>
								<div class="col1"></div>
								<div class="col1"></div>
								<div class="col1"></div>
								<div class="col1"></div>
							</div>
						</div></li>
					<li><a class="color10" href="contact.html">Contact</a>
						<div class="megapanel">
							<div class="row">
								<div class="col3">
									<div class="h_nav">
										<h4>contact us</h4>
									</div>
									<form class="contact">
										<label for="name">Name</label> <input id="name" type="text" />
										<label for="email">E-mail</label> <input id="email"
											type="text" /> <label for="message">Message</label>
										<textarea rows="8" id="message"></textarea>
										<input type="submit" value="Send" />
									</form>
								</div>
								<div class="col3"></div>
							</div>
						</div></li>
				</ul>
			</div>
		</div>
	</div>
	
		<!-- content -->
	<div class="container">
		<div class="main">
						<h2 class="panel-heading">
				<strong>Payment details</strong>
			</h2>

			<!-- 	<div class="form-group">Customer Registration</div> -->
			<form:form role="form" method="post" action="paymentDetails"
				modelAttribute="paymentDetails" class="form-horizontal">
				<fieldset>
					<div class="form-group">
						<div class="col-lg-3">
							<form:input type="hidden" class="form-control" path="id" />
							<form:errors path="id" cssClass="text-danger" />
							<br>
						</div>
					</div>

					<div class="form-group">

						<label for="ownerName" class="control-label col-lg-2 col-lg-2">Name:
						</label>
						<div class="col-lg-3">
							<form:input type="text" class="form-control" path="ownerName" />
							<form:errors path="ownerName" cssClass="text-danger" />
							<br>
						</div>
					</div>


					<div class="form-group" spellcheck="true">
						<label for="type" class="control-label col-lg-2 col-lg-2">Card
							type: </label>
						<div class="col-lg-3">
							<form:select path="type">
								<form:option value="" label="--Select value--" />
								<form:options items="${card}"/>
							</form:select>
						</div>
					</div>

					<div class="form-group">

						<label for="cardNumber" class="control-label col-lg-2 col-lg-2">Card
							number: </label>
						<div class="col-lg-3">
							<form:input type="cardNumber" class="form-control"
								path="cardNumber" />
							<form:errors path="cardNumber" cssClass="text-danger" />
						</div>
					</div>
					<div class="form-group">

						<label for="exipryDate" class="control-label col-lg-2 col-lg-2">Expiry
							date </label>
						<div class="col-lg-3">
							<form:input type="Date" class="form-control" path="exipryDate" />
							<form:errors path="exipryDate" cssClass="text-danger" />
						</div>
					</div>
					<div class="form-group">


						<label for="cvv" class="control-label col-lg-2 col-lg-2">cvv
						</label>
						<div class="col-lg-3">
							<form:input type="text" class="form-control" path="cvv" />
							<form:errors path="cvv" cssClass="text-danger" />
						</div>
					</div>
					<div class="form-group">

						<label for="street" class="control-label col-lg-2 col-lg-2">Street:
						</label>
						<div class="col-lg-3">
							<form:input type="text" class="form-control"
								path="billingAddress.street" />
							<form:errors path="billingAddress.street" cssClass="text-danger" />
						</div>
					</div>

					<div class="form-group">

						<label for="city" class="control-label col-lg-2 col-lg-2">City:
						</label>
						<div class="col-lg-3">
							<form:input type="text" class="form-control"
								path="billingAddress.city" />
							<form:errors path="billingAddress.city" cssClass="text-danger" />

						</div>
					</div>
					<div class="form-group">


						<label for="state" class="control-label col-lg-2 col-lg-2">State:
						</label>
						<div class="col-lg-3">
							<form:input type="text" class="form-control"
								path="billingAddress.state" />
							<form:errors path="billingAddress.state" cssClass="text-danger" />
						</div>
					</div>

					<div class="form-group">


						<label for="country" class="control-label col-lg-2 col-lg-2">Country:
						</label>
						<div class="col-lg-3">
							<form:input type="text" class="form-control"
								path="billingAddress.country" />

							<form:errors path="billingAddress.country" />
						</div>
					</div>

					<div class="form-group">


						<label for="zip" class="control-label col-lg-2 col-lg-2">Zip:
						</label>
						<div class="col-lg-3">
							<form:input type="text" class="form-control"
								path="billingAddress.zip" />

							<form:errors path="billingAddress.zip" cssClass="text-danger" />
						</div>
					</div>

					<div class="form-group">
						<div class="col-lg-offset-2 col-lg-10">
							<input type="submit" id="btnSumbit" class="btn btn-primary"
								value="Submit" />
						</div>
					</div>
				</fieldset>
			</form:form>
		</div>
	</div>
	
	
	
	
	
		<!-- footer_top -->
	<div class="footer_top">
		<div class="container">
			<div class="span_of_4">
				<div class="clearfix"></div>
			</div>
			<!-- start span_of_2 -->
			<div class="span_of_2">
				<div class="span1_of_2">
					<h5>
						need help? <a href="#">contact us <span> ></span>
						</a>
					</h5>
					<p>(or) Call us: +91-70-45022088</p>
				</div>
				<div class="span1_of_2">
					<h5>follow us</h5>
					<div class="social-icons">
						<ul>
							<li><a href="#" target="_blank"></a></li>
							<li><a href="#" target="_blank"></a></li>
							<li><a href="#" target="_blank"></a></li>
							<li><a href="#" target="_blank"></a></li>
							<li><a href="#" target="_blank"></a></li>
						</ul>
					</div>
				</div>
				<div class="clearfix"></div>
			</div>
		</div>
	</div>
	<!-- footer -->
	<div class="footer">
		<div class="container">
			<div class="copy">
				<p class="link">
					&copy; All rights reserved | Design by&nbsp; <a
						href="http://w3layouts.com/"> W3Layouts</a>
				</p>
			</div>
		</div>
	</div>
</body>
</html>