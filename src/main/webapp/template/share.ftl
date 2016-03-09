<!DOCTYPE html>
<html lang="en">
<head>
<title>Success</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="icon" href="img/favicon.ico" type="image/x-icon">
<link rel="shortcut icon" href="img/favicon.ico" type="image/x-icon" />
<meta name="description" content="Your description">
<meta name="keywords" content="Your keywords">
<meta name="author" content="Your name">

<#include "linkcss.ftl"> 

<script type="text/javascript" src="flexpaper/js/flexpaper_flash.js"></script>
<script type="text/javascript" src="/js/stream-v1.js"></script>


<script type="text/javascript" src="js/md5/md5.js"></script>
</head>
<body class="inner-page stretched">
	<div id="wrapper">
		<!--==============================header=================================-->
		<div class="header-block clearfix">
			<!-- open close panel -->
			<#include "openClosePanel.ftl"> 
			<!-- open close panel -->
			
			<!-- topbar -->
			
			<#include "topbar.ftl"> 
			<!-- topbar -->
			
			<!-- Logo & Navigation -->
				<#include "top.ftl"> 
				
			<!-- Logo & Navigation  end -->
			
		</div>
		<!--==============================content=================================-->
		<section id="content">
			<div class="breadcrumb-wrapper">
				<div class="shadowdrop"></div>
				<div class="container">
					<h2>
						Right Sidebar<small> components, javascript plugins</small>
					</h2>
					<ul class="breadcrumb fright">
						<li><a href="#">Home</a> <span class="divider">/</span></li>
						<li><a href="#">Layouts</a> <span class="divider">/</span></li>
						<li class="active">Right Sidebar</li>
					</ul>
				</div>
			</div>
			<div class="container">
				<div class="row">
					<!-------------- row 1 -------------->
					<div class="span12">
						<!-- Feature 1 -->
						<div id="i_select_files" class="info-box shadow-large"
							style="margin-bottom: 0px">
							<div class="info-box-inner">
								<div class="info-content">
									<h4>分享我的文档</h4>
									<p>请将文件拖拽到这里！！</p>
								</div>
								<div class="clearfix"></div>
							</div>
						</div>

						<div id="i_stream_files_queue" class=" hiring shadow-large"
							style="margin-top: 0px; padding: 0px">
							
							

							<div id="bootstrap-stream-container">


								
							</div>
						</div>


						<div class="hiring shadow-large"
							style="padding-top: 0px; padding-bottom: 0pc">
							<div class="title">
								<h4 class="indent-1 extra">共享文档,共建文档分享新纪元</h4>
							</div>
							<div style="text-align: left;">
								<dl style="">
						            <dt>共享文档是指您所上传的文档可以被任何互联网用户查阅，即任何用户都可以浏览您的文档。</dt>
						            <dd><strong style="color: orange;">公开文档有那些特点？</strong></dd>
						            <dd>1、您可以向千万网友展示自己的精美文档，并免费全文阅读其他用户上传的海量文档哦；</dd>
						            <dd>2、本网站承诺的免费文档是由公众自发上传的文档,本网站将不做任何下载或阅读限制.</dd>
						            <dd><hr width="100%"></hr></dd>
						            <dd><a href="#" style="text-decoration: none;color:#00a1e9;margin:0;padding:0;border:0;font-size:100%;font:inherit; ">什么是文档池？？</a>
						             <a href="#" style="text-decoration: none;color:#00a1e9;margin:0;padding:0;border:0;font-size:100%;font:inherit; ">文档分享规则</a></dd>
						        
						        </dl>
							</div>
						</div>
						<script type="text/javascript" src="/js/stream-v1.js"></script>
						<script type="text/javascript">
						function subEdit(fileid,btn) {
							var fileName = $("#input_name_"+fileid).val();
							var desc = $("#txta_input_"+fileid).val();
							var typef = $("#select_father_"+fileid).val();
							var  typec = $("#select_child_"+fileid).val();
							var tag = $("#input_tags_"+fileid).val();
							$.post(
									"/fileEdit",
									{
										"webMd5":fileid,
										"desc":desc,
										"typef":typef,
										"typec":typec,
										"tags":tag,
										"fileName":fileName,
										"op":"0"
									},
									function (data) {
										if(data["result"] === "ok"){
											$("#div_info"+fileid).css("display","none");
											$("#btnshenzhan"+fileid).html("展开");
										}
									},
									"json");
							
						}
						
						function addfiletag(file) {
							var msg = file["msg"];
							var fileMd5 = $.parseJSON(msg)["webMd5"];
							var  fileTarg = '<div id="'+fileMd5+'" class="row" style="padding: 0px; margin-left: 0px">'+
							'<div class="message-box fade in confirm" style="margin: 0px">'+
							'<strong>Success!!</strong>'+file.name+
							'<button type="button" class="close" data-dismiss="alert">取消</button>  '+
							'<button id="btnshenzhan'+fileMd5+'" type="button" class="close" >收起</button>'+
							'<div  id="div_info'+fileMd5+'"  class="container" style="margin-top: 10px">'+
							'<div class="span6" style="margin-left: 0px;">'+
							'<table>'+
							'<tbody>'+
							'<tr>'+
							'<td>标题:</td>'+
							'<td><input id="input_name_'+fileMd5+'" value="'+file.name+'" style="width: 350px"></input></td>'+
							'</tr>'+
							'<tr>'+
							'<td>分类:</td>'+
							'<td><select id="select_father_'+fileMd5+'" style="width: 175px">'+
							'<option>法律文献</option>'+
							'<option>2</option>'+
							'<option>3</option><option>4</option><option>5</option>'+
							'</select> <select id="select_child_'+fileMd5+'"  style="width: 175px">'+
							'<option>法律文献</option>'+
							'<option>2</option>'+'<option>3</option><option>4</option><option>5</option>'+
							'</select></td>'+
							'</tr>'+
							'<tr>'+
							'<td>标签:</td><td><input id="input_tags_'+fileMd5+'" style="width: 350px"></input></td>'+
							'</tr>'+
							'<tr>'+
							'<td>描述:</td>'+
							'<td><textarea id="txta_input_'+fileMd5+'"   rows="5px"'+
							'style="width: 350px; padding: 0px">'+file.name+'</textarea></td>'+
							'</tr>'+
							'</tbody>'+
							'</table>'+
							'</div>'+
							'<div class="span6" style="margin-left: 0px;">'+
							'<table>'+
							'<tbody>'+
							'<tr>'+
							'<td>保存到:</td>'+
							'<td><select style="width: 175px">'+
							'<option>法律文献</option><option>2</option><option>3</option><option>4</option><option>5</option>'+
							'</select>'+
							'</td>'+
							'</tr>'+
							'<tr>'+
							'<td>分享到:</td>'+
							'<td>'+
							'<select style="width: 175px">'+
							'<option>法律文献</option><option>2</option><option>3</option><option>4</option><option>5</option>'+
							'</select>'+
							'</td>'+
							'</tr>'+
							'<tr>'+
							'<td></td>'+
							'<td>'+
							'<button type="submit" class="button-green" onclick="subEdit(\''+fileMd5+'\',this)">保存</button>'+
							'</td>'+
							'</tr>'+
							'</tbody>'+
							'</table>'+ 
							'</div>'+
							'</div>'+
							'</div>'+
							'</div>';
							
							$("#bootstrap-stream-container").append(
									fileTarg);
							$("#btnshenzhan"+fileMd5).click(function () {
								var display = $("#div_info"+file.id).css("display");
								if(display != "none"){
									$("#div_info"+file.id).css("display","none");
									$("#btnshenzhan"+file.id).html("展开");
								}else{
									$("#div_info"+file.id).css("display","");
									$("#btnshenzhan"+file.id).html("收起");
								}
							});
						}
						
						
						
						
						
							/**
							 * 配置文件（如果没有默认字样，说明默认值就是注释下的值）
							 * 但是，on*（onSelect， onMaxSizeExceed...）等函数的默认行为
							 * 是在ID为i_stream_message_container的页面元素中写日志
							 */
							var config = {
								enabled : true,
								/** 是否启用文件选择，默认是true */
								customered : true,
								multipleFiles : true,
								/** 是否允许同时选择多个文件，默认是false */
								autoRemoveCompleted : false,
								/** 是否自动移除已经上传完毕的文件，非自定义UI有效(customered:false)，默认是false */
								autoUploading : true,
								/** 当选择完文件是否自动上传，默认是true */
								fileFieldName : "FileData",
								/** 相当于指定<input type="file" name="FileData">，默认是FileData */
								maxSize : 2147483648,
								/** 当_t.bStreaming = false 时（也就是Flash上传时），2G就是最大的文件上传大小！所以一般需要 */
								simLimit : 10000,
								/** 允许同时选择文件上传的个数（包含已经上传过的） */
								//extFilters: [".pdf",".txt", ".gz", ".jpg", ".png", ".jpeg", ".gif", ".avi", ".html", ".htm"], /** 默认是全部允许，即 [] */
								browseFileId : "i_select_files",
								/** 文件选择的Dom Id，如果不指定，默认是i_select_files */
								browseFileBtn : "<div>请选择文件</div>",
								/** 选择文件的按钮内容，非自定义UI有效(customered:false) 
													dragAndDropArea: "i_stream_dropzone",*/
								filesQueueId : "i_stream_files_queue",
								/** 文件上传进度显示框ID，非自定义UI有效(customered:false) */
								filesQueueHeight : 450,
								/** 文件上传进度显示框的高，非自定义UI有效(customered:false)，默认450px */
								//messagerId : "i_stream_message_container", /** 消息框的Id，当没有自定义onXXX函数，系统会显示onXXX的部分提示信息，如果没有i_stream_message_container则不显示 */
								//						frmUploadURL : "http://customers.duapp.com/fd;", /** Flash上传的URI */
								//uploadURL : "http://localhost:80/upload",
								onSelect : function(files) {
									console && console.log("-------------onSelect-------------------");
									console && console.log(files);
									console && console.log("-------------onSelect-------------------End");
								},
								onAddTask : function(file) {
									var fileupTag = '<div id="div_prog_'+file.id+'" class="row" style="padding: 0px; margin-left: 0px">'+
									'<div class="message-box fade in confirm" style="margin: 0px">'+
									'<strong id="strong_prog_'+file.id+'">'+file.name+'</strong><span id="span_prog_'+file.id+'"></span>'+
									'<button type="button" class="close" data-dismiss="alert">×</button>'+
									'</div>'+
									'<div class="container" style="margin: 0px;">'+
									'<div id="progress'+file.id+'" class="progress progress-striped active progress-success"'+
									'style="margin: 0px;">'+
									'<div id="bar'+file.id+'" style="width: 0%" class="bar">0%</div>'+
									'</div>'+
									'</div>'+
									'</div>';

									$("#bootstrap-stream-container").append(
											fileupTag);
								},
								onComplete : function(file) {
									//console && console.log("-------------onComplete-------------------");
									//console && console.log(file);
									/** 100% percent */
									$("#div_prog_" + file.id).remove();
									addfiletag(file);
									//console && console.log("-------------onComplete-------------------End");
								},
								uniqueCheck : function(file,info) {
									progressiveRead(file,info);
								},
								onUploadProgress : function(file) {
									//console && console.log("-------------onUploadProgress-------------------");
									//console && console.log(file);
									var progressbar = $("#bar"+file.id);
									progressbar.css("width",file.percent+"%");
									progressbar.html(file.percent+"%");
									var strongTag = $("#strong_prog_"+file.id);
									strongTag.html(file.name);
									
									var spantag = $("#span_prog_"+file.id);
									spantag.html(file.formatTotalLoaded + "/" + file.formatTotalSize);
									//console && console.log("-------------onUploadProgress-------------------End");
								}

							};

							var _t = new Stream(config);
							
							function addStreamTask(file){
								_t.addStreamTask(file);
							}
							
							
							//function work((e.target.result, pos, file)) {
								
							//}
							
							
							
							function progressiveRead(task,info) {
								var file = task.file;
								var chunkSize = 10240; // 20KiB at a time
								var pos = 0;
								var reader = new FileReader();
								
								var md5Instance = CryptoJS.algo.MD5.create();
								
								
								var fileupTag = '<div id="md5_prog_'+info.id+'" class="row" style="padding: 0px; margin-left: 0px">'+
								'<div class="message-box fade in confirm" style="margin: 0px">'+
								'<strong id="md5_prog_'+info.id+'">文件计算中..........</strong><span id="md5_span_prog_'+info.id+'"></span>'+
								'<button type="button" class="close" data-dismiss="alert">×</button>'+
								'</div>'+
								'<div class="container" style="margin: 0px;">'+
								'<div id="md5_progress'+info.id+'" class="progress progress-striped active progress-success"'+
								'style="margin: 0px;">'+
								'<div id="md5_bar'+info.id+'" style="width: 0%" class="bar">0%</div>'+
								'</div>'+
								'</div>'+
								'</div>';

								$("#bootstrap-stream-container").append(
										fileupTag);
								
								function progressiveReadNext() {
									var end = Math.min(pos + chunkSize, file.size);

									reader.onload = function(e) {
										pos = end;
										//work(e.target.result, pos, file);
										
										md5Instance.update(CryptoJS.enc.Latin1.parse(e.target.result));
										
										var present = (parseFloat(pos)/parseFloat(file.size))*10000/100;
										
										var progressbar = $("#md5_bar"+info.id);
										progressbar.css("width",Math.round(present)+"%");
										progressbar.html(Math.round(present)+"%");
										var strongTag = $("#md5_span_prog_"+info.id);
										strongTag.html(info.name);
										
										var spantag = $("#span_prog_"+info.id);
										spantag.html(pos + "/" + file.size);
										
										if (pos < file.size) {
											setTimeout(progressiveReadNext, 0);
										} else {
											// Done
											var md5Value = md5Instance.finalize();
											console.log(md5Value.toString());
											
											var  md5Str = md5Value.toString();
											
											$.post(
													"/uniqueCheck",
													{
														"fileMd5":md5Str
													},
													function (data) {
														if(data["result"] === "exist"){
															alert("文件已经存在");
														}if(data["result"] === "notFound"){
															$("#md5_prog_" + info.id).remove();
															_t.get("onAddTask")(info);
															task.file["fileMd5"] = md5Str;
															task["fileMd5"] = md5Str;
															addStreamTask(task);
															
														}
													},
													"json");
										}
									}
									
									if (file.slice) {
										var b = file.slice(pos, end);
									} else if (file.webkitSlice) {
										var b = file.webkitSlice(pos, end);
									}else if(File.prototype.mozSlice){
										var b = file.mozSlice(pos, end);
									}
									reader.readAsBinaryString(b);
								}
								setTimeout(progressiveReadNext, 0);
							}
						</script>


						<!-- Feature 2 -->
					</div>
					<!------------ Sidebar -------------->
				</div>
			</div>
		</section>
		<!--==============================footer=================================-->
				<#include "bot.ftl"> 
		<!--==============================footer=================================-->
		
	</div>
	
	<!-- Placed at the end of the document so the pages load faster -->
	<#include "linkjslib.ftl"> 
	<!-- Elastislider  -->
	<script>
		jQuery("#carousel-blog").elastislide({
			imageW : 270,
			minItems : 2,
			speed : 600,
			easing : "easeOutQuart",
			margin : 30,
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
				startheight : 370,
				startwidth : 960,

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
