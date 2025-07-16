-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 16, 2025 at 07:00 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ecommerce`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `webSiteName` varchar(255) NOT NULL,
  `merchantId` varchar(255) NOT NULL,
  `saltKey` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `address` text NOT NULL,
  `addressMapUrl` longtext DEFAULT NULL,
  `contact` varchar(255) NOT NULL,
  `instagram` longtext DEFAULT NULL,
  `facebook` longtext DEFAULT NULL,
  `youtube` longtext DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `webSiteName`, `merchantId`, `saltKey`, `email`, `address`, `addressMapUrl`, `contact`, `instagram`, `facebook`, `youtube`, `created_at`, `updated_at`) VALUES
(1, 'Style Loop', 'PGTESTPAYUAT86', '96434309-7796-489d-8924-ab56988a6076', 'support@styleloop.com', 'Kathua, Jammu And Kashmir, India', 'https://maps.app.goo.gl/A5jaRcvJpaNd2kHd7', '6005819576', 'https://www.instagram.com', 'https://www.facebook.com', 'https://www.youtube.com', '2025-06-02 11:38:19', '2025-06-25 14:36:23');

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `image` text DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`id`, `name`, `image`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'MetroMode', 'MetroMode_image_1.png', 1, '2025-06-24 04:25:50', '2025-06-24 04:25:50'),
(2, 'VibeFit', 'VibeFit_image_2.png', 1, '2025-06-24 04:26:15', '2025-06-24 04:26:15'),
(3, 'CoreWear', 'CoreWear_image_3.png', 1, '2025-06-24 04:26:32', '2025-06-24 04:26:32'),
(4, 'StyleNest', 'StyleNest_image_4.png', 1, '2025-06-24 04:26:50', '2025-06-25 14:57:10'),
(5, 'UrbanEdge', 'UrbanEdge_image_5.png', 1, '2025-06-24 04:27:06', '2025-06-24 04:27:06'),
(6, 'SoleEdge', 'SoleEdge_image_6.png', 1, '2025-06-24 04:27:44', '2025-06-24 06:06:14'),
(7, 'EveryLayer', 'EveryLayer_image_7.png', 1, '2025-06-24 04:27:59', '2025-06-24 04:27:59'),
(8, 'StreetCore', 'StreetCore_image_8.png', 1, '2025-06-24 04:28:17', '2025-06-25 14:57:44'),
(9, 'GreenStep', 'GreenStep_image_9.png', 1, '2025-06-24 04:29:39', '2025-06-24 04:29:39');

-- --------------------------------------------------------

--
-- Table structure for table `carts`
--

CREATE TABLE `carts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `quantity` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `carts`
--

INSERT INTO `carts` (`id`, `user_id`, `product_id`, `quantity`, `created_at`, `updated_at`) VALUES
(1, 2, 24, 1, '2025-06-25 03:23:58', '2025-06-25 03:23:58'),
(2, 2, 23, 1, '2025-06-25 03:24:11', '2025-06-25 03:24:11'),
(3, 3, 24, 1, '2025-06-25 14:22:23', '2025-06-25 14:22:23'),
(4, 3, 23, 1, '2025-06-26 00:56:35', '2025-06-26 00:56:35'),
(5, 3, 20, 1, '2025-06-26 00:56:43', '2025-06-26 00:56:43'),
(6, 3, 25, 1, '2025-06-26 01:02:16', '2025-06-26 01:02:16'),
(7, 3, 22, 1, '2025-06-26 01:02:24', '2025-06-26 01:02:24'),
(8, 3, 21, 1, '2025-06-26 01:02:34', '2025-06-26 01:02:34');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `gst` varchar(255) NOT NULL DEFAULT '0',
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `gst`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'Men’s Clothing', 'men-clothing-fashion-style-wear-dress-cloth', '18', 1, '2025-06-24 02:23:21', '2025-06-24 02:24:31'),
(2, 'Women’s Clothing', 'women-clothing-fashion-style-wear-dress-cloth', '18', 1, '2025-06-24 02:24:24', '2025-06-24 02:24:24'),
(3, 'Footwear', 'men-woman-child-shoes', '18', 1, '2025-06-24 02:25:15', '2025-06-24 07:39:20'),
(4, 'Accessories', 'accessories-daily-product', '18', 1, '2025-06-24 02:25:43', '2025-06-24 02:25:43'),
(5, 'Activewear', 'activewear', '18', 1, '2025-06-24 02:26:06', '2025-06-24 04:20:52'),
(6, 'Lifestyle', 'lifestyle', '18', 1, '2025-06-24 02:26:21', '2025-06-24 02:26:21'),
(7, 'Unisex', 'men-women-unisex', '18', 1, '2025-06-24 02:29:00', '2025-06-24 02:29:00');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `area_street_sector_village` varchar(255) NOT NULL,
  `flat_houseno_building_company` varchar(255) NOT NULL,
  `landmark` varchar(255) DEFAULT NULL,
  `district` varchar(255) NOT NULL,
  `state` varchar(255) NOT NULL,
  `country` varchar(255) NOT NULL,
  `pincode` varchar(255) NOT NULL,
  `profile_image` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `user_id`, `name`, `area_street_sector_village`, `flat_houseno_building_company`, `landmark`, `district`, `state`, `country`, `pincode`, `profile_image`, `created_at`, `updated_at`) VALUES
