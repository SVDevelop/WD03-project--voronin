<?php
if ( !isAdmin() ) {
	header('Location: '. HOST);
	die();
}

$title = 'Сообщения';
$messages = R::find('messages', 'ORDER BY id DESC');

if ( count($_GET) > 1 && $_GET['id'] != "" ) {

	$msg = $messages[$_GET['id']];
	// если установлен файл
	//print_r($msg);
	$msgFileFolderLocation = ROOT ."usercontent/upload_files/";
	
	$msgFile = $msg->message_file;

	if ( $msgFile != "" ) {
		$picurl = $msgFileFolderLocation . $msgFile;
		// Удаляем картинку
		// die($picurl); 
	    if ( file_exists($picurl) ) { unlink($picurl); }
		$picurl320 = $msgFileFolderLocation . '320-' . $msgFile;
	    if ( file_exists($picurl320) ) { unlink($picurl320); }
	}

	R::trash($msg);
	header("Location: ".HOST."messages"); //?result=MsgId={@$_GET['id']}Deleted
	$success[] = ['title' => 'Сообщение быдо удалено!'];

	// exit();
}

// Готовим контент для центральной части
ob_start();
include ROOT . "templates/_parts/_header.tpl";
include ROOT . "templates/contacts/messages.tpl";
$content = ob_get_contents();
ob_end_clean();

// Выводим шаблоны
include ROOT . "templates/_parts/_head.tpl";
include ROOT . "templates/template.tpl";
include ROOT . "templates/_parts/_footer.tpl";
include ROOT . "templates/_parts/_foot.tpl";		
 ?>