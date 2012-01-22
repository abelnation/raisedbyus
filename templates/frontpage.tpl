{extends file="base.tpl"}

{block name="content"}


		<div class="container">

			<!-- Video & Main Caption
			================================================== -->
			<section id="get_involved">
			<div class="row">
				<div class="span-two-thirds">

					<!-- TODO: replace with actual video -->
					<div style="height: 349px; width: 620px; background: black;"></div>
				</div>
				<div class="span-one-third">
					<p>A workplace giving  program for techies that allows employees to give a little bit of their paycheck to the cause of their choice.</p>
					<a href="getinvolved.php"><img src="img/button_get_involved.png" alt="get involved" /></a>
				</div>
			</div>
			</section>

		</div> <!-- End container -->

		<!-- Donating 1% makes a huge difference w/ equation section
		================================================== -->
		<section id="math" class="toplayer-container featured">
		<div class="container">
			<div class="row">
				<div class="span16">
					<!-- <h2>donating just 1% of your paycheck can make a huge difference.</h2> -->
					<div id="the-equation">
						<img src="img/equation.png" alt="donating just 1% of your paycheck can make a huge difference" />
						<!-- <p>
						<span class="value">1%</span>
						of a
						<span class="value">$50,000 salary</span>
						x
						<span class="value">100 employees</span>
						=
						<span class="value">$50,000 donated per year</span>
						</p> -->
					</div>
					<small>(You can donate as much or as little as you like each month. We recommend 1%.)</small>
				</div>
			</div>
		</div> <!-- End container -->
		</section>


		
		<section id="founding_partners">
			<div class="container">
				
				<!-- Founding partner logos
				================================================== -->
				<div class="row" id="founding_partners">
					<div class="span16">
						<h3>Founding Partners</h3>
						<div id="partner-logos">
							<a href="http://foursquare.com" class="partner"><img src="img/partners_foursquare.png" alt="foursquare" /></a>
							<a href="http://thrillist.com" class="partner"><img src="img/partners_thrillist.png" alt="thrillist" /></a>
							<a href="http://squarespace.com" class="partner"><img src="img/partners_squarespace.png" alt="squarespace" /></a>
							<a href="http://hunch.com" class="partner"><img src="img/partners_hunch.png" alt="hunch" /></a>
						</div>
					</div>
				</div>
			</div>
		</section>
				
		<section id="final_info" class="toplayer-container">
			<div class="container">
		
				<!-- Our causes logos
				================================================== -->
				<div class="row" id="causes">
					<div class="span16">
						<h3>Causes</h3>
						<div id="donor-logos">
							<a href="http://charitywater.org" class="donor"><img src="img/causes_charitywater.png" alt="charity water" /></a>
							<a href="http://www.redcross.org" class="donor"><img src="img/causes_americanredcross.png" alt="american red cross" /></a>
							<a href="http://donorschoose.org" class="donor"><img src="img/causes_donorschoose.png" alt="donors choose" /></a>
						</div>
						<a id="see-all-causes" href="/causes.php">See All Causes</a>
					</div>	
				</div>

				<!-- why workplace giving & more about techiesgiveback
				================================================== -->

				<div class="row" id="more_info">
					<div class="span8">
						<h4>Why Workplace Giving?</h4>
						<p>We wanted to find a way that everyone in tech - from product managers to CEOs - could give a little bit to charity each month. We wanted it to be easy and cost effective. We wanted people to be able to choose for themselves who to give to.</p>

						<p>We found our answer in employee giving. Almost $5bn is donated to charity each year through workplace giving programs. It's commonplace among almost every large company. We thought: why shouldn't we provide that same opportunity to employees in the companies we're building?</p>
					</div>
					<div class="span8">
						<h4>About Techies Give Back</h4>
						<p>TechiesGiveBack mobilizes the NY Tech community to help others. Since we launched in December 2009, we've raised over $100,000 for causes across North America. We are currently developing new, scalable ideas for the tech community to give back. We focus on education, tech, and local NY-based charities.</p>
					</div>
				</div>
			

			<!-- Participating (not founding) companies
			================================================== -->
			<!-- <section id="participating_companies">
			<div class="row">
				<div class="span16">
					<h4>Participating Companies</h3>
				</div>
			</div>
			</section> -->
			
			</div> <!-- end container -->
		</section>

{/block}
