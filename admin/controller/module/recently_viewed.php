<?php
class ControllerModuleRecentlyViewed extends Controller {
	
	private $error = array();
	
	public function install(){
		$this->load->model('module/recently_viewed');
		$this->model_module_recently_viewed->createSchema();
	}

	public function uninstall(){
		$this->load->model('module/recently_viewed');
		$this->model_module_recently_viewed->deleteSchema();
	}

	public function index() {
		$this->load->language('module/recently_viewed');
		$this->document->setTitle($this->language->get('heading_title'));
		$this->load->model('setting/setting');

		if (($this->request->server['REQUEST_METHOD'] == 'POST') && $this->validate()) {
			$this->model_setting_setting->editSetting('recently_viewed', $this->request->post);

			$this->session->data['success'] = $this->language->get('text_success');
			
			$this->response->redirect($this->url->link('extension/module', 'token=' . $this->session->data['token'], true));
		}

		$data['heading_title'] = $this->language->get('heading_title');
		$data['text_edit'] = $this->language->get('text_edit');
		$data['text_enabled'] = $this->language->get('text_enabled');
		$data['text_disabled'] = $this->language->get('text_disabled');
		$data['entry_name'] = $this->language->get('entry_name');
		$data['entry_image'] = $this->language->get('entry_image');
		$data['entry_limit'] = $this->language->get('entry_limit');
		$data['entry_width'] = $this->language->get('entry_width');
		$data['entry_height'] = $this->language->get('entry_height');
		$data['entry_status'] = $this->language->get('entry_status');

		$data['button_save'] = $this->language->get('button_save');
		$data['button_cancel'] = $this->language->get('button_cancel');
		$data['button_module_add'] = $this->language->get('button_module_add');
		$data['button_remove'] = $this->language->get('button_remove');

		if (isset($this->error['warning'])) {
			$data['error_warning'] = $this->error['warning'];
		} else {
			$data['error_warning'] = '';
		}

		if (isset($this->error['name'])) {
			$data['error_name'] = $this->error['name'];
		} else {
			$data['error_name'] = '';
		}

		if (isset($this->error['width'])) {
			$data['error_width'] = $this->error['width'];
		} else {
			$data['error_width'] = '';
		}

		if (isset($this->error['height'])) {
			$data['error_height'] = $this->error['height'];
		} else {
			$data['error_height'] = '';
		}

		if (isset($this->error['image'])) {
			$data['error_image'] = $this->error['image'];
		} else {
			$data['error_image'] = '';
		}

		$data['breadcrumbs'] = array();

		$data['breadcrumbs'][] = array(
			'text' => $this->language->get('text_home'),
			'href' => $this->url->link('common/dashboard', 'token=' . $this->session->data['token'], true)
		);

		$data['breadcrumbs'][] = array(
			'text' => $this->language->get('text_module'),
			'href' => $this->url->link('extension/module', 'token=' . $this->session->data['token'], true)
		);

		if (!isset($this->request->get['module_id'])) {
			$data['breadcrumbs'][] = array(
				'text' => $this->language->get('heading_title'),
				'href' => $this->url->link('module/recently_viewed', 'token=' . $this->session->data['token'], true)
			);
		} else {
			$data['breadcrumbs'][] = array(
				'text' => $this->language->get('heading_title'),
				'href' => $this->url->link('module/recently_viewed', 'token=' . $this->session->data['token'] . '&module_id=' . $this->request->get['module_id'], true)
			);
		}

		if (!isset($this->request->get['module_id'])) {
			$data['action'] = $this->url->link('module/recently_viewed', 'token=' . $this->session->data['token'], true);
		} else {
			$data['action'] = $this->url->link('module/recently_viewed', 'token=' . $this->session->data['token'] . '&module_id=' . $this->request->get['module_id'], true);
		}

		$data['cancel'] = $this->url->link('module', 'token=' . $this->session->data['token'], true);


		if (isset($this->request->post['recently_viewed_status'])) {
			$data['recently_viewed_status'] = $this->request->post['recently_viewed_status'];
		} else {
			$data['recently_viewed_status'] = $this->config->get('recently_viewed_status');
		}
		
		if (isset($this->request->post['recently_viewed_module'])) {
			$modules = $this->request->post['recently_viewed_module'];
		} elseif ($this->config->has('recently_viewed_module')) {
			$modules = $this->config->get('recently_viewed_module');
		} else {
			$modules = array();
		}
		
		$data['recently_viewed_modules'] = array();
		
		foreach ($modules as $key => $module) {
			$data['recently_viewed_modules'][] = array(
				'key'			=> $key,
				'name'		=> $module['name'],
				'limit'     => $module['limit'],
				'width'     => $module['width'],
				'height'    => $module['height']
			);
		}
		
		$data['header'] = $this->load->controller('common/header');
		$data['column_left'] = $this->load->controller('common/column_left');
		$data['footer'] = $this->load->controller('common/footer');
		$this->response->setOutput($this->load->view('module/recently_viewed.tpl', $data));
	}

	protected function validate() {
		if (!$this->user->hasPermission('modify', 'module/recently_viewed')) {
			$this->error['warning'] = $this->language->get('error_permission');
		}

		if (isset($this->request->post['recently_viewed_module'])) {
			foreach ($this->request->post['recently_viewed_module'] as $key => $value) {
				if (!$value['name']) {
					$this->error['name'][$key] = $this->language->get('error_name');
				}
				if (!$value['width'] || !$value['height']) {
					$this->error['image'][$key] = $this->language->get('error_image');
				}
			}
		}

		return !$this->error;
	}
}