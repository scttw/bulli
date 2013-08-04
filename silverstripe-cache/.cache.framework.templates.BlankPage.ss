<?php
$val .= '<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-type" content="text/html; charset=utf-8" />
<title>';

$val .= $scope->XML_val('Title', null, true);
$val .= '</title>
';

$val .= SSViewer::get_base_tag($val);
$val .= '
</head>
<body class="';

$val .= $scope->XML_val('CSSClasses', null, true);
$val .= '">
	';

$val .= $scope->XML_val('Content', null, true);
$val .= '
	<div class="right">
		';

$val .= $scope->XML_val('Form', null, true);
$val .= '
	</div>
</body>
</html>';

