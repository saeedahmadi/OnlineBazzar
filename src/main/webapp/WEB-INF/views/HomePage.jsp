<%@ taglib uri="http://www.springframework.org/security/tags"
	prefix="sec"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<link href="<c:url value="/font-awesome.min.css"/>" rel='stylesheet'
	type='text/css' />


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
				<c:forEach var="product" items="${productList}">

					<div class="col-md-3 grid1">
					
								<a href="<c:url value="/details/${product.id}"/>"> 
							
					<img src="<c:url value="/resources/images/${product.name}.jpg"></c:url>" alt="image" width="263px" height="340px"  class="img-responsive"/>
					
						<%--  <div class="content_box">
							<a href="<c:url value="/details/${product.id} "/>">
								<div class="view view-fifth">
									
									
									
									<img src="${product.url} " class="img-responsive" alt="" />
									<div class="mask">
										<div class="info">Quick View</div>
									</div>
								</div>
							</a>
						</div>  --%>

						<div class="look">
							<h4>
							get scarvs
							</h4>
							<p>read more</p>
						</div>
						</a>
					</div>
				</c:forEach>

			</div>
			<!-- end grids_of_3 -->
		</div>
</div>
		<!-- end content -->
	</div>
	