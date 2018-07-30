<?php 	

$title = 'Примеры работ';
$count = count(R::findAll('works', 'ORDER BY id DESC'));

if ( isset($_GET['id']) && $_GET['id'] != "" ) {
	// echo "autor";
	$author_id = $_GET['id'];

	if ( isset($_GET['page']) && $_GET['page'] != "" ){ 
		$offset = (POST_LIMIT * $_GET['page']) - (POST_LIMIT - 1);
		$works = show(R::findLike('works', "SELECT * FROM `works` WHERE author_id = ". $_GET['id'].""), $offset, POST_LIMIT);
	}else {
		$works = show(R::findLike('works', "SELECT * FROM `works` WHERE author_id = ". $_GET['id'].""), 0, POST_LIMIT);
	}

} else {

	if ( isset($_GET['page']) && $_GET['page'] != "" ){ 
		$offset = (POST_LIMIT * $_GET['page']) - (POST_LIMIT - 1);
		$works = show(R::findAll('works', 'ORDER BY id DESC'), $offset, POST_LIMIT) ;
	}else {
		$works = show(R::findAll('works', 'ORDER BY id DESC'), 0, POST_LIMIT) ;
	}
}

// Готовим контент для центральной части
ob_start();
include ROOT . "templates/_parts/_header.tpl";
include ROOT . "templates/works/all-works.tpl";
$content = ob_get_contents();
ob_end_clean();

// Выводим шаблоны
include ROOT . "templates/_parts/_head.tpl";
include ROOT . "templates/template.tpl";
include ROOT . "templates/_parts/_footer.tpl";
include ROOT . "templates/_parts/_foot.tpl";		
 ?>