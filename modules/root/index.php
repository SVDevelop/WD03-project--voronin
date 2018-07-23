<?php 
if ( !isAdmin() ) {
	header('Location: '. HOST);
	die();
}
$title = 'Пользователи';
$users = R::findAll( 'users' );
//$users = R::findAll('users', 'ORDER BY cat_title ASC');
// echo "<pre>";
// print_r($users);
// echo "</pre>";

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