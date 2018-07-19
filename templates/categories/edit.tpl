<div class="container">
	<div class="row">
		<div class="col-xl-10 offset-1">
			<div class="title-1 m-0 pt-60">Редактировать категорию</div>
			<?=ROOT . "templates/_parts/_errors.tpl" ?>
				<form active="<?=HOST?>blog/categories-edit?id=<?=$cat['id'] ?>" metod="POST" class="form mb-100 pb-20 pt-35">
					<div class="fieldset">
						<label>
							<div class="fieldset__title">Название категории</div>
							<input name="catTitle" class="input" placeholder="Введите название" 
									value="<?=$cat['cat_title'] ?>" />
						</label>
					</div>
					<div class="row">
						<div class="col-md-auto pr-10">
							<input type="submit" name="catEdit" class="button button--save" value="Сохранить">
						</div>
						<div class="col-md-auto pl-10">
							<a class="button" href="<?=HOST?>blog">Отмена</a>
						</div>
					</div>
				</form>
		</div>
	</div>
</div>
