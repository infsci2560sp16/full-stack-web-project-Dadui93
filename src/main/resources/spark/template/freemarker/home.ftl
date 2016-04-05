
<!DOCTYPE html>
<html>
<head>
<title>CAMERA</title>
<link href="stylesheets/style.css" rel="stylesheet" type="text/css" media="all" />
<link href="stylesheets/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
<link href='http://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800' rel='stylesheet' type='text/css'>
<link href='http://fonts.googleapis.com/css?family=Roboto+Slab:300,700,100,400' rel='stylesheet' type='text/css'>
<!-- js -->
<script src="js/jquery.min.js"></script>
<!-- //js -->

<script>
  
  	function Aboutme() {
  		var $btn = $("#get-info-btn");
  		$btn.click(function(){
  			$.get("/api/my_info", function( data ) {
			  console.log(data);
			  var dataJson = JSON.parse(data);
			  var $container = $('#my-info')
			  for (var i = 0; i < dataJson.length; i++) {
			  	var $li = $('<li>');
			  	$li.html(dataJson[key]);
			  	$container.append(dataJson[i].name);
			  }
			  $btn.hide();
			  
			});
  		})
  	}
  	
  	function advice() {
  		var $container = $('#music-edit');
  		var $btn = $container.find('button');
  		var $input = $container.find('input');

  		$btn.click(function(){
	  		$.post( "/api/add_music_info", { info: $input.val()})
			  .done(function( data ) {
			    data = JSON.parse(data);
			    $('#music-info').append('<li><a>'+ data.info +'</a></li>')
			  });
	  			
	  		})
  	}
  	
  	function linkss() {
  		var $container = $('#peoples');
  		console.log('get');
  		$.get( "/api/peoples", function( xml ) {
  	     	var $xml = $(xml);
  	      	var $peoples = $xml.find('people');
		  	$.each( $peoples, function() {
			console.log(this);
		  	var $product = $('<div class="product">');
		  	var $a = $('<a href="#" class="fashion">');
		  	$product.append($a);
		  	
		  	var $grid = $('<div class="grid-product">');
		  	var $p = $('<p>'+ $(this).find('name').html() +'</p>');
		  	$grid.append($p);
		  	$product.append($grid);
		  	$product.append($('<div class="clearfix">'));
		  	
		  	
		  	
		  	$container.append($product);
		  });

		});
  	}

  </script>

<!-- for-mobile-apps -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="camera" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false);
		function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- //for-mobile-apps -->
<!-- start-smoth-scrolling -->
<script type="text/javascript">
	jQuery(document).ready(function($) {
		$(".scroll").click(function(event){		
			event.preventDefault();
			$('html,body').animate({scrollTop:$(this.hash).offset().top},1000);
		});
	});
</script>
<!-- start-smoth-scrolling -->
</head>
	
<body>
<!-- banner -->

	<div class="banner-with-text">
		<div class="container">
<!-- header -->	
		<div class="header">
			<div class="header-top">
				<input type="text" placeholder="Search" value="search"/>
			</div>
			<div class="clearfix"> </div>
			<div class="header-bottom">
				<div class="header-bottom-left">
					<a href="index.html">CAMERA<span>LIBRARY</span></a>
				</div>
				<div class="header-bottom-right">
					<span class="menu">MENU</span>
					<ul class="nav1">
						<li class="cap"><a href="index.html">HOME</a></li>
						<li><a href="about.html">ABOUT</a></li>
						<li><a href="canon.html">CANON</a></li>
						<li><a href="nikon.html">NIKON</a></li>
						<li><a href="pentax.html">PENTAX</a></li>
						<li><a href="error.html">OTHERS</a></li>
					</ul>
					<!-- script for menu -->
						<script> 
							$( "span.menu" ).click(function() {
							$( "ul.nav1" ).slideToggle( 300, function() {
							 // Animation complete.
							});
							});
						</script>
					<!-- //script for menu -->
				</div>
				<div class="clearfix"> </div>
			</div>
		</div>	
