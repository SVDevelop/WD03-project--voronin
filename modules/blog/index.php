<?php
$count =  R::getCell('SELECT COUNT(*) FROM posts'); //количество записей в таблице

if ( isset($_GET['id']) && $_GET['id'] != "" ) {
	if (is_string($_GET['id'])) {
		$posts = R::getAll( 'select * from posts where cat = :cat', array(':cat'=>$_GET['id'] ));
		$title = 'Блог - вывод по категориям';
	}
} else {
	$title = 'Блог - все записи';
	$posts = R::find('posts', 'ORDER BY id DESC');
}

// Готовим контент для центральной части
ob_start();
include ROOT . "templates/_parts/_header.tpl";
include ROOT . "templates/blog/blog-all-post.tpl";
$content = ob_get_contents();
ob_end_clean();

// Выводим шаблоны
include ROOT . "templates/_parts/_head.tpl";
include ROOT . "templates/template.tpl";
include ROOT . "templates/_parts/_footer.tpl";
include ROOT . "templates/_parts/_foot.tpl";
		
 ?>