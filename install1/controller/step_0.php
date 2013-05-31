<?php
class ControllerStep0 extends Controller {
	private $error = array();
	
	public function index() {	
		
		$this->language->load('step_0');
		$this->data['lable_step0'] = $this->language->get('lable_step0');
		$this->data['lable_License'] = $this->language->get('lable_License');	
		$this->data['lable_Pre_Installation'] = $this->language->get('lable_Pre_Installation');
		$this->data['lable_Configuration'] = $this->language->get('lable_Configuration');
		$this->data['lable_Finished'] = $this->language->get('lable_Finished');
		$this->data['lable_Lang'] = $this->language->get('lable_Lang');
		$this->data['lable_header_Lang'] = $this->language->get('lable_header_Lang');
		$this->children = array(
			'header',
			'footer'
		);
		
		$this->template = 'step_0.tpl';

		$this->response->setOutput($this->render(TRUE));
	}
	
	private function validate() {
		if (!isset($this->request->post['agree'])) {
			$this->error['warning'] = 'You must agree to the license before you can install OpenCart!';
		}
		
    	if (!$this->error) {
      		return TRUE;
    	} else {
      		return FALSE;
    	}		
	}	
}
?>