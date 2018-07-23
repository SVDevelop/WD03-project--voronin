<div class="user-comment">
	<div class="user-comment-avatar">
		<div class="avatar--small">
			<?php if ($comment['avatar_small'] != "") { ?>
			<img src="<?=$comment['avatar_small']?>" alt="<?=$comment['name']?> <?=$comment['secondname']?>" />
			<?php } ?>
		</div>
	</div>

	<div class="user-comment-wrap">
		<div class="comment-wrap">
			<div class="user-name">
				<?=$comment['name']?>
					<?=$comment['secondname']?>
			</div>
			<div class="user-date"><i class="far fa-clock"></i>
				<span class="user-date--dat">
					<?=$comment['date_time']?>
				</span>
			</div>
		</div>
		<p class="user-text">
			<?=$comment['text'] ?>
		</p>
	</div>
</div>
