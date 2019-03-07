<div id="filter-content">
<div class="panel-group" id="accordion">
	<?php foreach ($filter_groups as $index=>$filter_group) { ?>
	<div class="panel panel-default custom-panel-block">
	<div class="panel-heading">
	<a href="#<?php echo $index; ?>" class="accordion-toggle" data-toggle="collapse" data-parent="#accordion"><?php echo $filter_group['name']; ?></a>
	</div>
	<div id="<?php echo $index; ?>" class="panel-collapse collapse">
    <div class="panel-body">
			<div class="box-filter">
				<div>
							<?php foreach ($filter_group['filter'] as $filter) { ?>
							<?php if (in_array($filter['filter_id'], $filter_category)) { ?>
							<div>
								<input type="checkbox" value="<?php echo $filter['filter_id']; ?>" id="filter<?php echo $filter['filter_id']; ?>" checked="checked" />
								<label for="filter<?php echo $filter['filter_id']; ?>"><?php echo $filter['name']; ?></label>
							</div>
							<?php } else { ?>
							<?php if ($filter['count']==0) { ?>
							<div>
								<input type="checkbox" disabled value="<?php echo $filter['filter_id']; ?>" id="filter<?php echo $filter['filter_id']; ?>" />
								<label for="filter<?php echo $filter['filter_id']; ?>"><?php echo $filter['name']; ?></label>
							</div>
							<?php } else { ?>
							<div>
							<input type="checkbox" value="<?php echo $filter['filter_id']; ?>" id="filter<?php echo $filter['filter_id']; ?>" />
								<label for="filter<?php echo $filter['filter_id']; ?>"><?php echo $filter['name']; ?></label>
								</div>
							<?php } ?>
							<?php } ?>
							<?php } ?>
						</div>
			</div>
		</div>
	</div>
	</div>
	<?php } ?>
	 <div class="panel-footer text-right">
	<button type="button" id="button-filter" class="btn btn-filter"><?php echo $button_filter; ?></button>
  </div>
</div>
</div>
<script type="text/javascript"><!--
$('#button-filter').on('click', function() {
	filter = [];
	
$('.box-filter input[type=\'checkbox\']:checked').each(function(element) {
		filter.push(this.value);
	});
	
	location = '<?php echo $action; ?>&filter=' + filter.join(',');
});
//--></script> 
