<?php 
/*
Payment Name      : CCAvenue MCPG
Description	  : Payment with  CCAvenue MCPG.
Module Version    : 2.1.0.2
Author		  : CCAvenue
*/


if (defined('DOM_APG_PATH_PG_MAIN_201')==false) 
{
	define("DOM_APG_PATH_PG_MAIN_201",dirname(DIR_APPLICATION)."/admin/controller/common/");
}


class Ccavenue_main
{   
	private  $_default_currency="INR";
	private  $_default_language="EN";
	private  $_pg_live_url='https://secure.ccavenue.com/transaction.do?command=initiateTransaction';
	private  $_pg_test_url='https://test.ccavenue.com/transaction.do?command=initiateTransaction';
	private  $_dom_path= "/admin/controller/catalog/";
	

	

	public function getAllowedCurrency($payment_currency)
	{
		$allowedCurrencies=	array(
							'AUD','CAD','EUR','GBP','JPY','USD','NZD','CHF','HKD','SGD',
							'SEK','DKK','PLN','NOK','HUF','CZK','ILS','MXN','MYR','BRL',
							'PHP','TWD','THB','TRY','INR'
						);
						
		if (in_array($payment_currency, $allowedCurrencies)) {
			return $payment_currency;			
		} 
		return false;
	}
	public function AllowedCurrency()
	{
		$allowedCurrencies=	array(
							'AUD','CAD','EUR','GBP','JPY','USD','NZD','CHF','HKD','SGD',
							'SEK','DKK','PLN','NOK','HUF','CZK','ILS','MXN','MYR','BRL',
							'PHP','TWD','THB','TRY','INR'
						);
						
		
		return $allowedCurrencies;
	}
	public function getAllowedLanguage($req_lang='EN')
	{		
		$allowedLanguages=array('EN');		
		if(in_array($req_lang,$allowedLanguages))
		{
			return $req_lang;
		}
		return $this->_default_language;
		
	}
        public function getPaymentGatewayUrl($test_mode)
	{		
		$pg_gateway_url='';
		if($test_mode == 1)
		{
			$pg_gateway_url =$this->_pg_test_url;
		}
		else
		{
			$pg_gateway_url=$this->_pg_live_url;
		}
		return $pg_gateway_url;
		
	}
	/* PHP-7.1 Encrypt and Decrypt functions*/
        public function encrypt($plainText,$key)
	{
		$encryptionMethod = "AES-128-CBC";
		$secretKey        = $this->hextobin(md5($key));
		$initVector       = pack("C*", 0x00, 0x01, 0x02, 0x03, 0x04, 0x05, 0x06, 0x07, 0x08, 0x09, 0x0a, 0x0b, 0x0c, 0x0d, 0x0e, 0x0f);
		$encryptedText    = openssl_encrypt($plainText, $encryptionMethod, $secretKey, OPENSSL_RAW_DATA, $initVector);
		return bin2hex($encryptedText);

	}

	public function decrypt($encryptedText,$key)
	{
		$encryptionMethod 	= "AES-128-CBC";
		$secretKey 		=  $this->hextobin(md5($key));
		$initVector 		=  pack("C*", 0x00, 0x01, 0x02, 0x03, 0x04, 0x05, 0x06, 0x07, 0x08, 0x09, 0x0a, 0x0b, 0x0c, 0x0d, 0x0e, 0x0f);
		$encryptedText  	=  $this->hextobin($encryptedText);
		$decryptedText 		=  openssl_decrypt($encryptedText, $encryptionMethod, $secretKey, OPENSSL_RAW_DATA, $initVector);
		return $decryptedText;
	}

	//********** Hexadecimal to Binary function for php 4.0 version ********


	
	public function hextobin($hexString) 
	{ 
		$length = strlen($hexString); 
		$binString="";   
		$count=0; 
		while($count<$length) 
		{       
			$subString =substr($hexString,$count,2);           
			$packedString = pack("H*",$subString); 
			if ($count==0)
			{
				$binString=$packedString;
			} 
			else 
			{
				$binString.=$packedString;
			} 
			$count+=2; 
		} 
		return $binString; 
	}
	
