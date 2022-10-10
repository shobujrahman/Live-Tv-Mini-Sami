-- phpMyAdmin SQL Dump
-- version 4.9.5deb2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Sep 07, 2022 at 05:09 AM
-- Server version: 8.0.30-0ubuntu0.20.04.2
-- PHP Version: 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `live_tv_mini`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` bigint UNSIGNED NOT NULL,
  `userName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `full_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_role` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `userName`, `password`, `email`, `full_name`, `user_role`, `created_at`, `updated_at`) VALUES
(1, 'Abdur Rahman', '$2y$10$6LGhHeVky20P4r70ilqwROU0.FgvZcBhnHsqAD3eQ4hsyJ2DGXYVK', 'admin@admins', 'ProRahman', 'super_admin', '2021-06-06 05:37:01', '2022-07-21 11:33:18');

-- --------------------------------------------------------

--
-- Table structure for table `advertisements`
--

CREATE TABLE `advertisements` (
  `id` bigint UNSIGNED NOT NULL,
  `admob_inter` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `admob_native` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `admob_banner` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `admob_reward` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fb_inter` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fb_native` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fb_banner` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fb_reward` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `unity_appId_gameId` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `iron_appKey` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `appnext_placementId` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `startapp_appId` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `industrial_interval` int DEFAULT NULL,
  `native_ads` int DEFAULT NULL,
  `ad_types` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `advertisements`
--

INSERT INTO `advertisements` (`id`, `admob_inter`, `admob_native`, `admob_banner`, `admob_reward`, `fb_inter`, `fb_native`, `fb_banner`, `fb_reward`, `unity_appId_gameId`, `iron_appKey`, `appnext_placementId`, `startapp_appId`, `industrial_interval`, `native_ads`, `ad_types`, `created_at`, `updated_at`) VALUES
(1, 'ca-app-pub-3940256099942544/1033173712', 'ca-app-pub-3940256099942544/2247696110', 'ca-app-pub-3940256099942544/6300978111', 'ca-app-pub-/5224354917', 'IMG_16_9_APP_INSTALL#YOUR_PLACEMENT_ID', 'IMG_16_9_APP_INSTALL#YOUR_PLACEMENT_ID', 'IMG_16_9_APP_INSTALL#YOUR_PLACEMENT_ID', 'IMG_16_9_APP_INSTALL#YOUR_PLACEMENT_ID', '4299991', '10ee0422d', 'e3cc500b-ab1b-4dfe-b435-e9dba6b5cb18', '21183084', 3, 3, '3', NULL, '2021-09-08 10:29:27');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint UNSIGNED NOT NULL,
  `category_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `category_name`, `category_image`, `created_at`, `updated_at`) VALUES
(1, 'Business', '1658297041.jpg', NULL, '2022-07-20 06:04:01'),
(6, 'Music Story', '1658403224.png', '2022-07-21 11:33:44', '2022-07-21 11:33:44');

-- --------------------------------------------------------

--
-- Table structure for table `items`
--

CREATE TABLE `items` (
  `id` bigint UNSIGNED NOT NULL,
  `cat_id` bigint UNSIGNED NOT NULL,
  `video_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `video_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `video_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `video_thumbnail` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `video_duration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `video_description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `video_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `size` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_views` int NOT NULL,
  `date_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `items`
--

INSERT INTO `items` (`id`, `cat_id`, `video_title`, `video_url`, `video_id`, `video_thumbnail`, `video_duration`, `video_description`, `video_type`, `size`, `total_views`, `date_time`, `updated_at`, `created_at`) VALUES
(5, 1, 'BBC News', 'http://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ForBiggerJoyrides.mp4', 'cda11up', '1658403501.png', '01:21:36', 'BBC News Live TV', 'Url', '', 0, '2022-07-21 04:38:31', '2022-07-21 11:38:21', '2022-07-21 04:38:31'),
(8, 6, 'testing', 'https://vid-mates.com/shobuj/LiveTvMini/public/upload/video/779141243.mp4', 'cda11up', '1658639733.png', '123', 'asdfghj', 'Upload', '5.01 MB', 0, '2022-07-24 05:15:33', '2022-07-31 07:12:09', '2022-07-24 05:15:33');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(60, '2021_04_20_051617_create_regusers_table', 3),
(64, '2014_10_12_000000_create_users_table', 6),
(67, '2021_03_21_120852_create_admins_table', 6),
(69, '2021_06_21_062028_create_advertisements_table', 7),
(80, '2021_06_21_101831_create_settings_table', 8),
(81, '2021_06_24_112246_create_tokens_table', 8),
(82, '2021_06_29_060235_create_notifications_table', 8),
(88, '2021_07_14_080503_create_url_types_table', 8),
(89, '2021_07_14_090933_create_user_agent_types_table', 8),
(90, '2021_07_15_120252_create_token_types_table', 9),
(92, '2022_07_18_131753_create_categories_table', 11),
(95, '2021_05_27_075818_create_sliders_table', 13),
(96, '2022_07_19_064520_create_items_table', 14);

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `image_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`id`, `title`, `message`, `url`, `image_url`, `created_at`, `updated_at`) VALUES
(1, 'Hair Cut', 'asdgfhjhhhgf', 'https://www.google.com/', 'https://i.pinimg.com/736x/5c/a9/6f/5ca96fe550aab0f2cc2768d3dee9417d.jpg', '2021-07-25 04:46:15', '2021-07-25 04:46:15'),
(2, 'ashbfdjhb', 'sdjbkjdbnkj', 'cdsbckjbn', 'https://i.pinimg.com/736x/5c/a9/6f/5ca96fe550aab0f2cc2768d3dee9417d.jpg', '2022-07-20 10:27:12', '2022-07-20 10:27:12');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` bigint UNSIGNED NOT NULL,
  `app_fcm_key` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `one_signal` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `api_key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `app_version` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `ggl_ply_lcns_key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `app_subscription_key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `ggl_product_key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `privacy_policy` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `app_fcm_key`, `one_signal`, `api_key`, `app_version`, `ggl_ply_lcns_key`, `app_subscription_key`, `ggl_product_key`, `privacy_policy`, `created_at`, `updated_at`) VALUES
(1, 'AAAAcrH-QSM:APA91bEV6O9l6EJiDQaMdpicN-6DhIUzOQB-V9QoMpnDwSzLPa195WankHIh-DRE7gFNtdm1Dq7SkZPzc0MTnrRoyuTEKHO0QZpb0oEYBGXlYW1DJIFydaIWPPS2vkt', NULL, 'fchgjvhiooijoj', '', '', '', '1asgdggfedw5EgrFdwerght', '<p style=\"margin-bottom: 25px; width: 777px; caret-color: rgb(33, 37, 41); color: rgb(33, 37, 41); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 18px;\">Developing or publishing a mobile app?&nbsp;Your mobile app almost certainly requires a Privacy Policy sdfkjdnj</p><ul style=\"margin-bottom: 30px; caret-color: rgb(33, 37, 41); color: rgb(33, 37, 41); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 18px;\"><li style=\"margin-bottom: 20px;\">You may need a Privacy Policy to comply with privacy law</li><li style=\"margin-bottom: 20px;\">Apple requires all iOS developers to publish a Privacy Policy</li><li style=\"margin-bottom: 20px;\">Google requires almost all Android developers to publish a Privacy Policy</li></ul><p style=\"margin-bottom: 25px; width: 777px; caret-color: rgb(33, 37, 41); color: rgb(33, 37, 41); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 18px;\">This article contains&nbsp;some simple, step-by-step guides to creating a basic Privacy Policy for your mobile app.</p><p style=\"margin-bottom: 25px; width: 777px; caret-color: rgb(33, 37, 41); color: rgb(33, 37, 41); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 18px;\"><br></p><p style=\"margin-bottom: 25px; width: 777px; caret-color: rgb(33, 37, 41); color: rgb(33, 37, 41); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 18px;\">We\'re going to look briefly at the requirements under&nbsp;<a href=\"https://www.termsfeed.com/blog/sample-mobile-app-privacy-policy-template/#Privacy_Law_And_Mobile_Apps\" style=\"color: rgb(0, 81, 170); outline: none;\">privacy law</a>,&nbsp;<a href=\"https://www.termsfeed.com/blog/sample-mobile-app-privacy-policy-template/#Do_I_Need_A_Privacy_Policy_For_My_Ios_App\" style=\"color: rgb(0, 81, 170); outline: none;\">Apple\'s policies</a>, and&nbsp;<a href=\"https://www.termsfeed.com/blog/sample-mobile-app-privacy-policy-template/#Do_I_Need_A_Privacy_Policy_For_My_Android_App\" style=\"color: rgb(0, 81, 170); outline: none;\">Google\'s policies</a>, so you can confirm whether you&nbsp;<em>need</em>&nbsp;a Privacy Policy for your mobile app.</p><p style=\"margin-bottom: 25px; width: 777px; caret-color: rgb(33, 37, 41); color: rgb(33, 37, 41); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 18px;\">If you already know you need to create a Privacy Policy for your mobile app, you can&nbsp;jump straight to our step-by-step guides to creating a Privacy Policy&nbsp;for an&nbsp;&nbsp;an&nbsp;<a href=\"https://www.termsfeed.com/blog/sample-mobile-app-privacy-policy-template/#Privacy_Policy_For_Android_Apps\" style=\"color: rgb(0, 81, 170); outline: none;\">Android app</a>, or for&nbsp;<a href=\"https://www.termsfeed.com/blog/sample-mobile-app-privacy-policy-template/#Cross_Platform_Mobile_App_Privacy_Policy\" style=\"color: rgb(0, 81, 170); outline: none;\">both platforms</a>.</p>', NULL, '2022-07-20 10:25:38');

-- --------------------------------------------------------

--
-- Table structure for table `sliders`
--

CREATE TABLE `sliders` (
  `id` bigint UNSIGNED NOT NULL,
  `cat_id` bigint UNSIGNED NOT NULL,
  `video_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `video_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `video_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `video_thumbnail` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `video_duration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `video_description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `video_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `size` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_views` int NOT NULL,
  `date_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sliders`
