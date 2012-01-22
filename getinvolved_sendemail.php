<?php session_start(); ?>
<?php

include_once $_SERVER['DOCUMENT_ROOT'] . '/securimage/securimage.php';
$securimage = new Securimage();

function isInjected($str) {
	$injections = array('(\n+)',
	'(\r+)',
	'(\t+)',
	'(%0A+)',
	'(%0D+)',
	'(%08+)',
	'(%09+)'
	);
	$inject = join('|', $injections);
	$inject = "/$inject/i";
	if(preg_match($inject,$str)) {
		return true;
	}
	else {
		return false;
	}
}

if ($securimage->check($_POST['captcha_code']) == false) {
  // the code was incorrect
  // you should handle the error so that the form processor doesn't continue

  // or you can use the following code if there is no validation or you do not know how
  echo "The security code entered was incorrect.<br /><br />";
  echo "Please go <a href='javascript:history.go(-1)'>back</a> and try again.";
  exit;
}

if( isset($_POST['email']) && !isInjected($_POST['email']) ) {

	// EDIT THE 2 LINES BELOW AS REQUIRED
	//$email_to = "simon@techiesgiveback.org";
	$email_to = "abel.allison@gmail.com";
	$email_subject = "[raisedby.us] Interest in RaisedBy.Us";

	$name = $_POST['name']; // required
	$email = $_POST['email']; // required
	$company_name = $_POST['company_name']; // not required
	$company_size = $_POST['company_size']; // required

	function clean_string($string) {
		$bad = array( "\r", "\n", "%0a", "%0d", "Content-Type:", "bcc:","to:","cc:" );
		return str_ireplace($bad,"",$string);
	}

	$email_message .= "Someone wants to get involved in raisedby.us!\n";
	$email_message .= "Name: ".clean_string($name)."\n";
	$email_message .= "Email: ".clean_string($email)."\n";
	$email_message .= "Company Name: ".clean_string($company_name)."\n";
	$email_message .= "Company Size: ".clean_string($company_size)."\n";


	// create email headers
	$headers = "From: ".$email." \r\n".
		"Reply-To: ".$email." \r\n" .
		"X-Mailer: PHP/" . phpversion()."\r\n";
	@mail($email_to, $email_subject, $email_message, $headers);  

	header( 'Location: http://raisedbyus.groovemechanic.net/getinvolved.php#finished' ) ;
} else {
	header('This is not the page you are looking for', true, 403);
}

?>

