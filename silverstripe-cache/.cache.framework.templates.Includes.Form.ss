<?php
if ($scope->hasValue('IncludeFormTag', null, true)) { 
$val .= '
<form ';

$val .= $scope->XML_val('AttributesHTML', null, true);
$val .= '>
';


}
$val .= '
	';

if ($scope->hasValue('Message', null, true)) { 
$val .= '
	<p id="';

$val .= $scope->XML_val('FormName', null, true);
$val .= '_error" class="message ';

$val .= $scope->XML_val('MessageType', null, true);
$val .= '">';

$val .= $scope->XML_val('Message', null, true);
$val .= '</p>
	';


}else { 
$val .= '
	<p id="';

$val .= $scope->XML_val('FormName', null, true);
$val .= '_error" class="message ';

$val .= $scope->XML_val('MessageType', null, true);
$val .= '" style="display: none"></p>
	';


}
$val .= '
	
	<fieldset>
		';

if ($scope->hasValue('Legend', null, true)) { 
$val .= '<legend>';

$val .= $scope->XML_val('Legend', null, true);
$val .= '</legend>';


}
$val .= ' 
		';

$scope->obj('Fields', null, true); $scope->pushScope(); while (($key = $scope->next()) !== false) {
$val .= '
			';

$val .= $scope->XML_val('FieldHolder', null, true);
$val .= '
		';


}; $scope->popScope(); 
$val .= '
		<div class="clear"><!-- --></div>
	</fieldset>

	';

if ($scope->hasValue('Actions', null, true)) { 
$val .= '
	<div class="Actions">
		';

$scope->obj('Actions', null, true); $scope->pushScope(); while (($key = $scope->next()) !== false) {
$val .= '
			';

$val .= $scope->XML_val('Field', null, true);
$val .= '
		';


}; $scope->popScope(); 
$val .= '
	</div>
	';


}
$val .= '
';

if ($scope->hasValue('IncludeFormTag', null, true)) { 
$val .= '
</form>
';


}
$val .= '
';

