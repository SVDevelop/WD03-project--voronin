<?php
if ( !isAdmin()) {
	header('Location: ', HOST);
	die();
}

//echo print_r($_POST);
$title = 'Работы - редактировать работу';
if ( isset($_GET['id']) ) {
	$work = R::load('works', $_GET['id']);
}
// $work = R::load('works', $_GET['id']);

//$cats = R::find('categories', 'ORDER BY cat_title ASC');


if ( isset($_POST['workUpdate'])  ) {
	if ( trim($_POST['title']) == "" ) {
		$errors[] = ['title' => 'Введите название работы'];
	}
	if ( trim($_POST['description']) == "" ) {
		$errors[] = ['title' => 'Введите описание работы'];
	}
	if ( empty($errors) ) {
		$work->title = htmlentities($_POST['title']);
		$work->description = $_POST['description'];
		//$work->authorId = $_SESSION['logged_user']['id'];
		$work->dateTime = R::isoDateTime();
		if ( isset($_FILES['workFile']['name']) && $_FILES['workFile']['tmp_name'] != "" ) {
			$fileName = $_FILES['workFile']['name'];
			$fileTmpLoc = $_FILES['workFile']['tmp_name'];
			$fileType = $_FILES['workFile']['type'];
			$fileSize = $_FILES['workFile']['size'];
			$fileErrorMsg = $_FILES['workFile']['error'];
			$kaboom = explode(".", $fileName);
			$fileExt = end($kaboom);

			// Check file propertties on different conditions
			list($width, $height) = getimagesize($fileTmpLoc);
			if ($width < 10 || $height < 10 ) {
				$errors[] = ['title' => 'Изображение не имеет размеров. Загрузите изображение побольше.' ];
			}

			if ( $fileSize > 4194304 ) {
				$errors[] = ['title' => 'Файл изображения не должен быть более 4 Mb' ];
			}

			if ( !preg_match("/\.(gif|jpg|jpeg|png)$/i", $fileName) ) {
				$errors[]  = [ 'title' => 'Неверный формат файла', 'desc' => '<p>Файл изображения должен быть в формате gif, jpg, jpeg, или png.</p>', ];
			}

			if ( $fileErrorMsg == 1 ) {
				$errors[] = ['title' => 'При загрузке изображения произошла ошибка. Повторите попытку' ];
			}
			$workImgFolderLocation = ROOT . "usercontent/works/";
			imgDeleted($work->workImg, $workImgFolderLocation, 320);
			// Перемещаем загруженный файл в нужную директорию
			$db_file_name = rand(100000000000,999999999999) . "." . $fileExt;
			$uploadfile = $workImgFolderLocation . $db_file_name;
			$moveResult = move_uploaded_file($fileTmpLoc, $uploadfile);
			
			if ($moveResult != true) {
				$errors[] = ['title' => 'Ошибка сохранения файла' ];
			}

			include_once( ROOT . "/libs/image_resize_imagick.php");

			$target_file =  $workImgFolderLocation . $db_file_name;
			//$resized_file = $postImgFolderLocation . $db_file_name;
			$wmax = 920;
			$hmax = 620;
			$img = createThumbnailBig($target_file, $wmax, $hmax);
			$img->writeImage($target_file);

			$work->workImg = $db_file_name;

			$target_file =  $workImgFolderLocation . $db_file_name;
			$resized_file = $workImgFolderLocation . "320-" . $db_file_name;
			$wmax = 320;
			$hmax = 140;
			$img = createThumbnailCrop($target_file, $wmax, $hmax);
			$img->writeImage($resized_file);

			$work->workImgSmall = "320-" . $db_file_name;
		}
		R::store($work);
		header("Location: ".HOST."works?result=Updated");
		exit();
	}
}
// Готовим контент для центральной части
ob_start();
include ROOT . "templates/_parts/_header.tpl";
include ROOT . "templates/works/edit-work.tpl";
$content = ob_get_contents();
ob_end_clean();

// Выводим шаблоны
include ROOT . "templates/_parts/_head.tpl";
include ROOT . "templates/template.tpl";
include ROOT . "templates/_parts/_footer.tpl";
include ROOT . "templates/_parts/_foot.tpl";
		
 ?>