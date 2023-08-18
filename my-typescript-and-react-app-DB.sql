-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Czas generowania: 18 Sie 2023, 15:28
-- Wersja serwera: 5.7.39
-- Wersja PHP: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Baza danych: `my-typescript-and-react-app-DB`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `children`
--

CREATE TABLE `children` (
  `id` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'UUID()',
  `name` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL,
  `giftId` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Zrzut danych tabeli `children`
--

INSERT INTO `children` (`id`, `name`, `giftId`) VALUES
('06ac9c38-f04e-473b-8271-b3092fd31dce', 'Tesia', 'b21cc6b2-29f3-4a64-af4b-ff42ee62da89'),
('7b5e8bc5-5752-4fe1-9edd-7e1b4aeba068', 'Helenka', '9235a901-a026-4de1-a12d-b8c1c0c2a95d'),
('bb937ece-c04e-4945-b397-73d11290c5b5', 'Emilka', '9235a901-a026-4de1-a12d-b8c1c0c2a95d'),
('d57b6378-23fd-4f23-a179-20cb88bf4a60', 'Glorcia', 'a1c1d7f9-f9b2-4657-b8a6-98d5b467dace');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `gifts`
--

CREATE TABLE `gifts` (
  `id` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'UUID()',
  `name` varchar(55) COLLATE utf8mb4_unicode_ci NOT NULL,
  `count` int(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Zrzut danych tabeli `gifts`
--

INSERT INTO `gifts` (`id`, `name`, `count`) VALUES
('6e806e31-7b32-4c0b-8bb4-8c1857b81a53', 'lego friends', 10),
('9235a901-a026-4de1-a12d-b8c1c0c2a95d', 'klocki lego', 1000),
('a1c1d7f9-f9b2-4657-b8a6-98d5b467dace', 'lalka', 10),
('b21cc6b2-29f3-4a64-af4b-ff42ee62da89', 'miś', 5);

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `children`
--
ALTER TABLE `children`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK1` (`giftId`);

--
-- Indeksy dla tabeli `gifts`
--
ALTER TABLE `gifts`
  ADD PRIMARY KEY (`id`);

--
-- Ograniczenia dla zrzutów tabel
--

--
-- Ograniczenia dla tabeli `children`
--
ALTER TABLE `children`
  ADD CONSTRAINT `FK1` FOREIGN KEY (`giftId`) REFERENCES `gifts` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
