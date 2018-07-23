<?php
if ( $_GET['result'] == 'postDeleted' ) {?>
	<div class="errors error--success" data-notify-hidde>
		Пост был удален
	</div>
	<?php } ?>
<?php
if ( $_GET['result'] == 'postCreated' ) {?>
		<div class="errors error--success" data-notify-hidde>
			Пост был добавлен
		</div>
<?php }
if ( $_GET['result'] == 'postUpdated' ) { ?>
		<div class="errors error--success" data-notify-hidde>
			Пост был обновлен
		</div><?php } ?>