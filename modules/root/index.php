<?php 
if ( !isAdmin()) {
	header("Location: ". HOST);
	die();
}
// $users = R::findAll('users');
$userrole = R::findAll('users', 21);
// $user = $users->ownRoleList;

if ( isset($_GET['id']) && $_GET['id'] != "" ) {
	if ( isset($_POST['userUpdate']) ) {
		$userUpdate = R::load('users', $_GET['id']);
		if ( trim($_POST['email']) == "" ) {
			$errors['title'] = 'Введите email';
		}
		if (empty($errors)) {
			// $userUpdate = R::dispense('users');
			$userUpdate->name = trim($_POST['name']);
			$userUpdate->secondname = trim($_POST['secondname']);
			$userUpdate->email = $_POST['email'];
			if ($_POST['role_id'] != "") {
				$userUpdate->role_id = $_POST['role_id'];
			}
			if ( trim($_POST['password']) != "" ) {
				$userUpdate->password = password_hash($_POST['password'], PASSWORD_DEFAULT);
			}
			R::store($userUpdate);
			header("Location: ". HOST. "root?result=userUpdate");
			exit();
		}
	}
}

$sqlUsers = 'SELECT users.id, users.name, users.secondname, users.email, users.password, users.role_id, userrole.id, userrole.role
	FROM `users`
	INNER JOIN userrole ON users.role_id = userrole.id';
$users = R::getAll($sqlUsers);

// $users = R::find('users', '	');



	// WHERE userrole.role = `admin`



$title = 'Создать пользователя';
if  ( isset($_POST['userNew']) ) {
	if ( trim($_POST['email']) == "" ) {
		$errors[] = ['title' => 'Введите email'];
	}
	if ( trim($_POST['password']) == "" ) {
		$errors[] = ['title' => 'Введите пароль'];
	}
	if ( trim($_POST['role']) == "" ) {
		$errors[] = ['title' => 'Введите роль'];
	}
	if ( empty($errors) ) {
	$user = R::dispense('users');
	$user->name = htmlentities($_POST['name']);
	$user->email = htmlentities($_POST['email']);
	if ( !(empty($_POST['password'])) ){
		$user->password = $_POST['password'];
	}
	$user->secondname = trim($_POST['secondname']);
	$user->date_registration = R::isoDateTime();
	R::store($user);
	header("Location: ". HOST. "root?result=userCreated");
	exit();
	}
}
// Готовим контент для центральной части
ob_start();

include ROOT . "templates/_parts/_header.tpl";
include ROOT . "templates/root/all.tpl";
$content = ob_get_contents();
ob_end_clean();

// Выводим шаблоны
include ROOT . "templates/_parts/_head.tpl";
include ROOT . "templates/template.tpl";
include ROOT . "templates/_parts/_footer.tpl";
include ROOT . "templates/_parts/_foot.tpl";
		
 ?>