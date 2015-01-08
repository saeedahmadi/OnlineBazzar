<%@ taglib uri="http://www.springframework.org/security/tags"
	prefix="sec"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>


	<!-- content -->
	<div class="container">
		<div class="women_main">
			<!-- start sidebar -->
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
			<!-- start content -->
			<div class="col-md-9 w_content">
				<div class="women">
					<a href="#">
							Search Result- <span> number items</span>
						</h4>
					<ul class="w_nav">
						<li>Sort :</li>
						<li><a class="active" href="#">popular</a></li> |
						<li><a href="#">new </a></li> |
						<li><a href="#">discount</a></li> |
						<li><a href="#">price: Low High </a></li>
						<div class="clear"></div>
					</ul>
					<div class="clearfix"></div>
				</div>
				
				
				
				<!-- grids_of_4 -->
				<c:forEach var="product" items="${productList}">
				<div class="grids_of_4">
					
					
						<div class="grid1_of_4">



							<div class="content_box">
								
									<a href="<c:url value="/details/${product.id}"/>">
									<div class="view view-fifth">
										
										
							<img src="<c:url value="/resources/images/${product.name}.jpg"></c:url>" alt="image" width="263px" height="340px"  class="img-responsive"/>
								
										
										<div class="mask">
											<div class="info">Quick View</div>
										</div>
								</a>
							</div>
							<h4>
								<a href="<c:url value="/details/${product.id}"/>">${product.name} </a>
							</h4>
							<p>${product.productDetails}</p>
							${product.price}$ <a
								href="<c:url value='/product/addtocart/${product.id}' />">Add
								TO Cart</a>
					
					
						</div>
				</div>
				
				</c:forEach>
				
		
	<!-- end grids_of_4 -->


	</div>
	<div class="clearfix"></div>

	<!-- end content -->
	</div>
	</div>
	