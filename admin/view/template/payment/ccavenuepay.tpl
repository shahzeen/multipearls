<?php echo $header; ?>
<?php echo $column_left; ?> 

<div id="content">
	<div class="page-header">
		<div class="container-fluid">
			<div class="pull-right">
				<button type="submit" form="form-ccavenue" data-toggle="tooltip" title="<?php echo $button_save; ?>" class="btn btn-primary"><i class="fa fa-check-circle"></i> <?php echo $button_save; ?></button>
				<a href="<?php echo $cancel; ?>" data-toggle="tooltip" title="<?php echo $button_cancel; ?>" class="btn btn-default"><i class="fa fa-reply"></i> <?php echo $button_cancel; ?></a></div>
				<h1><?php echo $heading_title; ?></h1>
				<ul class="breadcrumb">
					<?php foreach ($breadcrumbs as $breadcrumb) { ?>
					<li><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a></li>
					<?php } ?>
				</ul>
			</div>
		</div>
		<div class="container-fluid">
			<?php if ($error_warning) { ?>
			<div class="alert alert-danger"><i class="fa fa-exclamation-circle"></i> <?php echo $error_warning; ?>
			  <button type="button" class="close" data-dismiss="alert">&times;</button>
			</div>
			<?php } ?>
			<div class="panel panel-default">				
				<div class="panel-heading" id ="api_panel" style="display: inline-block; margin-left: 20px; ">
					<div class="af" id="af" style="float: left; padding:  26px 5px 0px; height: 40px;">
						<a href="https://www.ccavenue.com/" target="_blank">
							<img src="https://www.ccavenue.com/images_shoppingcart/ccavenue_logo_india.png" alt="CCAvenue MCPG" title="CCAvenue MCPG" style="height:25px"></a>
					</div>
					<div id ="right_panel" style="display: inline-block; margin-left: 20px; margin-top:18px; float:left">
						<h3 class="panel-title"style="font-size:20px;margin-bottom:9px;"><?php echo $heading_title; ?> </h3>
						</br> <a style=" font-size:18px;font-family:Verdana, Geneva, sans-serif; color:#09F;">Module Version:2.1</a>
