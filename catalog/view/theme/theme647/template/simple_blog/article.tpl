<?php echo $header; ?>
<div class="container">
	<ul class="breadcrumb">
		<?php foreach ($breadcrumbs as $breadcrumb) { ?>
		<li>
			<a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a>
		</li>
		<?php } ?>
	</ul>
	<div class="row"><?php echo $column_left; ?>
		<?php if ($column_left && $column_right) { ?>
		<?php $class = 'col-sm-6'; ?>
		<?php } elseif ($column_left || $column_right) { ?>
		<?php $class = 'col-sm-9'; ?>
		<?php } else { ?>
		<?php $class = 'col-sm-12'; ?>
		<?php } ?>

		<div id="content" class="<?php echo $class; ?> tb-space">
			<?php echo $content_top; ?>
			<h1><?php echo $heading_title; ?></h1>

			<?php if ($articles) { ?>

			<?php foreach ($articles as $article) { ?>
			<article class="blog_article">
				<div class="row">
					<div class="col-sm-12 col-md-4">
						<?php if ($article['image']) { ?>
						<?php if ($article['featured_found']) { ?>
						<figure class="article-image">
							<img src="<?php echo $article['image']; ?>"
							alt="<?php echo $article['article_title']; ?>"/>
						</figure>
						<?php } else { ?>
						<figure class="article-thumbnail-image">
							<img src="<?php echo $article['image']; ?>"
							alt="<?php echo $article['article_title']; ?>"/>
							<figcaption class="article-description">
								<?php echo $article['description']; ?>
							</figcaption>
						</figure>
						<?php } ?>
						<?php } ?>
					</div>
					<div class="col-sm-12 col-md-8">
						<div class="article-sub-title">
							<span class="article-author">
								<?php echo $text_by ?> <a href="<?php echo $article['author_href']; ?>"><?php echo $article['author_name']; ?></a>
							</span>
							<span class="article-date"><?php echo $text_on ?> <span><?php echo $article['date_added']; ?></span></span>
							<?php if ($article['allow_comment']) { ?>
							<span class="article-comments material-design-add183"><a
								href="<?php echo $article['comment_href']; ?>#comment-section"><?php echo $article['total_comment']; ?></a></span>
								<?php } ?>
							</div>
							<h2 class="article-title">
								<a href='<?php echo $article['href']; ?>'><?php echo $article['article_title']; ?></a>
							</h2>
							<hr>
							<?php if ($article['featured_found']) { ?>
							<div class="article-description">
								<?php echo $article['description']; ?>
							</div>
							<?php } else { ?>
							<div class="article-description">
								<?php echo $article['description']; ?>
							</div>
							<?php } ?>
							<div>
								<a href='<?php echo $article['href']; ?>' class="lnk material-design-right244 pull-right" data-toggle="tooltip" title="<?php echo $text_button_more ?>">
								</a>
							</div>
						</div>
					</div>
					<?php if (!$article['featured_found']) { ?>
					<div class="article-thumbnail-found"></div>
					<?php } ?>
				</article>
				<?php } ?>
				<div class="row">
					<div class="col-sm-12 col-xs-12 text-left"><?php echo $pagination; ?></div>
					<!--                    <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12 text-right">--><?php //echo $results; ?><!--</div>-->
				</div>

				<?php } else { ?>
				<h3 class="text-center"><?php echo $text_no_found; ?></h3>
				<?php } ?>


				<?php echo $content_bottom; ?>
			</div>

			<?php echo $column_right; ?>
		</div>
	</div>
	<?php echo $footer; ?>








