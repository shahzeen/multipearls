<?php 
/*
Payment Name      : CCAvenue MCPG
Description	  : Payment with  CCAvenue MCPG.
Module Version    : 2.1.0.2
Author		  : CCAvenue
*/

			  
if (defined('DOM_APG_PATH_PG_MAIN_201')== false) 
{
	define("DOM_APG_PATH_PG_MAIN_201",dirname(DIR_APPLICATION)."/admin/controller/common/");
}

$file_APG_dom=DOM_APG_PATH_PG_MAIN_201."ccavenue_main.php";  


if (file_exists($file_APG_dom)) {
	include_once($file_APG_dom);
}

class ControllerPaymentCcavenuepay extends Controller {
	private $error = array();		
	public function index() {	
		$ccavenue = new Ccavenue_main();
		$this->document->addStyle('view/stylesheet/style.css');
		$this->document->addStyle('view/stylesheet/bright.css');
		$this->load->language('payment/ccavenuepay');
		$this->document->setTitle($this->language->get('heading_title'));
		$this->load->model('setting/setting');	

		
		if (($this->request->server['REQUEST_METHOD'] == 'POST') && ($this->validate())) {
			$this->model_setting_setting->editSetting('ccavenuepay', $this->request->post);
			$this->session->data['success'] = $this->language->get('text_success');
			$sucesstxt = $this->language->get('text_success');
			$errortxt = '';
			$success = '';				
			
			
			                                    
				$settings 	= $this->model_setting_setting->getSetting('ccavenuepay');		
				$this->model_setting_setting->editSetting('ccavenuepay',$settings);
				if(isset($_POST['ajax']) && $_POST['ajax'] == 'true'){
					echo json_encode(array('error'=>$errortxt,'success'=>$success));
					exit;					
				}		
				$this->response->redirect($this->url->link('extension/payment', 'token=' . $this->session->data['token'], 'SSL'));
			} 
			if(empty($errortxt)){
				
				$this->session->data['success'] ='Cancel: No any changes in configration.';
			}else{
			$this->response->redirect($this->url->link('extension/payment', 'token=' . $this->session->data['token'], 'SSL'));
		}
		
		$data['heading_title'] 						= $this->language->get('heading_title');
		$data['text_enabled'] 						= $this->language->get('text_enabled');
		$data['text_disabled'] 						= $this->language->get('text_disabled');
		$data['text_all_zones'] 					= $this->language->get('text_all_zones');
		$data['text_yes'] 							= $this->language->get('text_yes');
		$data['text_no'] 							= $this->language->get('text_no');
		$data['text_live'] 							= $this->language->get('text_live');
		$data['text_test'] 							= $this->language->get('text_test');
		$data['entry_failed_status'] 				= $this->language->get('entry_failed_status');		
		$data['entry_pending_status']				= $this->language->get('entry_pending_status');				
		$data['entry_completed_status'] 			= $this->language->get('entry_completed_status');	
		$data['button_save'] 						= $this->language->get('button_save');
		$data['button_cancel']						= $this->language->get('button_cancel');
		$data['entry_status'] 						= $this->language->get('entry_status');		
		$data['entry_merchant_id'] 					= $this->language->get('entry_merchant_id');
		$data['entry_access_code'] 					= $this->language->get('entry_access_code');
		$data['entry_working_key'] 					= $this->language->get('entry_working_key');
		$data['entry_payment_confirmation_mail'] 	= $this->language->get('entry_payment_confirmation_mail');
		$data['entry_payment_test_mode']			 = $this->language->get('entry_payment_test_mode');
                $data['entry_payment_currency_option']			 = $this->language->get('entry_payment_currency_option');
	        $data['entry_geo_zone'] 					= $this->language->get('entry_geo_zone');
		$data['entry_sort_order'] 					= $this->language->get('entry_sort_order');
		$data['entry_total'] 						= $this->language->get('entry_total');	
	
 		if (isset($this->error['warning'])) {
			$data['error_warning'] = $this->error['warning'];
		} else {
			$data['error_warning'] = '';
		}				
		if (isset($this->error['merchant_id'])) {
			$data['error_merchant_id'] = $this->error['merchant_id'];	
		} else {
			$data['error_merchant_id'] = '';					
		} 

		if (isset($this->error['access_code'])) {
			$data['error_access_code'] = $this->error['access_code'];	
		} else {
			$data['error_access_code'] = '';					
		} 
			
		if (isset($this->error['working_key'])) {					
		$data['error_working_key'] = $this->error['working_key'];					
		} else {					
		$data['error_working_key'] = '';					
		}		
		$data['breadcrumbs'] = array();
   		$data['breadcrumbs'][] = array(
       		'text'      => $this->language->get('text_home'),
			'href'      => $this->url->link('common/home', 'token=' . $this->session->data['token'], 'SSL'),      		
      		'separator' => false
   		);
   		$data['breadcrumbs'][] = array(
       		'text'      => $this->language->get('text_payment'),
			'href'      => $this->url->link('extension/payment', 'token=' . $this->session->data['token'], 'SSL'),
      		'separator' => ' :: '
   		);
   		$data['breadcrumbs'][] = array(
       		'text'      => $this->language->get('heading_title'),
			'href'      => $this->url->link('payment/ccavenuepay', 'token=' . $this->session->data['token'], 'SSL'),
      		'separator' => ' :: '
   		);
		$data['action'] = $this->url->link('payment/ccavenuepay', 'token=' . $this->session->data['token'], 'SSL');
		$data['cancel'] = $this->url->link('extension/payment', 'token=' . $this->session->data['token'], 'SSL');

		if (isset($this->request->post['ccavenuepay_status'])) 
		{	
			$data['ccavenuepay_status'] = $this->request->post['ccavenuepay_status'];	

		} 
		else
		{	
			$data['ccavenuepay_status'] = $this->config->get('ccavenuepay_status');
		}
		
		if (isset($this->request->post['ccavenuepay_merchant_id'])) 
		{					
			$data['ccavenuepay_merchant_id'] = $this->request->post['ccavenuepay_merchant_id'];	
		} 
		else 
		{
			$data['ccavenuepay_merchant_id'] = $this->config->get('ccavenuepay_merchant_id');
		}
		if (isset($this->request->post['ccavenuepay_access_code'])) 
		{					
			$data['ccavenuepay_access_code'] = $this->request->post['ccavenuepay_access_code'];	
		} 
		else 
		{
			$data['ccavenuepay_access_code'] = $this->config->get('ccavenuepay_access_code');
		}
		if (isset($this->request->post['ccavenuepay_working_key'])) 
		{	
			$data['ccavenuepay_working_key'] = $this->request->post['ccavenuepay_working_key'];
		} 
		else
		{
			$data['ccavenuepay_working_key'] = $this->config->get('ccavenuepay_working_key');	
		}
		if (isset($this->request->post['ccavenuepay_payment_confirmation_mail'])) 
		{					
			$data['ccavenuepay_payment_confirmation_mail'] = $this->request->post['ccavenuepay_payment_confirmation_mail'];
		} 
		else
		{
			$data['ccavenuepay_payment_confirmation_mail'] = $this->config->get('ccavenuepay_payment_confirmation_mail');					
		}
                if (isset($this->request->post['ccavenuepay_test_mode']))
		{			
			$data['ccavenuepay_test_mode'] = $this->request->post['ccavenuepay_test_mode'];
		} 
		else
		{	
			$data['ccavenuepay_test_mode'] = $this->config->get('ccavenuepay_test_mode');
		}
		 if (isset($this->request->post['ccavenuepay_payment_currency_option']))
		{			
			$data['ccavenuepay_payment_currency_option'] = $this->request->post['ccavenuepay_payment_currency_option'];
		} 
		else
		{	
			$data['ccavenuepay_payment_currency_option'] = $this->config->get('ccavenuepay_payment_currency_option');
		}
		
		$this->load->model('localisation/currency');
		$data['currencies']= $this->model_localisation_currency->getCurrencies();
		$data['allowcurrencies']= $ccavenue->AllowedCurrency() ;
		if (isset($this->request->post['ccavenuepay_total'])) 
		{			
			$data['ccavenuepay_total'] = $this->request->post['ccavenuepay_total'];		
		} 
		else
		{	
			$data['ccavenuepay_total'] = $this->config->get('ccavenuepay_total'); 
		} 
		if (isset($this->request->post['ccavenuepay_completed_status_id'])) {
			$data['ccavenuepay_completed_status_id'] = $this->request->post['ccavenuepay_completed_status_id'];
		} else {
			$data['ccavenuepay_completed_status_id'] = $this->config->get('ccavenuepay_completed_status_id');
		}			
		if (isset($this->request->post['pp_standard_failed_status_id'])) {
			$data['ccavenuepay_failed_status_id'] = $this->request->post['ccavenuepay_failed_status_id'];
		} else {
			$data['ccavenuepay_failed_status_id'] = $this->config->get('ccavenuepay_failed_status_id');
		}									
		if (isset($this->request->post['pp_standard_pending_status_id'])) {
			$data['ccavenuepay_pending_status_id'] = $this->request->post['ccavenuepay_pending_status_id'];
		} else {
			$data['ccavenuepay_pending_status_id'] = $this->config->get('ccavenuepay_pending_status_id');
		}
		$this->load->model('localisation/order_status');
		$data['order_statuses'] = $this->model_localisation_order_status->getOrderStatuses();
		if (isset($this->request->post['ccavenuepay_geo_zone_id'])) {
			$data['ccavenuepay_geo_zone_id'] = $this->request->post['ccavenuepay_geo_zone_id'];
		} else {
			$data['ccavenuepay_geo_zone_id'] = $this->config->get('ccavenuepay_geo_zone_id');
		}
		$this->load->model('localisation/geo_zone');
		$data['geo_zones'] = $this->model_localisation_geo_zone->getGeoZones();		
		if (isset($this->request->post['ccavenuepay_sort_order'])) {
			$data['ccavenuepay_sort_order'] = $this->request->post['ccavenuepay_sort_order'];
		} else {
			$data['ccavenuepay_sort_order'] = $this->config->get('ccavenuepay_sort_order');
		}
		

		$data['header'] = $this->load->controller('common/header');
		$data['column_left'] = $this->load->controller('common/column_left');
		$data['footer'] = $this->load->controller('common/footer');
		$data['token'] = $this->session->data['token'];
		$this->response->setOutput($this->load->view('payment/ccavenuepay.tpl', $data));
	}

	private function validate() {
		
		if (!$this->user->hasPermission('modify', 'payment/ccavenuepay')) {
			$this->error['warning'] = $this->language->get('error_permission');
		}
		if (!$this->request->post['ccavenuepay_merchant_id']) {
			$this->error['merchant_id'] = $this->language->get('error_merchant_id');
		}
		if (!$this->request->post['ccavenuepay_working_key']) {	
			$this->error['working_key'] = $this->language->get('error_working_key');
		}
		if (!$this->request->post['ccavenuepay_access_code']) {	
			$this->error['access_code'] = $this->language->get('error_access_code');
		}
		if (!$this->error) {
			return true;
		} else {
			return false;
		}
	}
} 
