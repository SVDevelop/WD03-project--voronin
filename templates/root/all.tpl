<?php

echo "<pre>";
print_r($_POST);
echo "</pre>";
echo "<pre>";
print_r($_GET);
echo "</pre>"


 ?>
	<div class="container pb-60">
		<?php
	if ( isset($_GET['result']) ) { 
		include ROOT . "templates/root/_result.tpl";
	}
	?>
			<div class="row justify-content-between align-items-center pl-15 pr-15 pt-50">
				<div class="title-1">Зарегестрированные пользователи</div>
				<div class="section-ui">
					<a class="button button--edit" href="<?=HOST?>blog/category-new"> Добавить пользователя</a>
				</div>
			</div>
			<table class="table">
				<thead class="thead-light">
					<tr>
						<th scop="col">id</th>
						<th scop="col">Имя</th>
						<th scop="col">Фамилия</th>
						<th scop="col">Email</th>
						<th scop="col">Роль</th>
						<th scop="col">Редактировать</th>
						<th scop="col">Удалить</th>
					</tr>
				</thead>
				<tbody>
					<?php foreach ($users as $user): ?>
					<form action="<?=HOST?>modules/root/edit.php?id=<?=$user['id']?>" method="POST">
						<tr>
							<th>
								<?=$user['id']?>
							</th>
							<td>
								<?=$user['name']?>
							</td>
							<td>
								<?=$user['secondname']?>
							</td>
							<td>
								<?=$user['email']?>
							</td>
							<td>
								<!-- <select name="role">
										<?php foreach ($roles as $role): ?>
										<option value="<?=$user['role'] ?>" <?php echo ($post[ 'role']==$role[ 'id'] ) ? "selected" : ""; ?>
											>
											<?=$role['role']?>
										</option>
										<?php endforeach ?>
									</select> -->
								<?=$user['role_id']?>
							</td>
							<td>
								<input type="submit" value="Сохранить" name="userUpdate">
								<!-- <a href="<?=HOST?>root/edit?id=<?=$user['id']?>">Сохранить</a> -->
							</td>
							<td>
								<a href="<?=HOST?>root/delete?id=<?=$user['id']?>">Удалить</a>
							</td>
						</tr>
					</form>

					<?php endforeach ?>
				</tbody>
			</table>
	</div>
	<!-- <?php
if  ( isset($_POST['userEdit']) ) {
	if ( trim($_POST['catTitle']) == "" ) {
		$errors[] = ['title' => 'Введите название категории'];
	}
	if ( empty($errors) ) {
	$cat->cat_title = htmlentities($_POST['catTitle']);
	R::store($cat);
	header("Location: ". HOST. "root?result=userUpdated");
	exit();
	}
}
 ?> -->
