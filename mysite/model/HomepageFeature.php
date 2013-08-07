<?php
/**
 * Represents an image and title that can be associated with a page
 */
class HomepageFeature extends DataObject {
	
	public static $db = array(
		'Title' => 'Varchar(100)',
		'Stuff'		=> 'HTMLText'
	);
	
	public static $has_one = array(
		'ParentPage'	=> 'Page'
	);
    public function canView($member = null) {
        return $this->ParentPage()->canEdit($member);
    }
    public function canEdit($member = null) {
        return $this->ParentPage()->canEdit($member);
    }
    public function canDelete($member = null) {
        return $this->ParentPage()->canEdit($member);
    }
    public function canCreate($member = null) {
        return $this->ParentPage()->canEdit($member);
    }

	public function getCMSFields(){
		$fields = parent::getCMSFields();
		$fields->removeByName('ParentPageID');
		return $fields;
	}

}