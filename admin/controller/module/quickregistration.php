<?php
class ControllerModuleQuickRegistration extends Controller {
	protected $extension = 'registration';
	protected $error = array();

        public function index() {
		$this->load->language('module/quickregistration');

		$this->document->setTitle(strip_tags($this->language->get('heading_title')));
            
		if (isset($this->request->get['store_id'])) {
			$store_id = $this->request->get['store_id'];
		} else {
			$store_id = 0;
		}
		
		$this->load->model('setting/setting');
                
                $extension = $this->extension;
            
		if (file_exists('view/stylesheet/quickregistration.css')) {
                        $this->document->addStyle('view/stylesheet/quickregistration.css');
		}
                
		if (($this->request->server['REQUEST_METHOD'] == 'POST') && ($this->validate())) {
			$this->model_setting_setting->editSetting('quickregistration', $this->request->post, $store_id);		
			
			$this->session->data['success'] = $this->language->get('text_success');
		
			if (!isset($this->request->get['continue'])) {
				$this->response->redirect($this->url->link('extension/module', 'token=' . $this->session->data['token'] . '&type=module', true));
			} else {
				$this->response->redirect($this->url->link('module/quickregistration', 'token=' . $this->session->data['token'] . '&store_id=' . $store_id, true));
			}
		}

		$fields = array(
                        'details_text',
			'firstname',
			'lastname',
			'email',
			'telephone',
			'fax',
                        'address_text',
			'company',
			'customer_group',
			'address_1',
			'address_2',
			'city',
			'postcode',
			'country',
			'zone',
                        'password_text',
			'newsletter',
			'agree'
		);
                
		$fields2 = array(
			'details_text'		=> array(
					'display'		=> '1',
					'required'		=> '0',
					'placeholder'		=> ''
				),
			'firstname'		=> array(
					'display'		=> '1',
					'required'		=> '1',
					'placeholder'		=> 'First Name'
				),
			'lastname'		=> array(
					'display'		=> '1',
					'required'		=> '1',
					'placeholder'		=> 'Last Name'
				),
			'email'			=> array(
					'display'		=> '1',
					'required'		=> '1',
					'placeholder'		=> 'E-Mail'
				),
			'telephone'		=> array(
					'display'		=> '1',
					'required'		=> '0',
					'placeholder'		=> 'Telephone'
				),
			'fax'			=> array(
					'display'		=> '0',
					'required'		=> '0',
					'placeholder'		=> 'Fax'
				),
			'address_text'		=> array(
					'display'		=> '1',
					'required'		=> '0',
					'placeholder'		=> ''
				),
			'company'		=> array(
					'display'		=> '0',
					'required'		=> '0',
					'placeholder'		=> 'Company'
				),
			'customer_group' => array(
					'display'		=> '1',
					'required'		=> '',
					'default'		=> ''
				),
			'address_1'		=> array(
					'display'		=> '1',
					'required'		=> '1',
					'placeholder'		=> 'Address'
				),
			'address_2'		=> array(
					'display'		=> '0',
					'required'		=> '0',
					'placeholder'		=> 'Additional Address'
				),
			'city'			=> array(
					'display'		=> '1',
					'required'		=> '1',
					'placeholder'		=> 'City'
				),
			'postcode'		=> array(
					'display'		=> '0',
					'required'		=> '0',
					'placeholder'		=> 'Post Code'
				),
			'country'		=> array(
					'display'		=> '0',
					'required'		=> '0',
					'default'		=> $this->config->get('config_country_id')
				),
			'zone'			=> array(
					'display'		=> '0',
					'required'		=> '0',
					'default'		=> $this->config->get('config_zone_id')
				),
			'password_text'		=> array(
					'display'		=> '1',
					'required'		=> '0',
					'placeholder'		=> ''
				),
			'newsletter'	=> array(
					'display'		=> '1',
					'required'		=> '0',
					'default'		=> '1'
				),
			'agree'	=> array(
					'display'		=> '1',
					'required'		=> '1',
					'default'		=> '1'
				)
		);
                

		$data['fields'] = $fields;
                foreach ($fields as $field) {
			$data['entry_field_' . $field] = $this->language->get('entry_field_' . $field);
		}
                
		foreach ($fields as $field) {
			if (isset($this->request->post['quickregistration_field_' . $field])) {
				$data['quickregistration_field_' . $field] = $this->request->post['quickregistration_field_' . $field];
			} elseif (isset($fields2[$field]) && is_array($fields2[$field])) {
				$data['quickregistration_field_' . $field] = $fields2[$field];
			} else {
				$data['quickregistration_field_' . $field] = array();
			}
		} 
                
		$this->load->model('localisation/country');

                $country_info = $this->model_localisation_country->getCountry('222');

                $this->load->model('localisation/zone');
                $data['testzone'] = $this->model_localisation_zone->getZonesByCountryId('222');
		$data['heading_title'] = $this->language->get('heading_title');
		$data['tab_general'] = $this->language->get('tab_general');
		$data['tab_field'] = $this->language->get('tab_field');
                $data['tab_info'] = $this->language->get('tab_info');
		$data['help_status'] = $this->language->get('help_status');
		$data['help_save_data'] = $this->language->get('help_save_data');
		$data['help_proceed_button_text'] = $this->language->get('help_proceed_button_text');
		$data['help_html_header'] = $this->language->get('help_html_header');
		$data['help_html_footer'] = $this->language->get('help_html_footer');
		$data['text_default_store'] = $this->language->get('text_default_store');
		$data['text_general'] = $this->language->get('text_general');
		$data['text_field'] = $this->language->get('text_field');
		$data['entry_store'] = $this->language->get('entry_store');
		$data['text_enabled'] = $this->language->get('text_enabled');
		$data['text_disabled'] = $this->language->get('text_disabled');
		$data['text_text_type'] = $this->language->get('text_text_type');
		$data['text_select'] = $this->language->get('text_select');
		$data['text_none'] = $this->language->get('text_none');
		$data['text_display'] = $this->language->get('text_display');
		$data['text_required'] = $this->language->get('text_required');
                $data['text_presets'] = $this->language->get('text_presets');
		$data['text_default'] = $this->language->get('text_default');
		$data['text_placeholder'] = $this->language->get('text_placeholder');
		$data['text_sort_order'] = $this->language->get('text_sort_order');
		$data['text_edit'] = $this->language->get('text_edit');
		$data['entry_status'] = $this->language->get('entry_status');
		$data['entry_proceed_button_text'] = $this->language->get('entry_proceed_button_text');
		$data['entry_layout'] = $this->language->get('entry_layout');
                $data['entry_custom_css'] = $this->language->get('entry_custom_css');
		$data['entry_html_header'] = $this->language->get('entry_html_header');
		$data['entry_html_footer'] = $this->language->get('entry_html_footer');
		$data['button_save'] = $this->language->get('button_save');
		$data['button_continue'] = $this->language->get('button_continue');
		$data['button_cancel'] = $this->language->get('button_cancel');
		$data['button_add'] = $this->language->get('button_add');
		$data['button_remove'] = $this->language->get('button_remove');
		
		$data['token'] = $this->session->data['token'];

                
 		if (isset($this->error['warning'])) {
			$data['error_warning'] = $this->error['warning'];
		} else {
			$data['error_warning'] = '';
		}

		if (isset($this->session->data['success'])) {
			$data['success'] = $this->session->data['success'];
			
			unset($this->session->data['success']);
		} else {
			$data['success'] = '';
		} 
		

                
		$setting = $this->model_setting_setting->getSetting('quickregistration', $store_id);

  		$data['breadcrumbs'] = array();

   		$data['breadcrumbs'][] = array(
       		'text'      => $this->language->get('text_home'),
			'href'      => $this->url->link('common/home', 'token=' . $this->session->data['token'], true)
   		);

   		$data['breadcrumbs'][] = array(
       		'text'      => $this->language->get('text_module'),
			'href'      => $this->url->link('extension/module', 'token=' . $this->session->data['token'] . '&type=module', true)
   		);
		
   		$data['breadcrumbs'][] = array(
       		'text'      => $this->language->get('heading_title'),
			'href'      => $this->url->link('module/quickregistration', 'token=' . $this->session->data['token'], true)
   		);

                $data['action'] = $this->url->link('module/quickregistration', 'token=' . $this->session->data['token'] . '&store_id=' . $store_id, true);
                $data['continue'] = $this->url->link('module/quickregistration', 'token=' . $this->session->data['token'] . '&continue=1&store_id=' . $store_id, true);
                $data['cancel'] = $this->url->link('extension/module', 'token=' . $this->session->data['token'] . '&type=module', true);

                

		if (isset($this->request->post['quickregistration_status'])) {
			$data['quickregistration_status'] = $this->request->post['quickregistration_status'];
		} elseif (isset($setting['quickregistration_status'])) {
			$data['quickregistration_status'] = $setting['quickregistration_status'];
		} else {
			$data['quickregistration_status'] = 0;
		} 

                
		if (isset($this->request->post['quickregistration_proceed_button_text'])) {
			$data['quickregistration_proceed_button_text'] = $this->request->post['quickregistration_proceed_button_text'];
		} elseif (isset($setting['quickregistration_proceed_button_text']) && is_array($setting['quickregistration_proceed_button_text'])) {
			$data['quickregistration_proceed_button_text'] = $setting['quickregistration_proceed_button_text'];
		} else {
			$data['quickregistration_proceed_button_text'] = array();
		}

		if (isset($this->request->post['quickregistration_custom_css'])) {
			$data['quickregistration_custom_css'] = $this->request->post['quickregistration_custom_css'];
		} elseif (isset($setting['quickregistration_custom_css'])) {
			$data['quickregistration_custom_css'] = $setting['quickregistration_custom_css'];
		} else {
			$data['quickregistration_custom_css'] = '';
		}
		


		if (isset($this->request->post['quickregistration_html_header'])) {
			$data['quickregistration_html_header'] = $this->request->post['quickregistration_html_header'];
		} elseif (isset($setting['quickregistration_html_header']) && is_array($setting['quickregistration_html_header'])) {
			$data['quickregistration_html_header'] = $setting['quickregistration_html_header'];
		} else {
			$data['quickregistration_html_header'] = array();
		}
		
		if (isset($this->request->post['quickregistration_html_footer'])) {
			$data['quickregistration_html_footer'] = $this->request->post['quickregistration_html_footer'];
		} elseif (isset($setting['quickregistration_html_footer']) && is_array($setting['quickregistration_html_footer'])) {
			$data['quickregistration_html_footer'] = $setting['quickregistration_html_footer'];
		} else {
			$data['quickregistration_html_footer'] = array();
		}

		// Stores
		$data['store_id'] = $store_id;
		
		$this->load->model('setting/store');
		
		$data['stores'] = $this->model_setting_store->getStores();
		
		// Languages
		$this->load->model('localisation/language');
		
		$data['languages'] = $this->model_localisation_language->getLanguages();
		
		// Countries
		$this->load->model('localisation/country');
		
		$data['countries'] = $this->model_localisation_country->getCountries();
		
		$data['header'] = $this->load->controller('common/header');
		$data['column_left'] = $this->load->controller('common/column_left');
		$data['footer'] = $this->load->controller('common/footer');
                
        	$this->response->setOutput($this->load->view('module/quickregistration.tpl', $data));

        }
        
