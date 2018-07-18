<?php
echo ('</pre>');
echo ('<pre>');
print_r($_POST);
echo ('</pre>');
?>
	<div class="main-wrapper">
		<div class="container container--center">
			<div class="row justify-content-between align-items-center pl-15 pr-15 pt-50">
				<div class="title-1">Блог веб-разработчика</div>
				<div class="section-ui">
					<a class="button button--edit" href="<?=HOST?>blog/post-new"> Добавить пост</a>
				</div>
			</div>
			<div class="row pb-35">
				<?php foreach ($posts as $post) {
				include ROOT . "templates/_parts/_blog-card.tpl";
			} ?>
					<!-- <div class="col-4">
						<div class="section-ui">
							<div class="card card-post">
								<img class="card-post__img" src="../img/svg-for-sprites/blog-preview.png" alt="" />
								<div class="title-4">Поездка в New York пример длинного названия поста...</div>
								<a class="button" href="#">Читать</a>
							</div>
						</div>
					</div>
					<div class="col-4">
						<div class="section-ui">
							<div class="card card-post">
								<img class="card-post__img" src="../img/svg-for-sprites/blog-preview.png" alt="" />
								<div class="title-4">Поездка в New York пример длинного названия поста...</div>
								<a class="button" href="#">Читать</a>
							</div>
						</div>
					</div> -->
			</div>
			<!-- <div class="row pb-35">
			<div class="col-4">
				<div class="section-ui">
					<div class="card card-post">
						<img class="card-post__img" src="../img/svg-for-sprites/blog-preview.png" alt="" />
						<div class="title-4">Поездка в New York пример длинного названия поста...</div>
						<a class="button" href="#">Читать</a>
					</div>
				</div>
			</div>
			<div class="col-4">
				<div class="section-ui">
					<div class="card card-post">
						<img class="card-post__img" src="../img/svg-for-sprites/blog-preview.png" alt="" />
						<div class="title-4">Поездка в New York пример длинного названия поста...</div>
						<a class="button" href="#">Читать</a>
					</div>
				</div>
			</div>
			<div class="col-4">
				<div class="section-ui">
					<div class="card card-post">
						<img class="card-post__img" src="../img/svg-for-sprites/blog-preview.png" alt="" />
						<div class="title-4">Поездка в New York пример длинного названия поста...</div>
						<a class="button" href="#">Читать</a>
					</div>
				</div>
			</div>
		</div>
		<div class="row pb-100">
			<div class="col-4">
				<div class="section-ui">
					<div class="card card-post">
						<img class="card-post__img" src="../img/svg-for-sprites/blog-preview.png" alt="" />
						<div class="title-4">Поездка в New York пример длинного названия поста...</div>
						<a class="button" href="#">Читать</a>
					</div>
				</div>
			</div>
			<div class="col-4">
				<div class="section-ui">
					<div class="card card-post">
						<img class="card-post__img" src="../img/svg-for-sprites/blog-preview.png" alt="" />
						<div class="title-4">Поездка в New York пример длинного названия поста...</div>
						<a class="button" href="#">Читать</a>
					</div>
				</div>
			</div>
			<div class="col-4">
				<div class="section-ui">
					<div class="card card-post">
						<img class="card-post__img" src="../img/svg-for-sprites/blog-preview.png" alt="" />
						<div class="title-4">Поездка в New York пример длинного названия поста...</div>
						<a class="button" href="#">Читать</a>
					</div>
				</div>
			</div>
		</div> -->
		</div>
	</div>
