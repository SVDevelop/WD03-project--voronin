<div class="col-4">
	<div class="section-ui">
		<div class="card card-portfolio">
			<?php if ($work->work_img_small != "") { ?>
			<img class="card-portfolio__img" src="<?=HOST?>usercontent/works/<?=$work->work_img_small?>" alt="<?=$work->title?>" />
			<?php } else { ?>
			<img class="card-portfolio__img" src="<?=HOST?>usercontent/no_img/320.jpg" alt="<?=$work->title?>" />
			<?php } ?>
			<div class="card-portfolio__body">
				<div class="title-4">
					<?=$work->title?>
				</div>
				<a class="button" href="<?=HOST?>work?id=<?=$work->id?>">Смотреть кейс</a>
			</div>
		</div>
	</div>
</div>
