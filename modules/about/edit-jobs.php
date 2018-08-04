<?php
if ( !isAdmin() ) {
	header("Location: ", HOST);
	die();
}
$jobs = R::find('job', 'ORDER BY id DESC');

$title = 'Редактировать - jobs';
if ( count($_GET) > 1 && $_GET['id'] != "" ) {
	$job = $jobs[$_GET['id']];
	R::trash($job);
	header("Location: ".HOST."edit-jobs");
	$success[] = ['title' => 'Место работы быдо удалено!'];
	exit();
}

if ( isset($_POST['newJob']) ) {

	if ( trim($_POST['period']) == "" ) {
		$errors[] = ['title' => "Введите период"];
	}
	if ( trim($_POST['title']) == "" ) {
		$errors[] = ['title' => "Введите должность"];
	}
	if ( empty($errors) ) {
		$job = R::dispense('job');
		$job->title = htmlentities($_POST['title']);
		$job->period = htmlentities($_POST['period']);
		$job->description = htmlentities($_POST['description']);
		R::store($job);
		header('Location: '.HOST.'edit-jobs');
		$success[] = ['title' => 'Место работы быдо добавлено!'];

		exit();
	}
}
// Готовим контент для центральной части
ob_start();
include ROOT . "templates/_parts/_header.tpl";
include ROOT . "templates/about/edit-jobs.tpl";
$content = ob_get_contents();
ob_end_clean();

// Выводим шаблоны
include ROOT . "templates/_parts/_head.tpl";
include ROOT . "templates/template.tpl";
include ROOT . "templates/_parts/_footer.tpl";
include ROOT . "templates/_parts/_foot.tpl";
		
 ?>