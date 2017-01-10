<%@ Page Title="Home Page" Language="VB" AutoEventWireup="false"
    CodeFile="Home.aspx.vb" Inherits="_Home" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="it">
    <head>
        <meta name="description" content="Its a Forum dedicated to students and teachers of Christ University for the storage and sharing of materials" />
        <meta name="keywords" content="Prometheus, Forum, Share, Upload, Download" />
        <meta http-equiv="Content-Type" content="text/html;charset=UTF-8" />
        
        <title>Prometheus - Forum For The Students By the Students</title>

        <link rel="shortcut icon" href="Images/favicon.ico" />
        <link rel="stylesheet" type="text/css" media="screen" href="Styles/min.css" />
		<!--[if IE 7]><link rel="stylesheet" type="text/css" href="css/style_ie7.css" media="screen" /><![endif]-->

        <script type="text/javascript" src="Scripts/jquery.js"></script>
		<script type="text/javascript" src="Scripts/jquery.scrollTo.js"></script>
		<script type="text/javascript" src="Scripts/jquery.history.js"></script>	 
		<script type="text/javascript" src="Scripts/jquery.slimbox2.js"></script>			
        <script type="text/javascript" src="Scripts/jquery.main.js?v=1"></script>
		
		<!--[if lte IE 6]>
			<meta http-equiv="refresh" content="0; url=ie.html">
		<![endif]-->
    </head>
    <body background="Images/main_background.jpg">	
		<div id="toppanel">
			<div id="panel">
				<div class="content clearfix">
					<div class="left">
						<h1>Prometheus</h1>
						<h2>Forum For The Students By The Students - Christ Unversity</h2>
						
						<ul>
		                    <li><img src="Images/phone.png" alt="phone" /> <strong>Phone: </strong> (+91)80-40129100</li>
		                    <li><img src="Images/email2.png" alt="email" /> <strong>Mail: forum.prometheus@gmail.com </strong><a href="https://accounts.google.com/ServiceLogin?service=mail&passive=true&rm=false&continue=http://mail.google.com/mail/&scc=1&ltmpl=default&ltmplcache=2"></a></li>
		                    <li><img src="Images/skype.gif" alt="skype" width="18" height="18" /> <strong>Skype: </strong> <a href="skype:christuniversity?add">christuniversity</a></li>
		                    <li><img src="images/wlm.png" alt="wlm" /> <strong>WLM: prometheus@hotmail.it </strong><a href="http://windows.microsoft.com/en-US/messenger/home"></a></li>

						</ul>
					</div>
					<div id="contatti" class="left right">			
						<h1>Contact Us</h1>		
						<form id="form" action="#" method="post">
							<p>								
								<label class="grey" for="signup">Name:</label>
								<input class="field" type="text" name="signup" id="signup" value="" size="23" />
								<label class="grey" for="email">Email:</label>
								<input class="field" type="text" name="email" id="email" size="23" />
								<label class="grey" for="message">Message:</label>
								<textarea name="message" id="message" class="field" cols="10" rows="5"></textarea>
								<input type="text" name="check" style="display:none" />
								<input type="submit" name="submit" id="submit" value="Mail us!" class="bt_login" />
							</p>
						</form>
					</div>
					<div id="messaggio" class="left right" style="display:none">
						<div id="response"></div>
					</div>
				</div>
			</div> <!-- /login -->		
		
		    <!-- The tab on top -->	
			<div class="tab">
				<ul class="login">
					<li id="toggle">
						<a id="open" class="open" href="#contact" style="background-image: none">Contact Us</a>
						<a id="close" style="display: none;" class="close" href="#contact">Close Panel</a>	
					</li>
			    	<li class="right">&nbsp;</li>
				</ul> 
			</div> <!-- / top -->
			
		</div>		

		<!-- container -->		
		<div id="container">
			<!-- tag and socials -->
			<div id="tag" style="background-image: url('Images/tag.png')"><a href="#index">
                <img alt="Prometheus - Forum For The Students By The Students" 
                    style="background-image: url('Images/tag.png'); background-repeat: repeat" /></a></div>
			<div id="socials" style="background-image: url('Images/socials.gif')">
				<a href="https://www.facebook.com/prometheus" rel="external" title="Follow us on Facebook"><img src="Images/facebook.png" alt="Follow us on Facebook" /></a>
				<a href="http://twitter.com/prometheus" title="Follow us on Twitter" rel="external"><img src="Images/twitter.png" alt="Follow us on Twitter" /></a>
				<a href="#" title="Subscribe our Feeds"><img src="Images/rss.png" alt="Subscribe our Feeds" /></a>
				<a href="https://accounts.google.com/ServiceLogin?service=mail&passive=true&rm=false&continue=http://mail.google.com/mail/&scc=1&ltmpl=default&ltmplcache=2"title="Send us an email"><img src="images/email.png" alt="Send us an Email" /></a>
			
			</div>
			
			<!-- home -->			
			<div id="home" class="page">
				<div class="container_16">
					<a name="index"></a>
					<div class="home_servizi" 
                        style="background-image: url('Images/services_written.png')"><a class="scroll" href="#servizi">Services</a></div>
					<div class="home_blog"><a href="http://blog.prometheus.com">Blog</a></div>
					<div class="home_portfolio" 
                        style="background-image: url('Images/My Stuff.png')"><a class="scroll" href="#portfolio">Portfolio</a></div>
					<div class="home_about"><a class="scroll" href="#about">About</a></div>
					<div class="home_contact" 
                        style="background-image: url('Images/contact us.png')"><a href="#" class="contact">Contact</a></div>				
				</div>
			</div>
			<!-- about -->
			<div id="about" class="page">
				<div class="container_16">
					<!--menu--><div class="grid_10 prefix_6"><ul class="menu" 
                            style="background-image: url('Images/menu.png')"><li><a href="#home" class="home">Home</a></li><li><a href="#about" class="about selected">About</a></li><li><a href="http://blog.prometheus.com" class="blog">Blog</a></li><li><a href="#servizi" class="servizi">Services</a></li><li><a href="#portfolio" class="portfolio">Portfolio</a></li><li><a href="#home" class="contatti contact">Contact</a></li></ul></div>
				
					<div class="grid_14" style="color: #FFFFFF">
						<div class="content">
							<h1 style="color: #FFFF00">About</h1>
							<h2 style="color: #FFFF00">In brief...</h2>
							<ul>
								<li>Name: <strong>Promethues</strong></li>
								<li>Tag: <strong>Forum For The Students By The Students</strong></li>
								<li>Copyrights To: <strong>Christ University</strong></li>
								<li>Some Facts:
									<ul>
										<li><strong>Dedicated Forum for the online storage and sharing of stuffs</strong></li>
										<li><strong>Authenticated by the christ university credentials automatically</strong></li>
									</ul>
								</li>
							</ul>
							
							<h2 style="color: #FFFF00">Details...</h2>
							<p>Prometheus - Forum For The Students By The Students is a common platform for the students of Christ University to communicate and share their respective materials.</p>
							<p>This application provides each user equal amount of cloud space to store their materials.</p>
							<p>Prometheus provides its users with high-quality free online file hosting and sharing services. Our staff is a team of highly qualified specialists in the sphere of programming, web-design.</p>
							<p>The main principle of our business is satisfying the needs of the Internet users hosting and sharing their data. Therefore, we exert every effort to make our services effective and user-friendly. <a href="#portfolio">Portfolio</a>.</p>
							<p>We pay attention towards reducing more and more paper and manual as much as possible and make it as easy as possible to share the data among more and more users</p>
							<p>For information on Prometheus, please email to prometheus@gmail.com.</p>
						</div>
								<div class="clear"></div>
					</div>
				
				</div>
			</div>
			<!-- services -->
			<div id="servizi" class="page">
				<div class="container_16">
					<!--menu--><div class="grid_10 prefix_6"><ul class="menu" 
                            style="background-image: url('Images/menu.png')"><li><a href="#home" class="home">Home</a></li><li><a href="#about" class="about">About</a></li><li><a href="http://blog.prometheus.com" class="blog">Blog</a></li><li><a href="#servizi" class="servizi  selected">Services</a></li><li><a href="#portfolio" class="portfolio">Portfolio</a></li><li><a href="#home" class="contatti contact">Contacts</a></li></ul></div>

					<div class="grid_14" style="color: #FFFFFF; font-weight: bold;">
						<div class="content">
							<h1 style="color: #FFFF00; font-weight: bolder;">Services</h1>
							<p>Visit our <a href="#portfolio" style="color: #FFFFFF; font-weight: bolder;">portfolio </a>Drop Your Stuffs at a secured and safe place.</p>
							<h2 style="color: #FFFF00; font-weight: bolder">We Serve...</h2>
								<ul>
									<li>Uploading of materials on a dedicated online server</li>
									<li>consistent updates through the blog</li>									
									<li>Downloading the materials anywhere anytime through the dedicated server</li>
									<li>With our service users can upload, store and download music, video, photo, documents, and any other types of files.</li>
									<li>Sharing and advertising of materials among other users.</li>
									<li>Forum for the innovative ideas.</li>
								</ul>							
							<h2 style="color: #FFFF00; font-weight: bolder">Development...</h2>
								<ul>
									<li>Appliction web.</li>
									<li>Application Cloud.</li>
									<li>Developed by Preethi JC, Purnesh Dixit, Rishabh Sharma.</li>
									<li>Maintained by and copyright to Christ University</li>
								</ul>							
							<h2 style="color: #FFFF00; font-weight: bolder">Future Targets...</h2>
								<ul>
									<li>All types of communications between users.</li>
									<li>Dedicated forum exclusively for questions and answers on respective topics</li>
									<li>Cloud based Android Application</li>
								</ul>
							<p style="text-align: center"><strong><a class="contact" href="#contact" 
                                    style="color: #000000; font-weight: bolder; font-family: Forte; font-size: x-large; text-decoration: underline;">Contact Us</a></strong></p>
											
						</div>
								<div class="clear"></div>
					</div>				
				</div>
			</div>
			<!-- portfolio -->
			<div id="portfolio" class="page">
				<div class="container_16">
					<!--menu--><div class="grid_10 prefix_6"><ul class="menu" 
                            style="background-image: url('Images/menu.png')"><li><a href="#home" class="home">Homee</a></li><li><a href="#about" class="about">About</a></li><li><a href="http://blog.prometheus.com" class="blog">Blog</a></li><li><a href="#servizi" class="servizi">Servizi</a></li><li>
                        <a href="#portfolio">2</a></li><li><a href="#home" class="contatti contact">Contact</a></li></ul></div>


					<div id="gallery" class="grid_16">
						<ul class="gallery">
							<li><a href="Images/doc.png" rel="lightbox-gallery" class="pic-1" title="Drop your documents at your document box!<br /><br /><a rel='external' href='MyDoc.aspx?query=Documents'>Visit Documents</a>"><img src="Images/documents.jpg" alt="Isolaliri Immobiliare" /></a></li>
							<li><a href="Images/Presentation.jpg" rel="lightbox-gallery" class="pic-2" title="Drop your presentations at your presentation box!<br /><br /><a rel='external' href='MyDoc.aspx?query=Presentations'>Visit Presentations</a>">
                                <img src="Images/Presentation.jpg" alt="Isolaliri Immobiliare" /></a></li>
							<li><a href="Images/Art.jpg" rel="lightbox-gallery" class="pic-3" title="Drop your articles at your Article box!<br /><br /><a rel='external' href='MyDoc.aspx?query=Articles'>Visit Articles</a>">
                                <img src="Images/Art.jpg" alt="Hydrosfera" /></a></li>
							<li><a href="Images/soft.png" rel="lightbox-gallery" class="pic-4" title="Drop your softwares at your software box!<br /><br /><a rel='external' href='MyDoc.aspx?query=Softwares'>Visit Softwares</a>"><img src="Images/soft.png" alt="Cestra Ceramiche" /></a></li>
							<li><a href="Images/journ.png" rel="lightbox-gallery" class="pic-5" title="Drop your presentation at your Journal box!<br /><br /><a rel='external' href='MyDoc.aspx?query=Journals'>Visit Journals</a>"><img src="Images/journ.png" alt="Enrico Marcoccia" /></a></li>
							<li><a href="Images/others.png" rel="lightbox-gallery" class="pic-6" title="Keep your other stuffs here!<br /><br /><a rel='external' href='MyDoc.aspx?query=Others'>Visit Others</a>"><img src="Images/others.png" alt="L'immobiliare" /></a></li>
						</ul>

					</div>
				
				</div>
			</div>
			
			
			<a href="#index" class="contact" title="Contact"></a>
		&nbsp;</div>
		
<script type="text/javascript">
    var gaJsHost = (("https:" == document.location.protocol) ? "https://ssl." : "http://www.");
    document.write(unescape("%3Cscript src='" + gaJsHost + "google-analytics.com/ga.js' type='text/javascript'%3E%3C/script%3E"));
</script>
<script type="text/javascript">
    try {
        var pageTracker = _gat._getTracker("UA-9643976-3");
        pageTracker._trackPageview();
    } catch (err) { }</script>
    </body>
</html>