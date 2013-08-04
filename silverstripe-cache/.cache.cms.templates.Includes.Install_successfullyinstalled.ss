<?php
$val .= '<p>
	';

$val .= _t('ContentController.InstallSuccessCongratulations',"SilverStripe has been successfully installed!");
$val .= '
</p>

';

if ($scope->XML_val('Project', null, true)=='tutorial') { 
$val .= '
	';

$val .= _t('ContentController.PostInstallTutorialIntro','This website is a simplistic version of a SilverStripe 3 site. To extend this, please take a look at {link}.',array('link'=>'<a href="http://doc.silverstripe.org/framework/en/tutorials">our tutorials</a>'));
$val .= '
';


}
$val .= '

	<p><strong>&nbsp; &nbsp; ';

$val .= _t('ContentController.Email',"Email");
$val .= ': ';

$val .= $scope->XML_val('Username', null, true);
$val .= '</strong></br>
	<strong>&nbsp; &nbsp; ';

$val .= _t('ContentController.Password',"Password");
$val .= ': ';

$val .= $scope->XML_val('Password', null, true);
$val .= '</strong></p>

<p>
	';

$val .= _t('ContentController.StartEditing','You can start editing your content by opening <a href="{link}">the CMS</a>.',array('link'=>'admin/'));
$val .= ' 
</p>

<div style="background:#fcf8f2; border-radius:4px; border: 1px solid #ffc28b; padding:5px; margin:5px;">
	<img src="cms/images/dialogs/alert.gif" style="border: none; margin-right: 10px; float: left; height:48px; width:48px" />
	<p style="color: #cb6a1c; margin-bottom:0;">
	';

$val .= _t('ContentController.InstallSecurityWarning','For security reasons you should now delete the install files, unless you are planning to reinstall later (<em>requires admin login, see above</em>). The web server also now only needs write access to the "assets" folder, you can remove write access from all other folders. <a href="{link}" style="text-align: center;">Click here to delete the install files.</a>',array('link'=>'home/deleteinstallfiles'));
$val .= '
	</p>
</div>
';

