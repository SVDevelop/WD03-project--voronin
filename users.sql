-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Июл 13 2018 г., 13:07
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
(7, '', '', 'info@mail.com', 'admin', '$2y$10$VzSTVEWzn8DlXy3Yxue2Bes2vuvd7v/WCJkWPaJnINJpMQNSz5lRO', NULL, NULL, NULL, NULL, NULL),
(8, '', '', 'info3@mail.com', 'user', '$2y$10$uwX8ysbSXRFCmy1ewvNToePqVmjMbdeFfeKXKJhDA7py8d47cjf.S', NULL, NULL, NULL, NULL, NULL),
(9, '', '', 'inf3o@mail.com', 'user', '$2y$10$8BesobyWRBRJamVxVuoVvuDC1PQe8347emvafmeZaL7AH3bmgtOGG', NULL, NULL, NULL, NULL, NULL),
(10, '', '', 'info12@mail.com', 'user', '$2y$10$YPzoXH.Ntgj7W9Rx9fWb2uF0gGppfbwtHB4t7PBR1oO5Bv5xovX92', NULL, NULL, NULL, NULL, NULL),
(11, '', '', 'infoas@mail.com', 'user', '$2y$10$hTQ/ohJAuU8iZRyRdqBUtuJlyfY9kWEJFuGGTzTAIyC.2r5flcmdu', NULL, NULL, NULL, NULL, NULL);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
