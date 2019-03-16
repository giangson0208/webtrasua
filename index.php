<base href="http://localhost/trasua/" />
<!-- <base href="http://trasua.com/" /> -->

<?php 
session_start();
include("include/connect.php");?>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<html xmlns:fb="http://ogp.me/ns/fb#">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title> Cửa hàng trà sữa </title>
<script src="js/jquery-1.3.2.min.js" type="text/javascript"></script>
<link rel="stylesheet" style="style/sheet" href="css/index10.css">



<link rel="stylesheet" style="style/sheet" href="slide/engine/style.css">
<script type="text/javascript" src="slide/engine/wowslider.js"></script>
<script type="text/javascript" src="slide/engine/wowslider.mod.js"></script>




<script>(function(d, s, id) {
  var js, fjs = d.getElementsByTagName(s)[0];
  if (d.getElementById(id)) return;
  js = d.createElement(s); js.id = id;
  js.src = "//connect.facebook.net/vi_VN/all.js#xfbml=1";
  fjs.parentNode.insertBefore(js, fjs);
}(document, 'script', 'facebook-jssdk'));</script>


<!-------------------------------------Slide tài trợ-------------------------------------->

<script src="js/newsScrollerDefault-rightToleft-bottomTotop.js" type="text/javascript"></script>
<script src="js/newsScrollerEdit-leftToright-topTobottom.js" type="text/javascript"></script>


<!-------------------------------------zoom anh-------------------------------->
<script type="text/javascript" src="js/zoom/cloud-zoom.1.0.2.js"></script>
<link href="css/cloud-zoom.css" rel="stylesheet" type="text/css" />



<!-------------------------------------Tabs-------------------------------->
<script>

// Wait until the DOM has loaded before querying the document

$(document).ready(function(){

$('ul.tabs').each(function(){

// For each set of tabs, we want to keep track of

// which tab is active and it's associated content

var $active, $content, $links = $(this).find('a');

// If the location.hash matches one of the links, use that as the active tab.

// If no match is found, use the first link as the initial active tab.

$active = $($links.filter('[href="'+location.hash+'"]')[0] || $links[0]);

$active.addClass('active');

$content = $($active.attr('href'));

// Hide the remaining content

$links.not($active).each(function () {

$($(this).attr('href')).hide();

});

// Bind the click event handler

$(this).on('click', 'a', function(e){

// Make the old tab inactive.

$active.removeClass('active');

$content.hide();

// Update the variables with the new link and content

$active = $(this);

$content = $($(this).attr('href'));

// Make the tab active.

$active.addClass('active');

$content.show();

// Prevent the anchor's default click action

e.preventDefault();

});

});

});

</script>

<!-------------------------------------slide-------------------------------->
<link rel="stylesheet" style="style/sheet" href="css/style1.css">
<script language="javascript" type="text/javascript" src="js/jquery.easing.js"></script>
<script language="javascript" type="text/javascript" src="js/script.js"></script>
<script type="text/javascript">
 $(document).ready( function(){	
		var buttons = { previous:$('#lofslidecontent45 .lof-previous') ,
						next:$('#lofslidecontent45 .lof-next') };
						
		$obj = $('#lofslidecontent45').lofJSidernews( { interval : 4000,
												direction		: 'opacitys',	
											 	easing			: 'easeInOutExpo',
												duration		: 2000,
												auto		 	: true,
												maxItemDisplay  : 4,
												navPosition     : 'horizontal', // horizontal
												navigatorHeight : 32,
												navigatorWidth  : 80,
												mainWidth:1000,
												buttons			: buttons} );	
	});
