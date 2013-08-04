<?php
$val .= '<div id="';

$val .= $scope->XML_val('Name', null, true);
$val .= '" class="field';

if ($scope->hasValue('extraClass', null, true)) { 
$val .= ' ';

$val .= $scope->XML_val('extraClass', null, true);

}
$val .= '">
	';

$val .= $scope->XML_val('Field', null, true);
$val .= '
	<label class="right" for="';

$val .= $scope->XML_val('ID', null, true);
$val .= '">';

$val .= $scope->XML_val('Title', null, true);
$val .= '</label>
	';

if ($scope->hasValue('Message', null, true)) { 
$val .= '<span class="message ';

$val .= $scope->XML_val('MessageType', null, true);
$val .= '">';

$val .= $scope->XML_val('Message', null, true);
$val .= '</span>';


}
$val .= '
</div>
';

