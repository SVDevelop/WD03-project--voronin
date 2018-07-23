<?php 

$title = "Вход на сайт";

if ( count($_POST) && empty($_POST['enter'])) {
	if ( trim($_POST['email']) == '') {
		$errors[] = ['title' => 'Введите Email' ];
	}
	if ( trim($_POST['password']) == '') {
		$errors[] = ['title' => 'Введите Пароль' ];
	}
	if ( empty($errors)) {
		$user = R::findOne('users', 'email = ?', array($_POST['email']) );
		if ( isset($user) ) {
			if ( password_verify( $_POST['password'], $user->password ) ) {
				$_SESSION['logged_user'] = 2;
				$_SESSION['login'] = "1";
				$_SESSION['role'] = $user->role_id;
				header("Location: ". HOST);
				exit();
			} else { 
				$errors[] = ['title' => 'Пароль введен неверно' ];
			}
		}else {
			$errors[] = ['title' => 'Введите верные данные'];
		}
	} 

}

// Готовим контент для центральной части
ob_start();
include ROOT . "templates/login/form-login.tpl";
$content = ob_get_contents();
ob_end_clean();

include ROOT . "templates/_parts/_head.tpl";
include ROOT . "templates/login/login-page.tpl";
include ROOT . "templates/_parts/_foot.tpl";

?>