<?php

	function read_causes() {
		$files = scandir("./causes_data");
		$result = array();
		foreach($files as $file) 
		{ 
			if($file === '.' || $file === '..') {continue;} 
			// println($file);
			$lines = file("./causes_data/".$file);
			$cat_tokens = explode("\t", trim($lines[0]));
			$category = $cat_tokens[0];
			$category_slug = $cat_tokens[1];
			// println($category);
			$category_causes = array();
			for($i = 1; $i < count($lines); $i++) {
				$line = $lines[$i];
				if (trim($line)=='') { continue; }
				$tokens = explode("\t", trim($line));
				$category_causes[] = array("name" => $tokens[0], "url" => $tokens[1], "desc" => $tokens[2]);
			}
			$result[] = array("category" => $category, "slug" => $category_slug, "causes" => $category_causes);
			
		}

		return $result;

		/*
		foreach($result as $category) {	
			print_r($category);
			print "<br />";
		}
		*/
	}

	function println($str) {
		print $str . "<br />";
	}

	require('smarty_config.php');

	$causes = read_causes();

	// println("done");
	$smarty->assign('categories', $causes);
	$smarty->display('causes_v2.tpl');

?>
