-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Июл 20 2018 г., 17:44
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
(13, 'css'),
(18, 'какая-то хрень2');

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
(13, 'sdfsdfsdf', '<p>sdfsdfsdf</p>\r\n', 7, '2018-07-20 16:31:15', '19794311.jpg', '320-19794311.jpg', 13, NULL),
(15, 'asdasdsd', '<p>asdasdasd</p>\r\n', 7, '2018-07-20 16:34:45', '34299011.jpg', '320-34299011.jpg', 9, '2018-07-20 16:43:12'),
(16, 'asdasdasdasd', '<p>asdasdasd</p>\r\n', 7, '2018-07-20 16:43:42', '87807922.jpg', '320-87807922.jpg', 18, NULL),
(17, 'elseif/else if ', '<p>(PHP 4, PHP 5, PHP 7)</p>\r\n\r\n<p>Конструкция&nbsp;<em>elseif</em>, как ее имя и говорит есть сочетание&nbsp;<em>if</em>&nbsp;и&nbsp;<em>else</em>. Аналогично&nbsp;<em>else</em>, она расширяет оператор&nbsp;<em>if</em>для выполнения различных выражений в случае, когда условие начального оператора&nbsp;<em>if</em>&nbsp;эквивалентно<strong><code>FALSE</code></strong>. Однако, в отличие от&nbsp;<em>else</em>, выполнение альтернативного выражения произойдет только тогда, когда условие оператора&nbsp;<em>elseif</em>&nbsp;будет являться равным&nbsp;<strong><code>TRUE</code></strong>. К примеру, следующий код может выводить&nbsp;a больше, чем b,&nbsp;a равно b&nbsp;или&nbsp;a меньше, чем b:</p>\r\n', 7, '2018-07-20 17:35:30', '47120056.jpg', '320-47120056.jpg', 8, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `email` varchar(191) DEFAULT NULL,
  `role` varchar(191) DEFAULT NULL,
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

INSERT INTO `users` (`id`, `name`, `description`, `email`, `role`, `password`, `secondname`, `city`, `country`, `avatar`, `avatar_small`) VALUES
(6, 'sd', '', 'info11@mail.com', 'user', '$2y$10$pd0o5lqdJ40ryF7/Um7eaejVRYscqZcCuVNf3mas4.fSRdTxJaQ1e', 'sdf', 'sdf', 'sdf', '13729858.jpg', '48-13729858.jpg'),
(7, 'Сергей', 'Я веб разработчик из Казани. Мне 28 лет.  Занимаюсь разработкой современных сайтов и приложений. Мне нравится делать интересные и современные проекты.  Этот сайт я сделал в рамках обучения в школе онлайн обучения WebCademy.  Чуть позже я освежу в нём свой контент. А пока посмотрите, как тут всё классно и красиво!', 'verstka.sv@mail.ru', 'admin', '$2y$10$wd2bradim.xf/Rk4PcBv5.l.823gYNZCVlhnXUpQ3Qku5j9s32Hmq', 'Воронин', 'Брянск', 'Россия', '83880310.jpg', '48-83880310.jpg'),
(8, '', '', 'info3@mail.com', 'user', '$2y$10$uwX8ysbSXRFCmy1ewvNToePqVmjMbdeFfeKXKJhDA7py8d47cjf.S', NULL, NULL, NULL, NULL, NULL),
(9, '', '', 'inf3o@mail.com', 'user', '$2y$10$8BesobyWRBRJamVxVuoVvuDC1PQe8347emvafmeZaL7AH3bmgtOGG', NULL, NULL, NULL, NULL, NULL),
(10, '', '', 'info12@mail.com', 'user', '$2y$10$YPzoXH.Ntgj7W9Rx9fWb2uF0gGppfbwtHB4t7PBR1oO5Bv5xovX92', NULL, NULL, NULL, NULL, NULL),
(11, '', '', 'infoas@mail.com', 'user', '$2y$10$hTQ/ohJAuU8iZRyRdqBUtuJlyfY9kWEJFuGGTzTAIyC.2r5flcmdu', NULL, NULL, NULL, NULL, NULL),
(12, '', '', '1nfo@mail.com', 'user', '$2y$10$XPckqXmQxQYHzbNl/sRuH.WPcuKqiAMY7QtkmHhf1CIHDHUMf3IGi', NULL, NULL, NULL, NULL, NULL),
(13, '', '', '12info@mail.com', 'user', '$2y$10$IcIkLp5TLTLtgAVFpnw0SeUe6M.YxKmTRqi6NRiL3F.AnkC.jpnqK', NULL, NULL, NULL, NULL, NULL),
(14, '', '', '123info@mail.com', 'user', '$2y$10$wd2bradim.xf/Rk4PcBv5.l.823gYNZCVlhnXUpQ3Qku5j9s32Hmq', NULL, NULL, NULL, NULL, NULL);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `index_foreignkey_posts_author` (`author_id`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT для таблицы `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
