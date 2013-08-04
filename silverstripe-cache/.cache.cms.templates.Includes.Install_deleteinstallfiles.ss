<?php
if ($scope->hasValue('UnsuccessfulFiles', null, true)) { 
$val .= '
	<p style="margin: 1em 0">
		';

$val .= _t('ContentController.UnableDeleteInstall',"Unable to delete installation files. Please delete the files below manually");
$val .= ':
	</p>

	<ul>
		';

$scope->obj('UnsuccessfulFiles', null, true); $scope->pushScope(); while (($key = $scope->next()) !== false) {
$val .= '
		<li>';

$val .= $scope->XML_val('File', null, true);
$val .= '</li>
		';


}; $scope->popScope(); 
$val .= '
	</ul>
';


}else { 
$val .= '
	<p style="margin: 1em 0">
		';

$val .= _t('ContentController.InstallFilesDeleted',"Installation files have been successfully deleted.");
$val .= '
	</p>
	<p style="margin: 1em 0">
		';

$val .= _t('ContentController.StartEditing','You can start editing your site\'s content by opening <a href="{link}">the CMS</a>.',array('link'=>'admin/'));
$val .= '. 
		<br />
		&nbsp; &nbsp; ';

$val .= _t('ContentController.Email',"Email");
$val .= ': ';

$val .= $scope->XML_val('Username', null, true);
$val .= '<br />
		&nbsp; &nbsp; ';

$val .= _t('ContentController.Password',"Password");
$val .= ': ';

$val .= $scope->XML_val('Password', null, true);
$val .= '<br />
	</p>
';


}
