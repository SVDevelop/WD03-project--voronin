<div class="pagination" id="pagination">
	<?php if ($active != 1) { ?>
	<a class="pagination__item pagination__item--prev" href="<?php if ($active == 2) { ?><?=$url?><?php } else { ?><?=$url_page.($active - 1)?><?php } ?>">Назад</a>
	<?php } ?>
	<?php for ($i = $start; $i <= $end; $i++) { ?>
	<?php if ($i == $active) { ?>
	<a href="<?=$url_page.$i?>" class="pagination__item pagination__item--active">
		<?=$i?>
	</a>
	<?php } else { ?>
	<a class="pagination__item" href="<?php if ($i == 1) { ?><?=$url?><?php } else { ?><?=$url_page.$i?><?php } ?>">
		<?=$i?>
	</a>
	<?php } ?>
	<?php } ?>
	<?php if ($active != $count_pages) { ?>
	<a class="pagination__item pagination__item--next" href="<?=$url_page.($active + 1)?>">Вперед</a>
	<?php } ?>
</div>
