<?php echo $header; ?>
<div class="container">
	<ul class="breadcrumb">
		<?php foreach ($breadcrumbs as $breadcrumb) { ?>
		<li><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a></li>
	<?php } ?>
	</ul>
	<?php if ($success) { ?>
        <div class="alert alert-success"><i class="material-design-verification24"></i>  <?php echo $success; ?>
            <button type="button" class="close material-design-close47"></button>
        </div>
	<?php } ?>
	<?php if ($error_warning) { ?>
        <div class="alert alert-danger"><i class="material-design-cancel19"></i> <?php echo $error_warning; ?>
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
		<div class="row">
			<div class="col-sm-6">
			<div class="well">
				<div class="heading">
					<i class="material-design-add184"></i>
					<div class="extra-wrap">
						<h2><?php echo $text_new_customer; ?></h2>
						<strong><?php echo $text_register; ?></strong>
					</div>
				</div>
				<p><?php echo $text_register_account; ?></p>
				<a href="<?php echo $register; ?>" class="btn btn-primary"><?php echo $button_continue; ?></a></div>
			</div>
			<div class="col-sm-6">
			<div class="well">
				<div class="heading">
					<i class="material-design-man460"></i>
					<h2><?php echo $text_returning_customer; ?></h2>
					<strong><?php echo $text_i_am_returning_customer; ?></strong>
				</div>
				<form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data">
				<div class="form-group">
					<label class="control-label" for="input-email"><?php echo $entry_email; ?></label>
					<input type="text" name="email" value="<?php echo $email; ?>" placeholder="<?php echo $entry_email; ?>" id="input-email" class="form-control" />
				</div>
				<div class="form-group">
					<label class="control-label" for="input-password"><?php echo $entry_password; ?></label>
					<input type="password" name="password" value="<?php echo $password; ?>" placeholder="<?php echo $entry_password; ?>" id="input-password" class="form-control" />
					<br />
					<a class="link" href="<?php echo $forgotten; ?>"><?php echo $text_forgotten; ?></a></div>
				<input type="submit" value="<?php echo $button_login; ?>" class="btn btn-primary" />
				<?php if ($redirect) { ?>
				<input type="hidden" name="redirect" value="<?php echo $redirect; ?>" />
				<?php } ?>
				</form>
			</div>
			</div>
		</div>
		<?php echo $content_bottom; ?></div>
		<?php echo $column_right; ?>
	</div>
</div>
<?php echo $footer; ?>