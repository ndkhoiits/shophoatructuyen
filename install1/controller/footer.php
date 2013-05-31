<?php
class ControllerFooter extends Controller {
	public function index() {
		$this->language->load('footer');
		$this->data['lable_Project_Homepage'] = $this->language->get('lable_Project_Homepage');
		$this->data['lable_Documentation'] = $this->language->get('lable_Documentation');
		$this->data['lable_Support_Forums'] = $this->language->get('lable_Support_Forums');
		$this->id       = 'footer';
		$this->template = 'footer.tpl';
		$this->render();
	}
}
?>