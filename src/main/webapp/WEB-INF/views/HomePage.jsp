<%@ taglib uri="http://www.springframework.org/security/tags"
	prefix="sec"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<link href="<c:url value="/font-awesome.min.css"/>" rel='stylesheet'
	type='text/css' />
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

					<sec:authorize access="hasRole('ROLE_CUSTOMER')">
						<li><a href="<c:url value="/customer/edit"/>">Manage
								Profile</a></li>|
						<li><a href="<c:url value="/addToCart"/>">Add to cart</a></li>|
						<li><a href="<c:url value="j_spring_security_logout"/>">Logout</a></li>
					</sec:authorize>

					<sec:authorize access="hasRole('ROLE_ADMIN')">
						<li><a href="<c:url value="/customer/edit"/>">Manage
								Profile</a></li>|						
						<li><a href="<c:url value="j_spring_security_logout"/>">Logout</a></li>
					</sec:authorize>

					<sec:authorize access="hasRole('ROLE_VADMIN')">
						<li><a href="<c:url value="/customer/edit"/>">Manage
								Profile</a></li>|						
						<li><a href="<c:url value="j_spring_security_logout"/>">Logout</a></li>
					</sec:authorize>

					<sec:authorize access="isAnonymous()">
						<li><a href="#">Recently viewed</a></li>|
						<li><a href="contact.html">Contact</a></li>|
						<li><a href="login">Signin</a></li>|
						<li><a href="shoppingCart">${fn:length(shoppingCart.items)}<i
								class="fa fa-shopping-cart"></i></a></li>|
						<li><a href="./userRegister">Register</a></li>|
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
					</sec:authorize>

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
				<a href="HomePage.jsp"><img src="resources/images/logo.png"
					alt="" /> </a>
			</div>
			<!-- start header_right -->
			<div class="header_right">
				<div class="create_btn">
					<a class="arrow"
						href="http://localhost:8080/onlinebazzar/userRegister">create
						account <img src="resources/images/right_arrow.png" alt="" />
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
				<li class="grid"><a class="color2" href="#">new arrivals</a>
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
									<label for="email">E-mail</label> <input id="email" type="text" />
									<label for="message">Message</label>
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
		<div class="row content_top">
			<div class="col-md-9 content_left">
				<!-- start slider -->
				<div id="fwslider">
					<div class="slider_container">
						<div class="slide">
							<!-- Slide image -->
							<img src="resources/images/slider1.jpg" class="img-responsive"
								alt="" />
							<!-- /Slide image -->
						</div>
						<!-- /Duplicate to create more slides -->
						<div class="slide">
							<img src="resources/images/slider2.jpg" class="img-responsive"
								alt="" />
						</div>
						<div class="slide">
							<img src="resources/images/slider3.jpg" class="img-responsive"
								alt="" />
						</div>
						<!--/slide -->
					</div>
					<div class="timers"></div>
					<div class="slidePrev">
						<span></span>
					</div>
					<div class="slideNext">
						<span></span>
					</div>
				</div>

				<!-- end  slider -->
			</div>
			<div class="col-md-3 sidebar">
				<div class="grid_list">
					<a href="details.html">
						<div class="grid_img">
							<img src="resources/images/grid_pic1.jpg" class="img-responsive"
								alt="" />
						</div>
						<div class="grid_text left">
							<h3>
								<a href="#">extra 35<sub>%</sub> off
								</a>
							</h3>
							<p>on select merchandise</p>
						</div>
						<div class="clearfix"></div>
					</a>
				</div>
				<div class="grid_list">
					<a href="details.html">
						<div class="grid_text-middle">
							<h3>
								<a href="#">celina unpluged</a>
							</h3>
							<p>on select merchandise</p>
						</div>
						<div class="grid_img last">
							<img src="resources/images/grid_pic2.jpg" class="img-responsive"
								alt="" />
						</div>
						<div class="clearfix"></div>
					</a>
				</div>
				<div class="grid_list">
					<a href="details.html">
						<div class="grid_img">
							<img src="resources/images/grid_pic3.jpg" class="img-responsive"
								alt="" />
						</div>
						<div class="grid_text left">
							<h3>
								<a href="#">active gear store</a>
							</h3>
							<p>shop now</p>
						</div>
						<div class="clearfix"></div>
					</a>
				</div>
			</div>
			<div class="clearfix"></div>
		</div>
		<!-- start content -->
		<div class="content">
			<div class="content_text">
				<h3>brand of the week</h3>
				<h4>
					<a href="#">a touch of glamour </a>
				</h4>
				<p>
					It is a long established fact that <i class="fa fa-shopping-cart"></i>
					a reader will be distracted by the readable content of a page when
					looking at its layout. The point of using Lorem Ipsum is that it
					has a more-or-less normal distribution of letters, as opposed to
					using 'Content here, content here',
				</p>

			</div>
			<!-- grids_of_3 -->
			<div class="row grids">
				<div class="col-md-3 grid1">
					<a href="details.html"> <img src="resources/images/pic1.jpg"
						class="img-responsive" alt="" />
						<div class="look">
							<h4>get scraves</h4>
							<p>read more</p>
						</div></a>
				</div>
				<div class="col-md-3 grid1">
					<a href="details.html"> <img src="resources/images/pic2.jpg"
						class="img-responsive" alt="" />
						<div class="look">
							<h4>Fashion Tips</h4>
							<p>read more</p>
						</div></a>
				</div>
				<div class="col-md-3 grid1">
					<a href="details.html"> <img src="resources/images/pic3.jpg"
						class="img-responsive" alt="" />
						<div class="look">
							<h4>Crop Levis</h4>
							<p>read more</p>
						</div></a>
				</div>
				<div class="col-md-3 grid1">
					<a href="details.html"> <img src="resources/images/pic4.jpg"
						class="img-responsive" alt="" />
						<div class="look">
							<h4>get scraves</h4>
							<p>read more</p>
						</div></a>
				</div>
			</div>
			<!-- end grids_of_3 -->
		</div>
		<!-- end content -->
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
			<h5>need help? <a href="#">contact us <span> ></span> </a> </h5>
			<p>(or) Call us: +91-70-45022088</p>
		</div>
		<div class="span1_of_2">
			<h5>follow us </h5>
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
