<div class="container">
	<div class="row">
		<div class="col-xl-10 offset-1">
			<div class="title-1 m-0 pt-60">Сообщения от пользователей</div>
			<?php include ROOT."templates/_parts/_success.tpl"; ?>
			<form class="form mb-100 pb-20 pt-35">
					<?php foreach ($messages as $message) { ?>
					<div class="user-message">
						<div class="user-message__header">
							<div class="user-message__date">
								<?=$message['date_time']; ?>
							</div>
							<div class="user-message__button">
								<a class="button button--del" href="<?=HOST?>messages?id=<?=$message['id']?>"> Удалить</a>
							</div>
						</div>
						<div class="user-message__from">
							<div class="user-message__name">
								<?=$message['name'] ?>
									<?=$message['secondname']?>
							</div>
							<a class="user-message__email user-message__a" href="mailto:johndoe@gmail.com">
								<?=$message['email'] ?>
							</a>
						</div>
						<div class="user-message__text">
							<?=$message['message'] ?>
						</div>
							
						<?php if( $message['message_file'] != "" ) { ?>
						<div class="user-message__attachments">
							<div class="user-message__attachments-caption">Прикрепленный файл:</div>
							<a class="user-message__attachments-name user-message__a" href="<?=HOST?>usercontent/uploadfile/<?=$message['message_file']?>"><?=$message['message_file_name_original']?></a>
						</div>
						<?php } ?>
					</div>
					<?php  } ?>
			</form>
		</div>
	</div>
</div>
