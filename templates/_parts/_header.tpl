<?php 
	if ( isAdmin() ) {
		include ROOT . "templates/_parts/_admin-panel.tpl";
	}
?>

<div class="header">
	<div class="header--vignette">
		<div class="header__top mb-0">
			<?php include( ROOT . "templates/_parts/_header-logo.tpl"); ?>
			<?php 
				if ( isLoggedIn() ) {
					
					// Пользователь на сайте
					if ( $_SESSION['role'] != 'admin' ) {
						// Пользователь на сайте - НЕадмин
						include( ROOT . "templates/_parts/_header-user-profile.tpl");
					} 

				} else {
					// Нет  пользователя 
					include( ROOT . "templates/_parts/_header-user-login-links.tpl");
				}  
			?>

		</div>
		<?php include( ROOT . "templates/_parts/_header-nav.tpl"); ?>
	</div>
</div>
