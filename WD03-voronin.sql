-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Июл 30 2018 г., 18:59
-- Версия сервера: 5.5.58
-- Версия PHP: 5.6.32

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
  `description` text COLLATE utf8mb4_unicode_ci,
  `photo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `about`
--

INSERT INTO `about` (`id`, `name`, `description`, `photo`) VALUES
(1, 'Сергей Воронин', '<p><strong>Веб разработчик.</strong></p>\r\n\r\n<p>Занимаюсь созданием сайтов, в том числе одно страничных. Работаю совместно с несколькими дизайнерами, что решит вашу проблему с их поиском. Помогу создать сайт для вашего бизнеса,приведу в порядок и отредактирую уже имеющийся сайт. Подход индивидуальный. Даже если у вас ограничен бюджет-подберу подходящий вариант для вас. При необходимости высылаю портфолио.&nbsp;<br />\r\n&nbsp;</p>\r\n\r\n<p>&nbsp;&nbsp;</p>\r\n', '36726989.jpg');

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
(14, 'css3'),
(15, 'html'),
(16, 'PHP'),
(17, 'js'),
(18, 'jq');

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
(12, 4, 8, 'sdfsdf', '2018-07-28 09:06:23');

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
(1, 'verstka.sv@mail.ru', 'фывыв', '8-(930)-730-87-91', 'Сергей', 'Воронин', 'serfer_87', 'https://vk.com/fullstackdevelop', '', 'https://github.com/VSergeyV', '');

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
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cat` int(11) UNSIGNED DEFAULT NULL,
  `text` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `author_id` int(11) UNSIGNED DEFAULT NULL,
  `date_time` datetime DEFAULT NULL,
  `post_img` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `post_img_small` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `update_time` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `posts`
--

