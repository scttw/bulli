<?php
if ($scope->hasValue('UseButtonTag', null, true)) { 
$val .= '
	<button ';

$val .= $scope->XML_val('AttributesHTML', null, true);
$val .= '>
		';

if ($scope->hasValue('ButtonContent', null, true)) { 
$val .= $scope->XML_val('ButtonContent', null, true);

}else { 
$val .= $scope->XML_val('Title', null, true);

}
$val .= '
	</button>
';


}else { 
$val .= '
	<input ';

$val .= $scope->XML_val('AttributesHTML', null, true);
$val .= ' />
';


}
