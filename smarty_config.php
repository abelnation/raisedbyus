<?php

// put full path to Smarty.class.php
require('/home/aallison/raisedbyus.groovemechanic.net/lib/Smarty-3.1.7/libs/Smarty.class.php');
$smarty = new Smarty();

$smarty->template_dir = '/home/aallison/raisedbyus.groovemechanic.net/templates';
$smarty->compile_dir = '/home/aallison/raisedbyus.groovemechanic.net/templates_c';
$smarty->cache_dir = '/home/aallison/raisedbyus.groovemechanic.net/cache';
$smarty->config_dir = '/home/aallison/raisedbyus.groovemechanic.net/configs';

?>