</br> <a style=" font-size:18px;font-family:Verdana, Geneva, sans-serif; color:#09F;" href="mailto:shoppingcart@ccavenue.com?subject=India%20Shopping%20Cart%20-%20Opencart%202.1">Contact Support</a>				  
						
					</div>
					
				</div>
				<div class="panel-body">
					<form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" id="form-ccavenuepay" class="form-horizontal">
						<div class="form-group">
							<label class="col-sm-2 control-label" for="input-status"><?php echo $entry_status; ?></label>
							<div class="col-sm-10">
								<select name="ccavenuepay_status" id="input-status" class="form-control">
									<?php if ($ccavenuepay_status) { ?>
									<option value="1" selected="selected"><?php echo $text_enabled; ?></option>
									<option value="0"><?php echo $text_disabled; ?></option>
									<?php } else { ?>
									<option value="1"><?php echo $text_enabled; ?></option>
									<option value="0" selected="selected"><?php echo $text_disabled; ?></option>
									<?php } ?>
								</select>
							</div>
						</div>
						<div class="form-group required">
							<label class="col-sm-2 control-label" for="input-merchant_id"><?php echo $entry_merchant_id; ?></label>
							<div class="col-sm-10">
								<input type="text" name="ccavenuepay_merchant_id" value="<?php echo $ccavenuepay_merchant_id;  ?>"  id="input-merchant_id" class="form-control"  /> 
								<?php if ($error_merchant_id) { ?>
										<span class="error"><?php echo $error_merchant_id; ?></span>
								<?php } ?>
							</div>
						</div>
						<div class="form-group required">
							<label class="col-sm-2 control-label" for="input-access_code"><?php echo $entry_access_code; ?></label>
							<div class="col-sm-10">
								<input type="text" name="ccavenuepay_access_code" value="<?php echo $ccavenuepay_access_code;  ?>" id="input-access_code" class="form-control"  /> 
								<?php if ($error_access_code) { ?>
									<span class="error"><?php echo $error_access_code; ?></span>
								<?php } ?>
							</div>
						</div>
						<div class="form-group required">
							<label class="col-sm-2 control-label" for="input-working_key"><?php echo $entry_working_key; ?></label>
							<div class="col-sm-10">
								<input type="password" name="ccavenuepay_working_key" value="<?php echo $ccavenuepay_working_key;  ?>"  id="input-working_key" class="form-control"  /> 
								<?php if ($error_working_key) { ?>
									<span class="error"><?php echo $error_working_key; ?></span>
								<?php } ?>
							</div>
						</div>
						<div class="form-group">
							<label class="col-sm-2 control-label" for="input-payment_confirmation_mail"><?php echo $entry_payment_confirmation_mail; ?></label>
							<div class="col-sm-10">
								<?php if ($ccavenuepay_payment_confirmation_mail) { ?>
									<input type="radio" name="ccavenuepay_payment_confirmation_mail" value="1" checked="checked" />
									<?php echo $text_yes; ?>            
									<input type="radio" name="ccavenuepay_payment_confirmation_mail" value="0" />
									<?php echo $text_no; ?>            
								<?php } else { ?>            
									<input type="radio" name="ccavenuepay_payment_confirmation_mail" value="1" />
									<?php echo $text_yes; ?>            
									<input type="radio" name="ccavenuepay_payment_confirmation_mail" value="0" checked="checked" />
									<?php echo $text_no; ?><?php } ?>
							</div>
						</div> 
                                                <div class="form-group">
                                                    <label class="col-sm-2 control-label" for="input-payment_test_mode"><?php echo $entry_payment_test_mode; ?></label>
                                                    <div class="col-sm-10">
                                                        <select name="ccavenuepay_test_mode" id="input-payment_test_mode" class="form-control">
                                                            <?php if ($ccavenuepay_test_mode) { ?>
                                                            <option value="1" selected="selected"><?php echo $text_test; ?></option>
                                                            <option value="0"><?php echo $text_live; ?></option>
                                                            <?php } else { ?>
                                                            <option value="1"><?php echo $text_test; ?></option>
                                                            <option value="0" selected="selected"><?php echo $text_live; ?></option>
                                                            <?php } ?>
                                                        </select>
                                                    </div>
                                                </div>
                                                <div class="form-group">
							<label class="col-sm-2 control-label" for="input-payment_currency_option"><?php echo $entry_payment_currency_option; ?></label>
						   <div class="col-sm-10">
							<select name="ccavenuepay_payment_currency_option[]" id="input-payment_currency_option" class="form-control" multiple="multiple">
							<?php foreach ($currencies as $currency)  {  ?>
						 	   <?php  if (in_array($currency['code'],$allowcurrencies ))  { ?>
						  	      <?php  if (in_array($currency['code'],$ccavenuepay_payment_currency_option ))  { ?>
									<option value="<?php echo $currency['code']; ?>"selected="selected"><?php echo $currency['title']; ?></option>
								<?php }else{ ?>	
									<option value="<?php echo $currency['code']; ?>"><?php echo $currency['title']; ?></option>
 								<?php } ?>
						           <?php } ?>
						        <?php } ?>
										 
						       </select>
						     </div>
					        </div>
						<div class="form-group">
							<label class="col-sm-2 control-label"  for="input-total"><?php echo $entry_total; ?></label> 
							<div class="col-sm-10">
								<input type="text" name="ccavenuepay_total" value="<?php echo $ccavenuepay_total; ?>" id="input-total" class="form-control" />
							</div>
						</div>
						<div class="form-group">
							<label class="col-sm-2 control-label" for="input-geo-zone"><?php echo $entry_geo_zone; ?></label>
							<div class="col-sm-10">
								<select name="ccavenuepay_geo_zone_id" id="input-geo-zone" class="form-control">
									<option value="0"><?php echo $text_all_zones; ?></option>
									<?php foreach ($geo_zones as $geo_zone) { ?>
									<?php if ($geo_zone['geo_zone_id'] == $ccavenue_geo_zone_id) { ?>
									<option value="<?php echo $geo_zone['geo_zone_id']; ?>" selected="selected"><?php echo $geo_zone['name']; ?></option>
									<?php } else { ?>
									<option value="<?php echo $geo_zone['geo_zone_id']; ?>"><?php echo $geo_zone['name']; ?></option>
									<?php } ?>
									<?php } ?>
								</select>
							</div>
						</div>
						<div class="form-group">
							<label class="col-sm-2 control-label" for="input-completed_status"><?php echo $entry_completed_status; ?></label>
								<div class="col-sm-10">
									<select name="ccavenuepay_completed_status_id" id="input-completed_status_id" class="form-control">
										<?php foreach ($order_statuses as $order_status)  {  ?>
									   <?php  if ($order_status['order_status_id'] == $ccavenuepay_completed_status_id)  { ?>
											<option value="<?php echo $order_status['order_status_id']; ?>" selected="selected"><?php echo $order_status['name']; ?></option>
											<?php } else { ?>
											<option value="<?php echo $order_status['order_status_id']; ?>"><?php echo $order_status['name']; ?></option>
											<?php } ?>
											<?php } ?>
										 
									</select>
								</div>
							</div>
							<div class="form-group">
							<label class="col-sm-2 control-label" for="input-failed_status"><?php echo $entry_failed_status; ?></label>
							<div class="col-sm-10">
							  <select name="ccavenuepay_failed_status_id" id="input-failed_status" class="form-control">
						<?php foreach ($order_statuses as $order_status) {  ?>
							   <?php if ($order_status['order_status_id'] == $ccavenuepay_failed_status_id) { ?>
									 <option value="<?php echo $order_status['order_status_id']; ?>" selected="selected"><?php echo $order_status['name']; ?></option>
									<?php } else { ?>
									<option value="<?php echo $order_status['order_status_id']; ?>"><?php echo $order_status['name']; ?></option>
									<?php } ?>
							 <?php } ?> 
							  </select>
							</div>
						  </div>
						<div class="form-group">
							<label class="col-sm-2 control-label" for="input-pending_status"><?php echo $entry_pending_status; ?></label>
							<div class="col-sm-10">
							  <select name="ccavenuepay_pending_status_id" id="input-pending_status" class="form-control">
								<?php foreach ($order_statuses as $order_status) { ?>
									<?php if ($order_status['order_status_id'] == $ccavenuepay_pending_status_id)  { ?>
									<option value="<?php echo $order_status['order_status_id']; ?>" selected="selected"><?php echo $order_status['name']; ?></option>
									<?php } else { ?>
										<option value="<?php echo $order_status['order_status_id']; ?>"><?php echo $order_status['name']; ?></option>
									<?php } ?>
								<?php } ?>
							  </select>
							</div>
						  </div>
						<div class="form-group">
							<label class="col-sm-2 control-label" for="input-sort-order"><?php echo $entry_sort_order; ?></label>
							<div class="col-sm-10">
							  <input type="text" name="ccavenuepay_sort_order" value="<?php echo $ccavenuepay_sort_order; ?>"  id="input-sort-order" class="form-control" />
							</div>
						</div>
					</form>
				</div>
			</div>
		</div>	
	</div>
</div>
<?php echo $footer; ?>
