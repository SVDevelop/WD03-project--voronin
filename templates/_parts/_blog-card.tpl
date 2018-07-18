<div class="col-4">
	<div class="section-ui">
		<div class="card card-post">
			<?php if ( $post->postImgSmall != "" ) { ?>
			<img class="card-post__img" src="<?=HOST?>usercontent/blog/<?=$post['post_img_small'] ?>" alt="<?=$post['title'] ?>" />
			<?php } else { ?> //заглушка
			<img class="card-post__img" src="<?=HOST?>usercontent/blog/<?=$post['post_img_small'] ?>" alt="<?=$post['title'] ?>" />
			<?php } ?>
			<div class="title-4">
				<?=mbCutString($post['title'], 48); ?>
			</div>
			<a class="button" href="<?=HOST?>blog/post?id="<?="$post['id'] ?>">Читать</a>
		</div>
	</div>
</div>
