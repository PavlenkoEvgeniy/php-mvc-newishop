-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Ноя 06 2023 г., 17:19
-- Версия сервера: 10.8.4-MariaDB
-- Версия PHP: 8.1.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `newishop`
--

-- --------------------------------------------------------

--
-- Структура таблицы `category`
--

CREATE TABLE `category` (
  `id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(10) UNSIGNED NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `category`
--

INSERT INTO `category` (`id`, `parent_id`, `slug`) VALUES
(1, 0, 'kompyutery'),
(2, 0, 'planshety'),
(3, 0, 'noutbuki'),
(4, 3, 'mac'),
(5, 3, 'windows'),
(6, 0, 'telefony'),
(7, 0, 'kamery'),
(13, 0, 'test');

-- --------------------------------------------------------

--
-- Структура таблицы `category_description`
--

CREATE TABLE `category_description` (
  `category_id` int(10) UNSIGNED NOT NULL,
  `language_id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `keywords` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `category_description`
--

INSERT INTO `category_description` (`category_id`, `language_id`, `title`, `description`, `keywords`, `content`) VALUES
(1, 1, 'Компьютеры', NULL, NULL, '<p>Сайт рыбатекст поможет дизайнеру, верстальщику, вебмастеру сгенерировать несколько абзацев более менее осмысленного текста рыбы на русском языке, а начинающему оратору отточить навык публичных выступлений в домашних условиях. При создании генератора мы использовали небезизвестный универсальный код речей.</p>'),
(1, 2, 'Computers', NULL, NULL, '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla viverra accumsan metus non ullamcorper. Nunc facilisis enim et neque dapibus, at accumsan elit fermentum. Praesent quis ante arcu. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vivamus interdum in tellus quis auctor. In pellentesque congue lacus sed laoreet. Duis imperdiet neque id tempor dictum. Donec volutpat felis et enim consequat, vitae vestibulum turpis eleifend. Integer eget congue lacus. Sed vitae quam tempor, gravida odio in, imperdiet leo. Aenean tincidunt enim vitae sagittis fringilla.</p>'),
(2, 1, 'Планшеты', NULL, NULL, 'Сайт рыбатекст поможет дизайнеру, верстальщику, вебмастеру сгенерировать несколько абзацев более менее осмысленного текста рыбы на русском языке, а начинающему оратору отточить навык публичных выступлений в домашних условиях. При создании генератора мы использовали небезизвестный универсальный код речей. Текст генерируется абзацами случайным образом от двух до десяти предложений в абзаце, что позволяет сделать текст более привлекательным и живым для визуально-слухового восприятия.'),
(2, 2, 'Tablets', NULL, NULL, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla viverra accumsan metus non ullamcorper. Nunc facilisis enim et neque dapibus, at accumsan elit fermentum. Praesent quis ante arcu. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vivamus interdum in tellus quis auctor. In pellentesque congue lacus sed laoreet. Duis imperdiet neque id tempor dictum. Donec volutpat felis et enim consequat, vitae vestibulum turpis eleifend. Integer eget congue lacus. Sed vitae quam tempor, gravida odio in, imperdiet leo. Aenean tincidunt enim vitae sagittis fringilla.'),
(3, 1, 'Ноутбуки', NULL, NULL, 'Сайт рыбатекст поможет дизайнеру, верстальщику, вебмастеру сгенерировать несколько абзацев более менее осмысленного текста рыбы на русском языке, а начинающему оратору отточить навык публичных выступлений в домашних условиях. При создании генератора мы использовали небезизвестный универсальный код речей. Текст генерируется абзацами случайным образом от двух до десяти предложений в абзаце, что позволяет сделать текст более привлекательным и живым для визуально-слухового восприятия.'),
(3, 2, 'Notebooks', NULL, NULL, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla viverra accumsan metus non ullamcorper. Nunc facilisis enim et neque dapibus, at accumsan elit fermentum. Praesent quis ante arcu. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vivamus interdum in tellus quis auctor. In pellentesque congue lacus sed laoreet. Duis imperdiet neque id tempor dictum. Donec volutpat felis et enim consequat, vitae vestibulum turpis eleifend. Integer eget congue lacus. Sed vitae quam tempor, gravida odio in, imperdiet leo. Aenean tincidunt enim vitae sagittis fringilla.'),
(4, 1, 'Mac', NULL, NULL, 'Сайт рыбатекст поможет дизайнеру, верстальщику, вебмастеру сгенерировать несколько абзацев более менее осмысленного текста рыбы на русском языке, а начинающему оратору отточить навык публичных выступлений в домашних условиях. При создании генератора мы использовали небезизвестный универсальный код речей. Текст генерируется абзацами случайным образом от двух до десяти предложений в абзаце, что позволяет сделать текст более привлекательным и живым для визуально-слухового восприятия.'),
(4, 2, 'Mac', NULL, NULL, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla viverra accumsan metus non ullamcorper. Nunc facilisis enim et neque dapibus, at accumsan elit fermentum. Praesent quis ante arcu. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vivamus interdum in tellus quis auctor. In pellentesque congue lacus sed laoreet. Duis imperdiet neque id tempor dictum. Donec volutpat felis et enim consequat, vitae vestibulum turpis eleifend. Integer eget congue lacus. Sed vitae quam tempor, gravida odio in, imperdiet leo. Aenean tincidunt enim vitae sagittis fringilla.'),
(5, 1, 'Windows', NULL, NULL, 'Сайт рыбатекст поможет дизайнеру, верстальщику, вебмастеру сгенерировать несколько абзацев более менее осмысленного текста рыбы на русском языке, а начинающему оратору отточить навык публичных выступлений в домашних условиях. При создании генератора мы использовали небезизвестный универсальный код речей. Текст генерируется абзацами случайным образом от двух до десяти предложений в абзаце, что позволяет сделать текст более привлекательным и живым для визуально-слухового восприятия.'),
(5, 2, 'Windows', NULL, NULL, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla viverra accumsan metus non ullamcorper. Nunc facilisis enim et neque dapibus, at accumsan elit fermentum. Praesent quis ante arcu. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vivamus interdum in tellus quis auctor. In pellentesque congue lacus sed laoreet. Duis imperdiet neque id tempor dictum. Donec volutpat felis et enim consequat, vitae vestibulum turpis eleifend. Integer eget congue lacus. Sed vitae quam tempor, gravida odio in, imperdiet leo. Aenean tincidunt enim vitae sagittis fringilla.'),
(6, 1, 'Телефоны', NULL, NULL, 'Сайт рыбатекст поможет дизайнеру, верстальщику, вебмастеру сгенерировать несколько абзацев более менее осмысленного текста рыбы на русском языке, а начинающему оратору отточить навык публичных выступлений в домашних условиях. При создании генератора мы использовали небезизвестный универсальный код речей. Текст генерируется абзацами случайным образом от двух до десяти предложений в абзаце, что позволяет сделать текст более привлекательным и живым для визуально-слухового восприятия.'),
(6, 2, 'Phones', NULL, NULL, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla viverra accumsan metus non ullamcorper. Nunc facilisis enim et neque dapibus, at accumsan elit fermentum. Praesent quis ante arcu. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vivamus interdum in tellus quis auctor. In pellentesque congue lacus sed laoreet. Duis imperdiet neque id tempor dictum. Donec volutpat felis et enim consequat, vitae vestibulum turpis eleifend. Integer eget congue lacus. Sed vitae quam tempor, gravida odio in, imperdiet leo. Aenean tincidunt enim vitae sagittis fringilla.'),
(7, 1, 'Камеры', NULL, NULL, 'Сайт рыбатекст поможет дизайнеру, верстальщику, вебмастеру сгенерировать несколько абзацев более менее осмысленного текста рыбы на русском языке, а начинающему оратору отточить навык публичных выступлений в домашних условиях. При создании генератора мы использовали небезизвестный универсальный код речей. Текст генерируется абзацами случайным образом от двух до десяти предложений в абзаце, что позволяет сделать текст более привлекательным и живым для визуально-слухового восприятия.'),
(7, 2, 'Cameras', NULL, NULL, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla viverra accumsan metus non ullamcorper. Nunc facilisis enim et neque dapibus, at accumsan elit fermentum. Praesent quis ante arcu. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vivamus interdum in tellus quis auctor. In pellentesque congue lacus sed laoreet. Duis imperdiet neque id tempor dictum. Donec volutpat felis et enim consequat, vitae vestibulum turpis eleifend. Integer eget congue lacus. Sed vitae quam tempor, gravida odio in, imperdiet leo. Aenean tincidunt enim vitae sagittis fringilla.'),
(13, 1, 'Тест', 'Мета-описание', 'Ключевые слова', '<figure class=\"image image-style-align-left\"><img src=\"/public/uploads/images/2023-10-30/canon_eos_5d_1-2.jpg\"></figure><p>Сайт рыбатекст поможет дизайнеру, верстальщику, вебмастеру сгенерировать несколько абзацев более менее осмысленного текста рыбы на русском языке, а начинающему оратору отточить навык публичных выступлений в домашних условиях. При создании генератора мы использовали небезизвестный универсальный код речей. Текст генерируется абзацами случайным образом от двух до десяти предложений в абзаце, что позволяет сделать текст более привлекательным и живым для визуально-слухового восприятия. По своей сути рыбатекст является альтернативой традиционному lorem ipsum, который вызывает у некторых людей недоумение при попытках прочитать рыбу текст. В отличии от lorem ipsum, текст рыба на русском языке наполнит любой макет непонятным смыслом и придаст неповторимый колорит советских времен.</p><p>&nbsp;</p><p>&nbsp;</p>'),
(13, 2, 'Test', 'meta description', 'keywords', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus vehicula gravida diam, quis mollis eros aliquet vitae. Quisque pretium ex id nunc fringilla dictum. <strong>Etiam diam nibh, di</strong>gnissim sit amet nisl molestie, cursus elementum dolor. Curabitur lacinia sem ac lectus auctor elementum. Fusce eleifend augue ac augue aliquam fringilla. Nunc id sollicitudin urna. Suspendisse eu dignissim dui, in pretium lectus. Aenean laoreet est ut lacus interdum, quis luctus libero ullamcorper. Ut sed lobortis leo. Fusce nibh lorem, tincidunt vitae mi commodo, ullamcorper venenatis est.</p><p><i>Lorem ipsum dolor sit amet, </i>consectetur adipiscing elit. Phasellus vehicula gravida diam, quis mollis eros aliquet vitae. Quisque pretium ex id nunc fringilla dictum. Etiam diam nibh, dignissim sit amet nisl molestie, cursus elementum dolor. Curabitur lacinia sem ac lectus auctor elementum. Fusce eleifend augue ac augue aliquam fringilla. Nunc id sollicitudin urna. Suspendisse eu dignissim dui, in pretium lectus. Aenean laoreet est ut lacus interdum, quis luctus libero ullamcorper. Ut sed lobortis leo. Fusce nibh lorem, tincidunt vitae mi commodo, ullamcorper venenatis est.</p>');

-- --------------------------------------------------------

--
-- Структура таблицы `download`
--

CREATE TABLE `download` (
  `id` int(10) UNSIGNED NOT NULL,
  `filename` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `original_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `download`
--

INSERT INTO `download` (`id`, `filename`, `original_name`) VALUES
(1, 'price.zip.RNv58WWAW1mF6ly3gTPiq4gHA00tQQ2B', 'price.zip'),
(2, 'test.txt.fdkrwrcsflytryz23423cf', 'test.txt');

-- --------------------------------------------------------

--
-- Структура таблицы `download_description`
--

CREATE TABLE `download_description` (
  `download_id` int(10) UNSIGNED NOT NULL,
  `language_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `download_description`
--

INSERT INTO `download_description` (`download_id`, `language_id`, `name`) VALUES
(1, 1, 'Файл 1'),
(1, 2, 'File 1'),
(2, 1, 'Файл 2'),
(2, 2, 'File 2');

-- --------------------------------------------------------

--
-- Структура таблицы `language`
--

CREATE TABLE `language` (
  `id` int(10) UNSIGNED NOT NULL,
  `code` varchar(4) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `base` tinyint(3) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `language`
--

INSERT INTO `language` (`id`, `code`, `title`, `base`) VALUES
(1, 'ru', 'Русский', 1),
(2, 'en', 'English', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `name`
--

CREATE TABLE `name` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `name`
--

INSERT INTO `name` (`id`, `name`) VALUES
(1, 'Иванов'),
(2, 'Петров');

-- --------------------------------------------------------

--
-- Структура таблицы `orders`
--

CREATE TABLE `orders` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `note` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `total` double NOT NULL,
  `qty` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `status`, `note`, `created_at`, `updated_at`, `total`, `qty`) VALUES
(24, 7, 0, 'Test order 1', '2023-10-26 09:00:03', '2023-11-06 01:38:55', 70, 5),
(25, 7, 1, 'Test order 2', '2023-10-26 09:04:30', '2023-11-06 01:39:15', 43, 2),
(26, 7, 1, 'Test order 3', '2023-10-26 09:12:06', '2023-11-06 01:40:29', 50, 5),
(27, 11, 0, 'Тестовый заказ', '2023-10-26 13:02:08', '2023-10-26 13:02:08', 15, 2),
(28, 7, 0, '', '2023-10-26 18:04:54', '2023-10-26 18:04:54', 23, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `order_download`
--

CREATE TABLE `order_download` (
  `id` int(10) UNSIGNED NOT NULL,
  `order_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `download_id` int(10) UNSIGNED NOT NULL,
  `status` tinyint(3) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `order_download`
--

INSERT INTO `order_download` (`id`, `order_id`, `user_id`, `product_id`, `download_id`, `status`) VALUES
(9, 24, 7, 5, 1, 0),
(10, 25, 7, 6, 2, 1),
(11, 27, 11, 5, 1, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `order_product`
--

CREATE TABLE `order_product` (
  `id` int(10) UNSIGNED NOT NULL,
  `order_id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `qty` int(10) UNSIGNED NOT NULL,
  `price` double NOT NULL,
  `sum` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `order_product`
--

INSERT INTO `order_product` (`id`, `order_id`, `product_id`, `title`, `slug`, `qty`, `price`, `sum`) VALUES
(15, 24, 1, 'Canon EOS 5D', 'canon-eos-5d', 1, 10, 10),
(16, 24, 2, 'Apple cinema 30\"', 'apple-cinema-30', 1, 20, 20),
(17, 24, 3, 'iMac', 'imac', 1, 25, 25),
(18, 24, 4, 'iPhone', 'iphone', 1, 10, 10),
(19, 24, 5, 'Цифровой товар', 'cifrovoj-tovar', 1, 5, 5),
(20, 25, 6, 'Digital product 2', 'cifrovoj-tovar-2', 1, 21, 21),
(21, 25, 7, 'Computer 2', 'kompyuter-2', 1, 22, 22),
(22, 26, 1, 'Canon EOS 5D', 'canon-eos-5d', 5, 10, 50),
(23, 27, 1, 'Canon EOS 5D', 'canon-eos-5d', 1, 10, 10),
(24, 27, 5, 'Цифровой товар', 'cifrovoj-tovar', 1, 5, 5),
(25, 28, 8, 'Компьютер 3', 'kompyuter-3', 1, 23, 23);

-- --------------------------------------------------------

--
-- Структура таблицы `page`
--

CREATE TABLE `page` (
  `id` int(10) UNSIGNED NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `page`
--

INSERT INTO `page` (`id`, `slug`) VALUES
(1, 'o-magazine'),
(2, 'oplata-i-dostavka'),
(3, 'kontakty'),
(6, 'testovaya-stranica');

-- --------------------------------------------------------

--
-- Структура таблицы `page_description`
--

CREATE TABLE `page_description` (
  `page_id` int(10) UNSIGNED NOT NULL,
  `language_id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `keywords` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `page_description`
--

INSERT INTO `page_description` (`page_id`, `language_id`, `title`, `content`, `keywords`, `description`) VALUES
(1, 1, 'О магазине', 'Контент страницы О магазине', NULL, NULL),
(1, 2, 'About shop', 'Content of the About shop page', NULL, NULL),
(2, 1, 'Оплата и доставка', 'Контент страницы Оплата и доставка', NULL, NULL),
(2, 2, 'Payment and delivery', 'Content of the page Payment and delivery', NULL, NULL),
(3, 1, 'Контакты', 'Контент страницы Контакты', NULL, NULL),
(3, 2, 'Contact', 'Contact page content', NULL, NULL),
(6, 1, 'Тестовая страница', '<p>Тестовая страница -1 222</p>', '222-222', '111-111'),
(6, 2, 'Test Page', '<p>Test page content -123<img src=\"/public/uploads/images/1.jpg\"></p>', '444 -3222', '333- 111');

-- --------------------------------------------------------

--
-- Структура таблицы `product`
--

CREATE TABLE `product` (
  `id` int(10) UNSIGNED NOT NULL,
  `category_id` int(10) UNSIGNED NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` double NOT NULL DEFAULT 0,
  `old_price` double NOT NULL DEFAULT 0,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `hit` tinyint(4) NOT NULL DEFAULT 0,
  `img` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'uploads/no_image.jpg',
  `is_download` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `product`
--

INSERT INTO `product` (`id`, `category_id`, `slug`, `price`, `old_price`, `status`, `hit`, `img`, `is_download`) VALUES
(1, 7, 'canon-eos-5d', 10, 12, 1, 1, '/public/uploads/no_image.jpg', 0),
(2, 4, 'apple-cinema-30', 20, 0, 1, 1, '/public/uploads/no_image.jpg', 0),
(3, 4, 'imac', 25, 0, 1, 1, '/public/uploads/no_image.jpg', 0),
(4, 6, 'iphone', 10, 0, 1, 1, '/public/uploads/no_image.jpg', 0),
(5, 5, 'cifrovoj-tovar', 5, 0, 1, 1, '/public/uploads/no_image.jpg', 1),
(6, 1, 'cifrovoj-tovar-2', 21, 0, 1, 0, '/public/uploads/no_image.jpg', 1),
(7, 1, 'kompyuter-2', 22, 0, 1, 0, '/public/uploads/no_image.jpg', 0),
(8, 1, 'kompyuter-3', 23, 0, 1, 1, '/public/uploads/no_image.jpg', 0),
(9, 1, 'kompyuter-4', 24, 0, 1, 0, '/public/uploads/no_image.jpg', 0),
(10, 1, 'kompyuter-5', 25, 0, 1, 0, '/public/uploads/no_image.jpg', 0),
(11, 1, 'kompyuter-6', 26, 0, 1, 0, '/public/uploads/no_image.jpg', 0),
(12, 1, 'kompyuter-7', 27, 0, 1, 0, '/public/uploads/no_image.jpg', 0),
(13, 1, 'kompyuter-8', 28, 0, 1, 0, '/public/uploads/no_image.jpg', 0),
(14, 1, 'kompyuter-9', 29, 0, 1, 0, '/public/uploads/no_image.jpg', 0),
(15, 1, 'kompyuter-10', 30, 0, 1, 0, '/public/uploads/no_image.jpg', 0),
(20, 13, 'testovyy-tovar-1', 10, 13, 1, 0, '/public/uploads/images/2023-10-30/canon_eos_5d_1.jpg', 1),
(21, 13, 'testovyy-tovar-2', 20, 0, 1, 0, '/public/uploads/no_image.jpg', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `product_description`
--

CREATE TABLE `product_description` (
  `product_id` int(10) UNSIGNED NOT NULL,
  `language_id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `exerpt` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `keywords` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `product_description`
--

INSERT INTO `product_description` (`product_id`, `language_id`, `title`, `content`, `exerpt`, `keywords`, `description`) VALUES
(1, 1, 'Canon EOS 5D', '<p>Сайт рыбатекст поможет дизайнеру, верстальщику, вебмастеру сгенерировать несколько абзацев более менее осмысленного текста рыбы на русском языке, а начинающему оратору отточить навык публичных выступлений в домашних условиях. При создании генератора мы использовали небезизвестный универсальный код речей. Текст генерируется абзацами случайным образом от двух до десяти предложений в абзаце, что позволяет сделать текст более привлекательным и живым для визуально-слухового восприятия. По своей сути рыбатекст является альтернативой традиционному lorem ipsum, который вызывает у некторых людей недоумение при попытках прочитать рыбу текст. В отличии от lorem ipsum, текст рыба на русском языке наполнит любой макет непонятным смыслом и придаст неповторимый колорит советских времен.</p>', 'Сайт рыбатекст поможет дизайнеру, верстальщику, вебмастеру сгенерировать', '', ''),
(1, 2, 'Canon EOS 5D', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam at ligula bibendum, sollicitudin mi ac, auctor urna. Nulla vulputate orci fermentum ante pretium blandit ut sed libero. Donec non feugiat turpis, et faucibus est. Vivamus lacus elit, ornare ultrices accumsan sed, pretium quis velit. Integer vel scelerisque odio. Vestibulum id dignissim urna. Fusce vitae urna vel magna dictum hendrerit in eget quam. Cras convallis metus enim, a iaculis metus scelerisque at. Vivamus vel ultricies est. Vivamus imperdiet tempor suscipit. Duis nibh sapien, feugiat a sagittis at, blandit vitae nulla. Sed rutrum vehicula fringilla. Praesent pretium elementum elit. Ut imperdiet sem vel tempor molestie. Maecenas convallis tortor a tincidunt egestas. In ultrices ornare suscipit. Suspendisse consequat eu felis et mollis. Aliquam viverra gravida est, sit amet venenatis arcu porttitor a. Sed maximus placerat sapien, nec fermentum quam luctus nec. Aenean semper ultrices urna eu fermentum. Nam at leo scelerisque, fermentum leo a, egestas odio. Fusce tincidunt magna mi, non pharetra neque egestas a. Sed sagittis vel nunc sed scelerisque. Pellentesque vestibulum quam ultrices fermentum maximus. In hac habitasse platea dictumst. Cras sit amet ornare mi, at efficitur libero. Morbi venenatis sapien a euismod finibus.</p>', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit', '', ''),
(2, 1, 'Apple cinema 30\"', 'Сайт рыбатекст поможет дизайнеру, верстальщику, вебмастеру сгенерировать несколько абзацев более менее осмысленного текста рыбы на русском языке, а начинающему оратору отточить навык публичных выступлений в домашних условиях. При создании генератора мы использовали небезизвестный универсальный код речей. Текст генерируется абзацами случайным образом от двух до десяти предложений в абзаце, что позволяет сделать текст более привлекательным и живым для визуально-слухового восприятия.\r\nПо своей сути рыбатекст является альтернативой традиционному lorem ipsum, который вызывает у некторых людей недоумение при попытках прочитать рыбу текст. В отличии от lorem ipsum, текст рыба на русском языке наполнит любой макет непонятным смыслом и придаст неповторимый колорит советских времен.', 'Сайт рыбатекст поможет дизайнеру, верстальщику, вебмастеру сгенерировать', NULL, NULL),
(2, 2, 'Apple cinema 30\"', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam at ligula bibendum, sollicitudin mi ac, auctor urna. Nulla vulputate orci fermentum ante pretium blandit ut sed libero. Donec non feugiat turpis, et faucibus est. Vivamus lacus elit, ornare ultrices accumsan sed, pretium quis velit. Integer vel scelerisque odio. Vestibulum id dignissim urna. Fusce vitae urna vel magna dictum hendrerit in eget quam. Cras convallis metus enim, a iaculis metus scelerisque at. Vivamus vel ultricies est. Vivamus imperdiet tempor suscipit. Duis nibh sapien, feugiat a sagittis at, blandit vitae nulla. Sed rutrum vehicula fringilla. Praesent pretium elementum elit.\r\nUt imperdiet sem vel tempor molestie. Maecenas convallis tortor a tincidunt egestas. In ultrices ornare suscipit. Suspendisse consequat eu felis et mollis. Aliquam viverra gravida est, sit amet venenatis arcu porttitor a. Sed maximus placerat sapien, nec fermentum quam luctus nec. Aenean semper ultrices urna eu fermentum. Nam at leo scelerisque, fermentum leo a, egestas odio. Fusce tincidunt magna mi, non pharetra neque egestas a. Sed sagittis vel nunc sed scelerisque. Pellentesque vestibulum quam ultrices fermentum maximus. In hac habitasse platea dictumst. Cras sit amet ornare mi, at efficitur libero. Morbi venenatis sapien a euismod finibus.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit', NULL, NULL),
(3, 1, 'iMac', 'Сайт рыбатекст поможет дизайнеру, верстальщику, вебмастеру сгенерировать несколько абзацев более менее осмысленного текста рыбы на русском языке, а начинающему оратору отточить навык публичных выступлений в домашних условиях. При создании генератора мы использовали небезизвестный универсальный код речей. Текст генерируется абзацами случайным образом от двух до десяти предложений в абзаце, что позволяет сделать текст более привлекательным и живым для визуально-слухового восприятия.\r\nПо своей сути рыбатекст является альтернативой традиционному lorem ipsum, который вызывает у некторых людей недоумение при попытках прочитать рыбу текст. В отличии от lorem ipsum, текст рыба на русском языке наполнит любой макет непонятным смыслом и придаст неповторимый колорит советских времен.', 'Сайт рыбатекст поможет дизайнеру, верстальщику, вебмастеру сгенерировать', NULL, NULL),
(3, 2, 'iMac', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam at ligula bibendum, sollicitudin mi ac, auctor urna. Nulla vulputate orci fermentum ante pretium blandit ut sed libero. Donec non feugiat turpis, et faucibus est. Vivamus lacus elit, ornare ultrices accumsan sed, pretium quis velit. Integer vel scelerisque odio. Vestibulum id dignissim urna. Fusce vitae urna vel magna dictum hendrerit in eget quam. Cras convallis metus enim, a iaculis metus scelerisque at. Vivamus vel ultricies est. Vivamus imperdiet tempor suscipit. Duis nibh sapien, feugiat a sagittis at, blandit vitae nulla. Sed rutrum vehicula fringilla. Praesent pretium elementum elit.\r\nUt imperdiet sem vel tempor molestie. Maecenas convallis tortor a tincidunt egestas. In ultrices ornare suscipit. Suspendisse consequat eu felis et mollis. Aliquam viverra gravida est, sit amet venenatis arcu porttitor a. Sed maximus placerat sapien, nec fermentum quam luctus nec. Aenean semper ultrices urna eu fermentum. Nam at leo scelerisque, fermentum leo a, egestas odio. Fusce tincidunt magna mi, non pharetra neque egestas a. Sed sagittis vel nunc sed scelerisque. Pellentesque vestibulum quam ultrices fermentum maximus. In hac habitasse platea dictumst. Cras sit amet ornare mi, at efficitur libero. Morbi venenatis sapien a euismod finibus.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit', NULL, NULL),
(4, 1, 'iPhone', 'Сайт рыбатекст поможет дизайнеру, верстальщику, вебмастеру сгенерировать несколько абзацев более менее осмысленного текста рыбы на русском языке, а начинающему оратору отточить навык публичных выступлений в домашних условиях. При создании генератора мы использовали небезизвестный универсальный код речей. Текст генерируется абзацами случайным образом от двух до десяти предложений в абзаце, что позволяет сделать текст более привлекательным и живым для визуально-слухового восприятия.\r\nПо своей сути рыбатекст является альтернативой традиционному lorem ipsum, который вызывает у некторых людей недоумение при попытках прочитать рыбу текст. В отличии от lorem ipsum, текст рыба на русском языке наполнит любой макет непонятным смыслом и придаст неповторимый колорит советских времен.', 'Сайт рыбатекст поможет дизайнеру, верстальщику, вебмастеру сгенерировать', NULL, NULL),
(4, 2, 'iPhone', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam at ligula bibendum, sollicitudin mi ac, auctor urna. Nulla vulputate orci fermentum ante pretium blandit ut sed libero. Donec non feugiat turpis, et faucibus est. Vivamus lacus elit, ornare ultrices accumsan sed, pretium quis velit. Integer vel scelerisque odio. Vestibulum id dignissim urna. Fusce vitae urna vel magna dictum hendrerit in eget quam. Cras convallis metus enim, a iaculis metus scelerisque at. Vivamus vel ultricies est. Vivamus imperdiet tempor suscipit. Duis nibh sapien, feugiat a sagittis at, blandit vitae nulla. Sed rutrum vehicula fringilla. Praesent pretium elementum elit.\r\nUt imperdiet sem vel tempor molestie. Maecenas convallis tortor a tincidunt egestas. In ultrices ornare suscipit. Suspendisse consequat eu felis et mollis. Aliquam viverra gravida est, sit amet venenatis arcu porttitor a. Sed maximus placerat sapien, nec fermentum quam luctus nec. Aenean semper ultrices urna eu fermentum. Nam at leo scelerisque, fermentum leo a, egestas odio. Fusce tincidunt magna mi, non pharetra neque egestas a. Sed sagittis vel nunc sed scelerisque. Pellentesque vestibulum quam ultrices fermentum maximus. In hac habitasse platea dictumst. Cras sit amet ornare mi, at efficitur libero. Morbi venenatis sapien a euismod finibus.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit', NULL, NULL),
(5, 1, 'Цифровой товар', 'Сайт рыбатекст поможет дизайнеру, верстальщику, вебмастеру сгенерировать несколько абзацев более менее осмысленного текста рыбы на русском языке, а начинающему оратору отточить навык публичных выступлений в домашних условиях. При создании генератора мы использовали небезизвестный универсальный код речей. Текст генерируется абзацами случайным образом от двух до десяти предложений в абзаце, что позволяет сделать текст более привлекательным и живым для визуально-слухового восприятия.\r\nПо своей сути рыбатекст является альтернативой традиционному lorem ipsum, который вызывает у некторых людей недоумение при попытках прочитать рыбу текст. В отличии от lorem ipsum, текст рыба на русском языке наполнит любой макет непонятным смыслом и придаст неповторимый колорит советских времен.', 'Сайт рыбатекст поможет дизайнеру, верстальщику, вебмастеру сгенерировать', NULL, NULL),
(5, 2, 'Digital product', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam at ligula bibendum, sollicitudin mi ac, auctor urna. Nulla vulputate orci fermentum ante pretium blandit ut sed libero. Donec non feugiat turpis, et faucibus est. Vivamus lacus elit, ornare ultrices accumsan sed, pretium quis velit. Integer vel scelerisque odio. Vestibulum id dignissim urna. Fusce vitae urna vel magna dictum hendrerit in eget quam. Cras convallis metus enim, a iaculis metus scelerisque at. Vivamus vel ultricies est. Vivamus imperdiet tempor suscipit. Duis nibh sapien, feugiat a sagittis at, blandit vitae nulla. Sed rutrum vehicula fringilla. Praesent pretium elementum elit.\r\nUt imperdiet sem vel tempor molestie. Maecenas convallis tortor a tincidunt egestas. In ultrices ornare suscipit. Suspendisse consequat eu felis et mollis. Aliquam viverra gravida est, sit amet venenatis arcu porttitor a. Sed maximus placerat sapien, nec fermentum quam luctus nec. Aenean semper ultrices urna eu fermentum. Nam at leo scelerisque, fermentum leo a, egestas odio. Fusce tincidunt magna mi, non pharetra neque egestas a. Sed sagittis vel nunc sed scelerisque. Pellentesque vestibulum quam ultrices fermentum maximus. In hac habitasse platea dictumst. Cras sit amet ornare mi, at efficitur libero. Morbi venenatis sapien a euismod finibus.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit', NULL, NULL),
(6, 1, 'Цифровой товар 2', 'Сайт рыбатекст поможет дизайнеру, верстальщику, вебмастеру сгенерировать несколько абзацев более менее осмысленного текста рыбы на русском языке, а начинающему оратору отточить навык публичных выступлений в домашних условиях. При создании генератора мы использовали небезизвестный универсальный код речей. Текст генерируется абзацами случайным образом от двух до десяти предложений в абзаце, что позволяет сделать текст более привлекательным и живым для визуально-слухового восприятия.\r\nПо своей сути рыбатекст является альтернативой традиционному lorem ipsum, который вызывает у некторых людей недоумение при попытках прочитать рыбу текст. В отличии от lorem ipsum, текст рыба на русском языке наполнит любой макет непонятным смыслом и придаст неповторимый колорит советских времен.', 'Сайт рыбатекст поможет дизайнеру, верстальщику, вебмастеру сгенерировать ', NULL, NULL),
(6, 2, 'Digital product 2', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam at ligula bibendum, sollicitudin mi ac, auctor urna. Nulla vulputate orci fermentum ante pretium blandit ut sed libero. Donec non feugiat turpis, et faucibus est. Vivamus lacus elit, ornare ultrices accumsan sed, pretium quis velit. Integer vel scelerisque odio. Vestibulum id dignissim urna. Fusce vitae urna vel magna dictum hendrerit in eget quam. Cras convallis metus enim, a iaculis metus scelerisque at. Vivamus vel ultricies est. Vivamus imperdiet tempor suscipit. Duis nibh sapien, feugiat a sagittis at, blandit vitae nulla. Sed rutrum vehicula fringilla. Praesent pretium elementum elit.\r\nUt imperdiet sem vel tempor molestie. Maecenas convallis tortor a tincidunt egestas. In ultrices ornare suscipit. Suspendisse consequat eu felis et mollis. Aliquam viverra gravida est, sit amet venenatis arcu porttitor a. Sed maximus placerat sapien, nec fermentum quam luctus nec. Aenean semper ultrices urna eu fermentum. Nam at leo scelerisque, fermentum leo a, egestas odio. Fusce tincidunt magna mi, non pharetra neque egestas a. Sed sagittis vel nunc sed scelerisque. Pellentesque vestibulum quam ultrices fermentum maximus. In hac habitasse platea dictumst. Cras sit amet ornare mi, at efficitur libero. Morbi venenatis sapien a euismod finibus.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit', NULL, NULL),
(7, 1, 'Компьютер 2', 'Сайт рыбатекст поможет дизайнеру, верстальщику, вебмастеру сгенерировать несколько абзацев более менее осмысленного текста рыбы на русском языке, а начинающему оратору отточить навык публичных выступлений в домашних условиях. При создании генератора мы использовали небезизвестный универсальный код речей. Текст генерируется абзацами случайным образом от двух до десяти предложений в абзаце, что позволяет сделать текст более привлекательным и живым для визуально-слухового восприятия.\r\nПо своей сути рыбатекст является альтернативой традиционному lorem ipsum, который вызывает у некторых людей недоумение при попытках прочитать рыбу текст. В отличии от lorem ipsum, текст рыба на русском языке наполнит любой макет непонятным смыслом и придаст неповторимый колорит советских времен.', 'Сайт рыбатекст поможет дизайнеру, верстальщику, вебмастеру сгенерировать ', NULL, NULL),
(7, 2, 'Computer 2', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam at ligula bibendum, sollicitudin mi ac, auctor urna. Nulla vulputate orci fermentum ante pretium blandit ut sed libero. Donec non feugiat turpis, et faucibus est. Vivamus lacus elit, ornare ultrices accumsan sed, pretium quis velit. Integer vel scelerisque odio. Vestibulum id dignissim urna. Fusce vitae urna vel magna dictum hendrerit in eget quam. Cras convallis metus enim, a iaculis metus scelerisque at. Vivamus vel ultricies est. Vivamus imperdiet tempor suscipit. Duis nibh sapien, feugiat a sagittis at, blandit vitae nulla. Sed rutrum vehicula fringilla. Praesent pretium elementum elit.\r\nUt imperdiet sem vel tempor molestie. Maecenas convallis tortor a tincidunt egestas. In ultrices ornare suscipit. Suspendisse consequat eu felis et mollis. Aliquam viverra gravida est, sit amet venenatis arcu porttitor a. Sed maximus placerat sapien, nec fermentum quam luctus nec. Aenean semper ultrices urna eu fermentum. Nam at leo scelerisque, fermentum leo a, egestas odio. Fusce tincidunt magna mi, non pharetra neque egestas a. Sed sagittis vel nunc sed scelerisque. Pellentesque vestibulum quam ultrices fermentum maximus. In hac habitasse platea dictumst. Cras sit amet ornare mi, at efficitur libero. Morbi venenatis sapien a euismod finibus.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit', NULL, NULL),
(8, 1, 'Компьютер 3', 'Сайт рыбатекст поможет дизайнеру, верстальщику, вебмастеру сгенерировать несколько абзацев более менее осмысленного текста рыбы на русском языке, а начинающему оратору отточить навык публичных выступлений в домашних условиях. При создании генератора мы использовали небезизвестный универсальный код речей. Текст генерируется абзацами случайным образом от двух до десяти предложений в абзаце, что позволяет сделать текст более привлекательным и живым для визуально-слухового восприятия.\r\nПо своей сути рыбатекст является альтернативой традиционному lorem ipsum, который вызывает у некторых людей недоумение при попытках прочитать рыбу текст. В отличии от lorem ipsum, текст рыба на русском языке наполнит любой макет непонятным смыслом и придаст неповторимый колорит советских времен.', 'Сайт рыбатекст поможет дизайнеру, верстальщику, вебмастеру сгенерировать ', NULL, NULL),
(8, 2, 'Computer 3', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam at ligula bibendum, sollicitudin mi ac, auctor urna. Nulla vulputate orci fermentum ante pretium blandit ut sed libero. Donec non feugiat turpis, et faucibus est. Vivamus lacus elit, ornare ultrices accumsan sed, pretium quis velit. Integer vel scelerisque odio. Vestibulum id dignissim urna. Fusce vitae urna vel magna dictum hendrerit in eget quam. Cras convallis metus enim, a iaculis metus scelerisque at. Vivamus vel ultricies est. Vivamus imperdiet tempor suscipit. Duis nibh sapien, feugiat a sagittis at, blandit vitae nulla. Sed rutrum vehicula fringilla. Praesent pretium elementum elit.\r\nUt imperdiet sem vel tempor molestie. Maecenas convallis tortor a tincidunt egestas. In ultrices ornare suscipit. Suspendisse consequat eu felis et mollis. Aliquam viverra gravida est, sit amet venenatis arcu porttitor a. Sed maximus placerat sapien, nec fermentum quam luctus nec. Aenean semper ultrices urna eu fermentum. Nam at leo scelerisque, fermentum leo a, egestas odio. Fusce tincidunt magna mi, non pharetra neque egestas a. Sed sagittis vel nunc sed scelerisque. Pellentesque vestibulum quam ultrices fermentum maximus. In hac habitasse platea dictumst. Cras sit amet ornare mi, at efficitur libero. Morbi venenatis sapien a euismod finibus.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit', NULL, NULL),
(9, 1, 'Компьютер 4', 'Сайт рыбатекст поможет дизайнеру, верстальщику, вебмастеру сгенерировать несколько абзацев более менее осмысленного текста рыбы на русском языке, а начинающему оратору отточить навык публичных выступлений в домашних условиях. При создании генератора мы использовали небезизвестный универсальный код речей. Текст генерируется абзацами случайным образом от двух до десяти предложений в абзаце, что позволяет сделать текст более привлекательным и живым для визуально-слухового восприятия.\r\nПо своей сути рыбатекст является альтернативой традиционному lorem ipsum, который вызывает у некторых людей недоумение при попытках прочитать рыбу текст. В отличии от lorem ipsum, текст рыба на русском языке наполнит любой макет непонятным смыслом и придаст неповторимый колорит советских времен.', 'Сайт рыбатекст поможет дизайнеру, верстальщику, вебмастеру сгенерировать ', NULL, NULL),
(9, 2, 'Computer 4', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam at ligula bibendum, sollicitudin mi ac, auctor urna. Nulla vulputate orci fermentum ante pretium blandit ut sed libero. Donec non feugiat turpis, et faucibus est. Vivamus lacus elit, ornare ultrices accumsan sed, pretium quis velit. Integer vel scelerisque odio. Vestibulum id dignissim urna. Fusce vitae urna vel magna dictum hendrerit in eget quam. Cras convallis metus enim, a iaculis metus scelerisque at. Vivamus vel ultricies est. Vivamus imperdiet tempor suscipit. Duis nibh sapien, feugiat a sagittis at, blandit vitae nulla. Sed rutrum vehicula fringilla. Praesent pretium elementum elit.\r\nUt imperdiet sem vel tempor molestie. Maecenas convallis tortor a tincidunt egestas. In ultrices ornare suscipit. Suspendisse consequat eu felis et mollis. Aliquam viverra gravida est, sit amet venenatis arcu porttitor a. Sed maximus placerat sapien, nec fermentum quam luctus nec. Aenean semper ultrices urna eu fermentum. Nam at leo scelerisque, fermentum leo a, egestas odio. Fusce tincidunt magna mi, non pharetra neque egestas a. Sed sagittis vel nunc sed scelerisque. Pellentesque vestibulum quam ultrices fermentum maximus. In hac habitasse platea dictumst. Cras sit amet ornare mi, at efficitur libero. Morbi venenatis sapien a euismod finibus.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit', NULL, NULL),
(10, 1, 'Компьютер 5', 'Сайт рыбатекст поможет дизайнеру, верстальщику, вебмастеру сгенерировать несколько абзацев более менее осмысленного текста рыбы на русском языке, а начинающему оратору отточить навык публичных выступлений в домашних условиях. При создании генератора мы использовали небезизвестный универсальный код речей. Текст генерируется абзацами случайным образом от двух до десяти предложений в абзаце, что позволяет сделать текст более привлекательным и живым для визуально-слухового восприятия.\r\nПо своей сути рыбатекст является альтернативой традиционному lorem ipsum, который вызывает у некторых людей недоумение при попытках прочитать рыбу текст. В отличии от lorem ipsum, текст рыба на русском языке наполнит любой макет непонятным смыслом и придаст неповторимый колорит советских времен.', 'Сайт рыбатекст поможет дизайнеру, верстальщику, вебмастеру сгенерировать ', NULL, NULL),
(10, 2, 'Computer 5', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam at ligula bibendum, sollicitudin mi ac, auctor urna. Nulla vulputate orci fermentum ante pretium blandit ut sed libero. Donec non feugiat turpis, et faucibus est. Vivamus lacus elit, ornare ultrices accumsan sed, pretium quis velit. Integer vel scelerisque odio. Vestibulum id dignissim urna. Fusce vitae urna vel magna dictum hendrerit in eget quam. Cras convallis metus enim, a iaculis metus scelerisque at. Vivamus vel ultricies est. Vivamus imperdiet tempor suscipit. Duis nibh sapien, feugiat a sagittis at, blandit vitae nulla. Sed rutrum vehicula fringilla. Praesent pretium elementum elit.\r\nUt imperdiet sem vel tempor molestie. Maecenas convallis tortor a tincidunt egestas. In ultrices ornare suscipit. Suspendisse consequat eu felis et mollis. Aliquam viverra gravida est, sit amet venenatis arcu porttitor a. Sed maximus placerat sapien, nec fermentum quam luctus nec. Aenean semper ultrices urna eu fermentum. Nam at leo scelerisque, fermentum leo a, egestas odio. Fusce tincidunt magna mi, non pharetra neque egestas a. Sed sagittis vel nunc sed scelerisque. Pellentesque vestibulum quam ultrices fermentum maximus. In hac habitasse platea dictumst. Cras sit amet ornare mi, at efficitur libero. Morbi venenatis sapien a euismod finibus.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit', NULL, NULL),
(11, 1, 'Компьютер 6', 'Сайт рыбатекст поможет дизайнеру, верстальщику, вебмастеру сгенерировать несколько абзацев более менее осмысленного текста рыбы на русском языке, а начинающему оратору отточить навык публичных выступлений в домашних условиях. При создании генератора мы использовали небезизвестный универсальный код речей. Текст генерируется абзацами случайным образом от двух до десяти предложений в абзаце, что позволяет сделать текст более привлекательным и живым для визуально-слухового восприятия.\r\nПо своей сути рыбатекст является альтернативой традиционному lorem ipsum, который вызывает у некторых людей недоумение при попытках прочитать рыбу текст. В отличии от lorem ipsum, текст рыба на русском языке наполнит любой макет непонятным смыслом и придаст неповторимый колорит советских времен.', 'Сайт рыбатекст поможет дизайнеру, верстальщику, вебмастеру сгенерировать ', NULL, NULL),
(11, 2, 'Computer 6', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam at ligula bibendum, sollicitudin mi ac, auctor urna. Nulla vulputate orci fermentum ante pretium blandit ut sed libero. Donec non feugiat turpis, et faucibus est. Vivamus lacus elit, ornare ultrices accumsan sed, pretium quis velit. Integer vel scelerisque odio. Vestibulum id dignissim urna. Fusce vitae urna vel magna dictum hendrerit in eget quam. Cras convallis metus enim, a iaculis metus scelerisque at. Vivamus vel ultricies est. Vivamus imperdiet tempor suscipit. Duis nibh sapien, feugiat a sagittis at, blandit vitae nulla. Sed rutrum vehicula fringilla. Praesent pretium elementum elit.\r\nUt imperdiet sem vel tempor molestie. Maecenas convallis tortor a tincidunt egestas. In ultrices ornare suscipit. Suspendisse consequat eu felis et mollis. Aliquam viverra gravida est, sit amet venenatis arcu porttitor a. Sed maximus placerat sapien, nec fermentum quam luctus nec. Aenean semper ultrices urna eu fermentum. Nam at leo scelerisque, fermentum leo a, egestas odio. Fusce tincidunt magna mi, non pharetra neque egestas a. Sed sagittis vel nunc sed scelerisque. Pellentesque vestibulum quam ultrices fermentum maximus. In hac habitasse platea dictumst. Cras sit amet ornare mi, at efficitur libero. Morbi venenatis sapien a euismod finibus.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit', NULL, NULL),
(12, 1, 'Компьютер 7', 'Сайт рыбатекст поможет дизайнеру, верстальщику, вебмастеру сгенерировать несколько абзацев более менее осмысленного текста рыбы на русском языке, а начинающему оратору отточить навык публичных выступлений в домашних условиях. При создании генератора мы использовали небезизвестный универсальный код речей. Текст генерируется абзацами случайным образом от двух до десяти предложений в абзаце, что позволяет сделать текст более привлекательным и живым для визуально-слухового восприятия.\r\nПо своей сути рыбатекст является альтернативой традиционному lorem ipsum, который вызывает у некторых людей недоумение при попытках прочитать рыбу текст. В отличии от lorem ipsum, текст рыба на русском языке наполнит любой макет непонятным смыслом и придаст неповторимый колорит советских времен.', 'Сайт рыбатекст поможет дизайнеру, верстальщику, вебмастеру сгенерировать ', NULL, NULL),
(12, 2, 'Computer 7', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam at ligula bibendum, sollicitudin mi ac, auctor urna. Nulla vulputate orci fermentum ante pretium blandit ut sed libero. Donec non feugiat turpis, et faucibus est. Vivamus lacus elit, ornare ultrices accumsan sed, pretium quis velit. Integer vel scelerisque odio. Vestibulum id dignissim urna. Fusce vitae urna vel magna dictum hendrerit in eget quam. Cras convallis metus enim, a iaculis metus scelerisque at. Vivamus vel ultricies est. Vivamus imperdiet tempor suscipit. Duis nibh sapien, feugiat a sagittis at, blandit vitae nulla. Sed rutrum vehicula fringilla. Praesent pretium elementum elit.\r\nUt imperdiet sem vel tempor molestie. Maecenas convallis tortor a tincidunt egestas. In ultrices ornare suscipit. Suspendisse consequat eu felis et mollis. Aliquam viverra gravida est, sit amet venenatis arcu porttitor a. Sed maximus placerat sapien, nec fermentum quam luctus nec. Aenean semper ultrices urna eu fermentum. Nam at leo scelerisque, fermentum leo a, egestas odio. Fusce tincidunt magna mi, non pharetra neque egestas a. Sed sagittis vel nunc sed scelerisque. Pellentesque vestibulum quam ultrices fermentum maximus. In hac habitasse platea dictumst. Cras sit amet ornare mi, at efficitur libero. Morbi venenatis sapien a euismod finibus.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit', NULL, NULL),
(13, 1, 'Компьютер 8', 'Сайт рыбатекст поможет дизайнеру, верстальщику, вебмастеру сгенерировать несколько абзацев более менее осмысленного текста рыбы на русском языке, а начинающему оратору отточить навык публичных выступлений в домашних условиях. При создании генератора мы использовали небезизвестный универсальный код речей. Текст генерируется абзацами случайным образом от двух до десяти предложений в абзаце, что позволяет сделать текст более привлекательным и живым для визуально-слухового восприятия.\r\nПо своей сути рыбатекст является альтернативой традиционному lorem ipsum, который вызывает у некторых людей недоумение при попытках прочитать рыбу текст. В отличии от lorem ipsum, текст рыба на русском языке наполнит любой макет непонятным смыслом и придаст неповторимый колорит советских времен.', 'Сайт рыбатекст поможет дизайнеру, верстальщику, вебмастеру сгенерировать ', NULL, NULL),
(13, 2, 'Computer 8', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam at ligula bibendum, sollicitudin mi ac, auctor urna. Nulla vulputate orci fermentum ante pretium blandit ut sed libero. Donec non feugiat turpis, et faucibus est. Vivamus lacus elit, ornare ultrices accumsan sed, pretium quis velit. Integer vel scelerisque odio. Vestibulum id dignissim urna. Fusce vitae urna vel magna dictum hendrerit in eget quam. Cras convallis metus enim, a iaculis metus scelerisque at. Vivamus vel ultricies est. Vivamus imperdiet tempor suscipit. Duis nibh sapien, feugiat a sagittis at, blandit vitae nulla. Sed rutrum vehicula fringilla. Praesent pretium elementum elit.\r\nUt imperdiet sem vel tempor molestie. Maecenas convallis tortor a tincidunt egestas. In ultrices ornare suscipit. Suspendisse consequat eu felis et mollis. Aliquam viverra gravida est, sit amet venenatis arcu porttitor a. Sed maximus placerat sapien, nec fermentum quam luctus nec. Aenean semper ultrices urna eu fermentum. Nam at leo scelerisque, fermentum leo a, egestas odio. Fusce tincidunt magna mi, non pharetra neque egestas a. Sed sagittis vel nunc sed scelerisque. Pellentesque vestibulum quam ultrices fermentum maximus. In hac habitasse platea dictumst. Cras sit amet ornare mi, at efficitur libero. Morbi venenatis sapien a euismod finibus.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit', NULL, NULL),
(14, 1, 'Компьютер 9', 'Сайт рыбатекст поможет дизайнеру, верстальщику, вебмастеру сгенерировать несколько абзацев более менее осмысленного текста рыбы на русском языке, а начинающему оратору отточить навык публичных выступлений в домашних условиях. При создании генератора мы использовали небезизвестный универсальный код речей. Текст генерируется абзацами случайным образом от двух до десяти предложений в абзаце, что позволяет сделать текст более привлекательным и живым для визуально-слухового восприятия.\r\nПо своей сути рыбатекст является альтернативой традиционному lorem ipsum, который вызывает у некторых людей недоумение при попытках прочитать рыбу текст. В отличии от lorem ipsum, текст рыба на русском языке наполнит любой макет непонятным смыслом и придаст неповторимый колорит советских времен.', 'Сайт рыбатекст поможет дизайнеру, верстальщику, вебмастеру сгенерировать ', NULL, NULL),
(14, 2, 'Computer 9', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam at ligula bibendum, sollicitudin mi ac, auctor urna. Nulla vulputate orci fermentum ante pretium blandit ut sed libero. Donec non feugiat turpis, et faucibus est. Vivamus lacus elit, ornare ultrices accumsan sed, pretium quis velit. Integer vel scelerisque odio. Vestibulum id dignissim urna. Fusce vitae urna vel magna dictum hendrerit in eget quam. Cras convallis metus enim, a iaculis metus scelerisque at. Vivamus vel ultricies est. Vivamus imperdiet tempor suscipit. Duis nibh sapien, feugiat a sagittis at, blandit vitae nulla. Sed rutrum vehicula fringilla. Praesent pretium elementum elit.\r\nUt imperdiet sem vel tempor molestie. Maecenas convallis tortor a tincidunt egestas. In ultrices ornare suscipit. Suspendisse consequat eu felis et mollis. Aliquam viverra gravida est, sit amet venenatis arcu porttitor a. Sed maximus placerat sapien, nec fermentum quam luctus nec. Aenean semper ultrices urna eu fermentum. Nam at leo scelerisque, fermentum leo a, egestas odio. Fusce tincidunt magna mi, non pharetra neque egestas a. Sed sagittis vel nunc sed scelerisque. Pellentesque vestibulum quam ultrices fermentum maximus. In hac habitasse platea dictumst. Cras sit amet ornare mi, at efficitur libero. Morbi venenatis sapien a euismod finibus.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit', NULL, NULL),
(15, 1, 'Компьютер 10', 'Сайт рыбатекст поможет дизайнеру, верстальщику, вебмастеру сгенерировать несколько абзацев более менее осмысленного текста рыбы на русском языке, а начинающему оратору отточить навык публичных выступлений в домашних условиях. При создании генератора мы использовали небезизвестный универсальный код речей. Текст генерируется абзацами случайным образом от двух до десяти предложений в абзаце, что позволяет сделать текст более привлекательным и живым для визуально-слухового восприятия.\r\nПо своей сути рыбатекст является альтернативой традиционному lorem ipsum, который вызывает у некторых людей недоумение при попытках прочитать рыбу текст. В отличии от lorem ipsum, текст рыба на русском языке наполнит любой макет непонятным смыслом и придаст неповторимый колорит советских времен.', 'Сайт рыбатекст поможет дизайнеру, верстальщику, вебмастеру сгенерировать ', NULL, NULL),
(15, 2, 'Computer 10', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam at ligula bibendum, sollicitudin mi ac, auctor urna. Nulla vulputate orci fermentum ante pretium blandit ut sed libero. Donec non feugiat turpis, et faucibus est. Vivamus lacus elit, ornare ultrices accumsan sed, pretium quis velit. Integer vel scelerisque odio. Vestibulum id dignissim urna. Fusce vitae urna vel magna dictum hendrerit in eget quam. Cras convallis metus enim, a iaculis metus scelerisque at. Vivamus vel ultricies est. Vivamus imperdiet tempor suscipit. Duis nibh sapien, feugiat a sagittis at, blandit vitae nulla. Sed rutrum vehicula fringilla. Praesent pretium elementum elit.\r\nUt imperdiet sem vel tempor molestie. Maecenas convallis tortor a tincidunt egestas. In ultrices ornare suscipit. Suspendisse consequat eu felis et mollis. Aliquam viverra gravida est, sit amet venenatis arcu porttitor a. Sed maximus placerat sapien, nec fermentum quam luctus nec. Aenean semper ultrices urna eu fermentum. Nam at leo scelerisque, fermentum leo a, egestas odio. Fusce tincidunt magna mi, non pharetra neque egestas a. Sed sagittis vel nunc sed scelerisque. Pellentesque vestibulum quam ultrices fermentum maximus. In hac habitasse platea dictumst. Cras sit amet ornare mi, at efficitur libero. Morbi venenatis sapien a euismod finibus.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit', NULL, NULL),
(20, 1, 'Тестовый товар 1', '<p>Сайт рыбатекст поможет дизайнеру, верстальщику, вебмастеру сгенерировать несколько абзацев более менее осмысленного текста рыбы на русском языке, а начинающему оратору отточить навык публичных выступлений в домашних условиях. При создании генератора мы использовали небезизвестный универсальный код речей. Текст генерируется абзацами случайным образом от двух до десяти предложений в абзаце, что позволяет сделать текст более привлекательным и живым для визуально-слухового восприятия. По своей сути рыбатекст является альтернативой традиционному lorem ipsum, который вызывает у некторых людей недоумение при попытках прочитать рыбу текст. В отличии от lorem ipsum, текст рыба на русском языке наполнит любой макет непонятным смыслом и придаст неповторимый колорит советских времен.</p>', 'Краткое описание тестового товара 1', '222', '111'),
(20, 2, 'Test product 1', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam at ligula bibendum, sollicitudin mi ac, auctor urna. Nulla vulputate orci fermentum ante pretium blandit ut sed libero. Donec non feugiat turpis, et faucibus est. Vivamus lacus elit, ornare ultrices accumsan sed, pretium quis velit. Integer vel scelerisque odio. Vestibulum id dignissim urna. Fusce vitae urna vel magna dictum hendrerit in eget quam. Cras convallis metus enim, a iaculis metus scelerisque at. Vivamus vel ultricies est. Vivamus imperdiet tempor suscipit. Duis nibh sapien, feugiat a sagittis at, blandit vitae nulla. Sed rutrum vehicula fringilla. Praesent pretium elementum elit. Ut imperdiet sem vel tempor molestie. Maecenas convallis tortor a tincidunt egestas. In ultrices ornare suscipit. Suspendisse consequat eu felis et mollis. Aliquam viverra gravida est, sit amet venenatis arcu porttitor a. Sed maximus placerat sapien, nec fermentum quam luctus nec. Aenean semper ultrices urna eu fermentum. Nam at leo scelerisque, fermentum leo a, egestas odio. Fusce tincidunt magna mi, non pharetra neque egestas a. Sed sagittis vel nunc sed scelerisque. Pellentesque vestibulum quam ultrices fermentum maximus. In hac habitasse platea dictumst. Cras sit amet ornare mi, at efficitur libero. Morbi venenatis sapien a euismod finibus.</p>', 'Exerpt of test product 1', '444', '333'),
(21, 1, 'Тестовый товар 2', '<p>111</p>', 'Краткое описание тестового товара 2', '', ''),
(21, 2, 'Test product 2', '<p>222</p>', 'Exerpt of test product 2', '', '');

-- --------------------------------------------------------

--
-- Структура таблицы `product_download`
--

CREATE TABLE `product_download` (
  `product_id` int(10) UNSIGNED NOT NULL,
  `download_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `product_download`
--

INSERT INTO `product_download` (`product_id`, `download_id`) VALUES
(5, 1),
(6, 2),
(20, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `product_gallery`
--

CREATE TABLE `product_gallery` (
  `id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `img` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `product_gallery`
--

INSERT INTO `product_gallery` (`id`, `product_id`, `img`) VALUES
(1, 2, '/public/uploads/images/1.jpg'),
(2, 2, '/public/uploads/images/2.jpg'),
(12, 20, '/public/uploads/images/3.jpg'),
(13, 20, '/public/uploads/images/2.jpg'),
(14, 20, '/public/uploads/images/1.jpg');

-- --------------------------------------------------------

--
-- Структура таблицы `slider`
--

CREATE TABLE `slider` (
  `id` int(10) UNSIGNED NOT NULL,
  `img` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `slider`
--

INSERT INTO `slider` (`id`, `img`) VALUES
(6, '/public/uploads/slider/1.jpg'),
(7, '/public/uploads/slider/2.jpg'),
(8, '/public/uploads/images/3.jpg');

-- --------------------------------------------------------

--
-- Структура таблицы `user`
--

CREATE TABLE `user` (
  `id` int(10) UNSIGNED NOT NULL,
  `email` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` enum('user','admin') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'user'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `user`
--

INSERT INTO `user` (`id`, `email`, `password`, `name`, `address`, `role`) VALUES
(4, '20@1.com', '$2y$10$kLVo3G0ziogj/D0gDVxr8uKDMPG3na.2d9O0wxrN26mxFjBFpk7.C', 'User 20', '222-20', 'user'),
(5, '3@1.com', '$2y$10$xRgcZOPV08itMtvR9310iuz4nS6XCTRssKjy7uPEMW8wmtuVv0FFO', 'User 3', '333', 'user'),
(7, '4@1.com', '$2y$10$lG/L58jGfDqNBx1Lfga24OVtfVcFoh2v8GTfi7Mv.i6kKhKTHnG72', 'user 4_new', 'address 4_new', 'user'),
(8, '1@1.com', '$2y$10$evEWJLdXY767iYbTV2QH0uDhOBd3xqmqHXW.4mqCQx9ET2Y75TRoO', '1', '1', 'user'),
(9, '5@5.com', '$2y$10$pgu.gSI4gfbNdiwj8C4dZe09k38ztZ2uBk8UhobzeY6dtUnQWgKOq', '5', '5', 'user'),
(10, '6@6.com', '$2y$10$545TxCqiFBAaP4IGbjUvVOE2eZliMPnnPSoZ6knGhb0wdvsclJe9W', '6', '6', 'user'),
(11, '7@7.com', '$2y$10$Mafk4cm4ohxdc5qBoZTtTuJaY2QkqaOjryf22erpOyCMB0bSanxcW', 'user7', '7', 'user'),
(13, 'admin@mail.com', '$2y$10$eKDol.Uor/6QBeKe4XQwnOs.HIAbkqoFXpG4dD2KxhPqYqea32Tm.', 'Admin', 'Admin', 'admin'),
(14, '11@1.com', '$2y$10$gJKU823DtqB5sRo7icA6weeV7VKaS8KvUcbgdKDO97NMzaj1.k4TO', 'User 11', '111222333', 'user');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`),
  ADD KEY `slug` (`slug`(191));

--
-- Индексы таблицы `category_description`
--
ALTER TABLE `category_description`
  ADD PRIMARY KEY (`category_id`,`language_id`);

--
-- Индексы таблицы `download`
--
ALTER TABLE `download`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `download_description`
--
ALTER TABLE `download_description`
  ADD PRIMARY KEY (`download_id`,`language_id`);

--
-- Индексы таблицы `language`
--
ALTER TABLE `language`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `name`
--
ALTER TABLE `name`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `order_download`
--
ALTER TABLE `order_download`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `order_product`
--
ALTER TABLE `order_product`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `page`
--
ALTER TABLE `page`
  ADD PRIMARY KEY (`id`),
  ADD KEY `slug` (`slug`(191));

--
-- Индексы таблицы `page_description`
--
ALTER TABLE `page_description`
  ADD PRIMARY KEY (`page_id`,`language_id`);

--
-- Индексы таблицы `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `slug` (`slug`(191));

--
-- Индексы таблицы `product_description`
--
ALTER TABLE `product_description`
  ADD PRIMARY KEY (`product_id`,`language_id`);

--
-- Индексы таблицы `product_download`
--
ALTER TABLE `product_download`
  ADD PRIMARY KEY (`product_id`,`download_id`);

--
-- Индексы таблицы `product_gallery`
--
ALTER TABLE `product_gallery`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `slider`
--
ALTER TABLE `slider`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `category`
--
ALTER TABLE `category`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT для таблицы `download`
--
ALTER TABLE `download`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT для таблицы `language`
--
ALTER TABLE `language`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `name`
--
ALTER TABLE `name`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT для таблицы `order_download`
--
ALTER TABLE `order_download`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT для таблицы `order_product`
--
ALTER TABLE `order_product`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT для таблицы `page`
--
ALTER TABLE `page`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT для таблицы `product`
--
ALTER TABLE `product`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT для таблицы `product_gallery`
--
ALTER TABLE `product_gallery`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT для таблицы `slider`
--
ALTER TABLE `slider`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT для таблицы `user`
--
ALTER TABLE `user`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
