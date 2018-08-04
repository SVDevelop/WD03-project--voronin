<?php
if ( $_GET['result'] == 'Deleted' ) {?>
	<div class="errors error--success" data-notify-hidde>
		Работа была удалена
	</div>
	<?php } ?>
	<?php
if ( $_GET['result'] == 'Created' ) {?>
		<div class="errors error--success" data-notify-hidde>
			Работа была добавлена
		</div>
		<?php }
if ( $_GET['result'] == 'Updated' ) { ?>
		<div class="errors error--success" data-notify-hidde>
			Работа была обновлена
		</div>
		<?php } ?>
