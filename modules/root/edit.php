<?php 
if ( !isAdmin()) {
	header('Location: '. HOST);
	die();
}
$title = 'Редактировать пользователя';
$user = R::load('users', $_GET['id']);
if  ( isset($_POST['userUpdate']) ) {
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
// Готовим контент для центральной части
ob_start();
include ROOT . "templates/_parts/_header.tpl";
include ROOT . "templates/root/edit.tpl";
$content = ob_get_contents();
ob_end_clean();

// Выводим шаблоны
include ROOT . "templates/_parts/_head.tpl";
include ROOT . "templates/template.tpl";
include ROOT . "templates/_parts/_footer.tpl";
include ROOT . "templates/_parts/_foot.tpl";
		
 ?>