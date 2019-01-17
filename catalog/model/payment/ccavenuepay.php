<?php 
/*
Payment Name      : CCAvenue MCPG
Description	  : Payment with CCAvenue MCPG.
Module Version    : 2.1.0.2
Author		  : CCAvenue 
*/

class ModelPaymentCcavenuepay extends Model {
  	public function getMethod($address, $total) {
		$this->load->language('payment/ccavenuepay');		
		$query = $this->db->query("SELECT * FROM " . DB_PREFIX . "zone_to_geo_zone WHERE geo_zone_id = '" . (int)$this->config->get('ccavenuepay_geo_zone_id') . "' AND country_id = '" . (int)$address['country_id'] . "' AND (zone_id = '" . (int)$address['zone_id'] . "' OR zone_id = '0')");		
		$currency = $this->config->get('ccavenuepay_payment_currency_option');
		$transaction_currenay = $this->session->data['currency'];
				
		if ($total <$this->config->get('ccavenuepay_total')) {
			$status = false;
		}elseif (!in_array($transaction_currenay, $currency)){
 			$status = false;
		}elseif (!$this->config->get('ccavenuepay_geo_zone_id')) {
			$status = true;
		}elseif ($query->num_rows) {
			$status = true;
		} else {
			$status = false;
		}
		$method_data = array();	
		if ($status == 1) {  
                      $method_data = array( 
                                            'code'       => 'ccavenuepay',
                                            'title'      => $this->language->get('text_title'),	
                                            'sort_order' => $this->config->get('ccavenuepay_sort_order'),
                                            'terms'      => ''
                                      );

                }  
    	 return $method_data;
  	}
}
?>
