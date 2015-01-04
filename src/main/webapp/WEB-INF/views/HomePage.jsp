<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>



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
                    <img src="resources/images/slider1.jpg" class="img-responsive" alt=""/>
                <!-- /Slide image -->
            </div>
            <!-- /Duplicate to create more slides -->
            <div class="slide">
                <img src="resources/images/slider2.jpg" class="img-responsive" alt=""/>
            </div>
            <div class="slide">
                <img src="resources/images/slider3.jpg" class="img-responsive" alt=""/>
            </div>
            <!--/slide -->
        </div>
        <div class="timers"></div>
        <div class="slidePrev"><span></span></div>
        <div class="slideNext"><span></span></div>
    </div>

	<!-- end  slider -->
		</div>
		<div class="col-md-3 sidebar">
		<div class="grid_list">
			<a href="details.html"> 
				<div class="grid_img"> 
					<img src="resources/images/grid_pic1.jpg" class="img-responsive" alt=""/>
				</div>
				<div class="grid_text left">
					<h3><a href="#">extra 35<sub>%</sub> off</a></h3>
					<p>on select merchandise</p>
				</div>
				<div class="clearfix"></div>
			</a>	
			</div>	
		<div class="grid_list">
			<a href="details.html"> 
				<div class="grid_text-middle">
					<h3><a href="#">celina unpluged</a></h3>
					<p>on select merchandise</p>
				</div>
				<div class="grid_img last"> 
					<img src="resources/images/grid_pic2.jpg" class="img-responsive" alt=""/>
				</div>
				<div class="clearfix"></div>
			  </a>
			</div>				
		<div class="grid_list"> 
			<a href="details.html">
				<div class="grid_img"> 
					<img src="resources/images/grid_pic3.jpg" class="img-responsive" alt=""/>
				</div>
				<div class="grid_text left">
					<h3><a href="#">active gear store</a></h3>
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
			<h4><a href="#">a touch of glamour </a></h4>
			<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here',</p>
		</div>
		<!-- grids_of_3 -->
		<div class="row grids">
		<c:forEach items="${products}" var="product">
        <div class="col-md-3 grid1">
			  <a href="details.html">
				<img src="${product.url}" class="img-responsive" alt=""/>
				<div class="look">			
					<h4>get scraves</h4>
					<p>read more</p>
				</div></a>
			</div>
    </c:forEach>
			<div class="col-md-3 grid1">
			  <a href="details.html">
				<img src="resources/images/pic1.jpg" class="img-responsive" alt=""/>
				<div class="look">			
					<h4>get scraves</h4>
					<p>read more</p>
				</div></a>
			</div>
			<div class="col-md-3 grid1">
			  <a href="details.html">
				<img src="resources/images/pic2.jpg" class="img-responsive" alt=""/>
				<div class="look">			
					<h4>Fashion Tips</h4>
					<p>read more</p>
				</div></a>
			</div>
			<div class="col-md-3 grid1">
			  <a href="details.html">
				<img src="resources/images/pic3.jpg" class="img-responsive" alt=""/>
				<div class="look">			
					<h4>Crop Levis</h4>
					<p>read more</p>
				</div></a>
			</div>
			<div class="col-md-3 grid1">
			  <a href="details.html">
				<img src="resources/images/pic4.jpg" class="img-responsive" alt=""/>
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
</div>
<!-- footer_top -->
<div class="footer_top">
 <div class="container">
	<div class="span_of_4">
		<div class="span1_of_4">
			<h4>Shop</h4>
			<ul class="f_nav">
				<li><a href="#">new arrivals</a></li>
				<li><a href="#">men</a></li>
				<li><a href="#">women</a></li>
				<li><a href="#">accessories</a></li>
				<li><a href="#">kids</a></li>
				<li><a href="#">brands</a></li>
				<li><a href="#">trends</a></li>
				<li><a href="#">sale</a></li>
				<li><a href="#">style videos</a></li>
			</ul>	
		</div>
		<div class="span1_of_4">
			<h4>help</h4>
			<ul class="f_nav">
				<li><a href="#">frequently asked  questions</a></li>
				<li><a href="#">men</a></li>
				<li><a href="#">women</a></li>
				<li><a href="#">accessories</a></li>
				<li><a href="#">kids</a></li>
				<li><a href="#">brands</a></li>
			</ul>				
			<h4 class="top">company name</h4>
			<ul class="f_nav">
				<li><a href="#">frequently asked  questions</a></li>
				<li><a href="#">men</a></li>
				<li><a href="#">women</a></li>
				<li><a href="#">accessories</a></li>
				<li><a href="#">kids</a></li>
				<li><a href="#">brands</a></li>
			</ul>	
		</div>
		<div class="span1_of_4">
			<h4>account</h4>
			<ul class="f_nav">
				<li><a href="#">login</a></li>
				<li><a href="#">create an account</a></li>
				<li><a href="#">create wishlist</a></li>
				<li><a href="#">my shopping bag</a></li>
				<li><a href="#">brands</a></li>
				<li><a href="#">create wishlist</a></li>
			</ul>
			<h4 class="top">style zone</h4>
			<ul class="f_nav">
				<li><a href="#">frequently asked  questions</a></li>
				<li><a href="#">men</a></li>
				<li><a href="#">women</a></li>
				<li><a href="#">accessories</a></li>
				<li><a href="#">kids</a></li>
				<li><a href="#">brands</a></li>
			</ul>				
		</div>
		<div class="span1_of_4">
			<h4>popular</h4>
			<ul class="f_nav">
				<li><a href="#">new arrivals</a></li>
				<li><a href="#">men</a></li>
				<li><a href="#">women</a></li>
				<li><a href="#">accessories</a></li>
				<li><a href="#">kids</a></li>
				<li><a href="#">brands</a></li>
				<li><a href="#">trends</a></li>
				<li><a href="#">sale</a></li>
				<li><a href="#">style videos</a></li>
				<li><a href="#">login</a></li>
				<li><a href="#">brands</a></li>
			</ul>			
		</div>
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
		<p class="link">&copy; All rights reserved | Design by&nbsp; <a href="http://w3layouts.com/"> W3Layouts</a></p>
	</div>
 </div>
</div>
