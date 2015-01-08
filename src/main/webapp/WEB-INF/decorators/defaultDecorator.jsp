<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://www.springframework.org/security/tags"
	prefix="sec"%>
<%@ page session="false" %>
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
<link href="<c:url value="/font-awesome.min.css"/>" rel='stylesheet'
	type='text/css' />

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
						<li><a href="shoppingCart">Cart(${fn:length(shoppingCart.items)})<i
									class="fa fa-shopping-cart"></i></a></li>|
						<li><a href="/onlinebazzar/UserRegisteration">Register</a></li>
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
					<a href="<c:url value='/'/>"><img
						src="resources/images/logo.png" alt="" /> </a>
				</div>
				<!-- start header_right -->
				<div class="header_right">
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
						href="<c:url value='/newArrivals'/>">New Arrivals</a></li>


					<li><a class="color7" href="#">brands</a>
						<div class="megapanel">
							<div class="row">
								<c:forEach var="vendor" items="${vendorList}">
									<div class="col1">
										<div class="h_nav">
											<h4>${vendor.name}</h4>
											<ul>




												<c:forEach var="catagories" items="${vendor.categories}">

													<li><a
														href="<c:url value='/product/vendorCategory/${vendor.id}/${catagories.id}' />">${catagories.name}</a></li>
												</c:forEach>

											</ul>
										</div>
									</div>

								</c:forEach>
							</div>
							<div class="row">
								<div class="col2"></div>
								<div class="col1"></div>
								<div class="col1"></div>
								<div class="col1"></div>
								<div class="col1"></div>
							</div>
						</div></li>
					<li><a class="color8" href="#">category</a>
						<div class="megapanel">
							<div class="row">
								<c:forEach var="category" items="${categoryList}">
									<div class="col1">
										<div class="h_nav">
											<h4>
												<a href="<c:url value='/product/catagory/${category.id}' />">${category.name}</a>

											</h4>
										</div>
									</div>

								</c:forEach>
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








	<div>
		<!--jsp:include page="common.jsp" -->
	</div>

	<div>
		<sitemesh:write property='body' />
	</div>

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
					&copy; All rights reserved &nbsp; <a
						href="http://w3layouts.com/"> OnlineBazzar 2015	</a>
				</p>
			</div>
		</div>
	</div>
    
  </body>
</html>
