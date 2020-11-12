-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Хост: localhost:3306
-- Время создания: Ноя 10 2020 г., 09:33
-- Версия сервера: 5.7.24
-- Версия PHP: 7.4.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `students`
--

-- --------------------------------------------------------

--
-- Структура таблицы `homeworks`
--

CREATE TABLE `homeworks` (
  `id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `week of training` varchar(200) NOT NULL,
  `work name` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `homeworks`
--

INSERT INTO `homeworks` (`id`, `name`, `week of training`, `work name`) VALUES
(1, 'виктория', '1', 'домашка 1'),
(2, 'вася', '1', 'домашка 2'),
(3, 'андрей', '1', 'домашка 3'),
(4, 'людмила', '2', 'домашка 4'),
(5, 'виталик', '2', 'домашка 5'),
(6, 'люда', '2', 'домашка 6'),
(7, 'игорь', '2', 'домашка 7'),
(8, 'женя', '2', 'домашка 8'),
(9, 'валя', '1', 'домашка 9');

-- --------------------------------------------------------

--
-- Структура таблицы `student`
--

CREATE TABLE `student` (
  `id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `week of training` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `student`
--

INSERT INTO `student` (`id`, `name`, `week of training`) VALUES
(1, 'стегний', '1'),
(2, 'иванов', '1'),
(3, 'мовчанюк', '1'),
(4, 'бондаренко', '2'),
(5, 'яковов', '2'),
(6, 'руденко', '2'),
(7, 'галушко', '2'),
(8, 'ищенко', '2'),
(9, 'заремба', '1');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `homeworks`
--
ALTER TABLE `homeworks`
  ADD UNIQUE KEY `id` (`id`);

--
-- Индексы таблицы `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `student`
--
ALTER TABLE `student`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `homeworks`
--
ALTER TABLE `homeworks`
  ADD CONSTRAINT `homeworks_ibfk_1` FOREIGN KEY (`id`) REFERENCES `student` (`id`);

--
-- Ограничения внешнего ключа таблицы `student`
--
ALTER TABLE `student`
  ADD CONSTRAINT `student_ibfk_1` FOREIGN KEY (`id`) REFERENCES `homeworks` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
