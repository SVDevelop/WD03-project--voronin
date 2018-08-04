<?php if (isLoggedIn()) { ?>
<div class="title-2 mb-15">Оставить комментарий</div>
<form class="comment-add-wrapper" id="commentForm" method="POST" action="<?=HOST?>blog/post?id=<?=$post['id']?>">
	<div class="comment-add__avatar float-left">
		<div class="avatar--small">
			<?php if ( $_SESSION['logged_user']['avatar_small'] != "" ) { ?>
			<img src="<?=HOST?>usercontent/avatar/<?=$_SESSION['logged_user']['avatar_small']?>" alt="<?=$_SESSION['logged_user']['name']?>" />
			<?php } ?>
		</div>
	</div>
	<div class="comment-add-block">
		<div class="comment-add-block__name">
			<?=$_SESSION['logged_user']['name']?>
				<?=$_SESSION['logged_user']['secondname'] ?>
		</div>

		<div class="error" style="display: none;" data-error-comment-empty>Комментарий не может быть пустым.</div>

		<div class="comment-add-block__text mt-10">
			<textarea name="commentText" class="textarea" rows="5" placeholder="Введите текст сообщения"></textarea>
		</div>
	</div>
	<div class="comment-add__button mt-10">
		<input type="hidden" name="addComment">
		<input type="submit" class="button" data-add-comment value="Опубликовать">
	</div>
</form>
<?php } else { ?>
<div class="block-registration mt-30">
	<p>
		<a href="<?=HOST?>login">Войдите</a> или
		<a href="<?=HOST?>registration">зарегистрируйтесь</a>
		<br>чтобы оставить комментарий
	</p>
</div>
<?php } ?>