INSERT INTO `posts` (`id`, `title`, `cat`, `text`, `author_id`, `date_time`, `post_img`, `post_img_small`, `update_time`) VALUES
(4, 'asdasdasdasd', 14, '<p>asdasdasda sdasdasd asdas dasd asdasd</p>\r\n', 8, '2018-07-28 08:08:48', '80979919.jpg', '320-80979919.jpg', '2018-07-28 08:21:30'),
(5, 'asdasd', 14, '<p>rdfghjk</p>\r\n', 8, '2018-07-30 18:30:59', '-547820514.jpg', '320--547820514.jpg', '2018-07-30 18:34:00');

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
(1, 79, 89, 45, 35, 65, 34, '90', '70', '50');

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
(2, 'user');

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` int(11) UNSIGNED NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_registration` datetime DEFAULT NULL,
  `role_id` int(11) DEFAULT NULL,
  `recovery_code` text COLLATE utf8mb4_unicode_ci,
  `recovery_code_times` text COLLATE utf8mb4_unicode_ci,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `secondname` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `avatar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `avatar_small` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `email`, `password`, `date_registration`, `role_id`, `recovery_code`, `recovery_code_times`, `name`, `secondname`, `city`, `country`, `avatar`, `avatar_small`) VALUES
(8, 'admin@mail.ru', '$2y$10$SnDLN3Hn2O32CvRdO6TD8OcqVGCv1yEjARunObOXndv6hh4iIJ1P6', '2018-07-27 20:12:39', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(9, 'admin@mail.ru', NULL, NULL, NULL, NULL, NULL, 'Сергей', 'Воронин', 'Брянск', 'Россия', NULL, NULL),
(10, 'vwqeqweerstka.sv@mail.ru', '$2y$10$yHAg8x8/CRSYiqXkQWxiceo85AT9cH17m33ixN3f49lxG5el/962e', '2018-07-27 21:54:43', 2, NULL, NULL, 'asdasd', 'asdasd', NULL, NULL, NULL, NULL),
(12, 'infqweqweo@mail.com', '$2y$10$A7sM1DLp2a9/f122zTurz./zM4amNLb4gCJWJNuNK12OBo42RihXa', '2018-07-27 21:56:49', 2, NULL, NULL, 'Сергей', 'Воронин', '', '', NULL, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `works`
--

CREATE TABLE `works` (
  `id` int(11) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `work_skills` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `project_link` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `git_link` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `author_id` int(11) UNSIGNED DEFAULT NULL,
  `date_time` datetime DEFAULT NULL,
  `description_result` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `work_img` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `work_img_small` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `time_to_work` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `number_of_pages` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `budget` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `works`
--

INSERT INTO `works` (`id`, `title`, `description`, `work_skills`, `project_link`, `git_link`, `author_id`, `date_time`, `description_result`, `work_img`, `work_img_small`, `time_to_work`, `number_of_pages`, `budget`) VALUES
(5, 'фывфыв', '12', '', '', '', 8, '2018-07-27 23:33:57', '', '46554260.jpg', '320-46554260.jpg', '', '', ''),
(6, 'фывфыв', 'ыва									', NULL, NULL, NULL, 8, '2018-07-28 08:38:08', NULL, '927733610.jpg', '320-927733610.jpg', NULL, NULL, NULL),
(7, 'фывфыв', '				asdasd										ыва															', NULL, NULL, NULL, 8, '2018-07-28 09:38:58', NULL, '333432142.jpg', '320-333432142.jpg', NULL, NULL, NULL),
(8, 'ыкаыуа', '\r\nыва												', '', '', '', 8, '2018-07-28 08:08:24', '', '30709228.jpg', '320-30709228.jpg', '', '', ''),
(9, 'ыкаыуа', '							ыва												', NULL, NULL, NULL, 8, '2018-07-28 08:41:12', NULL, '545369225.jpg', '320-545369225.jpg', NULL, NULL, NULL),
(10, 'фывфыв', '							asd						', '', '', '', 8, '2018-07-28 08:41:21', '', '-504887540.jpg', '320--504887540.jpg', '', '', ''),
(11, 'asdasd', '\r\nasd												', '', '', '', 8, '2018-07-28 08:22:16', '', '452861713.jpg', '320-452861713.jpg', '', '', ''),
(12, 'asdasd', 'asd						', NULL, NULL, NULL, 8, '2018-07-27 23:52:53', NULL, '702513397.jpg', '320-702513397.jpg', NULL, NULL, NULL),
(13, 'asdasd', 'asd sfsfdsdf					', NULL, NULL, NULL, 8, '2018-07-27 23:54:01', NULL, '618248541.jpg', '320-618248541.jpg', NULL, NULL, NULL),
(14, 'asdasd', '							sfsdfsdffffffffffff sdfsdfsdfsdddddddd sdfsd fsd sdfs fsdf											', NULL, NULL, NULL, 8, '2018-07-28 10:00:35', NULL, '1161315079.jpg', '320-1161315079.jpg', NULL, NULL, NULL),
(15, 'asdasd', 'asd fsdfsdf sdfsdf																	', NULL, NULL, NULL, 8, '2018-07-28 08:21:18', NULL, '605143310.jpg', '320-605143310.jpg', NULL, NULL, NULL),
(16, 'asdasd', '							sdfsdfsdf dsf sdf						', NULL, NULL, NULL, 8, '2018-07-28 08:41:03', NULL, '-118312877.jpg', '320--118312877.jpg', NULL, NULL, NULL),
(17, 'asdasdasd', '							asd						', '', '', '', 8, '2018-07-28 09:34:53', '', '56892395.jpg', '320-56892395.jpg', '', '', ''),
(18, 'asdasdasdasd', '							asd						', '', '', '', 8, '2018-07-28 09:32:13', '', '38792419.jpg', '320-38792419.jpg', '', '', ''),
(19, 'asdasd asd asds', '				asdasdasdasd										as das dasd							asdsd																		', '', '', '', 8, '2018-07-28 09:38:03', '', '970429385.jpg', '320-970429385.jpg', '', '', ''),
(20, 'asdadsa', 'asdasd', '', '', '', 8, '2018-07-28 09:35:29', '', '39311523.jpg', '320-39311523.jpg', '', '', ''),
(21, 'sdfsdfsf', '																					sdfsdf																		', '', '', '', 8, '2018-07-28 10:01:37', '', '599094742.jpg', '320-599094742.jpg', '', '', ''),
(22, 'asd', 'asdasd', 'asd\r\nasDAd\r\naSD', '', '', 8, '2018-07-30 15:02:26', '', NULL, NULL, '', '', ''),
(23, 'asdasd', 'asdasd', '<ul>\r\n	<li>asdasdasd</li>\r\n	<li>asdasdasd</li>\r\n	<li>asdasd</li>\r\n</ul>\r\n', '', '', 8, '2018-07-30 15:06:46', '', NULL, NULL, '', '', '');

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
  ADD KEY `role_id` (`role_id`);

--
-- Индексы таблицы `works`
--
ALTER TABLE `works`
  ADD PRIMARY KEY (`id`),
  ADD KEY `index_foreignkey_works_author` (`author_id`);

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
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT для таблицы `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

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
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT для таблицы `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT для таблицы `skills`
--
ALTER TABLE `skills`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `userrole`
--
ALTER TABLE `userrole`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT для таблицы `works`
--
ALTER TABLE `works`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

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
