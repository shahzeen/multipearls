<?php echo $header; ?>
<div class="container">
	<ul class="breadcrumb">
		<?php foreach ($breadcrumbs as $breadcrumb) { ?>
		<li>
			<a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a>
		</li>
		<?php } ?>
	</ul>
	<?php if ($success) { ?>
	<div class="alert alert-success"><i class="material-design-verification24"></i>  <?php echo $success; ?>
		<button type="button" class="close material-design-close47"></button>
	</div>
	<?php } ?>
	<div class="row"><?php echo $column_left; ?>
		<?php if ($column_left && $column_right) { ?>
		<?php $class = 'col-sm-6'; ?>
		<?php } elseif ($column_left || $column_right) { ?>
		<?php $class = 'col-sm-9'; ?>
		<?php } else { ?>
		<?php $class = 'col-sm-12'; ?>
		<?php } ?>
		<div id="content" class="<?php echo $class; ?> tb-space"><?php echo $content_top; ?>
			<h1 class="no-line"><i class="material-icons-equalizer"></i><?php echo $heading_title; ?></h1>
			<?php if ($products) { ?>
			<div class="table-responsive">
				<table class="table table-bordered">
					<thead>
						<tr>
							<td colspan="<?php echo count($products) + 1; ?>">
								<strong><?php echo $text_product; ?></strong></td>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td><?php echo $text_name; ?></td>
								<?php foreach ($products as $product) { ?>
								<td class="text-center">
									<div class="product-thumb">
										<a href="<?php echo $product['remove']; ?>" data-toggle="tooltip"
											title="<?php echo $button_remove; ?>"
											class="cart-remove-btn material-design-rubbish"></a>
											<?php if ($products[$product['product_id']]['thumb']) { ?>
											<div class="image">
												<img src="<?php echo $products[$product['product_id']]['thumb']; ?>"
												alt="<?php echo $products[$product['product_id']]['name']; ?>"
												title="<?php echo $products[$product['product_id']]['name']; ?>"
												class="img-thumbnail"/>
											</div>
											<?php } ?>
											<?php if ($products[$product['product_id']]['price']) { ?>
											<div class="price">
												<?php if (!$products[$product['product_id']]['special']) { ?>
												<?php echo $products[$product['product_id']]['price']; ?>
												<?php } else { ?>
												<span
												class="price-old"><?php echo $products[$product['product_id']]['price']; ?> </span>
												<span
												class="price-new"> <?php echo $products[$product['product_id']]['special']; ?> </span>
												<?php } ?>
											</div>
											<?php } ?>
											<div class="name">
												<a href="<?php echo $products[$product['product_id']]['href']; ?>">
													<?php echo $products[$product['product_id']]['name']; ?>
												</a>
											</div>

											<?php if ($review_status) { ?>
											<div class="rating">
												<?php for ($i = 1; $i <= 5; $i++) { ?>
												<?php if ($products[$product['product_id']]['rating'] < $i) { ?>
												<span class="fa-stack"><i
													class="material-design-bookmark45 fa-stack-2x"></i></span>
													<?php } else { ?>
													<span class="fa-stack"><i
														class="material-design-bookmark45 fa-stack-2x"></i><i
														class="material-design-bookmark45 star fa-stack-2x"></i></span>
														<?php } ?>
														<?php } ?>

														<div
														class="review"> <?php echo $products[$product['product_id']]['reviews']; ?></div>
													</div>

													<?php } ?>
												</div>
											</td>
											<?php } ?>
										</tr>
										<tr>
											<td><?php echo $text_model; ?></td>
											<?php foreach ($products as $product) { ?>
											<td><?php echo $products[$product['product_id']]['model']; ?></td>
											<?php } ?>
										</tr>
										<tr>
											<td><?php echo $text_manufacturer; ?></td>
											<?php foreach ($products as $product) { ?>
											<td><?php echo $products[$product['product_id']]['manufacturer']; ?></td>
											<?php } ?>
										</tr>
										<tr>
											<td><?php echo $text_availability; ?></td>
											<?php foreach ($products as $product) { ?>
											<td><?php echo $products[$product['product_id']]['availability']; ?></td>
											<?php } ?>
										</tr>

										<tr>
											<td><?php echo $text_summary; ?></td>
											<?php foreach ($products as $product) { ?>
											<td class="description"><?php echo $products[$product['product_id']]['description']; ?></td>
											<?php } ?>
										</tr>
										<tr>
											<td><?php echo $text_weight; ?></td>
											<?php foreach ($products as $product) { ?>
											<td><?php echo $products[$product['product_id']]['weight']; ?></td>
											<?php } ?>
										</tr>
										<tr>
											<td><?php echo $text_dimension; ?></td>
											<?php foreach ($products as $product) { ?>
											<td><?php echo $products[$product['product_id']]['length']; ?>
												x <?php echo $products[$product['product_id']]['width']; ?>
												x <?php echo $products[$product['product_id']]['height']; ?></td>
												<?php } ?>
											</tr>
										</tbody>
										<?php foreach ($attribute_groups as $attribute_group) { ?>
										<thead>
											<tr>
												<td colspan="<?php echo count($products) + 1; ?>">
													<strong><?php echo $attribute_group['name']; ?></strong></td>
												</tr>
											</thead>
											<?php foreach ($attribute_group['attribute'] as $key => $attribute) { ?>
											<tbody>
												<tr>
													<td><?php echo $attribute['name']; ?></td>
													<?php foreach ($products as $product) { ?>
													<?php if (isset($products[$product['product_id']]['attribute'][$key])) { ?>
													<td class="text-center"><?php echo $products[$product['product_id']]['attribute'][$key]; ?></td>
													<?php } else { ?>
													<td></td>
													<?php } ?>
													<?php } ?>
												</tr>
											</tbody>
											<?php } ?>
											<?php } ?>
											<tr>
												<td></td>
												<?php foreach ($products as $product) { ?>
												<td class="text-center">
													<button type="button"
													class="product-btn-add"
													onclick="cart.add('<?php echo $product['product_id']; ?>');"><?php echo $button_cart; ?></button>
												</td>
												<?php } ?>
											</tr>
										</table>
									</div>
									<?php } else { ?>
									<p><?php echo $text_empty; ?></p>
									<div class="buttons">
										<div class="pull-right">
											<a href="<?php echo $continue; ?>"
												class="btn btn-default"><?php echo $button_continue; ?></a>
											</div>
										</div>
										<?php } ?>
										<?php echo $content_bottom; ?></div>
										<?php echo $column_right; ?></div>
									</div>
									<?php echo $footer; ?>