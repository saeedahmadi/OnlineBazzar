<%@ taglib uri="http://www.springframework.org/security/tags"
	prefix="sec"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

	<div class="container">
		<div class="main">
			<div class="shoping_bag">
				<h4>
					<img src="images/bag1.png">my shopping bag / <span> 11
						item</span>
				</h4>
				<ul class="s_art">
					<li><img src="images/art1.png"></li>
					<li><span> 11 item</span></li>
				</ul>
				<div class="clearfix"></div>
			</div>
			<div class="shoping_bag1">
				<div class="shoping_left">


					<c:forEach var="lineitem" items="${shoppingCart.items}">
						<div class="shoping1_of_1">
							<img src= "${lineitem.product.url}" class="img-responsive" alt="" />
						</div>
						<div class="shoping1_of_2">
							<h4>
								<a href="#">${lineitem.product.name }</a>
							</h4>
							<span>size <b>xl</b>&nbsp;&nbsp; QTY<b>&nbsp;&nbsp;
									${lineitem.quantity }</b> | code :1175
							</span>
							<!-- <ul class="s_icons">
					<li><a href="#"><img src="images/s_icon1.png" alt=""></a></li>
					<li><a href="#"><img src="images/s_icon2.png" alt=""></a></li>
					<li><a href="#"><img src="images/s_icon3.png" alt=""></a></li>
				</ul>
 -->
						</div>
						<div class="clearfix"></div>
				</div>
				<div class="shoping_right">
					<p>
						35% off &nbsp;<span> ${lineitem.price} </span>
					</p>
				</div>
				<div class="clearfix"></div>
				</c:forEach>
			</div>

			<div class="shoping_bag1">
				<div class="shoping_left">
					<h2>
						<a href="#"><img src="images/login.jpg">login </a> <span>
							to apply coupons</span>
					</h2>
				</div>
				<div class="shoping_right">
					<p>
						coupon discount &nbsp;<span class="color"> Rs. 0</span>
					</p>
				</div>
				<div class="clearfix"></div>
			</div>
			<div class="shoping_bag2">
				<div class="shoping_left">
					<a class="btn1" href="paymentInput">place order</a>
				</div>
				<div class="shoping_right">
					<p class="tot">
						total &nbsp;<span class="color"> ${shoppingCart.price} </span>
					</p>

				</div>
				<div class="clearfix"></div>
			</div>
		</div>
	</div>
	