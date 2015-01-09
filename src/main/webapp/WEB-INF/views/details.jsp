<%@ taglib uri="http://www.springframework.org/security/tags"
	prefix="sec"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<link rel="stylesheet" type="text/css" href="/resources/css/cloudzoom.css" />
<script type="text/javascript" src="/resources/js/cloudzoom.js"></script>

	<!-- content -->
	<div class="container">
		<div class="women_main">
			<!-- start content -->
			<div class="row single">
				<div class="col-md-9">
					<div class="single_left">
						<div class="grid images_3_of_2">
							
							
								
									<img src="<c:url value="/resources/images/${product.name}.jpg"></c:url>" alt="image"  style = "width:100%"/>
								
								
					
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
										<a href="<c:url value="/details/${realtedProduct.id}"/>">
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
								
								
								<a href="<c:url value="/details/${realtedProduct.id}"/>">
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
								
							<a href="<c:url value='/product/addtocart/${product.id}' />">Add to cart</a>
								
		                  </div>
						 <div class="clearfix">
						 </div>
				     </div>
				     	</c:forEach>
		   		</div>
		   		
				</div>
				<div class="col-md-3">
					<div class="w_sidebar">
					
						
						
						<h3>filter by</h3>
						
							<!-- catogories -->
						<section class="sky-form">
						<h4>catogories</h4>
						
						<div class="row1 scroll-pane">
						<div class="col col-4">
						
						<c:forEach var="vendor" items="${vendorList}">
							<c:forEach var="catagories" items="${vendor.categories}">
										
								<label class="checkbox"><input type="checkbox"
									name="checkbox" checked=""><i></i>
									<a href="<c:url value='/product/category/${catagories.id}' />">${catagories.name}</a>
									
								</label>
										
										</c:forEach>
						
						</c:forEach>
						
						
							
							</div>
					
						</div>
						
						</section>
						
						
						
						
						
						<%-- <c:forEach var="category" items="${categoryList}">
									<div class="col1">
										<div class="h_nav">
											<h4>
												
											</h4>
										</div>
									</div>

								</c:forEach> --%>
						<!-- Brands -->
						
						
						<section class="sky-form">
						<h4>brand</h4>
						<div class="row1 scroll-pane">
							<div class="col col-4">
							<c:forEach var="vendor" items="${vendorList}">
							
								<label class="checkbox"><input type="checkbox"
									name="checkbox" checked=""><i></i>${vendor.name}</label> 
									</c:forEach>
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
	