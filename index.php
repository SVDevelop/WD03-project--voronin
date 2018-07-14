<?php 
// phpinfo();
require "config.php";
require "db.php";
$errors = array();
$success = array();
session_start();

//===========================================================
// находим пользователя с правами админа
$admin = R::findOne('users', 'role = ?', array( 'admin' ));
//============================================================
/* ..........................................

РОУТЕР

............................................. */

// request URL = http://project/blog/post?id=15
$uri =  $_SERVER["REQUEST_URI"];
$uri = rtrim($uri, "/"); 
$uri = filter_var($uri, FILTER_SANITIZE_URL);
$uri = substr($uri, 1);
$uri = explode('?', $uri);

switch ( $uri[0]) {
	case '':
		require ROOT . "modules/main/index.php";
		break;
	//====================== Users ====================	
	case 'login':
		require ROOT . "modules/login/login.php";
		break;
	case 'registration':
		require ROOT . "modules/login/registration.php";
		break;
	case 'logout':
		require ROOT . "modules/login/logout.php";
		break;
	case 'lost-password':
		require ROOT . "modules/login/lost-password.php";
		break;
	case 'set-new-password':
		require ROOT . "modules/login/set-new-password.php";
		break;
	case 'profile':
		require ROOT . "modules/profile/index.php";
		break;
	case 'profile-edit':
		require ROOT . "modules/profile/edit.php";
		break;
	case 'about':
		require ROOT . "modules/about/index.php";
		break;
	case 'portfolio':
		require ROOT . "modules/portfolio/index.php";
		break;
	case 'contacts':
		require ROOT . "modules/contacts/index.php";
		break;

	case 'blog':
		require ROOT . "modules/blog/index.php";
		break;

	default:
		require ROOT . "modules/main/index.php";
		break;
}

?>