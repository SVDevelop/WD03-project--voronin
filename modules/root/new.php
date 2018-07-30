<?php 
if ( !isAdmin()) {
	header('Location: '. HOST);
	die();
}
$title = 'Удалить пользователя';
// $user = R::load('users', $_GET['id']);

// if  ( isset($_POST['userNew']) ) {
	$user = R::dispense('users');
	$user->name = 'dfcz';
	$user->email = 123;
	$user->password = 123;
	R::store($user);

	$role = R::dispense('roles');
	$role->role = 'lol';
	$role->type = null;
	R::store($role);

	$role->ownUsersList[] = $roles;
	header("Location: ". HOST. "root?result=userDeleted");
	exit();
// }
// Готовим контент для центральной части
ob_start();
include ROOT . "templates/_parts/_header.tpl";
include ROOT . "templates/root/add-user.tpl";
$content = ob_get_contents();
ob_end_clean();

// Выводим шаблоны
include ROOT . "templates/_parts/_head.tpl";
include ROOT . "templates/template.tpl";
include ROOT . "templates/_parts/_footer.tpl";
include ROOT . "templates/_parts/_foot.tpl";
		
 ?>