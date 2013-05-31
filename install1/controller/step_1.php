<?php
class ControllerStep1 extends Controller {
	private $error = array();
	
	public function index() {
		$this->language->load('step_1');
		$this->data['lable_step1'] = $this->language->get('lable_step1');
		$this->data['lable_License'] = $this->language->get('lable_License');	
		$this->data['lable_Pre_Installation'] = $this->language->get('lable_Pre_Installation');
		$this->data['lable_Configuration'] = $this->language->get('lable_Configuration');
		$this->data['lable_Finished'] = $this->language->get('lable_Finished');
		$this->data['lable_Lang'] = $this->language->get('lable_Lang');
		$this->data['lable_Continue'] = $this->language->get('lable_Continue');
		$this->data['lable_agree'] = $this->language->get('lable_agree');
		$this->data['GNU_GENERAL_PUBLIC_LICENSE'] = $this->language->get('GNU_GENERAL_PUBLIC_LICENSE');
		$this->data['error_agree'] = $this->language->get('error_agree');
		if (($this->request->server['REQUEST_METHOD'] == 'POST') && ($this->validate())) {
			$this->redirect(HTTP_SERVER . 'index.php?route=step_2');
		}
		
		if (isset($this->error['warning'])) {
			$this->data['error_warning'] = $this->error['warning'];
		} else {
			$this->data['error_warning'] = '';	
		}		
		
		$this->data['action'] = HTTP_SERVER . 'index.php?route=step_1';
		
		$this->children = array(
			'header',
			'footer'
		);
		
		$this->template = 'step_1.tpl';

		$this->response->setOutput($this->render(TRUE));
	}
	
	private function validate() {
		if (!isset($this->request->post['agree'])) {
			$this->error['warning'] = $this->data['error_agree'];
		}
		
    	if (!$this->error) {
      		return TRUE;
    	} else {
      		return FALSE;
    	}		
	}	
}
?>