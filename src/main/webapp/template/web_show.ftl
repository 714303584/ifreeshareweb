<!DOCTYPE html>
<html style="padding-bottom: 54px;"><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="renderer" content="webkit">

    <title></title>
    <meta name="description" content="CSS3实现图片全屏背景特效"> 
    <meta name="keywords" content="css3全屏，背景，中心放大,背景动画，jquery,jquery插件">
    <link href="/css/web_show/demo.css" rel="stylesheet" media="all">
    <!--[if IE]>
			
			<style type="text/css">			
				li.purchase a {
					padding-top: 5px;
					background-position: 0px -4px;
				}
				
				li.remove_frame a {
					padding-top: 5px;
					background-position: 0px -3px;
				}						
			</style>
			
		<![endif]-->
    <script src="/css/web_show/ca-pub-2935286260943234.js"></script><script src="/css/web_show/hm.js"></script><script type="text/javascript">
        var txt = "http://localhost:808/Deal/H991/";
        window.g1 = txt.substr(0, 3);
        window.g2 = txt.substr(0, 19);
    </script>
    <script src="/css/web_show/pace.min.js" charset="gbk"></script>
    <link href="/css/web_show/pace-theme-barber-shop.css" rel="stylesheet">
    <script src="/css/web_show/jquery.min.js"></script>
    <script src="/css/web_show/jquery.qrcode.min.js"></script>
    <script type="text/javascript">

        var theme_list_open = false;

        $(document).ready(function () {
            function fixHeight() {
                var headerHeight = $("#switcher").height();
                $("#iframe").attr("height", $(window).height()-54+ "px");
            }
            $(window).resize(function () {
                fixHeight();
            }).resize();

            $('.icon-monitor').addClass('active');

            $(".icon-mobile-3").click(function () {
                $("#by").css("overflow-y", "auto");
                $('#iframe-wrap').removeClass().addClass('mobile-width-3');
                $('.icon-tablet,.icon-mobile-1,.icon-monitor,.icon-mobile-2,.icon-mobile-3').removeClass('active');
                $(this).addClass('active');
                return false;
            });

            $(".icon-mobile-2").click(function () {
                $("#by").css("overflow-y", "auto");
                $('#iframe-wrap').removeClass().addClass('mobile-width-2');
                $('.icon-tablet,.icon-mobile-1,.icon-monitor,.icon-mobile-2,.icon-mobile-3').removeClass('active');
                $(this).addClass('active');
                return false;
            });

            $(".icon-mobile-1").click(function () {
                $("#by").css("overflow-y", "auto");
                $('#iframe-wrap').removeClass().addClass('mobile-width');
                $('.icon-tablet,.icon-mobile,.icon-monitor,.icon-mobile-2,.icon-mobile-3').removeClass('active');
                $(this).addClass('active');
                return false;
            });

            $(".icon-tablet").click(function () {
                $("#by").css("overflow-y", "auto");
                $('#iframe-wrap').removeClass().addClass('tablet-width');
                $('.icon-tablet,.icon-mobile-1,.icon-monitor,.icon-mobile-2,.icon-mobile-3').removeClass('active');
                $(this).addClass('active');
                return false;
            });

            $(".icon-monitor").click(function () {
                $("#by").css("overflow-y", "hidden");
                $('#iframe-wrap').removeClass().addClass('full-width');
                $('.icon-tablet,.icon-mobile-1,.icon-monitor,.icon-mobile-2,.icon-mobile-3').removeClass('active');
                $(this).addClass('active');
                return false;
            });
        });
    </script>
    <script type="text/javascript">
        function Responsive($a) {
            if ($a == true) $("#Device").css("opacity", "100");
            if ($a == false) $("#Device").css("opacity", "0");
            $('#iframe-wrap').removeClass().addClass('full-width');
            $('.icon-tablet,.icon-mobile-1,.icon-monitor,.icon-mobile-2,.icon-mobile-3').removeClass('active');
            $(this).addClass('active');
            return false;
        };
    </script>
</head>
<body id="by" style="overflow-y: hidden" class=" pace-done"><div class="pace  pace-inactive"><div class="pace-progress" data-progress-text="100%" data-progress="99" style="width: 100%;">
  <div class="pace-progress-inner"></div>
</div>
<div class="pace-activity"></div></div>
    <div id="switcher">
        <div class="center">
            <ul>
                <div id="Device">
                    <li class="device-monitor"><a href="javascript:">
                        <div class="icon-monitor active">
                        </div>
                    </a></li>
                    <li class="device-mobile"><a href="javascript:">
                        <div class="icon-tablet">
                        </div>
                    </a></li>
                    <li class="device-mobile"><a href="javascript:">
                        <div class="icon-mobile-1">
                        </div>
                    </a></li>
                    <li class="device-mobile-2"><a href="javascript:">
                        <div class="icon-mobile-2">
                        </div>
                    </a></li>
                    <li class="device-mobile-3"><a href="javascript:">
                        <div class="icon-mobile-3">
                        </div>
                    </a></li>
                </div>
       
                <script>
                jQuery('#output').qrcode({width:150,height: 150,text: window.location.href});
                </script>
                <li class="remove_frame"><a href="#" title="移除框架">
                </a></li>
               
            </ul>
        </div>
    </div>
    <div id="iframe-wrap">
        <iframe id="iframe" src="/resource/H12/index.html" frameborder="0" width="100%" height="401px">
        </iframe>
    </div>
    
    <!--
		<div class="fdad">
	    <div class="fdl">Advertisement</div>
	    <div class="fdr">x</div>
	    <div class="fdadnr">
            <script async="" src="./CSS3实现图片全屏背景特效_files/adsbygoogle.js"></script>
		    <ins class="adsbygoogle" style="display:inline-block;width:200px;height:200px" data-ad-client="ca-pub-2935286260943234" data-ad-slot="8068460700" data-adsbygoogle-status="done"><ins id="aswift_0_expand" style="display:inline-table;border:none;height:200px;margin:0;padding:0;position:relative;visibility:visible;width:200px;background-color:transparent"><ins id="aswift_0_anchor" style="display:block;border:none;height:200px;margin:0;padding:0;position:relative;visibility:visible;width:200px;background-color:transparent"><iframe width="200" height="200" frameborder="0" marginwidth="0" marginheight="0" vspace="0" hspace="0" allowtransparency="true" scrolling="no" allowfullscreen="true" onload="var i=this.id,s=window.google_iframe_oncopy,H=s&amp;&amp;s.handlers,h=H&amp;&amp;H[i],w=this.contentWindow,d;try{d=w.document}catch(e){}if(h&amp;&amp;d&amp;&amp;(!d.body||!d.body.firstChild)){if(h.call){setTimeout(h,0)}else if(h.match){try{h=s.upd(h,i)}catch(e){}w.location.replace(h)}}" id="aswift_0" name="aswift_0" style="left:0;position:absolute;top:0;"></iframe></ins></ins></ins>
		    <script>
			    (adsbygoogle = window.adsbygoogle || []).push({});
		    </script>   
	    </div>
    </div>


	-->
    

    <script type="text/javascript">
        $(document).ready(function () {
            $(".fdr").click(function () {
                $(".fdad").hide();
            });
        });
    </script>

    <script>
        var _hmt = _hmt || [];
        (function () {
            var hm = document.createElement("script");
            hm.src = "//hm.baidu.com/hm.js?b3a3fc356d0af38b811a0ef8d50716b8";
            var s = document.getElementsByTagName("script")[0];
            s.parentNode.insertBefore(hm, s);
        })();
</script>

</body></html>