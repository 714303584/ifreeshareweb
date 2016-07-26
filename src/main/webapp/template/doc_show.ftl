<!DOCTYPE html>
<html lang="en">
<head>
<title>${docInfo.fileName}</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="icon" href="img/yongheng.ico" type="image/x-icon">
<link rel="shortcut icon" href="img/yongheng.ico" type="image/x-icon" />
<meta name="description" content="${docInfo.desc}">
<meta name="keywords" content="${docInfo.tags}">
<meta name="author" content="Your name">
	<#include "linkcss.ftl"> 
  
  
<script type="text/javascript" src="flexpaper/js/flexpaper_flash.js"></script>
</head>
<body class="inner-page stretched">
<div id="wrapper">
  <!--==============================header=================================-->
<div class="header-block clearfix">
  <!-- open close panel -->
  <div id="toppanel">
    <div id="panel">
      <div class="container">
        <!-- row 1 -->
        <div class="row">
          <div class="span12">
            <ul class="thumbnails thumbnails_2">
              <li class="span3">
                <div class="thumbnail_2"> <img src="img/icons/top-icon1.png" alt="">
                  <div>
                    <h2>Easy to customize</h2>
                    <p class="p0">Lorem ipsum dolor sit amet, conse ctetuer adipiscing elit, sed diam nonu mmy nibh euismodt. Lorem ipsum dolor sit amet.</p>
                  </div>
                </div>
              </li>
              <li class="span3">
                <div class="thumbnail_2"> <img alt="" src="img/icons/top-icon2.png">
                  <div>
                    <h2>Responsive Layout</h2>
                    <p class="">Lorem ipsum dolor sit amet, conse ctetuer adipiscing elit, sed diam nonu mmy nibh euismodt. Lorem ipsum dolor sit amet.</p>
                  </div>
                </div>
              </li>
              <li class="span3">
                <div class="thumbnail_2"> <img src="img/icons/top-icon3.png" alt="">
                  <div>
                    <h2>Clean Design</h2>
                    <p class="">Lorem ipsum dolor sit amet, conse ctetuer adipiscing elit, sed diam nonu mmy nibh euismodt. Lorem ipsum dolor sit amet.</p>
                  </div>
                </div>
              </li>
              <li class="span3">
                <div class="thumbnail_2"> <img src="img/icons/top-icon4.png" alt="">
                  <div>
                    <h2>Need Help</h2>
                    <p class="">Lorem ipsum dolor sit amet, conse ctetuer adipiscing elit, sed diam nonu mmy nibh euismodt. Lorem ipsum dolor sit amet.</p>
                  </div>
                </div>
              </li>
            </ul>
          </div>
          <div class="span12">
            <div class="alert fade in alert-info">
              <button data-dismiss="alert" class="close" type="button">×</button>
              <strong>Welcome to Success!</strong> Work on all browsers, Be Creative, Fully Customizable Theme. </div>
          </div>
        </div>
      </div>
    </div>
    <div class="toggle-button" id="hide_button" style="display: none;"><a href="#"><i class="icon-chevron-up icon-white"></i></a></div>
  </div>
  <div class="toggle-button" style="display: visible;"><a href="#"><i class="icon-chevron-down icon-white"></i></a></div>
 			<!-- topbar -->
			<#include "topbar.ftl"> 
			<!-- topbar  end  -->
			<!-- Logo & Navigation -->
				<#include "top.ftl"> 
				
			<!-- Logo & Navigation  end -->
