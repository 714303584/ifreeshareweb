
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
		<section id="content">
		  <div class="breadcrumb-wrapper">
		    <div class="shadowdrop"></div>
		    <div class="container">
		          <h2>所有文档类型<small> 所有文档分类中的类型都在此页,点击链接跳转到指定类型。</small></h2>
		<ul class="breadcrumb fright">
		            <li><a href="#">主页</a> <span class="divider">/</span></li>
		            <li><a href="#" class="active">文档分类</a> <span class="divider"></span></li>
		          </ul>
		    </div>
		  </div>
		  <div class="container">
		    <!-- row 1 (List) -->
		    
		    <!-- row 2 (social icon) -->
		    
		    <!-- row 3 (button) -->
		    <!-- row 4 (Progress bars) -->
		    <!-- row 5 (Tabs & Accordian) -->
		    <!-- row 6 (Alert Boxes) -->
		    <!-- row 7 (Dropcaps) -->
		    <!-- row 8 (blockquotes) -->
		    <div class="container clearfix" style="height: 5px"></div>
		    
		    
		    <#list types?keys as key>
		    <div class="parent" style="margin-bottom: 15px">
		      		<h2 style="margin: 0px"><a href="#">${key}</a></h2>
		      		<p style="margin: 0px" >
					<#list types[key] as item>
						<a href="#">${item.displayName}</a> | 
					</#list>
					</p>
					</div>
			</#list>
		    
		    
		    
		      
		   
		       
		        <div class="parent" style="margin-bottom: 15px">
		      		<a class="reply" href="#">Reply</a>
		       </div>
		         <div class="parent" style="margin-bottom: 15px">
		      		<a class="reply" href="#">Reply</a>
		       </div>
		    <!-- row 9 (pagination) -->
		    
		  </div>
		</section>
	<#include "bot.ftl"> 
	</div>
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