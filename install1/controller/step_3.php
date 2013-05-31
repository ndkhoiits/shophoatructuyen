<?php
class ControllerStep3 extends Controller {
	private $error = array();
	
	public function index() {		
		$this->language->load('step_3');

		//common
		$this->data['lable_step3']  = $this->language->get('lable_step3');
		$this->data['lable_License']  =  $this->language->get('lable_License');
		$this->data['lable_Pre_Installation']  = $this->language->get('lable_Pre_Installation');
		$this->data['lable_Configuration']  = $this->language->get('lable_Configuration');
		$this->data['lable_Finished']  = $this->language->get('lable_Finished');
		$this->data['lable_Lang'] = $this->language->get('lable_Lang');
		$this->data['lable_Continue']  = $this->language->get('lable_Continue');
		//Database
		$this->data['lable_header_database']  = $this->language->get('lable_header_database');
		$this->data['lable_Database_Host']  = $this->language->get('lable_Database_Host');
		$this->data['lable_User']  = $this->language->get('lable_User');
		$this->data['lable_Password']  = $this->language->get('lable_Password');
		$this->data['lable_Database_Name']  = $this->language->get('lable_Database_Name');
		$this->data['lable_Database_Prefix']  = $this->language->get('lable_Database_Prefix');

		//Admin
		$this->data['lable_header_admin']  = $this->language->get('lable_header_admin');
		$this->data['lable_Username']  = $this->language->get('lable_Username');
		$this->data['lable_Password']  = $this->language->get('lable_Password');
		$this->data['lable_EMail']  = $this->language->get('lable_EMail');

		//Error Sql
		$this->data['error_Host_required']  = $this->language->get('error_Host_required');
		$this->data['error_User_required']  = $this->language->get('error_User_required');
		$this->data['error_Database_Name_required']  = $this->language->get('error_Database_Name_required');
		$this->data['error_Username_required']  = $this->language->get('error_Username_required');
		$this->data['error_Password_required']  = $this->language->get('error_Password_required');
		$this->data['error_Invalid_EMail']  = $this->language->get('error_Invalid_EMail');
		$this->data['error_connect_database']  = $this->language->get('error_connect_database');
		$this->data['error_name_database']  = $this->language->get('error_name_database');
		$this->data['error_write']  = $this->language->get('error_write');

		if (($this->request->server['REQUEST_METHOD'] == 'POST') && $this->validate()) {
			$this->load->model('install');
			
			$this->model_install->mysql($this->request->post);
			
			$output  = '<?php' . "\n";
			$output .= '// HTTP' . "\n";
			$output .= 'define(\'HTTP_SERVER\', \'' . HTTP_OPENCART . '\');' . "\n";
			$output .= 'define(\'HTTP_IMAGE\', \'' . HTTP_OPENCART . 'image/\');' . "\n";			
			$output .= 'define(\'HTTP_ADMIN\', \'' . HTTP_OPENCART . 'admin/\');' . "\n\n";

			$output .= '// HTTPS' . "\n";
			$output .= 'define(\'HTTPS_SERVER\', \'' . HTTP_OPENCART . '\');' . "\n";
			$output .= 'define(\'HTTPS_IMAGE\', \'' . HTTP_OPENCART . 'image/\');' . "\n\n";
						
			$output .= '// DIR' . "\n";
			$output .= 'define(\'DIR_APPLICATION\', \'' . DIR_OPENCART . 'catalog/\');' . "\n";
			$output .= 'define(\'DIR_SYSTEM\', \'' . DIR_OPENCART. 'system/\');' . "\n";
			$output .= 'define(\'DIR_DATABASE\', \'' . DIR_OPENCART . 'system/database/\');' . "\n";
			$output .= 'define(\'DIR_LANGUAGE\', \'' . DIR_OPENCART . 'catalog/language/\');' . "\n";
			$output .= 'define(\'DIR_TEMPLATE\', \'' . DIR_OPENCART . 'catalog/view/theme/\');' . "\n";
			$output .= 'define(\'DIR_CONFIG\', \'' . DIR_OPENCART . 'system/config/\');' . "\n";
			$output .= 'define(\'DIR_IMAGE\', \'' . DIR_OPENCART . 'image/\');' . "\n";
			$output .= 'define(\'DIR_CACHE\', \'' . DIR_OPENCART . 'system/cache/\');' . "\n";
			$output .= 'define(\'DIR_DOWNLOAD\', \'' . DIR_OPENCART . 'download/\');' . "\n";
			$output .= 'define(\'DIR_LOGS\', \'' . DIR_OPENCART . 'system/logs/\');' . "\n\n";
		
			$output .= '// DB' . "\n";
			$output .= 'define(\'DB_DRIVER\', \'mysql\');' . "\n";
			$output .= 'define(\'DB_HOSTNAME\', \'' . addslashes($this->request->post['db_host']) . '\');' . "\n";
			$output .= 'define(\'DB_USERNAME\', \'' . addslashes($this->request->post['db_user']) . '\');' . "\n";
			$output .= 'define(\'DB_PASSWORD\', \'' . addslashes($this->request->post['db_password']) . '\');' . "\n";
			$output .= 'define(\'DB_DATABASE\', \'' . addslashes($this->request->post['db_name']) . '\');' . "\n";
			$output .= 'define(\'DB_PREFIX\', \'' . addslashes(strtolower($this->request->post['db_prefix'])) . '\');' . "\n";
			$output .= '?>';				
		
			$file = fopen(DIR_OPENCART . 'config.php', 'w');
		
			fwrite($file, $output);

			fclose($file);
	 
			$output  = '<?php' . "\n";
			$output .= '// HTTP' . "\n";
			$output .= 'define(\'HTTP_SERVER\', \'' . HTTP_OPENCART . 'admin/\');' . "\n";
			$output .= 'define(\'HTTP_CATALOG\', \'' . HTTP_OPENCART . '\');' . "\n";
			$output .= 'define(\'HTTP_IMAGE\', \'' . HTTP_OPENCART . 'image/\');' . "\n\n";

			$output .= '// HTTPS' . "\n";
			$output .= 'define(\'HTTPS_SERVER\', \'' . HTTP_OPENCART . 'admin/\');' . "\n";
			$output .= 'define(\'HTTPS_IMAGE\', \'' . HTTP_OPENCART . 'image/\');' . "\n\n";

			$output .= '// DIR' . "\n";
		
			$output .= 'define(\'DIR_APPLICATION\', \'' . DIR_OPENCART . 'admin/\');' . "\n";
			$output .= 'define(\'DIR_SYSTEM\', \'' . DIR_OPENCART . 'system/\');' . "\n";
			$output .= 'define(\'DIR_DATABASE\', \'' . DIR_OPENCART . 'system/database/\');' . "\n";
			$output .= 'define(\'DIR_LANGUAGE\', \'' . DIR_OPENCART . 'admin/language/\');' . "\n";
			$output .= 'define(\'DIR_TEMPLATE\', \'' . DIR_OPENCART . 'admin/view/template/\');' . "\n";
			$output .= 'define(\'DIR_CONFIG\', \'' . DIR_OPENCART . 'system/config/\');' . "\n";
			$output .= 'define(\'DIR_IMAGE\', \'' . DIR_OPENCART . 'image/\');' . "\n";
			$output .= 'define(\'DIR_CACHE\', \'' . DIR_OPENCART . 'system/cache/\');' . "\n";
			$output .= 'define(\'DIR_DOWNLOAD\', \'' . DIR_OPENCART . 'download/\');' . "\n";
			$output .= 'define(\'DIR_LOGS\', \'' . DIR_OPENCART . 'system/logs/\');' . "\n";
			$output .= 'define(\'DIR_CATALOG\', \'' . DIR_OPENCART . 'catalog/\');' . "\n\n";

			$output .= '// DB' . "\n";
			$output .= 'define(\'DB_DRIVER\', \'mysql\');' . "\n";
			$output .= 'define(\'DB_HOSTNAME\', \'' . addslashes($this->request->post['db_host']) . '\');' . "\n";
			$output .= 'define(\'DB_USERNAME\', \'' . addslashes($this->request->post['db_user']) . '\');' . "\n";
			$output .= 'define(\'DB_PASSWORD\', \'' . addslashes($this->request->post['db_password']) . '\');' . "\n";
			$output .= 'define(\'DB_DATABASE\', \'' . addslashes($this->request->post['db_name']) . '\');' . "\n";
			$output .= 'define(\'DB_PREFIX\', \'' . addslashes(strtolower($this->request->post['db_prefix'])) . '\');' . "\n";
			$output .= '?>';	

			$file = fopen(DIR_OPENCART . 'admin/config.php', 'w');
		
			fwrite($file, $output);

			fclose($file);
			
			$this->redirect(HTTP_SERVER . 'index.php?route=step_4');
		}
		
		if (isset($this->error['warning'])) {
			$this->data['error_warning'] = $this->error['warning'];
		} else {
			$this->data['error_warning'] = '';
		}

		if (isset($this->error['error_db_host'])) {
			$this->data['error_db_host'] = $this->error['db_host'];
		} else {
			$this->data['error_db_host'] = '';
		}
		
		if (isset($this->error['db_user'])) {
			$this->data['error_db_user'] = $this->error['db_user'];
		} else {
			$this->data['error_db_user'] = '';
		}
		
		if (isset($this->error['db_name'])) {
			$this->data['error_db_name'] = $this->error['db_name'];
		} else {
			$this->data['error_db_name'] = '';
		}

		if (isset($this->error['username'])) {
			$this->data['error_username'] = $this->error['username'];
		} else {
			$this->data['error_username'] = '';
		}
		
		if (isset($this->error['password'])) {
			$this->data['error_password'] = $this->error['password'];
		} else {
			$this->data['error_password'] = '';
		}		
		
		if (isset($this->error['email'])) {
			$this->data['error_email'] = $this->error['email'];
		} else {
			$this->data['error_email'] = '';
		}	
		
		$this->data['action'] = HTTP_SERVER . 'index.php?route=step_3';
		
		if (isset($this->request->post['db_host'])) {
			$this->data['db_host'] = $this->request->post['db_host'];
		} else {
			$this->data['db_host'] = 'localhost';
		}
		
		if (isset($this->request->post['db_user'])) {
			$this->data['db_user'] = html_entity_decode($this->request->post['db_user']);
		} else {
			$this->data['db_user'] = '';
		}
		
		if (isset($this->request->post['db_password'])) {
			$this->data['db_password'] = html_entity_decode($this->request->post['db_password']);
		} else {
			$this->data['db_password'] = '';
		}

		if (isset($this->request->post['db_name'])) {
			$this->data['db_name'] = html_entity_decode($this->request->post['db_name']);
		} else {
			$this->data['db_name'] = '';
		}
		
		if (isset($this->request->post['db_prefix'])) {
			$this->data['db_prefix'] = html_entity_decode($this->request->post['db_prefix']);
		} else {
			$this->data['db_prefix'] = '';
		}
		
		if (isset($this->request->post['username'])) {
			$this->data['username'] = $this->request->post['username'];
		} else {
			$this->data['username'] = 'admin';
		}

		if (isset($this->request->post['password'])) {
			$this->data['password'] = $this->request->post['password'];
		} else {
			$this->data['password'] = '';
		}
		
		if (isset($this->request->post['email'])) {
			$this->data['email'] = $this->request->post['email'];
		} else {
			$this->data['email'] = '';
		}
		
		$this->template = 'step_3.tpl';
		$this->children = array(
			'header',
			'footer'
		);
		
		$this->response->setOutput($this->render(TRUE));		
	}

