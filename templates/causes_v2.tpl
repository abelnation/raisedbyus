{extends file="base.tpl"}

{block name="title"}RaisedBy.Us | Our Causes{/block}

{block name="header_links"}
						<!-- <li><a href="/contact.php">contact us</a></li> -->
						<li><a href="/getinvolved.php">get involved</a></li>
						<li class="active"><a href="/causes.php">our causes</a></li>
						<li><a href="/howitworks.php">learn more</a></li>
						<li><a href="/">about us</a></li>
{/block}

{block name="content"}

		<div class="container">
			<h1>Our Causes</h1>

			<div class="row">
				<div class="span16">
					<p class="h2" style="text-shadow: none;">Participants in RaisedBy.Us can make donations to any of the hundreds of organizations in our database. 
					<!-- A partial list is available below. If you don't see a cause that you're passionate about, get in touch, because in some cases, we might be able to add it to the database.-->
					</p>
				</div>
			</div>

			<div class="row" style="margin-top: 20px;">
				<div class="span16">
				<h3>Categories</h3>	
				</div>
			</div>
			<div id="cause-nav" class="row">
				<div class="span-one-third">
					<a href="#arts_culture_humanities" class="jumpbuttonlink">Arts, Culture, Humanities</a>
					<a href="#education" class="jumpbuttonlink">Education</a>
					<a href="#environment" class="jumpbuttonlink">Environment</a>
				</div>
				<div class="span-one-third">
					<a href="#health" class="jumpbuttonlink">Health</a>
					<a href="#human_services" class="jumpbuttonlink">Human Services</a>
					<a href="#international" class="jumpbuttonlink">International</a>
				</div>
				<div class="span-one-third">
					<a href="#religious" class="jumpbuttonlink">Religious</a>
					<a href="#tech" class="jumpbuttonlink">Tech</a>
					<a href="#new_york" class="jumpbuttonlink">New York</a>
				</div>
			</div>
		</div>

		<section class="toplayer-container featured">
			<div class="container">
			<div class="row">
				<div class="span16">
					<h3 style="text-shadow: none; color: #223B40">featured causes</h3>
					<div id="featured-causes">
							
						<a href="http://charitywater.org" class="donor"><img src="img/causes_charitywater.png" alt="charity water" /></a>
						<a href="http://www.redcross.org" class="donor"><img src="img/causes_americanredcross.png" alt="american red cross" /></a>
						<a href="http://donorschoose.org" class="donor"><img src="img/causes_donorschoose.png" alt="donors choose" /></a>
						<a href="http://cityofhope.org" class="donor"><img src="img/causes_cityofhope.png" alt="city of hope" /></a>
						<a href="http://marchofdimes.org" class="donor"><img src="img/causes_marchofdimes.png" alt="march of dimes" /></a>
						<a href="http://www.habitat.org" class="donor"><img src="img/causes_habitatforhumanity.png" alt="habitat for humanity" /></a>
						<a href="http://unicef.org" class="donor"><img src="img/causes_unicef.png" alt="unicef" /></a>
						<a href="http://ww5.komen.org" class="donor"><img src="img/causes_susangkomen.png" alt="susan g komen for the cure" /></a>
					</div>
				</div>
			</div>
			</div>
		</section>

		<div class="container">

			{section name=category loop=$categories}

			<div class="row">
				<div class="span16">
					<a name="{$categories[category].slug}"></a>
					<table class="bordered-table zebra-triped cause-category">
						<thead>
							<tr>
								<th colspan="2">
									{$categories[category].category}
									<a class="backtotop-link" href="#top">back to top</a>
								
								</th>
							</tr>
						</thead>
						<tbody>
							{section name=cause loop=$categories[category].causes}
							{if $smarty.section.cause.index < 10}
							<tr>
							{else}
							<tr class="extracause">
							{/if}
								<td style="width: 200px;"><a href="{$categories[category].causes[cause].url}">{$categories[category].causes[cause].name}</a></td>
								<td>{$categories[category].causes[cause].desc}</td>
							</tr>
							{/section}
							
							{if $smarty.section.cause.index > 10 && $smarty.section.cause.last}
							
							<tr><td colspan="2"><a class="show-all-causes-link" href="#">view all {$smarty.section.cause.index} in {$categories[category].category}</a></td></tr>
							
							{/if}
						</tbody>
					</table>
				</div>
			</div>

			{/section}

			<div class="row">
				<div class="span16">
					<p class="h2" style="text-shadow: none;">Don't see the cause you care about? <a href="getinvolved.php">Get in touch</a>.</p>
				</div>
			</div>

		<script type="text/javascript">
			$("a.show-all-causes-link").click(function(e) {
				$(this).parents("table").find("tr").addClass("shown");
				$(this).parents("tr").hide();
				return false;
			});
		</script>

		</div> <!-- end container -->
{/block}