</div>
<!--==============================content=================================-->
<section id="content">
  <div class="breadcrumb-wrapper">
    <div class="shadowdrop"></div>
    <div class="container">
          <h2>${docInfo.fileName}<small>${docInfo.fileName}</small></h2>
			<ul class="breadcrumb fright">
            <li><a href="#">Home</a> <span class="divider">/</span></li>
            <li><a href="#">Layouts</a> <span class="divider">/</span></li>
            <li class="active">Right Sidebar</li>
          </ul>
    </div>
  </div>
  <div class="container" style="margin-top: 5px" >
    <div class="row" style="margin: 0px" >
    
      <!-------------- row 1
      
       <div class="title"><h4 class="indent-1 extra">${docInfo.fileName}</h4></div>
      
      
      
       -------------->
      <div class="span8"  style="margin-left: 0px" >
        <!-- Feature 1 -->
          <div style="height: 800px">
	        <a id="viewerPlaceHolder" style="width:100%;height:800px;"></a>
	        
	        <script type="text/javascript">
	     		var fp = new FlexPaperViewer(	
						 'flexpaper/FlexPaperViewer',
						 'viewerPlaceHolder', { config : {
						 SwfFile : escape('/md5/SWF/${docInfo.md5}.swf'),
						 Scale : 0.6, 
						 ZoomTransition : 'easeOut',
						 ZoomTime : 0.5,
						 ZoomInterval : 0.2,
						 FitPageOnLoad : true,
						 FitWidthOnLoad : true,
						 PrintEnabled : false,
						 FullScreenAsMaxWindow : false,
						 ProgressiveLoading : true,
						 MinZoomSize : 0.2,
						 MaxZoomSize : 5,
						 SearchMatchAll : false,
						 InitViewMode : 'Portrait',
						 
						 ViewModeToolsVisible : true,
						 ZoomToolsVisible : true,
						 NavToolsVisible : true,
						 CursorToolsVisible : true,
						 SearchToolsVisible : true,
  						
  						 localeChain: 'zh_CN'
						 }});
	        </script>
	        
	        <#if ( docInfo.pages > 20 ) > 
	        	<p class="message-box-error"><strong>提示：</strong> 文档超过20页！如需阅读全部文档！请下载！本站提供无会员无积分免费下载！ </p>
	        </#if>  
        </div>
        
       
        <!-- Feature 2 
        <div class="title"><h4 class="indent-1 extra">Featured Services Overview</h4></div>
        <ul class="list-services">
          <li>
            <figure class="img-circle"><img class="img-circle" alt="" src="img/page1-img8.jpg"></figure>
            <div><a class="lead-1" href="#">Proin dictum elementum velit</a> <small>Suspendisse sollicitudin velit sed leo</small> Lorem ipsum dolor sit amet, consectetueradipiscing elied diam nonummy nibh euisod tincidunt ut laoreet dolore magna aliquam
              erat volutpatorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. </div>
          </li>
          <li class="clearfix">
            <figure class="img-circle"><img class="img-circle" alt="" src="img/page1-img9.jpg"></figure>
            <div><a class="lead-1" href="#">Proin dictum elementum velit</a> <small>Suspendisse sollicitudin velit sed leo</small> Lorem ipsum dolor sit amet, consectetueradipiscing elied diam nonummy nibh euisod tincidunt ut laoreet dolore magna aliquam
              erat volutpatorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. </div>
          </li>
        </ul>
        -->
      </div>
      <!------------ Sidebar -------------->
      
      <div class="span4">
        <!-- Blog Categories 
        <div class="title"><h4 class="indent-1 extra">Blog Categories</h4></div>-->
        
        <div class="hiring shadow-large" style="margin: 0px;text-align: left;">
          <div style="margin-bottom: 22px;border-bottom: 1px solid #EEEEEE;"><h2 style="margin: 0px;" >文档信息</h2></div>
          <p >上传用户：${docInfo.author}</p>
          <p >文件名称：${docInfo.fileName}</p>
          <p >文件页数：${docInfo.pages}</p>
          <p >上传日期：${docInfo.fileName}</p>
          <p >浏览次数：${docInfo.fileName}</p>
          <p >下载次数：${docInfo.fileName}</p>
          <p >文件评分：${docInfo.fileName}</p>
          <a class="btn btn-large btn-inverse" style="width: 50%" href="/download?md5=${docInfo.md5}"><i class="icon-hand-right icon-white"></i> 下载 </a>
        </div>
        <div class="hiring shadow-large" style="margin-top: 15px;text-align: left;">
           <div style="border-bottom: 1px solid #EEEEEE;"><h2 >同类文档</h2></div>
        </div>
        <!-- 
        <ul class="list">
          <li></li>
          <li><a href="#">Interdum vitae, adipiscing dapibus ac</a></li>
          <li><a href="#">Scelerisque ipsum auctor vitae, pede</a></li>
          <li><a href="#">Donec eget iaculis lacinia non erat</a></li>
          <li><a href="#">Lacinia dictum elementum velit fermentum</a></li>
          <li><a href="#">Donec in velit vel ipsum auctor pulvinar</a></li>
        </ul> -->
        <!-- Tabs 
        <div class="sidebar-tabs">
          <ul id="myTab" class="nav nav-tabs">
            <li class="active"><a href="#text" data-toggle="tab">Text</a></li>
            <li class="dropdown"> <a href="#" class="dropdown-toggle" data-toggle="dropdown">other <b class="caret"></b></a>
              <ul class="dropdown-menu">
                <li><a href="#testimonial1" data-toggle="tab">Testimonial 1</a></li>
                <li><a href="#testimonial2" data-toggle="tab">Testimonial 2</a></li>
              </ul>
            </li>
            <li><a href="#recent" data-toggle="tab">Post</a></li>
            <li><a href="#list" data-toggle="tab">List</a></li>
          </ul>
          <div id="myTabContent" class="tab-content">
            <div class="tab-pane fade in active" id="text">
              <p>Raw denim you probably haven't heard of them jean shorts Austin. Nesciunt tofu stumptown aliqua, retro synth master cleanse. Mustache cliche tempor, williamsburg carles vegan helvetica. Reprehenderit butcher retro keffiyeh dreamcatcher synth. Cosby sweater eu banh mi, qui irure terry richardson ex squid. Aliquip placeat salvia cillum iphone. Seitan aliquip quis cardigan american apparel, butcher voluptate nisi qui.</p>
            </div>
            <div class="tab-pane fade" id="testimonial1">
              <div class="extra-wrap">
                <blockquote><em>Morbi interdum fermentum nulla, ut imperdiet felis tempus in. Ut lacinia consectetur nisl et iaculis. Duis fringilla dui  at leo.</em><em>Integer pharetra lobortis nisl vitae aliquam. Lorem ipsum dolor sit amet, consectetur elit sapien accumsan quis ...�?/em></blockquote>
                <span>- Patrick Pool<br>
                client</span> </div>
            </div>
            <div class="tab-pane fade" id="testimonial2">
              <div class="extra-wrap">
                <blockquote><em>Morbi interdum fermentum nulla, ut imperdiet felis tempus in. Ut lacinia consectetur nisl et iaculis. Duis fringilla dui  at leo.</em><em>Integer pharetra lobortis nisl vitae aliquam. Lorem ipsum dolor sit amet, consectetur elit sapien accumsan quis ...�?/em></blockquote>
                <span>- Patrick Pool<br>
                client</span> </div>
            </div>
            <div class="tab-pane fade" id="recent">
              <ul class="footer-list-news">
                <li>
                  <figure class="img-circle"><img src="img/page1-img8.jpg" alt="" class="img-circle"></figure>
                  <div class="extra-wrap">
                    <p><a href="#">Interdum vitae dapibus volutpat.</a></p>
                    <span>12 October 2012</span> </div>
                </li>
                <li>
                  <figure class="img-circle"><img src="img/page1-img9.jpg" alt="" class="img-circle"></figure>
                  <div class="extra-wrap">
                    <p><a href="#">Interdum vitae dapibus volutpat.</a></p>
                    <span>12 October 2012</span> </div>
                </li>
                <li>
                  <figure class="img-circle"><img src="img/page1-img10.jpg" alt="" class="img-circle"></figure>
                  <div class="extra-wrap">
                    <p><a href="#">Interdum vitae dapibus volutpat.</a></p>
                    <span>12 October 2012</span> </div>
                </li>
                <li class="p0">
                  <figure class="img-circle"><img src="img/page1-img11.jpg" alt="" class="img-circle"></figure>
                  <div class="extra-wrap">
                    <p><a href="#">Interdum vitae dapibus volutpat.</a></p>
                    <span>12 October 2012</span> </div>
                </li>
              </ul>
            </div>
            <div class="tab-pane fade" id="list">
              <ul class="list">
                <li><a href="#">Quisque diam lorem sectetuer adipiscing</a></li>
                <li><a href="#">Interdum vitae, adipiscing dapibus ac</a></li>
                <li><a href="#">Scelerisque ipsum auctor vitae, pede</a></li>
                <li><a href="#">Donec eget iaculis lacinia non erat</a></li>
                <li><a href="#">Lacinia dictum elementum velit fermentum</a></li>
                <li><a href="#">Donec in velit vel ipsum auctor pulvinar</a></li>
              </ul>
            </div>
          </div>
        </div>-->
        <!-- Image
        <div class="title"><h4 class="indent-1 extra">Image Categories</h4></div>
        <ul class="sidebar-image-list">
          <li>
            <figure class="img-circle"><img class="img-circle" alt="" src="img/page1-img8.jpg"></figure>
          </li>
          <li>
            <figure class="img-circle"><img class="img-circle" alt="" src="img/page1-img9.jpg"></figure>
          </li>
          <li>
            <figure class="img-circle"><img class="img-circle" alt="" src="img/page1-img10.jpg"></figure>
          </li>
          <li>
            <figure class="img-circle"><img class="img-circle" alt="" src="img/page1-img11.jpg"></figure>
          </li>
          <li>
            <figure class="img-circle"><img class="img-circle" alt="" src="img/page1-img8.jpg"></figure>
          </li>
          <li>
            <figure class="img-circle"><img class="img-circle" alt="" src="img/page1-img9.jpg"></figure>
          </li>
        </ul>
         -->
      </div>
      
      
      
    </div>
    <div class="row">
      <div class="span12">
        <div class="info-box shadow-large">
          <div class="info-box-inner">
            <div class="info-content">
              <h4>Give us a chance and we will prove our efficiency!</h4>
              <p>Praesent vestibulum molestie lacus. Aenean nonummy hendrerit mauris. Fusce suscipit. </p>
            </div>
            <a href="#" class="button medium blue" style="float: right;">Leta work together!</a>
            <div class="clearfix"></div>
          </div>
        </div>
      </div>
    </div>
  </div>