	private function validate() {
		if (!$this->request->post['db_host']) {
			$this->error['db_host'] = $this->data['error_Host_required'];
		}

		if (!$this->request->post['db_user']) {
			$this->error['db_user'] = $this->data['error_User_required'];
		}

		if (!$this->request->post['db_name']) {
			$this->error['db_name'] = $this->data['error_Database_Name_required'];
		}
		
		if (!$this->request->post['username']) {
			$this->error['username'] = $this->data['error_Username_required'];
		}

		if (!$this->request->post['password']) {
			$this->error['password'] = $this->data['error_Password_required'];
		}

		if ((strlen(utf8_decode($this->request->post['email'])) > 96) || !preg_match('/^[^\@]+@.*\.[a-z]{2,6}$/i', $this->request->post['email'])) {
			$this->error['email'] = $this->data['error_Invalid_EMail'];
		}

		if (!$connection = @mysql_connect($this->request->post['db_host'], $this->request->post['db_user'], $this->request->post['db_password'])) {
			$this->error['warning'] = $this->data['error_connect_database'];
		} else {
			if (!@mysql_select_db($this->request->post['db_name'], $connection)) {
				$this->error['warning'] = $this->data['error_name_database'];
			}
			
			mysql_close($connection);
		}
		
		if (!is_writable(DIR_OPENCART . 'config.php')) {
			$this->error['warning'] = $this->data['error_write'] . DIR_OPENCART . 'config.php!';
		}
	
		if (!is_writable(DIR_OPENCART . 'admin/config.php')) {
			$this->error['warning'] = $this->data['error_write'] . DIR_OPENCART . 'admin/config.php!';
		}	
		
    	if (!$this->error) {
      		return TRUE;
    	} else {
      		return FALSE;
    	}		
	}
}
?>