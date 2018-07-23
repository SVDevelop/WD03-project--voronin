<?php
function imgDeleted($nameImg, $FolderLocation, $prefix = "") {
	if ($prefix != "") {
		$prefix = $prefix . '-';
	}
	if ( $nameImg != "" ) {
		$picurl = $FolderLocation . $nameImg;
		if ( file_exists($picurl) ) { unlink($picurl); }
		$picurlPrefix = $FolderLocation . $prefix . $nameImg;
		if ( file_exists($picurlPrefix) ) { unlink($picurlPrefix); }
	}
}
function dataFromPost($var, $array) {
	echo @$_POST[$var] != "" ? @$_POST[$var] : $array[$var];
}

function checkEmail($email) {
	// вернет true или false
	if(!filter_var($email,FILTER_VALIDATE_EMAIL)) {
		return FALSE;
	} else {
		return TRUE;
	}
}
// $posts массив постов, $id текущий id поста, $arrow напрвление стрелки  'right' или 'left'
function idPosts($posts, $id, $arrow) {
	if ( isset($posts) ) {
		//достаем все id из массива
		foreach ($posts as $key => $post) {
		    $postsIdAll[] = $key;
		}
		$count = count($postsIdAll) - 1;
		if ( $count == 0 ) {
			return $id;
		}
		// получаем id по значению массива
		$key = array_search($id, $postsIdAll);
		switch ($key) {
			case 0:
				if ( $arrow == 'right' ) {
					$resultkey = $key + 1;
				} elseif ($arrow == 'left') {
					$resultkey = $count;
				}
				break;
			case $count:
				if ( $arrow == 'right' ) {
					$resultkey = 0;
				} elseif ($arrow == 'left') {
					$resultkey = $key - 1;
				}
				break;
			default:
				if ( $arrow == 'right' ) {
					$resultkey = $key + 1;
				} elseif ($arrow == 'left') {
					$resultkey = $key - 1;
				}
				break;
		}	
	}
	return $postsIdAll[$resultkey];
}

function isAdmin(){
	$result = false;
	if ( isset($_SESSION['logged_user']) && $_SESSION['login'] == 1 ) {
		if ($_SESSION['role'] == '1') {
				$result = true;
		}
	}
	return $result;
}

function isLoggedIn(){
	$result = false;
	if ( isset($_SESSION['logged_user']) && $_SESSION['login'] == 1 ) {
		$result = true;
	}
	return $result;
}

function rus_date() {
	// Перевод
	$translate = array(
		"am" => "дп",
		"pm" => "пп",
		"AM" => "ДП",
		"PM" => "ПП",
		"Monday" => "Понедельник",
		"Mon" => "Пн",
		"Tuesday" => "Вторник",
		"Tue" => "Вт",
		"Wednesday" => "Среда",
		"Wed" => "Ср",
		"Thursday" => "Четверг",
		"Thu" => "Чт",
		"Friday" => "Пятница",
		"Fri" => "Пт",
		"Saturday" => "Суббота",
		"Sat" => "Сб",
		"Sunday" => "Воскресенье",
		"Sun" => "Вс",
		"January" => "Января",
		"Jan" => "Янв",
		"February" => "Февраля",
		"Feb" => "Фев",
		"March" => "Марта",
		"Mar" => "Мар",
		"April" => "Апреля",
		"Apr" => "Апр",
		"May" => "Мая",
		"May" => "Мая",
		"June" => "Июня",
		"Jun" => "Июн",
		"July" => "Июля",
		"Jul" => "Июл",
		"August" => "Августа",
		"Aug" => "Авг",
		"September" => "Сентября",
		"Sep" => "Сен",
		"October" => "Октября",
		"Oct" => "Окт",
		"November" => "Ноября",
		"Nov" => "Ноя",
		"December" => "Декабря",
		"Dec" => "Дек",
		"st" => "ое",
		"nd" => "ое",
		"rd" => "е",
		"th" => "ое"
	);
 	// если передали дату, то переводим ее
	if (func_num_args() > 1) {
		$timestamp = func_get_arg(1);
		return strtr(date(func_get_arg(0), $timestamp), $translate);
	} else {
	// иначе текущую дату
		return strtr(date(func_get_arg(0)), $translate);
	}
}

function commentNumber ($num) {

    //Оставляем две последние цифры от $num
	$number = substr($num, -2);

    //Если 2 последние цифры входят в диапазон от 11 до 14
    //Тогда подставляем окончание "ЕВ" 
	if($number > 10 and $number < 15)
	{
		$term = "ев";
	}
	else
	{ 

		$number = substr($number, -1);

		if($number == 0) {$term = "ев";}
		if($number == 1 ) {$term = "й";}
		if($number > 1 ) {$term = "я";}
		if($number > 4 ) {$term = "ев";}
	}

	echo  $num.' комментари'.$term;
}


// Adjusting text encoding
function adopt($text) {
	return '=?UTF-8?B?'.base64_encode($text).'?=';
}

function mbCutString($string, $length, $postfix = '...', $encoding = 'UTF-8' ){

	if ( mb_strlen($string, $encoding) <= $length ) {
		return $string;
	}

	$temp = mb_substr($string, 0, $length, $encoding);
	$spacePosition = mb_strripos($temp, " ", 0, $encoding);
	$result = mb_substr($temp, 0, $spacePosition, $encoding) . $postfix;
	return $result;

}

?>