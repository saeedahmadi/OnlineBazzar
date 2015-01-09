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
						
						
					</div>
				</div>
	<!-- start content -->
	<%-- <div class="col-md-9 w_content">
		<div class="women">
			<a href="#"><h4>Enthecwear - <span>4449 itemms</span> </h4></a>
			<ul class="w_nav">
						<li>Sort : </li>
		     			<li><a class="active" href="#">popular</a></li> |
		     			<li><a href="#">new </a></li> |
		     			<li><a href="#">discount</a></li> |
		     			<li><a href="#">price: Low High </a></li> 
		     			<div class="clear"></div>	
		     </ul>
		     <div class="clearfix"></div>	
		</div>
		<!-- grids_of_4 -->
		<div class="grids_of_4">
			<c:forEach var="product" items="${productList}">
		  <div class="grid1_of_4">
				
			   
		
				<div class="content_box"><a href="details.html">
			   	  <div class="view view-fifth">
			   	   	 <img src="${product.url} " class="img-responsive" alt=""/>
				   	   	<div class="mask">
	                        <div class="info">Quick View</div>
			            </div>
				   	  </a>
				   </div>
				    <h4><a href="details.html"> ${product.name} </a></h4>
				     <p>It is a long established fact that a reader</p>
				    ${product.price} 
				    <a href="<c:url value='/product/addtocart/${product.id}' />" >Add TO Cart</a>
			   	</div>
				</c:forEach>
			</div>
			<div class="grid1_of_4">
				<div class="content_box"><a href="details.html">
			   	  <div class="view view-fifth">
			   	   	 <img src="images/w2.jpg" class="img-responsive" alt=""/>
				   	   	<div class="mask">
	                        <div class="info">Quick View</div>
			            </div>
				   	  </a>
				   </div>
				    <h4><a href="details.html"> Duis autem</a></h4>
				     <p>It is a long established fact that a reader</p>
				     Rs. 499
			   	</div>
			</div>
			<div class="grid1_of_4">
				<div class="content_box"><a href="details.html">
			   	  <div class="view view-fifth">
			   	   	 <img src="images/w3.jpg" class="img-responsive" alt=""/>
				   	   	<div class="mask">
	                        <div class="info">Quick View</div>
			            </div>
				   	  </a>
				   </div>
				    <h4><a href="details.html"> Duis autem</a></h4>
				     <p>It is a long established fact that a reader</p>
				     Rs. 499
			   	</div>
			</div>
			<div class="grid1_of_4">
				<div class="content_box"><a href="details.html">
			   	  <div class="view view-fifth">
			   	   	 <img src="images/w4.jpg" class="img-responsive" alt=""/>
				   	   	<div class="mask">
	                        <div class="info">Quick View</div>
			            </div>
				   	  </a>
				   </div>
				    <h4><a href="details.html"> Duis autem</a></h4>
				     <p>It is a long established fact that a reader</p>
				     Rs. 499
			   	</div>
			</div>
			<div class="clearfix"></div>
		</div>
		
		
		<div class="grids_of_4">
		  <div class="grid1_of_4">
				<div class="content_box"><a href="details.html">
			   	  <div class="view view-fifth">
			   	   	 <img src="images/w5.jpg" class="img-responsive" alt=""/>
				   	   	<div class="mask">
	                        <div class="info">Quick View</div>
			            </div>
				   	  </a>
				   </div>
				    <h4><a href="details.html"> Duis autem</a></h4>
				     <p>It is a long established fact that a reader</p>
				     Rs. 499
			   	</div>
			</div>
			<div class="grid1_of_4">
				<div class="content_box"><a href="details.html">
			   	  <div class="view view-fifth">
			   	   	 <img src="images/w6.jpg" class="img-responsive" alt=""/>
				   	   	<div class="mask">
	                        <div class="info">Quick View</div>
			            </div>
				   	  </a>
				   </div>
				    <h4><a href="details.html"> Duis autem</a></h4>
				     <p>It is a long established fact that a reader</p>
				     Rs. 499
			   	</div>
			</div>
			<div class="grid1_of_4">
				<div class="content_box"><a href="details.html">
			   	  <div class="view view-fifth">
			   	   	 <img src="images/w7.jpg" class="img-responsive" alt=""/>
				   	   	<div class="mask">
	                        <div class="info">Quick View</div>
			            </div>
				   	  </a>
				   </div>
				    <h4><a href="details.html"> Duis autem</a></h4>
				     <p>It is a long established fact that a reader</p>
				     Rs. 499
			   	</div>
			</div>
			<div class="grid1_of_4">
				<div class="content_box"><a href="details.html">
			   	  <div class="view view-fifth">
			   	   	 <img src="images/w8.jpg" class="img-responsive" alt=""/>
				   	   	<div class="mask">
	                        <div class="info">Quick View</div>
			            </div>
				   	  </a>
				   </div>
				    <h4><a href="details.html"> Duis autem</a></h4>
				     <p>It is a long established fact that a reader</p>
				     Rs. 499
			   	</div>
			</div>
			<div class="clearfix"></div>
		</div>
		
		 --%>
		<!-- end grids_of_4 -->
		
		
	</div>
	<div class="clearfix"></div>
	
	<!-- end content -->
</div>
</div>