</script>
</head>
<body style="background:white">
<div id="wapper">
	<div id="header">
		<div id="lg-header">
			<h1><a href="index.php">logo</a></h1>
		</div>
		<!-- End .bg-lg-header -->
		<div id="bg-header">	
		</div><!-- End .bg-header -->
			<div id="menu-header">
			<?php include("home_include/menu_ngang.php"); ?>
				<!-- End .menu -->
			</div><!-- End .menu-header -->
	</div><!-- End .header -->
	<div id="content">
		<div id="lofslidecontent45" class="lof-slidecontent" style="width:1000px; height:350px;">
			<div class="preload"><div></div></div>
				<div id="lof-main-outer">
					<ul class="lof-main-wapper">
						<li><img src="img/slide/banner1.jpg" width="1000" height="350"></li>
						<li><img src="img/slide/banner2.jpg" width="1000" height="350"></li>
						<li><img src="img/slide/banner3.jpg" width="1000" height="350"></li>
						<li><img src="img/slide/banner4.jpg" width="1000" height="350"></li>
						<li><img src="img/slide/banner5.jpg" width="1000" height="350"></li>
					</ul>
				</div>
				<div class="lof-navigator-wapper">

					<div onClick="return false" href="" class="lof-next">Next</div>
					  <div class="lof-navigator-outer">
							<ul class="lof-navigator">
							   <li><img src="img/slide/banner1.jpg" width="70" height="25" /></li>       		
							   <li><img src="img/slide/banner2.jpg" width="70" height="25" /></li>       		
							   <li><img src="img/slide/banner3.jpg" width="70" height="25" /></li>       		
							   <li><img src="img/slide/banner4.jpg" width="70" height="25" /></li>       		
							   <li><img src="img/slide/banner5.jpg" width="70" height="25" /></li>       		
							</ul>
					  </div>
					<div onClick="return false" href="" class="lof-previous">Previous</div>
				</div> 
		</div>
		<div id="main-content">
			<div id="left-content">
				<?php include("home_include/left_content.php");?>
			</div><!-- End .left-content -->
			
			<div id="center-content">
				
				<?php include("content_page.php"); ?>
				<!-------------------------------------------------------------------------------------------------------------------->
					
				
			</div><!-- End .center-content -->
			
			<div id="right-content">
				<?php include("home_include/right_content.php"); ?>
			</div><!-- End .right-content-->
		
	<div id="footer">
		<div id="menu-footer">
			<ul>
				<li style="padding-left:220px"><a href="index.php">TRANG CHỦ</a></li>
				<li><a href="index.php?content=gioithieu">GIỚI THIỆU</a></li>
				<li><a href="index.php?content=sanpham">SẢN PHẨM</a>
				
				<li><a href="index.php?content=khuyenmai">KHUYỂN MÃI</a></li>
				<li><a href="index.php?content=tintuc">TIN TỨC</a></li>
				<li><a href="index.php?content=hotro">HỖ TRỢ</a></li>
			</ul>
		</div><!-- End .menu-footer -->
		<div id="bg-footer">
			<div class="footer">
   <div class="pageWidth">
      <div class="pageContent">
         <div id="footer" class="footercolumns">
            <div id="footer-top">
               <div class="footer-top-left">
                  <div class="block-top"> <a href="" title=""><img src="img/logo-footer4.png" alt="" 
                  	style="float: center; width :150px;margin-left: 45px"  /></a> </div>
                  

               </div>
               <div class="fotter-contact">
                  <h3>Our Links</h3>
                  <ul>
                     <li><a href="http://ketoanonline.com.vn/" target="_blank">Kế Toán Online</a></li>
                     <li><a href="http://thietkewebmoi.com/" target="_blank">Thiết Kế Website</a></li>
                     <li><a href="http://thumua24h.vn/" target="_blank">Thu Mua 24h</a></li>
                     <li><a href="http://nauanphuchau.com/" target="_blank">Chuyên Tổ Chức Tiệc</a></li>
                     
                  </ul>
               </div>
            </div>
            <div class="four columns column">
               <h3>Liên Kết</h3>
               <ul>
                  <li><a target='_blank' href='http://southparadisetravel.com' title='Travel Viet Nam | Paradise Tour Ha Long | Tour Ha Noi | Tour Hue | son doong caves| Vietnam'>Travel VietNam - Vietnam tourism</a></li>
                  <li><a target='_blank' href='http://nhatbaothudo.com/' title='nhatbaophobuon'>chung cư 219 Trung Kính</a></li>
                  <li><a href="help/">Trợ giúp</a></li>
                  <li><a href="misc/contact">Liên hệ BQT</a></li>
               </ul>
            </div>
            <div class="three columns column">
               <h3>Đối Tác</h3>
               <ul>
                  <li><a href="#">Contact Us</a></li>
                  <li><a href="#">Contact Us</a></li>
                  <li><a href="#">Contact Us</a></li>
                  
               </ul>
            </div>
            <div class="three columns column">
               <h3>Liên Hệ Đặt Quảng Cáo</h3>
               <ul>
                  <li><i class="fa fa-home"></i> Thu Duc, Ho Chi Minh City, Viet Nam</li>
                  <p>&nbsp;</p>
                  <li><i class="fa fa-phone"></i> +30-2106019311</li>
                  <p>&nbsp;</p>
                  <li><i class="fa fa-envelope-o"></i> hotroketoanonlinevn@gmail.com</li>
                  <p>&nbsp;</p>
                  <li><i class="fa fa-globe"></i> www.ketoanonline.com.vn</li>
               </ul>
            </div>
         </div>
      </div>
   </div>
</div>

		</div><!-- End .bg-footer -->
	</div><!-- End .footer -->
</div><!-- End .wapper -->
</body>
</html>