<%@ taglib uri="http://www.springframework.org/security/tags"
	prefix="sec"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

	<div class="container">
		<div class="main">
			<div class="shoping_bag">
				<h4>
					Shopping Lists / <span> ${fn:length(shoppingCart.items)}
						item</span>
				</h4>
				<ul class="s_art">
					
					<li><span> ${fn:length(shoppingCart.items)} items</span></li>
				</ul>
				<div class="clearfix"></div>
			</div>
			<c:forEach var="lineitem" items="${shoppingCart.items}" varStatus="countId">
			<div class="shoping_bag1">
				<div class="shoping_left">


					
						<div class="shoping1_of_1">
							
							<a href="<c:url value="/details/${lineitem.product.id}"/>">
							<img src="<c:url value="/resources/images/${lineitem.product.name}.jpg" ></c:url>" class="img-responsive" alt=""/> 
							<a class="href" href="/onlinebazzar/shoppingCart/delete/${countId.index }">Remove</a>
						</a>
						</div>
						<div class="shoping1_of_2">
							<h4>
									<a href="<c:url value="/details/${lineitem.product.id}"/>">${lineitem.product.name }</a>
							</h4>
							<span>size <b>xl</b>&nbsp;&nbsp; QTY<b>&nbsp;&nbsp;
									${lineitem.quantity }</b> 
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
						${lineitem.product.onSale}% off &nbsp;<span> ${lineitem.price} </span>
					</p>
				</div>
				<div class="clearfix"></div>
			
			</div>
	</c:forEach>
			<div class="shoping_bag1">
				
				<div class="shoping_right">
					<p>
						coupon discount &nbsp;<span class="color"> $. 0</span>
					</p>
				</div>
				<div class="clearfix"></div>
			</div>
			<div class="shoping_bag2">
				<div class="shoping_left">
					<a class="btn1" href="paymentInput">Place Order</a>
					<a class="btn1" href="/onlinebazzar/clearCart">Clear Cart</a>
				</div>
				<div class="shoping_left">
					
				</div>
				<div class="shoping_right">
					<p class="tot">
						total &nbsp;<span class="color"> ${shoppingCart.price} $ </span>
					</p>

				</div>
				<div class="clearfix"></div>
			</div>
			
			
		</div>
	</div>
	