<!-- //header -->
<!-- Slider-starts-Here -->
				<script src="js/responsiveslides.min.js"></script>
				 <script>
				    // You can also use "$(window).load(function() {"
				    $(function () {
				      // Slideshow 4
				      $("#slider3").responsiveSlides({
				        auto: true,
				        pager: true,
				        nav: false,
				        speed: 500,
				        namespace: "callbacks",
				        before: function () {
				          $('.events').append("<li>before event fired.</li>");
				        },
				        after: function () {
				          $('.events').append("<li>after event fired.</li>");
				        }
				      });
				
				    });
				  </script>
			<!--//End-slider-script -->
			<div  id="top" class="callbacks_container wow fadeInUp" data-wow-delay="0.5s">
				<ul class="rslides" id="slider3">
					<li>
						<div class="banner">	
							<div class="jumbotron banner-info">
								<h1>CANON</h1>
								<p>Canon Inc. (キャノン株式会社 Kyanon Kabushiki-gaisha?) is a Japanese multinational corporation specialized in the manufacture of imaging and optical products, including cameras, camcorders, photocopiers, steppers, computer printers and medical equipment. Its headquarters are located in Ōta, Tokyo, Japan.
								</p>
								<p><a class="btn btn-primary btn-lg" href="error.html" role="button">READ MORE</a></p>
							</div>
						</div>
					</li>
					<li>
						<div class="banner1">	
							<div class="jumbotron banner-info">
								<h1>NIKON</h1>
								<p>Nikon Corporation (株式会社ニコン Kabushiki-gaisha Nikon?) (UK /ˈnɪkɒn/ or US /ˈnaɪkɒn/; About this sound listen (help·info)[nikoɴ]), also known just as Nikon, is a Japanese multinational corporation headquartered in Tokyo, Japan, specializing in optics and imaging products.
								</p>
								<p><a class="btn btn-primary btn-lg" href="error.html" role="button">READ MORE</a></p>
							</div>
						</div>
					</li>
					<li>
						<div class="banner2">	
							<div class="jumbotron banner-info">
								<h1>PENTAX</h1>
								<p>
Pentax is a brand name used primarily by Ricoh Imaging Company for cameras, sport optics (including binoculars and rifle scopes), and CCTV optics. The brand is also used by Hoya Corporation for medical products and services,[1] TI Asahi for surveying instruments,[2] and Seiko Optical Products for certain optical lenses.[3]</p>
								<p><a class="btn btn-primary btn-lg" href="error.html" role="button">READ MORE</a></p>
							</div>
						</div>
					</li>
				</ul>
			</div>
	</div>
	</div>
<!-- //banner -->

