		<!-- Base code for FB widgets -->
		<div id="fb-root"></div>
		<script>(function(d, s, id) {
		  var js, fjs = d.getElementsByTagName(s)[0];
		    if (d.getElementById(id)) return;
			  js = d.createElement(s); js.id = id;
			    js.src = "//connect.facebook.net/en_US/all.js#xfbml=1&appId=156745624344246";
				  fjs.parentNode.insertBefore(js, fjs);
				  }(document, 'script', 'facebook-jssdk'));</script>

		<!-- Topbar
		================================================== -->
		<div class="topbar" data-scrollspy="scrollspy" >
			<div class="topbar-inner">
				<div class="container">
					<!-- <a class="brand" href="/">RaisedBy.Us</a> -->
					<a class="brand" href="/">
						<span></span>
						<!-- RaisedBy.Us -->
					</a>

					<div class="share-button-container">
						<div class="fb-like" data-href="http://raisedby.us/" data-send="false" data-layout="button_count" data-width="100" data-show-faces="false" data-font="trebuchet ms"></div>
					</div>

					<div class="share-button-container">
						<a href="https://twitter.com/share" class="twitter-share-button" data-url="http://raisedby.us/" data-text="raisedby.us - a giving program for techies from @techiesgiveback">Tweet</a>
						<script>!function(d,s,id){ var js,fjs=d.getElementsByTagName(s)[0];if(!d.getElementById(id)){ js=d.createElement(s);js.id=id;js.src="//platform.twitter.com/widgets.js";fjs.parentNode.insertBefore(js,fjs); } } (document,"script","twitter-wjs");</script>
					</div>

					<ul class="nav">
						{block name="header_links"}
						<!-- <li><a href="/contact.php">contact us</a></li> -->
						<li><a href="/getinvolved.php">get involved</a></li>
						<li><a href="/causes.php">our causes</a></li>
						<li><a href="/howitworks.php">learn more</a></li>
						<li class="active"><a href="/">about us</a></li>
						{/block}

						<!-- TODO: tweet and fb like buttons -->
					</ul>
				</div>
			</div>
		</div>
