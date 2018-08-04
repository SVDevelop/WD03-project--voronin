<div class="container">
	<div class="row">
		<div class="col-xl-10 offset-1">
			<div class="title-1 m-0 pt-60">Редактировать работу</div>
			<?php require ROOT . "templates/_parts/_errors.tpl"; ?>
			<form action="<?=HOST?>work-edit?id=<?=$work['id']?>" method="POST" enctype="multipart/form-data" class="form mb-100 pb-20 pt-35">
				<div class="fieldset">
					<label>
						<div class="fieldset__title">Название</div>
						<input name="title" class="input" placeholder="Введите название работы" value="<?=$work['title']?>" />
					</label>
				</div>
				<div class="fieldset">
					<div class="fieldset__title">Изображение</div>
					<div class="comment-row">Изображение jpg или png, рекомендуемая ширина 945px и больше, высота от 400px и более, вес до 2Мб.</div>
					<div class="control-row">
						<div class="file">
							<label class="file__label">
								<input class="file__input" type="file" name="workFile" />
								<span class="file__inner-label">Выбрать файл</span>
							</label>
							<span class="file__inner-caption">Файл не выбран</span>
						</div>
					</div>
				</div>
				<div class="fieldset">
					<label>
						<div class="fieldset__title">Содержание</div>
						<textarea name="description" class="textarea height-200" rows="7" placeholder="Введите описание">
							<?=$work['description']?>
						</textarea>
					</label>
				</div>
				<div class="fieldset">
					<label>
						<div class="fieldset__title">Результат</div>
						<textarea name="descriptionResult" class="textarea height-200" rows="7" placeholder="Введите описание">
							<?=$work['description_result']?>
						</textarea>
					</label>
				</div>
				<div class="fieldset">
					<label>
						<div class="fieldset__title">Технологии</div>
						<textarea name="workSkills" class="textarea height-200" rows="7" placeholder="Введите описание">
							<?=$work['skills']?>
						</textarea>
					</label>
				</div>
				<div class="row fieldset mb-30">
					<div class="col-4">
						<label>
							<div class="fieldset__title">Ссылка на проект</div>
							<input name="projectLink" class="input" placeholder="Введите ссылку" value="<?=$work['project_link']?>" />
						</label>
					</div>
					<div class="col-4">
						<label>
							<div class="fieldset__title">Ссылка на GitHub</div>
							<input name="gitLink" class="input" placeholder="Введите ссылку" value="<?=$work['git_link']?>" />
						</label>
					</div>
				</div>
				<div class="row">
					<div class="col-md-auto pr-10">
						<input type="submit" class="button button--save" value="Сохранить" name="workUpdate">
					</div>
					<div class="col-md-auto pl-10">
						<a class="button" href="<?=HOST?>works">Отмена</a>
					</div>
				</div>
			</form>
		</div>
	</div>
</div>