(1, 2, 'Rohan', 'Gandhi Nagar', '120', 'KVC.H. School', 'Pathankot', 'Punjab', 'India', '184125', 'rohan1234_profile_image.jpg', '2025-06-24 01:41:50', '2025-06-24 01:48:07'),
(2, 3, 'Suresh', 'Ludhiyana', '45', 'Center Park', 'Ludhiyana', 'Punjab', 'India', '184105', 'suresh1234_profile_image.jpg', '2025-06-24 01:42:48', '2025-06-24 02:14:11'),
(3, 4, 'Mohit', 'Rail Street', '02', 'Main Bazar', 'Delhi', 'Delhi', 'India', '149405', 'mohit123_profile_image.jpg', '2025-06-24 01:43:10', '2025-06-24 02:15:53'),
(4, 5, 'Priya', '72 sector', '90', 'tech street', 'Mohali', 'Punjab', 'India', '145098', 'priya123_profile_image.jpg', '2025-06-24 01:43:34', '2025-06-24 02:18:44'),
(5, 6, 'Komal', 'Sundar Chack', '12', 'GHS School', 'Pathankot', 'Punjab', 'India', '145025', 'komal123_profile_image.jpg', '2025-06-24 01:43:56', '2025-06-24 02:20:12'),
(6, 7, 'Ruhani', 'Malak Pure', '456', 'DownTown', 'Pathankot', 'Punjab', 'India', '145025', 'ruhani123_profile_image.jpg', '2025-06-24 01:44:18', '2025-06-24 02:22:03');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_11_14_055508_create_brands_table', 1),
(6, '2024_03_07_135218_create_customers_table', 1),
(7, '2024_03_07_135232_create_admins_table', 1),
(8, '2024_03_07_135353_create_categories_table', 1),
(9, '2024_03_07_135414_create_products_table', 1),
(10, '2024_03_07_135530_create_carts_table', 1),
(11, '2024_03_07_135541_create_orders_table', 1),
(12, '2024_03_07_135622_create_reviews_table', 1),
(13, '2024_03_07_135653_create_transactions_table', 1),
(14, '2024_03_08_115805_add_column_to_orders', 1),
(15, '2024_03_12_102002_create_jobs_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_number` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `address` varchar(255) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `delivery_charges` decimal(10,2) NOT NULL,
  `gst` decimal(10,2) NOT NULL,
  `order_status` varchar(255) NOT NULL DEFAULT 'pending',
  `quantity` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `transaction_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `order_number`, `user_id`, `product_id`, `address`, `price`, `delivery_charges`, `gst`, `order_status`, `quantity`, `created_at`, `updated_at`, `transaction_id`) VALUES
(1, 'Suresh_order_number_1', 3, 24, '45, Ludhiyana, Ludhiyana, Punjab, India, 184105', 600.00, 60.00, 108.00, 'pending', 1, '2025-06-25 14:37:39', '2025-06-25 14:37:39', 1),
(2, 'Suresh_order_number_2', 3, 24, '45, Ludhiyana, Ludhiyana, Punjab, India, 184105', 600.00, 60.00, 108.00, 'pending', 1, '2025-06-25 14:38:57', '2025-06-25 14:38:57', 2),
(3, 'Suresh_order_number_3', 3, 25, '45, Ludhiyana, Ludhiyana, Punjab, India, 184105', 550.00, 30.00, 99.00, 'pending', 1, '2025-06-25 14:41:46', '2025-06-25 14:41:46', 3),
(4, 'Suresh_order_number_4', 3, 25, '45, Ludhiyana, Ludhiyana, Punjab, India, 184105', 550.00, 30.00, 99.00, 'pending', 1, '2025-06-26 00:35:53', '2025-06-26 00:35:53', 4);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `categories_id` bigint(20) UNSIGNED NOT NULL,
  `brand_id` bigint(20) UNSIGNED NOT NULL,
  `name` text NOT NULL,
  `slug` text NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `sale_price` decimal(10,2) DEFAULT NULL,
  `delivery_charges` decimal(10,2) NOT NULL DEFAULT 0.00,
  `description` text DEFAULT NULL,
  `specification` text DEFAULT NULL,
  `stock` int(11) NOT NULL DEFAULT 0,
  `video_url` text DEFAULT NULL,
  `images` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`images`)),
  `thumnail` text DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `categories_id`, `brand_id`, `name`, `slug`, `price`, `sale_price`, `delivery_charges`, `description`, `specification`, `stock`, `video_url`, `images`, `thumnail`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 1, 5, 'Classic White T-Shirt', 'classic-white-t-shirt', 64.00, 59.00, 30.00, '<p>Classic White T-Shirt by UrbanEdge is a stylish item crafted for comfort and everyday wear.</p>', '[\"color\",\"White\",\"material\",\"Fleece\",\"size\",\"One Size\",\"fit\",\"Loose\",\"wash\",\"Machine Washable\"]', 82, '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/GMM_Hl1fTQ0?si=GrrE57PK7tNkyK51\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" referrerpolicy=\"strict-origin-when-cross-origin\" allowfullscreen></iframe>', '[\"Classic_White_T-Shirt_image_1_1.jpg\",\"Classic_White_T-Shirt_image_1_2.jpg\",\"Classic_White_T-Shirt_image_1_3.jpg\"]', 'Classic_White_T-Shirt_thumbnail_1.jpg', 1, '2025-06-24 06:16:37', '2025-06-27 00:56:06'),
(2, 1, 5, 'Slim Fit Denim Jacket', 'slim-fit-denim-jacket', 220.00, 190.00, 70.00, '<p>Slim Fit Denim Jacket by UrbanEdge is a stylish item crafted for comfort and everyday wear.</p>', '[\"color\",\"Blue\",\"material\",\"Fleece\",\"size\",\"S\",\"fit\",\"Slim\",\"wash\",\"Machine Washable\"]', 76, '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/dCgQirKJ4N8?si=SHxVyuuiXLrNR2YF\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" referrerpolicy=\"strict-origin-when-cross-origin\" allowfullscreen></iframe>', '[\"Slim_Fit_Denim_Jacket_image_2_1.jpg\",\"Slim_Fit_Denim_Jacket_image_2_2.jpg\",\"Slim_Fit_Denim_Jacket_image_2_3.jpg\",\"Slim_Fit_Denim_Jacket_image_2_4.jpg\"]', 'Slim_Fit_Denim_Jacket_thumbnail_2.jpg', 1, '2025-06-24 06:25:26', '2025-06-25 14:21:42'),
(3, 1, 3, 'Linen Button-Up Shirt', 'linen-button-up-shirt', 720.00, 670.00, 40.00, '<p>Linen Button-Up Shirt by CoreWear is a stylish item crafted for comfort and everyday wear.</p>', '[\"color\",\"White\",\"material\",\"Linen\",\"size\",\"XS\",\"fit\",\"Athletic\",\"wash\",\"Machine Washable\"]', 83, '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/iKZ-UXoYQq8?si=03LdlOjiw_qsqu-g\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" referrerpolicy=\"strict-origin-when-cross-origin\" allowfullscreen></iframe>', '[\"Linen_Button-Up_Shirt_image_3_1.jpg\",\"Linen_Button-Up_Shirt_image_3_2.jpg\",\"Linen_Button-Up_Shirt_image_3_3.jpg\"]', 'Linen_Button-Up_Shirt_thumbnail_3.jpg', 1, '2025-06-24 06:27:59', '2025-06-25 14:16:24'),
(4, 1, 4, 'Black Chino Pants', 'black-chino-pants', 670.00, 640.00, 50.00, '<p>Black Chino Pants by StyleNest is a stylish item crafted for comfort and everyday wear.</p>', '[\"color\",\"Black\",\"material\",\"Linen\",\"size\",\"M\",\"fit\",\"Regular\",\"wash\",\"Machine Washable\"]', 36, '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/HjT1RU3nskc?si=t4Uy6zc8qFyRk6aI\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" referrerpolicy=\"strict-origin-when-cross-origin\" allowfullscreen></iframe>', '[\"Black_Chino_Pants_image_4_1.jpg\",\"Black_Chino_Pants_image_4_2.jpg\",\"Black_Chino_Pants_image_4_3.jpg\",\"Black_Chino_Pants_image_4_4.jpg\"]', 'Black_Chino_Pants_thumbnail_4.jpg', 1, '2025-06-24 06:34:40', '2025-06-25 14:02:40'),
(5, 1, 2, 'Casual Hoodie', 'casual-hoodie', 630.00, 570.00, 50.00, '<p>Casual Hoodie by VibeFit is a stylish item crafted for comfort and everyday wear.</p>', '[\"color\",\"Black\",\"material\",\"Mesh & Rubber\",\"size\",\"L\",\"fit\",\"Slim\",\"wash\",\"Machine Washable\"]', 83, '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/sBiZZHtPtnU?si=Kwo6VLP-Hb4HYwnE\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" referrerpolicy=\"strict-origin-when-cross-origin\" allowfullscreen></iframe>', '[\"Casual_Hoodie_image_5_1.jpg\",\"Casual_Hoodie_image_5_2.jpg\",\"Casual_Hoodie_image_5_3.jpg\",\"Casual_Hoodie_image_5_4.jpg\"]', 'Casual_Hoodie_thumbnail_5.jpg', 1, '2025-06-24 06:37:51', '2025-06-27 00:39:43'),
(6, 2, 3, 'Floral Wrap Dress', 'floral-wrap-dress', 550.00, 520.00, 70.00, '<p>Floral Wrap Dress by CoreWear is a stylish item crafted for comfort and everyday wear.</p>', '[\"color\",\"Red\",\"material\",\"Mesh & Rubber\",\"size\",\"M\",\"fit\",\"Athletic\",\"wash\",\"Machine Washable\"]', 40, '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/FDHZlgjJT-o?si=mtYW6mfzbsu7HBfU\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" referrerpolicy=\"strict-origin-when-cross-origin\" allowfullscreen></iframe>', '[\"Floral_Wrap_Dress_image_6_1.png\",\"Floral_Wrap_Dress_image_6_2.png\",\"Floral_Wrap_Dress_image_6_3.png\"]', 'Floral_Wrap_Dress_thumbnail_6.png', 1, '2025-06-24 06:39:37', '2025-06-25 07:52:20'),
(7, 2, 4, 'Oversized Sweater', 'oversized-sweater', 220.00, 180.00, 60.00, '<p>Oversized Sweater by StyleNest is a stylish item crafted for comfort and everyday wear.\"</p>', '[\"color\",\"Red\",\"material\",\"Linen\",\"size\",\"7\",\"fit\",\"Loose\",\"wash\",\"Machine Washable\"]', 94, '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/Jef_gWMJEtk?si=p_AEpMnfNRn-AJHt\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" referrerpolicy=\"strict-origin-when-cross-origin\" allowfullscreen></iframe>', '[\"Oversized_Sweater_image_7_1.png\",\"Oversized_Sweater_image_7_2.png\",\"Oversized_Sweater_image_7_3.png\"]', 'Oversized_Sweater_thumbnail_7.png', 1, '2025-06-24 06:41:54', '2025-06-26 12:53:14'),
(8, 2, 2, 'High-Waisted Mom Jeans', 'high-waisted-mom-jeans', 610.00, 570.00, 30.00, '<p>High-Waisted Mom Jeans by VibeFit is a stylish item crafted for comfort and everyday wear.</p>', '[\"color\",\"Blue\",\"material\",\"Nylon\\/Spandex\",\"size\",\"8\",\"fit\",\"Regular\",\"wash\",\"Machine Washable\"]', 24, '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/_MVY-MDv-IU?si=y4OelRwUwbVo49aH\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" referrerpolicy=\"strict-origin-when-cross-origin\" allowfullscreen></iframe>', '[\"High-Waisted_Mom_Jeans_image_8_1.jpg\",\"High-Waisted_Mom_Jeans_image_8_2.jpg\",\"High-Waisted_Mom_Jeans_image_8_3.jpg\",\"High-Waisted_Mom_Jeans_image_8_4.jpg\"]', 'High-Waisted_Mom_Jeans_thumbnail_8.jpg', 1, '2025-06-24 06:47:33', '2025-06-25 07:40:56'),
(9, 2, 3, 'Crop Top & Skirt Set', 'crop-top-&-skirt-set', 630.00, 580.00, 70.00, '<p>Crop Top &amp; Skirt Set by CoreWear is a stylish item crafted for comfort and everyday wear.</p>', '[\"color\",\"Red\",\"material\",\"Denim\",\"size\",\"6\",\"fit\",\"Regular\",\"wash\",\"Machine Washable\"]', 25, '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/7gSjgsRgDYw?si=Z-Qk980pyHhJFZwQ\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" referrerpolicy=\"strict-origin-when-cross-origin\" allowfullscreen></iframe>', '[\"Crop_Top___Skirt_Set_image_9_1.jpg\",\"Crop_Top___Skirt_Set_image_9_2.jpg\",\"Crop_Top___Skirt_Set_image_9_3.jpg\",\"Crop_Top___Skirt_Set_image_9_4.jpg\"]', 'Crop_Top___Skirt_Set_thumbnail_9.jpg', 1, '2025-06-24 06:50:26', '2025-06-26 12:42:39'),
(10, 2, 1, 'Leather Blazer', 'leather-blazer', 660.00, 590.00, 60.00, '<p>Leather Blazer by MetroMode is a stylish item crafted for comfort and everyday wear.</p>', '[\"color\",\"Black\",\"material\",\"Polyester Blend\",\"size\",\"M\",\"fit\",\"Slim\",\"wash\",\"Machine Washable\"]', 45, '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/pGDxyycoUKg?si=yx_BeB88TJogIcWD\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" referrerpolicy=\"strict-origin-when-cross-origin\" allowfullscreen></iframe>', '[\"Leather_Blazer_image_10_1.png\",\"Leather_Blazer_image_10_2.png\",\"Leather_Blazer_image_10_3.png\",\"Leather_Blazer_image_10_4.png\"]', 'Leather_Blazer_thumbnail_10.png', 1, '2025-06-24 06:52:29', '2025-06-25 04:40:11'),
(11, 3, 2, 'AirFlex Running Shoes', 'airflex-running-shoes', 440.00, 360.00, 60.00, '<p>AirFlex Running Shoes by VibeFit is a stylish item crafted for comfort and everyday wear.</p>', '[\"color\",\"White\",\"material\",\"Mesh & Rubber\",\"size\",\"8\",\"fit\",\"Regular\",\"wash\",\"Machine Washable\"]', 36, '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/nBQp7bbaqa8\" title=\"Puma Basket Classic LFS Sneaker white (On-Feet) @Stylefile\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" referrerpolicy=\"strict-origin-when-cross-origin\" allowfullscreen></iframe>', '[\"AirFlex_Running_Shoes_image_11_1.png\",\"AirFlex_Running_Shoes_image_11_2.png\",\"AirFlex_Running_Shoes_image_11_3.png\"]', 'AirFlex_Running_Shoes_thumbnail_11.png', 1, '2025-06-24 07:15:57', '2025-06-25 04:31:20'),
(12, 3, 1, 'Classic White Sneakers', 'classic-white-sneakers', 210.00, 120.00, 40.00, '<p>Classic White Sneakers by MetroMode is a stylish item crafted for comfort and everyday wear.</p>', '[\"color\",\"White\",\"material\",\"Mesh & Rubber\",\"size\",\"L\",\"fit\",\"Regular\",\"wash\",\"Machine Washable\"]', 44, '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/nBQp7bbaqa8?si=fMKx0DcJ3TAxuBch\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" referrerpolicy=\"strict-origin-when-cross-origin\" allowfullscreen></iframe>', '[\"Classic_White_Sneakers_image_12_1.png\",\"Classic_White_Sneakers_image_12_2.png\",\"Classic_White_Sneakers_image_12_3.png\"]', 'Classic_White_Sneakers_thumbnail_12.png', 1, '2025-06-24 07:20:27', '2025-06-25 04:15:34'),
(13, 3, 2, 'Ankle Boots', 'ankle-boots', 330.00, 300.00, 70.00, '<p>Ankle Boots by VibeFit is a stylish item crafted for comfort and everyday wear.</p>', '[\"color\",\"Black\",\"material\",\"Fleece\",\"size\",\"XL\",\"fit\",\"Slim\",\"wash\",\"Machine Washable\"]', 28, '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/nz8MR3ihsxw?si=80_piEpKG8MmOVHE\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" referrerpolicy=\"strict-origin-when-cross-origin\" allowfullscreen></iframe>', '[\"Ankle_Boots_image_13_1.png\",\"Ankle_Boots_image_13_2.png\",\"Ankle_Boots_image_13_3.png\"]', 'Ankle_Boots_thumbnail_13.png', 1, '2025-06-24 07:31:57', '2025-06-25 04:09:40'),
(14, 3, 5, 'Slide Sandals', 'slide-sandals', 630.00, 550.00, 60.00, '<p>Slide Sandals by UrbanEdge is a stylish item crafted for comfort and everyday wear.</p>', '[\"color\",\"Black\",\"material\",\"Denim\",\"size\",\"9\",\"fit\",\"Regular\",\"wash\",\"Machine Washable\"]', 97, '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/B3ZRiMBX8IA?si=mhcHRtkeF3LT8cay\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" referrerpolicy=\"strict-origin-when-cross-origin\" allowfullscreen></iframe>', '[\"Slide_Sandals_image_14_1.png\",\"Slide_Sandals_image_14_2.png\",\"Slide_Sandals_image_14_3.png\",\"Slide_Sandals_image_14_4.png\"]', 'Slide_Sandals_thumbnail_14.png', 1, '2025-06-24 07:33:56', '2025-06-25 03:52:03'),
(15, 3, 1, 'Platform Heels', 'platform-heels', 760.00, 700.00, 50.00, '<p>Platform Heels by MetroMode is a stylish item crafted for comfort and everyday wear.</p>', '[\"color\",\"Black\",\"material\",\"Linen\",\"size\",\"6\",\"fit\",\"Athletic\",\"wash\",\"Machine Washable\"]', 36, '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/LFj1N21ykss?si=hg_EAg1dP9zcf8_t\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" referrerpolicy=\"strict-origin-when-cross-origin\" allowfullscreen></iframe>', '[\"Platform_Heels_image_15_1.png\",\"Platform_Heels_image_15_2.png\",\"Platform_Heels_image_15_3.png\"]', 'Platform_Heels_thumbnail_15.png', 1, '2025-06-24 07:39:09', '2025-06-25 03:43:24'),
(16, 4, 1, 'Smart Leather Wallet', 'smart-leather-wallet', 230.00, 190.00, 60.00, '<p>Smart Leather Wallet by MetroMode is a stylish item crafted for comfort and everyday wear.</p>', '[\"color\",\"Black\",\"material\",\"Nylon\\/Spandex\",\"size\",\"8\",\"fit\",\"Slim\",\"wash\",\"Machine Washable\"]', 77, '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/ezD7ZhfSlOY?si=PJs6Enp_51l61-XL\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" referrerpolicy=\"strict-origin-when-cross-origin\" allowfullscreen></iframe>', '[\"Smart_Leather_Wallet_image_16_1.png\",\"Smart_Leather_Wallet_image_16_2.png\",\"Smart_Leather_Wallet_image_16_3.png\"]', 'Smart_Leather_Wallet_thumbnail_16.png', 1, '2025-06-24 07:40:57', '2025-06-25 03:34:54'),
(17, 4, 2, 'Retro Sunglasses', 'retro-sunglasses', 540.00, 460.00, 40.00, '<p>Retro Sunglasses by VibeFit is a stylish item crafted for comfort and everyday wear.</p>', '[\"color\",\"Black\",\"material\",\"100% Cotton\",\"size\",\"M\",\"fit\",\"Regular\",\"wash\",\"Machine Washable\"]', 80, '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/tz_TjdyTMxE?si=dMtjnWbCfrne8yLG\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" referrerpolicy=\"strict-origin-when-cross-origin\" allowfullscreen></iframe>', '[\"Retro_Sunglasses_image_17_1.png\",\"Retro_Sunglasses_image_17_2.png\",\"Retro_Sunglasses_image_17_3.png\"]', 'Retro_Sunglasses_thumbnail_17.png', 1, '2025-06-24 07:42:31', '2025-06-25 03:28:37'),
(18, 4, 2, 'Canvas Tote Bag', 'canvas-tote-bag', 690.00, 640.00, 50.00, '<p>Canvas Tote Bag by VibeFit is a stylish item crafted for comfort and everyday wear.</p>', '[\"color\",\"Black\",\"material\",\"100% Cotton\",\"size\",\"9\",\"fit\",\"Regular\",\"wash\",\"Machine Washable\"]', 71, '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/DDkbM5eah-c?si=iDIzLAp4ymAif0jl\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" referrerpolicy=\"strict-origin-when-cross-origin\" allowfullscreen></iframe>', '[\"Canvas_Tote_Bag_image_18_1.png\",\"Canvas_Tote_Bag_image_18_2.png\",\"Canvas_Tote_Bag_image_18_3.png\",\"Canvas_Tote_Bag_image_18_4.png\"]', 'Canvas_Tote_Bag_thumbnail_18.png', 1, '2025-06-24 07:44:00', '2025-06-25 03:24:55'),
(19, 4, 4, 'Leather Belt', 'leather-belt', 770.00, 700.00, 70.00, '<p>Leather Belt by StyleNest is a stylish item crafted for comfort and everyday wear.</p>', '[\"color\",\"Black\",\"material\",\"Polyester Blend\",\"size\",\"One Size\",\"fit\",\"Athletic\",\"wash\",\"Machine Washable\"]', 84, '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/MGdiFpOfOgQ?si=1LEAUxScYeurqlfT\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" referrerpolicy=\"strict-origin-when-cross-origin\" allowfullscreen></iframe>', '[\"Leather_Belt_image_19_1.png\",\"Leather_Belt_image_19_2.png\",\"Leather_Belt_image_19_3.png\"]', 'Leather_Belt_thumbnail_19.png', 1, '2025-06-24 07:45:28', '2025-06-25 03:18:20'),
(20, 4, 2, 'Silk Printed Scarf', 'silk-printed-scarf', 520.00, 440.00, 30.00, '<p>Silk Printed Scarf by VibeFit is a stylish item crafted for comfort and everyday wear.</p>', '[\"color\",\"Charcoal\",\"material\",\"Fleece\",\"size\",\"One Size\",\"fit\",\"Athletic\",\"wash\",\"Machine Washable\"]', 22, '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/FGZvEVCEC_w?si=Ysk_l2hnykq7L--B\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" referrerpolicy=\"strict-origin-when-cross-origin\" allowfullscreen></iframe>', '[\"Silk_Printed_Scarf_image_20_1.png\",\"Silk_Printed_Scarf_image_20_2.png\"]', 'Silk_Printed_Scarf_thumbnail_20.png', 1, '2025-06-25 00:29:17', '2025-06-25 03:12:06'),
(21, 5, 5, 'Compression Leggings', 'compression-leggings', 330.00, 240.00, 60.00, '<p>Compression Leggings by UrbanEdge is a stylish item crafted for comfort and everyday wear.</p>', '[\"color\",\"Green\",\"material\",\"Linen\",\"size\",\"One Size\",\"fit\",\"Athletic\",\"wash\",\"Machine Washable\"]', 62, '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/QZ-c2UujOh8?si=PaWoFC3Ya6Bnl0f-\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" referrerpolicy=\"strict-origin-when-cross-origin\" allowfullscreen></iframe>', '[\"Compression_Leggings_image_21_1.jpg\",\"Compression_Leggings_image_21_2.jpg\",\"Compression_Leggings_image_21_3.jpg\",\"Compression_Leggings_image_21_4.jpg\"]', 'Compression_Leggings_thumbnail_21.jpg', 1, '2025-06-25 00:35:19', '2025-06-25 02:32:01'),
(22, 5, 4, 'Performance Tee', 'performance-tee', 680.00, 590.00, 60.00, '<p>Performance Tee by StyleNest is a stylish item crafted for comfort and everyday wear.</p>', '[\"color\",\"Green\",\"material\",\"Genuine Leather\",\"size\",\"XS\",\"fit\",\"Regular\",\"wash\",\"Machine Washable\"]', 18, '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/56xR1C4_uAM?si=Z0hK2bp22Sk7Bhwl\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" referrerpolicy=\"strict-origin-when-cross-origin\" allowfullscreen></iframe>', '[\"Performance_Tee_image_22_1.png\",\"Performance_Tee_image_22_2.png\",\"Performance_Tee_image_22_3.png\",\"Performance_Tee_image_22_4.png\"]', 'Performance_Tee_thumbnail_22.png', 1, '2025-06-25 00:37:28', '2025-06-25 02:22:03'),
(23, 5, 1, 'Sports Bra & Shorts Set', 'sports-bra-&-shorts-set', 230.00, 200.00, 50.00, '<p>Sports Bra &amp; Shorts Set by MetroMode is a stylish item crafted for comfort and everyday wear.</p>', '[\"color\",\"Red\",\"material\",\"Mesh & Rubber\",\"size\",\"One Size\",\"fit\",\"Athletic\",\"wash\",\"Machine Washable\"]', 24, '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/itaFEJusKik?si=6vzx4ml5HwQTZ-nF\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" referrerpolicy=\"strict-origin-when-cross-origin\" allowfullscreen></iframe>', '[\"Sports_Bra___Shorts_Set_image_23_1.jpg\",\"Sports_Bra___Shorts_Set_image_23_2.jpg\",\"Sports_Bra___Shorts_Set_image_23_3.jpg\"]', 'Sports_Bra___Shorts_Set_thumbnail_23.jpg', 1, '2025-06-25 00:39:17', '2025-06-25 02:13:20'),
(24, 5, 4, 'Zip-Up Track Jacket', 'zip-up-track-jacket', 680.00, 600.00, 60.00, '<p>Zip-Up Track Jacket by StyleNest is a stylish item crafted for comfort and everyday wear.</p>', '[\"color\",\"Black\",\"material\",\"100% Cotton\",\"size\",\"L\",\"fit\",\"Regular\",\"wash\",\"Machine Washable\"]', 55, '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/8icLbrMaUaQ?si=n5srhMgZ4JuMMvS8\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" referrerpolicy=\"strict-origin-when-cross-origin\" allowfullscreen></iframe>', '[\"Zip-Up_Track_Jacket_image_24_1.jpg\",\"Zip-Up_Track_Jacket_image_24_2.jpg\",\"Zip-Up_Track_Jacket_image_24_3.jpg\",\"Zip-Up_Track_Jacket_image_24_4.jpg\",\"Zip-Up_Track_Jacket_image_24_5.jpg\"]', 'Zip-Up_Track_Jacket_thumbnail_24.jpg', 1, '2025-06-25 00:41:28', '2025-06-25 02:04:43'),
(25, 5, 1, 'Sleeveless Gym Hoodie', 'sleeveless-gym-hoodie', 640.00, 550.00, 30.00, '<p>Sleeveless Gym Hoodie by MetroMode is a stylish item crafted for comfort and everyday wear.</p>', '[\"color\",\"Gray\",\"material\",\"Mesh & Rubber\",\"size\",\"8\",\"fit\",\"Athletic\",\"wash\",\"Machine Washable\"]', 40, '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/2gS22MVMkKc?si=SetpSgb0v0yYQWem\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" referrerpolicy=\"strict-origin-when-cross-origin\" allowfullscreen></iframe>', '[\"Sleeveless_Gym_Hoodie_image_25_1.jpg\",\"Sleeveless_Gym_Hoodie_image_25_2.jpg\"]', 'Sleeveless_Gym_Hoodie_thumbnail_25.jpg', 1, '2025-06-25 00:43:45', '2025-06-25 02:02:01');

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `review` text NOT NULL,
  `rating` tinyint(3) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `reviews`
--

INSERT INTO `reviews` (`id`, `user_id`, `product_id`, `review`, `rating`, `created_at`, `updated_at`) VALUES
(1, 3, 25, 'Nice product, well fitt and metiral i very comfertable', 4, '2025-06-26 00:59:26', '2025-06-26 00:59:26');

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `transaction_id` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  `amount` decimal(10,2) NOT NULL,
  `transaction_details` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`transaction_details`)),
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `transactions`
--

INSERT INTO `transactions` (`id`, `user_id`, `product_id`, `transaction_id`, `status`, `amount`, `transaction_details`, `created_at`, `updated_at`) VALUES
(1, 3, 24, 'T2506260136331680302078', 'PENDING', 768.00, '{\"success\":true,\"code\":\"PAYMENT_PENDING\",\"message\":\"Your payment is in pending state.\",\"data\":{\"merchantId\":\"PGTESTPAYUAT86\",\"merchantTransactionId\":\"MT7850590068188104\",\"transactionId\":\"T2506260136331680302078\",\"amount\":76800,\"state\":\"PENDING\",\"responseCode\":null}}', '2025-06-25 14:37:39', '2025-06-25 14:37:39'),
(2, 3, 24, 'T2506260138014880302401', 'COMPLETED', 768.00, '{\"success\":true,\"code\":\"PAYMENT_SUCCESS\",\"message\":\"Your payment is successful.\",\"data\":{\"merchantId\":\"PGTESTPAYUAT86\",\"merchantTransactionId\":\"MT7850590068188104\",\"transactionId\":\"T2506260138014880302401\",\"amount\":76800,\"state\":\"COMPLETED\",\"responseCode\":\"SUCCESS\",\"paymentInstrument\":{\"type\":\"CARD\",\"cardType\":\"CREDIT_CARD\",\"bankTransactionId\":null,\"arn\":\"12121214455\",\"authRefId\":\"Dummy-auth12345\",\"bankId\":null,\"brn\":\"B12345\"}}}', '2025-06-25 14:38:57', '2025-06-25 14:38:57'),
(3, 3, 25, 'T2506260141067420302245', 'COMPLETED', 679.00, '{\"success\":true,\"code\":\"PAYMENT_SUCCESS\",\"message\":\"Your payment is successful.\",\"data\":{\"merchantId\":\"PGTESTPAYUAT86\",\"merchantTransactionId\":\"MT7850590068188104\",\"transactionId\":\"T2506260141067420302245\",\"amount\":67900,\"state\":\"COMPLETED\",\"responseCode\":\"SUCCESS\",\"paymentInstrument\":{\"type\":\"CARD\",\"cardType\":\"CREDIT_CARD\",\"bankTransactionId\":null,\"arn\":\"12121214455\",\"authRefId\":\"Dummy-auth12345\",\"bankId\":null,\"brn\":\"B12345\"}}}', '2025-06-25 14:41:46', '2025-06-25 14:41:46'),
(4, 3, 25, 'T2506261134487260302863', 'PENDING', 679.00, '{\"success\":true,\"code\":\"PAYMENT_PENDING\",\"message\":\"Your payment is in pending state.\",\"data\":{\"merchantId\":\"PGTESTPAYUAT86\",\"merchantTransactionId\":\"MT7850590068188104\",\"transactionId\":\"T2506261134487260302863\",\"amount\":67900,\"state\":\"PENDING\",\"responseCode\":null}}', '2025-06-26 00:35:53', '2025-06-26 00:35:53');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `mobile_number` varchar(255) DEFAULT NULL,
  `user_role` varchar(255) NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `remember_token` varchar(100) DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `password`, `mobile_number`, `user_role`, `is_active`, `remember_token`, `email_verified_at`, `created_at`, `updated_at`) VALUES
(1, 'admin@gmail.com', '$2y$12$xAavkm.tv9y.7J4ZiVD93eCRo6MNY1oPMiTqlB3OaLLBnR1wzuvF6', NULL, '1', 1, NULL, NULL, '2025-06-02 11:35:32', '2025-06-02 11:35:32'),
(2, 'rohan1234@coasah.com', '$2y$12$nUXb0s4Au/T3ISzDfEgfXeS2bkwezWsWQ/X9HJsOv57dqD/QqXsD.', '9876543210', '3', 1, NULL, NULL, '2025-06-24 01:41:50', '2025-06-24 01:47:34'),
(3, 'suresh1234@email.com', '$2y$12$sRC7OkNzh/oj7XpZ4L5OBuGbC3yeECmJrAVOVPL7m9NPAdOz4CGJ2', '98765433210', '3', 1, 'pdABot0uduU9l6RzG4It9G3VOBjonQPnZKWiKNHBaSMrpudGsZSDopZGKpxG', NULL, '2025-06-24 01:42:48', '2025-06-24 02:14:11'),
(4, 'mohit123@email.com', '$2y$12$rDzrBWqB4COdHJHAkyaBM.f5duO03W7ueOHeY0S52oLDGrPsI393O', '9876543210', '3', 1, NULL, NULL, '2025-06-24 01:43:10', '2025-06-24 02:15:39'),
(5, 'priya123@email.com', '$2y$12$bSYtum75tVok3bA.6CI/E.qgWgS5RENHEsS6dp4k7Qvo7LYs.wHq.', '9876543210', '3', 1, NULL, NULL, '2025-06-24 01:43:34', '2025-06-24 02:18:34'),
(6, 'komal123@email.com', '$2y$12$VZbGxTXkJqCBQ3d4Zw/raOW6JXE.t9hG0p7CnnIh9OTPhjTWemZaq', '9876543210', '3', 1, NULL, NULL, '2025-06-24 01:43:56', '2025-06-24 02:20:07'),
(7, 'ruhani123@email.com', '$2y$12$Wk7yuWMaVdxWdCEE.mLVQO/FjVmuyozA97FufO7qUZ3A3xDkyB73S', '9876543210', '3', 1, NULL, NULL, '2025-06-24 01:44:18', '2025-06-26 04:47:35');

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
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `carts`
--
ALTER TABLE `carts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `carts_user_id_foreign` (`user_id`),
  ADD KEY `carts_product_id_foreign` (`product_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_slug_unique` (`slug`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `customers_user_id_foreign` (`user_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `orders_order_number_unique` (`order_number`),
  ADD KEY `orders_user_id_foreign` (`user_id`),
  ADD KEY `orders_product_id_foreign` (`product_id`),
  ADD KEY `orders_transaction_id_foreign` (`transaction_id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `products_slug_unique` (`slug`) USING HASH,
  ADD KEY `products_categories_id_foreign` (`categories_id`),
  ADD KEY `products_brand_id_foreign` (`brand_id`),
  ADD KEY `products_slug_index` (`slug`(768));

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id`),
  ADD KEY `reviews_user_id_foreign` (`user_id`),
  ADD KEY `reviews_product_id_foreign` (`product_id`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `transactions_user_id_foreign` (`user_id`),
  ADD KEY `transactions_product_id_foreign` (`product_id`);

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
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `carts`
--
ALTER TABLE `carts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `carts`
--
ALTER TABLE `carts`
  ADD CONSTRAINT `carts_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `carts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `customers`
--
ALTER TABLE `customers`
  ADD CONSTRAINT `customers_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `orders_transaction_id_foreign` FOREIGN KEY (`transaction_id`) REFERENCES `transactions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `orders_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_brand_id_foreign` FOREIGN KEY (`brand_id`) REFERENCES `brands` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `products_categories_id_foreign` FOREIGN KEY (`categories_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `reviews`
--
ALTER TABLE `reviews`
  ADD CONSTRAINT `reviews_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `reviews_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `transactions`
--
ALTER TABLE `transactions`
  ADD CONSTRAINT `transactions_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `transactions_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
