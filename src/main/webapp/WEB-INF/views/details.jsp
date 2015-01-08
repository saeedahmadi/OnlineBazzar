<%@ taglib uri="http://www.springframework.org/security/tags"
	prefix="sec"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
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
							
									<img class="etalage_magnifier" src="<c:url value="/resources/images/${product.name}.jpg"></c:url>" alt="image"  style = "width:100%"/>
								
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
										</div> --%>
										</li>
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
								<a href="<c:url value='/product/addtocart/${product.id}' />">buy</a>
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
	