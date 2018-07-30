<!-- <pre>
	<?php

print_r($users);
	 ?>
</pre> -->

<div class="container pb-60">
	<?php
	if ( isset($_GET['result']) ) { 
		include ROOT . "templates/root/_result.tpl";
	}
	?>
		<div class="row justify-content-between align-items-center pl-15 pr-15 pt-50">
			<div class="title-1">Зарегестрированные пользователи</div>

			<!-- <div class="section-ui">
				<a class="button button--edit" href="<?=HOST?>root?user=addUser"> Добавить пользователя</a>
			</div> -->
		</div>
		<table class="table">
			<thead class="thead-light">
				<tr>
					<!-- <th scop="col">id</th> -->
					<th scop="col">Имя</th>
					<th scop="col">Фамилия</th>
					<th scop="col">Email</th>
					<!-- <th scop="col">Пароль</th> -->
					<th scop="col">Роль</th>
					<!-- <th scop="col">Сохранить</th> -->
					<th scop="col">Удалить</th>
				</tr>
			</thead>
			<tbody>
				<?php foreach ($users as $user): ?>
				<form action="<?=HOST?>root?id=<?=$user['id']?>" method="POST">
					<tr>
						<!-- <th>
							<?=$user['id']?>
						</th> -->
						<td>
							<?=$user['name']?>
							<!-- <input name="name" type="text" value="<?=$user['name']?>"> -->
						</td>
						<td>
							<?=$user['secondname']?>
							<!-- <input name="secondname" type="text" value="<?=$user['secondname']?>"> -->
						</td>
						<td>
							<?=$user['email']?>
							<!-- <input name="email" type="text" value="<?=$user['email']?>"> -->
						</td>
						<!-- <td>
							<input name="password" type="password" value="">
						</td> -->
						<td>
							<?=$user['role']?>
							<!-- <select name="role" id="">
								<?php foreach ($users as $user): ?>
								<option value="<?=$user['role']?>">
									<?=$user['role']?>
								</option>
								<?php endforeach ?>
							</select> -->
							<input type="hidden" name="role_id" value="<?php
if ($_POST['role'] != $user['role']) {
	if ($_POST['role'] == 'admin') {
		echo '1';
	}
	if ($_POST['role'] == 'user') {
		echo '2';
	}
}
?>
">
						</td>
						<!-- <td>
							<input type="submit" value="0k" name="userUpdate">
							<a href="<?=HOST?>root/edit?id=<?=$user['id']?>">Сохранить</a>
						</td> -->
						<td>
							<a href="<?=HOST?>root/user-delete?id=<?=$user['id']?>">Удалить</a>
						</td>
					</tr>
				</form>

				<?php endforeach ?>
			</tbody>
		</table>
</div>