--

INSERT INTO `sliders` (`id`, `cat_id`, `video_title`, `video_url`, `video_id`, `video_thumbnail`, `video_duration`, `video_description`, `video_type`, `size`, `total_views`, `date_time`, `created_at`, `updated_at`) VALUES
(2, 1, 'Test Item 1', 'https://www.youtube.com', 'cda11up', '1658312212.png', '900', 'hi hello', 'Url', '', 0, '2022-07-20 08:39:01', '2022-07-20 08:39:00', '2022-07-20 10:16:53'),
(3, 1, 'Test Item 1', 'https://www.youtube.com', 'cda11up', '1658312212.png', '900', 'hi hello', 'Url', '', 0, '2022-07-20 08:39:01', '2022-07-20 08:39:00', '2022-07-20 10:16:53'),
(4, 1, 'Test Item 1', 'https://www.youtube.com', 'cda11up', '1658312212.png', '900', 'hi hello', 'Url', '', 0, '2022-07-20 08:39:01', '2022-07-20 08:39:00', '2022-07-20 10:16:53'),
(5, 1, 'Test Item 1', 'https://www.youtube.com', 'cda11up', '1658312212.png', '900', 'hi hello', 'Url', '', 0, '2022-07-20 08:39:01', '2022-07-20 08:39:00', '2022-07-20 10:16:53'),
(6, 1, 'Test Item 1', 'https://www.youtube.com', 'cda11up', '1658312212.png', '900', 'hi hello', 'Url', '', 0, '2022-07-20 08:39:01', '2022-07-20 08:39:00', '2022-07-20 10:16:53'),
(7, 1, 'Test Item 1', 'https://www.youtube.com', 'cda11up', '1658312212.png', '900', 'hi hello', 'Url', '', 0, '2022-07-20 08:39:01', '2022-07-20 08:39:00', '2022-07-20 10:16:53'),
(8, 1, 'Test Item 1', 'https://www.youtube.com', 'cda11up', '1658312212.png', '900', 'hi hello', 'Url', '', 0, '2022-07-20 08:39:01', '2022-07-20 08:39:00', '2022-07-20 10:16:53'),
(9, 1, 'Test Item 1', 'https://www.youtube.com', 'cda11up', '1658312212.png', '900', 'hi hello', 'Url', '', 0, '2022-07-20 08:39:01', '2022-07-20 08:39:00', '2022-07-20 10:16:53'),
(10, 1, 'Test Item 1', 'https://www.youtube.com', 'cda11up', '1658312212.png', '900', 'hi hello', 'Url', '', 0, '2022-07-20 08:39:01', '2022-07-20 08:39:00', '2022-07-20 10:16:53'),
(11, 1, 'Test Item 1', 'https://www.youtube.com', 'cda11up', '1658312212.png', '900', 'hi hello', 'Url', '', 0, '2022-07-20 08:39:01', '2022-07-20 08:39:00', '2022-07-20 10:16:53'),
(12, 1, 'Test Item 1', 'https://www.youtube.com', 'cda11up', '1658312212.png', '900', 'hi hello', 'Url', '', 0, '2022-07-20 08:39:01', '2022-07-20 08:39:00', '2022-07-20 10:16:53'),
(13, 1, 'Test Item 1', 'https://www.youtube.com', 'cda11up', '1658312212.png', '900', 'hi hello', 'Url', '', 0, '2022-07-20 08:39:01', '2022-07-20 08:39:00', '2022-07-20 10:16:53'),
(14, 1, 'Test Item 1', 'https://www.youtube.com', 'cda11up', '1658312212.png', '900', 'hi hello', 'Url', '', 0, '2022-07-20 08:39:01', '2022-07-20 08:39:00', '2022-07-20 10:16:53'),
(15, 1, 'Test Item 1', 'https://www.youtube.com', 'cda11up', '1658312212.png', '900', 'hi hello', 'Url', '', 0, '2022-07-20 08:39:01', '2022-07-20 08:39:00', '2022-07-20 10:16:53'),
(16, 1, 'Test Item 1', 'https://www.youtube.com', 'cda11up', '1658312212.png', '900', 'hi hello', 'Url', '', 0, '2022-07-20 08:39:01', '2022-07-20 08:39:00', '2022-07-20 10:16:53'),
(17, 1, 'Test Item 1', 'https://www.youtube.com', 'cda11up', '1658312212.png', '900', 'hi hello', 'Url', '', 0, '2022-07-20 08:39:01', '2022-07-20 08:39:00', '2022-07-20 10:16:53'),
(18, 1, 'Test Item 1', 'https://www.youtube.com', 'cda11up', '1658312212.png', '900', 'hi hello', 'Url', '', 0, '2022-07-20 08:39:01', '2022-07-20 08:39:00', '2022-07-20 10:16:53'),
(19, 1, 'Test Item 1', 'https://www.youtube.com', 'cda11up', '1658312212.png', '900', 'hi hello', 'Url', '', 0, '2022-07-20 08:39:01', '2022-07-20 08:39:00', '2022-07-20 10:16:53'),
(20, 1, 'Test Item 1', 'https://www.youtube.com', 'cda11up', '1658312212.png', '900', 'hi hello', 'Url', '', 0, '2022-07-20 08:39:01', '2022-07-20 08:39:00', '2022-07-20 10:16:53'),
(21, 1, 'Test Item 1', 'https://www.youtube.com', 'cda11up', '1658312212.png', '900', 'hi hello', 'Url', '', 0, '2022-07-20 08:39:01', '2022-07-20 08:39:00', '2022-07-20 10:16:53'),
(22, 1, 'Test Item 1', 'https://www.youtube.com', 'cda11up', '1658312212.png', '900', 'hi hello', 'Url', '', 0, '2022-07-20 08:39:01', '2022-07-20 08:39:00', '2022-07-20 10:16:53'),
(23, 1, 'Test Item 1', 'https://www.youtube.com', 'cda11up', '1658312212.png', '900', 'hi hello', 'Url', '', 0, '2022-07-20 08:39:01', '2022-07-20 08:39:00', '2022-07-20 10:16:53');

