<?php
class ControllerStep4 extends Controller {
	public function index() {
		$this->language->load('step_4');
		//common
		$this->data['lable_step4']  = $this->language->get('lable_step4');
		$this->data['lable_License']  =  $this->language->get('lable_License');
		$this->data['lable_Pre_Installation']  = $this->language->get('lable_Pre_Installation');
		$this->data['lable_Configuration']  = $this->language->get('lable_Configuration');
		$this->data['lable_Finished']  = $this->language->get('lable_Finished');
		$this->data['lable_Lang'] = $this->language->get('lable_Lang');
		$this->data['lable_Continue']  = $this->language->get('lable_Continue');

		//main
		$this->data['lable_install_delete']  = $this->language->get('lable_install_delete');
		$this->data['lable_install_successfully']  = $this->language->get('lable_install_successfully');
		$this->data['lable_goto_shop']  = $this->language->get('lable_goto_shop');
		$this->data['lable_login_admin']  = $this->language->get('lable_login_admin');

		$this->children = array(
			'header',
			'footer'
		);
		
		$this->template = 'step_4.tpl';

		$this->response->setOutput($this->render(TRUE));
	}
}
?>