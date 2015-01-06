<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>

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
	<%@ taglib uri="http://www.springframework.org/security/tags"
		prefix="sec"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

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
						<sec:authorize access="hasRole('ROLE_VADMIN')">
						<li><a href="<c:url value="/vendor/edit"/>">Manage Profile</a></li>|						
						<li><a href="<c:url value="j_spring_security_logout"/>">Logout</a></li>
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
					<a href="index.html"><img src="resources/images/logo.png"
						alt="" /> </a>
				</div>
				<!-- start header_right -->
				<div class="header_right">
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
					<li><a class="color1" href="<c:url value='/vendorPanel'/>">Home</a></li>
					<li class="grid"><a class="color2" href="#">Manage Staff</a>
						<div class="megapanel">
							<div class="row">
								<div class="col1">
									<div class="h_nav">
										<h4>shop</h4>
										<ul>
											<li><a href="<c:url value='/vendor/user/add' />">Add Vendor Users</a></li>
											<li><a href="<c:url value='/vendor/vusers' />">Manage Users</a></li>											
										</ul>
									</div>
								</div>
							</div>
						</div></li>
					<li class="active grid"><a class="color4" href="#">Manage Product</a>
						<div class="megapanel">
							<div class="row">
								<div class="col1">
									<div class="h_nav">
										<h4>shop</h4>
										<ul>											
											<li><a href="<c:url value='/vendor/product/add' />">Add Products</a></li>
											<li><a href="<c:url value=''/>">Manage Products</a></li>
										</ul>
									</div>
								</div>
							</div>
						</div></li>					
				</ul>
			</div>
		</div>
	</div>
	<div>
		<sitemesh:write property='body' />
	</div>

</body>
</html>
</html>
