<div class="project container mb-100 mt-40 pb-20">
	<div class="project__header row mb-45">
		<div class="project__header-info col-sm-9 offset-sm-1">
			<div class="project__title title-1 mt-0 mb-20"><?=$work['title']?></div>
			<span class="project__name title-6"><?=$work['name']?> <?=$work['secondname']?></span>
			<span class="project__works title-6">
				<a href="<?=HOST?>works?id=<?=$work['author_id']?>">Работы</a>
			</span>
			<span class="project__date title-6"><?=$work['date_time']?></span>
		</div>
		<?php if (isAutor()) { ?>
		<div class="project__header-button col-sm-2 text-right">

			<a class="button button--edit" href="<?=HOST?>work-edit?id=<?=$work['id']?>">Редактировать</a>
		</div>
		<?php } ?>
	</div>
	<div class="col-sm-10 offset-sm-1 pr-0 pl-0">
		<?php if ($work['work_img'] != "") { ?>
		<img src="<?=HOST?>usercontent/works/<?=$work['work_img']?>" />
		<?php }else { ?>
		<img src="<?=HOST?>usercontent/no_img/920.jpg" />
		<?php } ?>
	</div>
	<div class="row mt-55">
		<div class="col-sm-6 offset-sm-1">
			<div class="project-info user-content">
				<div class="title-3">Кратко о проекте</div>
				<p class="project__text"><?=$work['description'] ?></p>
				<?php if ($work['time_to_work'] != "") { ?>
				<div class="title-6">Время работы над проектом:	<?=$work['time_to_work']?> недель</div>
				<?php }
				if ($work['number_of_pages'] != "") { ?>
				<div class="title-6">Страниц сверстано:	<?=$work['number_of_pages']?> страницы</div>
				<?php }
				if ($work['budget'] != "") { ?>
				<div class="title-6">Бюджет проекта: до	<?=$work['budget']?> рублей</div>
				<?php }
				if ( $work['description_result'] != "") { ?>
				<div class="title-3">
					Результат:
				</div>
				<p class="project__text"><?=$work['description_result']?></p>
				<?php } ?>
			</div>
		</div>
		<div class="col-sm-5">
			<div class="techs">
				<div class="title-3 mt-0">Технологии</div>
				<p class="techs__list"><?=$work['work_skills']?></p>
				<?php if ( $work['project_link'] != "") { ?>
				<div class="title-3 mt-40">Ссылка на проект</div>
				<a href="<?=$work['project_link']?>" target="_blank"><?=$work['project_link']?></a>
				<?php }
				if ( $work['git_link'] != "") { ?>
				<div class="title-3 mt-45">Код на github</div>
				<a href="<?=$work['git_link']?>" target="_blank">
					<?=$work['git_link']?>
				</a>
				<?php } ?>
			</div>
		</div>
	</div>
	<div class="button-block offset-sm-1 mt-30">
		<a class="button " href="<?=HOST?>works"><i class="fas fa-arrow-left icon-style icon-style--back"></i>Все работы</a>
		<a class="button" href="<?=HOST?>work?id=<?=idPosts($works, $work['id'], 'right')?>">Следующая работа<i class="fas fa-arrow-right icon-style"></i></a>
	</div>
</div>