</section>
<!--==============================footer=================================-->
 <#include "bot.ftl"> 
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
        <a style="background-color: #169FE6;" href="javascript: void(0)" title="switch styling" id="color1"></a>
        <a style="background-color: #3CB026;" href="javascript: void(0)" title="switch styling" id="color2"></a>
        <a style="background-color: #D13A3F;" href="javascript: void(0)" title="switch styling" id="color3"></a>
        <a style="background-color: #f96e5b;" href="javascript: void(0)" title="switch styling" id="color4"></a>
        <a style="background-color: #774095;" href="javascript: void(0)" title="switch styling" id="color5"></a>
        <a style="background-color: #ffa200;" href="javascript: void(0)" title="switch styling" id="color6"></a>
        <a style="background-color: #0076d8;" href="javascript: void(0)" title="switch styling" id="color7"></a>
        <a style="background-color: #555555;" href="javascript: void(0)" title="switch styling" id="color8"></a>
      <p><strong>Top Header Colors:</strong></p>
        <a style="background-color: #169FE6;" href="javascript: void(0)" title="switch styling" id="topcolor1"></a>
        <a style="background-color: #3CB026;" href="javascript: void(0)" title="switch styling" id="topcolor2"></a>
        <a style="background-color: #D13A3F;" href="javascript: void(0)" title="switch styling" id="topcolor3"></a>
        <a style="background-color: #f96e5b;" href="javascript: void(0)" title="switch styling" id="topcolor4"></a>
        <a style="background-color: #774095;" href="javascript: void(0)" title="switch styling" id="topcolor5"></a>
        <a style="background-color: #ffa200;" href="javascript: void(0)" title="switch styling" id="topcolor6"></a>
        <a style="background-color: #0076d8;" href="javascript: void(0)" title="switch styling" id="topcolor7"></a>
        <a style="background-color: #555555;" href="javascript: void(0)" title="switch styling" id="topcolor8"></a>

      </div>
      <small>* You can use Unlimited Colors</small> </div>
    <div class="line"></div>
    <div class="switcher-op-patterns">
      <p><strong>Predefined Patterns:</strong></p>
      <ul id="switcher-option-pattern" class="switcher-op-selectors clearfix">
        <li style="background-image: url('img/patterns/light/pattern1.png');" data-url="img/patterns/light/pattern1.png"></li>
        <li style="background-image: url('img/patterns/light/pattern2.png');" data-url="img/patterns/light/pattern2.png"></li>
        <li style="background-image: url('img/patterns/light/pattern3.png');" data-url="img/patterns/light/pattern3.png"></li>
        <li style="background-image: url('img/patterns/light/pattern4.png');" data-url="img/patterns/light/pattern4.png"></li>
        <li style="background-image: url('img/patterns/light/pattern5.png');" data-url="img/patterns/light/pattern5.png"></li>
        <li style="background-image: url('img/patterns/light/pattern6.png');" data-url="img/patterns/light/pattern6.png"></li>
        <li style="background-image: url('img/patterns/light/pattern7.png');" data-url="img/patterns/light/pattern7.png"></li>
        <li style="background-image: url('img/patterns/light/pattern8.png');" data-url="img/patterns/light/pattern8.png"></li>
        <li style="background-image: url('img/patterns/dark/pattern1.png');" data-url="img/patterns/dark/pattern1.png"></li>
        <li style="background-image: url('img/patterns/dark/pattern2.png');" data-url="img/patterns/dark/pattern2.png"></li>
        <li style="background-image: url('img/patterns/dark/pattern3.png');" data-url="img/patterns/dark/pattern3.png"></li>
        <li style="background-image: url('img/patterns/dark/pattern4.png');" data-url="img/patterns/dark/pattern4.png"></li>
        <li style="background-image: url('img/patterns/dark/pattern5.png');" data-url="img/patterns/dark/pattern5.png"></li>
        <li style="background-image: url('img/patterns/dark/pattern6.png');" data-url="img/patterns/dark/pattern6.png"></li>
        <li style="background-image: url('img/patterns/dark/pattern7.png');" data-url="img/patterns/dark/pattern7.png"></li>
        <li style="background-image: url('img/patterns/dark/pattern8.png');" data-url="img/patterns/dark/pattern8.png"></li>
      </ul>
      <small>* Only for Boxed Layout</small> </div>
    <div class="line"></div>
    <div class="switcher-op-bgimages">
      <p><strong>Background Images:</strong></p>
      <ul id="switcher-option-bgimage" class="switcher-op-selectors clearfix">
        <li data-url="demo/bgimages/1.jpg"><img src="demo/bgimages/small/1.jpg" alt="Background Image 1" title="Background Image 1" /></li>
        <li data-url="demo/bgimages/2.jpg"><img src="demo/bgimages/small/2.jpg" alt="Background Image 2" title="Background Image 2" /></li>
        <li data-url="demo/bgimages/3.jpg"><img src="demo/bgimages/small/3.jpg" alt="Background Image 3" title="Background Image 3" /></li>
        <li data-url="demo/bgimages/4.jpg"><img src="demo/bgimages/small/4.jpg" alt="Background Image 4" title="Background Image 4" /></li>
        <li data-url="demo/bgimages/5.jpg"><img src="demo/bgimages/small/5.jpg" alt="Background Image 5" title="Background Image 5" /></li>
        <li data-url="demo/bgimages/6.jpg"><img src="demo/bgimages/small/6.jpg" alt="Background Image 6" title="Background Image 6" /></li>
        <li data-url="demo/bgimages/7.jpg"><img src="demo/bgimages/small/7.jpg" alt="Background Image 7" title="Background Image 7" /></li>
        <li data-url="demo/bgimages/8.jpg"><img src="demo/bgimages/small/8.jpg" alt="Background Image 8" title="Background Image 8" /></li>
      </ul>
      <small>* Only for Boxed Layout</small> </div>
    <div class="line"></div>
    <div id="switcher-option-footer" class="switcher-op-footerc clearfix"> <a href="#" data-color="dark" class="swfooter-active">Dark Footer</a> <a href="#" data-color="light">Light Footer</a> </div>
  </div>
