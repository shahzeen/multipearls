<?php echo $header; ?>
<div class="container">
  <ul class="breadcrumb">
	<?php foreach ($breadcrumbs as $breadcrumb) { ?>
	<li><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a></li>
	<?php } ?>
  </ul>
  <div class="row site-map-page"><?php echo $column_left; ?>
	<?php if ($column_left && $column_right) { ?>
	<?php $class = 'col-sm-6'; ?>
	<?php } elseif ($column_left || $column_right) { ?>
	<?php $class = 'col-sm-9'; ?>
	<?php } else { ?>
	<?php $class = 'col-sm-12'; ?>
	<?php } ?>
	<div id="content" class="<?php echo $class; ?> tb-space"><?php echo $content_top; ?>
	  <h1><?php echo $heading_title; ?></h1>
	  <div class="row">
		<div class="col-sm-6">
            <h5><?php echo $text_category?></h5>
		  <ul class="category-list">
			<?php foreach ($categories as $category_1) { ?>
			<li class="<?php if ($category_1['children']) echo 'ul-with-ul'?>"><a href="<?php echo $category_1['href']; ?>"><?php echo $category_1['name']; ?></a>
			  <?php if ($category_1['children']) { ?>
			  <ul>
				<?php foreach ($category_1['children'] as $category_2) { ?>
				<li class="<?php if ($category_2['children']) echo 'ul-with-ul'?>"><a href="<?php echo $category_2['href']; ?>"><?php echo $category_2['name']; ?></a>
				  <?php if ($category_2['children']) { ?>
				  <ul>
					<?php foreach ($category_2['children'] as $category_3) { ?>
					<li><a href="<?php echo $category_3['href']; ?>"><?php echo $category_3['name']; ?></a></li>
					<?php } ?>
				  </ul>
				  <?php } ?>
				</li>
				<?php } ?>
			  </ul>
			  <?php } ?>
			</li>
			<?php } ?>
		  </ul>
		</div>
		<div class="col-sm-6">
            <div class="row">
                <div class="col-xs-6">
                    <h5><?php echo $text_information; ?></h5>
                    <ul>
                        <?php foreach ($informations as $information) { ?>
                            <li><a href="<?php echo $information['href']; ?>"><?php echo $information['title']; ?></a></li>
                        <?php } ?>
                        <li><a href="<?php echo $contact; ?>"><?php echo $text_contact; ?></a></li>
                    </ul>
                </div>
                <div class="col-xs-6">
                    <h5><?php echo $text_pages;?></h5>
                    <ul>
                        <li><a href="<?php echo $special; ?>"><?php echo $text_special; ?></a></li>
                        <li><a href="<?php echo $account; ?>"><?php echo $text_account; ?></a></li>
                        <li><a href="<?php echo $cart; ?>"><?php echo $text_cart; ?></a></li>
                        <li><a href="<?php echo $checkout; ?>"><?php echo $text_checkout; ?></a></li>
                        <li><a href="<?php echo $search; ?>"><?php echo $text_search; ?></a></li>
                    </ul>

                    <h5><?php echo $text_account;?></h5>
                    <ul>
                        <li><a href="<?php echo $edit; ?>"><?php echo $text_edit; ?></a></li>
                        <li><a href="<?php echo $password; ?>"><?php echo $text_password; ?></a></li>
                        <li><a href="<?php echo $address; ?>"><?php echo $text_address; ?></a></li>
                        <li><a href="<?php echo $history; ?>"><?php echo $text_history; ?></a></li>
                        <li><a href="<?php echo $download; ?>"><?php echo $text_download; ?></a></li>
                    </ul>
                </div>
            </div>

		</div>
	  </div>
	  <?php echo $content_bottom; ?></div>
	<?php echo $column_right; ?></div>
</div>
<?php echo $footer; ?>