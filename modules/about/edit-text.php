<?php
if ( !isAdmin() ) {
	header("Location: ", HOST);
	die();
}

$title = 'Редактировать - text';
$about = R::load('about', 1);
if (isset($_POST['textUpdate'])) {
	if ( trim($_POST['name']) == "" ) {
		$errors[] = ['title' => 'Введите имя' ];
	}
	if ( trim($_POST['description']) == "" ) {
		$errors[] = ['title' => 'Введите описание' ];
	}

	if ( empty($errors) ) {
		$about->name = htmlentities(trim($_POST['name']));
		$about->description = $_POST['description'];
		 
		if ( isset($_FILES['photo']['name']) && $_FILES['photo']['tmp_name'] != "" ) {
			$fileName = $_FILES['photo']['name'];
			$fileTmpLoc = $_FILES['photo']['tmp_name'];
			$fileType = $_FILES['photo']['type'];
			$fileSize = $_FILES['photo']['size'];
			$fileErrorMsg = $_FILES['photo']['error'];
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
			$aboutImgFolderLocation = ROOT . "usercontent/about/";
			imgDeleted($about->photo, $aboutImgFolderLocation);
			
			$db_file_name = rand(10000000,99999999) . "." . $fileExt;
			$uploadfile = $aboutImgFolderLocation . $db_file_name;
			$moveResult = move_uploaded_file($fileTmpLoc, $uploadfile);
			

			if ($moveResult != true) {
				$errors[] = ['title' => 'Ошибка сохранения файла' ];
			}

			include_once( ROOT . "/libs/image_resize_imagick.php");

			$target_file =  $aboutImgFolderLocation . $db_file_name;
			$wmax = 222;
			$hmax = 222;
			$img = createThumbnail($target_file, $wmax, $hmax);
			$img->writeImage($target_file);
			$about->photo = $db_file_name;
		}

		R::store($about);
		header("Location: ".HOST."about");
		exit();
	}
}

// Готовим контент для центральной части
ob_start();
include ROOT . "templates/_parts/_header.tpl";
include ROOT . "templates/about/edit-text.tpl";
$content = ob_get_contents();
ob_end_clean();

// Выводим шаблоны
include ROOT . "templates/_parts/_head.tpl";
include ROOT . "templates/template.tpl";
include ROOT . "templates/_parts/_footer.tpl";
include ROOT . "templates/_parts/_foot.tpl";
		
 ?>