</div>-->
<!-- Placed at the end of the document so the pages load faster -->
	<#include "linkjslib.ftl"> 

<!-- Elastislider  -->
<script>
				jQuery("#carousel-blog").elastislide({
					imageW 		: 270,
					minItems		: 2,
					speed			: 600,
					easing		: "easeOutQuart",
					margin		: 30,
					border		: 0,
					onClick		: function() {}
				});</script>
<!-- Image animated Style  -->
<script type="text/javascript">	
			$(function() {
			
				$( '#ri-grid' ).gridrotator( {
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
				} );
			
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
				 api =  jQuery('.fullwidthabnner').revolution(
								{
									delay:9000,
									startheight:370,
									startwidth:960,

									hideThumbs:10,

									thumbWidth:100,							// Thumb With and Height and Amount (only if navigation Tyope set to thumb !)
									thumbHeight:50,
									thumbAmount:5,

									navigationType:"both",					//bullet, thumb, none, both		(No Thumbs In FullWidth Version !)
									navigationArrows:"verticalcentered",		//nexttobullets, verticalcentered, none
									navigationStyle:"round",				//round,square,navbar

									touchenabled:"on",						// Enable Swipe Function : on/off
									onHoverStop:"on",						// Stop Banner Timet at Hover on Slide on/off

									navOffsetHorizontal:0,
									navOffsetVertical:20,

									stopAtSlide:-1,
									stopAfterLoops:-1,

									shadow:1,								//0 = no Shadow, 1,2,3 = 3 Different Art of Shadows  (No Shadow in Fullwidth Version !)
									fullWidth:"on"							// Turns On or Off the Fullwidth Image Centering in FullWidth Modus
								});
			});
			
			function loadVideo(){
				jQuery("#video_link").html('iframe src="http//player.vimeo.com/video/32001208?title=0&amp;byline=0&amp;portrait=0" width="460" height="259"></iframe>');
			}
		</script>
<div style="display:none"><script src='http//v7.cnzz.com/stat.php?id=155540&web_id=155540' language='JavaScript' charset='gb2312'></script></div>
</body>
</html>
