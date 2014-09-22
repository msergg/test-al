<?php
class ControllerShippingNovaposhta extends Controller {

    private $error = array();

    public function index() {
        $this->load->language('shipping/novaposhta');
		
		$this->document->setTitle($this->language->get('heading_title'));

        $this->load->model('setting/setting');

        if (($this->request->server['REQUEST_METHOD'] == 'POST') && ($this->validate())) {
            $this->model_setting_setting->editSetting('novaposhta', $this->request->post);

            $this->session->data['success'] = $this->language->get('text_success');

            $this->redirect($this->url->link('extension/shipping','token=' . $this->session->data['token'],'SSL'));
        }
		
        $this->data['heading_title'] = $this->language->get('heading_title');

        $this->data['text_enabled'] = $this->language->get('text_enabled');
        $this->data['text_disabled'] = $this->language->get('text_disabled');
        $this->data['text_all_zones'] = $this->language->get('text_all_zones');
        $this->data['text_none'] = $this->language->get('text_none');

        $this->data['entry_tax'] = $this->language->get('entry_tax');
        $this->data['entry_geo_zone'] = $this->language->get('entry_geo_zone');
        $this->data['entry_status'] = $this->language->get('entry_status');
        $this->data['entry_sort_order'] = $this->language->get('entry_sort_order');

        $this->data['entry_key'] = $this->language->get('entry_key');
        $this->data['entry_city_from'] = $this->language->get('entry_city_from');
        $this->data['entry_type_shipping'] = $this->language->get('entry_type_shipping');
        $this->data['entry_type_load'] = $this->language->get('entry_type_load');
        $this->data['entry_floor_count'] = $this->language->get('entry_floor_count');
        $this->data['entry_copy'] = $this->language->get('entry_copy');
        $this->data['entry_copy1'] = $this->language->get('entry_copy1');
		
        $this->data['entry_type_1'] = $this->language->get('entry_type_1');
        $this->data['entry_type_2'] = $this->language->get('entry_type_2');
        $this->data['entry_type_3'] = $this->language->get('entry_type_3');
        $this->data['entry_type_4'] = $this->language->get('entry_type_4');
        $this->data['entry_type_load_1'] = $this->language->get('entry_type_load_1');
        $this->data['entry_type_load_4'] = $this->language->get('entry_type_load_4');

        $this->data['button_save'] = $this->language->get('button_save');
        $this->data['button_cancel'] = $this->language->get('button_cancel');

        $this->data['tab_general'] = $this->language->get('tab_general');

        if (isset($this->error['warning'])) {
            $this->data['error_warning'] = $this->error['warning'];
        } else {
            $this->data['error_warning'] = '';
        }
		
        if (isset($this->error['error_key'])) {
            $this->data['error_key'] = $this->error['error_key'];
        } else {
            $this->data['error_key'] = '';
        }
		
        $this->data['breadcrumbs'] = array();

        $this->data['breadcrumbs'][] = array(
            'href' =>  $this->url->link('common/home','token=' . $this->session->data['token'],'SSL'),
            'text' => $this->language->get('text_home'),
            'separator' => FALSE
        );

        $this->data['breadcrumbs'][] = array(
            'href' => $this->url->link('extension/shipping','token=' . $this->session->data['token'],'SSL'),
            'text' => $this->language->get('text_shipping'),
            'separator' => ' :: '
        );

        $this->data['breadcrumbs'][] = array(
            'href' =>  $this->url->link('shipping/novaposhta','token=' . $this->session->data['token'],'SSL'),
            'text' => $this->language->get('heading_title'),
            'separator' => ' :: '
        );
		
        $this->data['action'] = $this->url->link('shipping/novaposhta','token=' . $this->session->data['token'],'SSL');

        $this->data['cancel'] = $this->url->link('extension/shipping','token=' . $this->session->data['token'],'SSL');

        if (isset($this->request->post['novaposhta_key'])) {
            $this->data['novaposhta_key'] = $this->request->post['novaposhta_key'];
        } else {
            $this->data['novaposhta_key'] = $this->config->get('novaposhta_key');
        }

        if (isset($this->request->post['novaposhta_city_from'])) {
            $this->data['novaposhta_city_from'] = $this->request->post['novaposhta_city_from'];
        } else {
            $this->data['novaposhta_city_from'] = $this->config->get('novaposhta_city_from');
        }

        if (isset($this->request->post['novaposhta_type'])) {
            $this->data['novaposhta_type'] = $this->request->post['novaposhta_type'];
        } else {
            $this->data['novaposhta_type'] = $this->config->get('novaposhta_type');
        }

        if (isset($this->request->post['novaposhta_type_load'])) {
            $this->data['novaposhta_type_load'] = $this->request->post['novaposhta_type_load'];
        } else {
            $this->data['novaposhta_type_load'] = $this->config->get('novaposhta_type_load');
        }

        if (isset($this->request->post['novaposhta_floor_count'])) {
            $this->data['novaposhta_floor_count'] = $this->request->post['novaposhta_floor_count'];
        } else {
            $this->data['novaposhta_floor_count'] = $this->config->get('novaposhta_floor_count');
        }

        if (isset($this->request->post['novaposhta_geo_zone_id'])) {
            $this->data['novaposhta_geo_zone_id'] = $this->request->post['novaposhta_geo_zone_id'];
        } else {
            $this->data['novaposhta_geo_zone_id'] = $this->config->get('novaposhta_geo_zone_id');
        }

        if (isset($this->request->post['novaposhta_status'])) {
            $this->data['novaposhta_status'] = $this->request->post['novaposhta_status'];
        } else {
            $this->data['novaposhta_status'] = $this->config->get('novaposhta_status');
        }

        if (isset($this->request->post['novaposhta_sort_order'])) {
            $this->data['novaposhta_sort_order'] = $this->request->post['novaposhta_sort_order'];
        } else {
            $this->data['novaposhta_sort_order'] = $this->config->get('novaposhta_sort_order');
        }

        $this->load->model('localisation/geo_zone');

        $this->data['geo_zones'] = $this->model_localisation_geo_zone->getGeoZones();

        $this->template = 'shipping/novaposhta.tpl';
        $this->children = array(
            'common/header',
            'common/footer'
        );

        $this->response->setOutput($this->render(TRUE), $this->config->get('config_compression'));
    }

    private function validate() {
        if (!$this->user->hasPermission('modify', 'shipping/novaposhta')) {
            $this->error['warning'] = $this->language->get('error_permission');
        }
		
		if (utf8_strlen($this->request->post['novaposhta_key']) < 32 ) {
			$this->error['error_key'] = $this->language->get('error_key');
		}
		
        if (!$this->error) {
            return TRUE;
        } else {
            return FALSE;
        }
    }

}

?>