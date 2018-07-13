<?php 
		
echo "About";
// Готовим контент для центральной части
ob_start();
include ROOT . "templates/about/about.tpl";
$content = ob_get_contents();
ob_end_clean();

// Выводим шаблоны
include ROOT . "templates/_parts/_header.tpl";
include ROOT . "templates/template.tpl";
include ROOT . "templates/_parts/_footer.tpl";
		
 ?>