<?php 

$works = R::findAll('works', 'ORDER BY id DESC');//для работы слайдера

if (isset($_GET['id'])){
	$sqlwork = 'SELECT works.id, works.title, works.time_to_work, works.number_of_pages, works.budget, works.description, works.description_result, works.project_link, works.date_time, works.git_link, works.author_id, works.work_img, works.work_skills,
	users.name, users.secondname
	FROM `works` 
	LEFT JOIN users ON users.id = works.author_id
	WHERE works.id = ' .$_GET['id']. ' LIMIT 1';
	$work = R::getAll($sqlwork)[0];
}
$sqlComments = 'SELECT 
		comments.text, comments.date_time, comments.user_id,
		users.name, users.secondname, users.avatar_small
	FROM `comments`
	LEFT JOIN users ON comments.user_id = users.id
	WHERE comments.post_id = '. $_GET['id'] ;
$comments = R::getAll($sqlComments);

$title = 'Работа';

if ( isset($_POST['addComment']) ) {
	if ( trim($_POST['commentText']) == '' ) {
		$errors[] = ['title' => 'Введите текст комментария'];
	}
	if ( empty($errors) ) {
		$comment = R::dispense('comments');
		$comment->postId = htmlentities($_GET['id']);
		$comment->userId = htmlentities($_SESSION['logged_user']['id']);
		$comment->text = htmlentities($_POST['commentText']);
		$comment->dateTime = R::isoDateTime();
		R::store($comment);
		$comments = R::getAll($sqlComments);
	}
}

// Готовим контент для центральной части
ob_start();
include ROOT . "templates/_parts/_header.tpl";
include ROOT . "templates/works/work.tpl";
$content = ob_get_contents();
ob_end_clean();

// Выводим шаблоны
include ROOT . "templates/_parts/_head.tpl";
include ROOT . "templates/template.tpl";
include ROOT . "templates/_parts/_footer.tpl";
include ROOT . "templates/_parts/_foot.tpl";
		
 ?>