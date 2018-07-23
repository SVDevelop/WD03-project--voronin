-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Июл 24 2018 г., 01:08
-- Версия сервера: 5.5.58
-- Версия PHP: 5.5.38

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `WD03-voronin`
--

-- --------------------------------------------------------

--
-- Структура таблицы `about`
--

CREATE TABLE `about` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `photo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `about`
--

INSERT INTO `about` (`id`, `name`, `description`, `photo`) VALUES
(1, 'вася                  ', '<p>фывфв</p>\r\n', '30569152.jpg');

-- --------------------------------------------------------

--
-- Структура таблицы `categories`
--

CREATE TABLE `categories` (
  `id` int(11) UNSIGNED NOT NULL,
  `cat_title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `categories`
--

INSERT INTO `categories` (`id`, `cat_title`) VALUES
(6, 'html'),
(7, 'хрень'),
(8, 'php'),
(9, 'jq'),
(12, 'js'),
(13, 'css3'),
(18, 'какая-то хрень2'),
(20, 'qweqw'),
(22, 'asdasd'),
(23, 'asdasd');

-- --------------------------------------------------------

--
-- Структура таблицы `comments`
--

CREATE TABLE `comments` (
  `id` int(11) UNSIGNED NOT NULL,
  `post_id` int(11) UNSIGNED DEFAULT NULL,
  `user_id` int(11) UNSIGNED DEFAULT NULL,
  `text` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_time` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `comments`
--

INSERT INTO `comments` (`id`, `post_id`, `user_id`, `text`, `date_time`) VALUES
(7, 23, 7, 'ывыа', '2018-07-24 01:04:10');

-- --------------------------------------------------------

--
-- Структура таблицы `contacts`
--

CREATE TABLE `contacts` (
  `id` int(11) NOT NULL,
  `email` varchar(191) DEFAULT NULL,
  `address` varchar(191) DEFAULT NULL,
  `phone` varchar(191) DEFAULT NULL,
  `name` varchar(191) DEFAULT NULL,
  `secondname` varchar(191) DEFAULT NULL,
  `skype` varchar(191) DEFAULT NULL,
  `vk` varchar(191) DEFAULT NULL,
  `fb` varchar(191) DEFAULT NULL,
  `github` varchar(191) DEFAULT NULL,
  `twitter` varchar(191) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `contacts`
--

INSERT INTO `contacts` (`id`, `email`, `address`, `phone`, `name`, `secondname`, `skype`, `vk`, `fb`, `github`, `twitter`) VALUES
(1, 'as5555das@mail.ru', '', 'asdasd', 'asdas', 'dfsdasd', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Структура таблицы `job`
--

CREATE TABLE `job` (
  `id` int(11) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `period` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `job`
--

INSERT INTO `job` (`id`, `title`, `period`, `description`) VALUES
(8, 'фывфыв', 'фыв', 'фывфыв'),
(9, 'Разработчик интерфейсов, Яндекс', 'сентябрь 2015 &mdash; январь 2017', 'Работы в проекте Яндекс Музыка. Создание новых разделов сервиса. Оптимизация и создание новых копанентов платформы.\r\n\r\n'),
(10, 'Веб-разработчик, Cloud studio', 'март 2013 &mdash; август 2015', 'Frontend и Backend для клиентских проектов студии. Работа над студийнойя интернет магазинов. Участие в разработке CRM системы &quot;Sky CRM&quot;. Стек используемых технологий: Git,JS, Angular.						');

-- --------------------------------------------------------

--
-- Структура таблицы `messages`
--

CREATE TABLE `messages` (
  `id` int(11) UNSIGNED NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_time` datetime DEFAULT NULL,
  `message_file_name_original` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message_file` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `posts`
--

CREATE TABLE `posts` (
  `id` int(11) UNSIGNED NOT NULL,
  `title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `text` text,
  `author_id` int(11) UNSIGNED DEFAULT NULL,
  `date_time` datetime DEFAULT NULL,
  `post_img` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `post_img_small` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cat` int(11) UNSIGNED DEFAULT NULL,
  `update_time` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `posts`
--

INSERT INTO `posts` (`id`, `title`, `text`, `author_id`, `date_time`, `post_img`, `post_img_small`, `cat`, `update_time`) VALUES
(23, 'новый пост', '<p>фывфывфыв</p>\r\n', 7, '2018-07-23 14:14:22', '87457038.jpg', '320-87457038.jpg', 8, '2018-07-24 01:01:38');

-- --------------------------------------------------------

--
-- Структура таблицы `skills`
--

CREATE TABLE `skills` (
  `id` int(11) UNSIGNED NOT NULL,
  `html` int(11) UNSIGNED DEFAULT NULL,
  `css` int(11) UNSIGNED DEFAULT NULL,
  `js` int(11) UNSIGNED DEFAULT NULL,
  `jq` int(11) UNSIGNED DEFAULT NULL,
  `php` int(11) UNSIGNED DEFAULT NULL,
  `mysql` int(11) UNSIGNED DEFAULT NULL,
  `git` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gulp` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `npm` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `skills`
--

INSERT INTO `skills` (`id`, `html`, `css`, `js`, `jq`, `php`, `mysql`, `git`, `gulp`, `npm`) VALUES
(1, 12, 12, 12, 12, 21, 12, '12', '12', '12');

-- --------------------------------------------------------

--
-- Структура таблицы `userrole`
--

CREATE TABLE `userrole` (
  `id` int(11) NOT NULL,
  `role` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `userrole`
--

INSERT INTO `userrole` (`id`, `role`) VALUES
(1, 'admin'),
(2, 'user'),
(3, 'admin'),
(4, 'user'),
(5, 'admin'),
(6, 'user');

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `email` varchar(191) DEFAULT NULL,
  `role_id` int(11) DEFAULT NULL,
  `password` varchar(191) DEFAULT NULL,
  `secondname` varchar(191) DEFAULT NULL,
  `city` varchar(191) DEFAULT NULL,
  `country` varchar(191) DEFAULT NULL,
  `avatar` varchar(191) DEFAULT NULL,
  `avatar_small` varchar(191) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `name`, `description`, `email`, `role_id`, `password`, `secondname`, `city`, `country`, `avatar`, `avatar_small`) VALUES
(6, 'sd', '', 'info11@mail.com', 2, '$2y$10$pd0o5lqdJ40ryF7/Um7eaejVRYscqZcCuVNf3mas4.fSRdTxJaQ1e', 'sdf', 'sdf', 'sdf', '13729858.jpg', '48-13729858.jpg'),
(7, 'Сергей', 'Я веб разработчик из Казани. Мне 28 лет.  Занимаюсь разработкой современных сайтов и приложений. Мне нравится делать интересные и современные проекты.  Этот сайт я сделал в рамках обучения в школе онлайн обучения WebCademy.  Чуть позже я освежу в нём свой контент. А пока посмотрите, как тут всё классно и красиво!', 'admin@mail.ru', 1, '$2y$10$wd2bradim.xf/Rk4PcBv5.l.823gYNZCVlhnXUpQ3Qku5j9s32Hmq', 'Воронин', 'Брянск', 'Россия', '37957458.jpg', '48-37957458.jpg'),
(8, '', '', 'info3@mail.com', 2, '$2y$10$uwX8ysbSXRFCmy1ewvNToePqVmjMbdeFfeKXKJhDA7py8d47cjf.S', NULL, NULL, NULL, NULL, NULL),
(9, '', '', 'inf3o@mail.com', 2, '$2y$10$8BesobyWRBRJamVxVuoVvuDC1PQe8347emvafmeZaL7AH3bmgtOGG', NULL, NULL, NULL, NULL, NULL),
(10, '', '', 'info12@mail.com', 2, '$2y$10$YPzoXH.Ntgj7W9Rx9fWb2uF0gGppfbwtHB4t7PBR1oO5Bv5xovX92', NULL, NULL, NULL, NULL, NULL),
(11, '', '', 'infoas@mail.com', 2, '$2y$10$hTQ/ohJAuU8iZRyRdqBUtuJlyfY9kWEJFuGGTzTAIyC.2r5flcmdu', NULL, NULL, NULL, NULL, NULL),
(12, '', '', '1nfo@mail.com', 2, '$2y$10$XPckqXmQxQYHzbNl/sRuH.WPcuKqiAMY7QtkmHhf1CIHDHUMf3IGi', NULL, NULL, NULL, NULL, NULL),
(13, '', '', '12info@mail.com', 2, '$2y$10$IcIkLp5TLTLtgAVFpnw0SeUe6M.YxKmTRqi6NRiL3F.AnkC.jpnqK', NULL, NULL, NULL, NULL, NULL),
(14, '', '', '123info@mail.com', 2, '$2y$10$wd2bradim.xf/Rk4PcBv5.l.823gYNZCVlhnXUpQ3Qku5j9s32Hmq', NULL, NULL, NULL, NULL, NULL),
(15, 'asd', '', 'asdtka.sv@mail.ru', 2, '$2y$10$YD47YvFEjBSbL25LEke7y.hfEOdJsLDMfBty1mFh5iB2XdwAwj2DG', 'asd', '', '', NULL, NULL),
(16, '', '', 'info@mail.com', 2, '$2y$10$p8uo7OBCtF8fQM0YxTgi1.945C1o7oN957bSa6f5olrS6kQu0IA9a', NULL, NULL, NULL, NULL, NULL),
(18, '', '', '23123', 2, '$2y$10$mIyT5VayUpMww6oBEywGgewZoxnOO9OoqP1iL0R98bW2RM8BOKW6u', NULL, NULL, NULL, NULL, NULL),
(19, '12', '', 'info@mail.com1', 2, '$2y$10$Ddc77s5Z4gJou.JMYFuZEuhfOnwoF1A.DBNmW2Of2nBnf5kgBzCV.', '12', '', '', '65447998.jpg', '48-65447998.jpg');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `about`
--
ALTER TABLE `about`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `index_foreignkey_comments_post` (`post_id`),
  ADD KEY `index_foreignkey_comments_user` (`user_id`);

--
-- Индексы таблицы `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `job`
--
ALTER TABLE `job`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `index_foreignkey_posts_author` (`author_id`);

--
-- Индексы таблицы `skills`
--
ALTER TABLE `skills`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `userrole`
--
ALTER TABLE `userrole`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`),
  ADD KEY `role_id` (`role_id`),
  ADD KEY `avatar_small` (`avatar_small`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `about`
--
ALTER TABLE `about`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT для таблицы `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT для таблицы `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `job`
--
ALTER TABLE `job`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT для таблицы `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT для таблицы `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT для таблицы `skills`
--
ALTER TABLE `skills`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `userrole`
--
ALTER TABLE `userrole`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_ibfk_1` FOREIGN KEY (`role_id`) REFERENCES `userrole` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
