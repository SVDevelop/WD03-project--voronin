<?php 

// ВD SETTINGS
define('DB_HOST', 'localhost');
define('DB_NAME', 'WD03-voronin');
define('DB_USER', 'root');
define('DB_PASS', '');

define('SITE_NAME', 'Сайт портфолио - Сергей Воронин');
define('SITE_EMAIL', 'verstka.sv@mail.ru');
define('ADMIN_EMAIL', 'verstka.sv@mail.ru');

// Хост сайта
define('HOST', $_SERVER['REQUEST_SCHEME'] . '://' . $_SERVER['HTTP_HOST'] . '/');

// Физический путь к корневой директории скрипта
define('ROOT', dirname(__FILE__).'/');


?>