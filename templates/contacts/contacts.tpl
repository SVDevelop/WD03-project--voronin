<div class="container mt-50">
	<?php if( isAdmin() ) { ?>
	<div class="flex-wrap-button">
		<div class="mr-20">
			<a class="button button--edit" href="<?=HOST?>contacts-edit"> Редактировать</a>
		</div>
		<a class="button" href="<?=HOST?>messages">Сообщения</a>
	</div>
	<?php } ?>
	<div class="row mb-80">
		<div class="col-md-10">
			<div class="row justify-content-between">
				<div class="col-md-6">
					<h2 class="title-2 extrabold">Контакты</h2>

					<div class="row justify-content-between">
						<div class="col">
							<ul class="contacts-block">
								<?php if ( @$contacts['name'] != "" ) { ?>
								<li class="contacts-block-subtitle"><strong class="contacts-block--title">Имя</strong>
									<span class="contacts-block-info--item">
										<a class="contacts-block-info" href="mailto:<?=$contacts['name']?>" target="_blank">
											<?=$contacts['name']?>
										</a>
									</span>
								</li>
								<?php } ?>
								<?php if ( @$contacts['secondname'] != "" ) { ?>
								<li class="contacts-block-subtitle"><strong class="contacts-block--title">Фамилия</strong>
									<span class="contacts-block-info--item">
										<a class="contacts-block-info" href="mailto:<?=$contacts['secondname']?>" target="_blank">
											<?=$contacts['secondname']?>
										</a>
									</span>
								</li>
								<?php } ?>
								<?php if ( @$contacts['email'] != "" ) { ?>
								<li class="contacts-block-subtitle"><strong class="contacts-block--title">Email</strong>
									<span class="contacts-block-info--item">
										<a class="contacts-block-info" href="mailto:<?=$contacts['email']?>" target="_blank">
											<?=$contacts['email']?>
										</a>
									</span>
								</li>
								<?php } ?>
								<?php if ( @$contacts['skype'] != "" ) { ?>
								<li class="contacts-block-subtitle"><strong class="contacts-block--title">Skype</strong>
									<span class="contacts-block-info--item">
										<a class="contacts-block-info" href="skype:<?=$contacts['skype']?>?chat" target="_blank">
											<?=$contacts['skype']?>
										</a>
									</span>
								</li>
								<?php } ?>
								<?php if ( @$contacts['github'] != "" ) { ?>
								<li class="contacts-block-subtitle"><strong class="contacts-block--title">GitHub</strong>
									<span class="contacts-block-info--item">
										<a class="contacts-block-info" href="<?=$contacts['github']?>" target="_blank">
											<?=$contacts['github']?>
										</a>
									</span>
								</li>
								<?php } ?>
								<?php if ( @$contacts['twitter'] != "" || @$contacts['vk'] != "" || @$contacts['fb'] != "" ) { ?>
								<li class="contacts-block-subtitle mb-55"><strong class="contacts-block--title">Социальные сети</strong>
									<span class="contacts-block-info--item">
										<a class="contacts-block-info" href="<?=$contacts['vk']?>" target="_blank">Профиль Вконтакте</a>
										<a class="contacts-block-info" href="<?=$contacts['fb']?>" target="_blank">Профиль Facebook</a>
										<a class="contacts-block-info" href="<?=$contacts['twitter']?>" target="_blank">Профиль Twitter</a>
									</span>
								</li>
								<?php } ?>
								<?php if ( @$contacts['phone'] != "" ) { ?>
								<li class="contacts-block-subtitle"><strong class="contacts-block--title">Телефон</strong>
									<span class="contacts-block-info--item">
										<?=$contacts['phone']?>
									</span>
								</li>
								<?php } ?>
								<?php if ( @$contacts['address'] != "" ) { ?>
								<li class="contacts-block-subtitle"><strong class="contacts-block--title">Адрес</strong>
									<span class="contacts-block-info--item">
										<?=$contacts['address']?>
											</php>
									</span>
								</li>
								<?php } ?>
							</ul>
						</div>
					</div>
				</div>
				<div class="col-md-5">
					<div class="title-2 extrabold">Связаться со мной</div>
					<?php include ROOT."templates/_parts/_errors.tpl"; ?>
					<?php include ROOT."templates/_parts/_success.tpl"; ?>
					<form class="form" action="<?=HOST?>contacts" method="POST" enctype="multipart/form-data">
						<input name="name" class="input mb-10" placeholder="Введите имя" />
						<input name="email" class="input mb-10" placeholder="Email" />
						<textarea name="message" class="textarea" rows="5" placeholder="Сообщение"></textarea>
						<div class="fieldset__title mt-20">Прикрепить файл</div>
						<div class="comment-row">jpg, png, pdf, doc, весом до 2Мб.</div>
						<div class="control-row mb-20">
							<div class="file">
								<label class="file__label">
									<input class="file__input" type="file" name="file" />
									<span class="file__inner-label file__inner-label--large-radius">Выбрать файл</span>
								</label>
								<span class="file__inner-caption">Файлы не выбран</span>
							</div>
						</div>
						<input type="hidden" name="newMessage">
						<input type="submit" class="button button--save" value="Отправить">
					</form>
				</div>
			</div>
		</div>
	</div>
</div>
<div class="map" id="map"></div>