	public function country() {
		$json = array();

		$this->load->model('localisation/country');

		$country_info = $this->model_localisation_country->getCountry($this->request->get['country_id']);

		if ($country_info) {
			$this->load->model('localisation/zone');

			$json = array(
				'country_id'        => $country_info['country_id'],
				'name'              => $country_info['name'],
				'iso_code_2'        => $country_info['iso_code_2'],
				'iso_code_3'        => $country_info['iso_code_3'],
				'address_format'    => $country_info['address_format'],
				'postcode_required' => $country_info['postcode_required'],
				'zone'              => $this->model_localisation_zone->getZonesByCountryId($this->request->get['country_id']),
				'status'            => $country_info['status']		
			);
		}

		$this->response->setOutput(json_encode($json));
	}
        
	public function install(){
		if (!$this->user->hasPermission('modify', 'extension/module')) {
			return;
		}
		
		$this->load->language('module/quickregistration');
		
		$this->load->model('setting/setting');
		
		$data = array(
			'quickregistration_status'				=> '0',
			'quickregistration_field_details_text'		=> array(
					'display'		=> '1',
					'required'		=> '0',
					'placeholder'		=> ''
				),
			'quickregistration_field_firstname'		=> array(
					'display'		=> '1',
					'required'		=> '1',
					'placeholder'		=> 'First Name'
				),
			'quickregistration_field_lastname'		=> array(
					'display'		=> '1',
					'required'		=> '1',
					'placeholder'		=> 'Last Name'
				),
			'quickregistration_field_email'			=> array(
					'display'		=> '1',
					'required'		=> '1',
					'placeholder'		=> 'E-Mail'
				),
			'quickregistration_field_telephone'		=> array(
					'display'		=> '1',
					'required'		=> '0',
					'placeholder'		=> 'Telephone'
				),
			'quickregistration_field_fax'			=> array(
					'display'		=> '0',
					'required'		=> '0',
					'placeholder'		=> 'Fax'
				),
			'quickregistration_field_address_text'		=> array(
					'display'		=> '0',
					'required'		=> '0',
					'placeholder'		=> ''
				),
			'quickregistration_field_company'		=> array(
					'display'		=> '0',
					'required'		=> '0',
					'placeholder'		=> 'Company'
				),
			'quickregistration_field_customer_group' => array(
					'display'		=> '1',
					'required'		=> '',
					'default'		=> ''
				),
			'quickregistration_field_address_1'		=> array(
					'display'		=> '0',
					'required'		=> '0',
					'placeholder'		=> 'Address'
				),
			'quickregistration_field_address_2'		=> array(
					'display'		=> '0',
					'required'		=> '0',
					'placeholder'		=> 'Additional Address'
				),
			'quickregistration_field_city'			=> array(
					'display'		=> '0',
					'required'		=> '0',
					'placeholder'		=> 'City'
				),
			'quickregistration_field_postcode'		=> array(
					'display'		=> '0',
					'required'		=> '0',
					'placeholder'		=> 'Post Code'
				),
			'quickregistration_field_country'		=> array(
					'display'		=> '0',
					'required'		=> '0',
					'default'		=> $this->config->get('config_country_id')
				),
			'quickregistration_field_zone'			=> array(
					'display'		=> '0',
					'required'		=> '0',
					'default'		=> $this->config->get('config_zone_id')
				),
			'quickregistration_field_password_text'		=> array(
					'display'		=> '1',
					'required'		=> '0',
					'placeholder'		=> ''
				),
			'quickregistration_field_newsletter'	=> array(
					'display'		=> '1',
					'required'		=> '0',
					'default'		=> '1'
				),
			'quickregistration_field_agree'	=> array(
					'display'		=> '1',
					'required'		=> '1',
					'default'		=> '1'
				),
			'quickregistration_html_header'			=> array(),
			'quickregistration_html_footer'			=> array(),
		);
		
		$this->model_setting_setting->editSetting('quickregistration', $data);
                
		$this->load->model('setting/store');
		
		$stores = $this->model_setting_store->getStores();
		
		foreach ($stores as $store) {
			$this->model_setting_setting->editSetting('quickregistration', $data, $store['store_id']);
		}
		
		// Layout
		if (!$this->getLayout()) {
			$this->load->model('design/layout');
			
			$layout_data = array(
				'name'			=> 'Quick Registration',
				'layout_route'	=> array(
					array(
						'store_id'	=> 0,
						'route'		=> 'quickregistration/register'
					)
				)
			);
			
			$this->model_design_layout->addLayout($layout_data);
		}
	}

	public function uninstall() {
		if (!$this->user->hasPermission('modify', 'extension/module')) {
			return;
		}
		
		if ($this->getLayout()) {
			$this->load->model('design/layout');
			
			$this->model_design_layout->deleteLayout($this->getLayout());
		}

	}
        
	private function getLayout() {
		$query = $this->db->query("SELECT * FROM " . DB_PREFIX . "layout_route WHERE route = 'quickregistration/register'");
		
		if ($query->num_rows) {
			return $query->row['layout_id'];
		}
		
		return false;
	}
        
	protected function validate() {
		if (!$this->user->hasPermission('modify', 'module/quickregistration')) {
			$this->error['warning'] = $this->language->get('error_permission');
		}
		
		return !$this->error;
	}
 
        
}

