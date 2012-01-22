{extends file="base.tpl"}

{block name="title"}RaisedBy.Us | Get In Touch{/block}

{block name="js"}
		<script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>
		<script type="text/javascript" src="js/jquery-validation-1.9.0/jquery.validate.min.js"></script>
		<script type="text/javascript">
			$(function() {

				if (window.location.hash == "#finished") {
					$(".actions").toggleClass("hide");
					$(".input").toggleClass("hide");
					$("legend.finished").toggleClass("hide");
					$("legend.normal").toggleClass("hide");
				}

				$("#getinvolved-form").validate();
			});
		</script>
{/block}

{block name="header_links"}
						<!-- <li><a href="/contact.php">contact us</a></li> -->
						<li class="active"><a href="/getinvolved.php">get involved</a></li>
						<li><a href="/causes.php">our causes</a></li>
						<li><a href="/howitworks.php">learn more</a></li>
						<li><a href="/">about us</a></li>
{/block}

{block name="content"}
		<div class="container">
			<div class="row">
				<div id="get-involved-card" class="offset4 span8">
					<form id="getinvolved-form" action="getinvolved_sendemail.php" method="post">
					<fieldset>
						<legend class="normal">
							Interested? Get in touch! <br />
							<small>We will contact you shortly to get your company set up to give </small>
						</legend>
						<legend class="finished hide">
							Thanks!  
							<small>We'll be in touch very soon.</small>
						</legend>
						<div class="clearfix">
							<div class="input">
								<label for="name">Your Name</label>
								<input class="xlarge required" id="name" name="name" size="30" type="text" />
							</div>
						</div><!-- /clearfix -->
						<div class="clearfix">
							<div class="input">
								<label for="email">Email Address</label>
								<input class="xlarge required email" id="email" name="email" size="30" type="text" />
							</div>
						</div><!-- /clearfix -->
						<div class="clearfix">
							<div class="input">
								<label for="company_name">Company Name</label>
								<input class="xlarge" id="company_name" name="company_name" size="30" type="text" />
							</div>
						</div><!-- /clearfix -->
						<div class="clearfix">
							<div class="input">
								<label for="company_size">Company Size</label>
								<input class="mini number" id="company_size" name="company_size" size="30" type="text" />
							</div>
						</div><!-- /clearfix -->
						<div class="clearfix">
							<div class="input">
								<img id="captcha" src="/securimage/securimage_show.php" alt="CAPTCHA Image" />
								<label for="captcha_code">Enter value above</label>
								<input class="required" id="captcha_code" name="captcha_code" size="30" type="text" />
							</div>
						</div><!-- /clearfix -->
						
						
						<div class="actions">
							<input type="submit" class="btn primary" value="Submit">
						</div>
					</fieldset>
					</form>
				</div>
			</div>
		</div>
{/block}
