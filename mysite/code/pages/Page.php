<?php
class Page extends SiteTree {
	public static $db = array(
		'PageStyle' => "Enum('orange, blue, green')",
		'HasBanner' => 'boolean',
		'BannerLeft' => 'HTMLText',
		'BannerRight' => 'HTMLText'
	);
	static $defaults = array(
		'PageStyle' => 'orange',
		'HasBanner' => 0
	);


	function getCMSFields() {
		$fields = parent::getCMSFields();

		$options = singleton('Page')->dbObject('PageStyle')->enumValues();
		$fields->addFieldToTab("Root.Main", new DropdownField("PageStyle", "Page colour scheme", $options), 'Content');

		$fields->addFieldToTab('Root.Banner', new CheckboxField('HasBanner'));
		$fields->addFieldToTab('Root.Banner', new HTMLEditorField('BannerLeft'));
		$fields->addFieldToTab('Root.Banner', new HTMLEditorField('BannerRight'));

		return $fields;
	}    
}
class Page_Controller extends ContentController {
	public static $allowed_actions = array (
	);

	public function init() {
		parent::init();

		Requirements::css('themes/Bulli/css/normalize.css');
		Requirements::css('themes/Bulli/css/bootstrap.css');
		Requirements::css('themes/Bulli/css/main.css');
		Requirements::css('themes/Bulli/css/site.css');
        Requirements::javascript('themes/Bulli/javascript/plugins.js');
        Requirements::javascript('themes/Bulli/javascript/main.js');
        Requirements::javascript('themes/Bulli/javascript/bootstrap.js');
        Requirements::javascript('themes/Bulli/javascript/site.js');
	}

}