<!-- banner-bottom -->
	<div class="banner-bdy">
		<div class="container">
	<div class="banner-bottom" id="events">
			<div class="banner-bottom-grids">
				<div class="col-md-4 banner-bottom-grid">
					<img src="images/6.jpg" alt=" "/>
					<div class="more">
						<a href="error.html">More</a>
					</div>
				</div>
				<div class="col-md-4 banner-bottom-grid">
					<img src="images/7.jpg" alt=" "/>
					<div class="more">
						<a href="error.html">More</a>
					</div>
				</div>
				<div class="col-md-4 banner-bottom-grid">
					<img src="images/5.jpg" alt=" "/>
					<div class="more">
						<a href="error.html">More</a>
					</div>
				</div>
				<div class="clearfix"> </div>
			</div>
			<div class="features">
				<div class="col-md-9 features-left">
					<h3> How to take good photo</h3>
					<div class="features-left-grids">
						<div class="col-md-4 features-left-grid">
							<a href="error.html"><img src="images/1.jpg" alt=" " /></a>
						</div>
						<div class="col-md-8 jumbotron features-left-grid1">
							<h4><a href="error.html">How to use light</a></h4>
							<p>Light is the source of energy for the universe and is the central image of many religions and the photographer's top resource. The word "photography" derives from the Greek and means, literally, “light writing.” From the power of full sun over water to the beam from a error candle, it is light photographers play with, light in its many moods and manifestations that we capture on film.</p>
							<p><a class="btn read btn-primary btn-lg" href="error.html" role="button">Read More</a></p>
						</div>
						<div class="clearfix"> </div>
					</div>
					<div class="features-left-grids">
						<div class="col-md-4 features-left-grid">
							<a href="error.html"><img src="images/3.jpg" alt=" " /></a>
						</div>
						<div class="col-md-8 jumbotron features-left-grid1">
							<h4><a href="error.html">Photo composition</a></h4>
							<p>In photography, it’s not just what you shoot that counts – the way that you shoot it is crucial, too. Poor photo composition can make a fantastic subject dull, but a well-set scene can create a wonderful image from the most ordinary of situations. With that in mind, we’ve picked our top 10 photo composition ‘rules’ to show you how to transform your images, as well as offered some of our best photography tips from the experts who do it on a daily basis.</p>
							<p><a class="btn read btn-primary btn-lg" href="error.html" role="button">Read More</a></p>
						</div>
						<div class="clearfix"> </div>
					</div>
				</div>
				
				<div class="clearfix"> </div>
			</div>
			<div style="float: left; margin-right:100px; margin-left:100px; margin-top:50px;">
				<h4>About me</h4>
				<p><a href="#">${Me}</a></p>
				<p>						
					<#if Me=="I am Haoxiang Sun">
						I love  Photography
					<#elseif pittInfo=="@pitt">
						I love trip
					<#else>
						hahahaha
					</#if>
				<p>		
				
				<button id="get-info-btn">Know more about me</button>
				<ul class="social-in" id="my-info">
				</ul>
			</div>

			<div style="float: left; margin-right:100px; margin-left:100px; margin-top:60px;">
					<ul id="music-info" style="list-style: none;">
					<#list lst as item>
						<li><a>${item}</a></li>
					</#list>
				</ul>
				<div id="music-edit">
					<input type="text" name="info" />
					<button>Submit</button>
				</div>		
			</div>


						<div style="float:left; margin-top:30px; margin-right:100px; margin-left:100px;  ">
				<h3>Links</h3>
				<div class="cur-right" id="peoples">
						<!--<div class="product">
							<a href="#" class="fashion"><img class="img-responsive " src="images/images.jpeg" alt=""></a>
							<div class="grid-product">
							<p>Singers</p>
							<a href="#" class="more-info">More Info <i> </i></a> 
						</div>
						<div class="clearfix"> </div>
						</div>
						<div class="product">
							<a href="#" class="fashion"><img class="img-responsive " src="images/coldplay.jpg" alt=""></a>
							<div class="grid-product">
							<p>Bands</p>
							<a href="#" class="more-info">More Info <i> </i></a> 
							</div>
						<div class="clearfix"> </div>
						</div>
						<div class="product">
							<a href="#" class="fashion"><img class="img-responsive" src="images/producer.jpg" alt=""></a>
							<div class="grid-product">
							<p>Producer</p>
							<a href="#" class="more-info">More Info <i> </i></a> 
							</div>
						<div class="clearfix"> </div>
						</div>
						
					</div>-->
				</div>
		</div>
	</div>
	</div>



	</div>


<!-- //banner-bottom -->

<!-- here stars scrolling icon -->
	<script type="text/javascript">
		$(document).ready(function() {
			/*
				var defaults = {
				containerID: 'toTop', // fading element id
				containerHoverID: 'toTopHover', // fading element hover id
				scrollSpeed: 1200,
				easingType: 'linear' 
				};
			*/
								
			$().UItoTop({ easingType: 'easeOutQuart' });
								
			});
	</script>
<!-- //here ends scrolling icon -->
<script>
  	Aboutme();
  	advice();
  	linkss();
  </script>

</body>
</html>