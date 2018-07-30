<div class="container">
	<div class="row">
		<div class="col-xl-10 offset-1">
			<div class="title-1 m-0 pt-60">Добавить пользователя</div>
			<?php require ROOT . "templates/_parts/_errors.tpl"; ?>
			<form action="<?=HOST?>user-new" method="POST" enctype="multipart/form-data" class="form mb-100 pb-20 pt-35">
				<div class="fieldset">
					<label>
						<div class="fieldset__title">Имя</div>
						<input name="name" class="input" placeholder="Введите название работы" />
					</label>
				</div>
				<div class="fieldset">
					<label>
						<div class="fieldset__title">Фамилия</div>
						<input name="secondname" class="input" placeholder="Введите название работы" />
					</label>
				</div>
				<div class="fieldset">
					<label>
						<div class="fieldset__title">Email</div>
						<input name="email" class="input" placeholder="Введите название работы" />
					</label>
				</div>
				<div class="fieldset">
					<label>
						<div class="fieldset__title">Пароль</div>
						<input name="password" type="password" class="input" placeholder="Введите название работы" />
					</label>
				</div>
				<div class="fieldset">
					<label>
						<div class="fieldset__title">Роль</div>
						<input name="role" class="input" placeholder="Введите название работы" />
					</label>
				</div>
				<div class="fieldset">
					<div class="fieldset__title">Фотография</div>
					<div class="comment-row">Изображение jpg или png, рекомендуемая ширина 945px и больше, высота от 400px и более, вес до 2Мб.</div>
					<div class="control-row">
						<div class="file">
							<label class="file__label">
								<input class="file__input" type="file" name="avatar" />
								<span class="file__inner-label">Выбрать файл</span>
							</label>
							<span class="file__inner-caption">Файл не выбран</span>
						</div>
					</div>
				</div>

				<div class="row fieldset mb-30">
					<div class="col-4">
						<label>
							<div class="fieldset__title">Ссылка на ВК</div>
							<input name="projectLink" class="input" placeholder="Введите ссылку" />
						</label>
					</div>
					<div class="col-4">
						<label>
							<div class="fieldset__title">Ссылка на GitHub</div>
							<input name="gitLink" class="input" placeholder="Введите ссылку" />
						</label>
					</div>
				</div>
				<div class="row">
					<div class="col-md-auto pr-10">
						<input type="submit" class="button button--save" value="Добавить" name="workNew">
					</div>
					<div class="col-md-auto pl-10">
						<a class="button" href="<?=HOST?>works">Отмена</a>
					</div>
				</div>
			</form>
		</div>
	</div>
</div>

