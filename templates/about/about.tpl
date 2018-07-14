<main>
	<div class="container">
		<div class="row mt-70">
			<div class="col-md-3">
				<div class="avatar">
					<img src="<?=HOST. 'usercontent/avatar/' .$admin->avatar?>" alt="avatar-big" />
				</div>
			</div>
			<div class="col-md-9">
				<div class="about">
					<div class="about-me">
						<h1 class="title-1 title-1--special"><?=$admin->name. ' '.$admin->secondname; ?></h1>
						<p>
							<?=$admin->description; ?>
								<!-- Я веб разработчик из Казани. Мне 28 лет.
								<br> Занимаюсь разработкой современных сайтов и приложений. Мне нравится делать интересные и современные проекты. -->
						</p>
						<p>
							Этот сайт я сделал в рамках обучения в школе онлайн обучения WebCademy.
							<br> Чуть позже я освежу в нём свой контент. А пока посмотрите, как тут всё классно и красиво!
						</p>
					</div>
					<div class="about-i-do mb-35">
						<div class="title-1 title--no-margin">Что я умею</div>
						<p>
							Меня привлекет Frontend разработка, это не только моя работа, но и хобби. Также знаком и могу решать не сложные задачи на Backend.
						</p>
						<p>Знаком и использую современный workflow, работаю с репозиториями git и сборкой проекта на gulp.</p>
					</div>
					<a class="button" href="#">Подробнее</a>
				</div>
			</div>
		</div>
	</div>

</main>
