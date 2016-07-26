<!DOCTYPE html>
<html lang="en">
<head>
<title>节操在这里!!</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="icon" href="img/favicon.ico" type="image/x-icon">
<link rel="shortcut icon" href="img/favicon.ico" type="image/x-icon" />
<meta name="description" content="Your description">
<meta name="keywords" content="Your keywords">
<meta name="author" content="Your name">
<#include "linkcss.ftl"> 
</head>
<body class="home-page stretched page-grey">
	<div id="wrapper">
		<!--==============================header=================================-->
		<div class="header-block clearfix"  style="border-top: 0px;">
			<!-- open close panel -->
				<#include "openClosePanel.ftl"> 
			<!-- open close panel -->
			
			<!-- topbar -->
			<#include "topbar.ftl"> 
			<!-- topbar  end  -->
			<!-- Logo & Navigation -->
				<#include "top.ftl"> 
				
			<!-- Logo & Navigation  end -->
		</div>
		<!--============================== Slider =================================-->
		<#include "hidetop.ftl"> 
		<!--==============================content=================================-->
		<section id="content">
			<div class="container">
				<div class="row">
					<div class="title2">
						<h4 class="indent-1 extra" >文档分类</h4>
					</div>
					
					<div class="span4">
						<ul class="list-style-2">
							<#list docTypes as item>
								<li class="arrow-list-2"><a href="#">${item.displayName}</a></li>
								<#if item_index = 7>
									<#break>
								</#if>
							</#list>
					
						</ul>

					</div>
					<div class="span4">
						<ul class="list-style-2">
							<#list docTypes as item>
								<#if (item_index > 7)>
									<li class="arrow-list-2"><a href="#">${item.displayName}</a></li>
								</#if>
								
								<#if item_index = 15>
									<#break>
								</#if>
							</#list>
						</ul>
					</div>
					<div class="span4">
						<ul class="list-style-2">
						<#list docTypes as item>
								<#if (item_index > 15)>
									<li class="arrow-list-2"><a href="#">${item.displayName}</a></li>
								</#if>
								
								<#if item_index = 22>
									<#break>
								</#if>
							</#list>
							<li class="arrow-list-2"><a href="#">更多</a></li>
						</ul>
					</div>
				</div>
			</div>
			<div class="design-section">
				<div class="container right-line">
					<div class="row">
						<div id="mySliderTabsContainer">
							<!-- Sample slider -->
							<div id="mySliderTabs">
								<ul class="left-tab-links">
									<li><a href="#step1" class="cn_item">About Success</a></li>
									<li><a href="#step2" class="cn_item">Features</a></li>
									<li><a href="#step3" class="cn_item">Work with us</a></li>
									<li><a href="#step4" class="cn_item">What we Offers</a></li>
									<li><a href="#step5" class="cn_item">Price List</a></li>
									<li><a href="#step6" class="cn_item">Conact Us</a></li>
								</ul>
								<div id="step1">
									<div class="row">
										<article class="span4">
											<h2 class="indent-1 extra">What we do</h2>
											<div class="img-border">
												<img src="img/page1-img12.jpg" alt="">
											</div>
											<p class="p-full">Excepteur tempor incididunt ut labore
												et dolore magna aliqua. Ut enim ad minim veniam, quis
												nostrud exercitation ullamco laboris nisi ut aliquip ex ea
												commodo consequat. Duis aute irure dolor.</p>
											<p class="p-full">Euis aute irure dolor in reprehenderit
												in voluptate velit esse nostrud exercitation ullamco laboris
												cillum dolore eu fugiat nulla pariatur.</p>
											<a href="#" class="link-1">See all news</a>
										</article>
										<article class="span5">
											<h2 class="border-h indent-1 extra">Latest news</h2>
											<ul class="list-blog">
												<li>
													<div class="img-border">
														<img alt="" src="img/page1-img5.jpg">
													</div>
													<div class="overlow extra">
														<div class="date-1">
															<time datetime="2012-02-02">DEC 23, 2012</time>
														</div>
														<p>Eiusmod tempor labore et dolore magna aliqua.</p>
														<a href="#" class="btn-3 btn">Read more</a>
													</div>
												</li>
												<li>
													<div class="img-border">
														<img alt="" src="img/page1-img6.jpg">
													</div>
													<div class="overlow extra">
														<div class="date-1">
															<time datetime="2012-02-02">DEC 23, 2012</time>
														</div>
														<p>Eiusmod tempor labore et dolore magna aliqua.</p>
														<a href="#" class="btn-3 btn">Read more</a>
													</div>
												</li>
											</ul>
										</article>
									</div>
								</div>
								<div id="step2">
									<ul class="thumbnails thumbnails_2">
										<li class="span3">
											<div class="thumbnail_2">
												<i class="fontawesome-icon medium circle-yes icon-laptop"></i>
												<div>
													<h2>Easy to customize</h2>
													<p class="p0">Lorem ipsum dolor sit amet, conse ctetuer
														adipiscing elit, sed euismodt dolor sit amet. Suspendisse
														id mi eget diam condimentum aliquet.</p>
												</div>
											</div>
										</li>
										<li class="span3">
											<div class="thumbnail_2">
												<i
													class="fontawesome-icon medium circle-yes icon-fullscreen"></i>
												<div>
													<h2>Responsive Layout</h2>
													<p class="p0">Lorem ipsum dolor sit amet, conse ctetuer
														adipiscing elit, sed euismodt dolor sit amet. Suspendisse
														id mi eget diam condimentum aliquet.</p>
												</div>
											</div>
										</li>
										<li class="span3">
											<div class="thumbnail_2">
												<i class="fontawesome-icon medium circle-yes icon-random"></i>
												<div>
													<h2>Clean Design</h2>
													<p class="p0">Lorem ipsum dolor sit amet, conse ctetuer
														adipiscing elit, sed euismodt dolor sit amet. Suspendisse
														id mi eget diam condimentum aliquet.</p>
												</div>
											</div>
										</li>
										<li class="span3">
											<div class="thumbnail_2">
												<i
													class="fontawesome-icon medium circle-yes icon-text-width"></i>
												<div>
													<h2>Google Fonts</h2>
													<p class="p0">Lorem ipsum dolor sit amet, conse ctetuer
														adipiscing elit, sed euismodt dolor sit amet. Suspendisse
														id mi eget diam condimentum aliquet.</p>
												</div>
											</div>
										</li>
										<li class="span3">
											<div class="thumbnail_2">
												<i
													class="fontawesome-icon medium circle-yes icon-text-width"></i>
												<div>
													<h2>Google Fonts</h2>
													<p class="p0">Lorem ipsum dolor sit amet, conse ctetuer
														adipiscing elit, sed euismodt dolor sit amet. Suspendisse
														id mi eget diam condimentum aliquet.</p>
												</div>
											</div>
										</li>
										<li class="span3">
											<div class="thumbnail_2">
												<i
													class="fontawesome-icon medium circle-yes icon-text-width"></i>
												<div>
													<h2>Google Fonts</h2>
													<p class="p0">Lorem ipsum dolor sit amet, conse ctetuer
														adipiscing elit, sed euismodt dolor sit amet. Suspendisse
														id mi eget diam condimentum aliquet.</p>
												</div>
											</div>
										</li>
									</ul>
								</div>
								<div id="step3">
									<div class="row">
										<div class="span3">
											<div class="hiring">
												<h4>&mdash; Wordpress Jobs &mdash;</h4>
												<p>Lorem ipsum dolor sit amet, consectetuer adipiscing
													elit, sed diam nonummy nibh eui Nam condimentum ante sed
													tellus dictum non feugiat purus imperdiet. Proin tellus,
													placerat facilisis, mollis ac erat.</p>
												<a class="btn btn-large btn-inverse" href="#"><i
													class="icon-hand-right icon-white"></i> Apply Now</a>
											</div>
										</div>
										<div class="span3">
											<div class="hiring">
												<h4>&mdash; Joomla Jobs &mdash;</h4>
												<p>Lorem ipsum dolor sit amet, consectetuer adipiscing
													elit, sed diam nonummy nibh eui Nam condimentum ante sed
													tellus dictum non feugiat purus imperdiet. Proin tellus,
													placerat facilisis, mollis ac erat.</p>
												<a class="btn btn-large btn-info" href="#"><i
													class="icon-hand-right icon-white"></i> Apply Now</a>
											</div>
										</div>
										<div class="span3">
											<div class="hiring">
												<h4>&mdash; We Are Hiring &mdash;</h4>
												<p>Lorem ipsum dolor sit amet, consectetuer adipiscing
													elit, sed diam nonummy nibh eui Nam condimentum ante sed
													tellus dictum non feugiat purus imperdiet. Proin tellus,
													placerat facilisis, mollis ac erat.</p>
												<a class="btn btn-large btn-success" href="#"><i
													class="icon-hand-right icon-white"></i> Apply Now</a>
											</div>
										</div>
									</div>
								</div>
								<div id="step4">
									<div class="row">
										<article class="span9">
											<h2>What We Offers</h2>
											<div id="accordion">
												<a> <span>Success Is Fully Translation Ready!</span></a>
												<div class="accordion-wrapper">
													<p>Sed ut perspiciatis unde omnis iste natus error sit
														voluptatem doloremque laudantium, totam rem aperiam, eaque
														ipsa quae ab illo inventore.</p>
													<p>adipisci velit, sed quia non numquam eius modi
														tempora incidunt ut labore et dolore magnam aliquam
														quaerat voluptatem.</p>
												</div>
												<a><span>Amazing Page Builder!</span></a>
												<div class="accordion-wrapper">
													<p>Sed ut perspiciatis unde omnis iste natus error sit
														voluptatem accusantium doloremque laudantium, totam rem
														aperiam, eaque ipsa quae ab illo inventore veritatis et
														quasi architecto beatae vitae dicta sunt explicabo.</p>
													<p>adipisci velit, sed quia non numquam eius modi
														tempora incidunt ut labore et dolore magnam aliquam
														quaerat voluptatem.</p>
												</div>
												<a><span>Unlimited Number of Sliders</span></a>
												<div class="accordion-wrapper">
													<p>Sed ut perspiciatis unde omnis iste natus error sit
														voluptatem accusantium doloremque laudantium, totam rem
														aperiam, eaque ipsa quae ab illo inventore veritatis et
														quasi architecto beatae vitae dicta sunt explicabo.</p>
												</div>
												<a><span>Unlimited Accent Colors</span></a>
												<div class="accordion-wrapper">
													<p>Sed ut perspiciatis unde omnis iste natus error sit
														voluptatem accusantium doloremque laudantium, totam rem
														aperiam, eaque ipsa quae ab illo inventore veritatis et
														quasi architecto beatae vitae dicta sunt explicabo.</p>
												</div>
											</div>
											<div class="clear"></div>
										</article>
									</div>
								</div>
								<div id="step5">
									<div class="row">
										<div class="span9">
											<div class="indent-3" id="3pricelist">
												<div class="price-table price-table-three">
													<div class="price-column  price-column-first">
														<h4>First</h4>
														<ul>
															<li class="first">
																<div class="price-tag">
																	<span class="price-value">$9</span><span
																		class="price-period">/ month</span>
																</div>
															</li>
															<li><strong>1</strong> User</li>
															<li><strong>3</strong> Theme Templates only</li>
															<li><strong>100MB</strong> Storage</li>
															<li class="last"><a class="button" href="#">Sign
																	Up</a></li>
														</ul>
													</div>
													<div class="price-column price-column-featured">
														<h4>Third</h4>
														<ul>
															<li class="first">
																<div class="price-tag">
																	<span class="price-value">$24</span><span
																		class="price-period">/ month</span>
																</div>
															</li>
															<li><strong>5</strong> User</li>
															<li><strong>Unlimited</strong> Templates</li>
															<li><strong>500MB</strong> Storage</li>
															<li class="last"><a class="button" href="#">Sign
																	Up</a></li>
														</ul>
													</div>
													<div class="price-column  price-column-last">
														<h4>Fifth</h4>
														<ul>
															<li class="first">
																<div class="price-tag">
																	<span class="price-value">$199</span><span
																		class="price-period">/ month</span>
																</div>
															</li>
															<li><strong>60</strong> User</li>
															<li><strong>Unlimited</strong> Templates</li>
															<li><strong>4GB</strong> Storage</li>
															<li class="last"><a class="button" href="#">Sign
																	Up</a></li>
														</ul>
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>
								<div id="step6">
									<div class="row">
										<div class="span9">
											<h2>Contact Form</h2>
										</div>
										<div class="span3">
											<address>
												<h5>Our Address</h5>
												<strong>Envato Melbourne, <br> Little Lonsdale
													St, Melbourne <br> Rutrum faucibus road.
												</strong> <span>Mobile:</span>+1 100 123 6580<br> <span>Telephone:</span>+1
												100 123 6580<br> <span>FAX:</span>+1 100 123 6580 <br>
												E-mail: <a href="#" class="underline">mail@owltemplates.com</a>
											</address>
										</div>
										<div class="span6">
											<form id="contact-form" class="contact-form">
												<div class="success">
													Contact form submitted!<strong><br> We will
														be in touch soon.</strong>
												</div>
												<fieldset class="thumbnails thumbnails_2">
													<label class="name span2"> <input type="text"
														value="Name:"> <span class="error">*This is
															not a valid name.</span> <span class="empty">**Please
															enter Name</span>
													</label> <label class="email span2"> <input type="email"
														value="E-mail:"> <span class="error">*This
															is not a valid email address.</span> <span class="empty">*Please
															enter Email</span>
													</label> <label class="phone span2"> <input type="text"
														value="Phone:"> <span class="error">*This
															is not a valid phone number.</span> <span class="empty">*Please
															enter Phone</span>
													</label> <label class="message span6"> <textarea
															class="message1">Message:</textarea> <span class="error">*The
															message is too short.</span> <span class="empty">*Please
															enter Some Text</span>
													</label>
												</fieldset>
												<div class="pull-right">
													<a href="#" class="btn btn-inverse" data-type="reset">Clear</a>
													<a href="#" class="btn btn-info" data-type="submit">Submit</a>
												</div>
											</form>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>

			<div class="section-4">
				<div class="container">
					<!-- latest posts -->
					<div class="title2">
						<div class="title-box clearfix">
							<h4 class="title-box_primary">热门下载</h4>
							<h3 class="title-box_secondary">这里有最热门的文档</h3>
						</div>
					</div>
					<div class="carousel-wrap carousel__formats">
						<div id="carousel-blog" class="es-carousel-wrapper">
							<div class="es-carousel">
								<ul class="es-carousel_list">
								
								<#list hotDownload as item>
									<li class="es-carousel_li gallery">
										<figure class="featured-thumbnail">
											<div class="img-border portfolio-overlay">
											<a href="/doc.html?md5=${item.md5}"><img src="${item.imgPath}"  width="205" height="290" alt="" /></a>
												
												<div class="portfolio-overlay-content">
													<h2>P.${item.pages}</h2>
													<span class="link-page"><a href="#"
														class="prettyPhoto"></a></span><span class="zoom-effect"><a
														href="${item.imgPath}" class="prettyPhoto"></a></span>
												</div>
											</div>
										</figure>
										<div class="carousel-proj-text">
											<h5>
												<a href="/doc.html?md5=${item.md5}" style="white-space: pre-wrap;word-wrap: break-word;">${item.fileName}</a>
											</h5>
											<p class="excerpt" style="white-space: pre-wrap;word-wrap: break-word;">${item.desc}</p>
										</div>
									</li>
								</#list>
								
									
									
									
									<li class="es-carousel_li gallery">
										<figure class="featured-thumbnail">
											<div class="img-border portfolio-overlay">
												<a href="/sidebar-right.html"><img src="img/more.png"  width="205" height="290"  alt="" /></a>
												<div class="portfolio-overlay-content">
													<h2>更多</h2>
													<span class="link-page"><a href="#"
														class="prettyPhoto"></a></span><span class="zoom-effect"><a
														href="img/es-carousel-img3.jpg" class="prettyPhoto"></a></span>
												</div>
											</div>
										</figure>
										<div class="carousel-proj-text">
											<h5>
												<a href="#">更多</a>
											</h5>
											<p class="excerpt">获取更多热门文档</p>
										</div>
									</li>
								</ul>
							</div>
							<div class="es-nav">
								<span class="es-nav-prev"><i class="icon-chevron-left"></i></span><span
									class="es-nav-next"><i class="icon-chevron-right"></i></span>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="container">
				<!-- client logo -->
				<div class="row">
					<div class="span12">
						<div class="title2">
							<h4 class="indent-1 extra">网站参与者</h4>
						</div>
						<ul class="list-banners shadow-large">
							<li><a href="#"><img src="img/shanzhu.png" alt="山竹"></a></li>
						</ul>
					</div>
				</div>
			</div>
		</section>
		<!--==============================footer=================================-->
		<#include "bot.ftl"> 
		<!--==============================footer=================================-->
	</div>
	<!--==============================Style Switcher =================================-->
	<!--<div class="switcher clearfix">
  <div class="switcher-head"> <span>Choose your Style</span>
    <div class="switcher-trigger icon-cog"></div>
  </div>
  <div class="switcher-body clearfix">
    <div class="switcher-op-layout">
      <select id="switcher-option-layout" name="switcher-option-layout" class="input-block-level nobottommargin">
        <option value="layout-boxed">Boxed</option>
        <option value="layout-full" selected="selected">Full Width</option>
      </select>
    </div>
    <div class="line"></div>
    <div class="switcher-op-colors">
      <p><strong>Predefined Colors:</strong></p>
      <div id="color-changer-box">
       
      </div>
      <small>* You can use Unlimited Colors</small> </div>
    <div class="line"></div>
    <div class="switcher-op-patterns">
      <p><strong>Predefined Patterns:</strong></p>
     
      <small>* Only for Boxed Layout</small> </div>
    <div class="line"></div>
    <div class="switcher-op-bgimages">
      <p><strong>Background Images:</strong></p>
     
      <small>* Only for Boxed Layout</small> </div>
    <div class="line"></div>
    <div id="switcher-option-footer" class="switcher-op-footerc clearfix"> <a href="#" data-color="dark" class="swfooter-active">Dark Footer</a> <a href="#" data-color="light">Light Footer</a> </div>
  </div>
