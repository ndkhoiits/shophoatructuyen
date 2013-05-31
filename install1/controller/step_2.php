<?php
class ControllerStep2 extends Controller {
	private $error = array();
	
	public function index() {
		$this->language->load('step_2');
		//common
		$this->data['lable_step2'] = $this->language->get('lable_step2');
		$this->data['lable_License'] = $this->language->get('lable_License');
		$this->data['lable_Pre_Installation'] = $this->language->get('lable_Pre_Installation');
		$this->data['lable_Configuration'] = $this->language->get('lable_Configuration');
		$this->data['lable_Finished'] = $this->language->get('lable_Finished');
		$this->data['lable_Lang'] = $this->language->get('lable_Lang');
		$this->data['lable_Current_Settings'] = $this->language->get('lable_Current_Settings');
		$this->data['lable_Required_Settings'] = $this->language->get('lable_Required_Settings');
		$this->data['lable_Status'] = $this->language->get('lable_Status');
		$this->data['lable_On'] = $this->language->get('lable_On');
		$this->data['lable_Off'] = $this->language->get('lable_Off');
		$this->data['lable_Writable'] = $this->language->get('lable_Writable');
		$this->data['lable_Unwritable'] = $this->language->get('lable_Unwritable');
		$this->data['lable_Continue'] = $this->language->get('lable_Continue');

		//php seting
		$this->data['lable_header_php_setting'] = $this->language->get('lable_header_php_setting');
		$this->data['lable_php_setting'] = $this->language->get('lable_php_setting');
		$this->data['lable_PHP_Version'] = $this->language->get('lable_PHP_Version');
		$this->data['lable_Register_Globals'] = $this->language->get('lable_Register_Globals');
		$this->data['lable_Magic_Quotes_GPC'] = $this->language->get('lable_Magic_Quotes_GPC');
		$this->data['lable_File_Uploads'] = $this->language->get('lable_File_Uploads');
		$this->data['lable_Session_Auto_Start'] = $this->language->get('lable_Session_Auto_Start');

		//Extension
		$this->data['lable_header_Extension'] = $this->language->get('lable_header_Extension');
		$this->data['lable_Extension'] = $this->language->get('lable_Extension');
		$this->data['lable_MySQL'] = $this->language->get('lable_MySQL');
		$this->data['lable_GD'] = $this->language->get('lable_GD');
		$this->data['lable_cURL'] = $this->language->get('lable_cURL');
		$this->data['lable_ZIP'] = $this->language->get('lable_ZIP');

		//Files
		$this->data['lable_header_Files'] = $this->language->get('lable_header_Files');
		$this->data['lable_Files'] = $this->language->get('');

		//Directories
		$this->data['lable_header_Directories'] = $this->language->get('lable_header_Directories');
		$this->data['lable_Directories'] = $this->language->get('lable_Directories');


//Error
$this->data['error_php_version']  = $this->language->get('error_php_version');
$this->data['error_file_uploads']  = $this->language->get('error_file_uploads');
$this->data['error_session']  = $this->language->get('error_session');
$this->data['error_mysql']  = $this->language->get('error_mysql');
$this->data['error_GD']  = $this->language->get('error_GD');
$this->data['error_ZLIB']  = $this->language->get('error_ZLIB');
$this->data['error_writable_config']  = $this->language->get('error_writable_config');
$this->data['error_writable_admin_config']  = $this->language->get('error_writable_admin_config');
$this->data['error_cache']  = $this->language->get('error_cache');
$this->data['error_logs']  = $this->language->get('error_logs');
$this->data['error_image']  = $this->language->get('error_image');
$this->data['error_cache_image']  = $this->language->get('error_cache_image');
$this->data['error_data_image']  = $this->language->get('error_data_image');
$this->data['error_download']  = $this->language->get('error_download');

		if (($this->request->server['REQUEST_METHOD'] == 'POST') && ($this->validate())) {
			$this->redirect(HTTP_SERVER . 'index.php?route=step_3');
		}

		if (isset($this->error['warning'])) {
			$this->data['error_warning'] = $this->error['warning'];
		} else {
			$this->data['error_warning'] = '';	
		}
		
		$this->data['action'] = HTTP_SERVER . 'index.php?route=step_2';

		$this->data['config_catalog'] = DIR_OPENCART . 'config.php';
		$this->data['config_admin'] = DIR_OPENCART . 'admin/config.php';
		
		$this->data['cache'] = DIR_SYSTEM . 'cache';
		$this->data['logs'] = DIR_SYSTEM . 'logs';
		$this->data['image'] = DIR_OPENCART . 'image';
		$this->data['image_cache'] = DIR_OPENCART . 'image/cache';
		$this->data['image_data'] = DIR_OPENCART . 'image/data';
		$this->data['download'] = DIR_OPENCART . 'download';
		
		$this->template = 'step_2.tpl';

		$this->children = array(
			'header',
			'footer'
		);		
		$this->response->setOutput($this->render(TRUE));
	}
	
	private function validate() {
		if (phpversion() < '5.0') {
			$this->error['warning'] = $this->data['error_php_version'];
		}

		if (!ini_get('file_uploads')) {
			$this->error['warning'] = $this->data['error_file_uploads'];
		}
	
		if (ini_get('session.auto_start')) {
			$this->error['warning'] = $this->data['error_session'];
		}

		if (!extension_loaded('mysql')) {
			$this->error['warning'] = $this->data['error_mysql'];
		}

		if (!extension_loaded('gd')) {
			$this->error['warning'] = $this->data['error_GD'];
		}

		if (!extension_loaded('zlib')) {
			$this->error['warning'] = $this->data['error_ZLIB'];
		}
	
		if (!is_writable(DIR_OPENCART . 'config.php')) {
			$this->error['warning'] = $this->data['error_writable_config'];
		}
				
		if (!is_writable(DIR_OPENCART . 'admin/config.php')) {
			$this->error['warning'] = $this->data['error_writable_admin_config'];
		}

		if (!is_writable(DIR_SYSTEM . 'cache')) {
			$this->error['warning'] = $this->data['error_cache'];
		}
		
		if (!is_writable(DIR_SYSTEM . 'logs')) {
			$this->error['warning'] = $this->data['error_logs'];
		}
		
		if (!is_writable(DIR_OPENCART . 'image')) {
			$this->error['warning'] = $this->data['error_image'];
		}

		if (!is_writable(DIR_OPENCART . 'image/cache')) {
			$this->error['warning'] = $this->data['error_cache_image'];
		}
		
		if (!is_writable(DIR_OPENCART . 'image/data')) {
			$this->error['warning'] = $this->data['error_data_image'];
		}
		
		if (!is_writable(DIR_OPENCART . 'download')) {
			$this->error['warning'] = $this->data['error_download'];
		}
		
    	if (!$this->error) {
      		return TRUE;
    	} else {
      		return FALSE;
    	}
	}
}
?>