	public function getFormatCallbackUrl($Url)
	{
		$pattern 		= '#http://www.#';
		preg_match($pattern, $Url, $matches);
		if(count($matches)==0)
		{
			$find_pattern   = '#http://#';
			$replace_string  = 'http://www.';
			$Url = preg_replace($find_pattern,$replace_string,$Url);
		}
		return $Url;
	}

	/**
	* This funvtiona call when payment page call.
	* This function request to API server for payment form and anso check for
	* module validation. If module verify successfully than the API return the frontend form.
	* This functiona call the send_front function from API server 
	* 
	* @return
	*/
	public function getfrontform($sitedata,$passdata)
	{
		$getdata = json_decode($passdata,true);
		$customer_info_array = array();
		foreach ($getdata['merchantdata'] as $key => $value)
		{
			$customer_info_array[] = $key.'='.urlencode($value);
		}		
		$customer_info = implode("&",$customer_info_array);
		$encrypted_data = $this->encrypt($customer_info,$getdata['encryptkey']);		
		$access_code = $getdata['data']['access_code'] ;
		if(!isset($getdata['data']['action']))
		{
			$getdata['data']['action'] = $this->getPaymentGatewayUrl();
		}
		
		return '<form action="'.$getdata['data']['action'].'" method="post" id="ccavenuepay_standard_checkout" name="redirect">
					<input type="hidden" name="encRequest" id="encRequest" value="'.$encrypted_data.'" />
					<input type="hidden" name="access_code" id="access_code" value="'.$access_code.'" />
				</form>';	
	}
	
	/*
	* return front form with submit button
	*/
	
	public function getfrontformSubmit($passdata,&$form)
	{
		$getdata = json_decode($passdata,true);
		$customer_info_array = array();
		foreach ($getdata['merchantdata'] as $key => $value)
		{
			$customer_info_array[] 	= $key.'='.urlencode($value);
		}		
		$customer_info 				= implode("&",$customer_info_array);
		$encrypted_data 			= $this->encrypt($customer_info,$getdata['encryptkey']);		
		$access_code 				= $getdata['data']['access_code'] ;
		$button_confirm 			= $getdata['data']['button_confirm'] ;
		$form['#action']	 		= $this->getPaymentGatewayUrl();
		$form["encRequest"] 		= array( '#type' => 'hidden', '#value' => $encrypted_data);
		$form["access_code"] 		= array( '#type' => 'hidden', '#value' => $access_code);
		$form['actions'] 			= array( '#type' => 'actions');
		$form['actions']['submit']  = array( '#type' => 'submit','#value' => $button_confirm);	
		return $form;
	}
	
	public function getfrontformSubmitHtml($sitedata,$passdata)
	{
		$getdata = json_decode($passdata,true);
		$customer_info_array = array();
		foreach ($getdata['merchantdata'] as $key => $value)
		{
			$customer_info_array[] = $key.'='.urlencode($value);
		}		
		$customer_info = implode("&",$customer_info_array);
		$encrypted_data = $this->encrypt($customer_info,$getdata['encryptkey']);		
		$access_code = $getdata['data']['access_code'] ;
		if(!isset($getdata['data']['action']))
		{
			$getdata['data']['action'] = $this->getPaymentGatewayUrl();
		}
		
		if(!isset($getdata['data']['button_confirm']))
		{
			$button_confirm 	= "Submit" ;
		}
		else{
			$button_confirm 	= $getdata['data']['button_confirm'] ;
		}
		return '<form action="'.$getdata['data']['action'].'" method="post" id="ccavenuepay_standard_checkout" name="redirect">
					<input type="hidden" name="encRequest" id="encRequest" value="'.$encrypted_data.'" />
					<input type="hidden" name="access_code" id="access_code" value="'.$access_code.'" />
					<input type="submit" name="button_confirm" id="button_confirm" value="'.$button_confirm .'" />
				</form>';	
	}
}
?>