</div>-->
<#include "linkjslib.ftl"> 
	<!-- Elastislider  -->
	<script>
		jQuery("#carousel-blog").elastislide({
			imageW : 218,
			minItems : 2,
			speed : 600,
			easing : "easeOutQuart",
			margin : 5,
			border : 0,
			onClick : function() {
			}
		});
	</script>
	<!-- Image animated Style  -->
	<script type="text/javascript">
		$(function() {

			$('#ri-grid').gridrotator({
				rows : 4,
				columns : 8,
				maxStep : 2,
				interval : 2000,
				w1024 : {
					rows : 5,
					columns : 6
				},
				w768 : {
					rows : 5,
					columns : 5
				},
				w480 : {
					rows : 6,
					columns : 4
				},
				w320 : {
					rows : 7,
					columns : 4
				},
				w240 : {
					rows : 7,
					columns : 3
				},
			});

		});
	</script>
	<!-- Metro Style  -->
	<script>
		$(function() {

			Boxgrid.init();

		});
	</script>
	<!-- Revolution Slider  -->
	<script>
		var api;
		jQuery(document).ready(function() {
			api = jQuery('.fullwidthabnner').revolution({
				delay : 9000,
				startheight : 400,
				startwidth : 1000,

				hideThumbs : 10,

				thumbWidth : 100, // Thumb With and Height and Amount (only if navigation Tyope set to thumb !)
				thumbHeight : 50,
				thumbAmount : 5,

				navigationType : "both", //bullet, thumb, none, both		(No Thumbs In FullWidth Version !)
				navigationArrows : "verticalcentered", //nexttobullets, verticalcentered, none
				navigationStyle : "round", //round,square,navbar

				touchenabled : "on", // Enable Swipe Function : on/off
				onHoverStop : "on", // Stop Banner Timet at Hover on Slide on/off

				navOffsetHorizontal : 0,
				navOffsetVertical : 20,

				stopAtSlide : -1,
				stopAfterLoops : -1,

				shadow : 1, //0 = no Shadow, 1,2,3 = 3 Different Art of Shadows  (No Shadow in Fullwidth Version !)
				fullWidth : "on" // Turns On or Off the Fullwidth Image Centering in FullWidth Modus
			});
		});

		function loadVideo() {
			jQuery("#video_link")
					.html(
							'iframe src="http//player.vimeo.com/video/32001208?title=0&amp;byline=0&amp;portrait=0" width="460" height="259"></iframe>');
		}
	</script>
	<div style="display: none">
		<script src='http//v7.cnzz.com/stat.php?id=155540&web_id=155540'
			language='JavaScript' charset='gb2312'></script>
	</div>
</body>
</html>
