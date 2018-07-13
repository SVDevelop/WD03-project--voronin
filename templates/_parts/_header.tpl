<?php 
	if ( isset($_SESSION['logged_user']) && $_SESSION['login'] == 1 && $_SESSION['role'] == 'admin'   ) {
		include ROOT . "templates/_parts/_admin-panel.tpl";
	}
?>

<div class="header">
	<div class="header--vignette">
		<div class="header__top mb-0">
			<?php include( ROOT . "templates/_parts/_header-logo.tpl"); ?>
			<!-- <div class="header-user__block">
				<div class="header-user__profil float-left mr-20">
					<div class="avatar--small">
						<?php if ( $_SESSION['logged_user']['avatar_small'] != "") { ?>
						<img src="<?=HOST?>usercontent/avatar/<?=$_SESSION['logged_user']['avatar_small']?>" alt="avatar-small" />
						<?php } ?>
					</div>
				</div>
				<div class="header-user__profil-block">
					<div class="header-user__name">
						<?=$_SESSION['logged_user']['name']?>
							<?=$_SESSION['logged_user']['secondname']?>
					</div>
					<div class="header-user__rank">Пользователь</div>
					<div class="header-user__buttons-group">
						<div class="header-user__buttons-profile mr-10">
							<a class="button button--profile" href="<?=HOST?>profile"> Профиль</a>
						</div>
						<div class="header-user__buttons-signout">
							<a class="button button--profile" href="<?=HOST?>logout"> Выход</a>
						</div>
					</div>
				</div>
			</div> -->

			<?php 
				if ( isset($_SESSION['logged_user']) && $_SESSION['login'] == 1  ) {
					
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
