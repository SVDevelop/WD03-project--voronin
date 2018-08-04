<?php function skillItem($name, $title) { global $skills;?>
<div class="col-xl-2 col-md-2">
	<div class="fieldset__title technology__item-title">
		<?=$title;?>
		<!-- dataFromPost($var, $array) -->
			<input name="<?=$name;?>" 
			class="input technology__item-input" 
			placeholder="50" 
			value="<?=$skills->$name?>" />
	</div>
</div>
<?php } ?>

<div class="container pt-50 mb-100">
	<form action="<?=HOST?>edit-skills" method="POST" class="form">

		<div class="row">
			<div class="col-xl-10 offset-1">
				<div class="title-3 mt-50">Технологии</div>
				<?php require ROOT ."templates/_parts/_errors.tpl";?>

				<div class="row mb-40">
					<?php skillItem('html', 'HTML5'); ?>
					<?php skillItem('css', 'CSS3'); ?>
					<?php skillItem('js', 'JS'); ?>
					<?php skillItem('jq', 'jQuery'); ?>
				</div>
				<div class="row">
					<?php skillItem('php', 'PHP');?>
					<?php skillItem('mysql', 'MySQL');?>
					<?php skillItem('git', 'Git');?>
					<?php skillItem('gulp', 'Gulp');?>
					<?php skillItem('npm', 'NPM');?>
				</div>
				<input type="submit" name="skillsUpdate" class="button button--save mt-20" value="Сохранить">
			</div>

		</div>
	</form>
</div>
