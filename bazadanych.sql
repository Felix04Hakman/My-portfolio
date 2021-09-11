-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Czas generowania: 14 Sty 2019, 11:19
-- Wersja serwera: 10.1.36-MariaDB
-- Wersja PHP: 7.2.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
--
-- Baza danych: `portfolio`
--
CREATE DATABASE if not EXISTS `portfolio` ;


CREATE  TABLE `formularz`(
    `id` int PRIMARY  KEY  AUTO_INCREMENT ,
    `Imie` text,
     `Nazwisko` text,
      `Miasto` text

)ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Zrzut danych tabeli `formularz`
--

INSERT INTO `formularz` (`id`, `Imie`,`Nazwisko`,`Miasto`) VALUES
(1,'Jan', 'Nowak','Toruń') ,
(2,'Karolina','Wielka','Warszawa');

-- --------------------------------------------------------
--
-- Zrzut danych tabeli `ankieta_dane`
--

CREATE  TABLE `ankieta_dane`(
    `id` int PRIMARY  KEY auto_increment NOT NULL,
    `Kobieta` text,
     `Meżczyzna` text,
      `Wojewódzctwo` text,
      `Miasto` text

)ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Zrzut danych tabeli `ankieta_dane`
--
INSERT INTO `ankieta_dane` (`id`, `Kobieta`,`Meżczyzna`,`Wojewódzctwo`,`Miasto`) VALUES
(1,'Kobieta','','Mazowieckie','Płock'), 
(2,'','Meżczyzna','Małopolskie','Kraków');

-- --------------------------------------------------------