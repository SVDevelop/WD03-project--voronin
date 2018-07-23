<div class="container">
	<div class="row">
		<div class="col-xl-10 offset-1">
			<div class="title-1 m-0 pt-60">Редактировать пользователя</div>
			<?php require ROOT . "templates/_parts/_errors.tpl" ?>
			<form action="<?=HOST?>root/edit?id=<?=$cat['id'] ?>" method="POST" class="form mb-100 pb-20 pt-35">
				<div class="fieldset">
					<label>
						<div class="fieldset__title">Email</div>
						<input name="email" class="input" placeholder="Введите название" value="<?=$user['email'] ?>" />
					</label>
					<label>
						<div class="fieldset__title">роль</div>
						<select name="role">
							<?php foreach ($roles as $role): ?>
							<option value="<?=$user['role'] ?>" <?php echo ($post[ 'role']==$role[ 'id'] ) ? "selected" : ""; ?>
								>
								<?=$role['role']?>
							</option>
							<?php endforeach ?>
						</select>
						<!-- <input name="role" class="input" placeholder="Введите название" value="<?=$user['role'] ?>" /> -->
					</label>
				</div>
				<div class="row">
					<div class="col-md-auto pr-10">
						<input type="submit" name="userEdit" class="button button--save" value="Сохранить">
					</div>
					<div class="col-md-auto pl-10">
						<a class="button" href="<?=HOST?>root">Отмена</a>
					</div>
				</div>
			</form>
		</div>
	</div>
</div>
