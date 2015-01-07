<%@ taglib uri="http://www.springframework.org/security/tags"
	prefix="sec"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>


<!DOCTYPE HTML>
<html>
<head>

<link href="resources/css/bootstrap.css" rel='stylesheet' type='text/css' />
<!-- jQuery (necessary JavaScript plugins) -->
<script type='text/javascript' src="js/jquery-1.11.1.min.js"></script>
<!-- Custom Theme files -->
<link href="resources/css/style.css" rel='stylesheet' type='text/css' />
<!-- Custom Theme files -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<!--webfont-->
<link href='http://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css'>
<!-- start menu -->
<link href="resources/css/megamenu.css" rel="stylesheet" type="text/css" media="all" />
<script type="text/javascript" src="js/megamenu.js"></script>
<script>$(document).ready(function(){$(".megamenu").megamenu();});</script>
<script src="js/menu_jquery.js"></script>
<link rel="stylesheet" href="resources/css/etalage.css">
<script src="js/jquery.etalage.min.js"></script>
<script>


			jQuery(document).ready(function($){
				alert("test");
				$('#etalage').etalage({
					thumb_image_width: 300,
					thumb_image_height: 400,
					source_image_width: 900,
					source_image_height: 1200,
					show_hint: true,
					click_callback: function(image_anchor, instance_id){
						alert('Callback example:\nYou clicked on an image with the anchor: "'+image_anchor+'"\n(in Etalage instance: "'+instance_id+'")');
					}
				});

			});
		</script>
<!-- the jScrollPane script -->
<script type="text/javascript" src="resources/js/jquery.jscrollpane.min.js"></script>
		<script type="text/javascript" id="sourcecode">
			$(function()
			{
				$('.scroll-pane').jScrollPane();
			});
		</script> 
		</head>
		
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
								<li><h3>shopping cart empty</h3>
									<a href=""></a></li>
								<li><p>
										if items in your wishlit are missing, <a href="">login to
											your account</a> to view them
									</p></li>
							</ul></li>
					</ul>
					<ul class="icon1 sub-icon1 profile_img">
						<li><a class="active-icon c1" href="#"> </a>
							<ul class="sub-icon1 list">
								<li><h3>wishlist empty</h3>
									<a href=""></a></li>
								<li><p>
										if items in your wishlit are missing, <a href="">login to
											your account</a> to view them
									</p></li>
							</ul></li>
					</ul>
					<div class="search">
						<form>
							<input type="text" value="" placeholder="search..."> <input
								type="submit" value="">
						</form>
					</div>
					<div class="clearfix"></div>
				</div>
				<!-- start header menu -->
				<ul class="megamenu skyblue">
					<li><a class="color1" href="<c:url value='/'/>">Home</a></li>
					<li class="grid"><a class="color2" href="<c:url value='/newArrivals'/>">new arrivals</a>
						</li>
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
		<div class="women_main">
			<!-- start content -->
			<div class="row single">
				<div class="col-md-9">
					<div class="single_left">
						<div class="grid images_3_of_2">
							
							<ul id="etalage" class="etalage">
							
								<li>
							
									<img class="etalage_magnifier" src="<c:url value="/resources/images/${product.name}.jpg"></c:url>" alt="image"  style = "height:500px;width:100%"/>
								
								</li>
					
			<%-- 		
					<li class ="etalage_small_thumbs style = "with:400px; hieght:410px;" >
					<ul>
					<li class="etalage_smallthumbs_navtostart">
					<img src="<c:url value="/resources/images/${product.name}.jpg"></c:url>" alt="image gize"  style = "width:100%"/> 				
					</li>
					
						<li class="etalage_smallthumbs_navtofirst">
					<img src="<c:url value="/resources/images/${product.name}.jpg"></c:url>" alt="image gize"  style = "width:100%"/> 				
					</li>
						<li class="etalage_smallthumbs_navtoactive">
					<img src="<c:url value="/resources/images/${product.name}.jpg"></c:url>" alt="image gize"  style = "width:100%"/> 				
					</li>
						<li class="etalage_smallthumbs_navtoend">
					<img src="<c:url value="/resources/images/${product.name}.jpg"></c:url>" alt="image gize"  style = "width:100%"/> 				
					</li>
					</ul>
					</li> --%>
								
							</ul>
							
							<div class="clearfix"></div>
						</div>
						<div class="desc1 span_3_of_2">
							<h3>${product.name}</h3>
							<p>${product.price}$		
								<a href="#">click for offer</a>
							</p>
							<div class="det_nav">
								<h4>related styles :</h4>
								<ul>
									
									<c:forEach var="realtedProduct" items="${productList}">
									<li>
									<a href="#">
										<img src="<c:url value="/resources/images/${realtedProduct.name}.jpg"></c:url>" alt="image gize"  style = "width:100%"/> 
									</a>
										<%-- <div class="col-md-3 grid1">
											<div class="content_box">
												<div class="view view-fifth">
													
											<img src="<c:url value="/resources/images/${realtedProduct.name}.jpg"></c:url>" alt="image gize"  style = "width:100%"/> 
								
													</div>
											</div>
