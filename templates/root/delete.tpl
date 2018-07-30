<pre>
	<?php
	print_r($_GET);
print_r($user);
	 ?>
</pre>

<div class="container">
	<div class="row">
		<div class="col-xl-10 offset-1">
			<div class="title-1 m-0 pt-60">Удалить пользователя</div>
			<form action="<?=HOST?>root/user-delete?id=<?=$user['id']?>" method="POST" class="form mb-100 pb-20 pt-35">
				<div class="fieldset">
					<p>Вы действительно хотите удалить пользователя<strong><?=$user['email'] ?></strong> с id=
						<?=$user['id']?>? Роль:
							<?=user['role'] ?>
					</p>
				</div>
				<div class="row">
					<div class="col-md-auto pr-10">
						<input type="submit" name="userDelete" class="button button--del" value="Удалить">
					</div>
					<div class="col-md-auto pl-10">
						<a class="button" href="<?=HOST?>root">Отмена</a>
					</div>
				</div>
			</form>
		</div>
	</div>
</div>
