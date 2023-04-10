-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 10, 2023 at 01:30 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.0.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `archivemanagementsystemv3`
--

-- --------------------------------------------------------

--
-- Table structure for table `audits`
--

CREATE TABLE `audits` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `event` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `auditable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `auditable_id` bigint(20) UNSIGNED NOT NULL,
  `old_values` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `new_values` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` varchar(1023) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tags` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `audits`
--

INSERT INTO `audits` (`id`, `user_type`, `user_id`, `event`, `auditable_type`, `auditable_id`, `old_values`, `new_values`, `url`, `ip_address`, `user_agent`, `tags`, `created_at`, `updated_at`) VALUES
(1, 'App\\Models\\User', 1, 'deleted', 'App\\Models\\Capstone', 4, '{\"id\":4,\"groupname\":\"graop\",\"title\":\"swswswswsws\",\"abstract\":\"swswswswswswsw\",\"start_date\":null,\"xf1\":\"Graduated\",\"xf2\":\"UNDER DEVELOPMENT\",\"xf3\":\"2022 - 2022\",\"xf4\":null,\"xf5\":null,\"name\":null,\"path\":null,\"xf6\":null,\"xf7\":null,\"xf8\":null}', '[]', 'http://127.0.0.1:8000/api/delete_capstone/4', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', NULL, '2022-12-06 19:53:59', '2022-12-06 19:53:59'),
(2, 'App\\Models\\User', 1, 'created', 'App\\Models\\Capstone1', 5, '[]', '{\"id\":\"5\",\"capstone_id\":\"5\",\"status\":\"Working Cahapter 1,2,3\",\"xf1\":0,\"xf2\":\"PENDING\",\"xf3\":\"NOT YET, SET\"}', 'http://127.0.0.1:8000/api/create_capstone_proj/5', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', NULL, '2022-12-06 20:05:46', '2022-12-06 20:05:46'),
(3, 'App\\Models\\User', 1, 'created', 'App\\Models\\Capstone2', 5, '[]', '{\"id\":\"5\",\"status\":\"Under-Development\",\"capstone_id\":\"5\",\"xf1\":0,\"xf2\":\"PENDING\",\"xf3\":\"NOT YET, SET\"}', 'http://127.0.0.1:8000/api/create_capstone_proj/5', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', NULL, '2022-12-06 20:05:46', '2022-12-06 20:05:46'),
(4, 'App\\Models\\User', 1, 'created', 'App\\Models\\Capstone3', 5, '[]', '{\"id\":\"5\",\"capstone_id\":\"5\",\"status\":\"Pre-Documentation\",\"xf1\":0,\"xf2\":\"PENDING\",\"xf3\":\"NOT YET, SET\"}', 'http://127.0.0.1:8000/api/create_capstone_proj/5', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', NULL, '2022-12-06 20:05:46', '2022-12-06 20:05:46'),
(5, 'App\\Models\\User', 1, 'updated', 'App\\Models\\Capstone', 5, '{\"groupname\":\"BUKSU CAPSTONE ARCHIVING MANAGEMENT SYSTEM\",\"xf4\":null,\"name\":null}', '{\"groupname\":\"BUKSU CAPSTONE ARCHIVING MANAGEMENT SYSTEMM\",\"xf4\":\"null\",\"name\":\"AGREE\"}', 'http://127.0.0.1:8000/api/update_capstone/5', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', NULL, '2022-12-06 20:06:20', '2022-12-06 20:06:20'),
(6, 'App\\Models\\User', 1, 'created', 'App\\Models\\Capstone', 7, '[]', '{\"groupname\":\"tryyyyy\",\"title\":\"tryyyyy\",\"abstract\":\"tryyyyy\",\"xf3\":\"2022 - 2022\",\"xf1\":\"3rd year\",\"xf2\":\"UNDER DEVELOPMENT\",\"id\":7}', 'http://127.0.0.1:8000/api/add_capstone_project', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', NULL, '2022-12-08 04:06:42', '2022-12-08 04:06:42'),
(7, 'App\\Models\\User', 1, 'created', 'App\\Models\\Capstone1', 7, '[]', '{\"id\":\"7\",\"capstone_id\":\"7\",\"status\":\"Working Cahapter 1,2,3\",\"xf1\":0,\"xf2\":\"PENDING\",\"xf3\":\"NOT YET, SET\"}', 'http://127.0.0.1:8000/api/create_capstone_proj/7', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', NULL, '2022-12-08 04:07:37', '2022-12-08 04:07:37'),
(8, 'App\\Models\\User', 1, 'created', 'App\\Models\\Capstone2', 7, '[]', '{\"id\":\"7\",\"status\":\"Under-Development\",\"capstone_id\":\"7\",\"xf1\":0,\"xf2\":\"PENDING\",\"xf3\":\"NOT YET, SET\"}', 'http://127.0.0.1:8000/api/create_capstone_proj/7', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', NULL, '2022-12-08 04:07:37', '2022-12-08 04:07:37'),
(9, 'App\\Models\\User', 1, 'created', 'App\\Models\\Capstone3', 7, '[]', '{\"id\":\"7\",\"capstone_id\":\"7\",\"status\":\"Pre-Documentation\",\"xf1\":0,\"xf2\":\"PENDING\",\"xf3\":\"NOT YET, SET\"}', 'http://127.0.0.1:8000/api/create_capstone_proj/7', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', NULL, '2022-12-08 04:07:37', '2022-12-08 04:07:37'),
(10, 'App\\Models\\User', 1, 'updated', 'App\\Models\\Capstone', 7, '{\"abstract\":\"tryyyyy\",\"xf4\":null,\"name\":null}', '{\"abstract\":\"tryyyyycscscs\",\"xf4\":\"null\",\"name\":\"AGREE\"}', 'http://127.0.0.1:8000/api/update_capstone/7', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', NULL, '2022-12-08 04:07:50', '2022-12-08 04:07:50'),
(11, 'App\\Models\\User', 1, 'deleted', 'App\\Models\\Capstone', 7, '{\"id\":7,\"groupname\":\"tryyyyy\",\"title\":\"tryyyyy\",\"abstract\":\"tryyyyycscscs\",\"start_date\":null,\"xf1\":\"3rd year\",\"xf2\":\"UNDER DEVELOPMENT\",\"xf3\":\"2022 - 2022\",\"xf4\":\"null\",\"xf5\":null,\"name\":\"AGREE\",\"path\":null,\"xf6\":null,\"xf7\":null,\"xf8\":null}', '[]', 'http://127.0.0.1:8000/api/delete_capstone/7', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', NULL, '2022-12-08 05:27:10', '2022-12-08 05:27:10'),
(12, 'App\\Models\\User', 1, 'deleted', 'App\\Models\\Capstone1', 7, '{\"id\":7,\"capstone_id\":7,\"revise_manuscript\":null,\"action_done\":null,\"mou\":null,\"title_proposal_form\":null,\"adviser_appointmentform\":null,\"ppt\":null,\"recorded_proposal\":null,\"minutes\":null,\"gcash_ss_file\":null,\"acceptance_of_panel\":null,\"capstone_ocr\":null,\"status\":\"Working Cahapter 1,2,3\",\"propose_date\":null,\"xf1\":\"0\",\"xf2\":\"PENDING\",\"xf3\":\"NOT YET, SET\",\"minutes1\":null,\"xf4\":null,\"xf5\":null,\"xf6\":null}', '[]', 'http://127.0.0.1:8000/api/delete_capstone/7', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', NULL, '2022-12-08 05:27:10', '2022-12-08 05:27:10'),
(13, 'App\\Models\\User', 1, 'deleted', 'App\\Models\\Capstone2', 7, '{\"id\":7,\"capstone_id\":7,\"capstone_link\":null,\"proto_minutes\":null,\"proto_matrix\":null,\"ad_appointment_form\":null,\"gcash_payment\":null,\"acceptance_ss\":null,\"status\":\"Under-Development\",\"prototype_date\":null,\"xf1\":\"0\",\"xf2\":\"PENDING\",\"xf3\":\"NOT YET, SET\",\"minutes1\":null,\"xf4\":null,\"xf5\":null,\"xf6\":null}', '[]', 'http://127.0.0.1:8000/api/delete_capstone/7', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', NULL, '2022-12-08 05:27:10', '2022-12-08 05:27:10'),
(14, 'App\\Models\\User', 1, 'deleted', 'App\\Models\\Capstone3', 7, '{\"id\":7,\"capstone_id\":7,\"final_docu\":null,\"proto_minutes\":null,\"proto_matrix\":null,\"ppt\":null,\"software_demo\":null,\"gcash_payment\":null,\"acceptance_ss\":null,\"githublink\":null,\"status\":\"Pre-Documentation\",\"final_date\":null,\"xf1\":\"0\",\"xf2\":\"PENDING\",\"xf3\":\"NOT YET, SET\",\"minutes1\":null,\"xf4\":null,\"xf5\":null,\"xf6\":null}', '[]', 'http://127.0.0.1:8000/api/delete_capstone/7', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', NULL, '2022-12-08 05:27:10', '2022-12-08 05:27:10'),
(15, 'App\\Models\\User', 1, 'deleted', 'App\\Models\\Capstone', 6, '{\"id\":6,\"groupname\":\"not set\",\"title\":\"Machine Learning System\",\"abstract\":\"Machine Learning SystemMachine Learning SystemMachine Learning SystemMachine Learning SystemMachine Learning SystemMachine Learning SystemMachine Learning SystemMachine Learning SystemMachine Learning SystemMachine Learning SystemMachine Learning SystemMachine Learning SystemMachine Learning SystemMachine Learning SystemMachine Learning SystemMachine Learning SystemMachine Learning SystemMachine Learning SystemMachine Learning SystemMachine Learning SystemMachine Learning SystemMachine Learning SystemMachine Learning SystemMachine Learning SystemMachine Learning SystemMachine Learning SystemMachine Learning SystemMachine Learning SystemMachine Learning SystemMachine Learning SystemMachine Learning SystemMachine Learning SystemMachine Learning SystemMachine Learning SystemMachine Learning SystemMachine Learning SystemMachine Learning SystemMachine Learning SystemMachine Learning SystemMachine Learning SystemMachine Learning SystemMachine Learning SystemMachine Learning SystemMachine Learning SystemMachine Learning SystemMachine Learning SystemMachine Learning SystemMachine Learning SystemMachine Learning SystemMachine Learning SystemMachine Learning SystemMachine Learning SystemMachine Learning SystemMachine Learning SystemMachine Learning SystemMachine Learning SystemMachine Learning SystemMachine Learning SystemMachine Learning SystemMachine Learning SystemMachine Learning SystemMachine\",\"start_date\":\"2022-12-05\",\"xf1\":\"not set\",\"xf2\":\"UNDER DEVELOPMENT\",\"xf3\":null,\"xf4\":null,\"xf5\":null,\"name\":null,\"path\":null,\"xf6\":null,\"xf7\":null,\"xf8\":null}', '[]', 'http://127.0.0.1:8000/api/delete_capstone/6', '127.0.0.1', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Mobile Safari/537.36', NULL, '2022-12-08 09:21:23', '2022-12-08 09:21:23'),
(16, 'App\\Models\\User', 1, 'deleted', 'App\\Models\\Capstone1', 6, '{\"id\":6,\"capstone_id\":6,\"revise_manuscript\":null,\"action_done\":null,\"mou\":null,\"title_proposal_form\":null,\"adviser_appointmentform\":null,\"ppt\":null,\"recorded_proposal\":null,\"minutes\":null,\"gcash_ss_file\":null,\"acceptance_of_panel\":null,\"capstone_ocr\":null,\"status\":\"Working Cahapter 1,2,3\",\"propose_date\":null,\"xf1\":\"0\",\"xf2\":\"PENDING\",\"xf3\":\"NOT YET, SET\",\"minutes1\":null,\"xf4\":null,\"xf5\":null,\"xf6\":null}', '[]', 'http://127.0.0.1:8000/api/delete_capstone/6', '127.0.0.1', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Mobile Safari/537.36', NULL, '2022-12-08 09:21:23', '2022-12-08 09:21:23'),
(17, 'App\\Models\\User', 1, 'deleted', 'App\\Models\\Capstone2', 6, '{\"id\":6,\"capstone_id\":6,\"capstone_link\":null,\"proto_minutes\":null,\"proto_matrix\":null,\"ad_appointment_form\":null,\"gcash_payment\":null,\"acceptance_ss\":null,\"status\":\"Under-Development\",\"prototype_date\":null,\"xf1\":\"0\",\"xf2\":\"PENDING\",\"xf3\":\"NOT YET, SET\",\"minutes1\":null,\"xf4\":null,\"xf5\":null,\"xf6\":null}', '[]', 'http://127.0.0.1:8000/api/delete_capstone/6', '127.0.0.1', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Mobile Safari/537.36', NULL, '2022-12-08 09:21:23', '2022-12-08 09:21:23'),
(18, 'App\\Models\\User', 1, 'deleted', 'App\\Models\\Capstone3', 6, '{\"id\":6,\"capstone_id\":6,\"final_docu\":null,\"proto_minutes\":null,\"proto_matrix\":null,\"ppt\":null,\"software_demo\":null,\"gcash_payment\":null,\"acceptance_ss\":null,\"githublink\":null,\"status\":\"Pre-Documentation\",\"final_date\":null,\"xf1\":\"0\",\"xf2\":\"PENDING\",\"xf3\":\"NOT YET, SET\",\"minutes1\":null,\"xf4\":null,\"xf5\":null,\"xf6\":null}', '[]', 'http://127.0.0.1:8000/api/delete_capstone/6', '127.0.0.1', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Mobile Safari/537.36', NULL, '2022-12-08 09:21:23', '2022-12-08 09:21:23'),
(19, 'App\\Models\\User', 1, 'created', 'App\\Models\\Capstone', 8, '[]', '{\"groupname\":\"scscs\",\"title\":\"cscscs\",\"abstract\":\"123456789trwerty\",\"xf3\":\"2022 - 2022\",\"xf1\":\"3rd year\",\"xf2\":\"UNDER DEVELOPMENT\",\"id\":8}', 'http://127.0.0.1:8000/api/add_capstone_project', '127.0.0.1', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Mobile Safari/537.36', NULL, '2022-12-08 09:27:06', '2022-12-08 09:27:06'),
(20, 'App\\Models\\User', 1, 'created', 'App\\Models\\Capstone1', 8, '[]', '{\"id\":\"8\",\"capstone_id\":\"8\",\"status\":\"Working Cahapter 1,2,3\",\"xf1\":0,\"xf2\":\"PENDING\",\"xf3\":\"NOT YET, SET\"}', 'http://127.0.0.1:8000/api/create_capstone_proj/8', '127.0.0.1', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Mobile Safari/537.36', NULL, '2022-12-08 09:27:32', '2022-12-08 09:27:32'),
(21, 'App\\Models\\User', 1, 'created', 'App\\Models\\Capstone2', 8, '[]', '{\"id\":\"8\",\"status\":\"Under-Development\",\"capstone_id\":\"8\",\"xf1\":0,\"xf2\":\"PENDING\",\"xf3\":\"NOT YET, SET\"}', 'http://127.0.0.1:8000/api/create_capstone_proj/8', '127.0.0.1', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Mobile Safari/537.36', NULL, '2022-12-08 09:27:32', '2022-12-08 09:27:32'),
(22, 'App\\Models\\User', 1, 'created', 'App\\Models\\Capstone3', 8, '[]', '{\"id\":\"8\",\"capstone_id\":\"8\",\"status\":\"Pre-Documentation\",\"xf1\":0,\"xf2\":\"PENDING\",\"xf3\":\"NOT YET, SET\"}', 'http://127.0.0.1:8000/api/create_capstone_proj/8', '127.0.0.1', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Mobile Safari/537.36', NULL, '2022-12-08 09:27:32', '2022-12-08 09:27:32'),
(23, 'App\\Models\\User', 1, 'deleted', 'App\\Models\\Capstone', 8, '{\"id\":8,\"groupname\":\"scscs\",\"title\":\"cscscs\",\"abstract\":\"123456789trwerty\",\"start_date\":null,\"xf1\":\"3rd year\",\"xf2\":\"UNDER DEVELOPMENT\",\"xf3\":\"2022 - 2022\",\"xf4\":null,\"xf5\":null,\"name\":null,\"path\":null,\"xf6\":null,\"xf7\":null,\"xf8\":null}', '[]', 'http://127.0.0.1:8000/api/delete_capstone/8', '127.0.0.1', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Mobile Safari/537.36', NULL, '2022-12-08 09:27:42', '2022-12-08 09:27:42'),
(24, 'App\\Models\\User', 1, 'deleted', 'App\\Models\\Capstone1', 8, '{\"id\":8,\"capstone_id\":8,\"revise_manuscript\":null,\"action_done\":null,\"mou\":null,\"title_proposal_form\":null,\"adviser_appointmentform\":null,\"ppt\":null,\"recorded_proposal\":null,\"minutes\":null,\"gcash_ss_file\":null,\"acceptance_of_panel\":null,\"capstone_ocr\":null,\"status\":\"Working Cahapter 1,2,3\",\"propose_date\":null,\"xf1\":\"0\",\"xf2\":\"PENDING\",\"xf3\":\"NOT YET, SET\",\"minutes1\":null,\"xf4\":null,\"xf5\":null,\"xf6\":null}', '[]', 'http://127.0.0.1:8000/api/delete_capstone/8', '127.0.0.1', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Mobile Safari/537.36', NULL, '2022-12-08 09:27:42', '2022-12-08 09:27:42'),
(25, 'App\\Models\\User', 1, 'deleted', 'App\\Models\\Capstone2', 8, '{\"id\":8,\"capstone_id\":8,\"capstone_link\":null,\"proto_minutes\":null,\"proto_matrix\":null,\"ad_appointment_form\":null,\"gcash_payment\":null,\"acceptance_ss\":null,\"status\":\"Under-Development\",\"prototype_date\":null,\"xf1\":\"0\",\"xf2\":\"PENDING\",\"xf3\":\"NOT YET, SET\",\"minutes1\":null,\"xf4\":null,\"xf5\":null,\"xf6\":null}', '[]', 'http://127.0.0.1:8000/api/delete_capstone/8', '127.0.0.1', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Mobile Safari/537.36', NULL, '2022-12-08 09:27:42', '2022-12-08 09:27:42'),
(26, 'App\\Models\\User', 1, 'deleted', 'App\\Models\\Capstone3', 8, '{\"id\":8,\"capstone_id\":8,\"final_docu\":null,\"proto_minutes\":null,\"proto_matrix\":null,\"ppt\":null,\"software_demo\":null,\"gcash_payment\":null,\"acceptance_ss\":null,\"githublink\":null,\"status\":\"Pre-Documentation\",\"final_date\":null,\"xf1\":\"0\",\"xf2\":\"PENDING\",\"xf3\":\"NOT YET, SET\",\"minutes1\":null,\"xf4\":null,\"xf5\":null,\"xf6\":null}', '[]', 'http://127.0.0.1:8000/api/delete_capstone/8', '127.0.0.1', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Mobile Safari/537.36', NULL, '2022-12-08 09:27:42', '2022-12-08 09:27:42'),
(27, 'App\\Models\\User', 1, 'created', 'App\\Models\\Capstone', 9, '[]', '{\"groupname\":\"cscscc\",\"title\":\"cscscsc\",\"abstract\":\"cscscsc\",\"xf3\":\"2022 - 2022\",\"xf1\":\"3rd year\",\"xf2\":\"UNDER DEVELOPMENT\",\"id\":9}', 'http://127.0.0.1:8000/api/add_capstone_project', '127.0.0.1', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Mobile Safari/537.36', NULL, '2022-12-08 09:30:15', '2022-12-08 09:30:15'),
(28, 'App\\Models\\User', 1, 'deleted', 'App\\Models\\Capstone', 9, '{\"id\":9,\"groupname\":\"cscscc\",\"title\":\"cscscsc\",\"abstract\":\"cscscsc\",\"start_date\":null,\"xf1\":\"3rd year\",\"xf2\":\"UNDER DEVELOPMENT\",\"xf3\":\"2022 - 2022\",\"xf4\":null,\"xf5\":null,\"name\":null,\"path\":null,\"xf6\":null,\"xf7\":null,\"xf8\":null}', '[]', 'http://127.0.0.1:8000/api/delete_capstone/9', '127.0.0.1', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Mobile Safari/537.36', NULL, '2022-12-08 09:30:20', '2022-12-08 09:30:20'),
(29, 'App\\Models\\User', 1, 'deleted', 'App\\Models\\Capstone', 3, '{\"id\":3,\"groupname\":\"Atendance System\",\"title\":\"Atendance System\",\"abstract\":\"Atendance SystemAtendance SystemAtendance SystemAtendance SystemAtendance SystemAtendance SystemAtendance SystemAtendance SystemAtendance SystemAtendance SystemAtendance SystemAtendance SystemAtendance SystemAtendance SystemAtendance SystemAtendance SystemAtendance SystemAtendance SystemAtendance SystemAtendance SystemAtendance SystemAtendance SystemAtendance SystemAtendance SystemAtendance SystemAtendance SystemAtendance SystemAtendance SystemAtendance SystemAtendance SystemAtendance SystemAtendance SystemAtendance SystemAtendance SystemAtendance System\",\"start_date\":null,\"xf1\":\"Graduated\",\"xf2\":\"DEPLOYED\",\"xf3\":\"2018 - 2019\",\"xf4\":null,\"xf5\":null,\"name\":null,\"path\":null,\"xf6\":null,\"xf7\":null,\"xf8\":null}', '[]', 'http://127.0.0.1:8000/api/delete_capstone/3', '127.0.0.1', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Mobile Safari/537.36', NULL, '2022-12-08 09:40:23', '2022-12-08 09:40:23'),
(30, 'App\\Models\\User', 1, 'deleted', 'App\\Models\\Capstone1', 3, '{\"id\":3,\"capstone_id\":3,\"revise_manuscript\":null,\"action_done\":null,\"mou\":null,\"title_proposal_form\":null,\"adviser_appointmentform\":null,\"ppt\":null,\"recorded_proposal\":null,\"minutes\":null,\"gcash_ss_file\":null,\"acceptance_of_panel\":null,\"capstone_ocr\":null,\"status\":\"Working Cahapter 1,2,3\",\"propose_date\":null,\"xf1\":\"0\",\"xf2\":\"PENDING\",\"xf3\":\"NOT YET, SET\",\"minutes1\":null,\"xf4\":null,\"xf5\":null,\"xf6\":null}', '[]', 'http://127.0.0.1:8000/api/delete_capstone/3', '127.0.0.1', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Mobile Safari/537.36', NULL, '2022-12-08 09:40:23', '2022-12-08 09:40:23'),
(31, 'App\\Models\\User', 1, 'deleted', 'App\\Models\\Capstone2', 3, '{\"id\":3,\"capstone_id\":3,\"capstone_link\":null,\"proto_minutes\":null,\"proto_matrix\":null,\"ad_appointment_form\":null,\"gcash_payment\":null,\"acceptance_ss\":null,\"status\":\"Under-Development\",\"prototype_date\":null,\"xf1\":\"0\",\"xf2\":\"PENDING\",\"xf3\":\"NOT YET, SET\",\"minutes1\":null,\"xf4\":null,\"xf5\":null,\"xf6\":null}', '[]', 'http://127.0.0.1:8000/api/delete_capstone/3', '127.0.0.1', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Mobile Safari/537.36', NULL, '2022-12-08 09:40:23', '2022-12-08 09:40:23'),
(32, 'App\\Models\\User', 1, 'deleted', 'App\\Models\\Capstone3', 3, '{\"id\":3,\"capstone_id\":3,\"final_docu\":null,\"proto_minutes\":null,\"proto_matrix\":null,\"ppt\":null,\"software_demo\":null,\"gcash_payment\":null,\"acceptance_ss\":null,\"githublink\":null,\"status\":\"Pre-Documentation\",\"final_date\":null,\"xf1\":\"0\",\"xf2\":\"PENDING\",\"xf3\":\"NOT YET, SET\",\"minutes1\":null,\"xf4\":null,\"xf5\":null,\"xf6\":null}', '[]', 'http://127.0.0.1:8000/api/delete_capstone/3', '127.0.0.1', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Mobile Safari/537.36', NULL, '2022-12-08 09:40:23', '2022-12-08 09:40:23'),
(33, 'App\\Models\\User', 1, 'updated', 'App\\Models\\User', 3, '{\"mname\":\"Sison\",\"year\":null,\"photo\":null,\"password\":\"$2y$10$zP9u.O1LWRfAjuF.KDmlYOtw\\/0Yzl9D4u7ZZf5.AMVwaiF0hY.\\/0m\"}', '{\"mname\":\"Sisonn\",\"year\":\"null\",\"photo\":\"1670977306.jpeg\",\"password\":\"$2y$10$d0mpbHkOwQCZxN1MwSwgiOYWE852IYGJhrpnUM20kZ07PklhjVjFa\"}', 'http://127.0.0.1:8000/api/update_user/3', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', NULL, '2022-12-13 16:21:46', '2022-12-13 16:21:46'),
(34, NULL, NULL, 'created', 'App\\Models\\User', 139, '[]', '{\"name\":\"partial\",\"mname\":\"partial\",\"lname\":\"partial\",\"year\":\"not set\",\"gender\":\"not set\",\"uid\":\"partial@gmail.com\",\"email\":\"partial@gmail.com\",\"password\":\"$2y$10$1LS3364zUgHpMUVzmnexx.XWYyRy8JQA.MBfkq1pLW25AyzYHFP9e\",\"remember_token\":1,\"id\":139}', 'http://127.0.0.1:8000/register1', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', NULL, '2022-12-13 16:50:41', '2022-12-13 16:50:41'),
(35, 'App\\Models\\User', 139, 'created', 'App\\Models\\Capstone', 10, '[]', '{\"groupname\":\"not set\",\"title\":\"topic topic\",\"abstract\":\"topic topic topic topic topic topic topic topic topic topic topic topic topic topic topic topic topic topic topic topic topic topic topic topic topic topic\",\"start_date\":\"2022-12-14 8:51:1\",\"xf1\":\"not set\",\"xf2\":\"UNDER DEVELOPMENT\",\"id\":10}', 'http://127.0.0.1:8000/api/add_capstonetopic', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', NULL, '2022-12-13 16:51:02', '2022-12-13 16:51:02'),
(36, 'App\\Models\\User', 139, 'created', 'App\\Models\\Capstone1', 10, '[]', '{\"id\":\"10\",\"capstone_id\":\"10\",\"status\":\"Working Cahapter 1,2,3\",\"xf1\":0,\"xf2\":\"PENDING\",\"xf3\":\"NOT YET, SET\"}', 'http://127.0.0.1:8000/api/create_capstone_proj/10', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', NULL, '2022-12-13 16:51:07', '2022-12-13 16:51:07'),
(37, 'App\\Models\\User', 139, 'created', 'App\\Models\\Capstone2', 10, '[]', '{\"id\":\"10\",\"status\":\"Under-Development\",\"capstone_id\":\"10\",\"xf1\":0,\"xf2\":\"PENDING\",\"xf3\":\"NOT YET, SET\"}', 'http://127.0.0.1:8000/api/create_capstone_proj/10', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', NULL, '2022-12-13 16:51:07', '2022-12-13 16:51:07'),
(38, 'App\\Models\\User', 139, 'created', 'App\\Models\\Capstone3', 10, '[]', '{\"id\":\"10\",\"capstone_id\":\"10\",\"status\":\"Pre-Documentation\",\"xf1\":0,\"xf2\":\"PENDING\",\"xf3\":\"NOT YET, SET\"}', 'http://127.0.0.1:8000/api/create_capstone_proj/10', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', NULL, '2022-12-13 16:51:07', '2022-12-13 16:51:07'),
(39, 'App\\Models\\User', 1, 'deleted', 'App\\Models\\Capstone', 10, '{\"id\":10,\"groupname\":\"not set\",\"title\":\"topic topic\",\"abstract\":\"topic topic topic topic topic topic topic topic topic topic topic topic topic topic topic topic topic topic topic topic topic topic topic topic topic topic\",\"start_date\":\"2022-12-14\",\"xf1\":\"not set\",\"xf2\":\"UNDER DEVELOPMENT\",\"xf3\":null,\"xf4\":null,\"xf5\":null,\"name\":null,\"path\":null,\"xf6\":null,\"xf7\":null,\"xf8\":null}', '[]', 'http://127.0.0.1:8000/api/delete_capstone/10', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', NULL, '2022-12-13 23:53:19', '2022-12-13 23:53:19'),
(40, 'App\\Models\\User', 1, 'deleted', 'App\\Models\\Capstone1', 10, '{\"id\":10,\"capstone_id\":10,\"revise_manuscript\":null,\"action_done\":null,\"mou\":null,\"title_proposal_form\":null,\"adviser_appointmentform\":null,\"ppt\":null,\"recorded_proposal\":null,\"minutes\":null,\"gcash_ss_file\":null,\"acceptance_of_panel\":null,\"capstone_ocr\":null,\"status\":\"Working Cahapter 1,2,3\",\"propose_date\":null,\"xf1\":\"0\",\"xf2\":\"PENDING\",\"xf3\":\"NOT YET, SET\",\"minutes1\":null,\"xf4\":null,\"xf5\":null,\"xf6\":null}', '[]', 'http://127.0.0.1:8000/api/delete_capstone/10', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', NULL, '2022-12-13 23:53:19', '2022-12-13 23:53:19'),
(41, 'App\\Models\\User', 1, 'deleted', 'App\\Models\\Capstone2', 10, '{\"id\":10,\"capstone_id\":10,\"capstone_link\":null,\"proto_minutes\":null,\"proto_matrix\":null,\"ad_appointment_form\":null,\"gcash_payment\":null,\"acceptance_ss\":null,\"status\":\"Under-Development\",\"prototype_date\":null,\"xf1\":\"0\",\"xf2\":\"PENDING\",\"xf3\":\"NOT YET, SET\",\"minutes1\":null,\"xf4\":null,\"xf5\":null,\"xf6\":null}', '[]', 'http://127.0.0.1:8000/api/delete_capstone/10', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', NULL, '2022-12-13 23:53:19', '2022-12-13 23:53:19'),
(42, 'App\\Models\\User', 1, 'deleted', 'App\\Models\\Capstone3', 10, '{\"id\":10,\"capstone_id\":10,\"final_docu\":null,\"proto_minutes\":null,\"proto_matrix\":null,\"ppt\":null,\"software_demo\":null,\"gcash_payment\":null,\"acceptance_ss\":null,\"githublink\":null,\"status\":\"Pre-Documentation\",\"final_date\":null,\"xf1\":\"0\",\"xf2\":\"PENDING\",\"xf3\":\"NOT YET, SET\",\"minutes1\":null,\"xf4\":null,\"xf5\":null,\"xf6\":null}', '[]', 'http://127.0.0.1:8000/api/delete_capstone/10', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', NULL, '2022-12-13 23:53:19', '2022-12-13 23:53:19'),
(43, 'App\\Models\\User', 1, 'created', 'App\\Models\\Capstone', 11, '[]', '{\"groupname\":\"INFOTRUCK\",\"title\":\"INFOTRUCK: AN E-LOGISTICS TRUCKING FINDER WITH SEARCH\\r\\nOPTIMIZATION\",\"abstract\":\"ABSTRACT\\r\\n\\r\\nPeople are more into delivery vehicles like trucks carrying various things may\\r\\nt be big or small and near or far. Transportation has a large impact on a comparny\\r\\nofitability. There are several problems identified when using the manual system in\\r\\nrucking transactions. Problems existing in this business such as overdue and inaccurate\\r\\nnformation, inadequate services, and high product damage rates. The current trucking\\r\\n\\r\\nm has redundan vhere data cause by the manual system which uses paper to\\r\\nfill the information. Data is also not being kept in a secure location. Information lost is\\r\\ncommon by using a manual system. For the solution of the problem, InfoTruck is\\r\\ndeveloped to manage the operation of the transportation in a matter of creating\\r\\ntransaction process. Data will be stored in a database. To develop this web-application\\r\\nRapid Application Development (RAD) model had been chosen as a methodology\\r\\nwhich outlined the required functionalities of the system.To evaluate the system, it\\r\\ncould be calculated all of the average namely usability, user interface, functionality\\r\\nand performance to know whether the system is acceptable or not acceptable. After the\\r\\nuccessful evaluation (see table 4.15) the system is acceptable. InfoTruck is a web-\\r\\nbased application system that can help the owner to publish their business and increase\\r\\nprofits, while the customers do not struggle to search trucking services to the nearest\\r\\narea\\r\\nKeywords: Transportation, Trucking System, Web-Application, RAD\",\"xf3\":\"2018 - 2019\",\"xf1\":\"Graduated\",\"xf2\":\"DEPLOYED\",\"id\":11}', 'http://127.0.0.1:8000/api/add_capstone_project', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', NULL, '2022-12-13 23:58:54', '2022-12-13 23:58:54'),
(44, 'App\\Models\\User', 1, 'deleted', 'App\\Models\\Capstone', 5, '{\"id\":5,\"groupname\":\"BUKSU CAPSTONE ARCHIVING MANAGEMENT SYSTEMM\",\"title\":\"BUKSU CAPSTONE ARCHIVING MANAGEMENT SYSTEM\",\"abstract\":\"BUKSU CAPSTONE ARCHIVING MANAGEMENT SYSTEMBUKSU CAPSTONE ARCHIVING MANAGEMENT SYSTEMBUKSU CAPSTONE ARCHIVING MANAGEMENT SYSTEMBUKSU CAPSTONE ARCHIVING MANAGEMENT SYSTEMBUKSU CAPSTONE ARCHIVING MANAGEMENT SYSTEM\",\"start_date\":null,\"xf1\":\"4th year\",\"xf2\":\"UNDER DEVELOPMENT\",\"xf3\":\"2021 - 2022\",\"xf4\":\"null\",\"xf5\":null,\"name\":\"AGREE\",\"path\":null,\"xf6\":null,\"xf7\":null,\"xf8\":null}', '[]', 'http://127.0.0.1:8000/api/delete_capstone/5', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', NULL, '2022-12-14 00:00:16', '2022-12-14 00:00:16'),
(45, 'App\\Models\\User', 1, 'deleted', 'App\\Models\\Capstone1', 5, '{\"id\":5,\"capstone_id\":5,\"revise_manuscript\":null,\"action_done\":null,\"mou\":null,\"title_proposal_form\":null,\"adviser_appointmentform\":null,\"ppt\":null,\"recorded_proposal\":null,\"minutes\":null,\"gcash_ss_file\":null,\"acceptance_of_panel\":null,\"capstone_ocr\":null,\"status\":\"Working Cahapter 1,2,3\",\"propose_date\":null,\"xf1\":\"0\",\"xf2\":\"PENDING\",\"xf3\":\"NOT YET, SET\",\"minutes1\":null,\"xf4\":null,\"xf5\":null,\"xf6\":null}', '[]', 'http://127.0.0.1:8000/api/delete_capstone/5', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', NULL, '2022-12-14 00:00:16', '2022-12-14 00:00:16'),
(46, 'App\\Models\\User', 1, 'deleted', 'App\\Models\\Capstone2', 5, '{\"id\":5,\"capstone_id\":5,\"capstone_link\":null,\"proto_minutes\":null,\"proto_matrix\":null,\"ad_appointment_form\":null,\"gcash_payment\":null,\"acceptance_ss\":null,\"status\":\"Under-Development\",\"prototype_date\":null,\"xf1\":\"0\",\"xf2\":\"PENDING\",\"xf3\":\"NOT YET, SET\",\"minutes1\":null,\"xf4\":null,\"xf5\":null,\"xf6\":null}', '[]', 'http://127.0.0.1:8000/api/delete_capstone/5', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', NULL, '2022-12-14 00:00:16', '2022-12-14 00:00:16'),
(47, 'App\\Models\\User', 1, 'deleted', 'App\\Models\\Capstone3', 5, '{\"id\":5,\"capstone_id\":5,\"final_docu\":null,\"proto_minutes\":null,\"proto_matrix\":null,\"ppt\":null,\"software_demo\":null,\"gcash_payment\":null,\"acceptance_ss\":null,\"githublink\":null,\"status\":\"Pre-Documentation\",\"final_date\":null,\"xf1\":\"0\",\"xf2\":\"PENDING\",\"xf3\":\"NOT YET, SET\",\"minutes1\":null,\"xf4\":null,\"xf5\":null,\"xf6\":null}', '[]', 'http://127.0.0.1:8000/api/delete_capstone/5', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', NULL, '2022-12-14 00:00:16', '2022-12-14 00:00:16'),
(48, 'App\\Models\\User', 1, 'created', 'App\\Models\\Capstone', 12, '[]', '{\"groupname\":\"BUKSU VIRTUAL TOUR\",\"title\":\"BUKSU VIRTUAL TOUR\",\"abstract\":\"nullVirtual tours have been invented for the past 52 years and yet its innovation is\\r\\nstarting to begin. Universities, Institutions, and other commercialize companies who\\r\\nhave large areas had stick their guidance with a primitive way of guiding their guests\\r\\nor students by such old maps. This study aims to develop BukSU Virtual Tours to guide\\r\\ntude! guests, tourist on where they want to go, be it anywhere or everywhere within\\r\\nt npus setting. This system f es on the areas of BukSU with the main colleges\\r\\nand the most frequer ted areas. The itself system would bring BukSU awareness\\r\\nnd its existence for not only locally, but internationally. Because this is the next step\\r\\nr changing the future of our Institution to a modernized and futuristic society\\r\\nWith the results of the agile method, the researchers understood the conceptual\\r\\nframework of virtual tours and its high technological based. As well as the direct results\\r\\nof the panoramic images that shows the environment of the university campus. As a\\r\\nconclusion, the system has met its stakeholders\\u2019 requirements as verified and validated\\r\\nby certificated approvals. The system was also endorsed by the Accrediting Agency of\\r\\nChartered Colleges and Universities in the Philippines (AACCUP) division for\\r\\nenhancing the locator map level, considering that the system surpasses the level of\\r\\nrequirements. There was a number of recommendations that was presented towards the\\r\\nresearchers. An example, was that the system should allow an admin to enable a simple\\r\\ncditing feature that does not require for any employee to understand the complex\\r\\nalgorithm.\\r\\n\\r\\nKeywords: Virtual, Virtual Tour, Agile Method, Locator Map, Complex Algorithm\",\"xf3\":\"2018 - 2019\",\"xf1\":\"Graduated\",\"xf2\":\"DEPLOYED\",\"id\":12}', 'http://127.0.0.1:8000/api/add_capstone_project', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', NULL, '2022-12-14 00:12:28', '2022-12-14 00:12:28'),
(49, 'App\\Models\\User', 1, 'created', 'App\\Models\\Capstone', 13, '[]', '{\"groupname\":\"RESEARCH RECORD\\r\\nMANAGEMENT SYSTEM\",\"title\":\"INFORMATION TECHNOLOGY DEPARTMENT\\r\\nBUKIDNON STATE UNIVERSITY RESEARCH RECORD\\r\\nMANAGEMENT SYSTEM\",\"abstract\":\"nullBukidnon State University Research Record Management System\\r\\nABSTRACT\\r\\n\\r\\nMost students in every universities and college come in a point\\r\\nto come up with a research study as requirements to their degree. As time\\r\\npass by, tracking and managing those files and data becomes an issue. At\\r\\nthe same time, real-time collaboration between faculty researchers and\\r\\nResearch Unit in finding research documents status, research created\\r\\ndocuments and research comments should be implemented. The purpose\\r\\nof this study is to identify the best and suitable methodology, components\\r\\nand algorithm that will aid the problem. Also, to produce a record\\r\\nmanagement system for researches made by the students and the faculty\\r\\nof Bukidnon State University (BukSU) with real-time collaboration tools\\r\\nbetween faculty and the Research Unit. Bukidnon State University\\r\\nResearch Record Management System was developed to address those\\r\\nproblems. The waterfall SDLC model was used to develop the system. The\\r\\nsystem was implemented on Web Application using PHP as the back-end\\r\\nlanguage, HTML and JQuery as the front-end language, FTP server as\\r\\ndocument storage and MySQL database as data s d\\r\\nsystem was ;,a,\\u2018*u\'t\\u2018. through hand 2di b et\\r\\nusers. A n\\ufb01\\\\ of 30 res;\\r\\nevaluated the syste\\r\\nReliability, aoverall acceptability of the system which shows that the Bukidnon State\\r\\nUniversity Research Record Management System is highly accepted by its\\r\\nrespondents.\\r\\nKeywords: Research Record Management System, Document Tracking,\\r\\nReal-Time Collaboration Tools\",\"xf3\":\"2018 - 2019\",\"xf1\":\"Graduated\",\"xf2\":\"UNIMPLEMENTED\",\"id\":13}', 'http://127.0.0.1:8000/api/add_capstone_project', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', NULL, '2022-12-14 00:16:37', '2022-12-14 00:16:37'),
(50, 'App\\Models\\User', 1, 'created', 'App\\Models\\Capstone', 14, '[]', '{\"groupname\":\"FARM BUDDY\",\"title\":\"FARM BUDDY: A Farm Crop Marketing System\",\"abstract\":\"Farming plays an important role in the Philippines, over the last decade it\\r\\nhelped farmers to sustain their needs. But because of modernization farmers had\\r\\nto adjust and compete with the large numbers of competitors. Today they depend\\r\\nupon local traders and middleman for a disposal of their farm produce which is\\r\\nsold at a throw away price. This study aims to develop FarmBuddy: A Farm\\r\\nCrop Marketing System that will support farmers for an easy and faster\\r\\ncommunication with various potential buyers, with the three features Advanced\\r\\nCrop Reservation System, User and Crop Searching and Crop Mapping (using\\r\\nGoogle maps API). An interview to various farmers and farm related business\\r\\nentrepreneurs was conducted here in Malaybalay during the requirements\\r\\nanalysis phase. In the development process an Agile SDLC model was used. As\\r\\na result, 80% of the evaluator\\u2019s response confirmed that they agreed vo the\\r\\nfunctionality and usability of the system. Overall, the results indicate that there\\r\\nis an enormous need for an application which will provide more opportunities for\\r\\nfarmers and also the buyers.\\r\\nKeywords: Farm Buddy, Ionic, Firebase, Agile methodology\",\"xf3\":\"2022 - 2022\",\"xf1\":\"Graduated\",\"xf2\":\"DEPLOYED\",\"id\":14}', 'http://127.0.0.1:8000/api/add_capstone_project', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', NULL, '2022-12-14 00:33:59', '2022-12-14 00:33:59'),
(51, 'App\\Models\\User', 1, 'created', 'App\\Models\\Capstone', 15, '[]', '{\"groupname\":\"Haus Malibu\",\"title\":\"A Static 3D Modeling using Sketch Up for\\r\\nHaus Malibu Hotel with Online Reservation\\r\\nSystem\",\"abstract\":\"nullThis study aims to develop and design an on-line hotel reservation and\\r\\nmanagement system, including room and conference hall reservation with 3D\\r\\nmodel for the Haus Malibu of Malaybalay City, Bukidnon. It presents a user-\\r\\nfriendly feature that is easy to use by the receptionist on the online reservation\\r\\nsystem, or the online clients. Likewise, it will provide supplement material in\\r\\ntheir front work area operation course. The researchers used the Prototyping,\\r\\nSketchup for modeling and Laravel Web Devel?a_n;%t as the programming\\r\\nlanguage. The developed software served as a tool\\u00e9fg:r{ti\\u2018he hotel owner and front\\r\\ndesk of Haus Malibu Hotel to operate an online hotel reservation system easier.\\r\\nBased on the tabulated response of the responc :;;zzz;\\u201c \\\"\\u2019ielaped software\\r\\nwas an effective aid for the users in managing the basic operations of hotel\\r\\nreservation system to their guest o ecurity i\\r\\nensure protection and mon ela o\\r\\nKeywords\\r\\nOnline reservation, conference hall reservation, room reservation, haus malibu, online reservation system.\",\"xf3\":\"2016 - 2017\",\"xf1\":\"Graduated\",\"xf2\":\"DEPLOYED\",\"id\":15}', 'http://127.0.0.1:8000/api/add_capstone_project', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', NULL, '2022-12-14 00:48:36', '2022-12-14 00:48:36'),
(52, 'App\\Models\\User', 1, 'created', 'App\\Models\\Capstone', 16, '[]', '{\"groupname\":\"Man for the Job\",\"title\":\"Man for the Job: A web\\r\\napplication using lonic Framework for local laborers in Malaybalay City, Bukidnon\",\"abstract\":\"Unemployment is one of the major economic problems nowadays. It needs a solution to\\r\\nreduce unemployment in our economy. With the use of technology, the researcher can help to solve this problem especially to those people who are willing to have a job. This study aims to develop a web application \\u201cMan for the Job\\u201d to increase the employment of the Local Laborers  in Malaybalay City. This study will help those laborers of Malaybalay City to support their  families and this will give them huge opportunities to get a job. This will be the most ideal\\r\\n approach to find the right man for the job you need. The researchers make utilize of existing\\r\\nliterary works to justify their perceptions and thought for this study. In order to achieve this\\r\\nstudy, the researchers use System Development Life Cycle (SDLC) and lonic Framework to\\r\\nmeet the criteria of internal consistency and e\\ufb01eetivmaagd the development of the\\r\\napplication. Thus, the researcher conducted an evaluation and it was tested in terms of response\\r\\ntime, usability, performance and its functionality. \\r\\n\\r\\nKeywords: Man for the Job\",\"xf3\":\"2022 - 2022\",\"xf1\":\"Graduated\",\"xf2\":\"DEPLOYED\",\"id\":16}', 'http://127.0.0.1:8000/api/add_capstone_project', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', NULL, '2022-12-14 01:13:05', '2022-12-14 01:13:05'),
(53, 'App\\Models\\User', 1, 'created', 'App\\Models\\Capstone', 17, '[]', '{\"groupname\":\"HOTEL RESERVATION\",\"title\":\"ONLINE HOTEL RESERVATION AND MANAGEMENT SYSTEM\\r\\nFOR BALAI HA BUKSU\",\"abstract\":\"This study is about the conceptualization of an online reservation system for\\r\\n\\r\\nRalai Ha BukSU. It aims to help the hotel to enhance their reservation process and\\r\\nmanagement of room inventories. Thus, the system is set to develop a more\\r\\nconvenient, reliable, accurate and a better system for managing the hotel\\u2019s operation.\\r\\nThe researchers used the Modified Waterfall Methodology during the development\\r\\nphase. This ensures the researchers to build the system very carefully. The first phase\\r\\nstarts with the requirement analysis in which data gathering comes to motion,\\r\\nfollowed by the specification and design, implementation, testing, deployment and\\r\\nmaintenance. The survey results attest that the system\\ufb01lnctmns efficiently, usably and reliably. Thus, the study proves that the w%\\u2018n\\u00e9\\ufb01,f improve the hotel\\u2019s operation especially in online reservation and mmagw;;m inventories.\\r\\n\\r\\n\\r\\n Keywords: automation, Balai Ha BukSU, hotel, inventory, online reservation\",\"xf3\":\"2018 - 2019\",\"xf1\":\"Graduated\",\"xf2\":\"DEPLOYED\",\"id\":17}', 'http://127.0.0.1:8000/api/add_capstone_project', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', NULL, '2022-12-14 01:16:49', '2022-12-14 01:16:49'),
(54, 'App\\Models\\User', 1, 'created', 'App\\Models\\Capstone', 18, '[]', '{\"groupname\":\"QUICK RESPONSE\",\"title\":\"QUICK RESPONSE CODE MOBILE APPLICATION FOR\\r\\nSUBCONTRACTOR\",\"abstract\":\"nullConstruction firms build infrastructures with strong foundations and safety\\r\\n\\r\\nmeasures which is their essence. Managing manual processes from attendance and\\r\\ncollecting the daily time report for every Timekeeper is very inefficient. Furthermore,\\r\\nSubcontractor would need Construction Workers attendance and they are obliged to\\r\\ngive an accurate attendance to the Construction Workers. As results, the researchers\\r\\nproposed to develop a system, namely SubConic System it is composed of a mobile\\r\\napplication that is mainly used by the Timekeeper and a web-based application that is\\r\\nalso used by the Subcontractor. This application will digitize its manual processes in\\r\\norder to give accuracy and improve its work capability through time efficiency. The\\r\\nstudy used Waterfall methodology in order to develop the desired system. This study\\r\\nwas conducted at 5G Subcontractor. Success in developing a system will not define\\r\\nour accomplishments. Thus, we did a survey to determine if we truly meet the\\r\\nobjectives of the study. The survey was done in a project at Malaybalay City,\\r\\n\\r\\nBukidnon. Based from the result of this study, the system had a very high success rate\\r\\nin functionality, reliability and usability. Therefore, the system effectively automates\\r\\nthe attendance generation of the workers and it generates an accurate DTR. However,\\r\\nthe system can be improved by the future researchers by adding more features,\\r\\nenhancing the overa. he system and generating the salary report of the construction\\r\\nconstruction workers.\\r\\n\\r\\nKeywords: OR Code, Automated Attendance, Mobile Timekeeping, Mobile Attendance Monitoring\",\"xf3\":\"2018 - 2019\",\"xf1\":\"Graduated\",\"xf2\":\"UNIMPLEMENTED\",\"id\":18}', 'http://127.0.0.1:8000/api/add_capstone_project', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', NULL, '2022-12-14 01:56:49', '2022-12-14 01:56:49'),
(55, 'App\\Models\\User', 3, 'created', 'App\\Models\\Capstone1', 18, '[]', '{\"id\":\"18\",\"capstone_id\":\"18\",\"status\":\"Working Cahapter 1,2,3\",\"xf1\":0,\"xf2\":\"PENDING\",\"xf3\":\"NOT YET, SET\"}', 'http://127.0.0.1:8000/api/create_capstone_proj/18', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', NULL, '2022-12-14 02:21:33', '2022-12-14 02:21:33'),
(56, 'App\\Models\\User', 3, 'created', 'App\\Models\\Capstone2', 18, '[]', '{\"id\":\"18\",\"status\":\"Under-Development\",\"capstone_id\":\"18\",\"xf1\":0,\"xf2\":\"PENDING\",\"xf3\":\"NOT YET, SET\"}', 'http://127.0.0.1:8000/api/create_capstone_proj/18', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', NULL, '2022-12-14 02:21:33', '2022-12-14 02:21:33'),
(57, 'App\\Models\\User', 3, 'created', 'App\\Models\\Capstone3', 18, '[]', '{\"id\":\"18\",\"capstone_id\":\"18\",\"status\":\"Pre-Documentation\",\"xf1\":0,\"xf2\":\"PENDING\",\"xf3\":\"NOT YET, SET\"}', 'http://127.0.0.1:8000/api/create_capstone_proj/18', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', NULL, '2022-12-14 02:21:33', '2022-12-14 02:21:33'),
(58, NULL, NULL, 'created', 'App\\Models\\User', 140, '[]', '{\"name\":\"Johnrey\",\"mname\":\"C.\",\"lname\":\"Victor\",\"year\":\"not set\",\"gender\":\"not set\",\"uid\":\"12345678\",\"email\":\"12345678@gmail.com\",\"password\":\"$2y$10$48KQSnkVR4g24jeeyrtS\\/u9DsN6iPMBEhijioqCnE\\/2tG7eYLr0S6\",\"remember_token\":1,\"id\":140}', 'http://127.0.0.1:8000/register1', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', NULL, '2022-12-14 06:08:50', '2022-12-14 06:08:50'),
(59, 'App\\Models\\User', 140, 'created', 'App\\Models\\Capstone1', 15, '[]', '{\"id\":\"15\",\"capstone_id\":\"15\",\"status\":\"Working Cahapter 1,2,3\",\"xf1\":0,\"xf2\":\"PENDING\",\"xf3\":\"NOT YET, SET\"}', 'http://127.0.0.1:8000/api/create_capstone_proj/15', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', NULL, '2022-12-14 06:09:32', '2022-12-14 06:09:32'),
(60, 'App\\Models\\User', 140, 'created', 'App\\Models\\Capstone2', 15, '[]', '{\"id\":\"15\",\"status\":\"Under-Development\",\"capstone_id\":\"15\",\"xf1\":0,\"xf2\":\"PENDING\",\"xf3\":\"NOT YET, SET\"}', 'http://127.0.0.1:8000/api/create_capstone_proj/15', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', NULL, '2022-12-14 06:09:32', '2022-12-14 06:09:32'),
(61, 'App\\Models\\User', 140, 'created', 'App\\Models\\Capstone3', 15, '[]', '{\"id\":\"15\",\"capstone_id\":\"15\",\"status\":\"Pre-Documentation\",\"xf1\":0,\"xf2\":\"PENDING\",\"xf3\":\"NOT YET, SET\"}', 'http://127.0.0.1:8000/api/create_capstone_proj/15', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', NULL, '2022-12-14 06:09:32', '2022-12-14 06:09:32');
INSERT INTO `audits` (`id`, `user_type`, `user_id`, `event`, `auditable_type`, `auditable_id`, `old_values`, `new_values`, `url`, `ip_address`, `user_agent`, `tags`, `created_at`, `updated_at`) VALUES
(62, 'App\\Models\\User', 140, 'created', 'App\\Models\\Capstone', 19, '[]', '{\"groupname\":\"Archiving Management\",\"title\":\"Archiving Management\",\"abstract\":\"This study presents the development of an online web-based Archiving Management System of capstone projects for BukSU IT department which serves as a solution to the users in order to avoid the repetition of proposals and analyze any gaps in their capstone projects. The system enables the user to digitize the capstone project in the BukSU IT department by using Optical Character Recognition technology. It also captures documents in each phase of the study. The system will be used to monitor and maintain the records of all capstone projects for Information Technology graduate and undergraduate students at Bukidnon State University. In addition to the following: To the teachers. This study helps the teachers of Bukidnon State University (BukSU) IT Department have a reference when suggesting new ideas for the students\\u2019 project proposals. To the students: This study provides BukSU IT students with a reference on previous projects that have already been created. This also helps them acquire the specific documents that they need without visiting the library. The Modified Waterfall Process Model was used to develop the system. The front end is the gate for developing the system, and the proponent used Vue.js 3, Bootstrap 5, CSS, and HTML.  And for the back-end the proponents used Laravel version 9 a PHP framework for software development mainly PHP version 8.1.2 And mariaDB version 10.4.22 was used as a database for storing data. Lastly, testing has been conducted to find errors and make suggestions. Then proceeded with the operations in order for the system to be fully approved and ready for production.\\r\\nThe evaluation of this system consisted of twenty one(21) questions based on the ISO\\/IEC 25010. The testing findings\' grand mean is 3.8978, indicating that the web-app is scored positively overall. The respondents are satisfied with the application, according to the grand mean of the testing results\\r\\nKeywords: Web-based Archiving Management System, Optical Character Recognition (OCR), Capstone Project, Capstone Progress Monitoring, Digitizing Physical Documents, Modified Waterfall Process Model, Topic Suggestion, Capstone Rating.\",\"xf3\":\"2021 - 2022\",\"xf1\":\"3rd year\",\"xf2\":\"UNDER DEVELOPMENT\",\"id\":19}', 'http://127.0.0.1:8000/api/add_capstone_project', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', NULL, '2022-12-14 06:51:51', '2022-12-14 06:51:51'),
(63, 'App\\Models\\User', 140, 'created', 'App\\Models\\Capstone1', 19, '[]', '{\"id\":\"19\",\"capstone_id\":\"19\",\"status\":\"Working Cahapter 1,2,3\",\"xf1\":0,\"xf2\":\"PENDING\",\"xf3\":\"NOT YET, SET\"}', 'http://127.0.0.1:8000/api/create_capstone_proj/19', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', NULL, '2022-12-14 06:54:02', '2022-12-14 06:54:02'),
(64, 'App\\Models\\User', 140, 'created', 'App\\Models\\Capstone2', 19, '[]', '{\"id\":\"19\",\"status\":\"Under-Development\",\"capstone_id\":\"19\",\"xf1\":0,\"xf2\":\"PENDING\",\"xf3\":\"NOT YET, SET\"}', 'http://127.0.0.1:8000/api/create_capstone_proj/19', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', NULL, '2022-12-14 06:54:02', '2022-12-14 06:54:02'),
(65, 'App\\Models\\User', 140, 'created', 'App\\Models\\Capstone3', 19, '[]', '{\"id\":\"19\",\"capstone_id\":\"19\",\"status\":\"Pre-Documentation\",\"xf1\":0,\"xf2\":\"PENDING\",\"xf3\":\"NOT YET, SET\"}', 'http://127.0.0.1:8000/api/create_capstone_proj/19', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', NULL, '2022-12-14 06:54:02', '2022-12-14 06:54:02'),
(66, 'App\\Models\\User', 1, 'deleted', 'App\\Models\\Capstone', 19, '{\"id\":19,\"groupname\":\"Archiving Management\",\"title\":\"Archiving Management\",\"abstract\":\"This study presents the development of an online web-based Archiving Management System of capstone projects for BukSU IT department which serves as a solution to the users in order to avoid the repetition of proposals and analyze any gaps in their capstone projects. The system enables the user to digitize the capstone project in the BukSU IT department by using Optical Character Recognition technology. It also captures documents in each phase of the study. The system will be used to monitor and maintain the records of all capstone projects for Information Technology graduate and undergraduate students at Bukidnon State University. In addition to the following: To the teachers. This study helps the teachers of Bukidnon State University (BukSU) IT Department have a reference when suggesting new ideas for the students\\u2019 project proposals. To the students: This study provides BukSU IT students with a reference on previous projects that have already been created. This also helps them acquire the specific documents that they need without visiting the library. The Modified Waterfall Process Model was used to develop the system. The front end is the gate for developing the system, and the proponent used Vue.js 3, Bootstrap 5, CSS, and HTML.  And for the back-end the proponents used Laravel version 9 a PHP framework for software development mainly PHP version 8.1.2 And mariaDB version 10.4.22 was used as a database for storing data. Lastly, testing has been conducted to find errors and make suggestions. Then proceeded with the operations in order for the system to be fully approved and ready for production.\\r\\nThe evaluation of this system consisted of twenty one(21) questions based on the ISO\\/IEC 25010. The testing findings\' grand mean is 3.8978, indicating that the web-app is scored positively overall. The respondents are satisfied with the application, according to the grand mean of the testing results\\r\\nKeywords: Web-based Archiving Management System, Optical Character Recognition (OCR), Capstone Project, Capstone Progress Monitoring, Digitizing Physical Documents, Modified Waterfall Process Model, Topic Suggestion, Capstone Rating.\",\"start_date\":null,\"xf1\":\"3rd year\",\"xf2\":\"UNDER DEVELOPMENT\",\"xf3\":\"2021 - 2022\",\"xf4\":null,\"xf5\":null,\"name\":null,\"path\":null,\"xf6\":null,\"xf7\":null,\"xf8\":null}', '[]', 'http://127.0.0.1:8000/api/delete_capstone/19', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36 Edg/108.0.1462.46', NULL, '2022-12-14 06:58:08', '2022-12-14 06:58:08'),
(67, 'App\\Models\\User', 1, 'deleted', 'App\\Models\\Capstone1', 19, '{\"id\":19,\"capstone_id\":19,\"revise_manuscript\":null,\"action_done\":null,\"mou\":null,\"title_proposal_form\":null,\"adviser_appointmentform\":null,\"ppt\":null,\"recorded_proposal\":null,\"minutes\":null,\"gcash_ss_file\":null,\"acceptance_of_panel\":null,\"capstone_ocr\":null,\"status\":\"Working Cahapter 1,2,3\",\"propose_date\":null,\"xf1\":\"0\",\"xf2\":\"PENDING\",\"xf3\":\"NOT YET, SET\",\"minutes1\":null,\"xf4\":null,\"xf5\":null,\"xf6\":null}', '[]', 'http://127.0.0.1:8000/api/delete_capstone/19', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36 Edg/108.0.1462.46', NULL, '2022-12-14 06:58:08', '2022-12-14 06:58:08'),
(68, 'App\\Models\\User', 1, 'deleted', 'App\\Models\\Capstone2', 19, '{\"id\":19,\"capstone_id\":19,\"capstone_link\":null,\"proto_minutes\":null,\"proto_matrix\":null,\"ad_appointment_form\":null,\"gcash_payment\":null,\"acceptance_ss\":null,\"status\":\"Under-Development\",\"prototype_date\":null,\"xf1\":\"0\",\"xf2\":\"PENDING\",\"xf3\":\"NOT YET, SET\",\"minutes1\":null,\"xf4\":null,\"xf5\":null,\"xf6\":null}', '[]', 'http://127.0.0.1:8000/api/delete_capstone/19', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36 Edg/108.0.1462.46', NULL, '2022-12-14 06:58:08', '2022-12-14 06:58:08'),
(69, 'App\\Models\\User', 1, 'deleted', 'App\\Models\\Capstone3', 19, '{\"id\":19,\"capstone_id\":19,\"final_docu\":null,\"proto_minutes\":null,\"proto_matrix\":null,\"ppt\":null,\"software_demo\":null,\"gcash_payment\":null,\"acceptance_ss\":null,\"githublink\":null,\"status\":\"Pre-Documentation\",\"final_date\":null,\"xf1\":\"0\",\"xf2\":\"PENDING\",\"xf3\":\"NOT YET, SET\",\"minutes1\":null,\"xf4\":null,\"xf5\":null,\"xf6\":null}', '[]', 'http://127.0.0.1:8000/api/delete_capstone/19', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36 Edg/108.0.1462.46', NULL, '2022-12-14 06:58:08', '2022-12-14 06:58:08'),
(70, 'App\\Models\\User', 140, 'created', 'App\\Models\\Capstone', 20, '[]', '{\"groupname\":\"Archiving\",\"title\":\"Archiving Management\",\"abstract\":\"This study presents the development of an online web-based Archiving Management System of capstone projects for BukSU IT department which serves as a solution to the users in order to avoid the repetition of proposals and analyze any gaps in their capstone projects. The system enables the user to digitize the capstone project in the BukSU IT department by using Optical Character Recognition technology. It also captures documents in each phase of the study. The system will be used to monitor and maintain the records of all capstone projects for Information Technology graduate and undergraduate students at Bukidnon State University. In addition to the following: To the teachers. This study helps the teachers of Bukidnon State University (BukSU) IT Department have a reference when suggesting new ideas for the students\\u2019 project proposals. To the students: This study provides BukSU IT students with a reference on previous projects that have already been created. This also helps them acquire the specific documents that they need without visiting the library. The Modified Waterfall Process Model was used to develop the system. The front end is the gate for developing the system, and the proponent used Vue.js 3, Bootstrap 5, CSS, and HTML. And for the back-end the proponents used Laravel version 9 a PHP framework for software development mainly PHP version 8.1.2 And mariaDB version 10.4.22 was used as a database for storing data. Lastly, testing has been conducted to find errors and make suggestions. Then proceeded with the operations in order for the system to be fully approved and ready for production. The evaluation of this system consisted of twenty one(21) questions based on the ISO\\/IEC 25010. The testing findings\' grand mean is 3.8978, indicating that the web-app is scored positively overall. The respondents are satisfied with the application, according to the grand mean of the testing results Keywords: Web-based Archiving Management System, Optical Character Recognition (OCR), Capstone Project, Capstone Progress Monitoring, Digitizing Physical Documents, Modified Waterfall Process Model, Topic Suggestion, Capstone Rating.\",\"xf3\":\"2021 - 2022\",\"xf1\":\"3rd year\",\"xf2\":\"UNDER DEVELOPMENT\",\"id\":20}', 'http://127.0.0.1:8000/api/add_capstone_project', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', NULL, '2022-12-14 07:16:07', '2022-12-14 07:16:07'),
(71, 'App\\Models\\User', 140, 'created', 'App\\Models\\Capstone1', 20, '[]', '{\"id\":\"20\",\"capstone_id\":\"20\",\"status\":\"Working Cahapter 1,2,3\",\"xf1\":0,\"xf2\":\"PENDING\",\"xf3\":\"NOT YET, SET\"}', 'http://127.0.0.1:8000/api/create_capstone_proj/20', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', NULL, '2022-12-14 07:16:19', '2022-12-14 07:16:19'),
(72, 'App\\Models\\User', 140, 'created', 'App\\Models\\Capstone2', 20, '[]', '{\"id\":\"20\",\"status\":\"Under-Development\",\"capstone_id\":\"20\",\"xf1\":0,\"xf2\":\"PENDING\",\"xf3\":\"NOT YET, SET\"}', 'http://127.0.0.1:8000/api/create_capstone_proj/20', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', NULL, '2022-12-14 07:16:19', '2022-12-14 07:16:19'),
(73, 'App\\Models\\User', 140, 'created', 'App\\Models\\Capstone3', 20, '[]', '{\"id\":\"20\",\"capstone_id\":\"20\",\"status\":\"Pre-Documentation\",\"xf1\":0,\"xf2\":\"PENDING\",\"xf3\":\"NOT YET, SET\"}', 'http://127.0.0.1:8000/api/create_capstone_proj/20', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', NULL, '2022-12-14 07:16:19', '2022-12-14 07:16:19'),
(74, 'App\\Models\\User', 140, 'updated', 'App\\Models\\User', 140, '{\"remember_token\":\"1\"}', '{\"remember_token\":\"rkW1PbA0K8acSYFOzDGYR3vsgS8DQPePpoDfxqjXCdZxbEJrjDvXCE0GjJs2\"}', 'http://127.0.0.1:8000/logout', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', NULL, '2022-12-14 07:17:51', '2022-12-14 07:17:51'),
(75, 'App\\Models\\User', 3, 'updated', 'App\\Models\\Capstone1', 2, '{\"xf3\":\"84\"}', '{\"xf3\":\"17\"}', 'http://127.0.0.1:8000/api/capstone_instructor1/2', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', NULL, '2022-12-14 07:19:29', '2022-12-14 07:19:29'),
(76, 'App\\Models\\User', 3, 'updated', 'App\\Models\\Capstone', 2, '{\"xf5\":\"1670135485.BUKSU CAPSTONE ARCHIVING MANAGEMENT SYSTEM_MANUSCRIPT.pdf\"}', '{\"xf5\":\"1671031302.try.pdf\"}', 'http://127.0.0.1:8000/api/update_capstone/2', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', NULL, '2022-12-14 07:21:42', '2022-12-14 07:21:42'),
(77, 'App\\Models\\User', 17, 'created', 'App\\Models\\Capstone1', 12, '[]', '{\"id\":\"12\",\"capstone_id\":\"12\",\"status\":\"Working Cahapter 1,2,3\",\"xf1\":0,\"xf2\":\"PENDING\",\"xf3\":\"NOT YET, SET\"}', 'http://127.0.0.1:8000/api/create_capstone_proj/12', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36 Edg/108.0.1462.46', NULL, '2022-12-14 07:48:10', '2022-12-14 07:48:10'),
(78, 'App\\Models\\User', 17, 'created', 'App\\Models\\Capstone2', 12, '[]', '{\"id\":\"12\",\"status\":\"Under-Development\",\"capstone_id\":\"12\",\"xf1\":0,\"xf2\":\"PENDING\",\"xf3\":\"NOT YET, SET\"}', 'http://127.0.0.1:8000/api/create_capstone_proj/12', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36 Edg/108.0.1462.46', NULL, '2022-12-14 07:48:10', '2022-12-14 07:48:10'),
(79, 'App\\Models\\User', 17, 'created', 'App\\Models\\Capstone3', 12, '[]', '{\"id\":\"12\",\"capstone_id\":\"12\",\"status\":\"Pre-Documentation\",\"xf1\":0,\"xf2\":\"PENDING\",\"xf3\":\"NOT YET, SET\"}', 'http://127.0.0.1:8000/api/create_capstone_proj/12', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36 Edg/108.0.1462.46', NULL, '2022-12-14 07:48:10', '2022-12-14 07:48:10'),
(80, 'App\\Models\\User', 1, 'created', 'App\\Models\\Capstone1', 14, '[]', '{\"id\":\"14\",\"capstone_id\":\"14\",\"status\":\"Working Cahapter 1,2,3\",\"xf1\":0,\"xf2\":\"PENDING\",\"xf3\":\"NOT YET, SET\"}', 'http://127.0.0.1:8000/api/create_capstone_proj/14', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', NULL, '2022-12-14 07:48:20', '2022-12-14 07:48:20'),
(81, 'App\\Models\\User', 1, 'created', 'App\\Models\\Capstone2', 14, '[]', '{\"id\":\"14\",\"status\":\"Under-Development\",\"capstone_id\":\"14\",\"xf1\":0,\"xf2\":\"PENDING\",\"xf3\":\"NOT YET, SET\"}', 'http://127.0.0.1:8000/api/create_capstone_proj/14', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', NULL, '2022-12-14 07:48:20', '2022-12-14 07:48:20'),
(82, 'App\\Models\\User', 1, 'created', 'App\\Models\\Capstone3', 14, '[]', '{\"id\":\"14\",\"capstone_id\":\"14\",\"status\":\"Pre-Documentation\",\"xf1\":0,\"xf2\":\"PENDING\",\"xf3\":\"NOT YET, SET\"}', 'http://127.0.0.1:8000/api/create_capstone_proj/14', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', NULL, '2022-12-14 07:48:20', '2022-12-14 07:48:20'),
(83, 'App\\Models\\User', 1, 'updated', 'App\\Models\\Capstone', 14, '{\"xf4\":null,\"name\":null}', '{\"xf4\":\"BukSU\",\"name\":\"AGREE\"}', 'http://127.0.0.1:8000/api/update_capstone/14', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', NULL, '2022-12-14 07:49:20', '2022-12-14 07:49:20'),
(84, 'App\\Models\\User', 17, 'created', 'App\\Models\\Capstone1', 11, '[]', '{\"id\":\"11\",\"capstone_id\":\"11\",\"status\":\"Working Cahapter 1,2,3\",\"xf1\":0,\"xf2\":\"PENDING\",\"xf3\":\"NOT YET, SET\"}', 'http://127.0.0.1:8000/api/create_capstone_proj/11', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36 Edg/108.0.1462.46', NULL, '2022-12-14 07:55:46', '2022-12-14 07:55:46'),
(85, 'App\\Models\\User', 17, 'created', 'App\\Models\\Capstone2', 11, '[]', '{\"id\":\"11\",\"status\":\"Under-Development\",\"capstone_id\":\"11\",\"xf1\":0,\"xf2\":\"PENDING\",\"xf3\":\"NOT YET, SET\"}', 'http://127.0.0.1:8000/api/create_capstone_proj/11', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36 Edg/108.0.1462.46', NULL, '2022-12-14 07:55:46', '2022-12-14 07:55:46'),
(86, 'App\\Models\\User', 17, 'created', 'App\\Models\\Capstone3', 11, '[]', '{\"id\":\"11\",\"capstone_id\":\"11\",\"status\":\"Pre-Documentation\",\"xf1\":0,\"xf2\":\"PENDING\",\"xf3\":\"NOT YET, SET\"}', 'http://127.0.0.1:8000/api/create_capstone_proj/11', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36 Edg/108.0.1462.46', NULL, '2022-12-14 07:55:46', '2022-12-14 07:55:46'),
(87, 'App\\Models\\User', 17, 'updated', 'App\\Models\\Capstone1', 11, '{\"xf1\":\"0\",\"xf2\":\"PENDING\"}', '{\"xf1\":\"27.333333333333332\",\"xf2\":\"PARTIAL\"}', 'http://127.0.0.1:8000/api/post_approved_rate_status/11', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36 Edg/108.0.1462.46', NULL, '2022-12-14 07:56:52', '2022-12-14 07:56:52'),
(88, 'App\\Models\\User', 17, 'updated', 'App\\Models\\Capstone1', 14, '{\"minutes1\":null}', '{\"minutes1\":\"1671033470.BUKSU CAPSTONE ARCHIVING MANAGEMENT SYSTEM_MANUSCRIPT.pdf\"}', 'http://127.0.0.1:8000/api/caps1minutes/14', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36 Edg/108.0.1462.46', NULL, '2022-12-14 07:57:50', '2022-12-14 07:57:50'),
(89, 'App\\Models\\User', 1, 'updated', 'App\\Models\\Capstone', 2, '{\"xf5\":\"1671031302.try.pdf\"}', '{\"xf5\":\"1671033720.BUKSU CAPSTONE ARCHIVING MANAGEMENT SYSTEM_MANUSCRIPT.pdf\"}', 'http://127.0.0.1:8000/api/update_capstone/2', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', NULL, '2022-12-14 08:02:00', '2022-12-14 08:02:00'),
(90, 'App\\Models\\User', 1, 'updated', 'App\\Models\\User', 137, '{\"photo\":null,\"password\":\"$2y$10$Wukafq3G0g0\\/DZD0RpeQ2.yc.vjs0kiJTlZ9zwbs5ocGMpc2Xhr.a\"}', '{\"photo\":\"1671960046.png\",\"password\":\"$2y$10$59KS.CPRYx0vLfu.nFJ7TeP24VRoiSEFX0GBzr1N6uI.0wpH8RKvm\"}', 'http://127.0.0.1:8000/api/update_user/137', '127.0.0.1', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Mobile Safari/537.36 Edg/108.0.1462.54', NULL, '2022-12-25 01:20:46', '2022-12-25 01:20:46'),
(91, 'App\\Models\\User', 1, 'updated', 'App\\Models\\User', 137, '{\"password\":\"$2y$10$59KS.CPRYx0vLfu.nFJ7TeP24VRoiSEFX0GBzr1N6uI.0wpH8RKvm\"}', '{\"password\":\"$2y$10$U0tEAqK.h5mjHFkp756i.esHsSgKZaVJs62T7Wz0IBdp87.uUekPy\"}', 'http://127.0.0.1:8000/api/update_user/137', '127.0.0.1', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Mobile Safari/537.36 Edg/108.0.1462.54', NULL, '2022-12-25 01:24:35', '2022-12-25 01:24:35'),
(92, 'App\\Models\\User', 1, 'updated', 'App\\Models\\User', 137, '{\"password\":\"$2y$10$U0tEAqK.h5mjHFkp756i.esHsSgKZaVJs62T7Wz0IBdp87.uUekPy\"}', '{\"password\":\"$2y$10$0XHsIkwlvK6RyFH06tLzAOPOyEImAmz4nsoEfXTuCM6q1uuRyZQS.\"}', 'http://127.0.0.1:8000/api/update_user/137', '127.0.0.1', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Mobile Safari/537.36 Edg/108.0.1462.54', NULL, '2022-12-25 01:24:39', '2022-12-25 01:24:39'),
(93, 'App\\Models\\User', 1, 'updated', 'App\\Models\\User', 138, '{\"photo\":null,\"password\":\"$2y$10$EVrttLdA1SO.dCKPwC3cb.caTe1HI8kc\\/jlvufC\\/BMesflvQ5h.7C\"}', '{\"photo\":\"1671961158.png\",\"password\":\"$2y$10$QoAcMUYfgldNpPvRdl5kT.3SC1S\\/7NsR0wT6ju50syqAldNikV9nW\"}', 'http://127.0.0.1:8000/api/update_user/138', '127.0.0.1', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Mobile Safari/537.36 Edg/108.0.1462.54', NULL, '2022-12-25 01:39:18', '2022-12-25 01:39:18'),
(94, NULL, NULL, 'created', 'App\\Models\\User', 141, '[]', '{\"name\":\"tryyyyyy1\",\"mname\":\"tryyyyyy1\",\"lname\":\"tryyyyyy1\",\"year\":\"not set\",\"gender\":\"not set\",\"uid\":\"tryyyyyy1\",\"email\":\"tryyyyyy1@gmail.cpm\",\"password\":\"$2y$10$9CsCiD3izjR9V7v6ZcWj2.rna82ucvYL\\/UZ37gMXSnwLL8Sbu9zLe\",\"role_num\":1,\"id\":141}', 'http://127.0.0.1:8000/register1', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', NULL, '2022-12-25 21:12:57', '2022-12-25 21:12:57'),
(95, NULL, NULL, 'created', 'App\\Models\\User', 142, '[]', '{\"name\":\"1111111\",\"mname\":\"1111111\",\"lname\":\"1111111\",\"year\":\"not set\",\"gender\":\"not set\",\"uid\":\"1111111\",\"email\":\"1111111@gmail.com\",\"password\":\"$2y$10$dWtGgGOqJfciXxN9ryM5Qe3RkN5PSvOq8wLei.ymmEb7UUraHFwpG\",\"role_num\":1,\"id\":142}', 'http://127.0.0.1:8000/register1', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', NULL, '2022-12-25 21:14:27', '2022-12-25 21:14:27'),
(96, NULL, NULL, 'created', 'App\\Models\\User', 143, '[]', '{\"name\":\"1111111\",\"mname\":\"1111111\",\"lname\":\"1111111\",\"year\":\"not set\",\"gender\":\"not set\",\"uid\":\"1111111\",\"email\":\"11111111111111@gmail.com\",\"password\":\"$2y$10$YANV1K4wKJWQUGG4OTk9juTthx\\/2DCeuOxyLQZAFIW5W6F\\/tFCr92\",\"role_num\":2,\"id\":143}', 'http://127.0.0.1:8000/register1', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', NULL, '2022-12-25 21:14:57', '2022-12-25 21:14:57'),
(97, 'App\\Models\\User', 1, 'deleted', 'App\\Models\\User', 142, '{\"id\":142,\"name\":\"1111111\",\"mname\":\"1111111\",\"lname\":\"1111111\",\"uid\":\"1111111\",\"year\":\"not set\",\"email\":\"1111111@gmail.com\",\"photo\":null,\"gender\":\"not set\",\"email_verified_at\":null,\"password\":\"$2y$10$dWtGgGOqJfciXxN9ryM5Qe3RkN5PSvOq8wLei.ymmEb7UUraHFwpG\",\"remember_token\":null,\"role_num\":\"1\"}', '[]', 'http://127.0.0.1:8000/api/delete_user/142', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', NULL, '2022-12-25 21:15:34', '2022-12-25 21:15:34'),
(98, 'App\\Models\\User', 1, 'deleted', 'App\\Models\\User', 141, '{\"id\":141,\"name\":\"tryyyyyy1\",\"mname\":\"tryyyyyy1\",\"lname\":\"tryyyyyy1\",\"uid\":\"tryyyyyy1\",\"year\":\"not set\",\"email\":\"tryyyyyy1@gmail.cpm\",\"photo\":null,\"gender\":\"not set\",\"email_verified_at\":null,\"password\":\"$2y$10$9CsCiD3izjR9V7v6ZcWj2.rna82ucvYL\\/UZ37gMXSnwLL8Sbu9zLe\",\"remember_token\":null,\"role_num\":\"1\"}', '[]', 'http://127.0.0.1:8000/api/delete_user/141', '127.0.0.1', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Mobile Safari/537.36', NULL, '2022-12-25 21:16:02', '2022-12-25 21:16:02'),
(99, 'App\\Models\\User', 1, 'created', 'App\\Models\\User', 144, '[]', '{\"name\":\"teststudent\",\"mname\":\"teststudent\",\"photo\":\"1672031938.jpeg\",\"lname\":\"teststudent\",\"year\":null,\"gender\":\"Male\",\"uid\":\"teststudent\",\"email\":\"a1d2m3i4n@gmail.comteststudent\",\"password\":\"$2y$10$0ygwlww9s3Zk8BkTOf1FQurCG7HgHUEjoYKEjMlhDcNWl6oP5UBGq\",\"role_num\":1,\"id\":144}', 'http://127.0.0.1:8000/api/add_user', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', NULL, '2022-12-25 21:19:00', '2022-12-25 21:19:00'),
(100, 'App\\Models\\User', 1, 'deleted', 'App\\Models\\User', 144, '{\"id\":144,\"name\":\"teststudent\",\"mname\":\"teststudent\",\"lname\":\"teststudent\",\"uid\":\"teststudent\",\"year\":null,\"email\":\"a1d2m3i4n@gmail.comteststudent\",\"photo\":\"1672031938.jpeg\",\"gender\":\"Male\",\"email_verified_at\":null,\"password\":\"$2y$10$0ygwlww9s3Zk8BkTOf1FQurCG7HgHUEjoYKEjMlhDcNWl6oP5UBGq\",\"remember_token\":null,\"role_num\":\"1\"}', '[]', 'http://127.0.0.1:8000/api/delete_user/144', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', NULL, '2022-12-25 21:19:36', '2022-12-25 21:19:36'),
(101, 'App\\Models\\User', 1, 'created', 'App\\Models\\User', 145, '[]', '{\"name\":\"teststudent\",\"mname\":\"teststudent\",\"photo\":\"1672032007.jpeg\",\"lname\":\"teststudent\",\"year\":null,\"gender\":\"Male\",\"uid\":\"teststudent\",\"email\":\"teststudent@gmail.com\",\"password\":\"$2y$10$\\/C5SLE0dE.tL8KF7czHRSOB9czmIEggUoAN8nHPjcXhnJXAtzQCPy\",\"role_num\":1,\"id\":145}', 'http://127.0.0.1:8000/api/add_user', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', NULL, '2022-12-25 21:20:08', '2022-12-25 21:20:08'),
(102, 'App\\Models\\User', 1, 'deleted', 'App\\Models\\User', 145, '{\"id\":145,\"name\":\"teststudent\",\"mname\":\"teststudent\",\"lname\":\"teststudent\",\"uid\":\"teststudent\",\"year\":null,\"email\":\"teststudent@gmail.com\",\"photo\":\"1672032007.jpeg\",\"gender\":\"Male\",\"email_verified_at\":null,\"password\":\"$2y$10$\\/C5SLE0dE.tL8KF7czHRSOB9czmIEggUoAN8nHPjcXhnJXAtzQCPy\",\"remember_token\":null,\"role_num\":\"1\"}', '[]', 'http://127.0.0.1:8000/api/delete_user/145', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', NULL, '2022-12-25 21:20:16', '2022-12-25 21:20:16'),
(103, 'App\\Models\\User', 1, 'created', 'App\\Models\\User', 146, '[]', '{\"name\":\"location.reload\",\"mname\":\"location.reload\",\"photo\":\"1672032165.jpeg\",\"lname\":\"location.reload\",\"year\":\"3rd year\",\"gender\":\"Female\",\"uid\":\"location.reload\",\"email\":\"location.reload@gmail.com\",\"password\":\"$2y$10$.muIwlTz47wgyb\\/ghCMr2uc5yE.p0B4PMTtDx6SdwtOYkxbLinLAi\",\"role_num\":2,\"id\":146}', 'http://127.0.0.1:8000/api/add_user', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', NULL, '2022-12-25 21:22:46', '2022-12-25 21:22:46'),
(104, 'App\\Models\\User', 1, 'deleted', 'App\\Models\\User', 146, '{\"id\":146,\"name\":\"location.reload\",\"mname\":\"location.reload\",\"lname\":\"location.reload\",\"uid\":\"location.reload\",\"year\":\"3rd year\",\"email\":\"location.reload@gmail.com\",\"photo\":\"1672032165.jpeg\",\"gender\":\"Female\",\"email_verified_at\":null,\"password\":\"$2y$10$.muIwlTz47wgyb\\/ghCMr2uc5yE.p0B4PMTtDx6SdwtOYkxbLinLAi\",\"remember_token\":null,\"role_num\":\"2\"}', '[]', 'http://127.0.0.1:8000/api/delete_user/146', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', NULL, '2022-12-25 21:23:23', '2022-12-25 21:23:23'),
(105, 'App\\Models\\User', 1, 'created', 'App\\Models\\User', 147, '[]', '{\"name\":\"location.reload\",\"mname\":\"location.reload\",\"photo\":\"1672032245.jpeg\",\"lname\":\"location.reload\",\"year\":\"3rd year\",\"gender\":null,\"uid\":\"location.reload\",\"email\":\"location.reload@gmail.com\",\"password\":\"$2y$10$09A5x5MXq8jeH56LatLITu9dBpjJIjc87g90qUFRoLEorjcgbxOQa\",\"role_num\":1,\"id\":147}', 'http://127.0.0.1:8000/api/add_user', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', NULL, '2022-12-25 21:24:06', '2022-12-25 21:24:06'),
(106, 'App\\Models\\User', 1, 'deleted', 'App\\Models\\User', 147, '{\"id\":147,\"name\":\"location.reload\",\"mname\":\"location.reload\",\"lname\":\"location.reload\",\"uid\":\"location.reload\",\"year\":\"3rd year\",\"email\":\"location.reload@gmail.com\",\"photo\":\"1672032245.jpeg\",\"gender\":null,\"email_verified_at\":null,\"password\":\"$2y$10$09A5x5MXq8jeH56LatLITu9dBpjJIjc87g90qUFRoLEorjcgbxOQa\",\"remember_token\":null,\"role_num\":\"1\"}', '[]', 'http://127.0.0.1:8000/api/delete_user/147', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', NULL, '2022-12-25 21:24:12', '2022-12-25 21:24:12'),
(107, 'App\\Models\\User', 1, 'created', 'App\\Models\\User', 148, '[]', '{\"name\":\"dataCapstoneSearch();\",\"mname\":\"dataCapstoneSearch();\",\"photo\":\"1672032959.jpeg\",\"lname\":\"dataCapstoneSearch();\",\"year\":null,\"gender\":null,\"uid\":\"dataCapstoneSearch();\",\"email\":\"dataCapstoneSearch();@gmail.com\",\"password\":\"$2y$10$r9JjWfAYyHc.qvShiNFL8.H1LvWEew9lZTlaQvUlu5lpoyBGDNWcK\",\"role_num\":1,\"id\":148}', 'http://127.0.0.1:8000/api/add_user', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', NULL, '2022-12-25 21:36:01', '2022-12-25 21:36:01'),
(108, 'App\\Models\\User', 1, 'deleted', 'App\\Models\\User', 148, '{\"id\":148,\"name\":\"dataCapstoneSearch();\",\"mname\":\"dataCapstoneSearch();\",\"lname\":\"dataCapstoneSearch();\",\"uid\":\"dataCapstoneSearch();\",\"year\":null,\"email\":\"dataCapstoneSearch();@gmail.com\",\"photo\":\"1672032959.jpeg\",\"gender\":null,\"email_verified_at\":null,\"password\":\"$2y$10$r9JjWfAYyHc.qvShiNFL8.H1LvWEew9lZTlaQvUlu5lpoyBGDNWcK\",\"remember_token\":null,\"role_num\":\"1\"}', '[]', 'http://127.0.0.1:8000/api/delete_user/148', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', NULL, '2022-12-25 21:36:10', '2022-12-25 21:36:10'),
(109, NULL, NULL, 'created', 'App\\Models\\User', 149, '[]', '{\"name\":\"test@gmail\",\"mname\":\"test@gmail\",\"lname\":\"test@gmail\",\"year\":\"not set\",\"gender\":\"not set\",\"uid\":\"test@gmail\",\"email\":\"test@gmail\",\"password\":\"$2y$10$xyrqFTLLC1uYl.Uzsmtcde1.9V5V7Qh6jcZ3dbjwSkJ6pA83PHDqC\",\"role_num\":1,\"id\":149}', 'http://127.0.0.1:8000/register1', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36 Edg/108.0.1462.54', NULL, '2023-01-02 02:46:15', '2023-01-02 02:46:15'),
(110, 'App\\Models\\User', 1, 'updated', 'App\\Models\\Capstone', 20, '{\"xf4\":null,\"name\":null}', '{\"xf4\":\"null\",\"name\":\"AGREE\"}', 'http://127.0.0.1:8000/api/update_capstone/20', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', NULL, '2023-01-02 03:06:38', '2023-01-02 03:06:38'),
(111, 'App\\Models\\User', 1, 'updated', 'App\\Models\\Capstone', 20, '{\"xf6\":null}', '{\"xf6\":\"17\"}', 'http://127.0.0.1:8000/api/update_capstone/20', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', NULL, '2023-01-02 03:07:15', '2023-01-02 03:07:15'),
(112, 'App\\Models\\User', 1, 'updated', 'App\\Models\\Capstone', 18, '{\"xf4\":null,\"name\":null,\"xf6\":null}', '{\"xf4\":\"null\",\"name\":\"AGREE\",\"xf6\":21}', 'http://127.0.0.1:8000/api/update_capstone/18', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', NULL, '2023-01-02 03:08:44', '2023-01-02 03:08:44'),
(113, 'App\\Models\\User', 1, 'created', 'App\\Models\\Capstone1', 17, '[]', '{\"id\":\"17\",\"capstone_id\":\"17\",\"status\":\"Working Cahapter 1,2,3\",\"xf1\":0,\"xf2\":\"PENDING\",\"xf3\":\"NOT YET, SET\"}', 'http://127.0.0.1:8000/api/create_capstone_proj/17', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', NULL, '2023-01-02 03:09:07', '2023-01-02 03:09:07'),
(114, 'App\\Models\\User', 1, 'created', 'App\\Models\\Capstone2', 17, '[]', '{\"id\":\"17\",\"status\":\"Under-Development\",\"capstone_id\":\"17\",\"xf1\":0,\"xf2\":\"PENDING\",\"xf3\":\"NOT YET, SET\"}', 'http://127.0.0.1:8000/api/create_capstone_proj/17', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', NULL, '2023-01-02 03:09:07', '2023-01-02 03:09:07'),
(115, 'App\\Models\\User', 1, 'created', 'App\\Models\\Capstone3', 17, '[]', '{\"id\":\"17\",\"capstone_id\":\"17\",\"status\":\"Pre-Documentation\",\"xf1\":0,\"xf2\":\"PENDING\",\"xf3\":\"NOT YET, SET\"}', 'http://127.0.0.1:8000/api/create_capstone_proj/17', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', NULL, '2023-01-02 03:09:07', '2023-01-02 03:09:07'),
(116, 'App\\Models\\User', 1, 'updated', 'App\\Models\\Capstone', 17, '{\"xf4\":null,\"name\":null,\"xf6\":null}', '{\"xf4\":\"null\",\"name\":\"AGREE\",\"xf6\":20}', 'http://127.0.0.1:8000/api/update_capstone/17', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', NULL, '2023-01-02 03:09:16', '2023-01-02 03:09:16'),
(117, 'App\\Models\\User', 1, 'created', 'App\\Models\\Capstone1', 16, '[]', '{\"id\":\"16\",\"capstone_id\":\"16\",\"status\":\"Working Cahapter 1,2,3\",\"xf1\":0,\"xf2\":\"PENDING\",\"xf3\":\"NOT YET, SET\"}', 'http://127.0.0.1:8000/api/create_capstone_proj/16', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', NULL, '2023-01-02 03:09:31', '2023-01-02 03:09:31'),
(118, 'App\\Models\\User', 1, 'created', 'App\\Models\\Capstone2', 16, '[]', '{\"id\":\"16\",\"status\":\"Under-Development\",\"capstone_id\":\"16\",\"xf1\":0,\"xf2\":\"PENDING\",\"xf3\":\"NOT YET, SET\"}', 'http://127.0.0.1:8000/api/create_capstone_proj/16', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', NULL, '2023-01-02 03:09:31', '2023-01-02 03:09:31'),
(119, 'App\\Models\\User', 1, 'created', 'App\\Models\\Capstone3', 16, '[]', '{\"id\":\"16\",\"capstone_id\":\"16\",\"status\":\"Pre-Documentation\",\"xf1\":0,\"xf2\":\"PENDING\",\"xf3\":\"NOT YET, SET\"}', 'http://127.0.0.1:8000/api/create_capstone_proj/16', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', NULL, '2023-01-02 03:09:31', '2023-01-02 03:09:31'),
(120, 'App\\Models\\User', 1, 'updated', 'App\\Models\\Capstone', 16, '{\"xf4\":null,\"name\":null,\"xf6\":null}', '{\"xf4\":\"null\",\"name\":\"AGREE\",\"xf6\":86}', 'http://127.0.0.1:8000/api/update_capstone/16', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', NULL, '2023-01-02 03:09:39', '2023-01-02 03:09:39'),
(121, 'App\\Models\\User', 1, 'updated', 'App\\Models\\Capstone', 15, '{\"xf4\":null,\"name\":null,\"xf6\":null}', '{\"xf4\":\"null\",\"name\":\"AGREE\",\"xf6\":88}', 'http://127.0.0.1:8000/api/update_capstone/15', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', NULL, '2023-01-02 03:10:08', '2023-01-02 03:10:08'),
(122, 'App\\Models\\User', 1, 'updated', 'App\\Models\\Capstone', 14, '{\"xf6\":null}', '{\"xf6\":128}', 'http://127.0.0.1:8000/api/update_capstone/14', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', NULL, '2023-01-02 03:10:56', '2023-01-02 03:10:56'),
(123, 'App\\Models\\User', 1, 'created', 'App\\Models\\Capstone1', 13, '[]', '{\"id\":\"13\",\"capstone_id\":\"13\",\"status\":\"Working Cahapter 1,2,3\",\"xf1\":0,\"xf2\":\"PENDING\",\"xf3\":\"NOT YET, SET\"}', 'http://127.0.0.1:8000/api/create_capstone_proj/13', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', NULL, '2023-01-02 03:11:11', '2023-01-02 03:11:11'),
(124, 'App\\Models\\User', 1, 'created', 'App\\Models\\Capstone2', 13, '[]', '{\"id\":\"13\",\"status\":\"Under-Development\",\"capstone_id\":\"13\",\"xf1\":0,\"xf2\":\"PENDING\",\"xf3\":\"NOT YET, SET\"}', 'http://127.0.0.1:8000/api/create_capstone_proj/13', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', NULL, '2023-01-02 03:11:11', '2023-01-02 03:11:11'),
(125, 'App\\Models\\User', 1, 'created', 'App\\Models\\Capstone3', 13, '[]', '{\"id\":\"13\",\"capstone_id\":\"13\",\"status\":\"Pre-Documentation\",\"xf1\":0,\"xf2\":\"PENDING\",\"xf3\":\"NOT YET, SET\"}', 'http://127.0.0.1:8000/api/create_capstone_proj/13', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', NULL, '2023-01-02 03:11:11', '2023-01-02 03:11:11'),
(126, 'App\\Models\\User', 1, 'updated', 'App\\Models\\Capstone', 13, '{\"xf4\":null,\"name\":null,\"xf6\":null}', '{\"xf4\":\"null\",\"name\":\"AGREE\",\"xf6\":19}', 'http://127.0.0.1:8000/api/update_capstone/13', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', NULL, '2023-01-02 03:11:20', '2023-01-02 03:11:20'),
(127, 'App\\Models\\User', 1, 'updated', 'App\\Models\\Capstone', 12, '{\"xf4\":null,\"name\":null,\"xf6\":null}', '{\"xf4\":\"null\",\"name\":\"AGREE\",\"xf6\":89}', 'http://127.0.0.1:8000/api/update_capstone/12', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', NULL, '2023-01-02 03:11:44', '2023-01-02 03:11:44'),
(128, 'App\\Models\\User', 1, 'updated', 'App\\Models\\Capstone', 11, '{\"xf4\":null,\"name\":null,\"xf6\":null}', '{\"xf4\":\"null\",\"name\":\"AGREE\",\"xf6\":18}', 'http://127.0.0.1:8000/api/update_capstone/11', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', NULL, '2023-01-02 03:12:07', '2023-01-02 03:12:07'),
(129, 'App\\Models\\User', 1, 'updated', 'App\\Models\\Capstone', 2, '{\"xf6\":null}', '{\"xf6\":17}', 'http://127.0.0.1:8000/api/update_capstone/2', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', NULL, '2023-01-02 03:13:00', '2023-01-02 03:13:00'),
(130, 'App\\Models\\User', 1, 'updated', 'App\\Models\\Capstone', 11, '{\"xf6\":\"18\"}', '{\"xf6\":\"17\"}', 'http://127.0.0.1:8000/api/update_capstone/11', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', NULL, '2023-01-02 03:17:32', '2023-01-02 03:17:32'),
(131, 'App\\Models\\User', 3, 'updated', 'App\\Models\\User', 3, '{\"photo\":\"1670977306.jpeg\",\"password\":\"$2y$10$d0mpbHkOwQCZxN1MwSwgiOYWE852IYGJhrpnUM20kZ07PklhjVjFa\"}', '{\"photo\":\"1672893682.jpeg\",\"password\":\"$2y$10$sUgz1oe2mdyrHqOlUcWoT.MX5Z3pIXbb9OcdbmNa8ih2zom7kBVeG\"}', 'http://127.0.0.1:8000/api/myprofile_update', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', NULL, '2023-01-04 20:41:22', '2023-01-04 20:41:22'),
(132, 'App\\Models\\User', 1, 'deleted', 'App\\Models\\User', 149, '{\"id\":149,\"name\":\"test@gmail\",\"mname\":\"test@gmail\",\"lname\":\"test@gmail\",\"uid\":\"test@gmail\",\"year\":\"not set\",\"email\":\"test@gmail\",\"photo\":null,\"gender\":\"not set\",\"email_verified_at\":null,\"password\":\"$2y$10$xyrqFTLLC1uYl.Uzsmtcde1.9V5V7Qh6jcZ3dbjwSkJ6pA83PHDqC\",\"remember_token\":null,\"role_num\":\"1\"}', '[]', 'http://127.0.0.1:8000/api/delete_user/149', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', NULL, '2023-01-08 06:00:54', '2023-01-08 06:00:54'),
(133, 'App\\Models\\User', 1, 'created', 'App\\Models\\Capstone', 21, '[]', '{\"groupname\":\"Virtual tour\",\"title\":\"Virtual tour\",\"abstract\":\"Virtual tours have been invented for the past 52 years and yet its innovation is\\r\\nstarting to begin. Universities, Institutions, and other commercialize companies who\\r\\nhave large areas had stick their guidance with a primitive way of guiding their guests\\r\\nor students by such old maps. This study aims to develop BukSU Virtual Tours to guide\\r\\nstudents, guests, tourist on where they want to go, be it anywhere or everywhere within\\r\\nthe campus setting. This system focuses on the areas of BukSU with the main colleges\\r\\nand the most frequent visited areas. The itself system would bring BukSU awareness\\r\\nand its existence for not only locally, but internationally. Because this is the next step\\r\\nof ever changing the future of our Institution to a modernized and futuristic society.\\r\\nWith the results of the agile method, the researchers understood the conceptual\\r\\nframework of virtual tours and its high technological based. As well as the direct results\\r\\nof the panoramic images that shows the environment of the university campus. As a\\r\\nconclusion, the system has met its stakeholders\\u2019 requirements as verified and validated\\r\\nby certificated approvals. The system was also endorsed by the Accrediting Agency of\\r\\nChartered Colleges and Universities in the Philippines (AACCUP) division for\\r\\nenhancing the locator map level, considering that the system surpasses the level of\\r\\nrequirements. There was a number of recommendations that was presented towards the\\r\\nresearchers. An example, was that the system should allow an admin to enable a simple\\r\\ncditing feature that does not require for any employee to understand the complex\\r\\nalgorithm.\\r\\nKeywords: Virtual, Virtual Tour, Agile Method, Locator Map, Complex Algorithm M\\r\\n=1\\r\\nP Do\",\"xf3\":\"2018 - 2019\",\"xf1\":\"Graduated\",\"xf2\":\"UNIMPLEMENTED\",\"id\":21}', 'http://127.0.0.1:8000/api/add_capstone_project', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', NULL, '2023-01-08 22:23:09', '2023-01-08 22:23:09'),
(134, 'App\\Models\\User', 1, 'created', 'App\\Models\\Capstone1', 21, '[]', '{\"id\":\"21\",\"capstone_id\":\"21\",\"status\":\"Working Cahapter 1,2,3\",\"xf1\":0,\"xf2\":\"PENDING\",\"xf3\":\"NOT YET, SET\"}', 'http://127.0.0.1:8000/api/create_capstone_proj/21', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', NULL, '2023-01-08 22:23:17', '2023-01-08 22:23:17'),
(135, 'App\\Models\\User', 1, 'created', 'App\\Models\\Capstone2', 21, '[]', '{\"id\":\"21\",\"status\":\"Under-Development\",\"capstone_id\":\"21\",\"xf1\":0,\"xf2\":\"PENDING\",\"xf3\":\"NOT YET, SET\"}', 'http://127.0.0.1:8000/api/create_capstone_proj/21', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', NULL, '2023-01-08 22:23:17', '2023-01-08 22:23:17'),
(136, 'App\\Models\\User', 1, 'created', 'App\\Models\\Capstone3', 21, '[]', '{\"id\":\"21\",\"capstone_id\":\"21\",\"status\":\"Pre-Documentation\",\"xf1\":0,\"xf2\":\"PENDING\",\"xf3\":\"NOT YET, SET\"}', 'http://127.0.0.1:8000/api/create_capstone_proj/21', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', NULL, '2023-01-08 22:23:17', '2023-01-08 22:23:17'),
(137, 'App\\Models\\User', 1, 'updated', 'App\\Models\\Capstone', 11, '{\"xf5\":null}', '{\"xf5\":\"1673407948.FLOW-CHART.pdf\"}', 'http://127.0.0.1:8000/api/update_capstone/11', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36 Edg/108.0.1462.76', NULL, '2023-01-10 19:32:28', '2023-01-10 19:32:28'),
(138, 'App\\Models\\User', 1, 'created', 'App\\Models\\Capstone', 22, '[]', '{\"groupname\":\"dwdwd\",\"title\":\"wdwdwd\",\"abstract\":\"dwdwdw\",\"xf3\":\"2023 - 2023\",\"xf1\":\"4th year\",\"xf2\":\"UNDER DEVELOPMENT\",\"id\":22}', 'http://127.0.0.1:8000/api/add_capstone_project', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', NULL, '2023-01-16 21:40:50', '2023-01-16 21:40:50'),
(139, 'App\\Models\\User', 1, 'created', 'App\\Models\\Capstone', 23, '[]', '{\"groupname\":\"dwdwd\",\"title\":\"wdwdwd\",\"abstract\":\"null\",\"xf3\":\"2023 - 2023\",\"xf1\":\"4th year\",\"xf2\":\"UNDER DEVELOPMENT\",\"id\":23}', 'http://127.0.0.1:8000/api/add_capstone_project', '127.0.0.1', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Mobile Safari/537.36', NULL, '2023-01-16 21:41:15', '2023-01-16 21:41:15'),
(140, 'App\\Models\\User', 1, 'created', 'App\\Models\\Capstone', 24, '[]', '{\"groupname\":\"dwdwd\",\"title\":\"wdwdwd\",\"abstract\":\"null\",\"xf3\":\"2023 - 2023\",\"xf1\":\"4th year\",\"xf2\":\"UNDER DEVELOPMENT\",\"id\":24}', 'http://127.0.0.1:8000/api/add_capstone_project', '127.0.0.1', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Mobile Safari/537.36', NULL, '2023-01-16 21:45:40', '2023-01-16 21:45:40'),
(141, 'App\\Models\\User', 1, 'created', 'App\\Models\\Capstone', 25, '[]', '{\"groupname\":\"cwdwdwd\",\"title\":\"dwd\",\"abstract\":\"ddwdwdwd\",\"xf3\":\"2023 - 2023\",\"xf1\":\"Graduated\",\"xf2\":\"DEPLOYED\",\"id\":25}', 'http://127.0.0.1:8000/api/add_capstone_project', '127.0.0.1', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Mobile Safari/537.36', NULL, '2023-01-16 21:56:18', '2023-01-16 21:56:18'),
(142, 'App\\Models\\User', 1, 'created', 'App\\Models\\Capstone', 26, '[]', '{\"groupname\":\"cwdwdwd\",\"title\":\"dwd\",\"abstract\":\"dwdwdwd\",\"xf3\":\"2023 - 2023\",\"xf1\":\"Graduated\",\"xf2\":\"DEPLOYED\",\"id\":26}', 'http://127.0.0.1:8000/api/add_capstone_project', '127.0.0.1', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Mobile Safari/537.36', NULL, '2023-01-16 21:56:39', '2023-01-16 21:56:39'),
(143, 'App\\Models\\User', 1, 'created', 'App\\Models\\Capstone', 27, '[]', '{\"groupname\":\"fefefe\",\"title\":\"fefefef\",\"abstract\":\"null\",\"xf3\":\"2023 - 2023\",\"xf1\":\"4th year\",\"xf2\":\"DEPLOYED\",\"id\":27}', 'http://127.0.0.1:8000/api/add_capstone_project', '127.0.0.1', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Mobile Safari/537.36', NULL, '2023-01-16 21:59:46', '2023-01-16 21:59:46'),
(144, 'App\\Models\\User', 1, 'created', 'App\\Models\\Capstone', 28, '[]', '{\"groupname\":\"fefefe\",\"title\":\"fefefef\",\"abstract\":\"null\",\"xf3\":\"2017 - 2022\",\"xf1\":\"4th year\",\"xf2\":\"DEPLOYED\",\"id\":28}', 'http://127.0.0.1:8000/api/add_capstone_project', '127.0.0.1', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Mobile Safari/537.36', NULL, '2023-01-16 21:59:59', '2023-01-16 21:59:59'),
(145, 'App\\Models\\User', 1, 'created', 'App\\Models\\Capstone', 29, '[]', '{\"groupname\":\"dwdwdw\",\"title\":\"wdwdwddwd\",\"abstract\":\"dwdwdwd\",\"xf3\":\"2023 - 2023\",\"xf1\":\"4th year\",\"xf2\":\"UNDER DEVELOPMENT\",\"id\":29}', 'http://127.0.0.1:8000/api/add_capstone_project', '127.0.0.1', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Mobile Safari/537.36', NULL, '2023-01-16 22:10:03', '2023-01-16 22:10:03'),
(146, 'App\\Models\\User', 1, 'created', 'App\\Models\\Capstone1', 29, '[]', '{\"id\":\"29\",\"capstone_id\":\"29\",\"status\":\"Working Cahapter 1,2,3\",\"xf1\":0,\"xf2\":\"PENDING\",\"xf3\":\"NOT YET, SET\"}', 'http://127.0.0.1:8000/api/create_capstone_proj/29', '127.0.0.1', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Mobile Safari/537.36', NULL, '2023-01-16 22:10:13', '2023-01-16 22:10:13');
INSERT INTO `audits` (`id`, `user_type`, `user_id`, `event`, `auditable_type`, `auditable_id`, `old_values`, `new_values`, `url`, `ip_address`, `user_agent`, `tags`, `created_at`, `updated_at`) VALUES
(147, 'App\\Models\\User', 1, 'created', 'App\\Models\\Capstone2', 29, '[]', '{\"id\":\"29\",\"status\":\"Under-Development\",\"capstone_id\":\"29\",\"xf1\":0,\"xf2\":\"PENDING\",\"xf3\":\"NOT YET, SET\"}', 'http://127.0.0.1:8000/api/create_capstone_proj/29', '127.0.0.1', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Mobile Safari/537.36', NULL, '2023-01-16 22:10:13', '2023-01-16 22:10:13'),
(148, 'App\\Models\\User', 1, 'created', 'App\\Models\\Capstone3', 29, '[]', '{\"id\":\"29\",\"capstone_id\":\"29\",\"status\":\"Pre-Documentation\",\"xf1\":0,\"xf2\":\"PENDING\",\"xf3\":\"NOT YET, SET\"}', 'http://127.0.0.1:8000/api/create_capstone_proj/29', '127.0.0.1', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Mobile Safari/537.36', NULL, '2023-01-16 22:10:13', '2023-01-16 22:10:13'),
(149, 'App\\Models\\User', 1, 'created', 'App\\Models\\Capstone', 30, '[]', '{\"groupname\":\"dwdwdwdwd\",\"title\":\"11111111111112222222222222\",\"abstract\":\"dwdwdwdw\",\"xf3\":\"2017 - 2023\",\"xf1\":\"4th year\",\"xf2\":\"UNDER DEVELOPMENT\",\"id\":30}', 'http://127.0.0.1:8000/api/add_capstone_project', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', NULL, '2023-01-16 22:14:02', '2023-01-16 22:14:02'),
(150, 'App\\Models\\User', 1, 'created', 'App\\Models\\Capstone1', 30, '[]', '{\"id\":\"30\",\"capstone_id\":\"30\",\"status\":\"Working Cahapter 1,2,3\",\"xf1\":0,\"xf2\":\"PENDING\",\"xf3\":\"NOT YET, SET\"}', 'http://127.0.0.1:8000/api/create_capstone_proj/30', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', NULL, '2023-01-16 22:14:15', '2023-01-16 22:14:15'),
(151, 'App\\Models\\User', 1, 'created', 'App\\Models\\Capstone2', 30, '[]', '{\"id\":\"30\",\"status\":\"Under-Development\",\"capstone_id\":\"30\",\"xf1\":0,\"xf2\":\"PENDING\",\"xf3\":\"NOT YET, SET\"}', 'http://127.0.0.1:8000/api/create_capstone_proj/30', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', NULL, '2023-01-16 22:14:15', '2023-01-16 22:14:15'),
(152, 'App\\Models\\User', 1, 'created', 'App\\Models\\Capstone3', 30, '[]', '{\"id\":\"30\",\"capstone_id\":\"30\",\"status\":\"Pre-Documentation\",\"xf1\":0,\"xf2\":\"PENDING\",\"xf3\":\"NOT YET, SET\"}', 'http://127.0.0.1:8000/api/create_capstone_proj/30', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', NULL, '2023-01-16 22:14:15', '2023-01-16 22:14:15'),
(153, 'App\\Models\\User', 1, 'created', 'App\\Models\\Capstone1', 22, '[]', '{\"id\":\"22\",\"capstone_id\":\"22\",\"status\":\"Working Cahapter 1,2,3\",\"xf1\":0,\"xf2\":\"PENDING\",\"xf3\":\"NOT YET, SET\"}', 'http://127.0.0.1:8000/api/create_capstone_proj/22', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', NULL, '2023-01-18 18:33:58', '2023-01-18 18:33:58'),
(154, 'App\\Models\\User', 1, 'created', 'App\\Models\\Capstone2', 22, '[]', '{\"id\":\"22\",\"status\":\"Under-Development\",\"capstone_id\":\"22\",\"xf1\":0,\"xf2\":\"PENDING\",\"xf3\":\"NOT YET, SET\"}', 'http://127.0.0.1:8000/api/create_capstone_proj/22', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', NULL, '2023-01-18 18:33:58', '2023-01-18 18:33:58'),
(155, 'App\\Models\\User', 1, 'created', 'App\\Models\\Capstone3', 22, '[]', '{\"id\":\"22\",\"capstone_id\":\"22\",\"status\":\"Pre-Documentation\",\"xf1\":0,\"xf2\":\"PENDING\",\"xf3\":\"NOT YET, SET\"}', 'http://127.0.0.1:8000/api/create_capstone_proj/22', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', NULL, '2023-01-18 18:33:58', '2023-01-18 18:33:58'),
(156, 'App\\Models\\User', 1, 'created', 'App\\Models\\Capstone1', 23, '[]', '{\"id\":\"23\",\"capstone_id\":\"23\",\"status\":\"Working Cahapter 1,2,3\",\"xf1\":0,\"xf2\":\"PENDING\",\"xf3\":\"NOT YET, SET\"}', 'http://127.0.0.1:8000/api/create_capstone_proj/23', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', NULL, '2023-01-18 18:34:03', '2023-01-18 18:34:03'),
(157, 'App\\Models\\User', 1, 'created', 'App\\Models\\Capstone2', 23, '[]', '{\"id\":\"23\",\"status\":\"Under-Development\",\"capstone_id\":\"23\",\"xf1\":0,\"xf2\":\"PENDING\",\"xf3\":\"NOT YET, SET\"}', 'http://127.0.0.1:8000/api/create_capstone_proj/23', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', NULL, '2023-01-18 18:34:03', '2023-01-18 18:34:03'),
(158, 'App\\Models\\User', 1, 'created', 'App\\Models\\Capstone3', 23, '[]', '{\"id\":\"23\",\"capstone_id\":\"23\",\"status\":\"Pre-Documentation\",\"xf1\":0,\"xf2\":\"PENDING\",\"xf3\":\"NOT YET, SET\"}', 'http://127.0.0.1:8000/api/create_capstone_proj/23', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', NULL, '2023-01-18 18:34:03', '2023-01-18 18:34:03'),
(159, 'App\\Models\\User', 1, 'created', 'App\\Models\\Capstone1', 24, '[]', '{\"id\":\"24\",\"capstone_id\":\"24\",\"status\":\"Working Cahapter 1,2,3\",\"xf1\":0,\"xf2\":\"PENDING\",\"xf3\":\"NOT YET, SET\"}', 'http://127.0.0.1:8000/api/create_capstone_proj/24', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', NULL, '2023-01-18 18:34:05', '2023-01-18 18:34:05'),
(160, 'App\\Models\\User', 1, 'created', 'App\\Models\\Capstone2', 24, '[]', '{\"id\":\"24\",\"status\":\"Under-Development\",\"capstone_id\":\"24\",\"xf1\":0,\"xf2\":\"PENDING\",\"xf3\":\"NOT YET, SET\"}', 'http://127.0.0.1:8000/api/create_capstone_proj/24', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', NULL, '2023-01-18 18:34:05', '2023-01-18 18:34:05'),
(161, 'App\\Models\\User', 1, 'created', 'App\\Models\\Capstone3', 24, '[]', '{\"id\":\"24\",\"capstone_id\":\"24\",\"status\":\"Pre-Documentation\",\"xf1\":0,\"xf2\":\"PENDING\",\"xf3\":\"NOT YET, SET\"}', 'http://127.0.0.1:8000/api/create_capstone_proj/24', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', NULL, '2023-01-18 18:34:05', '2023-01-18 18:34:05'),
(162, 'App\\Models\\User', 1, 'created', 'App\\Models\\Capstone1', 25, '[]', '{\"id\":\"25\",\"capstone_id\":\"25\",\"status\":\"Working Cahapter 1,2,3\",\"xf1\":0,\"xf2\":\"PENDING\",\"xf3\":\"NOT YET, SET\"}', 'http://127.0.0.1:8000/api/create_capstone_proj/25', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', NULL, '2023-01-18 18:34:06', '2023-01-18 18:34:06'),
(163, 'App\\Models\\User', 1, 'created', 'App\\Models\\Capstone2', 25, '[]', '{\"id\":\"25\",\"status\":\"Under-Development\",\"capstone_id\":\"25\",\"xf1\":0,\"xf2\":\"PENDING\",\"xf3\":\"NOT YET, SET\"}', 'http://127.0.0.1:8000/api/create_capstone_proj/25', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', NULL, '2023-01-18 18:34:06', '2023-01-18 18:34:06'),
(164, 'App\\Models\\User', 1, 'created', 'App\\Models\\Capstone3', 25, '[]', '{\"id\":\"25\",\"capstone_id\":\"25\",\"status\":\"Pre-Documentation\",\"xf1\":0,\"xf2\":\"PENDING\",\"xf3\":\"NOT YET, SET\"}', 'http://127.0.0.1:8000/api/create_capstone_proj/25', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', NULL, '2023-01-18 18:34:06', '2023-01-18 18:34:06'),
(165, 'App\\Models\\User', 1, 'created', 'App\\Models\\Capstone1', 26, '[]', '{\"id\":\"26\",\"capstone_id\":\"26\",\"status\":\"Working Cahapter 1,2,3\",\"xf1\":0,\"xf2\":\"PENDING\",\"xf3\":\"NOT YET, SET\"}', 'http://127.0.0.1:8000/api/create_capstone_proj/26', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', NULL, '2023-01-18 18:34:07', '2023-01-18 18:34:07'),
(166, 'App\\Models\\User', 1, 'created', 'App\\Models\\Capstone2', 26, '[]', '{\"id\":\"26\",\"status\":\"Under-Development\",\"capstone_id\":\"26\",\"xf1\":0,\"xf2\":\"PENDING\",\"xf3\":\"NOT YET, SET\"}', 'http://127.0.0.1:8000/api/create_capstone_proj/26', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', NULL, '2023-01-18 18:34:07', '2023-01-18 18:34:07'),
(167, 'App\\Models\\User', 1, 'created', 'App\\Models\\Capstone3', 26, '[]', '{\"id\":\"26\",\"capstone_id\":\"26\",\"status\":\"Pre-Documentation\",\"xf1\":0,\"xf2\":\"PENDING\",\"xf3\":\"NOT YET, SET\"}', 'http://127.0.0.1:8000/api/create_capstone_proj/26', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', NULL, '2023-01-18 18:34:07', '2023-01-18 18:34:07'),
(168, 'App\\Models\\User', 1, 'created', 'App\\Models\\Capstone1', 27, '[]', '{\"id\":\"27\",\"capstone_id\":\"27\",\"status\":\"Working Cahapter 1,2,3\",\"xf1\":0,\"xf2\":\"PENDING\",\"xf3\":\"NOT YET, SET\"}', 'http://127.0.0.1:8000/api/create_capstone_proj/27', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', NULL, '2023-01-18 18:34:08', '2023-01-18 18:34:08'),
(169, 'App\\Models\\User', 1, 'created', 'App\\Models\\Capstone2', 27, '[]', '{\"id\":\"27\",\"status\":\"Under-Development\",\"capstone_id\":\"27\",\"xf1\":0,\"xf2\":\"PENDING\",\"xf3\":\"NOT YET, SET\"}', 'http://127.0.0.1:8000/api/create_capstone_proj/27', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', NULL, '2023-01-18 18:34:08', '2023-01-18 18:34:08'),
(170, 'App\\Models\\User', 1, 'created', 'App\\Models\\Capstone3', 27, '[]', '{\"id\":\"27\",\"capstone_id\":\"27\",\"status\":\"Pre-Documentation\",\"xf1\":0,\"xf2\":\"PENDING\",\"xf3\":\"NOT YET, SET\"}', 'http://127.0.0.1:8000/api/create_capstone_proj/27', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', NULL, '2023-01-18 18:34:08', '2023-01-18 18:34:08'),
(171, 'App\\Models\\User', 1, 'created', 'App\\Models\\Capstone1', 28, '[]', '{\"id\":\"28\",\"capstone_id\":\"28\",\"status\":\"Working Cahapter 1,2,3\",\"xf1\":0,\"xf2\":\"PENDING\",\"xf3\":\"NOT YET, SET\"}', 'http://127.0.0.1:8000/api/create_capstone_proj/28', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', NULL, '2023-01-18 18:34:10', '2023-01-18 18:34:10'),
(172, 'App\\Models\\User', 1, 'created', 'App\\Models\\Capstone2', 28, '[]', '{\"id\":\"28\",\"status\":\"Under-Development\",\"capstone_id\":\"28\",\"xf1\":0,\"xf2\":\"PENDING\",\"xf3\":\"NOT YET, SET\"}', 'http://127.0.0.1:8000/api/create_capstone_proj/28', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', NULL, '2023-01-18 18:34:10', '2023-01-18 18:34:10'),
(173, 'App\\Models\\User', 1, 'created', 'App\\Models\\Capstone3', 28, '[]', '{\"id\":\"28\",\"capstone_id\":\"28\",\"status\":\"Pre-Documentation\",\"xf1\":0,\"xf2\":\"PENDING\",\"xf3\":\"NOT YET, SET\"}', 'http://127.0.0.1:8000/api/create_capstone_proj/28', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', NULL, '2023-01-18 18:34:10', '2023-01-18 18:34:10'),
(174, 'App\\Models\\User', 1, 'deleted', 'App\\Models\\Capstone', 29, '{\"id\":29,\"groupname\":\"dwdwdw\",\"title\":\"wdwdwddwd\",\"abstract\":\"dwdwdwd\",\"start_date\":null,\"xf1\":\"4th year\",\"xf2\":\"UNDER DEVELOPMENT\",\"xf3\":\"2023 - 2023\",\"xf4\":null,\"xf5\":null,\"name\":null,\"path\":null,\"xf6\":null,\"xf7\":null,\"xf8\":null}', '[]', 'http://127.0.0.1:8000/api/delete_capstone/29', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', NULL, '2023-01-18 18:43:01', '2023-01-18 18:43:01'),
(175, 'App\\Models\\User', 1, 'deleted', 'App\\Models\\Capstone1', 29, '{\"id\":29,\"capstone_id\":29,\"revise_manuscript\":null,\"action_done\":null,\"mou\":null,\"title_proposal_form\":null,\"adviser_appointmentform\":null,\"ppt\":null,\"recorded_proposal\":null,\"minutes\":null,\"gcash_ss_file\":null,\"acceptance_of_panel\":null,\"capstone_ocr\":null,\"status\":\"Working Cahapter 1,2,3\",\"propose_date\":null,\"xf1\":\"0\",\"xf2\":\"PENDING\",\"xf3\":\"NOT YET, SET\",\"minutes1\":null,\"xf4\":null,\"xf5\":null,\"xf6\":null}', '[]', 'http://127.0.0.1:8000/api/delete_capstone/29', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', NULL, '2023-01-18 18:43:01', '2023-01-18 18:43:01'),
(176, 'App\\Models\\User', 1, 'deleted', 'App\\Models\\Capstone2', 29, '{\"id\":29,\"capstone_id\":29,\"capstone_link\":null,\"proto_minutes\":null,\"proto_matrix\":null,\"ad_appointment_form\":null,\"gcash_payment\":null,\"acceptance_ss\":null,\"status\":\"Under-Development\",\"prototype_date\":null,\"xf1\":\"0\",\"xf2\":\"PENDING\",\"xf3\":\"NOT YET, SET\",\"minutes1\":null,\"xf4\":null,\"xf5\":null,\"xf6\":null}', '[]', 'http://127.0.0.1:8000/api/delete_capstone/29', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', NULL, '2023-01-18 18:43:01', '2023-01-18 18:43:01'),
(177, 'App\\Models\\User', 1, 'deleted', 'App\\Models\\Capstone3', 29, '{\"id\":29,\"capstone_id\":29,\"final_docu\":null,\"proto_minutes\":null,\"proto_matrix\":null,\"ppt\":null,\"software_demo\":null,\"gcash_payment\":null,\"acceptance_ss\":null,\"githublink\":null,\"status\":\"Pre-Documentation\",\"final_date\":null,\"xf1\":\"0\",\"xf2\":\"PENDING\",\"xf3\":\"NOT YET, SET\",\"minutes1\":null,\"xf4\":null,\"xf5\":null,\"xf6\":null}', '[]', 'http://127.0.0.1:8000/api/delete_capstone/29', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', NULL, '2023-01-18 18:43:01', '2023-01-18 18:43:01'),
(178, 'App\\Models\\User', 1, 'deleted', 'App\\Models\\Capstone', 27, '{\"id\":27,\"groupname\":\"fefefe\",\"title\":\"fefefef\",\"abstract\":\"null\",\"start_date\":null,\"xf1\":\"4th year\",\"xf2\":\"DEPLOYED\",\"xf3\":\"2023 - 2023\",\"xf4\":null,\"xf5\":null,\"name\":null,\"path\":null,\"xf6\":null,\"xf7\":null,\"xf8\":null}', '[]', 'http://127.0.0.1:8000/api/delete_capstone/27', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', NULL, '2023-01-18 18:43:06', '2023-01-18 18:43:06'),
(179, 'App\\Models\\User', 1, 'deleted', 'App\\Models\\Capstone1', 27, '{\"id\":27,\"capstone_id\":27,\"revise_manuscript\":null,\"action_done\":null,\"mou\":null,\"title_proposal_form\":null,\"adviser_appointmentform\":null,\"ppt\":null,\"recorded_proposal\":null,\"minutes\":null,\"gcash_ss_file\":null,\"acceptance_of_panel\":null,\"capstone_ocr\":null,\"status\":\"Working Cahapter 1,2,3\",\"propose_date\":null,\"xf1\":\"0\",\"xf2\":\"PENDING\",\"xf3\":\"NOT YET, SET\",\"minutes1\":null,\"xf4\":null,\"xf5\":null,\"xf6\":null}', '[]', 'http://127.0.0.1:8000/api/delete_capstone/27', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', NULL, '2023-01-18 18:43:06', '2023-01-18 18:43:06'),
(180, 'App\\Models\\User', 1, 'deleted', 'App\\Models\\Capstone2', 27, '{\"id\":27,\"capstone_id\":27,\"capstone_link\":null,\"proto_minutes\":null,\"proto_matrix\":null,\"ad_appointment_form\":null,\"gcash_payment\":null,\"acceptance_ss\":null,\"status\":\"Under-Development\",\"prototype_date\":null,\"xf1\":\"0\",\"xf2\":\"PENDING\",\"xf3\":\"NOT YET, SET\",\"minutes1\":null,\"xf4\":null,\"xf5\":null,\"xf6\":null}', '[]', 'http://127.0.0.1:8000/api/delete_capstone/27', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', NULL, '2023-01-18 18:43:06', '2023-01-18 18:43:06'),
(181, 'App\\Models\\User', 1, 'deleted', 'App\\Models\\Capstone3', 27, '{\"id\":27,\"capstone_id\":27,\"final_docu\":null,\"proto_minutes\":null,\"proto_matrix\":null,\"ppt\":null,\"software_demo\":null,\"gcash_payment\":null,\"acceptance_ss\":null,\"githublink\":null,\"status\":\"Pre-Documentation\",\"final_date\":null,\"xf1\":\"0\",\"xf2\":\"PENDING\",\"xf3\":\"NOT YET, SET\",\"minutes1\":null,\"xf4\":null,\"xf5\":null,\"xf6\":null}', '[]', 'http://127.0.0.1:8000/api/delete_capstone/27', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', NULL, '2023-01-18 18:43:06', '2023-01-18 18:43:06'),
(182, 'App\\Models\\User', 1, 'deleted', 'App\\Models\\Capstone', 28, '{\"id\":28,\"groupname\":\"fefefe\",\"title\":\"fefefef\",\"abstract\":\"null\",\"start_date\":null,\"xf1\":\"4th year\",\"xf2\":\"DEPLOYED\",\"xf3\":\"2017 - 2022\",\"xf4\":null,\"xf5\":null,\"name\":null,\"path\":null,\"xf6\":null,\"xf7\":null,\"xf8\":null}', '[]', 'http://127.0.0.1:8000/api/delete_capstone/28', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', NULL, '2023-01-18 18:43:11', '2023-01-18 18:43:11'),
(183, 'App\\Models\\User', 1, 'deleted', 'App\\Models\\Capstone1', 28, '{\"id\":28,\"capstone_id\":28,\"revise_manuscript\":null,\"action_done\":null,\"mou\":null,\"title_proposal_form\":null,\"adviser_appointmentform\":null,\"ppt\":null,\"recorded_proposal\":null,\"minutes\":null,\"gcash_ss_file\":null,\"acceptance_of_panel\":null,\"capstone_ocr\":null,\"status\":\"Working Cahapter 1,2,3\",\"propose_date\":null,\"xf1\":\"0\",\"xf2\":\"PENDING\",\"xf3\":\"NOT YET, SET\",\"minutes1\":null,\"xf4\":null,\"xf5\":null,\"xf6\":null}', '[]', 'http://127.0.0.1:8000/api/delete_capstone/28', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', NULL, '2023-01-18 18:43:11', '2023-01-18 18:43:11'),
(184, 'App\\Models\\User', 1, 'deleted', 'App\\Models\\Capstone2', 28, '{\"id\":28,\"capstone_id\":28,\"capstone_link\":null,\"proto_minutes\":null,\"proto_matrix\":null,\"ad_appointment_form\":null,\"gcash_payment\":null,\"acceptance_ss\":null,\"status\":\"Under-Development\",\"prototype_date\":null,\"xf1\":\"0\",\"xf2\":\"PENDING\",\"xf3\":\"NOT YET, SET\",\"minutes1\":null,\"xf4\":null,\"xf5\":null,\"xf6\":null}', '[]', 'http://127.0.0.1:8000/api/delete_capstone/28', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', NULL, '2023-01-18 18:43:12', '2023-01-18 18:43:12'),
(185, 'App\\Models\\User', 1, 'deleted', 'App\\Models\\Capstone3', 28, '{\"id\":28,\"capstone_id\":28,\"final_docu\":null,\"proto_minutes\":null,\"proto_matrix\":null,\"ppt\":null,\"software_demo\":null,\"gcash_payment\":null,\"acceptance_ss\":null,\"githublink\":null,\"status\":\"Pre-Documentation\",\"final_date\":null,\"xf1\":\"0\",\"xf2\":\"PENDING\",\"xf3\":\"NOT YET, SET\",\"minutes1\":null,\"xf4\":null,\"xf5\":null,\"xf6\":null}', '[]', 'http://127.0.0.1:8000/api/delete_capstone/28', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', NULL, '2023-01-18 18:43:12', '2023-01-18 18:43:12'),
(186, 'App\\Models\\User', 1, 'deleted', 'App\\Models\\Capstone', 26, '{\"id\":26,\"groupname\":\"cwdwdwd\",\"title\":\"dwd\",\"abstract\":\"dwdwdwd\",\"start_date\":null,\"xf1\":\"Graduated\",\"xf2\":\"DEPLOYED\",\"xf3\":\"2023 - 2023\",\"xf4\":null,\"xf5\":null,\"name\":null,\"path\":null,\"xf6\":null,\"xf7\":null,\"xf8\":null}', '[]', 'http://127.0.0.1:8000/api/delete_capstone/26', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', NULL, '2023-01-18 18:43:18', '2023-01-18 18:43:18'),
(187, 'App\\Models\\User', 1, 'deleted', 'App\\Models\\Capstone1', 26, '{\"id\":26,\"capstone_id\":26,\"revise_manuscript\":null,\"action_done\":null,\"mou\":null,\"title_proposal_form\":null,\"adviser_appointmentform\":null,\"ppt\":null,\"recorded_proposal\":null,\"minutes\":null,\"gcash_ss_file\":null,\"acceptance_of_panel\":null,\"capstone_ocr\":null,\"status\":\"Working Cahapter 1,2,3\",\"propose_date\":null,\"xf1\":\"0\",\"xf2\":\"PENDING\",\"xf3\":\"NOT YET, SET\",\"minutes1\":null,\"xf4\":null,\"xf5\":null,\"xf6\":null}', '[]', 'http://127.0.0.1:8000/api/delete_capstone/26', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', NULL, '2023-01-18 18:43:18', '2023-01-18 18:43:18'),
(188, 'App\\Models\\User', 1, 'deleted', 'App\\Models\\Capstone2', 26, '{\"id\":26,\"capstone_id\":26,\"capstone_link\":null,\"proto_minutes\":null,\"proto_matrix\":null,\"ad_appointment_form\":null,\"gcash_payment\":null,\"acceptance_ss\":null,\"status\":\"Under-Development\",\"prototype_date\":null,\"xf1\":\"0\",\"xf2\":\"PENDING\",\"xf3\":\"NOT YET, SET\",\"minutes1\":null,\"xf4\":null,\"xf5\":null,\"xf6\":null}', '[]', 'http://127.0.0.1:8000/api/delete_capstone/26', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', NULL, '2023-01-18 18:43:18', '2023-01-18 18:43:18'),
(189, 'App\\Models\\User', 1, 'deleted', 'App\\Models\\Capstone3', 26, '{\"id\":26,\"capstone_id\":26,\"final_docu\":null,\"proto_minutes\":null,\"proto_matrix\":null,\"ppt\":null,\"software_demo\":null,\"gcash_payment\":null,\"acceptance_ss\":null,\"githublink\":null,\"status\":\"Pre-Documentation\",\"final_date\":null,\"xf1\":\"0\",\"xf2\":\"PENDING\",\"xf3\":\"NOT YET, SET\",\"minutes1\":null,\"xf4\":null,\"xf5\":null,\"xf6\":null}', '[]', 'http://127.0.0.1:8000/api/delete_capstone/26', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', NULL, '2023-01-18 18:43:18', '2023-01-18 18:43:18'),
(190, 'App\\Models\\User', 1, 'deleted', 'App\\Models\\Capstone', 25, '{\"id\":25,\"groupname\":\"cwdwdwd\",\"title\":\"dwd\",\"abstract\":\"ddwdwdwd\",\"start_date\":null,\"xf1\":\"Graduated\",\"xf2\":\"DEPLOYED\",\"xf3\":\"2023 - 2023\",\"xf4\":null,\"xf5\":null,\"name\":null,\"path\":null,\"xf6\":null,\"xf7\":null,\"xf8\":null}', '[]', 'http://127.0.0.1:8000/api/delete_capstone/25', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', NULL, '2023-01-18 18:43:23', '2023-01-18 18:43:23'),
(191, 'App\\Models\\User', 1, 'deleted', 'App\\Models\\Capstone1', 25, '{\"id\":25,\"capstone_id\":25,\"revise_manuscript\":null,\"action_done\":null,\"mou\":null,\"title_proposal_form\":null,\"adviser_appointmentform\":null,\"ppt\":null,\"recorded_proposal\":null,\"minutes\":null,\"gcash_ss_file\":null,\"acceptance_of_panel\":null,\"capstone_ocr\":null,\"status\":\"Working Cahapter 1,2,3\",\"propose_date\":null,\"xf1\":\"0\",\"xf2\":\"PENDING\",\"xf3\":\"NOT YET, SET\",\"minutes1\":null,\"xf4\":null,\"xf5\":null,\"xf6\":null}', '[]', 'http://127.0.0.1:8000/api/delete_capstone/25', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', NULL, '2023-01-18 18:43:23', '2023-01-18 18:43:23'),
(192, 'App\\Models\\User', 1, 'deleted', 'App\\Models\\Capstone2', 25, '{\"id\":25,\"capstone_id\":25,\"capstone_link\":null,\"proto_minutes\":null,\"proto_matrix\":null,\"ad_appointment_form\":null,\"gcash_payment\":null,\"acceptance_ss\":null,\"status\":\"Under-Development\",\"prototype_date\":null,\"xf1\":\"0\",\"xf2\":\"PENDING\",\"xf3\":\"NOT YET, SET\",\"minutes1\":null,\"xf4\":null,\"xf5\":null,\"xf6\":null}', '[]', 'http://127.0.0.1:8000/api/delete_capstone/25', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', NULL, '2023-01-18 18:43:23', '2023-01-18 18:43:23'),
(193, 'App\\Models\\User', 1, 'deleted', 'App\\Models\\Capstone3', 25, '{\"id\":25,\"capstone_id\":25,\"final_docu\":null,\"proto_minutes\":null,\"proto_matrix\":null,\"ppt\":null,\"software_demo\":null,\"gcash_payment\":null,\"acceptance_ss\":null,\"githublink\":null,\"status\":\"Pre-Documentation\",\"final_date\":null,\"xf1\":\"0\",\"xf2\":\"PENDING\",\"xf3\":\"NOT YET, SET\",\"minutes1\":null,\"xf4\":null,\"xf5\":null,\"xf6\":null}', '[]', 'http://127.0.0.1:8000/api/delete_capstone/25', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', NULL, '2023-01-18 18:43:23', '2023-01-18 18:43:23'),
(194, 'App\\Models\\User', 1, 'deleted', 'App\\Models\\Capstone', 24, '{\"id\":24,\"groupname\":\"dwdwd\",\"title\":\"wdwdwd\",\"abstract\":\"null\",\"start_date\":null,\"xf1\":\"4th year\",\"xf2\":\"UNDER DEVELOPMENT\",\"xf3\":\"2023 - 2023\",\"xf4\":null,\"xf5\":null,\"name\":null,\"path\":null,\"xf6\":null,\"xf7\":null,\"xf8\":null}', '[]', 'http://127.0.0.1:8000/api/delete_capstone/24', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', NULL, '2023-01-18 18:43:28', '2023-01-18 18:43:28'),
(195, 'App\\Models\\User', 1, 'deleted', 'App\\Models\\Capstone1', 24, '{\"id\":24,\"capstone_id\":24,\"revise_manuscript\":null,\"action_done\":null,\"mou\":null,\"title_proposal_form\":null,\"adviser_appointmentform\":null,\"ppt\":null,\"recorded_proposal\":null,\"minutes\":null,\"gcash_ss_file\":null,\"acceptance_of_panel\":null,\"capstone_ocr\":null,\"status\":\"Working Cahapter 1,2,3\",\"propose_date\":null,\"xf1\":\"0\",\"xf2\":\"PENDING\",\"xf3\":\"NOT YET, SET\",\"minutes1\":null,\"xf4\":null,\"xf5\":null,\"xf6\":null}', '[]', 'http://127.0.0.1:8000/api/delete_capstone/24', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', NULL, '2023-01-18 18:43:28', '2023-01-18 18:43:28'),
(196, 'App\\Models\\User', 1, 'deleted', 'App\\Models\\Capstone2', 24, '{\"id\":24,\"capstone_id\":24,\"capstone_link\":null,\"proto_minutes\":null,\"proto_matrix\":null,\"ad_appointment_form\":null,\"gcash_payment\":null,\"acceptance_ss\":null,\"status\":\"Under-Development\",\"prototype_date\":null,\"xf1\":\"0\",\"xf2\":\"PENDING\",\"xf3\":\"NOT YET, SET\",\"minutes1\":null,\"xf4\":null,\"xf5\":null,\"xf6\":null}', '[]', 'http://127.0.0.1:8000/api/delete_capstone/24', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', NULL, '2023-01-18 18:43:28', '2023-01-18 18:43:28'),
(197, 'App\\Models\\User', 1, 'deleted', 'App\\Models\\Capstone3', 24, '{\"id\":24,\"capstone_id\":24,\"final_docu\":null,\"proto_minutes\":null,\"proto_matrix\":null,\"ppt\":null,\"software_demo\":null,\"gcash_payment\":null,\"acceptance_ss\":null,\"githublink\":null,\"status\":\"Pre-Documentation\",\"final_date\":null,\"xf1\":\"0\",\"xf2\":\"PENDING\",\"xf3\":\"NOT YET, SET\",\"minutes1\":null,\"xf4\":null,\"xf5\":null,\"xf6\":null}', '[]', 'http://127.0.0.1:8000/api/delete_capstone/24', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', NULL, '2023-01-18 18:43:28', '2023-01-18 18:43:28'),
(198, 'App\\Models\\User', 1, 'deleted', 'App\\Models\\Capstone', 22, '{\"id\":22,\"groupname\":\"dwdwd\",\"title\":\"wdwdwd\",\"abstract\":\"dwdwdw\",\"start_date\":null,\"xf1\":\"4th year\",\"xf2\":\"UNDER DEVELOPMENT\",\"xf3\":\"2023 - 2023\",\"xf4\":null,\"xf5\":null,\"name\":null,\"path\":null,\"xf6\":null,\"xf7\":null,\"xf8\":null}', '[]', 'http://127.0.0.1:8000/api/delete_capstone/22', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', NULL, '2023-01-18 18:43:37', '2023-01-18 18:43:37'),
(199, 'App\\Models\\User', 1, 'deleted', 'App\\Models\\Capstone1', 22, '{\"id\":22,\"capstone_id\":22,\"revise_manuscript\":null,\"action_done\":null,\"mou\":null,\"title_proposal_form\":null,\"adviser_appointmentform\":null,\"ppt\":null,\"recorded_proposal\":null,\"minutes\":null,\"gcash_ss_file\":null,\"acceptance_of_panel\":null,\"capstone_ocr\":null,\"status\":\"Working Cahapter 1,2,3\",\"propose_date\":null,\"xf1\":\"0\",\"xf2\":\"PENDING\",\"xf3\":\"NOT YET, SET\",\"minutes1\":null,\"xf4\":null,\"xf5\":null,\"xf6\":null}', '[]', 'http://127.0.0.1:8000/api/delete_capstone/22', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', NULL, '2023-01-18 18:43:37', '2023-01-18 18:43:37'),
(200, 'App\\Models\\User', 1, 'deleted', 'App\\Models\\Capstone2', 22, '{\"id\":22,\"capstone_id\":22,\"capstone_link\":null,\"proto_minutes\":null,\"proto_matrix\":null,\"ad_appointment_form\":null,\"gcash_payment\":null,\"acceptance_ss\":null,\"status\":\"Under-Development\",\"prototype_date\":null,\"xf1\":\"0\",\"xf2\":\"PENDING\",\"xf3\":\"NOT YET, SET\",\"minutes1\":null,\"xf4\":null,\"xf5\":null,\"xf6\":null}', '[]', 'http://127.0.0.1:8000/api/delete_capstone/22', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', NULL, '2023-01-18 18:43:37', '2023-01-18 18:43:37'),
(201, 'App\\Models\\User', 1, 'deleted', 'App\\Models\\Capstone3', 22, '{\"id\":22,\"capstone_id\":22,\"final_docu\":null,\"proto_minutes\":null,\"proto_matrix\":null,\"ppt\":null,\"software_demo\":null,\"gcash_payment\":null,\"acceptance_ss\":null,\"githublink\":null,\"status\":\"Pre-Documentation\",\"final_date\":null,\"xf1\":\"0\",\"xf2\":\"PENDING\",\"xf3\":\"NOT YET, SET\",\"minutes1\":null,\"xf4\":null,\"xf5\":null,\"xf6\":null}', '[]', 'http://127.0.0.1:8000/api/delete_capstone/22', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', NULL, '2023-01-18 18:43:37', '2023-01-18 18:43:37'),
(202, 'App\\Models\\User', 1, 'deleted', 'App\\Models\\Capstone', 23, '{\"id\":23,\"groupname\":\"dwdwd\",\"title\":\"wdwdwd\",\"abstract\":\"null\",\"start_date\":null,\"xf1\":\"4th year\",\"xf2\":\"UNDER DEVELOPMENT\",\"xf3\":\"2023 - 2023\",\"xf4\":null,\"xf5\":null,\"name\":null,\"path\":null,\"xf6\":null,\"xf7\":null,\"xf8\":null}', '[]', 'http://127.0.0.1:8000/api/delete_capstone/23', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', NULL, '2023-01-18 18:43:42', '2023-01-18 18:43:42'),
(203, 'App\\Models\\User', 1, 'deleted', 'App\\Models\\Capstone1', 23, '{\"id\":23,\"capstone_id\":23,\"revise_manuscript\":null,\"action_done\":null,\"mou\":null,\"title_proposal_form\":null,\"adviser_appointmentform\":null,\"ppt\":null,\"recorded_proposal\":null,\"minutes\":null,\"gcash_ss_file\":null,\"acceptance_of_panel\":null,\"capstone_ocr\":null,\"status\":\"Working Cahapter 1,2,3\",\"propose_date\":null,\"xf1\":\"0\",\"xf2\":\"PENDING\",\"xf3\":\"NOT YET, SET\",\"minutes1\":null,\"xf4\":null,\"xf5\":null,\"xf6\":null}', '[]', 'http://127.0.0.1:8000/api/delete_capstone/23', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', NULL, '2023-01-18 18:43:42', '2023-01-18 18:43:42'),
(204, 'App\\Models\\User', 1, 'deleted', 'App\\Models\\Capstone2', 23, '{\"id\":23,\"capstone_id\":23,\"capstone_link\":null,\"proto_minutes\":null,\"proto_matrix\":null,\"ad_appointment_form\":null,\"gcash_payment\":null,\"acceptance_ss\":null,\"status\":\"Under-Development\",\"prototype_date\":null,\"xf1\":\"0\",\"xf2\":\"PENDING\",\"xf3\":\"NOT YET, SET\",\"minutes1\":null,\"xf4\":null,\"xf5\":null,\"xf6\":null}', '[]', 'http://127.0.0.1:8000/api/delete_capstone/23', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', NULL, '2023-01-18 18:43:42', '2023-01-18 18:43:42'),
(205, 'App\\Models\\User', 1, 'deleted', 'App\\Models\\Capstone3', 23, '{\"id\":23,\"capstone_id\":23,\"final_docu\":null,\"proto_minutes\":null,\"proto_matrix\":null,\"ppt\":null,\"software_demo\":null,\"gcash_payment\":null,\"acceptance_ss\":null,\"githublink\":null,\"status\":\"Pre-Documentation\",\"final_date\":null,\"xf1\":\"0\",\"xf2\":\"PENDING\",\"xf3\":\"NOT YET, SET\",\"minutes1\":null,\"xf4\":null,\"xf5\":null,\"xf6\":null}', '[]', 'http://127.0.0.1:8000/api/delete_capstone/23', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', NULL, '2023-01-18 18:43:42', '2023-01-18 18:43:42'),
(206, 'App\\Models\\User', 1, 'created', 'App\\Models\\User', 150, '[]', '{\"name\":\"panel1\",\"mname\":\"panel2\",\"photo\":\"1674096315.jpeg\",\"lname\":\"panel3\",\"year\":null,\"gender\":\"Male\",\"uid\":\"12345678\",\"email\":\"a1d2m3i4n@gmail.comm\",\"password\":\"$2y$10$7JafliNi64iupaaJbd7qPu6WI66N3GdmKxMTs8volH5sbBGwa\\/r2u\",\"role_num\":2,\"id\":150}', 'http://127.0.0.1:8000/api/add_user', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', NULL, '2023-01-18 18:45:16', '2023-01-18 18:45:16'),
(207, 'App\\Models\\User', 1, 'created', 'App\\Models\\User', 151, '[]', '{\"name\":\"panel2\",\"mname\":\"panel2\",\"photo\":\"1674096415.jpeg\",\"lname\":\"panel2\",\"year\":null,\"gender\":\"Male\",\"uid\":\"12345678\",\"email\":\"a1d2m3i4n@gmail.commm\",\"password\":\"$2y$10$ACYbulvQG2Kj7\\/OIX4d7bOXBkSshJXrR0b6RKxro4CoIIB6S1FsrC\",\"role_num\":2,\"id\":151}', 'http://127.0.0.1:8000/api/add_user', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', NULL, '2023-01-18 18:46:56', '2023-01-18 18:46:56'),
(208, 'App\\Models\\User', 1, 'created', 'App\\Models\\User', 160, '[]', '{\"name\":\"panel3\",\"mname\":\"panel3\",\"photo\":\"1674096550.jpeg\",\"lname\":\"panel3\",\"year\":null,\"gender\":\"Male\",\"uid\":\"1235681111\",\"email\":\"mma1d2m3i4n@gmail.com\",\"password\":\"$2y$10$dUHCa5QcYYO\\/CkfROW4\\/AeeG0j26pAIUKk\\/D1X25mMJrrNRp9V\\/ji\",\"role_num\":2,\"id\":160}', 'http://127.0.0.1:8000/api/add_user', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', NULL, '2023-01-18 18:49:11', '2023-01-18 18:49:11'),
(209, 'App\\Models\\User', 1, 'created', 'App\\Models\\Capstone', 31, '[]', '{\"groupname\":\"eqeqeqeq\",\"title\":\"qeqeqeqe\",\"abstract\":\"null\",\"xf3\":\"2021 - 2023\",\"xf1\":\"Graduated\",\"xf2\":\"DEPLOYED\",\"id\":31}', 'http://127.0.0.1:8000/api/add_capstone_project', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', NULL, '2023-01-18 19:08:59', '2023-01-18 19:08:59'),
(210, 'App\\Models\\User', 1, 'created', 'App\\Models\\Capstone1', 31, '[]', '{\"id\":\"31\",\"capstone_id\":\"31\",\"status\":\"Working Cahapter 1,2,3\",\"xf1\":0,\"xf2\":\"PENDING\",\"xf3\":\"NOT YET, SET\"}', 'http://127.0.0.1:8000/api/create_capstone_proj/31', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', NULL, '2023-01-18 19:09:08', '2023-01-18 19:09:08'),
(211, 'App\\Models\\User', 1, 'created', 'App\\Models\\Capstone2', 31, '[]', '{\"id\":\"31\",\"status\":\"Under-Development\",\"capstone_id\":\"31\",\"xf1\":0,\"xf2\":\"PENDING\",\"xf3\":\"NOT YET, SET\"}', 'http://127.0.0.1:8000/api/create_capstone_proj/31', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', NULL, '2023-01-18 19:09:08', '2023-01-18 19:09:08'),
(212, 'App\\Models\\User', 1, 'created', 'App\\Models\\Capstone3', 31, '[]', '{\"id\":\"31\",\"capstone_id\":\"31\",\"status\":\"Pre-Documentation\",\"xf1\":0,\"xf2\":\"PENDING\",\"xf3\":\"NOT YET, SET\"}', 'http://127.0.0.1:8000/api/create_capstone_proj/31', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', NULL, '2023-01-18 19:09:08', '2023-01-18 19:09:08'),
(213, 'App\\Models\\User', 1, 'deleted', 'App\\Models\\User', 150, '{\"id\":150,\"name\":\"panel1\",\"mname\":\"panel2\",\"lname\":\"panel3\",\"uid\":\"12345678\",\"year\":null,\"email\":\"a1d2m3i4n@gmail.comm\",\"photo\":\"1674096315.jpeg\",\"gender\":\"Male\",\"email_verified_at\":null,\"password\":\"$2y$10$7JafliNi64iupaaJbd7qPu6WI66N3GdmKxMTs8volH5sbBGwa\\/r2u\",\"remember_token\":null,\"role_num\":\"2\"}', '[]', 'http://127.0.0.1:8000/api/delete_user/150', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', NULL, '2023-01-18 19:09:23', '2023-01-18 19:09:23'),
(214, 'App\\Models\\User', 1, 'deleted', 'App\\Models\\User', 160, '{\"id\":160,\"name\":\"panel3\",\"mname\":\"panel3\",\"lname\":\"panel3\",\"uid\":\"1235681111\",\"year\":null,\"email\":\"mma1d2m3i4n@gmail.com\",\"photo\":\"1674096550.jpeg\",\"gender\":\"Male\",\"email_verified_at\":null,\"password\":\"$2y$10$dUHCa5QcYYO\\/CkfROW4\\/AeeG0j26pAIUKk\\/D1X25mMJrrNRp9V\\/ji\",\"remember_token\":null,\"role_num\":\"2\"}', '[]', 'http://127.0.0.1:8000/api/delete_user/160', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', NULL, '2023-01-20 00:38:38', '2023-01-20 00:38:38'),
(215, 'App\\Models\\User', 1, 'deleted', 'App\\Models\\User', 143, '{\"id\":143,\"name\":\"1111111\",\"mname\":\"1111111\",\"lname\":\"1111111\",\"uid\":\"1111111\",\"year\":\"not set\",\"email\":\"11111111111111@gmail.com\",\"photo\":null,\"gender\":\"not set\",\"email_verified_at\":null,\"password\":\"$2y$10$YANV1K4wKJWQUGG4OTk9juTthx\\/2DCeuOxyLQZAFIW5W6F\\/tFCr92\",\"remember_token\":null,\"role_num\":\"2\"}', '[]', 'http://127.0.0.1:8000/api/delete_user/143', '127.0.0.1', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Mobile Safari/537.36', NULL, '2023-01-20 00:41:20', '2023-01-20 00:41:20'),
(216, 'App\\Models\\User', 1, 'created', 'App\\Models\\Capstone', 32, '[]', '{\"groupname\":\"fefef\",\"title\":\"fefefef\",\"abstract\":\"ffefeddede\",\"xf3\":\"2023 - 2023\",\"xf1\":null,\"xf2\":null,\"id\":32}', 'http://127.0.0.1:8000/api/add_capstone_project', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', NULL, '2023-01-20 01:53:55', '2023-01-20 01:53:55'),
(217, 'App\\Models\\User', 1, 'created', 'App\\Models\\Capstone', 33, '[]', '{\"groupname\":\"dwdwd\",\"title\":\"dwdwd\",\"abstract\":\"ffrfr\",\"xf3\":\"2023 - 2023\",\"xf1\":null,\"xf2\":null,\"id\":33}', 'http://127.0.0.1:8000/api/add_capstone_project', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', NULL, '2023-01-20 04:13:09', '2023-01-20 04:13:09'),
(218, 'App\\Models\\User', 1, 'created', 'App\\Models\\Capstone', 34, '[]', '{\"groupname\":\"fwfwfw\",\"title\":\"cscscs\",\"abstract\":\"cscscs\",\"xf3\":\"2023 - 2023\",\"xf1\":\"4th year\",\"xf2\":\"UNDER DEVELOPMENT\",\"id\":34}', 'http://127.0.0.1:8000/api/add_capstone_project', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', NULL, '2023-01-20 04:22:39', '2023-01-20 04:22:39'),
(219, 'App\\Models\\User', 1, 'deleted', 'App\\Models\\Capstone', 33, '{\"id\":33,\"groupname\":\"dwdwd\",\"title\":\"dwdwd\",\"abstract\":\"ffrfr\",\"start_date\":null,\"xf1\":null,\"xf2\":null,\"xf3\":\"2023 - 2023\",\"xf4\":null,\"xf5\":null,\"name\":null,\"path\":null,\"xf6\":null,\"xf7\":null,\"xf8\":null}', '[]', 'http://127.0.0.1:8000/api/delete_capstone/33', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', NULL, '2023-01-20 04:22:56', '2023-01-20 04:22:56'),
(220, 'App\\Models\\User', 1, 'deleted', 'App\\Models\\Capstone', 32, '{\"id\":32,\"groupname\":\"fefef\",\"title\":\"fefefef\",\"abstract\":\"ffefeddede\",\"start_date\":null,\"xf1\":null,\"xf2\":null,\"xf3\":\"2023 - 2023\",\"xf4\":null,\"xf5\":null,\"name\":null,\"path\":null,\"xf6\":null,\"xf7\":null,\"xf8\":null}', '[]', 'http://127.0.0.1:8000/api/delete_capstone/32', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', NULL, '2023-01-20 04:23:02', '2023-01-20 04:23:02'),
(221, 'App\\Models\\User', 1, 'created', 'App\\Models\\Capstone', 35, '[]', '{\"groupname\":\"Archiving System\",\"title\":\"Archiving System\",\"abstract\":\"Archiving SystemArchiving SystemArchiving SystemArchiving SystemArchiving SystemArchiving SystemArchiving System Archiving System Archiving SystemArchiving System Archiving System v Archiving SystemArchiving SystemArchiving SystemArchiving SystemArchiving SystemArchiving SystemArchiving SystemArchiving SystemArchiving SystemArchiving SystemArchiving SystemArchiving SystemArchiving SystemArchiving SystemArchiving SystemArchiving SystemArchiving SystemArchiving SystemArchiving SystemArchiving SystemArchiving SystemArchiving SystemArchiving SystemArchiving SystemArchiving SystemArchiving SystemArchiving SystemArchiving SystemArchiving SystemArchiving SystemArchiving SystemArchiving SystemArchiving SystemArchiving SystemArchiving SystemArchiving SystemArchiving SystemArchiving SystemArchiving SystemArchiving SystemArchiving System\",\"xf3\":\"2023 - 2023\",\"xf1\":\"3rd year\",\"xf2\":\"UNDER DEVELOPMENT\",\"id\":35}', 'http://127.0.0.1:8000/api/add_capstone_project', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', NULL, '2023-01-20 04:49:37', '2023-01-20 04:49:37'),
(222, 'App\\Models\\User', 1, 'created', 'App\\Models\\Capstone', 36, '[]', '{\"groupname\":\"dwdwdwd\",\"title\":\"dwdwdw\",\"abstract\":\"wdwdwd\",\"xf3\":\"2023 - 2023\",\"xf1\":\"4th year\",\"xf2\":\"UNDER DEVELOPMENT\",\"id\":36}', 'http://127.0.0.1:8000/api/add_capstone_project', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', NULL, '2023-01-22 02:51:50', '2023-01-22 02:51:50'),
(223, 'App\\Models\\User', 1, 'created', 'App\\Models\\Capstone', 37, '[]', '{\"groupname\":\"frfwrw\",\"title\":\"frfrf\",\"abstract\":\"frfrfrf\",\"xf3\":\"2023 - 2023\",\"xf1\":\"3rd year\",\"xf2\":\"UNDER DEVELOPMENT\",\"id\":37}', 'http://127.0.0.1:8000/api/add_capstone_project', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', NULL, '2023-01-22 03:00:13', '2023-01-22 03:00:13'),
(224, 'App\\Models\\User', 1, 'created', 'App\\Models\\Capstone1', 37, '[]', '{\"id\":\"37\",\"capstone_id\":\"37\",\"status\":\"Working Cahapter 1,2,3\",\"xf1\":0,\"xf2\":\"PENDING\",\"xf3\":\"NOT YET, SET\"}', 'http://127.0.0.1:8000/api/create_capstone_proj/37', '127.0.0.1', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Mobile Safari/537.36', NULL, '2023-01-23 04:27:07', '2023-01-23 04:27:07'),
(225, 'App\\Models\\User', 1, 'created', 'App\\Models\\Capstone2', 37, '[]', '{\"id\":\"37\",\"status\":\"Under-Development\",\"capstone_id\":\"37\",\"xf1\":0,\"xf2\":\"PENDING\",\"xf3\":\"NOT YET, SET\"}', 'http://127.0.0.1:8000/api/create_capstone_proj/37', '127.0.0.1', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Mobile Safari/537.36', NULL, '2023-01-23 04:27:07', '2023-01-23 04:27:07'),
(226, 'App\\Models\\User', 1, 'created', 'App\\Models\\Capstone3', 37, '[]', '{\"id\":\"37\",\"capstone_id\":\"37\",\"status\":\"Pre-Documentation\",\"xf1\":0,\"xf2\":\"PENDING\",\"xf3\":\"NOT YET, SET\"}', 'http://127.0.0.1:8000/api/create_capstone_proj/37', '127.0.0.1', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Mobile Safari/537.36', NULL, '2023-01-23 04:27:07', '2023-01-23 04:27:07'),
(227, NULL, NULL, 'created', 'App\\Models\\User', 161, '[]', '{\"name\":\"111111@gamil.comm\",\"mname\":\"111111@gamil.comm\",\"lname\":\"111111@gamil.comm\",\"year\":\"not set\",\"gender\":\"not set\",\"uid\":\"111111@gamil.comm\",\"email\":\"111111@gamil.comm\",\"password\":\"$2y$10$PRSAgkP5YYno1nMgTMpGbezy2cEV1GOiiO8R.KxySGTcgdqOc11Q2\",\"role_num\":1,\"id\":161}', 'http://127.0.0.1:8000/register1', '127.0.0.1', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Mobile Safari/537.36 Edg/109.0.1518.61', NULL, '2023-01-23 06:09:30', '2023-01-23 06:09:30'),
(228, 'App\\Models\\User', 1, 'created', 'App\\Models\\Capstone1', 36, '[]', '{\"id\":\"36\",\"capstone_id\":\"36\",\"status\":\"Working Cahapter 1,2,3\",\"xf1\":0,\"xf2\":\"PENDING\",\"xf3\":\"NOT YET, SET\"}', 'http://127.0.0.1:8000/api/create_capstone_proj/36', '127.0.0.1', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Mobile Safari/537.36', NULL, '2023-01-23 06:10:45', '2023-01-23 06:10:45'),
(229, 'App\\Models\\User', 1, 'created', 'App\\Models\\Capstone2', 36, '[]', '{\"id\":\"36\",\"status\":\"Under-Development\",\"capstone_id\":\"36\",\"xf1\":0,\"xf2\":\"PENDING\",\"xf3\":\"NOT YET, SET\"}', 'http://127.0.0.1:8000/api/create_capstone_proj/36', '127.0.0.1', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Mobile Safari/537.36', NULL, '2023-01-23 06:10:45', '2023-01-23 06:10:45'),
(230, 'App\\Models\\User', 1, 'created', 'App\\Models\\Capstone3', 36, '[]', '{\"id\":\"36\",\"capstone_id\":\"36\",\"status\":\"Pre-Documentation\",\"xf1\":0,\"xf2\":\"PENDING\",\"xf3\":\"NOT YET, SET\"}', 'http://127.0.0.1:8000/api/create_capstone_proj/36', '127.0.0.1', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Mobile Safari/537.36', NULL, '2023-01-23 06:10:45', '2023-01-23 06:10:45'),
(231, 'App\\Models\\User', 1, 'created', 'App\\Models\\Capstone', 38, '[]', '{\"groupname\":\"wqwqw\",\"title\":\"dwdw\",\"abstract\":\"fefefef\",\"xf3\":\"2023 - 2023\",\"xf1\":\"4th year\",\"xf2\":\"UNDER DEVELOPMENT\",\"id\":38}', 'http://127.0.0.1:8000/api/add_capstone_project', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', NULL, '2023-02-02 22:32:31', '2023-02-02 22:32:31'),
(232, 'App\\Models\\User', 1, 'deleted', 'App\\Models\\Capstone', 38, '{\"id\":38,\"groupname\":\"wqwqw\",\"title\":\"dwdw\",\"abstract\":\"fefefef\",\"start_date\":null,\"xf1\":\"4th year\",\"xf2\":\"UNDER DEVELOPMENT\",\"xf3\":\"2023 - 2023\",\"xf4\":null,\"xf5\":null,\"name\":null,\"path\":null,\"xf6\":null,\"xf7\":null,\"xf8\":null}', '[]', 'http://127.0.0.1:8000/api/delete_capstone/38', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', NULL, '2023-02-04 00:40:40', '2023-02-04 00:40:40'),
(233, 'App\\Models\\User', 1, 'deleted', 'App\\Models\\Capstone', 37, '{\"id\":37,\"groupname\":\"frfwrw\",\"title\":\"frfrf\",\"abstract\":\"frfrfrf\",\"start_date\":null,\"xf1\":\"3rd year\",\"xf2\":\"UNDER DEVELOPMENT\",\"xf3\":\"2023 - 2023\",\"xf4\":null,\"xf5\":null,\"name\":null,\"path\":null,\"xf6\":null,\"xf7\":null,\"xf8\":null}', '[]', 'http://127.0.0.1:8000/api/delete_capstone/37', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', NULL, '2023-02-04 00:40:46', '2023-02-04 00:40:46'),
(234, 'App\\Models\\User', 1, 'deleted', 'App\\Models\\Capstone1', 37, '{\"id\":37,\"capstone_id\":37,\"revise_manuscript\":null,\"action_done\":null,\"mou\":null,\"title_proposal_form\":null,\"adviser_appointmentform\":null,\"ppt\":null,\"recorded_proposal\":null,\"minutes\":null,\"gcash_ss_file\":null,\"acceptance_of_panel\":null,\"capstone_ocr\":null,\"status\":\"Working Cahapter 1,2,3\",\"propose_date\":null,\"xf1\":\"0\",\"xf2\":\"PENDING\",\"xf3\":\"NOT YET, SET\",\"minutes1\":null,\"xf4\":null,\"xf5\":null,\"xf6\":null}', '[]', 'http://127.0.0.1:8000/api/delete_capstone/37', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', NULL, '2023-02-04 00:40:46', '2023-02-04 00:40:46');
INSERT INTO `audits` (`id`, `user_type`, `user_id`, `event`, `auditable_type`, `auditable_id`, `old_values`, `new_values`, `url`, `ip_address`, `user_agent`, `tags`, `created_at`, `updated_at`) VALUES
(235, 'App\\Models\\User', 1, 'deleted', 'App\\Models\\Capstone2', 37, '{\"id\":37,\"capstone_id\":37,\"capstone_link\":null,\"proto_minutes\":null,\"proto_matrix\":null,\"ad_appointment_form\":null,\"gcash_payment\":null,\"acceptance_ss\":null,\"status\":\"Under-Development\",\"prototype_date\":null,\"xf1\":\"0\",\"xf2\":\"PENDING\",\"xf3\":\"NOT YET, SET\",\"minutes1\":null,\"xf4\":null,\"xf5\":null,\"xf6\":null}', '[]', 'http://127.0.0.1:8000/api/delete_capstone/37', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', NULL, '2023-02-04 00:40:46', '2023-02-04 00:40:46'),
(236, 'App\\Models\\User', 1, 'deleted', 'App\\Models\\Capstone3', 37, '{\"id\":37,\"capstone_id\":37,\"final_docu\":null,\"proto_minutes\":null,\"proto_matrix\":null,\"ppt\":null,\"software_demo\":null,\"gcash_payment\":null,\"acceptance_ss\":null,\"githublink\":null,\"status\":\"Pre-Documentation\",\"final_date\":null,\"xf1\":\"0\",\"xf2\":\"PENDING\",\"xf3\":\"NOT YET, SET\",\"minutes1\":null,\"xf4\":null,\"xf5\":null,\"xf6\":null}', '[]', 'http://127.0.0.1:8000/api/delete_capstone/37', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', NULL, '2023-02-04 00:40:46', '2023-02-04 00:40:46'),
(237, 'App\\Models\\User', 1, 'deleted', 'App\\Models\\Capstone', 36, '{\"id\":36,\"groupname\":\"dwdwdwd\",\"title\":\"dwdwdw\",\"abstract\":\"wdwdwd\",\"start_date\":null,\"xf1\":\"4th year\",\"xf2\":\"UNDER DEVELOPMENT\",\"xf3\":\"2023 - 2023\",\"xf4\":null,\"xf5\":null,\"name\":null,\"path\":null,\"xf6\":null,\"xf7\":null,\"xf8\":null}', '[]', 'http://127.0.0.1:8000/api/delete_capstone/36', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', NULL, '2023-02-04 00:40:54', '2023-02-04 00:40:54'),
(238, 'App\\Models\\User', 1, 'deleted', 'App\\Models\\Capstone1', 36, '{\"id\":36,\"capstone_id\":36,\"revise_manuscript\":null,\"action_done\":null,\"mou\":null,\"title_proposal_form\":null,\"adviser_appointmentform\":null,\"ppt\":null,\"recorded_proposal\":null,\"minutes\":null,\"gcash_ss_file\":null,\"acceptance_of_panel\":null,\"capstone_ocr\":null,\"status\":\"Working Cahapter 1,2,3\",\"propose_date\":null,\"xf1\":\"0\",\"xf2\":\"PENDING\",\"xf3\":\"NOT YET, SET\",\"minutes1\":null,\"xf4\":null,\"xf5\":null,\"xf6\":null}', '[]', 'http://127.0.0.1:8000/api/delete_capstone/36', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', NULL, '2023-02-04 00:40:54', '2023-02-04 00:40:54'),
(239, 'App\\Models\\User', 1, 'deleted', 'App\\Models\\Capstone2', 36, '{\"id\":36,\"capstone_id\":36,\"capstone_link\":null,\"proto_minutes\":null,\"proto_matrix\":null,\"ad_appointment_form\":null,\"gcash_payment\":null,\"acceptance_ss\":null,\"status\":\"Under-Development\",\"prototype_date\":null,\"xf1\":\"0\",\"xf2\":\"PENDING\",\"xf3\":\"NOT YET, SET\",\"minutes1\":null,\"xf4\":null,\"xf5\":null,\"xf6\":null}', '[]', 'http://127.0.0.1:8000/api/delete_capstone/36', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', NULL, '2023-02-04 00:40:54', '2023-02-04 00:40:54'),
(240, 'App\\Models\\User', 1, 'deleted', 'App\\Models\\Capstone3', 36, '{\"id\":36,\"capstone_id\":36,\"final_docu\":null,\"proto_minutes\":null,\"proto_matrix\":null,\"ppt\":null,\"software_demo\":null,\"gcash_payment\":null,\"acceptance_ss\":null,\"githublink\":null,\"status\":\"Pre-Documentation\",\"final_date\":null,\"xf1\":\"0\",\"xf2\":\"PENDING\",\"xf3\":\"NOT YET, SET\",\"minutes1\":null,\"xf4\":null,\"xf5\":null,\"xf6\":null}', '[]', 'http://127.0.0.1:8000/api/delete_capstone/36', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', NULL, '2023-02-04 00:40:54', '2023-02-04 00:40:54'),
(241, 'App\\Models\\User', 1, 'deleted', 'App\\Models\\Capstone', 35, '{\"id\":35,\"groupname\":\"Archiving System\",\"title\":\"Archiving System\",\"abstract\":\"Archiving SystemArchiving SystemArchiving SystemArchiving SystemArchiving SystemArchiving SystemArchiving System Archiving System Archiving SystemArchiving System Archiving System v Archiving SystemArchiving SystemArchiving SystemArchiving SystemArchiving SystemArchiving SystemArchiving SystemArchiving SystemArchiving SystemArchiving SystemArchiving SystemArchiving SystemArchiving SystemArchiving SystemArchiving SystemArchiving SystemArchiving SystemArchiving SystemArchiving SystemArchiving SystemArchiving SystemArchiving SystemArchiving SystemArchiving SystemArchiving SystemArchiving SystemArchiving SystemArchiving SystemArchiving SystemArchiving SystemArchiving SystemArchiving SystemArchiving SystemArchiving SystemArchiving SystemArchiving SystemArchiving SystemArchiving SystemArchiving SystemArchiving SystemArchiving System\",\"start_date\":null,\"xf1\":\"3rd year\",\"xf2\":\"UNDER DEVELOPMENT\",\"xf3\":\"2023 - 2023\",\"xf4\":null,\"xf5\":null,\"name\":null,\"path\":null,\"xf6\":null,\"xf7\":null,\"xf8\":null}', '[]', 'http://127.0.0.1:8000/api/delete_capstone/35', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', NULL, '2023-02-04 00:41:00', '2023-02-04 00:41:00'),
(242, 'App\\Models\\User', 1, 'deleted', 'App\\Models\\Capstone', 34, '{\"id\":34,\"groupname\":\"fwfwfw\",\"title\":\"cscscs\",\"abstract\":\"cscscs\",\"start_date\":null,\"xf1\":\"4th year\",\"xf2\":\"UNDER DEVELOPMENT\",\"xf3\":\"2023 - 2023\",\"xf4\":null,\"xf5\":null,\"name\":null,\"path\":null,\"xf6\":null,\"xf7\":null,\"xf8\":null}', '[]', 'http://127.0.0.1:8000/api/delete_capstone/34', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', NULL, '2023-02-04 00:41:05', '2023-02-04 00:41:05'),
(243, 'App\\Models\\User', 1, 'deleted', 'App\\Models\\Capstone', 31, '{\"id\":31,\"groupname\":\"eqeqeqeq\",\"title\":\"qeqeqeqe\",\"abstract\":\"null\",\"start_date\":null,\"xf1\":\"Graduated\",\"xf2\":\"DEPLOYED\",\"xf3\":\"2021 - 2023\",\"xf4\":null,\"xf5\":null,\"name\":null,\"path\":null,\"xf6\":null,\"xf7\":null,\"xf8\":null}', '[]', 'http://127.0.0.1:8000/api/delete_capstone/31', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', NULL, '2023-02-04 00:41:12', '2023-02-04 00:41:12'),
(244, 'App\\Models\\User', 1, 'deleted', 'App\\Models\\Capstone1', 31, '{\"id\":31,\"capstone_id\":31,\"revise_manuscript\":null,\"action_done\":null,\"mou\":null,\"title_proposal_form\":null,\"adviser_appointmentform\":null,\"ppt\":null,\"recorded_proposal\":null,\"minutes\":null,\"gcash_ss_file\":null,\"acceptance_of_panel\":null,\"capstone_ocr\":null,\"status\":\"Working Cahapter 1,2,3\",\"propose_date\":null,\"xf1\":\"0\",\"xf2\":\"PENDING\",\"xf3\":\"NOT YET, SET\",\"minutes1\":null,\"xf4\":null,\"xf5\":null,\"xf6\":null}', '[]', 'http://127.0.0.1:8000/api/delete_capstone/31', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', NULL, '2023-02-04 00:41:12', '2023-02-04 00:41:12'),
(245, 'App\\Models\\User', 1, 'deleted', 'App\\Models\\Capstone2', 31, '{\"id\":31,\"capstone_id\":31,\"capstone_link\":null,\"proto_minutes\":null,\"proto_matrix\":null,\"ad_appointment_form\":null,\"gcash_payment\":null,\"acceptance_ss\":null,\"status\":\"Under-Development\",\"prototype_date\":null,\"xf1\":\"0\",\"xf2\":\"PENDING\",\"xf3\":\"NOT YET, SET\",\"minutes1\":null,\"xf4\":null,\"xf5\":null,\"xf6\":null}', '[]', 'http://127.0.0.1:8000/api/delete_capstone/31', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', NULL, '2023-02-04 00:41:12', '2023-02-04 00:41:12'),
(246, 'App\\Models\\User', 1, 'deleted', 'App\\Models\\Capstone3', 31, '{\"id\":31,\"capstone_id\":31,\"final_docu\":null,\"proto_minutes\":null,\"proto_matrix\":null,\"ppt\":null,\"software_demo\":null,\"gcash_payment\":null,\"acceptance_ss\":null,\"githublink\":null,\"status\":\"Pre-Documentation\",\"final_date\":null,\"xf1\":\"0\",\"xf2\":\"PENDING\",\"xf3\":\"NOT YET, SET\",\"minutes1\":null,\"xf4\":null,\"xf5\":null,\"xf6\":null}', '[]', 'http://127.0.0.1:8000/api/delete_capstone/31', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', NULL, '2023-02-04 00:41:12', '2023-02-04 00:41:12'),
(247, 'App\\Models\\User', 1, 'deleted', 'App\\Models\\Capstone', 30, '{\"id\":30,\"groupname\":\"dwdwdwdwd\",\"title\":\"11111111111112222222222222\",\"abstract\":\"dwdwdwdw\",\"start_date\":null,\"xf1\":\"4th year\",\"xf2\":\"UNDER DEVELOPMENT\",\"xf3\":\"2017 - 2023\",\"xf4\":null,\"xf5\":null,\"name\":null,\"path\":null,\"xf6\":null,\"xf7\":null,\"xf8\":null}', '[]', 'http://127.0.0.1:8000/api/delete_capstone/30', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', NULL, '2023-02-04 00:41:19', '2023-02-04 00:41:19'),
(248, 'App\\Models\\User', 1, 'deleted', 'App\\Models\\Capstone1', 30, '{\"id\":30,\"capstone_id\":30,\"revise_manuscript\":null,\"action_done\":null,\"mou\":null,\"title_proposal_form\":null,\"adviser_appointmentform\":null,\"ppt\":null,\"recorded_proposal\":null,\"minutes\":null,\"gcash_ss_file\":null,\"acceptance_of_panel\":null,\"capstone_ocr\":null,\"status\":\"Working Cahapter 1,2,3\",\"propose_date\":null,\"xf1\":\"0\",\"xf2\":\"PENDING\",\"xf3\":\"NOT YET, SET\",\"minutes1\":null,\"xf4\":null,\"xf5\":null,\"xf6\":null}', '[]', 'http://127.0.0.1:8000/api/delete_capstone/30', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', NULL, '2023-02-04 00:41:19', '2023-02-04 00:41:19'),
(249, 'App\\Models\\User', 1, 'deleted', 'App\\Models\\Capstone2', 30, '{\"id\":30,\"capstone_id\":30,\"capstone_link\":null,\"proto_minutes\":null,\"proto_matrix\":null,\"ad_appointment_form\":null,\"gcash_payment\":null,\"acceptance_ss\":null,\"status\":\"Under-Development\",\"prototype_date\":null,\"xf1\":\"0\",\"xf2\":\"PENDING\",\"xf3\":\"NOT YET, SET\",\"minutes1\":null,\"xf4\":null,\"xf5\":null,\"xf6\":null}', '[]', 'http://127.0.0.1:8000/api/delete_capstone/30', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', NULL, '2023-02-04 00:41:19', '2023-02-04 00:41:19'),
(250, 'App\\Models\\User', 1, 'deleted', 'App\\Models\\Capstone3', 30, '{\"id\":30,\"capstone_id\":30,\"final_docu\":null,\"proto_minutes\":null,\"proto_matrix\":null,\"ppt\":null,\"software_demo\":null,\"gcash_payment\":null,\"acceptance_ss\":null,\"githublink\":null,\"status\":\"Pre-Documentation\",\"final_date\":null,\"xf1\":\"0\",\"xf2\":\"PENDING\",\"xf3\":\"NOT YET, SET\",\"minutes1\":null,\"xf4\":null,\"xf5\":null,\"xf6\":null}', '[]', 'http://127.0.0.1:8000/api/delete_capstone/30', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', NULL, '2023-02-04 00:41:19', '2023-02-04 00:41:19'),
(251, 'App\\Models\\User', 1, 'deleted', 'App\\Models\\User', 161, '{\"id\":161,\"name\":\"111111@gamil.comm\",\"mname\":\"111111@gamil.comm\",\"lname\":\"111111@gamil.comm\",\"uid\":\"111111@gamil.comm\",\"year\":\"not set\",\"email\":\"111111@gamil.comm\",\"photo\":null,\"gender\":\"not set\",\"email_verified_at\":null,\"password\":\"$2y$10$PRSAgkP5YYno1nMgTMpGbezy2cEV1GOiiO8R.KxySGTcgdqOc11Q2\",\"remember_token\":null,\"role_num\":\"1\"}', '[]', 'http://127.0.0.1:8000/api/delete_user/161', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', NULL, '2023-03-06 20:06:45', '2023-03-06 20:06:45'),
(252, 'App\\Models\\User', 1, 'deleted', 'App\\Models\\User', 140, '{\"id\":140,\"name\":\"Johnrey\",\"mname\":\"C.\",\"lname\":\"Victor\",\"uid\":\"12345678\",\"year\":\"not set\",\"email\":\"12345678@gmail.com\",\"photo\":null,\"gender\":\"not set\",\"email_verified_at\":null,\"password\":\"$2y$10$48KQSnkVR4g24jeeyrtS\\/u9DsN6iPMBEhijioqCnE\\/2tG7eYLr0S6\",\"remember_token\":\"rkW1PbA0K8acSYFOzDGYR3vsgS8DQPePpoDfxqjXCdZxbEJrjDvXCE0GjJs2\",\"role_num\":\"1\"}', '[]', 'http://127.0.0.1:8000/api/delete_user/140', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', NULL, '2023-03-06 20:06:53', '2023-03-06 20:06:53'),
(253, 'App\\Models\\User', 1, 'deleted', 'App\\Models\\User', 139, '{\"id\":139,\"name\":\"partial\",\"mname\":\"partial\",\"lname\":\"partial\",\"uid\":\"partial@gmail.com\",\"year\":\"not set\",\"email\":\"partial@gmail.com\",\"photo\":null,\"gender\":\"not set\",\"email_verified_at\":null,\"password\":\"$2y$10$1LS3364zUgHpMUVzmnexx.XWYyRy8JQA.MBfkq1pLW25AyzYHFP9e\",\"remember_token\":\"1\",\"role_num\":\"1\"}', '[]', 'http://127.0.0.1:8000/api/delete_user/139', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', NULL, '2023-03-06 20:06:57', '2023-03-06 20:06:57'),
(254, 'App\\Models\\User', 1, 'deleted', 'App\\Models\\User', 135, '{\"id\":135,\"name\":\"sdfghjytrewqw\",\"mname\":\"ertyuytrewqwerty\",\"lname\":\"uytrewwertyu\",\"uid\":\"scscscsccscs\",\"year\":\"4th year\",\"email\":\"a1d2m3i4nn@gmail.com\",\"photo\":\"1669874744.jpeg\",\"gender\":\"Male\",\"email_verified_at\":null,\"password\":\"$2y$10$H97KcwfreGca9D4zIaiwn.DNrnHdkmRO6BUz20RlQPPN3inyuOL9e\",\"remember_token\":\"1\",\"role_num\":\"1\"}', '[]', 'http://127.0.0.1:8000/api/delete_user/135', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', NULL, '2023-03-06 20:07:05', '2023-03-06 20:07:05'),
(255, 'App\\Models\\User', 1, 'deleted', 'App\\Models\\User', 138, '{\"id\":138,\"name\":\"Jhonrey\",\"mname\":\"Capasan\",\"lname\":\"Victor\",\"uid\":\"12345678\",\"year\":\"not set\",\"email\":\"johnrey@gmail.com\",\"photo\":\"1671961158.png\",\"gender\":\"not set\",\"email_verified_at\":null,\"password\":\"$2y$10$QoAcMUYfgldNpPvRdl5kT.3SC1S\\/7NsR0wT6ju50syqAldNikV9nW\",\"remember_token\":\"1\",\"role_num\":\"1\"}', '[]', 'http://127.0.0.1:8000/api/delete_user/138', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', NULL, '2023-03-06 20:10:13', '2023-03-06 20:10:13'),
(256, 'App\\Models\\User', 1, 'deleted', 'App\\Models\\User', 137, '{\"id\":137,\"name\":\"Dems\",\"mname\":\"asdsss\",\"lname\":\"temp\",\"uid\":\"temp\",\"year\":\"not set\",\"email\":\"temp@gmail.com\",\"photo\":\"1671960046.png\",\"gender\":\"not set\",\"email_verified_at\":null,\"password\":\"$2y$10$0XHsIkwlvK6RyFH06tLzAOPOyEImAmz4nsoEfXTuCM6q1uuRyZQS.\",\"remember_token\":\"pTPtoNwLzw1nk454I70Nhlbjxr7tmasZZQ2uHneiCRTfUR6o7PihzUXuVyIs\",\"role_num\":\"1\"}', '[]', 'http://127.0.0.1:8000/api/delete_user/137', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', NULL, '2023-03-06 20:10:21', '2023-03-06 20:10:21'),
(257, 'App\\Models\\User', 1, 'created', 'App\\Models\\User', 162, '[]', '{\"name\":\"12345\",\"mname\":\"12345\",\"photo\":\"the_avatar.jpeg\",\"lname\":\"12345\",\"year\":null,\"gender\":\"Male\",\"uid\":\"12345\",\"email\":\"trtrtr@gmail.com\",\"password\":\"$2y$10$QOD0yCYWor3NeuAc5vLS9e8I7Ld.9rcD4jSRHkM4.3quhvjQMjOKW\",\"role_num\":1,\"id\":162}', 'http://127.0.0.1:8000/api/add_user', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', NULL, '2023-03-07 03:12:18', '2023-03-07 03:12:18'),
(258, 'App\\Models\\User', 1, 'created', 'App\\Models\\User', 163, '[]', '{\"name\":\"111\",\"mname\":\"111\",\"photo\":\"1678187660.png\",\"lname\":\"111\",\"year\":null,\"gender\":null,\"uid\":\"111\",\"email\":\"1111@gmail.com\",\"password\":\"$2y$10$EJXtsKyFJ9Bqtme9EWgJZuCwoeI2siJ0OuqWcIcJyzLOPbcrLHyK6\",\"role_num\":1,\"id\":163}', 'http://127.0.0.1:8000/api/add_user', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', NULL, '2023-03-07 03:14:21', '2023-03-07 03:14:21'),
(259, 'App\\Models\\User', 17, 'created', 'App\\Models\\User', 164, '[]', '{\"name\":\"1111\",\"mname\":\"1111\",\"photo\":\"the_avatar.jpeg\",\"lname\":\"1111\",\"year\":\"5th year\",\"gender\":\"Male\",\"uid\":\"1111\",\"email\":\"22temporary@gmail.com\",\"password\":\"$2y$10$GEK9LbTtSPgDKlI0o6AHnuUECm4NQo0MC4ejMa.ZlaCvHNVfHTm8W\",\"role_num\":1,\"id\":164}', 'http://127.0.0.1:8000/api/add_user', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36 Edg/110.0.1587.63', NULL, '2023-03-07 03:24:11', '2023-03-07 03:24:11'),
(260, 'App\\Models\\User', 17, 'updated', 'App\\Models\\User', 17, '{\"year\":null,\"password\":\"$2y$10$A74UWzMzFAV46g3beSzr4eR0Z8HmgOuDuh73onXNzOWltAClX3CAW\"}', '{\"year\":\"null\",\"password\":\"$2y$10$HQ\\/Mme\\/1LxpTqKeqUtEhX.krFCqGcHhqzmtFgEgNDl\\/GY20TMuw\\/a\"}', 'http://127.0.0.1:8000/api/myprofile_update', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36 Edg/110.0.1587.63', NULL, '2023-03-07 03:24:26', '2023-03-07 03:24:26'),
(261, NULL, NULL, 'created', 'App\\Models\\User', 165, '[]', '{\"name\":\"johntry\",\"mname\":\"G\",\"lname\":\"johntry\",\"photo\":\"the_avatar.jpeg\",\"year\":\"not set\",\"gender\":\"not set\",\"uid\":\"johntry\",\"email\":\"johntry@gmail.com\",\"password\":\"$2y$10$vmZVcqUXJ0VC5YnPCnw.gOBMTdr5RsWdWkLn7PD4P97VQzEHnCiU2\",\"role_num\":1,\"id\":165}', 'http://127.0.0.1:8000/register1', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', NULL, '2023-03-07 08:02:04', '2023-03-07 08:02:04'),
(262, 'App\\Models\\User', 1, 'created', 'App\\Models\\Capstone', 39, '[]', '{\"groupname\":\"InfoTruck\",\"title\":\"INFOTRUCT: AN E-LOGISTICS TRUCKING FINDER WITH SEARCH OPTIMIZATION\",\"abstract\":\"ABSTRACT\\r\\n\\r\\nPeople are more into delivery vehicles like trucks carrying various things may\\r\\nit be big or small and near or far. Transportation has a large impact on a company\\u2019s\\r\\nprofitability. There are several problems identified when using the manual system in\\r\\ntrucking transactions. Problems existing in this business such as overdue and inaccurate\\r\\ninformation, inadequate services, and high product damage rates. The current trucking\\r\\nsystem has redundancy, where data cause by the manual system which uses paper to\\r\\nfill the information. Data is also not being kept in a secure location. Information lost is\\r\\ncommon by using a manual system. For the solution of the problem, InfoTruck is\\r\\ndeveloped to manage the operation of the transportation in a matter of creating\\r\\ntransaction process. Data will be stored in a database. To develop this web-application,\\r\\nRapid Application Development (RAD) model had been chosen as a methodology,\\r\\nwhich outlined the required functionalities of the system.To evaluate the system, it\\r\\ncould be calculated all of the average namely usability, user interface, functionality,\\r\\nand performance to know whether the system is acceptable or not acceptable. After the\\r\\nsuccessful evaluation (see table 4.15) the system is acceptable. InfoTruck is a web-\\r\\nbased application system that can help the owner to publish their business and increase\\r\\nprofits, while the customers do not struggle to search trucking services to the nearest\\r\\narea.\\r\\nKeywords: Transportation, Trucking System, Web-Application, RAD\",\"xf3\":\"2018 - 2019\",\"xf1\":\"Graduated\",\"xf2\":\"DEPLOYED\",\"id\":39}', 'http://127.0.0.1:8000/api/add_capstone_project', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36 Edg/110.0.1587.63', NULL, '2023-03-07 18:21:42', '2023-03-07 18:21:42'),
(263, 'App\\Models\\User', 1, 'created', 'App\\Models\\Capstone1', 39, '[]', '{\"id\":\"39\",\"capstone_id\":\"39\",\"status\":\"Working Cahapter 1,2,3\",\"xf1\":0,\"xf2\":\"PENDING\",\"xf3\":\"NOT YET, SET\"}', 'http://127.0.0.1:8000/api/create_capstone_proj/39', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36 Edg/110.0.1587.63', NULL, '2023-03-07 18:21:57', '2023-03-07 18:21:57'),
(264, 'App\\Models\\User', 1, 'created', 'App\\Models\\Capstone2', 39, '[]', '{\"id\":\"39\",\"status\":\"Under-Development\",\"capstone_id\":\"39\",\"xf1\":0,\"xf2\":\"PENDING\",\"xf3\":\"NOT YET, SET\"}', 'http://127.0.0.1:8000/api/create_capstone_proj/39', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36 Edg/110.0.1587.63', NULL, '2023-03-07 18:21:57', '2023-03-07 18:21:57'),
(265, 'App\\Models\\User', 1, 'created', 'App\\Models\\Capstone3', 39, '[]', '{\"id\":\"39\",\"capstone_id\":\"39\",\"status\":\"Pre-Documentation\",\"xf1\":0,\"xf2\":\"PENDING\",\"xf3\":\"NOT YET, SET\"}', 'http://127.0.0.1:8000/api/create_capstone_proj/39', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36 Edg/110.0.1587.63', NULL, '2023-03-07 18:21:57', '2023-03-07 18:21:57'),
(266, 'App\\Models\\User', 1, 'deleted', 'App\\Models\\User', 164, '{\"id\":164,\"name\":\"1111\",\"mname\":\"1111\",\"lname\":\"1111\",\"uid\":\"1111\",\"year\":\"5th year\",\"email\":\"22temporary@gmail.com\",\"photo\":\"the_avatar.jpeg\",\"gender\":\"Male\",\"email_verified_at\":null,\"password\":\"$2y$10$GEK9LbTtSPgDKlI0o6AHnuUECm4NQo0MC4ejMa.ZlaCvHNVfHTm8W\",\"remember_token\":null,\"role_num\":\"1\"}', '[]', 'http://127.0.0.1:8000/api/delete_user/164', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36 Edg/110.0.1587.63', NULL, '2023-03-07 18:25:15', '2023-03-07 18:25:15'),
(267, 'App\\Models\\User', 1, 'deleted', 'App\\Models\\User', 163, '{\"id\":163,\"name\":\"111\",\"mname\":\"111\",\"lname\":\"111\",\"uid\":\"111\",\"year\":null,\"email\":\"1111@gmail.com\",\"photo\":\"1678187660.png\",\"gender\":null,\"email_verified_at\":null,\"password\":\"$2y$10$EJXtsKyFJ9Bqtme9EWgJZuCwoeI2siJ0OuqWcIcJyzLOPbcrLHyK6\",\"remember_token\":null,\"role_num\":\"1\"}', '[]', 'http://127.0.0.1:8000/api/delete_user/163', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36 Edg/110.0.1587.63', NULL, '2023-03-07 18:25:19', '2023-03-07 18:25:19'),
(268, 'App\\Models\\User', 1, 'deleted', 'App\\Models\\User', 162, '{\"id\":162,\"name\":\"12345\",\"mname\":\"12345\",\"lname\":\"12345\",\"uid\":\"12345\",\"year\":null,\"email\":\"trtrtr@gmail.com\",\"photo\":\"the_avatar.jpeg\",\"gender\":\"Male\",\"email_verified_at\":null,\"password\":\"$2y$10$QOD0yCYWor3NeuAc5vLS9e8I7Ld.9rcD4jSRHkM4.3quhvjQMjOKW\",\"remember_token\":null,\"role_num\":\"1\"}', '[]', 'http://127.0.0.1:8000/api/delete_user/162', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36 Edg/110.0.1587.63', NULL, '2023-03-07 18:25:26', '2023-03-07 18:25:26'),
(269, 'App\\Models\\User', 1, 'created', 'App\\Models\\User', 166, '[]', '{\"name\":\"fefef\",\"mname\":\"fefef\",\"photo\":\"the_avatar.jpeg\",\"lname\":\"fefefefe\",\"year\":null,\"gender\":null,\"uid\":\"feff\",\"email\":\"a1d2m3i4nfefefef@gmail.com\",\"password\":\"$2y$10$L\\/vKP86TyAIDVezOku8gwe9L4ezi4KOX2LmeYwCbQz2sz9NnZt3py\",\"id\":166}', 'http://127.0.0.1:8000/api/add_user', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', NULL, '2023-03-07 18:53:53', '2023-03-07 18:53:53'),
(270, 'App\\Models\\User', 17, 'updated', 'App\\Models\\Capstone1', 11, '{\"xf1\":\"27.333333333333332\"}', '{\"xf1\":\"28.666666666666668\"}', 'http://127.0.0.1:8000/api/post_approved_rate_status/11', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36 Edg/110.0.1587.63', NULL, '2023-03-07 20:47:25', '2023-03-07 20:47:25'),
(271, 'App\\Models\\User', 17, 'updated', 'App\\Models\\Capstone2', 14, '{\"minutes1\":null}', '{\"minutes1\":\"1678250891.Titan-Trading-Revisions-Updated.pdf\"}', 'http://127.0.0.1:8000/api/caps2minutes/14', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36 Edg/110.0.1587.63', NULL, '2023-03-07 20:48:11', '2023-03-07 20:48:11'),
(272, 'App\\Models\\User', 165, 'updated', 'App\\Models\\User', 165, '{\"gender\":\"not set\",\"password\":\"$2y$10$vmZVcqUXJ0VC5YnPCnw.gOBMTdr5RsWdWkLn7PD4P97VQzEHnCiU2\"}', '{\"gender\":\"Male\",\"password\":\"$2y$10$WGqTK\\/6G1ax8aJiKKs7UF.vXiy0CxX7gF1czkyEVn7zLE8IpVqHgm\"}', 'http://127.0.0.1:8000/api/myprofile_update', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36 Edg/110.0.1587.63', NULL, '2023-03-07 20:50:37', '2023-03-07 20:50:37'),
(273, 'App\\Models\\User', 165, 'created', 'App\\Models\\Capstone', 40, '[]', '{\"groupname\":\"not set\",\"title\":\"screenshot monitoring for employe\",\"abstract\":\"screenshot monitoring for employeescreenshot monitoring for employeescreenshot monitoring for employeescreenshot monitoring for employeescreenshot monitoring for employeescreenshot monitoring for employeescreenshot monitoring for employeescreenshot monitoring for employee\",\"start_date\":\"2023-3-8 12:51:37\",\"xf1\":\"not set\",\"xf2\":\"UNDER DEVELOPMENT\",\"id\":40}', 'http://127.0.0.1:8000/api/add_capstonetopic', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36 Edg/110.0.1587.63', NULL, '2023-03-07 20:51:37', '2023-03-07 20:51:37'),
(274, 'App\\Models\\User', 165, 'created', 'App\\Models\\Capstone1', 40, '[]', '{\"id\":\"40\",\"capstone_id\":\"40\",\"status\":\"Working Cahapter 1,2,3\",\"xf1\":0,\"xf2\":\"PENDING\",\"xf3\":\"NOT YET, SET\"}', 'http://127.0.0.1:8000/api/create_capstone_proj/40', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36 Edg/110.0.1587.63', NULL, '2023-03-07 20:52:02', '2023-03-07 20:52:02'),
(275, 'App\\Models\\User', 165, 'created', 'App\\Models\\Capstone2', 40, '[]', '{\"id\":\"40\",\"status\":\"Under-Development\",\"capstone_id\":\"40\",\"xf1\":0,\"xf2\":\"PENDING\",\"xf3\":\"NOT YET, SET\"}', 'http://127.0.0.1:8000/api/create_capstone_proj/40', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36 Edg/110.0.1587.63', NULL, '2023-03-07 20:52:02', '2023-03-07 20:52:02'),
(276, 'App\\Models\\User', 165, 'created', 'App\\Models\\Capstone3', 40, '[]', '{\"id\":\"40\",\"capstone_id\":\"40\",\"status\":\"Pre-Documentation\",\"xf1\":0,\"xf2\":\"PENDING\",\"xf3\":\"NOT YET, SET\"}', 'http://127.0.0.1:8000/api/create_capstone_proj/40', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36 Edg/110.0.1587.63', NULL, '2023-03-07 20:52:02', '2023-03-07 20:52:02'),
(277, 'App\\Models\\User', 165, 'updated', 'App\\Models\\Capstone', 40, '{\"title\":\"screenshot monitoring for employe\",\"xf4\":null,\"name\":null,\"xf6\":null}', '{\"title\":\"screenshot monitoring for employee\",\"xf4\":\"null\",\"name\":\"AGREE\",\"xf6\":\"17\"}', 'http://127.0.0.1:8000/api/update_capstone/40', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36 Edg/110.0.1587.63', NULL, '2023-03-07 20:52:31', '2023-03-07 20:52:31'),
(278, 'App\\Models\\User', 1, 'deleted', 'App\\Models\\Capstone', 40, '{\"id\":40,\"groupname\":\"not set\",\"title\":\"screenshot monitoring for employee\",\"abstract\":\"screenshot monitoring for employeescreenshot monitoring for employeescreenshot monitoring for employeescreenshot monitoring for employeescreenshot monitoring for employeescreenshot monitoring for employeescreenshot monitoring for employeescreenshot monitoring for employee\",\"start_date\":\"2023-03-08\",\"xf1\":\"not set\",\"xf2\":\"UNDER DEVELOPMENT\",\"xf3\":null,\"xf4\":\"null\",\"xf5\":null,\"name\":\"AGREE\",\"path\":null,\"xf6\":\"17\",\"xf7\":null,\"xf8\":null}', '[]', 'http://127.0.0.1:8000/api/delete_capstone/40', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', NULL, '2023-03-07 20:55:01', '2023-03-07 20:55:01'),
(279, 'App\\Models\\User', 1, 'deleted', 'App\\Models\\Capstone1', 40, '{\"id\":40,\"capstone_id\":40,\"revise_manuscript\":null,\"action_done\":null,\"mou\":null,\"title_proposal_form\":null,\"adviser_appointmentform\":null,\"ppt\":null,\"recorded_proposal\":null,\"minutes\":null,\"gcash_ss_file\":null,\"acceptance_of_panel\":null,\"capstone_ocr\":null,\"status\":\"Working Cahapter 1,2,3\",\"propose_date\":null,\"xf1\":\"0\",\"xf2\":\"PENDING\",\"xf3\":\"NOT YET, SET\",\"minutes1\":null,\"xf4\":null,\"xf5\":null,\"xf6\":null}', '[]', 'http://127.0.0.1:8000/api/delete_capstone/40', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', NULL, '2023-03-07 20:55:01', '2023-03-07 20:55:01'),
(280, 'App\\Models\\User', 1, 'deleted', 'App\\Models\\Capstone2', 40, '{\"id\":40,\"capstone_id\":40,\"capstone_link\":null,\"proto_minutes\":null,\"proto_matrix\":null,\"ad_appointment_form\":null,\"gcash_payment\":null,\"acceptance_ss\":null,\"status\":\"Under-Development\",\"prototype_date\":null,\"xf1\":\"0\",\"xf2\":\"PENDING\",\"xf3\":\"NOT YET, SET\",\"minutes1\":null,\"xf4\":null,\"xf5\":null,\"xf6\":null}', '[]', 'http://127.0.0.1:8000/api/delete_capstone/40', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', NULL, '2023-03-07 20:55:01', '2023-03-07 20:55:01'),
(281, 'App\\Models\\User', 1, 'deleted', 'App\\Models\\Capstone3', 40, '{\"id\":40,\"capstone_id\":40,\"final_docu\":null,\"proto_minutes\":null,\"proto_matrix\":null,\"ppt\":null,\"software_demo\":null,\"gcash_payment\":null,\"acceptance_ss\":null,\"githublink\":null,\"status\":\"Pre-Documentation\",\"final_date\":null,\"xf1\":\"0\",\"xf2\":\"PENDING\",\"xf3\":\"NOT YET, SET\",\"minutes1\":null,\"xf4\":null,\"xf5\":null,\"xf6\":null}', '[]', 'http://127.0.0.1:8000/api/delete_capstone/40', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', NULL, '2023-03-07 20:55:01', '2023-03-07 20:55:01'),
(282, 'App\\Models\\User', 165, 'created', 'App\\Models\\Capstone', 41, '[]', '{\"groupname\":\"fefef\",\"title\":\"fefefe\",\"abstract\":\"fefe\",\"xf3\":\"2023 - 2023\",\"xf1\":\"3rd year\",\"xf2\":\"UNDER DEVELOPMENT\",\"id\":41}', 'http://127.0.0.1:8000/api/add_capstone_project', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36 Edg/110.0.1587.63', NULL, '2023-03-07 20:55:57', '2023-03-07 20:55:57'),
(283, 'App\\Models\\User', 1, 'deleted', 'App\\Models\\Capstone', 41, '{\"id\":41,\"groupname\":\"fefef\",\"title\":\"fefefe\",\"abstract\":\"fefe\",\"start_date\":null,\"xf1\":\"3rd year\",\"xf2\":\"UNDER DEVELOPMENT\",\"xf3\":\"2023 - 2023\",\"xf4\":null,\"xf5\":null,\"name\":null,\"path\":null,\"xf6\":null,\"xf7\":null,\"xf8\":null}', '[]', 'http://127.0.0.1:8000/api/delete_capstone/41', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', NULL, '2023-03-07 20:56:17', '2023-03-07 20:56:17'),
(284, 'App\\Models\\User', 165, 'created', 'App\\Models\\Capstone', 42, '[]', '{\"groupname\":\"SCREENSHOT MONITORING FOR EMPLOYE\",\"title\":\"SCREENSHOT MONITORING FOR EMPLOYE\",\"abstract\":\".SCREENSHOT MONITORING FOR EMPLOYE SCREENSHOT MONITORING FOR EMPLOYESCREENSHOT MONITORING FOR EMPLOYESCREENSHOT MONITORING FOR EMPLOYE SCREENSHOT MONITORING FOR EMPLOYESCREENSHOT MONITORING FOR EMPLOYESCREENSHOT MONITORING FOR EMPLOYESCREENSHOT MONITORING FOR EMPLOYESCREENSHOT MONITORING FOR EMPLOYESCREENSHOT MONITORING FOR EMPLOYESCREENSHOT MONITORING FOR EMPLOYESCREENSHOT MONITORING FOR EMPLOYE\",\"xf3\":\"2023 - 2023\",\"xf1\":\"3rd year\",\"xf2\":\"UNDER DEVELOPMENT\",\"id\":42}', 'http://127.0.0.1:8000/api/add_capstone_project', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36 Edg/110.0.1587.63', NULL, '2023-03-07 20:57:56', '2023-03-07 20:57:56'),
(285, 'App\\Models\\User', 165, 'created', 'App\\Models\\Capstone1', 42, '[]', '{\"id\":\"42\",\"capstone_id\":\"42\",\"status\":\"Working Cahapter 1,2,3\",\"xf1\":0,\"xf2\":\"PENDING\",\"xf3\":\"NOT YET, SET\"}', 'http://127.0.0.1:8000/api/create_capstone_proj/42', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36 Edg/110.0.1587.63', NULL, '2023-03-07 20:58:00', '2023-03-07 20:58:00'),
(286, 'App\\Models\\User', 165, 'created', 'App\\Models\\Capstone2', 42, '[]', '{\"id\":\"42\",\"status\":\"Under-Development\",\"capstone_id\":\"42\",\"xf1\":0,\"xf2\":\"PENDING\",\"xf3\":\"NOT YET, SET\"}', 'http://127.0.0.1:8000/api/create_capstone_proj/42', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36 Edg/110.0.1587.63', NULL, '2023-03-07 20:58:00', '2023-03-07 20:58:00'),
(287, 'App\\Models\\User', 165, 'created', 'App\\Models\\Capstone3', 42, '[]', '{\"id\":\"42\",\"capstone_id\":\"42\",\"status\":\"Pre-Documentation\",\"xf1\":0,\"xf2\":\"PENDING\",\"xf3\":\"NOT YET, SET\"}', 'http://127.0.0.1:8000/api/create_capstone_proj/42', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36 Edg/110.0.1587.63', NULL, '2023-03-07 20:58:00', '2023-03-07 20:58:00'),
(288, 'App\\Models\\User', 165, 'updated', 'App\\Models\\Capstone', 42, '{\"xf4\":null,\"name\":null,\"xf6\":null}', '{\"xf4\":\"null\",\"name\":\"AGREE\",\"xf6\":\"15\"}', 'http://127.0.0.1:8000/api/update_capstone/42', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36 Edg/110.0.1587.63', NULL, '2023-03-07 20:58:23', '2023-03-07 20:58:23'),
(289, 'App\\Models\\User', 1, 'deleted', 'App\\Models\\Capstone', 42, '{\"id\":42,\"groupname\":\"SCREENSHOT MONITORING FOR EMPLOYE\",\"title\":\"SCREENSHOT MONITORING FOR EMPLOYE\",\"abstract\":\".SCREENSHOT MONITORING FOR EMPLOYE SCREENSHOT MONITORING FOR EMPLOYESCREENSHOT MONITORING FOR EMPLOYESCREENSHOT MONITORING FOR EMPLOYE SCREENSHOT MONITORING FOR EMPLOYESCREENSHOT MONITORING FOR EMPLOYESCREENSHOT MONITORING FOR EMPLOYESCREENSHOT MONITORING FOR EMPLOYESCREENSHOT MONITORING FOR EMPLOYESCREENSHOT MONITORING FOR EMPLOYESCREENSHOT MONITORING FOR EMPLOYESCREENSHOT MONITORING FOR EMPLOYE\",\"start_date\":null,\"xf1\":\"3rd year\",\"xf2\":\"UNDER DEVELOPMENT\",\"xf3\":\"2023 - 2023\",\"xf4\":\"null\",\"xf5\":null,\"name\":\"AGREE\",\"path\":null,\"xf6\":\"15\",\"xf7\":null,\"xf8\":null}', '[]', 'http://127.0.0.1:8000/api/delete_capstone/42', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', NULL, '2023-03-07 21:04:32', '2023-03-07 21:04:32'),
(290, 'App\\Models\\User', 1, 'deleted', 'App\\Models\\Capstone1', 42, '{\"id\":42,\"capstone_id\":42,\"revise_manuscript\":null,\"action_done\":null,\"mou\":null,\"title_proposal_form\":null,\"adviser_appointmentform\":null,\"ppt\":null,\"recorded_proposal\":null,\"minutes\":null,\"gcash_ss_file\":null,\"acceptance_of_panel\":null,\"capstone_ocr\":null,\"status\":\"Working Cahapter 1,2,3\",\"propose_date\":null,\"xf1\":\"0\",\"xf2\":\"PENDING\",\"xf3\":\"NOT YET, SET\",\"minutes1\":null,\"xf4\":null,\"xf5\":null,\"xf6\":null}', '[]', 'http://127.0.0.1:8000/api/delete_capstone/42', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', NULL, '2023-03-07 21:04:32', '2023-03-07 21:04:32'),
(291, 'App\\Models\\User', 1, 'deleted', 'App\\Models\\Capstone2', 42, '{\"id\":42,\"capstone_id\":42,\"capstone_link\":null,\"proto_minutes\":null,\"proto_matrix\":null,\"ad_appointment_form\":null,\"gcash_payment\":null,\"acceptance_ss\":null,\"status\":\"Under-Development\",\"prototype_date\":null,\"xf1\":\"0\",\"xf2\":\"PENDING\",\"xf3\":\"NOT YET, SET\",\"minutes1\":null,\"xf4\":null,\"xf5\":null,\"xf6\":null}', '[]', 'http://127.0.0.1:8000/api/delete_capstone/42', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', NULL, '2023-03-07 21:04:32', '2023-03-07 21:04:32'),
(292, 'App\\Models\\User', 1, 'deleted', 'App\\Models\\Capstone3', 42, '{\"id\":42,\"capstone_id\":42,\"final_docu\":null,\"proto_minutes\":null,\"proto_matrix\":null,\"ppt\":null,\"software_demo\":null,\"gcash_payment\":null,\"acceptance_ss\":null,\"githublink\":null,\"status\":\"Pre-Documentation\",\"final_date\":null,\"xf1\":\"0\",\"xf2\":\"PENDING\",\"xf3\":\"NOT YET, SET\",\"minutes1\":null,\"xf4\":null,\"xf5\":null,\"xf6\":null}', '[]', 'http://127.0.0.1:8000/api/delete_capstone/42', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', NULL, '2023-03-07 21:04:32', '2023-03-07 21:04:32'),
(293, 'App\\Models\\User', 165, 'created', 'App\\Models\\Capstone', 43, '[]', '{\"groupname\":\"not set\",\"title\":\"screenshot monitoring for employe\",\"abstract\":\"screenshot monitoring for employeescreenshot monitoring for employeescreenshot monitoring for employeescreenshot monitoring for employeescreenshot monitoring for employeescreenshot monitoring for employeescreenshot monitoring for employeescreenshot monitoring for employee\",\"start_date\":\"2023-3-8 13:6:21\",\"xf1\":\"not set\",\"xf2\":\"UNDER DEVELOPMENT\",\"id\":43}', 'http://127.0.0.1:8000/api/add_capstonetopic', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36 Edg/110.0.1587.63', NULL, '2023-03-07 21:06:22', '2023-03-07 21:06:22'),
(294, 'App\\Models\\User', 165, 'created', 'App\\Models\\Capstone1', 43, '[]', '{\"id\":\"43\",\"capstone_id\":\"43\",\"status\":\"Working Cahapter 1,2,3\",\"xf1\":0,\"xf2\":\"PENDING\",\"xf3\":\"NOT YET, SET\"}', 'http://127.0.0.1:8000/api/create_capstone_proj/43', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36 Edg/110.0.1587.63', NULL, '2023-03-07 21:06:32', '2023-03-07 21:06:32'),
(295, 'App\\Models\\User', 165, 'created', 'App\\Models\\Capstone2', 43, '[]', '{\"id\":\"43\",\"status\":\"Under-Development\",\"capstone_id\":\"43\",\"xf1\":0,\"xf2\":\"PENDING\",\"xf3\":\"NOT YET, SET\"}', 'http://127.0.0.1:8000/api/create_capstone_proj/43', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36 Edg/110.0.1587.63', NULL, '2023-03-07 21:06:32', '2023-03-07 21:06:32'),
(296, 'App\\Models\\User', 165, 'created', 'App\\Models\\Capstone3', 43, '[]', '{\"id\":\"43\",\"capstone_id\":\"43\",\"status\":\"Pre-Documentation\",\"xf1\":0,\"xf2\":\"PENDING\",\"xf3\":\"NOT YET, SET\"}', 'http://127.0.0.1:8000/api/create_capstone_proj/43', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36 Edg/110.0.1587.63', NULL, '2023-03-07 21:06:32', '2023-03-07 21:06:32'),
(297, 'App\\Models\\User', 1, 'deleted', 'App\\Models\\Capstone', 43, '{\"id\":43,\"groupname\":\"not set\",\"title\":\"screenshot monitoring for employe\",\"abstract\":\"screenshot monitoring for employeescreenshot monitoring for employeescreenshot monitoring for employeescreenshot monitoring for employeescreenshot monitoring for employeescreenshot monitoring for employeescreenshot monitoring for employeescreenshot monitoring for employee\",\"start_date\":\"2023-03-08\",\"xf1\":\"not set\",\"xf2\":\"UNDER DEVELOPMENT\",\"xf3\":null,\"xf4\":null,\"xf5\":null,\"name\":null,\"path\":null,\"xf6\":null,\"xf7\":null,\"xf8\":null}', '[]', 'http://127.0.0.1:8000/api/delete_capstone/43', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', NULL, '2023-03-07 21:34:46', '2023-03-07 21:34:46'),
(298, 'App\\Models\\User', 1, 'deleted', 'App\\Models\\Capstone1', 43, '{\"id\":43,\"capstone_id\":43,\"revise_manuscript\":null,\"action_done\":null,\"mou\":null,\"title_proposal_form\":null,\"adviser_appointmentform\":null,\"ppt\":null,\"recorded_proposal\":null,\"minutes\":null,\"gcash_ss_file\":null,\"acceptance_of_panel\":null,\"capstone_ocr\":null,\"status\":\"Working Cahapter 1,2,3\",\"propose_date\":null,\"xf1\":\"0\",\"xf2\":\"PENDING\",\"xf3\":\"NOT YET, SET\",\"minutes1\":null,\"xf4\":null,\"xf5\":null,\"xf6\":null}', '[]', 'http://127.0.0.1:8000/api/delete_capstone/43', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', NULL, '2023-03-07 21:34:46', '2023-03-07 21:34:46'),
(299, 'App\\Models\\User', 1, 'deleted', 'App\\Models\\Capstone2', 43, '{\"id\":43,\"capstone_id\":43,\"capstone_link\":null,\"proto_minutes\":null,\"proto_matrix\":null,\"ad_appointment_form\":null,\"gcash_payment\":null,\"acceptance_ss\":null,\"status\":\"Under-Development\",\"prototype_date\":null,\"xf1\":\"0\",\"xf2\":\"PENDING\",\"xf3\":\"NOT YET, SET\",\"minutes1\":null,\"xf4\":null,\"xf5\":null,\"xf6\":null}', '[]', 'http://127.0.0.1:8000/api/delete_capstone/43', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', NULL, '2023-03-07 21:34:46', '2023-03-07 21:34:46'),
(300, 'App\\Models\\User', 1, 'deleted', 'App\\Models\\Capstone3', 43, '{\"id\":43,\"capstone_id\":43,\"final_docu\":null,\"proto_minutes\":null,\"proto_matrix\":null,\"ppt\":null,\"software_demo\":null,\"gcash_payment\":null,\"acceptance_ss\":null,\"githublink\":null,\"status\":\"Pre-Documentation\",\"final_date\":null,\"xf1\":\"0\",\"xf2\":\"PENDING\",\"xf3\":\"NOT YET, SET\",\"minutes1\":null,\"xf4\":null,\"xf5\":null,\"xf6\":null}', '[]', 'http://127.0.0.1:8000/api/delete_capstone/43', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', NULL, '2023-03-07 21:34:46', '2023-03-07 21:34:46'),
(301, 'App\\Models\\User', 165, 'created', 'App\\Models\\Capstone', 44, '[]', '{\"groupname\":\"not set\",\"title\":\"screenshot monitoring for employe\",\"abstract\":\"screenshot monitoring for employeescreenshot monitoring for employeescreenshot monitoring for employeescreenshot monitoring for employeescreenshot monitoring for employeescreenshot monitoring for employeescreenshot monitoring for employeescreenshot monitoring for employee\",\"start_date\":\"2023-3-8 13:35:5\",\"xf1\":\"not set\",\"xf2\":\"UNDER DEVELOPMENT\",\"id\":44}', 'http://127.0.0.1:8000/api/add_capstonetopic', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36 Edg/110.0.1587.63', NULL, '2023-03-07 21:35:06', '2023-03-07 21:35:06'),
(302, 'App\\Models\\User', 165, 'created', 'App\\Models\\Capstone1', 44, '[]', '{\"id\":\"44\",\"capstone_id\":\"44\",\"status\":\"Working Cahapter 1,2,3\",\"xf1\":0,\"xf2\":\"PENDING\",\"xf3\":\"NOT YET, SET\"}', 'http://127.0.0.1:8000/api/create_capstone_proj/44', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36 Edg/110.0.1587.63', NULL, '2023-03-07 21:35:14', '2023-03-07 21:35:14'),
(303, 'App\\Models\\User', 165, 'created', 'App\\Models\\Capstone2', 44, '[]', '{\"id\":\"44\",\"status\":\"Under-Development\",\"capstone_id\":\"44\",\"xf1\":0,\"xf2\":\"PENDING\",\"xf3\":\"NOT YET, SET\"}', 'http://127.0.0.1:8000/api/create_capstone_proj/44', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36 Edg/110.0.1587.63', NULL, '2023-03-07 21:35:14', '2023-03-07 21:35:14'),
(304, 'App\\Models\\User', 165, 'created', 'App\\Models\\Capstone3', 44, '[]', '{\"id\":\"44\",\"capstone_id\":\"44\",\"status\":\"Pre-Documentation\",\"xf1\":0,\"xf2\":\"PENDING\",\"xf3\":\"NOT YET, SET\"}', 'http://127.0.0.1:8000/api/create_capstone_proj/44', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36 Edg/110.0.1587.63', NULL, '2023-03-07 21:35:14', '2023-03-07 21:35:14'),
(305, 'App\\Models\\User', 1, 'deleted', 'App\\Models\\User', 151, '{\"id\":151,\"name\":\"panel2\",\"mname\":\"panel2\",\"lname\":\"panel2\",\"uid\":\"12345678\",\"year\":null,\"email\":\"a1d2m3i4n@gmail.commm\",\"photo\":\"the_avatar.jpeg\",\"gender\":\"Male\",\"email_verified_at\":null,\"password\":\"$2y$10$ACYbulvQG2Kj7\\/OIX4d7bOXBkSshJXrR0b6RKxro4CoIIB6S1FsrC\",\"remember_token\":null,\"role_num\":\"2\"}', '[]', 'http://127.0.0.1:8000/api/delete_user/151', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', NULL, '2023-03-07 21:39:43', '2023-03-07 21:39:43'),
(306, 'App\\Models\\User', 1, 'created', 'App\\Models\\User', 167, '[]', '{\"name\":\"tem\",\"mname\":\"po\",\"photo\":\"the_avatar.jpeg\",\"lname\":\"rary\",\"year\":null,\"gender\":\"Male\",\"uid\":\"12345678\",\"email\":\"temporary@gmail.com\",\"password\":\"$2y$10$JZoLWoFORsI1M3tQnTrh\\/Od63E0EfixDbnwMAOSdi97vrcwkywjj2\",\"role_num\":2,\"id\":167}', 'http://127.0.0.1:8000/api/add_user', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', NULL, '2023-03-07 21:42:09', '2023-03-07 21:42:09'),
(307, 'App\\Models\\User', 1, 'created', 'App\\Models\\User', 168, '[]', '{\"name\":\"temp\",\"mname\":\"po\",\"photo\":\"the_avatar.jpeg\",\"lname\":\"rary\",\"year\":null,\"gender\":\"Male\",\"uid\":null,\"email\":\"temp1234@gmail.com\",\"password\":\"$2y$10$vOPQ7q8iPLVx9i0w8s61gOB5B1VpYGr7.rwK6TafVrxKdyoB1PwvW\",\"role_num\":1,\"id\":168}', 'http://127.0.0.1:8000/api/add_user', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', NULL, '2023-03-07 21:43:59', '2023-03-07 21:43:59'),
(308, 'App\\Models\\User', 1, 'updated', 'App\\Models\\User', 168, '{\"name\":\"temp\",\"uid\":null,\"year\":null,\"password\":\"$2y$10$vOPQ7q8iPLVx9i0w8s61gOB5B1VpYGr7.rwK6TafVrxKdyoB1PwvW\"}', '{\"name\":\"tem\",\"uid\":\"123456789\",\"year\":\"4th year\",\"password\":\"$2y$10$O6woJIbUJnNvyzIOUrebn.KhXQ6AhMt69DE6ILTGAtT750FBCGwDG\"}', 'http://127.0.0.1:8000/api/update_user/168', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', NULL, '2023-03-07 21:44:31', '2023-03-07 21:44:31'),
(309, 'App\\Models\\User', 1, 'updated', 'App\\Models\\User', 167, '{\"name\":\"tem\",\"mname\":\"po\",\"year\":null,\"password\":\"$2y$10$JZoLWoFORsI1M3tQnTrh\\/Od63E0EfixDbnwMAOSdi97vrcwkywjj2\"}', '{\"name\":\"temp\",\"mname\":\"o\",\"year\":\"null\",\"password\":\"$2y$10$0StZqECLUJI5p9a0ZJZD4eSFCnlHaWSF.xf1DBaIvPF\\/yn.1ftdLu\"}', 'http://127.0.0.1:8000/api/update_user/167', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', NULL, '2023-03-07 21:44:58', '2023-03-07 21:44:58'),
(310, 'App\\Models\\User', 1, 'updated', 'App\\Models\\User', 168, '{\"name\":\"tem\",\"mname\":\"po\",\"password\":\"$2y$10$O6woJIbUJnNvyzIOUrebn.KhXQ6AhMt69DE6ILTGAtT750FBCGwDG\"}', '{\"name\":\"Temp\",\"mname\":\"o\",\"password\":\"$2y$10$FPvWH39APglthQpM.ul32uodRxK1cIHVIwYWoY2j9z173zUa8ixdC\"}', 'http://127.0.0.1:8000/api/update_user/168', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', NULL, '2023-03-07 21:45:22', '2023-03-07 21:45:22'),
(311, 'App\\Models\\User', 1, 'updated', 'App\\Models\\User', 167, '{\"name\":\"temp\",\"password\":\"$2y$10$0StZqECLUJI5p9a0ZJZD4eSFCnlHaWSF.xf1DBaIvPF\\/yn.1ftdLu\"}', '{\"name\":\"Temp\",\"password\":\"$2y$10$pg1k35GLMy2uPPWDonhdWuWXScCT.fvWPBmB.fZYbZ4XPTAlODQnO\"}', 'http://127.0.0.1:8000/api/update_user/167', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', NULL, '2023-03-07 21:45:38', '2023-03-07 21:45:38');
INSERT INTO `audits` (`id`, `user_type`, `user_id`, `event`, `auditable_type`, `auditable_id`, `old_values`, `new_values`, `url`, `ip_address`, `user_agent`, `tags`, `created_at`, `updated_at`) VALUES
(312, 'App\\Models\\User', 1, 'deleted', 'App\\Models\\Capstone', 44, '{\"id\":44,\"groupname\":\"not set\",\"title\":\"screenshot monitoring for employe\",\"abstract\":\"screenshot monitoring for employeescreenshot monitoring for employeescreenshot monitoring for employeescreenshot monitoring for employeescreenshot monitoring for employeescreenshot monitoring for employeescreenshot monitoring for employeescreenshot monitoring for employee\",\"start_date\":\"2023-03-08\",\"xf1\":\"not set\",\"xf2\":\"UNDER DEVELOPMENT\",\"xf3\":null,\"xf4\":null,\"xf5\":null,\"name\":null,\"path\":null,\"xf6\":null,\"xf7\":null,\"xf8\":null}', '[]', 'http://127.0.0.1:8000/api/delete_capstone/44', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', NULL, '2023-03-07 21:52:55', '2023-03-07 21:52:55'),
(313, 'App\\Models\\User', 1, 'deleted', 'App\\Models\\Capstone1', 44, '{\"id\":44,\"capstone_id\":44,\"revise_manuscript\":null,\"action_done\":null,\"mou\":null,\"title_proposal_form\":null,\"adviser_appointmentform\":null,\"ppt\":null,\"recorded_proposal\":null,\"minutes\":null,\"gcash_ss_file\":null,\"acceptance_of_panel\":null,\"capstone_ocr\":null,\"status\":\"Working Cahapter 1,2,3\",\"propose_date\":null,\"xf1\":\"0\",\"xf2\":\"PENDING\",\"xf3\":\"NOT YET, SET\",\"minutes1\":null,\"xf4\":null,\"xf5\":null,\"xf6\":null}', '[]', 'http://127.0.0.1:8000/api/delete_capstone/44', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', NULL, '2023-03-07 21:52:55', '2023-03-07 21:52:55'),
(314, 'App\\Models\\User', 1, 'deleted', 'App\\Models\\Capstone2', 44, '{\"id\":44,\"capstone_id\":44,\"capstone_link\":null,\"proto_minutes\":null,\"proto_matrix\":null,\"ad_appointment_form\":null,\"gcash_payment\":null,\"acceptance_ss\":null,\"status\":\"Under-Development\",\"prototype_date\":null,\"xf1\":\"0\",\"xf2\":\"PENDING\",\"xf3\":\"NOT YET, SET\",\"minutes1\":null,\"xf4\":null,\"xf5\":null,\"xf6\":null}', '[]', 'http://127.0.0.1:8000/api/delete_capstone/44', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', NULL, '2023-03-07 21:52:55', '2023-03-07 21:52:55'),
(315, 'App\\Models\\User', 1, 'deleted', 'App\\Models\\Capstone3', 44, '{\"id\":44,\"capstone_id\":44,\"final_docu\":null,\"proto_minutes\":null,\"proto_matrix\":null,\"ppt\":null,\"software_demo\":null,\"gcash_payment\":null,\"acceptance_ss\":null,\"githublink\":null,\"status\":\"Pre-Documentation\",\"final_date\":null,\"xf1\":\"0\",\"xf2\":\"PENDING\",\"xf3\":\"NOT YET, SET\",\"minutes1\":null,\"xf4\":null,\"xf5\":null,\"xf6\":null}', '[]', 'http://127.0.0.1:8000/api/delete_capstone/44', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', NULL, '2023-03-07 21:52:55', '2023-03-07 21:52:55'),
(316, 'App\\Models\\User', 165, 'created', 'App\\Models\\Capstone', 45, '[]', '{\"groupname\":\"not set\",\"title\":\"screenshot monitoring for employe\",\"abstract\":\"screenshot monitoring for employeescreenshot monitoring for employeescreenshot monitoring for employeescreenshot monitoring for employeescreenshot monitoring for employeescreenshot monitoring for employeescreenshot monitoring for employeescreenshot monitoring for employee\",\"start_date\":\"2023-3-8 13:56:56\",\"xf1\":\"not set\",\"xf2\":\"UNDER DEVELOPMENT\",\"id\":45}', 'http://127.0.0.1:8000/api/add_capstonetopic', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36 Edg/110.0.1587.63', NULL, '2023-03-07 21:56:57', '2023-03-07 21:56:57'),
(317, 'App\\Models\\User', 165, 'created', 'App\\Models\\Capstone1', 45, '[]', '{\"id\":\"45\",\"capstone_id\":\"45\",\"status\":\"Working Cahapter 1,2,3\",\"xf1\":0,\"xf2\":\"PENDING\",\"xf3\":\"NOT YET, SET\"}', 'http://127.0.0.1:8000/api/create_capstone_proj/45', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36 Edg/110.0.1587.63', NULL, '2023-03-07 21:57:03', '2023-03-07 21:57:03'),
(318, 'App\\Models\\User', 165, 'created', 'App\\Models\\Capstone2', 45, '[]', '{\"id\":\"45\",\"status\":\"Under-Development\",\"capstone_id\":\"45\",\"xf1\":0,\"xf2\":\"PENDING\",\"xf3\":\"NOT YET, SET\"}', 'http://127.0.0.1:8000/api/create_capstone_proj/45', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36 Edg/110.0.1587.63', NULL, '2023-03-07 21:57:03', '2023-03-07 21:57:03'),
(319, 'App\\Models\\User', 165, 'created', 'App\\Models\\Capstone3', 45, '[]', '{\"id\":\"45\",\"capstone_id\":\"45\",\"status\":\"Pre-Documentation\",\"xf1\":0,\"xf2\":\"PENDING\",\"xf3\":\"NOT YET, SET\"}', 'http://127.0.0.1:8000/api/create_capstone_proj/45', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36 Edg/110.0.1587.63', NULL, '2023-03-07 21:57:03', '2023-03-07 21:57:03'),
(320, 'App\\Models\\User', 1, 'deleted', 'App\\Models\\Capstone', 45, '{\"id\":45,\"groupname\":\"not set\",\"title\":\"screenshot monitoring for employe\",\"abstract\":\"screenshot monitoring for employeescreenshot monitoring for employeescreenshot monitoring for employeescreenshot monitoring for employeescreenshot monitoring for employeescreenshot monitoring for employeescreenshot monitoring for employeescreenshot monitoring for employee\",\"start_date\":\"2023-03-08\",\"xf1\":\"not set\",\"xf2\":\"UNDER DEVELOPMENT\",\"xf3\":null,\"xf4\":null,\"xf5\":null,\"name\":null,\"path\":null,\"xf6\":null,\"xf7\":null,\"xf8\":null}', '[]', 'http://127.0.0.1:8000/api/delete_capstone/45', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', NULL, '2023-03-07 23:41:42', '2023-03-07 23:41:42'),
(321, 'App\\Models\\User', 1, 'deleted', 'App\\Models\\Capstone1', 45, '{\"id\":45,\"capstone_id\":45,\"revise_manuscript\":null,\"action_done\":null,\"mou\":null,\"title_proposal_form\":null,\"adviser_appointmentform\":null,\"ppt\":null,\"recorded_proposal\":null,\"minutes\":null,\"gcash_ss_file\":null,\"acceptance_of_panel\":null,\"capstone_ocr\":null,\"status\":\"Working Cahapter 1,2,3\",\"propose_date\":null,\"xf1\":\"0\",\"xf2\":\"PENDING\",\"xf3\":\"NOT YET, SET\",\"minutes1\":null,\"xf4\":null,\"xf5\":null,\"xf6\":null}', '[]', 'http://127.0.0.1:8000/api/delete_capstone/45', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', NULL, '2023-03-07 23:41:42', '2023-03-07 23:41:42'),
(322, 'App\\Models\\User', 1, 'deleted', 'App\\Models\\Capstone2', 45, '{\"id\":45,\"capstone_id\":45,\"capstone_link\":null,\"proto_minutes\":null,\"proto_matrix\":null,\"ad_appointment_form\":null,\"gcash_payment\":null,\"acceptance_ss\":null,\"status\":\"Under-Development\",\"prototype_date\":null,\"xf1\":\"0\",\"xf2\":\"PENDING\",\"xf3\":\"NOT YET, SET\",\"minutes1\":null,\"xf4\":null,\"xf5\":null,\"xf6\":null}', '[]', 'http://127.0.0.1:8000/api/delete_capstone/45', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', NULL, '2023-03-07 23:41:42', '2023-03-07 23:41:42'),
(323, 'App\\Models\\User', 1, 'deleted', 'App\\Models\\Capstone3', 45, '{\"id\":45,\"capstone_id\":45,\"final_docu\":null,\"proto_minutes\":null,\"proto_matrix\":null,\"ppt\":null,\"software_demo\":null,\"gcash_payment\":null,\"acceptance_ss\":null,\"githublink\":null,\"status\":\"Pre-Documentation\",\"final_date\":null,\"xf1\":\"0\",\"xf2\":\"PENDING\",\"xf3\":\"NOT YET, SET\",\"minutes1\":null,\"xf4\":null,\"xf5\":null,\"xf6\":null}', '[]', 'http://127.0.0.1:8000/api/delete_capstone/45', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', NULL, '2023-03-07 23:41:42', '2023-03-07 23:41:42'),
(324, 'App\\Models\\User', 165, 'created', 'App\\Models\\Capstone', 46, '[]', '{\"groupname\":\"not set\",\"title\":\"screenshot monitoring for employe\",\"abstract\":\"screenshot monitoring for employeescreenshot monitoring for employeescreenshot monitoring for employeescreenshot monitoring for employeescreenshot monitoring for employeescreenshot monitoring for employeescreenshot monitoring for employeescreenshot monitoring for employee\",\"start_date\":\"2023-3-8 15:43:5\",\"xf1\":\"not set\",\"xf2\":\"UNDER DEVELOPMENT\",\"id\":46}', 'http://127.0.0.1:8000/api/add_capstonetopic', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36 Edg/110.0.1587.63', NULL, '2023-03-07 23:43:05', '2023-03-07 23:43:05'),
(325, 'App\\Models\\User', 165, 'created', 'App\\Models\\Capstone1', 46, '[]', '{\"id\":\"46\",\"capstone_id\":\"46\",\"status\":\"Working Cahapter 1,2,3\",\"xf1\":0,\"xf2\":\"PENDING\",\"xf3\":\"NOT YET, SET\"}', 'http://127.0.0.1:8000/api/create_capstone_proj/46', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36 Edg/110.0.1587.63', NULL, '2023-03-07 23:43:10', '2023-03-07 23:43:10'),
(326, 'App\\Models\\User', 165, 'created', 'App\\Models\\Capstone2', 46, '[]', '{\"id\":\"46\",\"status\":\"Under-Development\",\"capstone_id\":\"46\",\"xf1\":0,\"xf2\":\"PENDING\",\"xf3\":\"NOT YET, SET\"}', 'http://127.0.0.1:8000/api/create_capstone_proj/46', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36 Edg/110.0.1587.63', NULL, '2023-03-07 23:43:10', '2023-03-07 23:43:10'),
(327, 'App\\Models\\User', 165, 'created', 'App\\Models\\Capstone3', 46, '[]', '{\"id\":\"46\",\"capstone_id\":\"46\",\"status\":\"Pre-Documentation\",\"xf1\":0,\"xf2\":\"PENDING\",\"xf3\":\"NOT YET, SET\"}', 'http://127.0.0.1:8000/api/create_capstone_proj/46', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36 Edg/110.0.1587.63', NULL, '2023-03-07 23:43:10', '2023-03-07 23:43:10'),
(328, NULL, NULL, 'created', 'App\\Models\\User', 169, '[]', '{\"name\":\"Tester\",\"mname\":\"T\",\"lname\":\"Student\",\"photo\":\"the_avatar.jpeg\",\"year\":\"not set\",\"gender\":\"not set\",\"uid\":\"12345678\",\"email\":\"testerstudent@gmail.com\",\"password\":\"$2y$10$VemZ\\/L4h2A.V3NOisMUoy.\\/AkyWeIox.d12VbWjIINH10uS2.QR02\",\"role_num\":1,\"id\":169}', 'http://127.0.0.1:8000/register1', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', NULL, '2023-03-11 18:28:57', '2023-03-11 18:28:57');

-- --------------------------------------------------------

--
-- Table structure for table `caps1ratings`
--

CREATE TABLE `caps1ratings` (
  `id` int(10) UNSIGNED NOT NULL,
  `capstone1_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `background` int(11) DEFAULT NULL,
  `backgrounds` int(11) DEFAULT NULL,
  `obj1` int(11) DEFAULT NULL,
  `obj2` int(11) DEFAULT NULL,
  `obj3` int(11) DEFAULT NULL,
  `s1` int(11) DEFAULT NULL,
  `s2` int(11) DEFAULT NULL,
  `sc` int(11) DEFAULT NULL,
  `df` int(11) DEFAULT NULL,
  `lr1` int(11) DEFAULT NULL,
  `lr2` int(11) DEFAULT NULL,
  `meth1` int(11) DEFAULT NULL,
  `meth2` int(11) DEFAULT NULL,
  `meth3` int(11) DEFAULT NULL,
  `ref1` int(11) DEFAULT NULL,
  `format` int(11) DEFAULT NULL,
  `oralCom` int(11) DEFAULT NULL,
  `ppt` int(11) DEFAULT NULL,
  `attire` int(11) DEFAULT NULL,
  `resp` int(11) DEFAULT NULL,
  `total` int(11) DEFAULT NULL,
  `statusrate` int(11) DEFAULT NULL,
  `xf1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `xf2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `xf3` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `xf4` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `xf5` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `xf6` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `caps1ratings`
--

INSERT INTO `caps1ratings` (`id`, `capstone1_id`, `user_id`, `background`, `backgrounds`, `obj1`, `obj2`, `obj3`, `s1`, `s2`, `sc`, `df`, `lr1`, `lr2`, `meth1`, `meth2`, `meth3`, `ref1`, `format`, `oralCom`, `ppt`, `attire`, `resp`, `total`, `statusrate`, `xf1`, `xf2`, `xf3`, `xf4`, `xf5`, `xf6`, `created_at`, `updated_at`) VALUES
(4, 2, 18, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 'PENDING', NULL, NULL, NULL, NULL, NULL, '2022-11-30 07:55:13', '2022-11-30 07:55:13'),
(6, 2, 16, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 'PENDING', NULL, NULL, NULL, NULL, NULL, '2022-11-30 07:55:13', '2022-11-30 07:55:13'),
(46, 14, 15, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 'PENDING', NULL, NULL, NULL, NULL, NULL, '2022-12-14 07:48:20', '2022-12-14 07:48:20'),
(47, 14, 16, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 'PENDING', NULL, NULL, NULL, NULL, NULL, '2022-12-14 07:48:20', '2022-12-14 07:48:20'),
(48, 14, 17, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 'PENDING', NULL, NULL, NULL, NULL, NULL, '2022-12-14 07:48:20', '2022-12-14 07:48:20'),
(49, 14, 18, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 'PENDING', NULL, NULL, NULL, NULL, NULL, '2022-12-14 07:49:57', '2022-12-14 07:49:57'),
(50, 11, 15, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 'PENDING', NULL, NULL, NULL, NULL, NULL, '2022-12-14 07:55:46', '2022-12-14 07:55:46'),
(51, 11, 16, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 'PENDING', NULL, NULL, NULL, NULL, NULL, '2022-12-14 07:55:46', '2022-12-14 07:55:46'),
(52, 11, 17, 1, 2, 4, 4, 3, 3, 4, 4, 4, 3, 4, 3, 4, 4, 4, 2, 3, 4, 4, 4, 86, NULL, 'APPROVED', 'null', NULL, NULL, NULL, NULL, '2022-12-14 07:55:46', '2023-03-07 20:47:23'),
(53, 17, 15, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 'PENDING', NULL, NULL, NULL, NULL, NULL, '2023-01-02 03:09:07', '2023-01-02 03:09:07'),
(54, 17, 16, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 'PENDING', NULL, NULL, NULL, NULL, NULL, '2023-01-02 03:09:07', '2023-01-02 03:09:07'),
(55, 17, 17, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 'PENDING', NULL, NULL, NULL, NULL, NULL, '2023-01-02 03:09:07', '2023-01-02 03:09:07'),
(56, 16, 15, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 'PENDING', NULL, NULL, NULL, NULL, NULL, '2023-01-02 03:09:31', '2023-01-02 03:09:31'),
(57, 16, 16, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 'PENDING', NULL, NULL, NULL, NULL, NULL, '2023-01-02 03:09:31', '2023-01-02 03:09:31'),
(58, 16, 17, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 'PENDING', NULL, NULL, NULL, NULL, NULL, '2023-01-02 03:09:31', '2023-01-02 03:09:31'),
(59, 13, 15, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 'PENDING', NULL, NULL, NULL, NULL, NULL, '2023-01-02 03:11:11', '2023-01-02 03:11:11'),
(60, 13, 16, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 'PENDING', NULL, NULL, NULL, NULL, NULL, '2023-01-02 03:11:11', '2023-01-02 03:11:11'),
(61, 13, 17, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 'PENDING', NULL, NULL, NULL, NULL, NULL, '2023-01-02 03:11:11', '2023-01-02 03:11:11'),
(62, 21, 15, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 'PENDING', NULL, NULL, NULL, NULL, NULL, '2023-01-08 22:23:17', '2023-01-08 22:23:17'),
(63, 21, 16, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 'PENDING', NULL, NULL, NULL, NULL, NULL, '2023-01-08 22:23:17', '2023-01-08 22:23:17'),
(64, 21, 17, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 'PENDING', NULL, NULL, NULL, NULL, NULL, '2023-01-08 22:23:17', '2023-01-08 22:23:17'),
(77, 2, 89, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 'PENDING', NULL, NULL, NULL, NULL, NULL, '2023-01-23 05:34:01', '2023-01-23 05:34:01'),
(81, 2, 128, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 'PENDING', NULL, NULL, NULL, NULL, NULL, '2023-02-19 19:33:15', '2023-02-19 19:33:15'),
(82, 39, 89, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 'PENDING', NULL, NULL, NULL, NULL, NULL, '2023-03-07 18:21:57', '2023-03-07 18:21:57'),
(83, 39, 88, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 'PENDING', NULL, NULL, NULL, NULL, NULL, '2023-03-07 18:21:57', '2023-03-07 18:21:57'),
(84, 39, 121, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 'PENDING', NULL, NULL, NULL, NULL, NULL, '2023-03-07 18:21:57', '2023-03-07 18:21:57'),
(94, 46, 167, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 'PENDING', NULL, NULL, NULL, NULL, NULL, '2023-03-07 23:43:10', '2023-03-07 23:43:10'),
(95, 46, 167, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 'PENDING', NULL, NULL, NULL, NULL, NULL, '2023-03-07 23:43:10', '2023-03-07 23:43:10'),
(96, 46, 167, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 'PENDING', NULL, NULL, NULL, NULL, NULL, '2023-03-07 23:43:10', '2023-03-07 23:43:10');

-- --------------------------------------------------------

--
-- Table structure for table `caps2ratings`
--

CREATE TABLE `caps2ratings` (
  `id` int(10) UNSIGNED NOT NULL,
  `capstone2_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `background` int(11) DEFAULT NULL,
  `backgrounds` int(11) DEFAULT NULL,
  `obj1` int(11) DEFAULT NULL,
  `obj2` int(11) DEFAULT NULL,
  `obj3` int(11) DEFAULT NULL,
  `s1` int(11) DEFAULT NULL,
  `s2` int(11) DEFAULT NULL,
  `sc` int(11) DEFAULT NULL,
  `df` int(11) DEFAULT NULL,
  `lr1` int(11) DEFAULT NULL,
  `lr2` int(11) DEFAULT NULL,
  `meth1` int(11) DEFAULT NULL,
  `meth2` int(11) DEFAULT NULL,
  `meth3` int(11) DEFAULT NULL,
  `ref1` int(11) DEFAULT NULL,
  `format` int(11) DEFAULT NULL,
  `oralCom` int(11) DEFAULT NULL,
  `ppt` int(11) DEFAULT NULL,
  `attire` int(11) DEFAULT NULL,
  `resp` int(11) DEFAULT NULL,
  `total` int(11) DEFAULT NULL,
  `statusrate` int(11) DEFAULT NULL,
  `xf1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `xf2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `xf3` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `xf4` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `xf5` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `xf6` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `caps2ratings`
--

INSERT INTO `caps2ratings` (`id`, `capstone2_id`, `user_id`, `background`, `backgrounds`, `obj1`, `obj2`, `obj3`, `s1`, `s2`, `sc`, `df`, `lr1`, `lr2`, `meth1`, `meth2`, `meth3`, `ref1`, `format`, `oralCom`, `ppt`, `attire`, `resp`, `total`, `statusrate`, `xf1`, `xf2`, `xf3`, `xf4`, `xf5`, `xf6`, `created_at`, `updated_at`) VALUES
(4, 2, 18, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 'PENDING', NULL, NULL, NULL, NULL, NULL, '2022-11-30 07:55:13', '2022-11-30 07:55:13'),
(6, 2, 16, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 'PENDING', NULL, NULL, NULL, NULL, NULL, '2022-11-30 07:55:13', '2022-11-30 07:55:13'),
(46, 14, 15, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 'PENDING', NULL, NULL, NULL, NULL, NULL, '2022-12-14 07:48:20', '2022-12-14 07:48:20'),
(47, 14, 16, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 'PENDING', NULL, NULL, NULL, NULL, NULL, '2022-12-14 07:48:20', '2022-12-14 07:48:20'),
(48, 14, 17, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 'PENDING', NULL, NULL, NULL, NULL, NULL, '2022-12-14 07:48:20', '2022-12-14 07:48:20'),
(49, 14, 18, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 'PENDING', NULL, NULL, NULL, NULL, NULL, '2022-12-14 07:49:57', '2022-12-14 07:49:57'),
(50, 11, 15, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 'PENDING', NULL, NULL, NULL, NULL, NULL, '2022-12-14 07:55:46', '2022-12-14 07:55:46'),
(51, 11, 16, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 'PENDING', NULL, NULL, NULL, NULL, NULL, '2022-12-14 07:55:46', '2022-12-14 07:55:46'),
(52, 11, 17, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 'PENDING', NULL, NULL, NULL, NULL, NULL, '2022-12-14 07:55:46', '2022-12-14 07:55:46'),
(53, 17, 15, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 'PENDING', NULL, NULL, NULL, NULL, NULL, '2023-01-02 03:09:07', '2023-01-02 03:09:07'),
(54, 17, 16, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 'PENDING', NULL, NULL, NULL, NULL, NULL, '2023-01-02 03:09:07', '2023-01-02 03:09:07'),
(55, 17, 17, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 'PENDING', NULL, NULL, NULL, NULL, NULL, '2023-01-02 03:09:07', '2023-01-02 03:09:07'),
(56, 16, 15, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 'PENDING', NULL, NULL, NULL, NULL, NULL, '2023-01-02 03:09:31', '2023-01-02 03:09:31'),
(57, 16, 16, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 'PENDING', NULL, NULL, NULL, NULL, NULL, '2023-01-02 03:09:31', '2023-01-02 03:09:31'),
(58, 16, 17, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 'PENDING', NULL, NULL, NULL, NULL, NULL, '2023-01-02 03:09:31', '2023-01-02 03:09:31'),
(59, 13, 15, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 'PENDING', NULL, NULL, NULL, NULL, NULL, '2023-01-02 03:11:11', '2023-01-02 03:11:11'),
(60, 13, 16, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 'PENDING', NULL, NULL, NULL, NULL, NULL, '2023-01-02 03:11:11', '2023-01-02 03:11:11'),
(61, 13, 17, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 'PENDING', NULL, NULL, NULL, NULL, NULL, '2023-01-02 03:11:11', '2023-01-02 03:11:11'),
(62, 21, 15, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 'PENDING', NULL, NULL, NULL, NULL, NULL, '2023-01-08 22:23:17', '2023-01-08 22:23:17'),
(63, 21, 16, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 'PENDING', NULL, NULL, NULL, NULL, NULL, '2023-01-08 22:23:17', '2023-01-08 22:23:17'),
(64, 21, 17, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 'PENDING', NULL, NULL, NULL, NULL, NULL, '2023-01-08 22:23:17', '2023-01-08 22:23:17'),
(77, 2, 89, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 'PENDING', NULL, NULL, NULL, NULL, NULL, '2023-01-23 05:34:01', '2023-01-23 05:34:01'),
(81, 2, 128, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 'PENDING', NULL, NULL, NULL, NULL, NULL, '2023-02-19 19:33:15', '2023-02-19 19:33:15'),
(82, 39, 89, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 'PENDING', NULL, NULL, NULL, NULL, NULL, '2023-03-07 18:21:57', '2023-03-07 18:21:57'),
(83, 39, 88, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 'PENDING', NULL, NULL, NULL, NULL, NULL, '2023-03-07 18:21:57', '2023-03-07 18:21:57'),
(84, 39, 121, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 'PENDING', NULL, NULL, NULL, NULL, NULL, '2023-03-07 18:21:57', '2023-03-07 18:21:57'),
(94, 46, 167, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 'PENDING', NULL, NULL, NULL, NULL, NULL, '2023-03-07 23:43:10', '2023-03-07 23:43:10'),
(95, 46, 167, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 'PENDING', NULL, NULL, NULL, NULL, NULL, '2023-03-07 23:43:10', '2023-03-07 23:43:10'),
(96, 46, 167, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 'PENDING', NULL, NULL, NULL, NULL, NULL, '2023-03-07 23:43:10', '2023-03-07 23:43:10');

-- --------------------------------------------------------

--
-- Table structure for table `caps3ratings`
--

CREATE TABLE `caps3ratings` (
  `id` int(10) UNSIGNED NOT NULL,
  `capstone3_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `background` int(11) DEFAULT NULL,
  `backgrounds` int(11) DEFAULT NULL,
  `obj1` int(11) DEFAULT NULL,
  `obj2` int(11) DEFAULT NULL,
  `obj3` int(11) DEFAULT NULL,
  `s1` int(11) DEFAULT NULL,
  `s2` int(11) DEFAULT NULL,
  `sc` int(11) DEFAULT NULL,
  `df` int(11) DEFAULT NULL,
  `lr1` int(11) DEFAULT NULL,
  `lr2` int(11) DEFAULT NULL,
  `meth1` int(11) DEFAULT NULL,
  `meth2` int(11) DEFAULT NULL,
  `meth3` int(11) DEFAULT NULL,
  `ref1` int(11) DEFAULT NULL,
  `format` int(11) DEFAULT NULL,
  `oralCom` int(11) DEFAULT NULL,
  `ppt` int(11) DEFAULT NULL,
  `attire` int(11) DEFAULT NULL,
  `resp` int(11) DEFAULT NULL,
  `total` int(11) DEFAULT NULL,
  `statusrate` int(11) DEFAULT NULL,
  `xf1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `xf2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `xf3` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `xf4` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `xf5` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `xf6` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `caps3ratings`
--

INSERT INTO `caps3ratings` (`id`, `capstone3_id`, `user_id`, `background`, `backgrounds`, `obj1`, `obj2`, `obj3`, `s1`, `s2`, `sc`, `df`, `lr1`, `lr2`, `meth1`, `meth2`, `meth3`, `ref1`, `format`, `oralCom`, `ppt`, `attire`, `resp`, `total`, `statusrate`, `xf1`, `xf2`, `xf3`, `xf4`, `xf5`, `xf6`, `created_at`, `updated_at`) VALUES
(4, 2, 18, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 'PENDING', NULL, NULL, NULL, NULL, NULL, '2022-11-30 07:55:13', '2022-11-30 07:55:13'),
(6, 2, 16, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 'PENDING', NULL, NULL, NULL, NULL, NULL, '2022-11-30 07:55:13', '2022-11-30 07:55:13'),
(46, 14, 15, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 'PENDING', NULL, NULL, NULL, NULL, NULL, '2022-12-14 07:48:20', '2022-12-14 07:48:20'),
(47, 14, 16, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 'PENDING', NULL, NULL, NULL, NULL, NULL, '2022-12-14 07:48:20', '2022-12-14 07:48:20'),
(48, 14, 17, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 'PENDING', NULL, NULL, NULL, NULL, NULL, '2022-12-14 07:48:20', '2022-12-14 07:48:20'),
(49, 14, 18, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 'PENDING', NULL, NULL, NULL, NULL, NULL, '2022-12-14 07:49:57', '2022-12-14 07:49:57'),
(50, 11, 15, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 'PENDING', NULL, NULL, NULL, NULL, NULL, '2022-12-14 07:55:46', '2022-12-14 07:55:46'),
(51, 11, 16, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 'PENDING', NULL, NULL, NULL, NULL, NULL, '2022-12-14 07:55:46', '2022-12-14 07:55:46'),
(52, 11, 17, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 'PENDING', NULL, NULL, NULL, NULL, NULL, '2022-12-14 07:55:46', '2022-12-14 07:55:46'),
(53, 17, 15, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 'PENDING', NULL, NULL, NULL, NULL, NULL, '2023-01-02 03:09:07', '2023-01-02 03:09:07'),
(54, 17, 16, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 'PENDING', NULL, NULL, NULL, NULL, NULL, '2023-01-02 03:09:07', '2023-01-02 03:09:07'),
(55, 17, 17, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 'PENDING', NULL, NULL, NULL, NULL, NULL, '2023-01-02 03:09:07', '2023-01-02 03:09:07'),
(56, 16, 15, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 'PENDING', NULL, NULL, NULL, NULL, NULL, '2023-01-02 03:09:31', '2023-01-02 03:09:31'),
(57, 16, 16, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 'PENDING', NULL, NULL, NULL, NULL, NULL, '2023-01-02 03:09:31', '2023-01-02 03:09:31'),
(58, 16, 17, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 'PENDING', NULL, NULL, NULL, NULL, NULL, '2023-01-02 03:09:31', '2023-01-02 03:09:31'),
(59, 13, 15, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 'PENDING', NULL, NULL, NULL, NULL, NULL, '2023-01-02 03:11:11', '2023-01-02 03:11:11'),
(60, 13, 16, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 'PENDING', NULL, NULL, NULL, NULL, NULL, '2023-01-02 03:11:11', '2023-01-02 03:11:11'),
(61, 13, 17, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 'PENDING', NULL, NULL, NULL, NULL, NULL, '2023-01-02 03:11:11', '2023-01-02 03:11:11'),
(62, 21, 15, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 'PENDING', NULL, NULL, NULL, NULL, NULL, '2023-01-08 22:23:17', '2023-01-08 22:23:17'),
(63, 21, 16, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 'PENDING', NULL, NULL, NULL, NULL, NULL, '2023-01-08 22:23:17', '2023-01-08 22:23:17'),
(64, 21, 17, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 'PENDING', NULL, NULL, NULL, NULL, NULL, '2023-01-08 22:23:17', '2023-01-08 22:23:17'),
(77, 2, 89, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 'PENDING', NULL, NULL, NULL, NULL, NULL, '2023-01-23 05:34:01', '2023-01-23 05:34:01'),
(81, 2, 128, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 'PENDING', NULL, NULL, NULL, NULL, NULL, '2023-02-19 19:33:15', '2023-02-19 19:33:15'),
(82, 39, 89, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 'PENDING', NULL, NULL, NULL, NULL, NULL, '2023-03-07 18:21:57', '2023-03-07 18:21:57'),
(83, 39, 88, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 'PENDING', NULL, NULL, NULL, NULL, NULL, '2023-03-07 18:21:57', '2023-03-07 18:21:57'),
(84, 39, 121, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 'PENDING', NULL, NULL, NULL, NULL, NULL, '2023-03-07 18:21:57', '2023-03-07 18:21:57'),
(94, 46, 167, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 'PENDING', NULL, NULL, NULL, NULL, NULL, '2023-03-07 23:43:10', '2023-03-07 23:43:10'),
(95, 46, 167, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 'PENDING', NULL, NULL, NULL, NULL, NULL, '2023-03-07 23:43:10', '2023-03-07 23:43:10'),
(96, 46, 167, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 'PENDING', NULL, NULL, NULL, NULL, NULL, '2023-03-07 23:43:10', '2023-03-07 23:43:10');

-- --------------------------------------------------------

--
-- Table structure for table `capstone1s`
--

CREATE TABLE `capstone1s` (
  `id` int(10) UNSIGNED NOT NULL,
  `capstone_id` int(10) UNSIGNED NOT NULL,
  `revise_manuscript` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `action_done` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mou` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title_proposal_form` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `adviser_appointmentform` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ppt` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `recorded_proposal` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `minutes` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gcash_ss_file` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `acceptance_of_panel` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `capstone_ocr` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `propose_date` date DEFAULT NULL,
  `xf1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `xf2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `xf3` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `minutes1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `xf4` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `xf5` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `xf6` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `capstone1s`
--

INSERT INTO `capstone1s` (`id`, `capstone_id`, `revise_manuscript`, `action_done`, `mou`, `title_proposal_form`, `adviser_appointmentform`, `ppt`, `recorded_proposal`, `minutes`, `gcash_ss_file`, `acceptance_of_panel`, `capstone_ocr`, `status`, `propose_date`, `xf1`, `xf2`, `xf3`, `minutes1`, `xf4`, `xf5`, `xf6`, `created_at`, `updated_at`) VALUES
(2, 2, 'https://docs.google.com/document/d/e/2PACX-1vQKJnGwbRYtnORFk7o1MEUwvTaMpf2VsO2Sp7grIf76Pdk7Y9g9f27G09Hdyun98A/pub?embedded=true', 'https://docs.google.com/document/d/e/2PACX-1vRF0GIfBGmH1fZGFElZar2aqbAWF0TtbEYN8d0fwT4EJIVv1R1fd1zBYBdHB-M7hQ/pub?embedded=true', 'https://docs.google.com/document/d/e/2PACX-1vR06GKp6ouJZ7hkidtC-w7vn3BeNNESax8LOAV2B1qqDVgiipVlE2Mdx0aYjG1dUGzUzQJ-oBWIbcSK/pub?embedded=true', 'https://docs.google.com/document/d/e/2PACX-1vSqjzlFFVrpeLkc0IQ_wwGsd256F-8JN91mpsToeC-2Q29zI5B1mZsi-4NC55zAkQ/pub?embedded=true', 'https://docs.google.com/document/d/e/2PACX-1vQpdJm9X7cvxw8yfuzH0eDHSR8OeFnfrp49KrpEE6wtGpnS16EWDyaSSKQ3CM6eyA/pub?embedded=true', 'https://docs.google.com/presentation/d/e/2PACX-1vQbGDy8mATqol0ZEiFR3duAGaRLqc9ixCvEdA0AtFnTFJ3tcPcYMrkCb3p3C73wWk2f2I-ye_9ppHUF/embed?start=false&loop=false&delayms=3000', 'https://www.youtube.com/embed/AbBk5r_i9WQ', 'https://docs.google.com/document/d/e/2PACX-1vS6c2_Q5L_2CsUWL2PZJGC-sM64Oy1wCvFP8MbOrCz2WWXAyrPx7yTW1Umilgculw/pub?embedded=true', 'https://docs.google.com/document/d/e/2PACX-1vQAy9T4dBWIdlCZOvZ31hb8MWZO5LHO56MMFxgVLWRpQ6bXBKcc279FobToBmqzYw/pub?embedded=true', 'https://docs.google.com/document/d/e/2PACX-1vQSOryqaoJaQ0NYdOnwJbUVJUbYERZG-lA3vk7OL8nf9SyAJU3IJUYFoGThcs06tQ/pub?embedded=true', NULL, 'Done-Approved', '2022-04-25', '0', 'PENDING', '17', '1670135405.BUKSU CAPSTONE ARCHIVING MANAGEMENT SYSTEM_MANUSCRIPT.pdf', 'AGREE', NULL, NULL, '2022-11-30 07:55:13', '2022-12-14 07:19:29'),
(11, 11, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Working Cahapter 1,2,3', NULL, '28.666666666666668', 'PARTIAL', 'NOT YET, SET', NULL, NULL, NULL, NULL, '2022-12-14 07:55:46', '2023-03-07 20:47:25'),
(12, 12, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Working Cahapter 1,2,3', NULL, '0', 'PENDING', 'NOT YET, SET', NULL, NULL, NULL, NULL, '2022-12-14 07:48:10', '2022-12-14 07:48:10'),
(13, 13, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Working Cahapter 1,2,3', NULL, '0', 'PENDING', 'NOT YET, SET', NULL, NULL, NULL, NULL, '2023-01-02 03:11:11', '2023-01-02 03:11:11'),
(14, 14, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Working Cahapter 1,2,3', NULL, '0', 'PENDING', 'NOT YET, SET', '1671033470.BUKSU CAPSTONE ARCHIVING MANAGEMENT SYSTEM_MANUSCRIPT.pdf', NULL, NULL, NULL, '2022-12-14 07:48:20', '2022-12-14 07:57:50'),
(15, 15, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Working Cahapter 1,2,3', NULL, '0', 'PENDING', 'NOT YET, SET', NULL, NULL, NULL, NULL, '2022-12-14 06:09:32', '2022-12-14 06:09:32'),
(16, 16, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Working Cahapter 1,2,3', NULL, '0', 'PENDING', 'NOT YET, SET', NULL, NULL, NULL, NULL, '2023-01-02 03:09:31', '2023-01-02 03:09:31'),
(17, 17, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Working Cahapter 1,2,3', NULL, '0', 'PENDING', 'NOT YET, SET', NULL, NULL, NULL, NULL, '2023-01-02 03:09:07', '2023-01-02 03:09:07'),
(18, 18, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Working Cahapter 1,2,3', NULL, '0', 'PENDING', 'NOT YET, SET', NULL, NULL, NULL, NULL, '2022-12-14 02:21:33', '2022-12-14 02:21:33'),
(20, 20, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Working Cahapter 1,2,3', NULL, '0', 'PENDING', 'NOT YET, SET', NULL, NULL, NULL, NULL, '2022-12-14 07:16:19', '2022-12-14 07:16:19'),
(21, 21, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Working Cahapter 1,2,3', NULL, '0', 'PENDING', 'NOT YET, SET', NULL, NULL, NULL, NULL, '2023-01-08 22:23:17', '2023-01-08 22:23:17'),
(39, 39, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Working Cahapter 1,2,3', NULL, '0', 'PENDING', 'NOT YET, SET', NULL, NULL, NULL, NULL, '2023-03-07 18:21:57', '2023-03-07 18:21:57'),
(46, 46, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Working Cahapter 1,2,3', NULL, '0', 'PENDING', 'NOT YET, SET', NULL, NULL, NULL, NULL, '2023-03-07 23:43:10', '2023-03-07 23:43:10');

-- --------------------------------------------------------

--
-- Table structure for table `capstone2s`
--

CREATE TABLE `capstone2s` (
  `id` int(10) UNSIGNED NOT NULL,
  `capstone_id` int(10) UNSIGNED NOT NULL,
  `capstone_link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `proto_minutes` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `proto_matrix` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ad_appointment_form` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gcash_payment` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `acceptance_ss` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `prototype_date` date DEFAULT NULL,
  `xf1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `xf2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `xf3` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `minutes1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `xf4` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `xf5` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `xf6` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `capstone2s`
--

INSERT INTO `capstone2s` (`id`, `capstone_id`, `capstone_link`, `proto_minutes`, `proto_matrix`, `ad_appointment_form`, `gcash_payment`, `acceptance_ss`, `status`, `prototype_date`, `xf1`, `xf2`, `xf3`, `minutes1`, `xf4`, `xf5`, `xf6`, `created_at`, `updated_at`) VALUES
(2, 2, 'https://www.youtube.com/embed/wRfP4nelG2Y', 'https://docs.google.com/document/d/e/2PACX-1vTePmfJaCR-i2a6QaMli41WFSZ8I_z8pn3ZNuJZwqOjRMZy3shbHo620PuCEaNTsw/pub?embedded=true', 'https://docs.google.com/document/d/e/2PACX-1vTVMUeOnP7KWXzUvi6zqHabY7ebAfXrbTDVhDDMP6VcBsHhnqquV9AantXJ1O3N5A/pub?embedded=true', 'https://docs.google.com/document/d/e/2PACX-1vRUAYXta2inKR9Bbt0qXUKbEKECvWECe2hdmywIMGQa9NAsomuzfOAcxxY58kMi_w/pub?embedded=true', 'https://docs.google.com/document/d/e/2PACX-1vQn1azhPX1arpgQG-IH5TVwnc4rjUqA9q67vzxwKtY2LQ0ZIzV_3uTHzBFLmOvvgA/pub?embedded=true', 'https://docs.google.com/document/d/e/2PACX-1vSNHCs7DijNKW6zsycf3Mv5tbNUygrGaMbkJmoIKEANwrtvPEFG4jjmv-_X2Ds9XQ/pub?embedded=true', 'Approved', '2022-10-27', '0', 'PENDING', '128', NULL, 'AGREE', NULL, NULL, '2022-11-30 07:55:13', '2022-11-30 08:35:18'),
(11, 11, NULL, NULL, NULL, NULL, NULL, NULL, 'Under-Development', NULL, '0', 'PENDING', 'NOT YET, SET', NULL, NULL, NULL, NULL, '2022-12-14 07:55:46', '2022-12-14 07:55:46'),
(12, 12, NULL, NULL, NULL, NULL, NULL, NULL, 'Under-Development', NULL, '0', 'PENDING', 'NOT YET, SET', NULL, NULL, NULL, NULL, '2022-12-14 07:48:10', '2022-12-14 07:48:10'),
(13, 13, NULL, NULL, NULL, NULL, NULL, NULL, 'Under-Development', NULL, '0', 'PENDING', 'NOT YET, SET', NULL, NULL, NULL, NULL, '2023-01-02 03:11:11', '2023-01-02 03:11:11'),
(14, 14, NULL, NULL, NULL, NULL, NULL, NULL, 'Under-Development', NULL, '0', 'PENDING', 'NOT YET, SET', '1678250891.Titan-Trading-Revisions-Updated.pdf', NULL, NULL, NULL, '2022-12-14 07:48:20', '2023-03-07 20:48:11'),
(15, 15, NULL, NULL, NULL, NULL, NULL, NULL, 'Under-Development', NULL, '0', 'PENDING', 'NOT YET, SET', NULL, NULL, NULL, NULL, '2022-12-14 06:09:32', '2022-12-14 06:09:32'),
(16, 16, NULL, NULL, NULL, NULL, NULL, NULL, 'Under-Development', NULL, '0', 'PENDING', 'NOT YET, SET', NULL, NULL, NULL, NULL, '2023-01-02 03:09:31', '2023-01-02 03:09:31'),
(17, 17, NULL, NULL, NULL, NULL, NULL, NULL, 'Under-Development', NULL, '0', 'PENDING', 'NOT YET, SET', NULL, NULL, NULL, NULL, '2023-01-02 03:09:07', '2023-01-02 03:09:07'),
(18, 18, NULL, NULL, NULL, NULL, NULL, NULL, 'Under-Development', NULL, '0', 'PENDING', 'NOT YET, SET', NULL, NULL, NULL, NULL, '2022-12-14 02:21:33', '2022-12-14 02:21:33'),
(20, 20, NULL, NULL, NULL, NULL, NULL, NULL, 'Under-Development', NULL, '0', 'PENDING', 'NOT YET, SET', NULL, NULL, NULL, NULL, '2022-12-14 07:16:19', '2022-12-14 07:16:19'),
(21, 21, NULL, NULL, NULL, NULL, NULL, NULL, 'Under-Development', NULL, '0', 'PENDING', 'NOT YET, SET', NULL, NULL, NULL, NULL, '2023-01-08 22:23:17', '2023-01-08 22:23:17'),
(39, 39, NULL, NULL, NULL, NULL, NULL, NULL, 'Under-Development', NULL, '0', 'PENDING', 'NOT YET, SET', NULL, NULL, NULL, NULL, '2023-03-07 18:21:57', '2023-03-07 18:21:57'),
(46, 46, NULL, NULL, NULL, NULL, NULL, NULL, 'Under-Development', NULL, '0', 'PENDING', 'NOT YET, SET', NULL, NULL, NULL, NULL, '2023-03-07 23:43:10', '2023-03-07 23:43:10');

-- --------------------------------------------------------

--
-- Table structure for table `capstone3s`
--

CREATE TABLE `capstone3s` (
  `id` int(10) UNSIGNED NOT NULL,
  `capstone_id` int(10) UNSIGNED NOT NULL,
  `final_docu` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `proto_minutes` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `proto_matrix` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ppt` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `software_demo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gcash_payment` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `acceptance_ss` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `githublink` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `final_date` date DEFAULT NULL,
  `xf1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `xf2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `xf3` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `minutes1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `xf4` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `xf5` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `xf6` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `capstone3s`
--

INSERT INTO `capstone3s` (`id`, `capstone_id`, `final_docu`, `proto_minutes`, `proto_matrix`, `ppt`, `software_demo`, `gcash_payment`, `acceptance_ss`, `githublink`, `status`, `final_date`, `xf1`, `xf2`, `xf3`, `minutes1`, `xf4`, `xf5`, `xf6`, `created_at`, `updated_at`) VALUES
(2, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Pre-Documentation', NULL, '0', 'PENDING', 'NOT YET, SET', NULL, NULL, NULL, NULL, '2022-11-30 07:55:13', '2022-11-30 07:55:13'),
(11, 11, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Pre-Documentation', NULL, '0', 'PENDING', 'NOT YET, SET', NULL, NULL, NULL, NULL, '2022-12-14 07:55:46', '2022-12-14 07:55:46'),
(12, 12, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Pre-Documentation', NULL, '0', 'PENDING', 'NOT YET, SET', NULL, NULL, NULL, NULL, '2022-12-14 07:48:10', '2022-12-14 07:48:10'),
(13, 13, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Pre-Documentation', NULL, '0', 'PENDING', 'NOT YET, SET', NULL, NULL, NULL, NULL, '2023-01-02 03:11:11', '2023-01-02 03:11:11'),
(14, 14, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Pre-Documentation', NULL, '0', 'PENDING', 'NOT YET, SET', NULL, NULL, NULL, NULL, '2022-12-14 07:48:20', '2022-12-14 07:48:20'),
(15, 15, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Pre-Documentation', NULL, '0', 'PENDING', 'NOT YET, SET', NULL, NULL, NULL, NULL, '2022-12-14 06:09:32', '2022-12-14 06:09:32'),
(16, 16, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Pre-Documentation', NULL, '0', 'PENDING', 'NOT YET, SET', NULL, NULL, NULL, NULL, '2023-01-02 03:09:31', '2023-01-02 03:09:31'),
(17, 17, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Pre-Documentation', NULL, '0', 'PENDING', 'NOT YET, SET', NULL, NULL, NULL, NULL, '2023-01-02 03:09:07', '2023-01-02 03:09:07'),
(18, 18, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Pre-Documentation', NULL, '0', 'PENDING', 'NOT YET, SET', NULL, NULL, NULL, NULL, '2022-12-14 02:21:33', '2022-12-14 02:21:33'),
(20, 20, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Pre-Documentation', NULL, '0', 'PENDING', 'NOT YET, SET', NULL, NULL, NULL, NULL, '2022-12-14 07:16:19', '2022-12-14 07:16:19'),
(21, 21, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Pre-Documentation', NULL, '0', 'PENDING', 'NOT YET, SET', NULL, NULL, NULL, NULL, '2023-01-08 22:23:17', '2023-01-08 22:23:17'),
(39, 39, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Pre-Documentation', NULL, '0', 'PENDING', 'NOT YET, SET', NULL, NULL, NULL, NULL, '2023-03-07 18:21:57', '2023-03-07 18:21:57'),
(46, 46, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Pre-Documentation', NULL, '0', 'PENDING', 'NOT YET, SET', NULL, NULL, NULL, NULL, '2023-03-07 23:43:10', '2023-03-07 23:43:10');

-- --------------------------------------------------------

--
-- Table structure for table `capstonedashboards`
--

CREATE TABLE `capstonedashboards` (
  `id` int(10) UNSIGNED NOT NULL,
  `instructor1` int(11) DEFAULT NULL,
  `instructor2` int(11) DEFAULT NULL,
  `instructor3` int(11) DEFAULT NULL,
  `panelist` int(11) DEFAULT NULL,
  `students` int(11) DEFAULT NULL,
  `adviser` int(11) DEFAULT NULL,
  `co_adviser` int(11) DEFAULT NULL,
  `archiver` int(11) DEFAULT NULL,
  `secretary` int(11) DEFAULT NULL,
  `under_develop` int(11) DEFAULT NULL,
  `deploy` int(11) DEFAULT NULL,
  `unimplemented` int(11) DEFAULT NULL,
  `no_group1` int(11) DEFAULT NULL,
  `no_propose_def` int(11) DEFAULT NULL,
  `under_revision_1` int(11) DEFAULT NULL,
  `approved_panels_1` int(11) DEFAULT NULL,
  `no_group2` int(11) DEFAULT NULL,
  `no_prototype_def` int(11) DEFAULT NULL,
  `under_revision_2` int(11) DEFAULT NULL,
  `approved_panels_2` int(11) DEFAULT NULL,
  `no_group3` int(11) DEFAULT NULL,
  `no_final_def` int(11) DEFAULT NULL,
  `under_revision_3` int(11) DEFAULT NULL,
  `approved_panels_3` int(11) DEFAULT NULL,
  `xf1` int(11) DEFAULT NULL,
  `xf2` int(11) DEFAULT NULL,
  `xf3` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `xf4` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `capstonedashboards`
--

INSERT INTO `capstonedashboards` (`id`, `instructor1`, `instructor2`, `instructor3`, `panelist`, `students`, `adviser`, `co_adviser`, `archiver`, `secretary`, `under_develop`, `deploy`, `unimplemented`, `no_group1`, `no_propose_def`, `under_revision_1`, `approved_panels_1`, `no_group2`, `no_prototype_def`, `under_revision_2`, `approved_panels_2`, `no_group3`, `no_final_def`, `under_revision_3`, `approved_panels_3`, `xf1`, `xf2`, `xf3`, `xf4`, `created_at`, `updated_at`) VALUES
(1, 24, 0, 0, 24, 16, 24, 0, 1, 24, 3, 7, 3, 3, 3, 0, 0, 3, 3, 0, 0, 3, 3, 0, 0, 0, 0, 'data', 'data', '2022-11-28 04:17:52', '2023-03-17 01:56:26');

-- --------------------------------------------------------

--
-- Table structure for table `capstones`
--

CREATE TABLE `capstones` (
  `id` int(10) UNSIGNED NOT NULL,
  `groupname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abstract` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `start_date` date DEFAULT NULL,
  `xf1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `xf2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `xf3` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `xf4` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `xf5` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `xf6` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `xf7` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `xf8` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `capstones`
--

INSERT INTO `capstones` (`id`, `groupname`, `title`, `abstract`, `start_date`, `xf1`, `xf2`, `xf3`, `xf4`, `xf5`, `name`, `path`, `xf6`, `xf7`, `xf8`, `created_at`, `updated_at`) VALUES
(2, 'BukSU', 'BUKSU CAPSTONE ARCHIVING MANAGEMENT SYSTEM', 'This study aims to develop and design an online web-based Archiving Management System of capstone projects for BukSU IT department which serves as a solution to the users in order to avoid the repetition of proposals and analyze any gaps in their capstone projects. The system enables the user to digitize the capstone project in the BukSU IT department by using Optical Character Recognition technology. It also captures documents in each phase of the study. The system minimizes the time spent scanning the documents by using OCR rather than manual input. In addition, the system will be used to monitor and maintain the records of all capstone projects for Information Technology graduate and undergraduate students at Bukidnon State University. In addition to the following: To the teachers. This study helps the teachers of Bukidnon State University (BukSU) have a reference when suggesting new ideas for the students’ project proposals. To the students: This study provides BukSU students with a reference on previous projects that have already been created. This also helps them acquire the specific documents that they need without visiting the library. The Modified Waterfall Process Model was used to develop the system. The front end is the gate for developing the system, and the proponent used Vue.js 3, Bootstrap 5, CSS, and HTML.  And for the back-end the proponents used Laravel version 9 a PHP framework for software development mainly PHP version 8.1.2 And mariaDB version 10.4.22 was used as a database for storing data. Lastly, testing has been conducted to find errors and make suggestions. Then proceeded with the operations in order for the system to be fully approved and ready for production.\r\nKeywords: Web-based Archiving Management System, Optical Character Recognition (OCR), capstone progress monitoring, digitizing the physical documents, Modified Waterfall Process Model, Topic Suggestion, Capstone Rating.', NULL, '4th year', 'UNDER DEVELOPMENT', '2021 - 2023', 'Information Technology Department', '1671033720.BUKSU CAPSTONE ARCHIVING MANAGEMENT SYSTEM_MANUSCRIPT.pdf', 'AGREE', NULL, '17', NULL, NULL, '2022-11-30 06:51:27', '2023-01-02 03:13:00'),
(11, 'INFOTRUCK', 'INFOTRUCK: AN E-LOGISTICS TRUCKING FINDER WITH SEARCH\r\nOPTIMIZATION', 'ABSTRACT\r\n\r\nPeople are more into delivery vehicles like trucks carrying various things may\r\nt be big or small and near or far. Transportation has a large impact on a comparny\r\nofitability. There are several problems identified when using the manual system in\r\nrucking transactions. Problems existing in this business such as overdue and inaccurate\r\nnformation, inadequate services, and high product damage rates. The current trucking\r\n\r\nm has redundan vhere data cause by the manual system which uses paper to\r\nfill the information. Data is also not being kept in a secure location. Information lost is\r\ncommon by using a manual system. For the solution of the problem, InfoTruck is\r\ndeveloped to manage the operation of the transportation in a matter of creating\r\ntransaction process. Data will be stored in a database. To develop this web-application\r\nRapid Application Development (RAD) model had been chosen as a methodology\r\nwhich outlined the required functionalities of the system.To evaluate the system, it\r\ncould be calculated all of the average namely usability, user interface, functionality\r\nand performance to know whether the system is acceptable or not acceptable. After the\r\nuccessful evaluation (see table 4.15) the system is acceptable. InfoTruck is a web-\r\nbased application system that can help the owner to publish their business and increase\r\nprofits, while the customers do not struggle to search trucking services to the nearest\r\narea\r\nKeywords: Transportation, Trucking System, Web-Application, RAD', NULL, 'Graduated', 'DEPLOYED', '2018 - 2019', 'null', '1673407948.FLOW-CHART.pdf', 'AGREE', NULL, '17', NULL, NULL, '2022-12-13 23:58:54', '2023-01-10 19:32:28'),
(12, 'BUKSU VIRTUAL TOUR', 'BUKSU VIRTUAL TOUR', 'nullVirtual tours have been invented for the past 52 years and yet its innovation is\r\nstarting to begin. Universities, Institutions, and other commercialize companies who\r\nhave large areas had stick their guidance with a primitive way of guiding their guests\r\nor students by such old maps. This study aims to develop BukSU Virtual Tours to guide\r\ntude! guests, tourist on where they want to go, be it anywhere or everywhere within\r\nt npus setting. This system f es on the areas of BukSU with the main colleges\r\nand the most frequer ted areas. The itself system would bring BukSU awareness\r\nnd its existence for not only locally, but internationally. Because this is the next step\r\nr changing the future of our Institution to a modernized and futuristic society\r\nWith the results of the agile method, the researchers understood the conceptual\r\nframework of virtual tours and its high technological based. As well as the direct results\r\nof the panoramic images that shows the environment of the university campus. As a\r\nconclusion, the system has met its stakeholders’ requirements as verified and validated\r\nby certificated approvals. The system was also endorsed by the Accrediting Agency of\r\nChartered Colleges and Universities in the Philippines (AACCUP) division for\r\nenhancing the locator map level, considering that the system surpasses the level of\r\nrequirements. There was a number of recommendations that was presented towards the\r\nresearchers. An example, was that the system should allow an admin to enable a simple\r\ncditing feature that does not require for any employee to understand the complex\r\nalgorithm.\r\n\r\nKeywords: Virtual, Virtual Tour, Agile Method, Locator Map, Complex Algorithm', NULL, 'Graduated', 'DEPLOYED', '2018 - 2019', 'null', NULL, 'AGREE', NULL, '89', NULL, NULL, '2022-12-14 00:12:28', '2023-01-02 03:11:44'),
(13, 'RESEARCH RECORD\r\nMANAGEMENT SYSTEM', 'INFORMATION TECHNOLOGY DEPARTMENT\r\nBUKIDNON STATE UNIVERSITY RESEARCH RECORD\r\nMANAGEMENT SYSTEM', 'nullBukidnon State University Research Record Management System\r\nABSTRACT\r\n\r\nMost students in every universities and college come in a point\r\nto come up with a research study as requirements to their degree. As time\r\npass by, tracking and managing those files and data becomes an issue. At\r\nthe same time, real-time collaboration between faculty researchers and\r\nResearch Unit in finding research documents status, research created\r\ndocuments and research comments should be implemented. The purpose\r\nof this study is to identify the best and suitable methodology, components\r\nand algorithm that will aid the problem. Also, to produce a record\r\nmanagement system for researches made by the students and the faculty\r\nof Bukidnon State University (BukSU) with real-time collaboration tools\r\nbetween faculty and the Research Unit. Bukidnon State University\r\nResearch Record Management System was developed to address those\r\nproblems. The waterfall SDLC model was used to develop the system. The\r\nsystem was implemented on Web Application using PHP as the back-end\r\nlanguage, HTML and JQuery as the front-end language, FTP server as\r\ndocument storage and MySQL database as data s d\r\nsystem was ;,a,‘*u\'t‘. through hand 2di b et\r\nusers. A nﬁ\\ of 30 res;\r\nevaluated the syste\r\nReliability, aoverall acceptability of the system which shows that the Bukidnon State\r\nUniversity Research Record Management System is highly accepted by its\r\nrespondents.\r\nKeywords: Research Record Management System, Document Tracking,\r\nReal-Time Collaboration Tools', NULL, 'Graduated', 'UNIMPLEMENTED', '2018 - 2019', 'null', NULL, 'AGREE', NULL, '19', NULL, NULL, '2022-12-14 00:16:37', '2023-01-02 03:11:20'),
(14, 'FARM BUDDY', 'FARM BUDDY: A Farm Crop Marketing System', 'Farming plays an important role in the Philippines, over the last decade it\r\nhelped farmers to sustain their needs. But because of modernization farmers had\r\nto adjust and compete with the large numbers of competitors. Today they depend\r\nupon local traders and middleman for a disposal of their farm produce which is\r\nsold at a throw away price. This study aims to develop FarmBuddy: A Farm\r\nCrop Marketing System that will support farmers for an easy and faster\r\ncommunication with various potential buyers, with the three features Advanced\r\nCrop Reservation System, User and Crop Searching and Crop Mapping (using\r\nGoogle maps API). An interview to various farmers and farm related business\r\nentrepreneurs was conducted here in Malaybalay during the requirements\r\nanalysis phase. In the development process an Agile SDLC model was used. As\r\na result, 80% of the evaluator’s response confirmed that they agreed vo the\r\nfunctionality and usability of the system. Overall, the results indicate that there\r\nis an enormous need for an application which will provide more opportunities for\r\nfarmers and also the buyers.\r\nKeywords: Farm Buddy, Ionic, Firebase, Agile methodology', NULL, 'Graduated', 'DEPLOYED', '2022 - 2022', 'BukSU', NULL, 'AGREE', NULL, '128', NULL, NULL, '2022-12-14 00:33:59', '2023-01-02 03:10:56'),
(15, 'Haus Malibu', 'A Static 3D Modeling using Sketch Up for\r\nHaus Malibu Hotel with Online Reservation\r\nSystem', 'nullThis study aims to develop and design an on-line hotel reservation and\r\nmanagement system, including room and conference hall reservation with 3D\r\nmodel for the Haus Malibu of Malaybalay City, Bukidnon. It presents a user-\r\nfriendly feature that is easy to use by the receptionist on the online reservation\r\nsystem, or the online clients. Likewise, it will provide supplement material in\r\ntheir front work area operation course. The researchers used the Prototyping,\r\nSketchup for modeling and Laravel Web Devel?a_n;%t as the programming\r\nlanguage. The developed software served as a tooléfg:r{ti‘he hotel owner and front\r\ndesk of Haus Malibu Hotel to operate an online hotel reservation system easier.\r\nBased on the tabulated response of the responc :;;zzz;“ \"’ielaped software\r\nwas an effective aid for the users in managing the basic operations of hotel\r\nreservation system to their guest o ecurity i\r\nensure protection and mon ela o\r\nKeywords\r\nOnline reservation, conference hall reservation, room reservation, haus malibu, online reservation system.', NULL, 'Graduated', 'DEPLOYED', '2016 - 2017', 'null', NULL, 'AGREE', NULL, '88', NULL, NULL, '2022-12-14 00:48:36', '2023-01-02 03:10:08'),
(16, 'Man for the Job', 'Man for the Job: A web\r\napplication using lonic Framework for local laborers in Malaybalay City, Bukidnon', 'Unemployment is one of the major economic problems nowadays. It needs a solution to\r\nreduce unemployment in our economy. With the use of technology, the researcher can help to solve this problem especially to those people who are willing to have a job. This study aims to develop a web application “Man for the Job” to increase the employment of the Local Laborers  in Malaybalay City. This study will help those laborers of Malaybalay City to support their  families and this will give them huge opportunities to get a job. This will be the most ideal\r\n approach to find the right man for the job you need. The researchers make utilize of existing\r\nliterary works to justify their perceptions and thought for this study. In order to achieve this\r\nstudy, the researchers use System Development Life Cycle (SDLC) and lonic Framework to\r\nmeet the criteria of internal consistency and eﬁeetivmaagd the development of the\r\napplication. Thus, the researcher conducted an evaluation and it was tested in terms of response\r\ntime, usability, performance and its functionality. \r\n\r\nKeywords: Man for the Job', NULL, 'Graduated', 'DEPLOYED', '2022 - 2022', 'null', NULL, 'AGREE', NULL, '86', NULL, NULL, '2022-12-14 01:13:05', '2023-01-02 03:09:39'),
(17, 'HOTEL RESERVATION', 'ONLINE HOTEL RESERVATION AND MANAGEMENT SYSTEM\r\nFOR BALAI HA BUKSU', 'This study is about the conceptualization of an online reservation system for\r\n\r\nRalai Ha BukSU. It aims to help the hotel to enhance their reservation process and\r\nmanagement of room inventories. Thus, the system is set to develop a more\r\nconvenient, reliable, accurate and a better system for managing the hotel’s operation.\r\nThe researchers used the Modified Waterfall Methodology during the development\r\nphase. This ensures the researchers to build the system very carefully. The first phase\r\nstarts with the requirement analysis in which data gathering comes to motion,\r\nfollowed by the specification and design, implementation, testing, deployment and\r\nmaintenance. The survey results attest that the systemﬁlnctmns efficiently, usably and reliably. Thus, the study proves that the w%‘néﬁ,f improve the hotel’s operation especially in online reservation and mmagw;;m inventories.\r\n\r\n\r\n Keywords: automation, Balai Ha BukSU, hotel, inventory, online reservation', NULL, 'Graduated', 'DEPLOYED', '2018 - 2019', 'null', NULL, 'AGREE', NULL, '20', NULL, NULL, '2022-12-14 01:16:49', '2023-01-02 03:09:16'),
(18, 'QUICK RESPONSE', 'QUICK RESPONSE CODE MOBILE APPLICATION FOR\r\nSUBCONTRACTOR', 'nullConstruction firms build infrastructures with strong foundations and safety\r\n\r\nmeasures which is their essence. Managing manual processes from attendance and\r\ncollecting the daily time report for every Timekeeper is very inefficient. Furthermore,\r\nSubcontractor would need Construction Workers attendance and they are obliged to\r\ngive an accurate attendance to the Construction Workers. As results, the researchers\r\nproposed to develop a system, namely SubConic System it is composed of a mobile\r\napplication that is mainly used by the Timekeeper and a web-based application that is\r\nalso used by the Subcontractor. This application will digitize its manual processes in\r\norder to give accuracy and improve its work capability through time efficiency. The\r\nstudy used Waterfall methodology in order to develop the desired system. This study\r\nwas conducted at 5G Subcontractor. Success in developing a system will not define\r\nour accomplishments. Thus, we did a survey to determine if we truly meet the\r\nobjectives of the study. The survey was done in a project at Malaybalay City,\r\n\r\nBukidnon. Based from the result of this study, the system had a very high success rate\r\nin functionality, reliability and usability. Therefore, the system effectively automates\r\nthe attendance generation of the workers and it generates an accurate DTR. However,\r\nthe system can be improved by the future researchers by adding more features,\r\nenhancing the overa. he system and generating the salary report of the construction\r\nconstruction workers.\r\n\r\nKeywords: OR Code, Automated Attendance, Mobile Timekeeping, Mobile Attendance Monitoring', NULL, 'Graduated', 'UNIMPLEMENTED', '2018 - 2019', 'null', NULL, 'AGREE', NULL, '21', NULL, NULL, '2022-12-14 01:56:49', '2023-01-02 03:08:44'),
(20, 'Archiving', 'Archiving Management', 'This study presents the development of an online web-based Archiving Management System of capstone projects for BukSU IT department which serves as a solution to the users in order to avoid the repetition of proposals and analyze any gaps in their capstone projects. The system enables the user to digitize the capstone project in the BukSU IT department by using Optical Character Recognition technology. It also captures documents in each phase of the study. The system will be used to monitor and maintain the records of all capstone projects for Information Technology graduate and undergraduate students at Bukidnon State University. In addition to the following: To the teachers. This study helps the teachers of Bukidnon State University (BukSU) IT Department have a reference when suggesting new ideas for the students’ project proposals. To the students: This study provides BukSU IT students with a reference on previous projects that have already been created. This also helps them acquire the specific documents that they need without visiting the library. The Modified Waterfall Process Model was used to develop the system. The front end is the gate for developing the system, and the proponent used Vue.js 3, Bootstrap 5, CSS, and HTML. And for the back-end the proponents used Laravel version 9 a PHP framework for software development mainly PHP version 8.1.2 And mariaDB version 10.4.22 was used as a database for storing data. Lastly, testing has been conducted to find errors and make suggestions. Then proceeded with the operations in order for the system to be fully approved and ready for production. The evaluation of this system consisted of twenty one(21) questions based on the ISO/IEC 25010. The testing findings\' grand mean is 3.8978, indicating that the web-app is scored positively overall. The respondents are satisfied with the application, according to the grand mean of the testing results Keywords: Web-based Archiving Management System, Optical Character Recognition (OCR), Capstone Project, Capstone Progress Monitoring, Digitizing Physical Documents, Modified Waterfall Process Model, Topic Suggestion, Capstone Rating.', NULL, '3rd year', 'UNDER DEVELOPMENT', '2021 - 2022', 'null', NULL, 'AGREE', NULL, '17', NULL, NULL, '2022-12-14 07:16:07', '2023-01-02 03:07:15'),
(21, 'Virtual tour', 'Virtual tour', 'Virtual tours have been invented for the past 52 years and yet its innovation is\r\nstarting to begin. Universities, Institutions, and other commercialize companies who\r\nhave large areas had stick their guidance with a primitive way of guiding their guests\r\nor students by such old maps. This study aims to develop BukSU Virtual Tours to guide\r\nstudents, guests, tourist on where they want to go, be it anywhere or everywhere within\r\nthe campus setting. This system focuses on the areas of BukSU with the main colleges\r\nand the most frequent visited areas. The itself system would bring BukSU awareness\r\nand its existence for not only locally, but internationally. Because this is the next step\r\nof ever changing the future of our Institution to a modernized and futuristic society.\r\nWith the results of the agile method, the researchers understood the conceptual\r\nframework of virtual tours and its high technological based. As well as the direct results\r\nof the panoramic images that shows the environment of the university campus. As a\r\nconclusion, the system has met its stakeholders’ requirements as verified and validated\r\nby certificated approvals. The system was also endorsed by the Accrediting Agency of\r\nChartered Colleges and Universities in the Philippines (AACCUP) division for\r\nenhancing the locator map level, considering that the system surpasses the level of\r\nrequirements. There was a number of recommendations that was presented towards the\r\nresearchers. An example, was that the system should allow an admin to enable a simple\r\ncditing feature that does not require for any employee to understand the complex\r\nalgorithm.\r\nKeywords: Virtual, Virtual Tour, Agile Method, Locator Map, Complex Algorithm M\r\n=1\r\nP Do', NULL, 'Graduated', 'UNIMPLEMENTED', '2018 - 2019', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-01-08 22:23:09', '2023-01-08 22:23:09'),
(39, 'InfoTruck', 'INFOTRUCT: AN E-LOGISTICS TRUCKING FINDER WITH SEARCH OPTIMIZATION', 'ABSTRACT\r\n\r\nPeople are more into delivery vehicles like trucks carrying various things may\r\nit be big or small and near or far. Transportation has a large impact on a company’s\r\nprofitability. There are several problems identified when using the manual system in\r\ntrucking transactions. Problems existing in this business such as overdue and inaccurate\r\ninformation, inadequate services, and high product damage rates. The current trucking\r\nsystem has redundancy, where data cause by the manual system which uses paper to\r\nfill the information. Data is also not being kept in a secure location. Information lost is\r\ncommon by using a manual system. For the solution of the problem, InfoTruck is\r\ndeveloped to manage the operation of the transportation in a matter of creating\r\ntransaction process. Data will be stored in a database. To develop this web-application,\r\nRapid Application Development (RAD) model had been chosen as a methodology,\r\nwhich outlined the required functionalities of the system.To evaluate the system, it\r\ncould be calculated all of the average namely usability, user interface, functionality,\r\nand performance to know whether the system is acceptable or not acceptable. After the\r\nsuccessful evaluation (see table 4.15) the system is acceptable. InfoTruck is a web-\r\nbased application system that can help the owner to publish their business and increase\r\nprofits, while the customers do not struggle to search trucking services to the nearest\r\narea.\r\nKeywords: Transportation, Trucking System, Web-Application, RAD', NULL, 'Graduated', 'DEPLOYED', '2018 - 2019', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-07 18:21:42', '2023-03-07 18:21:42'),
(46, 'not set', 'screenshot monitoring for employe', 'screenshot monitoring for employeescreenshot monitoring for employeescreenshot monitoring for employeescreenshot monitoring for employeescreenshot monitoring for employeescreenshot monitoring for employeescreenshot monitoring for employeescreenshot monitoring for employee', '2023-03-08', 'not set', 'UNDER DEVELOPMENT', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-07 23:43:05', '2023-03-07 23:43:05');

-- --------------------------------------------------------

--
-- Table structure for table `capstone_user`
--

CREATE TABLE `capstone_user` (
  `capstone_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `role_person` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `capstone_user`
--

INSERT INTO `capstone_user` (`capstone_id`, `user_id`, `role_person`, `created_at`, `updated_at`) VALUES
(2, 3, 'student1', NULL, NULL),
(2, 5, 'students2', NULL, NULL),
(2, 4, 'students3', NULL, NULL),
(2, 6, 'students4', NULL, NULL),
(2, 89, 'panels1', NULL, NULL),
(2, 128, 'panels2', NULL, NULL),
(2, 16, 'panels3', NULL, NULL),
(2, 17, 'adviser', NULL, NULL),
(2, 20, 'coAdviser', NULL, NULL),
(2, 15, 'secretarys', NULL, NULL),
(11, 3, 'student1', NULL, NULL),
(11, 4, 'students2', NULL, NULL),
(11, 5, 'students3', NULL, NULL),
(11, 6, 'students4', NULL, NULL),
(11, 15, 'panels1', NULL, NULL),
(11, 16, 'panels2', NULL, NULL),
(11, 17, 'panels3', NULL, NULL),
(11, 17, 'adviser', NULL, NULL),
(11, 19, 'coAdviser', NULL, NULL),
(11, 83, 'secretarys', NULL, NULL),
(12, 3, 'student1', NULL, NULL),
(12, 4, 'students2', NULL, NULL),
(12, 5, 'students3', NULL, NULL),
(12, 6, 'students4', NULL, NULL),
(12, 128, 'panels1', NULL, NULL),
(12, 121, 'panels2', NULL, NULL),
(12, 100, 'panels3', NULL, NULL),
(12, 89, 'adviser', NULL, NULL),
(12, 90, 'coAdviser', NULL, NULL),
(12, 99, 'secretarys', NULL, NULL),
(13, 3, 'student1', NULL, NULL),
(13, 4, 'students2', NULL, NULL),
(13, 5, 'students3', NULL, NULL),
(13, 6, 'students4', NULL, NULL),
(13, 15, 'panels1', NULL, NULL),
(13, 16, 'panels2', NULL, NULL),
(13, 17, 'panels3', NULL, NULL),
(13, 19, 'adviser', NULL, NULL),
(13, 20, 'coAdviser', NULL, NULL),
(13, 18, 'secretarys', NULL, NULL),
(14, 3, 'student1', NULL, NULL),
(14, 4, 'students2', NULL, NULL),
(14, 5, 'students3', NULL, NULL),
(14, 111, 'students4', NULL, NULL),
(14, 15, 'panels1', NULL, NULL),
(14, 16, 'panels2', NULL, NULL),
(14, 18, 'panels3', NULL, NULL),
(14, 128, 'adviser', NULL, NULL),
(14, 121, 'coAdviser', NULL, NULL),
(14, 17, 'secretarys', NULL, NULL),
(15, 3, 'student1', NULL, NULL),
(15, 4, 'students2', NULL, NULL),
(15, 5, 'students3', NULL, NULL),
(15, 6, 'students4', NULL, NULL),
(15, 15, 'panels1', NULL, NULL),
(15, 16, 'panels2', NULL, NULL),
(15, 17, 'panels3', NULL, NULL),
(15, 88, 'adviser', NULL, NULL),
(15, 84, 'coAdviser', NULL, NULL),
(15, 18, 'secretarys', NULL, NULL),
(16, 3, 'student1', NULL, NULL),
(16, 4, 'students2', NULL, NULL),
(16, 5, 'students3', NULL, NULL),
(16, 6, 'students4', NULL, NULL),
(16, 15, 'panels1', NULL, NULL),
(16, 16, 'panels2', NULL, NULL),
(16, 17, 'panels3', NULL, NULL),
(16, 86, 'adviser', NULL, NULL),
(16, 91, 'coAdviser', NULL, NULL),
(16, 18, 'secretarys', NULL, NULL),
(17, 3, 'student1', NULL, NULL),
(17, 4, 'students2', NULL, NULL),
(17, 5, 'students3', NULL, NULL),
(17, 6, 'students4', NULL, NULL),
(17, 15, 'panels1', NULL, NULL),
(17, 16, 'panels2', NULL, NULL),
(17, 17, 'panels3', NULL, NULL),
(17, 20, 'adviser', NULL, NULL),
(17, 21, 'coAdviser', NULL, NULL),
(17, 18, 'secretarys', NULL, NULL),
(18, 3, 'student1', NULL, NULL),
(18, 4, 'students2', NULL, NULL),
(18, 5, 'students3', NULL, NULL),
(18, 6, 'students4', NULL, NULL),
(18, 15, 'panels1', NULL, NULL),
(18, 16, 'panels2', NULL, NULL),
(18, 17, 'panels3', NULL, NULL),
(18, 21, 'adviser', NULL, NULL),
(18, 83, 'coAdviser', NULL, NULL),
(18, 18, 'secretarys', NULL, NULL),
(20, 3, 'students2', NULL, NULL),
(20, 5, 'students3', NULL, NULL),
(20, 6, 'students4', NULL, NULL),
(20, 16, 'panels1', NULL, NULL),
(20, 18, 'panels2', NULL, NULL),
(20, 128, 'panels3', NULL, NULL),
(20, 17, 'adviser', NULL, NULL),
(20, 20, 'coAdviser', NULL, NULL),
(20, 94, 'secretarys', NULL, NULL),
(21, 3, 'student1', NULL, NULL),
(21, 4, 'students2', NULL, NULL),
(21, 5, 'students3', NULL, NULL),
(21, 111, 'students4', NULL, NULL),
(21, 15, 'panels1', NULL, NULL),
(21, 16, 'panels2', NULL, NULL),
(21, 17, 'panels3', NULL, NULL),
(21, 19, 'adviser', NULL, NULL),
(21, 89, 'coAdviser', NULL, NULL),
(21, 18, 'secretarys', NULL, NULL),
(39, 6, 'student1', NULL, NULL),
(39, 3, 'students2', NULL, NULL),
(39, 4, 'students3', NULL, NULL),
(39, 5, 'students4', NULL, NULL),
(39, 89, 'panels1', NULL, NULL),
(39, 88, 'panels2', NULL, NULL),
(39, 121, 'panels3', NULL, NULL),
(39, 17, 'adviser', NULL, NULL),
(39, 19, 'coAdviser', NULL, NULL),
(39, 94, 'secretarys', NULL, NULL),
(46, 165, 'student1', NULL, NULL),
(46, 168, 'students2', NULL, NULL),
(46, 168, 'students3', NULL, NULL),
(46, 168, 'students4', NULL, NULL),
(46, 167, 'panels1', NULL, NULL),
(46, 167, 'panels2', NULL, NULL),
(46, 167, 'panels3', NULL, NULL),
(46, 167, 'adviser', NULL, NULL),
(46, 167, 'coAdviser', NULL, NULL),
(46, 167, 'instructor', NULL, NULL),
(46, 167, 'secretarys', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `instructors`
--

CREATE TABLE `instructors` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `capstone_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `xf3` int(11) DEFAULT NULL,
  `xf4` int(11) DEFAULT NULL,
  `xf5` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `xf6` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(31, '2022_09_24_171247_create_caps1ratings_table', 2),
(50, '2022_10_03_174349_create_ocrstorages_table', 4),
(226, '2014_10_12_100000_create_password_resets_table', 5),
(227, '2019_08_19_000000_create_failed_jobs_table', 5),
(228, '2019_12_14_000001_create_personal_access_tokens_table', 5),
(229, '2022_04_26_141839_laratrust_setup_tables', 5),
(230, '2022_08_30_163542_create_capstones_table', 5),
(231, '2022_08_31_000000_create_users_table', 5),
(232, '2022_09_01_035745_create_capstone_user_table', 5),
(233, '2022_09_02_150018_create_capstone1s_table', 5),
(234, '2022_09_03_150034_create_capstone2s_table', 5),
(235, '2022_09_04_150049_create_capstone3s_table', 5),
(236, '2022_09_24_173832_create_caps2ratings_table', 5),
(237, '2022_09_24_173902_create_caps3ratings_table', 5),
(238, '2022_09_24_175600_create_caps1ratings_table', 5),
(239, '2022_09_29_035618_create_capstonedashboards_table', 5),
(240, '2022_10_04_033802_create_partialstorages_table', 5),
(241, '2022_10_22_163508_create_topics_table', 5),
(242, '2022_10_27_014907_create_instructors_table', 5),
(243, '2022_12_07_032115_create_audits_table', 6),
(244, '2022_12_23_040749_add_role_num_to_users', 7);

-- --------------------------------------------------------

--
-- Table structure for table `partialstorages`
--

CREATE TABLE `partialstorages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `ocr` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `xf1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `xf2` int(11) DEFAULT NULL,
  `xf3` int(11) DEFAULT NULL,
  `xf4` int(11) DEFAULT NULL,
  `xf5` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `xf6` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `partialstorages`
--

INSERT INTO `partialstorages` (`id`, `ocr`, `xf1`, `xf2`, `xf3`, `xf4`, `xf5`, `xf6`, `created_at`, `updated_at`) VALUES
(1, NULL, '', 0, 0, 0, '', '', '2022-11-28 04:17:52', '2023-03-30 23:10:32');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `display_name`, `description`, `created_at`, `updated_at`) VALUES
(1, 'users-create', 'Create Users', 'Create Users', '2022-11-28 04:17:51', '2022-11-28 04:17:51'),
(2, 'users-read', 'Read Users', 'Read Users', '2022-11-28 04:17:51', '2022-11-28 04:17:51'),
(3, 'users-update', 'Update Users', 'Update Users', '2022-11-28 04:17:51', '2022-11-28 04:17:51'),
(4, 'users-delete', 'Delete Users', 'Delete Users', '2022-11-28 04:17:51', '2022-11-28 04:17:51'),
(5, 'capstone-create', 'Create Capstone', 'Create Capstone', '2022-11-28 04:17:51', '2022-11-28 04:17:51'),
(6, 'capstone-read', 'Read Capstone', 'Read Capstone', '2022-11-28 04:17:51', '2022-11-28 04:17:51'),
(7, 'capstone-update', 'Update Capstone', 'Update Capstone', '2022-11-28 04:17:51', '2022-11-28 04:17:51'),
(8, 'capstone-delete', 'Delete Capstone', 'Delete Capstone', '2022-11-28 04:17:51', '2022-11-28 04:17:51');

-- --------------------------------------------------------

--
-- Table structure for table `permission_role`
--

CREATE TABLE `permission_role` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permission_role`
--

INSERT INTO `permission_role` (`permission_id`, `role_id`) VALUES
(1, 1),
(1, 2),
(1, 3),
(1, 4),
(1, 5),
(1, 6),
(1, 7),
(1, 8),
(2, 1),
(2, 2),
(2, 3),
(2, 4),
(2, 5),
(2, 6),
(2, 7),
(2, 8),
(3, 1),
(3, 2),
(3, 3),
(3, 4),
(3, 5),
(3, 6),
(3, 7),
(3, 8),
(4, 1),
(4, 6),
(5, 1),
(5, 2),
(5, 3),
(5, 4),
(5, 5),
(5, 6),
(5, 7),
(5, 8),
(6, 1),
(6, 2),
(6, 3),
(6, 4),
(6, 5),
(6, 6),
(6, 7),
(6, 8),
(7, 1),
(7, 2),
(7, 3),
(7, 4),
(7, 5),
(7, 6),
(7, 7),
(7, 8),
(8, 1),
(8, 2),
(8, 3),
(8, 4),
(8, 5),
(8, 6),
(8, 7),
(8, 8);

-- --------------------------------------------------------

--
-- Table structure for table `permission_user`
--

CREATE TABLE `permission_user` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `user_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `display_name`, `description`, `created_at`, `updated_at`) VALUES
(1, 'administrator', 'Administrator', 'Administrator', '2022-11-28 04:17:51', '2022-11-28 04:17:51'),
(2, 'adviser', 'Adviser', 'Adviser', '2022-11-28 04:17:51', '2022-11-28 04:17:51'),
(3, 'instructor', 'Instructor', 'Instructor', '2022-11-28 04:17:51', '2022-11-28 04:17:51'),
(4, 'panel', 'Panel', 'Panel', '2022-11-28 04:17:51', '2022-11-28 04:17:51'),
(5, 'secretary', 'Secretary', 'Secretary', '2022-11-28 04:17:51', '2022-11-28 04:17:51'),
(6, 'student', 'Student', 'Student', '2022-11-28 04:17:51', '2022-11-28 04:17:51'),
(7, 'archiver', 'Archiver', 'Archiver', '2022-11-28 04:17:51', '2022-11-28 04:17:51'),
(8, 'faculty', 'Faculty', 'Faculty', '2022-11-28 04:17:52', '2022-11-28 04:17:52');

-- --------------------------------------------------------

--
-- Table structure for table `role_user`
--

CREATE TABLE `role_user` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `user_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_user`
--

INSERT INTO `role_user` (`role_id`, `user_id`, `user_type`) VALUES
(1, 1, 'App\\Models\\User'),
(7, 2, 'App\\Models\\User'),
(6, 3, 'App\\Models\\User'),
(6, 4, 'App\\Models\\User'),
(6, 5, 'App\\Models\\User'),
(6, 6, 'App\\Models\\User'),
(2, 15, 'App\\Models\\User'),
(3, 15, 'App\\Models\\User'),
(4, 15, 'App\\Models\\User'),
(5, 15, 'App\\Models\\User'),
(8, 15, 'App\\Models\\User'),
(2, 16, 'App\\Models\\User'),
(3, 16, 'App\\Models\\User'),
(4, 16, 'App\\Models\\User'),
(5, 16, 'App\\Models\\User'),
(8, 16, 'App\\Models\\User'),
(2, 17, 'App\\Models\\User'),
(3, 17, 'App\\Models\\User'),
(4, 17, 'App\\Models\\User'),
(5, 17, 'App\\Models\\User'),
(8, 17, 'App\\Models\\User'),
(2, 18, 'App\\Models\\User'),
(3, 18, 'App\\Models\\User'),
(4, 18, 'App\\Models\\User'),
(5, 18, 'App\\Models\\User'),
(8, 18, 'App\\Models\\User'),
(2, 19, 'App\\Models\\User'),
(3, 19, 'App\\Models\\User'),
(4, 19, 'App\\Models\\User'),
(5, 19, 'App\\Models\\User'),
(8, 19, 'App\\Models\\User'),
(2, 20, 'App\\Models\\User'),
(3, 20, 'App\\Models\\User'),
(4, 20, 'App\\Models\\User'),
(5, 20, 'App\\Models\\User'),
(8, 20, 'App\\Models\\User'),
(2, 21, 'App\\Models\\User'),
(3, 21, 'App\\Models\\User'),
(4, 21, 'App\\Models\\User'),
(5, 21, 'App\\Models\\User'),
(8, 21, 'App\\Models\\User'),
(2, 83, 'App\\Models\\User'),
(3, 83, 'App\\Models\\User'),
(4, 83, 'App\\Models\\User'),
(5, 83, 'App\\Models\\User'),
(8, 83, 'App\\Models\\User'),
(2, 84, 'App\\Models\\User'),
(3, 84, 'App\\Models\\User'),
(4, 84, 'App\\Models\\User'),
(5, 84, 'App\\Models\\User'),
(8, 84, 'App\\Models\\User'),
(2, 86, 'App\\Models\\User'),
(3, 86, 'App\\Models\\User'),
(4, 86, 'App\\Models\\User'),
(5, 86, 'App\\Models\\User'),
(8, 86, 'App\\Models\\User'),
(2, 87, 'App\\Models\\User'),
(3, 87, 'App\\Models\\User'),
(4, 87, 'App\\Models\\User'),
(5, 87, 'App\\Models\\User'),
(8, 87, 'App\\Models\\User'),
(2, 88, 'App\\Models\\User'),
(3, 88, 'App\\Models\\User'),
(4, 88, 'App\\Models\\User'),
(5, 88, 'App\\Models\\User'),
(8, 88, 'App\\Models\\User'),
(2, 89, 'App\\Models\\User'),
(3, 89, 'App\\Models\\User'),
(4, 89, 'App\\Models\\User'),
(5, 89, 'App\\Models\\User'),
(8, 89, 'App\\Models\\User'),
(2, 90, 'App\\Models\\User'),
(3, 90, 'App\\Models\\User'),
(4, 90, 'App\\Models\\User'),
(5, 90, 'App\\Models\\User'),
(8, 90, 'App\\Models\\User'),
(2, 91, 'App\\Models\\User'),
(3, 91, 'App\\Models\\User'),
(4, 91, 'App\\Models\\User'),
(5, 91, 'App\\Models\\User'),
(8, 91, 'App\\Models\\User'),
(2, 92, 'App\\Models\\User'),
(3, 92, 'App\\Models\\User'),
(4, 92, 'App\\Models\\User'),
(5, 92, 'App\\Models\\User'),
(8, 92, 'App\\Models\\User'),
(2, 93, 'App\\Models\\User'),
(3, 93, 'App\\Models\\User'),
(4, 93, 'App\\Models\\User'),
(5, 93, 'App\\Models\\User'),
(8, 93, 'App\\Models\\User'),
(2, 94, 'App\\Models\\User'),
(3, 94, 'App\\Models\\User'),
(4, 94, 'App\\Models\\User'),
(5, 94, 'App\\Models\\User'),
(8, 94, 'App\\Models\\User'),
(2, 98, 'App\\Models\\User'),
(3, 98, 'App\\Models\\User'),
(4, 98, 'App\\Models\\User'),
(5, 98, 'App\\Models\\User'),
(8, 98, 'App\\Models\\User'),
(2, 99, 'App\\Models\\User'),
(3, 99, 'App\\Models\\User'),
(4, 99, 'App\\Models\\User'),
(5, 99, 'App\\Models\\User'),
(8, 99, 'App\\Models\\User'),
(2, 100, 'App\\Models\\User'),
(3, 100, 'App\\Models\\User'),
(4, 100, 'App\\Models\\User'),
(5, 100, 'App\\Models\\User'),
(8, 100, 'App\\Models\\User'),
(6, 111, 'App\\Models\\User'),
(6, 112, 'App\\Models\\User'),
(6, 113, 'App\\Models\\User'),
(6, 114, 'App\\Models\\User'),
(6, 115, 'App\\Models\\User'),
(6, 116, 'App\\Models\\User'),
(6, 117, 'App\\Models\\User'),
(6, 119, 'App\\Models\\User'),
(6, 120, 'App\\Models\\User'),
(2, 121, 'App\\Models\\User'),
(3, 121, 'App\\Models\\User'),
(4, 121, 'App\\Models\\User'),
(5, 121, 'App\\Models\\User'),
(8, 121, 'App\\Models\\User'),
(2, 128, 'App\\Models\\User'),
(3, 128, 'App\\Models\\User'),
(4, 128, 'App\\Models\\User'),
(5, 128, 'App\\Models\\User'),
(8, 128, 'App\\Models\\User'),
(8, 136, 'App\\Models\\User'),
(6, 165, 'App\\Models\\User'),
(2, 167, 'App\\Models\\User'),
(3, 167, 'App\\Models\\User'),
(4, 167, 'App\\Models\\User'),
(5, 167, 'App\\Models\\User'),
(8, 167, 'App\\Models\\User'),
(6, 168, 'App\\Models\\User'),
(6, 169, 'App\\Models\\User');

-- --------------------------------------------------------

--
-- Table structure for table `topics`
--

CREATE TABLE `topics` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `abstract` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `client_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `client_location` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `client_company` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_upload` date DEFAULT NULL,
  `uploader_id` int(11) DEFAULT NULL,
  `group` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `xf1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `xf2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `xf3` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `xf4` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `xf5` int(11) DEFAULT NULL,
  `xf6` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `topics`
--

INSERT INTO `topics` (`id`, `title`, `abstract`, `client_name`, `client_location`, `client_company`, `date_upload`, `uploader_id`, `group`, `status`, `xf1`, `xf2`, `xf3`, `xf4`, `xf5`, `xf6`, `created_at`, `updated_at`) VALUES
(1, 'Machine Learning System', 'Machine Learning SystemMachine Learning SystemMachine Learning SystemMachine Learning SystemMachine Learning SystemMachine Learning SystemMachine Learning SystemMachine Learning SystemMachine Learning SystemMachine Learning SystemMachine Learning SystemMachine Learning SystemMachine Learning SystemMachine Learning SystemMachine Learning SystemMachine Learning SystemMachine Learning SystemMachine Learning SystemMachine Learning SystemMachine Learning SystemMachine Learning SystemMachine Learning SystemMachine Learning SystemMachine Learning SystemMachine Learning SystemMachine Learning SystemMachine Learning SystemMachine Learning SystemMachine Learning SystemMachine Learning SystemMachine Learning SystemMachine Learning SystemMachine Learning SystemMachine Learning SystemMachine Learning SystemMachine Learning SystemMachine Learning SystemMachine Learning SystemMachine Learning SystemMachine Learning SystemMachine Learning SystemMachine Learning SystemMachine Learning SystemMachine Learning SystemMachine Learning SystemMachine Learning SystemMachine Learning SystemMachine Learning SystemMachine Learning SystemMachine Learning SystemMachine Learning SystemMachine Learning SystemMachine Learning SystemMachine Learning SystemMachine Learning SystemMachine Learning SystemMachine Learning SystemMachine Learning SystemMachine Learning SystemMachine Learning SystemMachine Learning SystemMachine', 'Dems Elisarde', NULL, 'BukSU', NULL, 1, NULL, 'Taken', 'System for student.', NULL, NULL, NULL, NULL, NULL, '2022-12-01 03:37:54', '2022-12-04 23:31:54'),
(3, 'topic topic', 'topic topic topic topic topic topic topic topic topic topic topic topic topic topic topic topic topic topic topic topic topic topic topic topic topic topic', 'topic', NULL, 'topic', NULL, 1, NULL, 'Taken', 'topic', NULL, NULL, NULL, NULL, NULL, '2022-12-01 01:39:33', '2022-12-13 16:51:03'),
(4, 'BUKSU CAPSTONE INVENTORY', 'BUKSU CAPSTONE INVENTORYBUKSU CAPSTONE INVENTORYBUKSU CAPSTONE INVENTORYBUKSU CAPSTONE INVENTORYBUKSU CAPSTONE INVENTORYBUKSU CAPSTONE INVENTORYBUKSU CAPSTONE INVENTORY', 'dEMS', NULL, 'bUKSU', NULL, 17, NULL, 'Available', 'INTORY FOR CAPSTONEEEE', NULL, NULL, NULL, NULL, NULL, '2022-12-14 07:53:38', '2022-12-14 07:53:38'),
(5, 'screenshot monitoring for employe', 'screenshot monitoring for employeescreenshot monitoring for employeescreenshot monitoring for employeescreenshot monitoring for employeescreenshot monitoring for employeescreenshot monitoring for employeescreenshot monitoring for employeescreenshot monitoring for employee', 'john', NULL, 'Google', NULL, 1, NULL, 'Taken', 'screenshot monitoring for employee', NULL, NULL, NULL, NULL, NULL, '2023-03-07 18:23:52', '2023-03-07 23:43:06');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `uid` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `year` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gender` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `role_num` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `mname`, `lname`, `uid`, `year`, `email`, `photo`, `gender`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `role_num`) VALUES
(1, 'Admin', 'Admin', 'Admin', '1801100000', NULL, 'a1d2m3i4n@gmail.com', 'the_avatar.jpeg', 'Male', NULL, '$2y$10$B5pzRn.I3jxVy7AUo5wVdeXuoCbseH/rakhQUsx/bMKkLcAxt/IvS', NULL, '2022-11-28 04:17:52', '2022-11-28 04:17:52', '3'),
(2, 'John', 'Sison', 'Admin', '1801100000', NULL, 'archiver@gmail.com', 'the_avatar.jpeg', 'Male', NULL, '$2y$10$awcLUFLLlOCczHgdFlqtk.X3ia1jMmnxOoByX0xj.ORMCJC1931ZG', NULL, '2022-11-28 04:17:52', '2022-11-28 04:17:52', '4'),
(3, 'Gerald John', 'Sisonn', 'Admin', '1801100000', 'null', 'student1@gmail.com', 'the_avatar.jpeg', 'Male', NULL, '$2y$10$sUgz1oe2mdyrHqOlUcWoT.MX5Z3pIXbb9OcdbmNa8ih2zom7kBVeG', NULL, '2022-11-28 04:17:52', '2023-01-10 19:32:28', '1'),
(4, 'Jhonrey', 'Capasan', 'Victor', '1801100000', NULL, 'student2@gmail.com', 'the_avatar.jpeg', 'Male', NULL, '$2y$10$A03VPP6V/g6YalbJF3XqcOjWLF3dl/vPJhtwZQCaEZ0prNFtwQyGe', NULL, '2022-11-28 04:17:52', '2023-03-07 20:58:23', '1'),
(5, 'Phebe', 'Alcairo', 'Billones', '1801100000', NULL, 'student3@gmail.com', 'the_avatar.jpeg', 'Female', NULL, '$2y$10$i0yDX4Y2u4MtWzuMjI2vDOkMzT0q8Fqkm7ZcX9pwW3cMd72tbwt7u', NULL, '2022-11-28 04:17:52', '2023-01-10 19:32:28', '1'),
(6, 'Dems Brial', 'Gargar', 'Elizarde', '1801100000', NULL, 'student4@gmail.com', 'the_avatar.jpeg', 'Male', NULL, '$2y$10$3HKZKxyAdkFhb0QBC88gz.i8sa6plDtSzyZMbVJTeFdwzhedJWk8y', NULL, '2022-11-28 04:17:52', '2023-03-07 20:58:23', '1'),
(15, 'Joan Marie', 'M', 'Panes', '00001', NULL, 'panes.temporary@gmail.com', 'the_avatar.jpeg', 'Female', NULL, '$2y$10$NjTuIaXzRzSiKxvwVunjg.8T4SHQ2j1erbcrZxRQd4eEVwf2fuWc.', NULL, '2022-11-29 11:14:09', '2023-03-07 20:52:31', '2'),
(16, 'John Dale', 'A', 'Belderol', '00002', NULL, 'belderol.temporary@gmail.com', 'the_avatar.jpeg', 'Male', NULL, '$2y$10$IQtTxBbv9Uk6/A5.g65JhOa7B21fRP2S19KIvfjLa4m4PZCrCHTAS', NULL, '2022-11-29 11:17:22', '2023-03-07 20:52:31', '2'),
(17, 'Rufino John', 'E', 'Aguilar', '00003', 'null', 'aguilar.temporary@gmail.com', 'the_avatar.jpeg', 'Male', NULL, '$2y$10$HQ/Mme/1LxpTqKeqUtEhX.krFCqGcHhqzmtFgEgNDl/GY20TMuw/a', NULL, '2022-11-29 11:18:44', '2023-03-07 03:24:26', '2'),
(18, 'Ma. Jennifer', 'T', 'Timbal', '00004', NULL, 'timbal.temporary@gmail.com', 'the_avatar.jpeg', 'Female', NULL, '$2y$10$3mFO4mbOI3eoi8uzUJE.Qe5dQj5a2fMWNqFghnCtp.o1wfHU9QgiG', NULL, '2022-11-29 11:20:05', '2023-03-07 20:58:23', '2'),
(19, 'Ronel', 'D', 'Bongga', '00005', NULL, 'bongga.temporary@gmail.com', 'the_avatar.jpeg', 'Male', NULL, '$2y$10$UzB64NSrIjAyqrKLvVWKRen5E0p/zGI75VdKN/BFI6wzYZ3talhMq', NULL, '2022-11-29 11:23:24', '2023-01-10 19:32:28', '2'),
(20, 'Raul', 'H', 'Lecaros', '00006', NULL, 'lecaros.temporary@gmail.com', 'the_avatar.jpeg', 'Male', NULL, '$2y$10$iQyFE7a6/eFKbhffng0KDuA4QWdYKVD4huI.sUDd1ZKHmnwYu2Xvq', NULL, '2022-11-29 11:28:22', '2023-01-02 03:13:00', '2'),
(21, 'Peter Joseph', 'S', 'Rabanes', '00007', NULL, 'rabanes.temporary@gmail.com', 'the_avatar.jpeg', 'Male', NULL, '$2y$10$z.NikiDpyNV7R1HgvClXS./4Qv.nbLVqdUkdlgfazHVfCaULdRXJa', NULL, '2022-11-29 11:29:39', '2023-01-02 03:09:16', '2'),
(83, 'Marilou', 'O.', 'Espina', '12345678', '4th year', 'espina.temporary@gmail.com', 'the_avatar.jpeg', 'Female', NULL, '$2y$10$76E2.YjVXYB8O5r603En8.65O8C47uWEaQlsdD6ByjWJFJprzH/2S', NULL, '2022-11-29 13:39:29', '2023-01-10 19:32:28', '2'),
(84, 'Psyche', 'T.', 'Malabo', NULL, '4th year', 'malabo.temporary@gmail.com', 'the_avatar.jpeg', 'Female', NULL, '$2y$10$QPfidGc7LvpZwZMEzxctQeOxYTYRwD.Lkrhm.qgyQM86cT1Gshnei', NULL, '2022-11-29 13:40:55', '2023-01-02 03:10:33', '2'),
(86, 'Mark Ian', 'M.', 'Mukara', '12345678', '4th year', 'mukara.temporary@gmail.com', 'the_avatar.jpeg', 'Male', NULL, '$2y$10$bxU7KJnk0Kz90wV1Kb7zgeWz41.93WuIyemnxsGwA50xBq0u.UNlO', NULL, '2022-11-29 13:42:17', '2023-01-02 03:09:39', '2'),
(87, 'Mark Daniel', 'G.', 'Dacer', '12345678', '4th year', 'dacer.temporary@gmail.com', 'the_avatar.jpeg', 'Male', NULL, '$2y$10$KhFlN565aD6X8lEpLWcIUOJ..L7JIg4t7nKCZCg8Wg7FjpdD.miYW', NULL, '2022-11-29 13:44:08', '2022-11-29 13:44:08', '2'),
(88, 'Benzar', 'B.', 'Grepon', '12345678', '4th year', 'grepon.temporary@gmail.com', 'the_avatar.jpeg', 'Male', NULL, '$2y$10$V272EC50O6RwFEvwU.e6tOGanfVY/hMafSne22glWwkCeOEhoY1NG', NULL, '2022-11-29 13:46:22', '2023-03-07 20:58:23', '2'),
(89, 'Aribe', 'G.', 'Sales', '12345678', '4th year', 'sales.temporary@gmail.com', 'the_avatar.jpeg', 'Male', NULL, '$2y$10$jA6rlwwvY.qq2fYXM6l8wu7D.LnqiM2ASZPbJp75sTjpOyHOk9rA2', NULL, '2022-11-29 13:48:18', '2023-03-07 20:58:23', '2'),
(90, 'Jasper', 'D.', 'Arida', '12345678', '4th year', 'arida.temporary@gmail.com', 'the_avatar.jpeg', 'Male', NULL, '$2y$10$nvvZAjGHFrgIcirEt3hfPexJpBSOnGjSUw7W0ruW5OhzEGGP0cNzy', NULL, '2022-11-29 13:50:20', '2023-03-07 20:58:23', '2'),
(91, 'Fritz Paul', 'H.', 'De Guzman', '12345678', '4th year', 'deguzman.temporary@gmail.com', 'the_avatar.jpeg', 'Male', NULL, '$2y$10$VJOzNiO.o4EsiNXU14pBXe83L54KAYMQRvnPGAKCEjEZWhKy.6TwG', NULL, '2022-11-29 13:52:11', '2023-01-02 03:09:39', '2'),
(92, 'Rozzane Tuesday', 'G.', 'Flores', '12345678', 'Choose...', 'flores.temporary@gmail.com', 'the_avatar.jpeg', 'Female', NULL, '$2y$10$bPfRuff26K7NDgSETgbic.f7ujz4DpUjmteR5e8l20WVGh2WKc6/q', NULL, '2022-11-29 13:54:32', '2022-11-29 13:54:32', '2'),
(93, 'Exhan', 'Y.', 'Bandas', '12345678', NULL, 'bandas.temporary@gmail.com', 'the_avatar.jpeg', 'Male', NULL, '$2y$10$DPIZekKZ36ZJ9J5GglB7L.j5foEooGKoNSmda1zeZQQWrtOObRlku', NULL, '2022-11-29 13:56:22', '2022-11-29 13:56:22', '2'),
(94, 'Clifford', 'T.', 'Baguio', '12345678', NULL, 'baguio.temporary@gmail.com', 'the_avatar.jpeg', 'Male', NULL, '$2y$10$qLXNCvsfagt0jhDm/xBYz.UR0CCeIlKCEF9hwHy0B8dPxEWKypwAa', NULL, '2022-11-29 13:58:28', '2023-03-07 20:58:23', '2'),
(98, 'Gil Nicholas', 'T.', 'Cagande', '12345678', NULL, 'cagande.temporary@gmail.com', 'the_avatar.jpeg', 'Male', NULL, '$2y$10$ojW06nz48vlp6dZro0n.Eei.bjJLIlwv1aYx65pktwN90JyXTyHUS', NULL, '2022-11-29 14:00:16', '2022-11-29 14:00:16', '2'),
(99, 'Ruffel Mae', 'H.', 'Maghano', '12345678', NULL, 'maghano.temporary@gmail.com', 'the_avatar.jpeg', 'Female', NULL, '$2y$10$pyuQmKngTfX6TluyTg2RXuG2pDsE/W1xHMDJL0GRLoRRDdM8uBGpW', NULL, '2022-11-29 14:03:11', '2023-01-02 03:11:44', '2'),
(100, 'Louie', 'T.', 'Labastida', NULL, NULL, 'labastida.temporary@gmail.com', 'the_avatar.jpeg', 'Male', NULL, '$2y$10$ytdwsL4WBIK9xumy5oJmVuA8peBEPZkQVTTYRcV.dvwgw.UoMCl3m', NULL, '2022-11-29 14:15:27', '2023-01-02 03:11:44', '2'),
(111, 'Constancio Xeus llI', 'L', 'Caruz', '1901103343', '4th year', '1901103343@student.buksu.edu.ph', 'the_avatar.jpeg', 'Male', NULL, '$2y$10$WbAuNHCPC/61pYhWLIZhcObEI.b0uLEHw2lbk04lYXPtqhpGCFfXW', NULL, '2022-11-30 05:02:36', '2023-01-02 03:10:56', '1'),
(112, 'Anthony Clark', 'G', 'Caniamo', '180xxxxxxx', '3rd year', 'anthonycaniamo23@gmail.com', 'the_avatar.jpeg', 'Male', NULL, '$2y$10$BGWLf2EOA.K9DGHSDdfKB.57BwyeSQYF5uojNsqOKF1bBNhc1/Tc2', NULL, '2022-11-30 05:05:54', '2023-03-07 20:58:23', '1'),
(113, 'Ron Victor', 'L', 'CO', '1801105297', NULL, '1801105297@student.buksu.edu.ph', 'the_avatar.jpeg', 'Male', NULL, '$2y$10$g06HiZDICjIkdG.5vG31MuSMUE.3DtB0.ot/xhhsTvb4ot6ggFmt6', NULL, '2022-11-30 05:08:40', '2022-11-30 05:08:40', '1'),
(114, 'Janherold', 'S', 'Legandin', '180xxxxxxx', '3rd year', 'janheroldlegandin36@gmail.com', 'the_avatar.jpeg', 'Male', NULL, '$2y$10$WGhW8bKaFnXDQOjblfIpQOYSMNn0294BzjpNpjh2ER630VYNiNK2u', NULL, '2022-11-30 05:11:37', '2022-11-30 05:11:37', '1'),
(115, 'Queenie', 'T', 'Dacuno', '1801103998', '3rd year', '1801103998@student.buksu.edu.ph', 'the_avatar.jpeg', 'Female', NULL, '$2y$10$s8OxB/F0F90s4nU0ks4oHODmLaeFeVEJn0FDBkjY86H.hv/H00CdW', NULL, '2022-11-30 05:13:40', '2022-11-30 05:13:40', '1'),
(116, 'Anjun', 'L', 'Latoja', '180xxxxxxx', '3rd year', 'anjunlatoja11@gmail.com', 'the_avatar.jpeg', 'Male', NULL, '$2y$10$d1UHDkPkVyG1Zns4l4ii0e9fHxZfbodOogBoMeD8XbRICiQ8QH4oC', NULL, '2022-11-30 05:16:20', '2022-11-30 05:16:20', '1'),
(117, 'Dylene', 'A', 'Darunday', '180xxxxx', '3rd year', 'dyelldarunday14@gmail.com', 'the_avatar.jpeg', 'Female', NULL, '$2y$10$eLhhgz5LmXh18.psLABH5u3cZm89Ba2bL3D4jqV9zhNg4qob1ZpVi', NULL, '2022-11-30 05:18:57', '2022-11-30 05:18:57', '1'),
(119, 'Marc Roger', 'D', 'Natividad', '1901101529', '3rd year', '1901101529@student.buksu.edu.ph', 'the_avatar.jpeg', 'Male', NULL, '$2y$10$Be8e9qbM6TEK2zVR14egOOcb4uPIZlUvsxrbNRghOnJXg5WAasCZK', NULL, '2022-11-30 05:29:02', '2022-11-30 05:29:02', '1'),
(120, 'Ryan', 'Q', 'Compuesto', '180xxxxxxx', '3rd year', 'compuestoryan09@gmail.com', 'the_avatar.jpeg', 'Male', NULL, '$2y$10$DGY9Q/YuOUKJe/bdu1vd8uhFFawiY68YNJIMZrnPVNe.bsw3ZuRiq', NULL, '2022-11-30 05:56:33', '2022-11-30 05:56:33', '1'),
(121, 'Charlyn', 'S', 'Labrador', '1901103594', '3rd year', '1901103594@student.buksu.edu.ph', 'the_avatar.jpeg', 'Female', NULL, '$2y$10$28vGn25eaQJKk8fg./9CROJbKGUxV5WtQpZnGdXSJMkTvbHofSa0G', NULL, '2022-11-30 05:59:37', '2023-03-07 20:58:23', '2'),
(128, 'Jovelin', 'M', 'Lapates', '123456789', NULL, 'lapates.temporary@gmail.com', 'the_avatar.jpeg', 'Female', NULL, '$2y$10$MsFgTy24Mu9KakjA58/4aeGRzoiJ6dKiJgF34OhooXO62ftkW6.Ru', NULL, '2022-11-30 06:36:47', '2023-01-02 03:13:00', '2'),
(165, 'johntry', 'G', 'johntry', 'johntry', 'not set', 'johntry@gmail.com', 'the_avatar.jpeg', 'Male', NULL, '$2y$10$WGqTK/6G1ax8aJiKKs7UF.vXiy0CxX7gF1czkyEVn7zLE8IpVqHgm', NULL, '2023-03-07 08:02:04', '2023-03-07 20:58:23', '1'),
(166, 'fefef', 'fefef', 'fefefefe', 'feff', NULL, 'a1d2m3i4nfefefef@gmail.com', 'the_avatar.jpeg', NULL, NULL, '$2y$10$L/vKP86TyAIDVezOku8gwe9L4ezi4KOX2LmeYwCbQz2sz9NnZt3py', NULL, '2023-03-07 18:53:53', '2023-03-07 18:53:53', NULL),
(167, 'Temp', 'o', 'rary', '12345678', 'null', 'temporary@gmail.com', 'the_avatar.jpeg', 'Male', NULL, '$2y$10$pg1k35GLMy2uPPWDonhdWuWXScCT.fvWPBmB.fZYbZ4XPTAlODQnO', NULL, '2023-03-07 21:42:09', '2023-03-07 21:45:38', '2'),
(168, 'Temp', 'o', 'rary', '123456789', '4th year', 'temp1234@gmail.com', 'the_avatar.jpeg', 'Male', NULL, '$2y$10$FPvWH39APglthQpM.ul32uodRxK1cIHVIwYWoY2j9z173zUa8ixdC', NULL, '2023-03-07 21:43:59', '2023-03-07 21:45:22', '1'),
(169, 'Tester', 'T', 'Student', '12345678', 'not set', 'testerstudent@gmail.com', 'the_avatar.jpeg', 'not set', NULL, '$2y$10$VemZ/L4h2A.V3NOisMUoy./AkyWeIox.d12VbWjIINH10uS2.QR02', NULL, '2023-03-11 18:28:57', '2023-03-11 18:28:57', '1');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `audits`
--
ALTER TABLE `audits`
  ADD PRIMARY KEY (`id`),
  ADD KEY `audits_auditable_type_auditable_id_index` (`auditable_type`,`auditable_id`),
  ADD KEY `audits_user_id_user_type_index` (`user_id`,`user_type`);

--
-- Indexes for table `caps1ratings`
--
ALTER TABLE `caps1ratings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `caps1ratings_capstone1_id_foreign` (`capstone1_id`),
  ADD KEY `caps1ratings_user_id_foreign` (`user_id`);

--
-- Indexes for table `caps2ratings`
--
ALTER TABLE `caps2ratings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `caps2ratings_capstone2_id_foreign` (`capstone2_id`),
  ADD KEY `caps2ratings_user_id_foreign` (`user_id`);

--
-- Indexes for table `caps3ratings`
--
ALTER TABLE `caps3ratings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `caps3ratings_capstone3_id_foreign` (`capstone3_id`),
  ADD KEY `caps3ratings_user_id_foreign` (`user_id`);

--
-- Indexes for table `capstone1s`
--
ALTER TABLE `capstone1s`
  ADD PRIMARY KEY (`id`),
  ADD KEY `capstone1s_capstone_id_foreign` (`capstone_id`);

--
-- Indexes for table `capstone2s`
--
ALTER TABLE `capstone2s`
  ADD PRIMARY KEY (`id`),
  ADD KEY `capstone2s_capstone_id_foreign` (`capstone_id`);

--
-- Indexes for table `capstone3s`
--
ALTER TABLE `capstone3s`
  ADD PRIMARY KEY (`id`),
  ADD KEY `capstone3s_capstone_id_foreign` (`capstone_id`);

--
-- Indexes for table `capstonedashboards`
--
ALTER TABLE `capstonedashboards`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `capstones`
--
ALTER TABLE `capstones`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `capstone_user`
--
ALTER TABLE `capstone_user`
  ADD KEY `capstone_user_capstone_id_foreign` (`capstone_id`),
  ADD KEY `capstone_user_user_id_foreign` (`user_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `instructors`
--
ALTER TABLE `instructors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `partialstorages`
--
ALTER TABLE `partialstorages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_unique` (`name`);

--
-- Indexes for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `permission_role_role_id_foreign` (`role_id`);

--
-- Indexes for table `permission_user`
--
ALTER TABLE `permission_user`
  ADD PRIMARY KEY (`user_id`,`permission_id`,`user_type`),
  ADD KEY `permission_user_permission_id_foreign` (`permission_id`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_unique` (`name`);

--
-- Indexes for table `role_user`
--
ALTER TABLE `role_user`
  ADD PRIMARY KEY (`user_id`,`role_id`,`user_type`),
  ADD KEY `role_user_role_id_foreign` (`role_id`);

--
-- Indexes for table `topics`
--
ALTER TABLE `topics`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `audits`
--
ALTER TABLE `audits`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=329;

--
-- AUTO_INCREMENT for table `caps1ratings`
--
ALTER TABLE `caps1ratings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=97;

--
-- AUTO_INCREMENT for table `caps2ratings`
--
ALTER TABLE `caps2ratings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=97;

--
-- AUTO_INCREMENT for table `caps3ratings`
--
ALTER TABLE `caps3ratings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=97;

--
-- AUTO_INCREMENT for table `capstone1s`
--
ALTER TABLE `capstone1s`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `capstone2s`
--
ALTER TABLE `capstone2s`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `capstone3s`
--
ALTER TABLE `capstone3s`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `capstonedashboards`
--
ALTER TABLE `capstonedashboards`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `capstones`
--
ALTER TABLE `capstones`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `instructors`
--
ALTER TABLE `instructors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=245;

--
-- AUTO_INCREMENT for table `partialstorages`
--
ALTER TABLE `partialstorages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `topics`
--
ALTER TABLE `topics`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=170;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `caps1ratings`
--
ALTER TABLE `caps1ratings`
  ADD CONSTRAINT `caps1ratings_capstone1_id_foreign` FOREIGN KEY (`capstone1_id`) REFERENCES `capstone1s` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `caps1ratings_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `caps2ratings`
--
ALTER TABLE `caps2ratings`
  ADD CONSTRAINT `caps2ratings_capstone2_id_foreign` FOREIGN KEY (`capstone2_id`) REFERENCES `capstone2s` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `caps2ratings_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `caps3ratings`
--
ALTER TABLE `caps3ratings`
  ADD CONSTRAINT `caps3ratings_capstone3_id_foreign` FOREIGN KEY (`capstone3_id`) REFERENCES `capstone3s` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `caps3ratings_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `capstone1s`
--
ALTER TABLE `capstone1s`
  ADD CONSTRAINT `capstone1s_capstone_id_foreign` FOREIGN KEY (`capstone_id`) REFERENCES `capstones` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `capstone2s`
--
ALTER TABLE `capstone2s`
  ADD CONSTRAINT `capstone2s_capstone_id_foreign` FOREIGN KEY (`capstone_id`) REFERENCES `capstones` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `capstone3s`
--
ALTER TABLE `capstone3s`
  ADD CONSTRAINT `capstone3s_capstone_id_foreign` FOREIGN KEY (`capstone_id`) REFERENCES `capstones` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `capstone_user`
--
ALTER TABLE `capstone_user`
  ADD CONSTRAINT `capstone_user_capstone_id_foreign` FOREIGN KEY (`capstone_id`) REFERENCES `capstones` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `capstone_user_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `permission_user`
--
ALTER TABLE `permission_user`
  ADD CONSTRAINT `permission_user_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `role_user`
--
ALTER TABLE `role_user`
  ADD CONSTRAINT `role_user_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