<<<<<<< HEAD
										</div> --%>
										</li>
=======
										</div>
										
>>>>>>> branch 'dev' of https://github.com/saeedahmadi/OnlineBazzar
									</c:forEach>
									
								</ul>
							</div>
							<div class="det_nav1">
								<h4>Select a size :</h4>
								<div class=" sky-form col col-4">
									<ul>
										<li><label class="checkbox"><input
												type="checkbox" name="checkbox"><i></i>L</label></li>
										<li><label class="checkbox"><input
												type="checkbox" name="checkbox"><i></i>S</label></li>
										<li><label class="checkbox"><input
												type="checkbox" name="checkbox"><i></i>M</label></li>
										<li><label class="checkbox"><input
												type="checkbox" name="checkbox"><i></i>XL</label></li>
									</ul>
								</div>
							</div>
							<div class="btn_form">
								<a href="<c:url value='/product/addtocart/${product.id}' />">Add to cart</a>
							</div>
							<a href="#"><span>login to save in wishlist </span></a>

						</div>
						<div class="clearfix"></div>
					</div>
					<div class="single-bottom1">
						<h6>Details</h6>
						<p class="prod-desc">
						
						${product.productDetails}
						
						</p>
					</div>
				
					
					<div class="single-bottom1">
						<h6>Related Products</h6>
			
			
			<c:forEach var="realtedProduct" items="${productList}">
						<div class="product">
							<div class="product-desc">
								<div class="product-img">
								
								
								<a href="#">
										<img src="<c:url value="/resources/images/${realtedProduct.name}.jpg"></c:url>" alt="image gize"  style = "width:100%"/> 
									</a>
									
								</div>
								<div class="prod1-desc">
								
													<h5>
									<a class="product_link" href="#">${realtedProduct.name}</a>
									</h5>
								
									<p class="product_descr"> ${realtedProduct.productDetails} </p>
											<%-- <img src="<c:url value="/resources/images/${realtedProduct.name}.jpg"></c:url>" alt="image gize"  style = "width:100%"/>  --%>
								
													</div>
													<div class="clearfix">
													</div>
											</div>
											
											
											<div class="product_price">
								<span class="price-access">${product.price}$</span>								
								<button class="button1"><span>Add to cart</span></button>
		                  </div>
						 <div class="clearfix">
						 </div>
				     </div>
				     	</c:forEach>
		   		</div>
		   		
				</div>
				<div class="col-md-3">
					<div class="w_sidebar">
						<div class="w_nav1">
							<h4>All</h4>
							<ul>
								<li><a href="women.html">women</a></li>
								<li><a href="#">new arrivals</a></li>
								<li><a href="#">trends</a></li>
								<li><a href="#">boys</a></li>
								<li><a href="#">girls</a></li>
								<li><a href="#">sale</a></li>
							</ul>
						</div>
						<h3>filter by</h3>
						<section class="sky-form">
						<h4>catogories</h4>
						<div class="row1 scroll-pane">
							<div class="col col-4">
								<label class="checkbox"><input type="checkbox"
									name="checkbox" checked=""><i></i>kurtas</label>
							</div>
							<div class="col col-4">
								<label class="checkbox"><input type="checkbox"
									name="checkbox"><i></i>kutis</label> <label class="checkbox"><input
									type="checkbox" name="checkbox"><i></i>churidar kurta</label> <label
									class="checkbox"><input type="checkbox" name="checkbox"><i></i>salwar</label>
								<label class="checkbox"><input type="checkbox"
									name="checkbox"><i></i>printed sari</label> <label
									class="checkbox"><input type="checkbox" name="checkbox"><i></i>shree</label>
								<label class="checkbox"><input type="checkbox"
									name="checkbox"><i></i>Anouk</label> <label class="checkbox"><input
									type="checkbox" name="checkbox"><i></i>biba</label> <label
									class="checkbox"><input type="checkbox" name="checkbox"><i></i>fashion
									sari</label> <label class="checkbox"><input type="checkbox"
									name="checkbox"><i></i>fashion sari</label> <label
									class="checkbox"><input type="checkbox" name="checkbox"><i></i>fashion
									sari</label> <label class="checkbox"><input type="checkbox"
									name="checkbox"><i></i>fashion sari</label> <label
									class="checkbox"><input type="checkbox" name="checkbox"><i></i>fashion
									sari</label> <label class="checkbox"><input type="checkbox"
									name="checkbox"><i></i>fashion sari</label> <label
									class="checkbox"><input type="checkbox" name="checkbox"><i></i>fashion
									sari</label> <label class="checkbox"><input type="checkbox"
									name="checkbox"><i></i>fashion sari</label>
							</div>
						</div>
						
						</section>
						<section class="sky-form">
						<h4>brand</h4>
						<div class="row1 scroll-pane">
							<div class="col col-4">
								<label class="checkbox"><input type="checkbox"
									name="checkbox" checked=""><i></i>shree</label> <label
									class="checkbox"><input type="checkbox" name="checkbox"><i></i>Anouk</label>
								<label class="checkbox"><input type="checkbox"
									name="checkbox"><i></i>biba</label>
							</div>
							<div class="col col-4">
								<label class="checkbox"><input type="checkbox"
									name="checkbox"><i></i>vishud</label> <label class="checkbox"><input
									type="checkbox" name="checkbox"><i></i>amari</label> <label
									class="checkbox"><input type="checkbox" name="checkbox"><i></i>shree</label>
								<label class="checkbox"><input type="checkbox"
									name="checkbox"><i></i>Anouk</label> <label class="checkbox"><input
									type="checkbox" name="checkbox"><i></i>biba</label> <label
									class="checkbox"><input type="checkbox" name="checkbox"><i></i>shree</label>
								<label class="checkbox"><input type="checkbox"
									name="checkbox"><i></i>Anouk</label> <label class="checkbox"><input
									type="checkbox" name="checkbox"><i></i>biba</label> <label
									class="checkbox"><input type="checkbox" name="checkbox"><i></i>shree</label>
								<label class="checkbox"><input type="checkbox"
									name="checkbox"><i></i>Anouk</label> <label class="checkbox"><input
									type="checkbox" name="checkbox"><i></i>biba</label>
							</div>
						</div>
						</section>
						<section class="sky-form">
						<h4>colour</h4>
						<ul class="w_nav2">
							<li><a class="color1" href="#"></a></li>
							<li><a class="color2" href="#"></a></li>
							<li><a class="color3" href="#"></a></li>
							<li><a class="color4" href="#"></a></li>
							<li><a class="color5" href="#"></a></li>
							<li><a class="color6" href="#"></a></li>
							<li><a class="color7" href="#"></a></li>
							<li><a class="color8" href="#"></a></li>
							<li><a class="color9" href="#"></a></li>
							<li><a class="color10" href="#"></a></li>
							<li><a class="color12" href="#"></a></li>
							<li><a class="color13" href="#"></a></li>
							<li><a class="color14" href="#"></a></li>
							<li><a class="color15" href="#"></a></li>
							<li><a class="color5" href="#"></a></li>
							<li><a class="color6" href="#"></a></li>
							<li><a class="color7" href="#"></a></li>
							<li><a class="color8" href="#"></a></li>
							<li><a class="color9" href="#"></a></li>
							<li><a class="color10" href="#"></a></li>
						</ul>
						</section>
						<section class="sky-form">
						<h4>discount</h4>
						<div class="row1 scroll-pane">
							<div class="col col-4">
								<label class="radio"><input type="radio" name="radio"
									checked=""><i></i>60 % and above</label> <label class="radio"><input
									type="radio" name="radio"><i></i>50 % and above</label> <label
									class="radio"><input type="radio" name="radio"><i></i>40
									% and above</label>
							</div>
							<div class="col col-4">
								<label class="radio"><input type="radio" name="radio"><i></i>30
									% and above</label> <label class="radio"><input type="radio"
									name="radio"><i></i>20 % and above</label> <label class="radio"><input
									type="radio" name="radio"><i></i>10 % and above</label>
							</div>
						</div>
						</section>
					</div>
				</div>
				<div class="clearfix"></div>
			</div>
			</div>
			<!-- end content -->
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