-- --------------------------------------------------------

--
-- Table structure for table `tokens`
--

CREATE TABLE `tokens` (
  `id` bigint UNSIGNED NOT NULL,
  `device_token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `device_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tokens`
--

INSERT INTO `tokens` (`id`, `device_token`, `device_name`, `created_at`, `updated_at`) VALUES
(1, 'dHc7o5FyTDm0t7xVXfyT1L:APA91bGLAr8eCVugTH4XF--iOI1UHZ_DpDViwnlgq3Q1RBzTCS2HC0GLS7Tof0idTenqL856SjCx0oyDemXcaMYWz3FlpFvCDLF9C0HL43xGYQUCUcfHWhXF97gj8o1GyzTKFXPfo-CY', 'Xiaomi Mi 9 Lite', '2021-07-29 05:50:57', '2021-07-29 05:50:57'),
(2, 'cshF29--RsS54t1DVJ4Kjd:APA91bHrbEmJRZy2Pac2OvI2C450YqQ6wQGrWZ7dEUF4pG6D880ZzpUPhH5DN8UotjQu3tUjiDDUlLzUUSMGVho6Gxz3gsrWwWPg0RMziHP6W7t-pdpfLf_V8pHralGZ4bNeMqC4ON5p', 'Xiaomi Mi 9 Lite', '2021-07-31 11:06:06', '2021-07-31 11:06:06'),
(3, 'dn_m3OPhRnmzj_tYnMNIII:APA91bF7mPFv7ABoa2ZOPTanpgyyFkHQmJ2rrDgu4FzfAZQOmfx3EMDTpMYB5v6F8uUnXHCiIpdz0c7cUboBOAjXzSskyZpfFKvW7myhVaVNikE1R_ty3AZ3II8jRmUlSQuJN6W94msb', 'Xiaomi Mi 9 Lite', '2021-08-07 05:26:05', '2021-08-07 05:26:05'),
(4, 'cKXQc8XtTgObDBaC9LPnmR:APA91bFu-kWjZBK3Q67GbbVHaprSG0Z5Moc9_hD4pOojJNsaTZGVHC9mYdI0GEd79-R3QQtq3WOkEOVJ6xGLHi9-A4a9ZCq6DMDTEReHoEhZ_IwGi-dfCCifBW2Q_dbb87BJUeNQpSOS', 'Xiaomi M2003J15SC', '2021-08-07 06:03:34', '2021-08-07 06:03:34'),
(5, 'dn_m3OPhRnmzj_tYnMNIII:APA91bHRKXk5jsbYYrb0Kp0E6JlNAdrOvw39dKsUwTzjU2pIgep9R6Bps002D8wE68gDtRBinx3nvGOBAJY7PojKy_zZIV4JT9C219yK_ULdognyvejA-X3aHnSioAKM-RkFt-aH1bMu', 'Xiaomi Mi 9 Lite', '2021-08-08 05:48:32', '2021-08-08 05:48:32'),
(6, 'dn_m3OPhRnmzj_tYnMNIII:APA91bFyMjIwZK_OibttDIA-EEYZyo1wD5il_Mflvwbiq2YS1HEymNH_vVVmTz7kBp3YK1v58ApE3GpgkczSWY4JGlsodikrE9WzJexZCxqr6xwiOYevjFAXhiZJHGou1Ul580LsU0xz', 'Xiaomi Mi 9 Lite', '2021-08-08 06:34:58', '2021-08-08 06:34:58'),
(7, 'dn_m3OPhRnmzj_tYnMNIII:APA91bHwWFPjerkfjWgE7jYj8WyqyKk8wykSsFXbMynKlDDt3rkMIoYKE0k8om6uHD19viSwj805P0RnjyZnYK3Yvg_UMbFqltl7-_Z0NEEmg2v7-j3tEAxdUjv5LeMY9E9tzhz6Jzu5', 'Xiaomi Mi 9 Lite', '2021-08-08 06:36:33', '2021-08-08 06:36:33'),
(8, 'dn_m3OPhRnmzj_tYnMNIII:APA91bHYdqL8sOUB9sQXzhDxAn1KywDtLmvLtzZ5O_StaKcMA71nEJXFZRIC0JuLXj8r7r0uRHj7a3O--LVk5hjwobRIxteHb7R8t-Z9g3RdmWoISAFFRRW1e0sLvcab4psbJ6Zrs9Hm', 'Xiaomi Mi 9 Lite', '2021-08-08 06:49:59', '2021-08-08 06:49:59'),
(9, 'dn_m3OPhRnmzj_tYnMNIII:APA91bHYdqL8sOUB9sQXzhDxAn1KywDtLmvLtzZ5O_StaKcMA71nEJXFZRIC0JuLXj8r7r0uRHj7a3O--LVk5hjwobRIxteHb7R8t-Z9g3RdmWoISAFFRRW1e0sLvcab4psbJ6Zrs9Hm', 'Xiaomi Mi 9 Lite', '2021-08-08 06:49:59', '2021-08-08 06:49:59'),
(10, 'dn_m3OPhRnmzj_tYnMNIII:APA91bG4LvN2fGqF-6oobMN5aZUr29rMW7JRMBhbmFwCfDwQYxN9EkpjoQ0EoKa0GgJcHTk8wvhO2b1G_GUiwbX4HY8p2Nu2cIswZyF0ao3jHfhsuVVt-SgEbb8f5KJnYA3P-MDZJIfM', 'Xiaomi Mi 9 Lite', '2021-08-08 06:50:04', '2021-08-08 06:50:04'),
(11, 'dn_m3OPhRnmzj_tYnMNIII:APA91bG4LvN2fGqF-6oobMN5aZUr29rMW7JRMBhbmFwCfDwQYxN9EkpjoQ0EoKa0GgJcHTk8wvhO2b1G_GUiwbX4HY8p2Nu2cIswZyF0ao3jHfhsuVVt-SgEbb8f5KJnYA3P-MDZJIfM', 'Xiaomi Mi 9 Lite', '2021-08-08 06:50:04', '2021-08-08 06:50:04'),
(12, 'dn_m3OPhRnmzj_tYnMNIII:APA91bGiQcub7_-ABhMHs1uDe0oO6beRkcxGY57mbj4E6rvrd_BR8ZvG90i9kJmHu4zK1S1bjyyubdnmqqhky81RaMFjNT13HT7Rt6dyQPhrVfgjzoYBvBzyGOeTN84AdLj7Mj-tjpDP', 'Xiaomi Mi 9 Lite', '2021-08-08 06:50:07', '2021-08-08 06:50:07'),
(13, 'dn_m3OPhRnmzj_tYnMNIII:APA91bGiQcub7_-ABhMHs1uDe0oO6beRkcxGY57mbj4E6rvrd_BR8ZvG90i9kJmHu4zK1S1bjyyubdnmqqhky81RaMFjNT13HT7Rt6dyQPhrVfgjzoYBvBzyGOeTN84AdLj7Mj-tjpDP', 'Xiaomi Mi 9 Lite', '2021-08-08 06:50:07', '2021-08-08 06:50:07'),
(14, 'dn_m3OPhRnmzj_tYnMNIII:APA91bHq3_WW--5P-q-LAk6dmRCTwHx_j7bKqqOkFNgC2WSZhZOlCSVtuer_FB2uOmGa7N0Qi-WhJHdmEAzFT1pkaSAZr6doNU4lF5vcbFsPsUAZFYGUoCGiWBEB-9iqaGhX95NZ_Ypt', 'Xiaomi Mi 9 Lite', '2021-08-08 06:50:14', '2021-08-08 06:50:14'),
(15, 'dn_m3OPhRnmzj_tYnMNIII:APA91bHq3_WW--5P-q-LAk6dmRCTwHx_j7bKqqOkFNgC2WSZhZOlCSVtuer_FB2uOmGa7N0Qi-WhJHdmEAzFT1pkaSAZr6doNU4lF5vcbFsPsUAZFYGUoCGiWBEB-9iqaGhX95NZ_Ypt', 'Xiaomi Mi 9 Lite', '2021-08-08 06:50:14', '2021-08-08 06:50:14'),
(16, 'dn_m3OPhRnmzj_tYnMNIII:APA91bHk_-D812Kx1AZHkK-rKpTXeaz_CkaBu3zT7-_mTuAe0jPQgM6qZj7NnVcyvMhXF6b9b9ZOjThNAueibmvkoLZbvdvnHwqlZd-mhuOFJpZn87A2UHuepMLZxzlZj-UfR8rdXK4k', 'Xiaomi Mi 9 Lite', '2021-08-08 06:50:47', '2021-08-08 06:50:47'),
(17, 'dn_m3OPhRnmzj_tYnMNIII:APA91bHk_-D812Kx1AZHkK-rKpTXeaz_CkaBu3zT7-_mTuAe0jPQgM6qZj7NnVcyvMhXF6b9b9ZOjThNAueibmvkoLZbvdvnHwqlZd-mhuOFJpZn87A2UHuepMLZxzlZj-UfR8rdXK4k', 'Xiaomi Mi 9 Lite', '2021-08-08 06:50:47', '2021-08-08 06:50:47'),
(18, 'dn_m3OPhRnmzj_tYnMNIII:APA91bG2EuS7lk_xKXnAZRIej9W5UHG5F5AVhj5gqsHtPD_Qr7Oxv7geSdt27n5aXKVXGhNW1cH7mv2ZqNHbkjHfNCiIh4m7xUO77u00YGOx90R_-Juhu23n12_jyDC1KzcgIVUWkwsm', 'Xiaomi Mi 9 Lite', '2021-08-08 06:50:57', '2021-08-08 06:50:57'),
(19, 'dn_m3OPhRnmzj_tYnMNIII:APA91bG2EuS7lk_xKXnAZRIej9W5UHG5F5AVhj5gqsHtPD_Qr7Oxv7geSdt27n5aXKVXGhNW1cH7mv2ZqNHbkjHfNCiIh4m7xUO77u00YGOx90R_-Juhu23n12_jyDC1KzcgIVUWkwsm', 'Xiaomi Mi 9 Lite', '2021-08-08 06:50:57', '2021-08-08 06:50:57'),
(20, 'dn_m3OPhRnmzj_tYnMNIII:APA91bFyg9oTxTaB2BgxxrR_g7-rzBZv5xh9SstGRcjzHb2xIjQKnWqImygItMvBM9JLrRitQQQHRmt_rpItHIQxBoka530V9QIcPDROXNABpCBgxv1ep4F2c38jZLPbS-K3UY7A_X4A', 'Xiaomi Mi 9 Lite', '2021-08-08 06:50:59', '2021-08-08 06:50:59'),
(21, 'dn_m3OPhRnmzj_tYnMNIII:APA91bFyg9oTxTaB2BgxxrR_g7-rzBZv5xh9SstGRcjzHb2xIjQKnWqImygItMvBM9JLrRitQQQHRmt_rpItHIQxBoka530V9QIcPDROXNABpCBgxv1ep4F2c38jZLPbS-K3UY7A_X4A', 'Xiaomi Mi 9 Lite', '2021-08-08 06:50:59', '2021-08-08 06:50:59'),
(22, 'dn_m3OPhRnmzj_tYnMNIII:APA91bHRI0VdGD3c5N0SXGuNzQOntB9DaEkGRljwGN4Co8EVKwDsZDRGBK5F9OhLWP9okec1RJ8mrOKS7BtSmxQ9Qxfuv-KpthlkgRIzr1IiAq4bxu7ZeXcXKxTnOBjukMGcrWnILLNA', 'Xiaomi Mi 9 Lite', '2021-08-08 06:51:59', '2021-08-08 06:51:59'),
(23, 'dn_m3OPhRnmzj_tYnMNIII:APA91bHRI0VdGD3c5N0SXGuNzQOntB9DaEkGRljwGN4Co8EVKwDsZDRGBK5F9OhLWP9okec1RJ8mrOKS7BtSmxQ9Qxfuv-KpthlkgRIzr1IiAq4bxu7ZeXcXKxTnOBjukMGcrWnILLNA', 'Xiaomi Mi 9 Lite', '2021-08-08 06:52:11', '2021-08-08 06:52:11'),
(24, 'dn_m3OPhRnmzj_tYnMNIII:APA91bEFokNPI9J1UhsFm9OpfZq_NNY1R-qqaWp8ECrT8J0q36e6p_EHk3Lad2P4T-76gE1weLs6q1bla66g-uhFkxr-4bvx7lYZNGTHeEP1IIjy-Zu8Rz9ZtDQf30_rUcRJLUS1EBUR', 'Xiaomi Mi 9 Lite', '2021-08-08 06:52:14', '2021-08-08 06:52:14'),
(25, 'dn_m3OPhRnmzj_tYnMNIII:APA91bEFokNPI9J1UhsFm9OpfZq_NNY1R-qqaWp8ECrT8J0q36e6p_EHk3Lad2P4T-76gE1weLs6q1bla66g-uhFkxr-4bvx7lYZNGTHeEP1IIjy-Zu8Rz9ZtDQf30_rUcRJLUS1EBUR', 'Xiaomi Mi 9 Lite', '2021-08-08 06:52:14', '2021-08-08 06:52:14'),
(26, 'dn_m3OPhRnmzj_tYnMNIII:APA91bElZKWG3-yr4ieLWr-DCAigTVjktQ_2UaKv0Bnaxipa8guvArear2H56Z31CAENA5tJdUy6ylaQrG0pWtD9RCIfJgrAx21Em7YlSlHxAXhzJmPI-YwRXT-7eZrDpf9uI85lSBLk', 'Xiaomi Mi 9 Lite', '2021-08-08 06:52:16', '2021-08-08 06:52:16'),
(27, 'dn_m3OPhRnmzj_tYnMNIII:APA91bElZKWG3-yr4ieLWr-DCAigTVjktQ_2UaKv0Bnaxipa8guvArear2H56Z31CAENA5tJdUy6ylaQrG0pWtD9RCIfJgrAx21Em7YlSlHxAXhzJmPI-YwRXT-7eZrDpf9uI85lSBLk', 'Xiaomi Mi 9 Lite', '2021-08-08 06:52:16', '2021-08-08 06:52:16'),
(28, 'dn_m3OPhRnmzj_tYnMNIII:APA91bHTlx3_js30g2BtIJbMaloBEYGRqWLgsAwTfm4kcLq_1HNz3CZMVTsR0745OcACvE0LhpI7qOQG_Ub1gFlQymQZnZegpnwoONK13hPY-qINctND6csrqNU0mr8P0eavC7zpbqA0', 'Xiaomi Mi 9 Lite', '2021-08-08 06:53:24', '2021-08-08 06:53:24'),
(29, 'dn_m3OPhRnmzj_tYnMNIII:APA91bHTlx3_js30g2BtIJbMaloBEYGRqWLgsAwTfm4kcLq_1HNz3CZMVTsR0745OcACvE0LhpI7qOQG_Ub1gFlQymQZnZegpnwoONK13hPY-qINctND6csrqNU0mr8P0eavC7zpbqA0', 'Xiaomi Mi 9 Lite', '2021-08-08 06:53:24', '2021-08-08 06:53:24'),
(30, 'dn_m3OPhRnmzj_tYnMNIII:APA91bF5xYBjTHC6xAehhOaQn62AN6AetRZH5p-BaBtppOY3BxeVsgP_huYHMDZM0aOx8wpbt_F0ceRKWP5jp3qGt1JoqsPs01fzwg4gk9h2rVg9s7p6NDMtKf6re--5wSDqENWNkHhV', 'Xiaomi Mi 9 Lite', '2021-08-08 06:54:18', '2021-08-08 06:54:18'),
(31, 'dn_m3OPhRnmzj_tYnMNIII:APA91bF5xYBjTHC6xAehhOaQn62AN6AetRZH5p-BaBtppOY3BxeVsgP_huYHMDZM0aOx8wpbt_F0ceRKWP5jp3qGt1JoqsPs01fzwg4gk9h2rVg9s7p6NDMtKf6re--5wSDqENWNkHhV', 'Xiaomi Mi 9 Lite', '2021-08-08 06:54:36', '2021-08-08 06:54:36'),
(32, 'dn_m3OPhRnmzj_tYnMNIII:APA91bFUS04oSwLlniYdMls6CWE6u-YzFLj4ZQ21MiFLlOupJI5rZ90R_A3Gp9BesF5BthIK8wo1ni5JYlvNESWX4sFgZsOZNYENE5iu-iCawYuZHOGCr1UqL4j7gEkq_f5RNfgQcwjH', 'Xiaomi Mi 9 Lite', '2021-08-08 06:55:12', '2021-08-08 06:55:12'),
(33, 'dn_m3OPhRnmzj_tYnMNIII:APA91bFUS04oSwLlniYdMls6CWE6u-YzFLj4ZQ21MiFLlOupJI5rZ90R_A3Gp9BesF5BthIK8wo1ni5JYlvNESWX4sFgZsOZNYENE5iu-iCawYuZHOGCr1UqL4j7gEkq_f5RNfgQcwjH', 'Xiaomi Mi 9 Lite', '2021-08-08 06:55:35', '2021-08-08 06:55:35'),
(34, 'dn_m3OPhRnmzj_tYnMNIII:APA91bFzPdV2HlsdZ85L4dbdXInmdUi6lPlq_6ICbjv7IPDh4kAln-P-wZCwEOPCkEqfJaQ7cHiTUwdRKmBZTrtHNrJr1CDCG3Rasifd3XH6-viHsCHSFz833mNgZ86_s-3PgH7kiD5V', 'Xiaomi Mi 9 Lite', '2021-08-08 06:56:37', '2021-08-08 06:56:37'),
(35, 'dn_m3OPhRnmzj_tYnMNIII:APA91bFzPdV2HlsdZ85L4dbdXInmdUi6lPlq_6ICbjv7IPDh4kAln-P-wZCwEOPCkEqfJaQ7cHiTUwdRKmBZTrtHNrJr1CDCG3Rasifd3XH6-viHsCHSFz833mNgZ86_s-3PgH7kiD5V', 'Xiaomi Mi 9 Lite', '2021-08-08 06:56:37', '2021-08-08 06:56:37'),
(36, 'dn_m3OPhRnmzj_tYnMNIII:APA91bGtniwrvS8rPaso0_BqQjafwCo4Asow7caYYwOmdBFjkhs6MnmUrUbQzYwV5THWeWTZDfuke2ZjQ6V68UaaxBKFuqor8UOqTq3vEp4vE5G2e-adsHAW8rRj8HScw4dVPifq32UB', 'Xiaomi Mi 9 Lite', '2021-08-08 06:56:40', '2021-08-08 06:56:40'),
(37, 'dn_m3OPhRnmzj_tYnMNIII:APA91bGtniwrvS8rPaso0_BqQjafwCo4Asow7caYYwOmdBFjkhs6MnmUrUbQzYwV5THWeWTZDfuke2ZjQ6V68UaaxBKFuqor8UOqTq3vEp4vE5G2e-adsHAW8rRj8HScw4dVPifq32UB', 'Xiaomi Mi 9 Lite', '2021-08-08 06:56:40', '2021-08-08 06:56:40'),
(38, 'dn_m3OPhRnmzj_tYnMNIII:APA91bGMBuVhrmjDaNqgMQh_D-7b8bCt6QZeQFJvGvHu0UkgCAsKOKAtFeZKPUBqzmn6wJKDKehUBz7f3vdVSlQM8VdAhwE83_N6h9c0VXMETMXN_brN0tfY4hiaigF9VuT3mHfqW_nt', 'Xiaomi Mi 9 Lite', '2021-08-08 06:57:14', '2021-08-08 06:57:14'),
(39, 'dn_m3OPhRnmzj_tYnMNIII:APA91bGMBuVhrmjDaNqgMQh_D-7b8bCt6QZeQFJvGvHu0UkgCAsKOKAtFeZKPUBqzmn6wJKDKehUBz7f3vdVSlQM8VdAhwE83_N6h9c0VXMETMXN_brN0tfY4hiaigF9VuT3mHfqW_nt', 'Xiaomi Mi 9 Lite', '2021-08-08 06:57:14', '2021-08-08 06:57:14'),
(40, 'dn_m3OPhRnmzj_tYnMNIII:APA91bHYEViu6my4wRrB0lQiGk7eqqtKwCWvp-jIyUY1cIzToVDdL7CudXTDYOJydTTPhgTkncN5BzXoH-Row-7tQ-yLAzxQYScU3bVCaqD_gxrwLWf9Gb8_M5uve2Y0QFwosk3h8H_B', 'Xiaomi Mi 9 Lite', '2021-08-08 07:04:27', '2021-08-08 07:04:27'),
(41, 'eTZSkpe0QlaEeZ_h-h-8Yv:APA91bGt2vJrJ_fhvhmqNCRmtow5gW8QMM002wAGK0ydQIQukFpkBJKJkBKnXXRh6o2b6xUbjlvGe6XJMw27Dl3QyrKERzqZ07l2aN_F7GxTE92kQh6qhY-kb-PhBh9MEAh08LmKf7dt', 'Xiaomi Mi 9 Lite', '2021-08-08 09:51:28', '2021-08-08 09:51:28'),
(42, 'fdS-6p_cR6KQah7f9a1A7_:APA91bFSiHZZ9gdY72taNZviXOWh5_VRCmCoK70weaAblGJlt9UZ56FQ2sxZTmhec9nszUKMBA7zdgGymGlVcCYc624X1wGeYQ9JqfvrH4ZlzO3o_VBHZH7xxCpfxfuaceV1cY2QPSvi', 'OnePlus ONEPLUS A6000', '2021-08-08 10:07:45', '2021-08-08 10:07:45'),
(43, 'c7AWqhJ7TcmEvHgKX2fiD5:APA91bHlywZT0qHA61BbTK2IJl6iVSYOCCXwtlOl22hfcx9PeQF4rPzqHFojZ8aZ1vWlpkxyQ4t82jLJp9U_dQkpt0JExR0JQo6ZhCSYFmtbQzTB3QsiF4tPiqSBVMQqqt33JGWkkZCl', 'Xiaomi Mi 9 Lite', '2021-08-08 11:41:28', '2021-08-08 11:41:28'),
(44, 'eW-ZhEP9RpSTxJkmPulBmV:APA91bFwtTyB1laUfoU9aX7o3pJ599EG-q06tN-5u4rrQIxERBo9L2mAAjFWQ85TMlDR-_2ZK3eAAPevfL7KSPwnnJRSeC0F-Gtu8671a2i3u0_JirRWi2QW_yU9qo7XzrsX6ctkJyAM', 'Xiaomi Mi 9 Lite', '2021-08-08 14:49:57', '2021-08-08 14:49:57'),
(45, 'c7AWqhJ7TcmEvHgKX2fiD5:APA91bHlywZT0qHA61BbTK2IJl6iVSYOCCXwtlOl22hfcx9PeQF4rPzqHFojZ8aZ1vWlpkxyQ4t82jLJp9U_dQkpt0JExR0JQo6ZhCSYFmtbQzTB3QsiF4tPiqSBVMQqqt33JGWkkZCl', 'Xiaomi Mi 9 Lite', '2021-08-09 04:45:35', '2021-08-09 04:45:35'),
(46, 'c7AWqhJ7TcmEvHgKX2fiD5:APA91bGjB-p2tU8z4uNfgAYkuexqDnpLrL6MAUBuITiqYH6UvqeQ2ent0cDCMyosPL4ZpzeI_NQnItNPjPi5zltdiLb74iRl1vwG3GNphISRIH86_M7Jexyx9aKm0CyJ-MMVZlLKXyzY', 'Xiaomi Mi 9 Lite', '2021-08-09 04:46:32', '2021-08-09 04:46:32'),
(47, 'deITvCUpTCiYsn1xeZWZEt:APA91bHeUVMPxwYClowecG6EqbFRl9QW07d7ENEAb6a3A_ogUnKsEqdxUxPJj83JSaTtTRkQLlwQpTvBbQrH0lIwC3wwJrUX9nSy7wo5e-fNt9Eped0tZ10C3SBcutGdD1y5vuMjtNUa', 'Xiaomi Mi 9 Lite', '2021-08-09 12:47:05', '2021-08-09 12:47:05'),
(48, 'dvYy2_65Q4iZTSw1r05T5w:APA91bEWsP7cybwVoN1B5k9jlyzP914zFXJ05ktnrUQz9epgPPBS4i6Q_y5_cq4R2rQa8gROmCiSbx6_WUXOvhL80qpGh66mpWms_Fz0uJGFs98fUmN7TRwIIIKqk9phnGNihyL8gyQR', 'Xiaomi Mi 9 Lite', '2021-08-09 14:17:56', '2021-08-09 14:17:56'),
(49, 'eFU5JvA1SMeiRXfEomLXej:APA91bEIDJFPWESo9z5fPUDk5JY3lonA8rwfmwNcJOoYIBXYTnFUWuj9S2f9Axfj4FsUrai0iEb1heLualfr4zal8fCOm7OLwy1jhgMJGRCo6EMCDfLanun9E-B7ve1n-jSJXaS4p9Y_', 'OnePlus ONEPLUS A6000', '2021-08-10 06:34:13', '2021-08-10 06:34:13'),
(50, 'eiUFq-yQTqGcJadP5XQLtf:APA91bGXPXCyQBabTnzgBkpCuMt3Ihr7RKGE995gEiY0eha9j6L0y42qooUpq8nIMn5YLUZMjNojcFsAjOH3FAJKPToufCEVjqYJHuOdboopATRGJ3IhGjCwjBkvgzGsNCHxj6m1SQOm', 'Xiaomi Mi 9 Lite', '2021-08-10 06:36:55', '2021-08-10 06:36:55'),
(51, 'e_pXPKgqSMKcsSA0DMfgzg:APA91bFkcuf_24iXqIeGTVqIAcdpc0qirKI9mhM3ShD5usKBHFB5nnQrUu-9dTHZAObFlwKoCuZeFgLrTEoV8kU7uLCbaXf0ID28mCAQRzEYy48oBzy1pERkndM05KKQHy1If-5IyOrt', 'Xiaomi Mi 9 Lite', '2021-08-10 06:41:58', '2021-08-10 06:41:58'),
(52, 'eFU5JvA1SMeiRXfEomLXej:APA91bEIDJFPWESo9z5fPUDk5JY3lonA8rwfmwNcJOoYIBXYTnFUWuj9S2f9Axfj4FsUrai0iEb1heLualfr4zal8fCOm7OLwy1jhgMJGRCo6EMCDfLanun9E-B7ve1n-jSJXaS4p9Y_', 'OnePlus ONEPLUS A6000', '2021-08-10 06:48:22', '2021-08-10 06:48:22'),
(53, 'eFU5JvA1SMeiRXfEomLXej:APA91bHd3Xeot6Il-kuFK295QSPLC_mZ9K5CCxOm6m5qLt1QPgaD0wPMDnQuGlY5rrXRFTDQcMj6f1Ove_w8jyVArq3TtWqMZYlZeDHooNzVPoT-K80M9IKu4Ps617S_M962LqjeyEtv', 'OnePlus ONEPLUS A6000', '2021-08-10 06:48:26', '2021-08-10 06:48:26'),
(54, 'eFU5JvA1SMeiRXfEomLXej:APA91bHd3Xeot6Il-kuFK295QSPLC_mZ9K5CCxOm6m5qLt1QPgaD0wPMDnQuGlY5rrXRFTDQcMj6f1Ove_w8jyVArq3TtWqMZYlZeDHooNzVPoT-K80M9IKu4Ps617S_M962LqjeyEtv', 'OnePlus ONEPLUS A6000', '2021-08-10 06:48:26', '2021-08-10 06:48:26'),
(55, 'c8cYr20cTxKnc-lLt5XJTZ:APA91bFapge7mxXHdTZHwfOk5_2K8s2bJmdADmvxqgf1kSvtp5cq_dmOaEdZWUp5byolnq2HZDhjpjqSVlOHV6L3G0xKXulaoyLPucI2k554E1rPZdlUbxmAFXvDIyserhFjOPoyXaqh', 'Xiaomi Mi 9 Lite', '2021-08-10 07:38:17', '2021-08-10 07:38:17'),
(56, 'cXKZLyN8TiSkoIMQdEM08d:APA91bF-ijoscswbWioDssNY3QpX6-t0-RFf7de9QVvp-HUjW0mqMEqAF3LDSg0qqLvzu3ZbUyY2fWszolpamAKGyJfXw0rCQFwVbon6ONBD1bPD0BFdFX2YKllE5vme1j1voSlINk2t', 'Xiaomi Mi 9 Lite', '2021-08-10 11:30:59', '2021-08-10 11:30:59'),
(57, 'cZJnn8AeR2SmFdHcqh_ROh:APA91bGB8Bsc6NhUs6wXOXBkp_pYVG-MrMw1FOabsYMsUdQWFI4p2rxemJ1slscPZqk_smHcV1APA2jYLPtsY6UUE7JFywt2uzpiVp0G00avQ3c-BAbMsXMIJH1m4o9MKJYXxraEnDcV', 'Xiaomi Mi 9 Lite', '2021-08-10 14:23:40', '2021-08-10 14:23:40'),
(58, 'c4NcH5gcSxucS1Jpr4V-x5:APA91bEuXtz9xtFlfQPQbS0NCiOTgXcUhUPJajtJQbQ1qgbVviWdWo8cBu3GVxXUtxpza07s_dnw6Xb7Bwi5iWeVMwqcB9_Af4PP_creJMZS10kDL7AXTIdJpIyDF8oCcLI6wLXKXfIO', 'Xiaomi Mi 9 Lite', '2021-08-11 09:05:35', '2021-08-11 09:05:35'),
(59, 'dZ4GUpioTx25WfFaX4ogYk:APA91bFw1UNCW4UpCMoi-gJXXp9zHaXEjEAUMGXfYIjZBPk3_UUN8j2ukzaEJYbkFkThxy1lyfSGeA-Y9cmxb9EyztTLHxH2-s5lLhAUo85X3L-wDsUe3XHYn-qTASzoGNbfyucCAfMm', 'Xiaomi Mi 9 Lite', '2021-08-11 13:28:58', '2021-08-11 13:28:58'),
(60, 'dJQIl6GJRW-XTCc6wOkHLq:APA91bH-CGBqNTsxynriuFnByvc4WSKfxeYZlUwIK7WwZhki8-2O6XqCbKgoqRlFiYOrXhapy58BAF78YRyiPaNfBbpM4KS-HmL13ixPQ7m7c9QJ69S-I-WBsXxo6jTw4FOV8_2WS9-_', 'Xiaomi Mi 9 Lite', '2021-08-12 04:44:02', '2021-08-12 04:44:02'),
(61, 'eFU5JvA1SMeiRXfEomLXej:APA91bEi1MMfzXOv5vdjUpBbTFYysMreibbAP2SU0KNHzcdDRzGooCI8ycMdttMp6iLaRpidgExW0FPZvWNSrVDBiWh-yww5yGI3r2y-X-PTyhLJPjCkQONrMnfrArLIh8YVt1F3sLAD', 'OnePlus ONEPLUS A6000', '2021-08-12 18:35:07', '2021-08-12 18:35:07'),
(62, 'd3E2a7ykRHGy3SsiLCYuki:APA91bGdMUnOnL8YUTWVAkFBXE5YW1C-sWe1zP8oIunPRs01nnchuivyBpSSHf-uuDtWNxYEVlG7gcTUE4LGGu1--7lQo1B9ctoFu57ECMOSC-9uTe9Pwh_LszWNR-FeDCWZiE6rdfYe', 'OnePlus ONEPLUS A6000', '2021-08-15 05:58:53', '2021-08-15 05:58:53'),
(63, 'fOfo5wxbQgyrM1_WcZZx7U:APA91bHz-fHgP4yhxaC4bIy5aCcwS0AWQFpPx1_rGRV7kCPYo734gpz9uv8JsUUlErpckkp0XP_MJy2KJvjbY6kTUrdFsdfylp8q_igaIIFODcSoAfYU_g4cCnz7STDv-xAOieOHdOOU', 'Xiaomi Mi 9 Lite', '2021-08-15 13:48:25', '2021-08-15 13:48:25'),
(64, 'dEfEkvxtTf2x_WZRGbXj-e:APA91bEs4yFbicqDlP908kw1Q4CJPXB74_Uu1a1cXulkHfnZOPmtKFeXVDnRcVEuRbFk6Dy1FZjjVnIbebvpHXjV48-YdylxqxI_iNxeG6BdoELm8Og6hVPz84cBBp1TyX257qxOt6ZQ', 'Xiaomi Mi 9 Lite', '2021-08-17 09:42:15', '2021-08-17 09:42:15'),
(65, 'dPgWVrJORBGgI8XGQotajs:APA91bFPZ_G9GFV7kfepwU_j7lhHiu7uwidn0G9DJEIGHTzch6JH8aVooobeYb3Ge-mCd95l9wgw5aZ2kU4a9IsrYsZpaaEajJH7jLgRnxy63n1TeTKHzgqSXI1yLRzyZX3wb2iUQW-d', 'Xiaomi Mi 9 Lite', '2021-08-17 11:41:26', '2021-08-17 11:41:26'),
(66, 'ezU_l6vZSn6KStz9nkT-4x:APA91bHswLXF2idFj_BjOGfrFhXsPouHF9MrqEyvP626nmIOKixu9R0Gr1S1d2kfIzycM2qU7MqpuTgtaw3DlguQ_lbOF1FRDVsN_boiO4Necn6eBZrQp9WqqY2B_HPI9FaImZx7-dOT', 'OnePlus ONEPLUS A6000', '2021-08-17 12:03:11', '2021-08-17 12:03:11'),
(67, 'dXoaqpY6TrGEp-oYobu011:APA91bEI9gH2hgAfJYEFU2zojoBp8V2c9r6Gfu5A1cbc95VJMnC9I_Jg0MqEwEKfbebinkI3kVNw7TQLovGPPUikSgkJGmOzndhxvPE3p248z0SQdFXLjyGJNiK8OlknI-VZ8hYVn8vr', 'OnePlus ONEPLUS A6000', '2021-08-17 13:37:51', '2021-08-17 13:37:51'),
(68, 'dXoaqpY6TrGEp-oYobu011:APA91bEI9gH2hgAfJYEFU2zojoBp8V2c9r6Gfu5A1cbc95VJMnC9I_Jg0MqEwEKfbebinkI3kVNw7TQLovGPPUikSgkJGmOzndhxvPE3p248z0SQdFXLjyGJNiK8OlknI-VZ8hYVn8vr', 'OnePlus ONEPLUS A6000', '2021-08-17 17:28:32', '2021-08-17 17:28:32'),
(69, 'dXoaqpY6TrGEp-oYobu011:APA91bHAVTMTrZU1Ja6pWUf79lhYmmWMsgycREFFAz7oyEmikXTiIqCVW_BXbEOhXsjF_k7s63a6h-BEEIynCvk1qm78ufzcYGm5SBeKT5Nd8oPeYtE2lFwLMYDmuWnoELywB_1Qkx7e', 'OnePlus ONEPLUS A6000', '2021-08-17 17:29:57', '2021-08-17 17:29:57'),
(70, 'fyq-0cXsQNyQEUNCD1MHeB:APA91bETiOutS_W8HGS74qOr4Kck90rU2Sz2o7szXnN-DAH8-ZfiU1V4WvG2jUewxZ7vxmZMrhkLL75hJjhTouUGm9O0cWWAzXzyahkm7XuuVe8SsdX9MXc3018aObLi7wkBMUAnvrSI', 'OnePlus ONEPLUS A6000', '2021-08-17 17:34:18', '2021-08-17 17:34:18'),
(71, 'fyq-0cXsQNyQEUNCD1MHeB:APA91bFNWE7DLGPBDT3Iz9Pi8A9spSWPFEf6BJb0REG-kmlFxGiyNy48nS1Tr00tVohuX05qTFy6_E6WIbr85TBwLXYIDhTgEgW4UBbhauxxp81TvhxewQQxoeriQuI-oj5UFwda_w9g', 'OnePlus ONEPLUS A6000', '2021-08-21 13:33:07', '2021-08-21 13:33:07'),
(72, 'fxH4LmSeTHq1KRzLyWa4IF:APA91bGRkisqcrearECFnMLygXTbpgGUX0T_ug-rh8g-SqFspVCWYJobXbXkV3D5d-gSKZQduNdPgkUXDcYWx7Dplr2KQu975JAw-rWiZA4MhaVtLS5qw29OOP2W7qhceFsjAB0VbMh1', 'Xiaomi Mi 9 Lite', '2021-08-26 13:53:32', '2021-08-26 13:53:32'),
(73, 'fyq-0cXsQNyQEUNCD1MHeB:APA91bFNWE7DLGPBDT3Iz9Pi8A9spSWPFEf6BJb0REG-kmlFxGiyNy48nS1Tr00tVohuX05qTFy6_E6WIbr85TBwLXYIDhTgEgW4UBbhauxxp81TvhxewQQxoeriQuI-oj5UFwda_w9g', 'OnePlus ONEPLUS A6000', '2021-08-30 11:12:19', '2021-08-30 11:12:19'),
(74, 'fyq-0cXsQNyQEUNCD1MHeB:APA91bEFYPQe9yVcHmFv4uopMsDBg4-p3eFk_7tIlZqj6ZCsvY3Skyl9aSFlvSOBG9c7hntAtrz7aCXcSSsxQltLVQgW60sfMlj8BatlLMhxpSQcQQtpyrN2wfP_BaMCqCA9q4QYbPvF', 'OnePlus ONEPLUS A6000', '2021-08-30 18:22:50', '2021-08-30 18:22:50'),
(75, 'c1j2N7qTSlOquGc0962SEC:APA91bGjpqDs7Ztk6TFgWxRy3Pvmwuw_RsTjqQdaIH_pjoJhSXlrXlofHHZWyYOXw5WXF4mGJWsscqjRuGRUFkFNghTqGkExiqZR4ajEYwz8xbjYoqdNaxGSEk2pKp0UsnKakA1pYD5S', 'Xiaomi Mi 9 Lite', '2021-09-08 12:39:20', '2021-09-08 12:39:20');

-- --------------------------------------------------------

--
-- Table structure for table `token_types`
--

CREATE TABLE `token_types` (
  `id` bigint UNSIGNED NOT NULL,
  `token_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token_type_value` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `token_types`
--

INSERT INTO `token_types` (`id`, `token_name`, `token_type_value`, `created_at`, `updated_at`) VALUES
(1, 'json', '0', NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admins_email_unique` (`email`);

--
-- Indexes for table `advertisements`
--
ALTER TABLE `advertisements`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `items_cat_id_foreign` (`cat_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sliders`
--
ALTER TABLE `sliders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sliders_cat_id_foreign` (`cat_id`);

--
-- Indexes for table `tokens`
--
ALTER TABLE `tokens`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `token_types`
--
ALTER TABLE `token_types`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `advertisements`
--
ALTER TABLE `advertisements`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `items`
--
ALTER TABLE `items`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=97;

--
-- AUTO_INCREMENT for table `notifications`
--
ALTER TABLE `notifications`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `sliders`
--
ALTER TABLE `sliders`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `tokens`
--
ALTER TABLE `tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=76;

--
-- AUTO_INCREMENT for table `token_types`
--
ALTER TABLE `token_types`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `items`
--
ALTER TABLE `items`
  ADD CONSTRAINT `items_cat_id_foreign` FOREIGN KEY (`cat_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `sliders`
--
ALTER TABLE `sliders`
  ADD CONSTRAINT `sliders_cat_id_foreign` FOREIGN KEY (`cat_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
