-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 10, 2022 at 03:44 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ecom`
--

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `brand_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`id`, `brand_name`, `created_at`, `updated_at`) VALUES
(1, 'Samsung', NULL, NULL),
(2, 'Apple', NULL, NULL),
(3, 'OPPO', NULL, NULL),
(4, 'HP', NULL, '2022-04-27 06:45:58'),
(5, 'Dell', NULL, NULL),
(7, 'ASUS', NULL, NULL),
(8, 'Lenovo', NULL, NULL),
(9, 'Entwino', NULL, NULL),
(10, 'LG', NULL, NULL),
(11, 'Canon', NULL, NULL),
(12, 'IFB', NULL, NULL),
(13, 'Seven Rocks', NULL, NULL),
(14, 'Reebok', NULL, NULL),
(15, 'Puma', NULL, NULL),
(16, 'Crocs', NULL, NULL),
(17, 'Marvel Avengers', NULL, NULL),
(18, 'Himalaya', NULL, NULL),
(19, 'Flipkart', NULL, NULL),
(20, 'HealthKart', NULL, NULL),
(21, 'Manogyam', NULL, NULL),
(22, 'Penguin', NULL, '2022-05-01 09:09:22'),
(23, 'WebKreature', NULL, NULL),
(24, 'Audionic', NULL, NULL),
(25, 'Casio', NULL, NULL),
(26, 'Lauret Blanc', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cart_orders`
--

CREATE TABLE `cart_orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `invoice_no` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `size` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `quantity` int(10) UNSIGNED NOT NULL,
  `unit_price` decimal(8,2) NOT NULL,
  `total_price` decimal(10,2) NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_method` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `delivery_address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `delivery_charge` decimal(8,2) NOT NULL,
  `order_date` date NOT NULL,
  `order_time` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_status` tinyint(1) NOT NULL DEFAULT 0,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cart_orders`
--

INSERT INTO `cart_orders` (`id`, `invoice_no`, `product_name`, `product_code`, `size`, `color`, `quantity`, `unit_price`, `total_price`, `email`, `name`, `payment_method`, `delivery_address`, `city`, `delivery_charge`, `order_date`, `order_time`, `order_status`, `payment_status`, `image`, `created_at`, `updated_at`) VALUES
(2, 'Easy1650544070922', 'Lenovo ideacentre A340-24IWL Core i3', '33243423', 'Size: Large', 'Color: Grey', 2, '1500.00', '3000.00', 'ageorge28@gmail.com', 'Anand', 'Cash On Delivery', 'Test Address', 'Dhaka', '0.00', '2022-04-21', '05:57:51pm', 'Pending', 0, '1731618076449483.jpg', NULL, NULL),
(3, 'Easy1650544070922', 'HP Pavilion Ryzen 5 Hexa Core 5600H', '54654654', 'Size: L', 'Color: Silver', 1, '1500.00', '1500.00', 'ageorge28@gmail.com', 'Anand', 'Cash On Delivery', 'Test Address', 'Dhaka', '0.00', '2022-04-21', '05:57:51pm', 'Completed', 0, '1731519039827578.jpg', NULL, NULL),
(4, 'Easy1650544210173', 'HP Pavilion Ryzen 5 Hexa Core 5600H', '54654654', 'Size: L', 'Color: Black', 1, '1500.00', '1500.00', 'ageorge28@gmail.com', 'Anand', 'Cash On Delivery', 'Test Address 2', 'Dhaka', '0.00', '2022-04-21', '06:00:10pm', 'Completed', 0, '1731519039827578.jpg', NULL, '2022-04-28 07:36:30'),
(6, 'Easy1650548728377', 'HP Pavilion Ryzen 5 Hexa Core 5600H', '54654654', 'Size: L', 'Color: Black', 2, '1500.00', '3000.00', 'ageorge28@gmail.com', 'Anand', 'Stripe', 'Test Address 5', 'Punjab', '0.00', '2022-04-21', '07:15:28pm', 'Processing', 0, '1731519039827578.jpg', NULL, '2022-04-28 07:31:17'),
(7, 'Easy1651142626054', 'Lenovo ideacentre A340-24IWL Core i3', '33243423', 'Size: Large', 'Color: Grey', 1, '1500.00', '1500.00', 'ageorge28@gmail.com', 'Anand', 'Stripe', 'Kuwait', 'Goa', '0.00', '2022-04-28', '04:13:46pm', 'Pending', 0, '1731618076449483.jpg', NULL, NULL),
(9, 'Easy1651316445315', 'HP Pavilion Ryzen 5 Hexa Core 5600H', '76543', 'Size: Large', 'Color: Black', 1, '59990.00', '59990.00', 'ageorge28@gmail.com', 'Test', 'Stripe', 'Test', 'Gujarat', '0.00', '2022-04-30', '04:30:45pm', 'Pending', 0, '1731519039827578.jpg', NULL, NULL),
(10, 'Easy1651317841435', 'HP Pavilion Ryzen 5 Hexa Core 5600H', '76543', 'Size: Large', 'Color: Black', 1, '59990.00', '59990.00', 'ageorge28@gmail.com', 'Test', 'Stripe', 'Test', 'Assam', '0.00', '2022-04-30', '04:54:02pm', 'Pending', 0, '1731519039827578.jpg', NULL, NULL),
(15, 'Easy1651389831288', 'HP Pavilion Ryzen 5 Hexa Core 5600H', '76543', 'Size: Large', 'Color: Black', 1, '59990.00', '59990.00', 'ageorge28@gmail.com', 'Test', 'Stripe', 'Test', 'Himachal Pradesh', '0.00', '2022-05-01', '12:53:51pm', 'Pending', 1, '1731519039827578.jpg', NULL, '2022-05-01 04:32:38'),
(16, 'Easy1651495275664', 'Lenovo ideacentre A340-24IWL Core i3', '76568', 'Size: Large', 'Color: Black', 1, '44440.00', '44440.00', 'ageorge28@gmail.com', 'Anand', 'Stripe', 'Kuwait', 'Ahmednagar', '0.00', '2022-05-02', '06:11:14pm', 'Pending', 0, '1731618076449483.jpg', NULL, NULL),
(17, 'Easy1651495275664', 'SAMSUNG Crystal 4K Pro 108 cm (43 inch) Ultra HD (4K) LED Smart TV', '352566', 'Size: Large', 'Color: Black', 1, '35940.00', '35940.00', 'ageorge28@gmail.com', 'Anand', 'Stripe', 'Kuwait', 'Ahmednagar', '0.00', '2022-05-02', '06:11:14pm', 'Pending', 0, '1731618815235750.jpg', NULL, NULL),
(18, 'Easy1651495275664', 'Striped Men Polo Neck White T-Shirt', '765789', 'Size: Large', 'Color: Green', 1, '280.00', '280.00', 'ageorge28@gmail.com', 'Anand', 'Stripe', 'Kuwait', 'Ahmednagar', '0.00', '2022-05-02', '06:11:14pm', 'Pending', 1, '1731622380605233.jpg', NULL, '2022-05-02 19:41:32'),
(19, 'Easy1651752492966', 'LG 108 cm (43 inch) Ultra HD (4K) LED Smart TV', '543677', 'Size: Large', 'Color: Black', 1, '32940.00', '32940.00', 'ageorge28@yahoo.com', 'Anand', 'Stripe', 'Test', 'Agra', '0.00', '2022-05-05', '05:38:14pm', 'Pending', 1, '1731618649225301.jpg', NULL, '2022-05-05 19:08:26'),
(20, 'Easy1651759172962', 'Canon EOS 1500D DSLR Camera Body+ 18-55 mm IS II Lens', '765765', 'Size: Medium', 'Color: Black', 1, '36449.00', '36449.00', 'ageorge28@gmail.com', 'Anand', 'Stripe', 'Kuwait', 'Agartala', '0.00', '2022-05-05', '07:29:31pm', 'Pending', 1, '1731619021049115.jpg', NULL, '2022-05-05 20:59:44'),
(21, 'Easy1652252581192', 'Stride Runner Running Shoes For Men', '6856865', 'Size: Medium', 'Color: Navy Blue', 2, '1028.00', '2056.00', 'ageorge28@gmail.com', 'Test', 'Stripe', 'Test', 'Agartala', '0.00', '2022-05-11', '12:33:00pm', 'Pending', 1, '1731622617812655.jpg', NULL, '2022-05-11 07:03:10');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `category_name`, `category_image`, `created_at`, `updated_at`) VALUES
(1, 'Mobiles', '1731169183964137.png', NULL, '2022-04-26 08:13:08'),
(2, 'Computer', '1731169252734999.png', NULL, '2022-04-26 08:14:13'),
(3, 'Electronics', '1731169259638931.png', NULL, '2022-04-26 08:14:20'),
(4, 'TVs & Appliances', '1731169265557558.png', NULL, '2022-04-26 08:14:26'),
(5, 'Fashion', '1731169273315324.png', NULL, '2022-04-26 08:14:33'),
(6, 'Baby & Kids', '1731169280215139.png', NULL, '2022-04-26 08:14:39'),
(7, 'Home & Furniture', '1731169287208738.png', NULL, '2022-04-26 08:14:46'),
(8, 'Sports, Books', '1731169293249362.png', NULL, '2022-04-26 08:14:52'),
(9, 'Mobile Accessories', '1731169302603416.png', NULL, '2022-04-26 08:15:01'),
(10, 'Others', '1731169319686698.png', NULL, '2022-04-26 08:15:17');

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact_date` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact_time` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`id`, `name`, `email`, `message`, `contact_date`, `contact_time`, `created_at`, `updated_at`) VALUES
(1, 'Test', 'test@gmail.com', 'Test', '05-04-2022', '12:24:46pm', NULL, NULL),
(2, 'Test', 'test2@gmail.com', 'Test 2', '05-04-2022', '01:06:08pm', NULL, NULL),
(3, 'Test', 'test3@gmail.com', 'Test 3', '05-04-2022', '01:06:32pm', NULL, NULL),
(5, 'Test', 'test5@gmail.com', 'Test 5', '05-04-2022', '01:11:11pm', NULL, NULL),
(7, 'Test', 'test6@gmail.com', 'Test 6', '05-04-2022', '01:18:23pm', NULL, NULL),
(8, 'Test', 'test7@gmail.com', 'Test 7', '05-04-2022', '01:20:15pm', NULL, NULL),
(9, 'Test', 'test8@gmail.com', 'Test 8', '05-04-2022', '01:34:19pm', NULL, NULL),
(11, 'Raju', 'raju@gmail.com', 'Test Message', '27-04-2022', '07:06:37pm', NULL, NULL),
(12, 'George', 'ageorge28@gmail.com', 'Anand George Oommen', '02-05-2022', '06:12:48pm', NULL, NULL);

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
-- Table structure for table `favourites`
--

CREATE TABLE `favourites` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `favourites`
--

INSERT INTO `favourites` (`id`, `product_id`, `product_name`, `image`, `product_code`, `email`, `created_at`, `updated_at`) VALUES
(9, 50, 'SAMSUNG Crystal 4K Pro 108 cm (43 inch) Ultra HD (4K) LED Smart TV with Voice Search', '1731618815235750.jpg', '352566', 'ageorge28@gmail.com', NULL, NULL),
(11, 59, 'Boys Printed Cotton Blend, Polycotton T Shirt', '1731623595641819.jpg', '434677', 'admin@gmail.com', NULL, NULL),
(12, 55, 'Striped Men Polo Neck White T-Shirt', '1731622380605233.jpg', '765789', 'admin@gmail.com', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `home_sliders`
--

CREATE TABLE `home_sliders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `slider_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `home_sliders`
--

INSERT INTO `home_sliders` (`id`, `slider_image`, `created_at`, `updated_at`) VALUES
(1, '1731177378675027.jpg', NULL, '2022-04-26 10:23:23'),
(2, '1731177388990705.jpg', NULL, '2022-04-26 10:23:33'),
(3, '1731177395431040.jpg', NULL, '2022-04-26 10:23:39');

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
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2014_10_12_200000_add_two_factor_columns_to_users_table', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(6, '2022_04_04_070734_create_sessions_table', 1),
(7, '2022_04_04_073324_create_visitors_table', 2),
(8, '2022_04_05_064248_create_contacts_table', 3),
(9, '2022_04_05_101541_create_site_infos_table', 4),
(10, '2022_04_05_143120_create_categories_table', 5),
(11, '2022_04_05_143411_create_subcategories_table', 6),
(12, '2022_04_06_090031_create_product_lists_table', 7),
(13, '2022_04_07_100053_create_home_sliders_table', 8),
(14, '2022_04_10_140719_create_product_details_table', 9),
(15, '2022_04_11_093952_create_notifications_table', 10),
(16, '2016_06_01_000001_create_oauth_auth_codes_table', 11),
(17, '2016_06_01_000002_create_oauth_access_tokens_table', 11),
(18, '2016_06_01_000003_create_oauth_refresh_tokens_table', 11),
(19, '2016_06_01_000004_create_oauth_clients_table', 11),
(20, '2016_06_01_000005_create_oauth_personal_access_clients_table', 11),
(21, '2022_04_16_084027_create_product_reviews_table', 12),
(22, '2022_04_20_061046_create_product_carts_table', 13),
(23, '2022_04_20_125553_create_favourites_table', 14),
(24, '2022_04_21_103238_create_cart_orders_table', 15),
(25, '2022_04_27_093147_create_brands_table', 16);

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`id`, `title`, `message`, `date`, `created_at`, `updated_at`) VALUES
(1, 'Test 1 Lorem Ipsum is simply dummy text of the printing', 'Test 1 Each course has been hand-tailored to teach a specific skill. I hope you agree! Whether you’re trying to learn a new skill from scratch or want to refresh your memory on something you’ve learned in the past, you’ve come to the right place.', '22/12/2010', NULL, NULL),
(2, 'Test 2 Lorem Ipsum is simply dummy text of the printing', 'Test 2 Each course has been hand-tailored to teach a specific skill. I hope you agree! Whether you’re trying to learn a new skill from scratch or want to refresh your memory on something you’ve learned in the past, you’ve come to the right place.', '23/10/2021', NULL, NULL),
(3, 'Test 3 Lorem Ipsum is simply dummy text of the printing', 'Test 3 Each course has been hand-tailored to teach a specific skill. I hope you agree! Whether you’re trying to learn a new skill from scratch or want to refresh your memory on something you’ve learned in the past, you’ve come to the right place.', '24/10/2021', NULL, NULL),
(4, 'Test 4 Lorem Ipsum is simply dummy text of the printing', 'Test 4 Each course has been hand-tailored to teach a specific skill. I hope you agree! Whether you’re trying to learn a new skill from scratch or want to refresh your memory on something you’ve learned in the past, you’ve come to the right place.', '25/10/2021', NULL, NULL),
(5, 'Test 5 Lorem Ipsum is simply dummy text of the printing', 'Test 5 Each course has been hand-tailored to teach a specific skill. I hope you agree! Whether you’re trying to learn a new skill from scratch or want to refresh your memory on something you’ve learned in the past, you’ve come to the right place.', '26/10/2021', NULL, NULL),
(6, 'Test 6 Lorem Ipsum is simply dummy text of the printing', 'Test 6 Each course has been hand-tailored to teach a specific skill. I hope you agree! Whether you’re trying to learn a new skill from scratch or want to refresh your memory on something you’ve learned in the past, you’ve come to the right place.', '27/10/2021', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_access_tokens`
--

INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
('011e3f8ed89473e9fa3b9ee6085a63b98d4413ffe249369cd44db85ae44fbc136118019888768de6', 2, 1, 'app', '[]', 0, '2022-04-13 13:04:04', '2022-04-13 13:04:04', '2023-04-13 16:04:04'),
('01f8b90237ce9131595f083bcfe8a2a6d309bd32d7755d4092907b63d0b1c5dac858f763b8589a96', 1, 1, 'app', '[]', 0, '2022-05-02 04:13:35', '2022-05-02 04:13:35', '2023-05-02 07:13:35'),
('06a637898bbcb866c1064e9e5f8810d06ca4aea2a79b7a96ce03937a4841e3aa7e0e7f7f3c3e2883', 1, 1, 'app', '[]', 0, '2022-04-13 10:46:08', '2022-04-13 10:46:08', '2023-04-13 13:46:08'),
('10ec5ca6bd3e1bf4b86dd8300be34b0c267d073e69c8c6642edec6c7d588dcf0cf7d7a8a7bda40e4', 2, 1, 'app', '[]', 0, '2022-05-02 03:58:58', '2022-05-02 03:58:58', '2023-05-02 06:58:58'),
('15d60b8b145aec558bb8ee4d90aa824f0746772bcdaf82555e19bf71f5eb0949697535b43b090a8b', 1, 1, 'app', '[]', 0, '2022-04-20 11:57:59', '2022-04-20 11:57:59', '2023-04-20 14:57:59'),
('161490979f70ab0a95188aea46dd23e5f87013d63b23bdb58cf1b412160ac94d6fb411ec19a4d399', 1, 1, 'app', '[]', 0, '2022-04-13 11:11:01', '2022-04-13 11:11:01', '2023-04-13 14:11:01'),
('16bf83094b963e0e2407f1a17f5a56d9205c906fe83c3858f2b7fdc918895d5e4ae77f0cf5b2fce7', 2, 1, 'app', '[]', 0, '2022-04-24 10:29:27', '2022-04-24 10:29:27', '2023-04-24 13:29:27'),
('184000bf14a2998e82466c0b8b9b6b2eefd230f46edd8186d737147ac44bb459489e88fd19b97e33', 2, 1, 'app', '[]', 0, '2022-04-13 13:09:58', '2022-04-13 13:09:58', '2023-04-13 16:09:58'),
('189a3e1c99ca8a4a81f269ec6697d52e65f35d1222b264a90f354b016e914db9f0826fd98f8fd382', 2, 1, 'app', '[]', 0, '2022-04-13 07:33:14', '2022-04-13 07:33:14', '2023-04-13 10:33:14'),
('1c9825525661de2b8d5883e3b5168a7af1fbb2bf8c260827ad9e822384ee6cae96dbb56b99583f2f', 3, 1, 'app', '[]', 0, '2022-04-13 15:45:07', '2022-04-13 15:45:07', '2023-04-13 18:45:07'),
('1e98027ad2bdb80fc94edb05979c4fcf8cc771735eea7292c0dcfab0d7a16e9bb1695035cfa5b90e', 2, 1, 'app', '[]', 0, '2022-04-13 12:42:25', '2022-04-13 12:42:25', '2023-04-13 15:42:25'),
('225444af7c4e2f2ab25b9c2d0759abf082dff5eebbf528129ad37def2091a04b84ab3fb395f1d231', 2, 1, 'app', '[]', 0, '2022-04-13 10:37:40', '2022-04-13 10:37:40', '2023-04-13 13:37:40'),
('2be7f50fbca8c724a070e11459813e02849f40c1f4deba8be338d9cfc83d8da83e200fc85edfe142', 2, 1, 'app', '[]', 0, '2022-05-02 19:46:04', '2022-05-02 19:46:04', '2023-05-02 12:46:04'),
('2dba36444ee58f67871dc4b40e716b2653666d638a2590d015e5fcb35e35c02776d8ba5185487141', 2, 1, 'app', '[]', 0, '2022-05-02 07:19:44', '2022-05-02 07:19:44', '2023-05-02 10:19:44'),
('310073c7a2504ffc8da688ef953739a28ac6eee34ad6aacbab1bc2503d05f43a1522083db4144009', 1, 1, 'app', '[]', 0, '2022-04-13 10:45:14', '2022-04-13 10:45:14', '2023-04-13 13:45:13'),
('32ae83b7ca6a69305b0fe2dc74845ceb4786f0c70b9456c910d9fc9aea7341921ab70f9cca2bee80', 2, 1, 'app', '[]', 0, '2022-04-13 11:14:03', '2022-04-13 11:14:03', '2023-04-13 14:14:03'),
('3442431298b916b3900aaae14ef5ff0990e4368ef0a442f6a643647307cbd88971e6777be69f98f4', 2, 1, 'app', '[]', 0, '2022-04-28 06:22:16', '2022-04-28 06:22:16', '2023-04-28 09:22:16'),
('347fccabe1baf9e3322394e8eb2bb9c7b934c5558bfd3d0c3688c25666ed9011807e1291e9e987f2', 2, 1, 'app', '[]', 0, '2022-04-20 10:29:50', '2022-04-20 10:29:50', '2023-04-20 13:29:50'),
('368850432f0e25c43e934d63f5332de8ba4163f217ac4b0210d108506885ea184c393f4e3726fd4d', 2, 1, 'app', '[]', 0, '2022-04-13 06:35:02', '2022-04-13 06:35:02', '2023-04-13 09:35:02'),
('38143990621fbe44b9dae378c4b3f5f37669f9a36c39870976a9bda7f30e3d1434699427407eaaad', 2, 1, 'app', '[]', 0, '2022-04-14 09:29:55', '2022-04-14 09:29:55', '2023-04-14 12:29:55'),
('38e65df7e31353f850827aeddc9ddccaec0f8349f96df90eb92a3cfd79e139f289cd4b09d95b5a3c', 2, 1, 'app', '[]', 0, '2022-04-13 09:20:01', '2022-04-13 09:20:01', '2023-04-13 12:20:01'),
('39ca2d0023b9ae10f9efd001384a3e5e26c3cddf70d01e0c4cd396bcb65dc946744d0f5de555d5c1', 2, 1, 'app', '[]', 0, '2022-05-02 04:35:59', '2022-05-02 04:35:59', '2023-05-02 07:35:59'),
('4755ba81de981adaed830e36c27487f66ff578c5647bdf6e0e7b7faafacd8dcdb8faf451f8dd7b5b', 2, 1, 'app', '[]', 0, '2022-04-13 11:19:21', '2022-04-13 11:19:21', '2023-04-13 14:19:21'),
('4da33e2d4df2ad2f5e8a4f3fd4aa4fb6bb7995a84e657a3753fabcb2c8c2f3469a5eb6a8f2a190ab', 2, 1, 'app', '[]', 0, '2022-04-13 12:23:23', '2022-04-13 12:23:23', '2023-04-13 15:23:23'),
('4f2a30cd68207bb68dd4542dd7e3a6b9b65dfffb4ddbe8f56796113840e8821f4f084553acec7e4c', 2, 1, 'app', '[]', 0, '2022-05-11 07:02:19', '2022-05-11 07:02:19', '2023-05-11 07:02:19'),
('5119c7fbe8ae626535a7af32f037a2c96b9b6a8d2c8925ccfe31002b3a463c0d5258dff7373d6163', 2, 1, 'app', '[]', 0, '2022-04-13 06:35:20', '2022-04-13 06:35:20', '2023-04-13 09:35:20'),
('5b5d8580779a86875b50d4439b00d5b3a065b0cb5c4bc4c7dce86569b09fa92e07debbf7ced448f8', 2, 1, 'app', '[]', 0, '2022-05-02 04:25:07', '2022-05-02 04:25:07', '2023-05-02 07:25:07'),
('5b6d8f0bfa3123fb794bd2464e12746b09f1b272ef7655bf9820947b74b3b8fbb698226efbd61a3b', 2, 1, 'app', '[]', 0, '2022-05-02 07:24:45', '2022-05-02 07:24:45', '2023-05-02 10:24:45'),
('5b7a70d961fcea5d27e23c2ae620f278165e056e58076a448952ac5effadf0217e753414e20a15ad', 1, 1, 'app', '[]', 0, '2022-04-13 16:26:29', '2022-04-13 16:26:29', '2023-04-13 19:26:29'),
('5c78b5d89680baa61be2c4bb83c9ded184e113143e7b92968159bdca065633b43e14cbdc13e68d81', 2, 1, 'app', '[]', 0, '2022-04-13 06:35:27', '2022-04-13 06:35:27', '2023-04-13 09:35:27'),
('5c7ea0add2c6b6f9a6ce250e82c1d74d00c0b8a96546f1bcad9e6a1638fd013907fc60997d720ed4', 1, 1, 'app', '[]', 0, '2022-05-02 03:56:10', '2022-05-02 03:56:10', '2023-05-02 06:56:10'),
('5fd126932b1a2fd18348de902f88149bdc55952c51f2de5f9c067d8546f209bacc1245ca0b08764b', 2, 1, 'app', '[]', 0, '2022-04-21 04:39:52', '2022-04-21 04:39:52', '2023-04-21 07:39:52'),
('62b192105d96242a124fbdab659f3fd2be25e508ab166b2fa88dc829daaef989e0085db395840372', 2, 1, 'app', '[]', 0, '2022-05-03 21:10:59', '2022-05-03 21:10:59', '2023-05-03 14:10:59'),
('66d071aeba8eb84e1df750cf069ab25c2f8e62321f48299150b8f66fd1a062cac95a8421a07d1b29', 2, 1, 'app', '[]', 0, '2022-04-13 12:57:49', '2022-04-13 12:57:49', '2023-04-13 15:57:49'),
('67cb1ceff8098bb401b4f645db8d5c016b4eba1d761225f77a49197d577cc9928b9048e217c536a3', 2, 1, 'app', '[]', 0, '2022-05-02 19:40:32', '2022-05-02 19:40:32', '2023-05-02 12:40:32'),
('68bef7c2e7223e043587f5db3e24000ad8d48c5cff056622b04c874db2fde2c5a7c9740525e234a1', 2, 1, 'app', '[]', 0, '2022-05-02 04:24:29', '2022-05-02 04:24:29', '2023-05-02 07:24:29'),
('6ec959c65e7d13ae21e3b5fbef4228868ad76f615300c878589beeb436874baf8738449166a70679', 1, 1, 'app', '[]', 0, '2022-04-13 13:11:35', '2022-04-13 13:11:35', '2023-04-13 16:11:35'),
('77719326be89760a6cdf73555d0a8c140e15ad725ecb0b9a9e29cb5e6a830e3804af97bc552a18b4', 2, 1, 'app', '[]', 0, '2022-04-20 08:16:15', '2022-04-20 08:16:15', '2023-04-20 11:16:15'),
('77b59c0871dddf4709b5e41981cb996ad8d613b973f42f8998b8b9296a29cc2b5163d793b722a6c2', 2, 1, 'app', '[]', 0, '2022-05-02 04:21:17', '2022-05-02 04:21:17', '2023-05-02 07:21:17'),
('7fd4807ce2ce84a928b849348ed173ce42b0518138e94bff492fca1df348af5643084ff9c2a67e48', 1, 1, 'app', '[]', 0, '2022-04-13 06:33:30', '2022-04-13 06:33:30', '2023-04-13 09:33:30'),
('88f8ff7e9c665ed1c912a1cf0f37e0327e451ff59e073f0f55f0c39171d2c671c311a2ece2320670', 2, 1, 'app', '[]', 0, '2022-04-14 03:06:19', '2022-04-14 03:06:19', '2023-04-14 06:06:19'),
('8947de6b6a0a1a7014d1f9ab84bb41f49e6a6db33f406b078efabe7f4f633f2f8c5f635c22492045', 2, 1, 'app', '[]', 0, '2022-05-02 19:50:24', '2022-05-02 19:50:24', '2023-05-02 12:50:24'),
('8a929e0f474c8e85c47a8553d5a55bf98fda6251499802538fa8f04f02e2b28acb8347e26c179da8', 7, 1, 'app', '[]', 0, '2022-05-11 07:04:37', '2022-05-11 07:04:37', '2023-05-11 07:04:37'),
('8b2e31a212c7484d2032e5ba78b3f78c9a3203b497a982ba7fb774cecfd84447fd2ad3a3389abad7', 2, 1, 'app', '[]', 0, '2022-04-13 16:39:50', '2022-04-13 16:39:50', '2023-04-13 19:39:50'),
('926ccdd1d9ad5cad16a7500a4cad2904ad7945aa5653b0c023aaf1f40893c5638db6a18625e7db25', 2, 1, 'app', '[]', 0, '2022-05-01 10:31:31', '2022-05-01 10:31:31', '2023-05-01 13:31:31'),
('9bb4765721a78402824eaa9b3fb64972b619a176460d2d32adbdd47d4a8f02e85484f8cc25ed7f63', 7, 1, 'app', '[]', 0, '2022-05-11 07:06:42', '2022-05-11 07:06:42', '2023-05-11 07:06:42'),
('9dd58c91ad57ffcc97ad5b62d5747def0df23ff839321a9658b90aad336aa1dce3e4dafa72996ae8', 2, 1, 'app', '[]', 0, '2022-04-13 11:16:00', '2022-04-13 11:16:00', '2023-04-13 14:16:00'),
('a966a92af08b55473315270e2a2d59c4b660c2455617727129627f2cbac1b1d98c3914142e47531b', 2, 1, 'app', '[]', 0, '2022-04-13 10:56:53', '2022-04-13 10:56:53', '2023-04-13 13:56:53'),
('aa5420be3a8928c03b805f6cda357a32818ca178d3b55a91947132e6bbda68966bbe11e59e3983e4', 1, 1, 'app', '[]', 0, '2022-05-02 03:55:50', '2022-05-02 03:55:50', '2023-05-02 06:55:50'),
('b74f0f7fc70128ad402d119c17db012817779b638b19704c30a51867925ef7c088275ce360604ff9', 2, 1, 'app', '[]', 0, '2022-04-19 14:01:46', '2022-04-19 14:01:46', '2023-04-19 17:01:46'),
('b8413bd7da77f2fba8d9655e6acde41b9a0ee6a55be4874af1a941a7f8af70684e23c18f03aebcf5', 2, 1, 'app', '[]', 0, '2022-04-13 10:39:06', '2022-04-13 10:39:06', '2023-04-13 13:39:06'),
('c1ac6e8f313c16c153bb5890f861bcfc0cb0ebbe945441c9ccc2b26bf2533d57275d2f83f9f88213', 2, 1, 'app', '[]', 0, '2022-04-13 09:25:52', '2022-04-13 09:25:52', '2023-04-13 12:25:52'),
('c5dba2be4adec237a86d23dfd0ff32fcfe05e3c9b3a43811eeed0109b0f2de7fe63d2ab9cb0d7f29', 1, 1, 'app', '[]', 0, '2022-04-13 10:52:12', '2022-04-13 10:52:12', '2023-04-13 13:52:12'),
('cbaa5dd89c8d84f331606503bbfb757f600b3ad9813b47bb737b10dd5f32fd104e6e6bd1f4658546', 2, 1, 'app', '[]', 0, '2022-05-03 21:03:15', '2022-05-03 21:03:15', '2023-05-03 14:03:15'),
('ccb31edf1f6494307b0ac0d51a8eda8e37cb1827018b63a399cb962cd747a7de61e2ae4c6b500ded', 2, 1, 'app', '[]', 0, '2022-04-13 11:33:55', '2022-04-13 11:33:55', '2023-04-13 14:33:55'),
('d4eb1e43271a4622e3b060cb8ff58c6b8565d430b58779bf1bd3e65d0fd6e84dd4ee242747573956', 2, 1, 'app', '[]', 0, '2022-04-20 07:12:10', '2022-04-20 07:12:10', '2023-04-20 10:12:10'),
('da95983f283a6208c3e7c9f6e6e74ae882f7e332a2fb9ad2047e9cd154996d684820be92b575a872', 2, 1, 'app', '[]', 0, '2022-05-01 10:21:41', '2022-05-01 10:21:41', '2023-05-01 13:21:41'),
('dacac52a3fcae2a209622b9f6445e4dcf69df00b0b55098a5e2d403e40dfb0dfa063158ced8cb772', 2, 1, 'app', '[]', 0, '2022-05-01 11:49:11', '2022-05-01 11:49:11', '2023-05-01 14:49:11'),
('dc847e19c68f8c76044ab3a82a586dec559f8c61303a247ffcf887b7e4785952d404183afb7398d7', 2, 1, 'app', '[]', 0, '2022-04-20 11:59:27', '2022-04-20 11:59:27', '2023-04-20 14:59:27'),
('dd5a539b44480d62f193c6cec2c15a8e62240cef16953091e4f357916c2c3d27817542ceb6cd7dbd', 2, 1, 'app', '[]', 0, '2022-04-13 07:19:00', '2022-04-13 07:19:00', '2023-04-13 10:19:00'),
('df74c2ec99d69cc25505e258f05232cdd252a3635d3fd6f28e40532fa45716272f3c785f8a25a965', 2, 1, 'app', '[]', 0, '2022-04-13 12:28:46', '2022-04-13 12:28:46', '2023-04-13 15:28:46'),
('e5328ade7b29245250f77df5a49627bbbcb4b1aba03d025a9caac2195f29a770f535dec288e83199', 6, 1, 'app', '[]', 0, '2022-05-05 19:07:12', '2022-05-05 19:07:12', '2023-05-05 12:07:12'),
('e544b6955bffa7e3d92d8398275ff135e9e0e5b97c25bd4bcb8bac4e2ba34fa30d67c12bd62ac6b1', 2, 1, 'app', '[]', 0, '2022-04-20 11:34:35', '2022-04-20 11:34:35', '2023-04-20 14:34:35'),
('e56534f9bf6d02b1a691d246635460d116e592ac005043187e04d26a3bb401990b9d4c1de3a837ec', 2, 1, 'app', '[]', 0, '2022-05-03 15:46:58', '2022-05-03 15:46:58', '2023-05-03 08:46:58'),
('e628d5b6cb5b7455b271bcda15690dc996835462db50addf6fe265c35cb8e7cb1083234e409da064', 1, 1, 'app', '[]', 0, '2022-05-02 04:36:54', '2022-05-02 04:36:54', '2023-05-02 07:36:54'),
('e79da7663527dc5eedc93e07b46d0ed0042072aad1741d99eecb031f6a11705d9e358618bb63342f', 2, 1, 'app', '[]', 0, '2022-05-02 04:52:07', '2022-05-02 04:52:07', '2023-05-02 07:52:07'),
('e93e684dee34c97d33018a137bbd8327981e5efedde950aac6ba8fa0ec0f34a14f6179f97c72b932', 2, 1, 'app', '[]', 0, '2022-05-01 11:53:50', '2022-05-01 11:53:50', '2023-05-01 14:53:50'),
('ec41ecee7510a7cbdce982ec6dd5e1fdcdeae8b446d7d62b44cea75bb2d5cf5b1df4a7026fcafdbd', 2, 1, 'app', '[]', 0, '2022-05-05 20:58:50', '2022-05-05 20:58:50', '2023-05-05 13:58:50'),
('ec7fc2aa1a95092fc1d1c82e47c3016662b25998abb63559fa8f6f883130034790a760985f8589e3', 2, 1, 'app', '[]', 0, '2022-04-13 16:27:41', '2022-04-13 16:27:41', '2023-04-13 19:27:41'),
('f3946e6eae3a3705de0b35a9c170dbb2d7532565bea116a9ccc9c47cc7c25e5773434fe5a6dc9482', 1, 1, 'app', '[]', 0, '2022-04-13 06:34:26', '2022-04-13 06:34:26', '2023-04-13 09:34:26'),
('f40fd0b705a9ed45f5d55ba3da1cfb3b06789cb8f28b248609710695f7c025769ce667690ca92c6a', 8, 1, 'app', '[]', 0, '2022-05-11 07:05:34', '2022-05-11 07:05:34', '2023-05-11 07:05:34'),
('f49e2170899f0d5cf98cf1cff2c7599c6e2b14057e32652ec38de5e2435b3fb292c4f9b678bfc2db', 2, 1, 'app', '[]', 0, '2022-04-13 12:51:31', '2022-04-13 12:51:31', '2023-04-13 15:51:31'),
('f5119a8fbfddf905f9039147f421759d33f597bc94f05ce4be7a5249fb5c3b9bedc135ba607ecf26', 2, 1, 'app', '[]', 0, '2022-05-02 04:19:20', '2022-05-02 04:19:20', '2023-05-02 07:19:20'),
('f537bafbfeade970e009c3d55f5178061c9b973782cb3fe04e70a05bcaba3da4ec89ff372aba8be6', 3, 1, 'app', '[]', 0, '2022-04-13 15:43:52', '2022-04-13 15:43:52', '2023-04-13 18:43:52'),
('f62c3da0d89736446e5a9effd55762545fd7e89f05ec0f223eec2663c2dcaccc42040bad3ea407bf', 2, 1, 'app', '[]', 0, '2022-04-13 11:35:49', '2022-04-13 11:35:49', '2023-04-13 14:35:49'),
('f717dddf49a0f403cdeab80fcf21f5ba5c8b454c0153cdc1fa7a881d327fda2dc7111717c15c2363', 2, 1, 'app', '[]', 0, '2022-04-20 08:45:04', '2022-04-20 08:45:04', '2023-04-20 11:45:04'),
('f7f6ba0503ac1b1337a1b5f339f910f6ae8eb905d3f06f4387095ae4fc64bcd98701cdd7cbc6c10e', 2, 1, 'app', '[]', 0, '2022-04-13 10:53:36', '2022-04-13 10:53:36', '2023-04-13 13:53:36'),
('f8dbf0efb5552cfbbd685614663452dbb1d0bf483a0d8d053973245b5d93ce9dfbfddfab9923c785', 2, 1, 'app', '[]', 0, '2022-04-14 09:40:05', '2022-04-14 09:40:05', '2023-04-14 12:40:05'),
('f97745938a66a88f8292a214b517d8f8642168f1056e67b20118f2fc3d9d49cb3c64bac0da496a69', 2, 1, 'app', '[]', 0, '2022-05-02 04:07:57', '2022-05-02 04:07:57', '2023-05-02 07:07:57'),
('fe63e66ce10ae624e79a0a90872d1352deb97e0a70f3920e439fd5d69eee8bc5bde1b4ae858a2a00', 4, 1, 'app', '[]', 0, '2022-04-13 16:32:41', '2022-04-13 16:32:41', '2023-04-13 19:32:41'),
('ffbfa868f74c44ede03aac77fddd2124715bd8020d1569bc3fcf7d167b97e16b4dad8e6662c614ed', 2, 1, 'app', '[]', 0, '2022-04-13 07:43:42', '2022-04-13 07:43:42', '2023-04-13 10:43:42');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_clients`
--

INSERT INTO `oauth_clients` (`id`, `user_id`, `name`, `secret`, `provider`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Laravel Personal Access Client', '4NuXKI4uTr2sKNt7y67eWI2sr8EpujnNXueSfLje', NULL, 'http://localhost', 1, 0, 0, '2022-04-13 06:10:49', '2022-04-13 06:10:49'),
(2, NULL, 'Laravel Password Grant Client', 'LxLWgkjWBYMe06Bv2frQRB3Ny2UJlaxfmspxae0B', 'users', 'http://localhost', 0, 1, 0, '2022-04-13 06:10:49', '2022-04-13 06:10:49');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_personal_access_clients`
--

CREATE TABLE `oauth_personal_access_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_personal_access_clients`
--

INSERT INTO `oauth_personal_access_clients` (`id`, `client_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2022-04-13 06:10:49', '2022-04-13 06:10:49');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_refresh_tokens`
--

CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `id` int(11) NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`id`, `email`, `token`, `created_at`) VALUES
(39, 'ageorge28@gmail.com', '67502', NULL);

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
-- Table structure for table `product_carts`
--

CREATE TABLE `product_carts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `size` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `quantity` int(10) UNSIGNED NOT NULL,
  `unit_price` decimal(10,2) NOT NULL,
  `total_price` decimal(10,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_carts`
--

INSERT INTO `product_carts` (`id`, `image`, `email`, `product_name`, `product_code`, `size`, `color`, `quantity`, `unit_price`, `total_price`, `created_at`, `updated_at`) VALUES
(40, '1731619410966088.jpg', 'admin@gmail.com', 'SAMSUNG 6 kg 5 Star With Hygiene Steam and Ceramic Heater Fully Automatic Front Load', '654788', 'Size: Large', 'Color: White', 1, '21940.00', '21940.00', '2022-05-02 03:56:55', NULL),
(41, '1731623595641819.jpg', 'admin@gmail.com', 'Boys Printed Cotton Blend, Polycotton T Shirt', '434677', 'Size: Small', 'Color: Grey', 1, '424.00', '424.00', '2022-05-02 04:37:39', NULL),
(42, '1731622380605233.jpg', 'admin@gmail.com', 'Striped Men Polo Neck White T-Shirt', '765789', 'Size: Medium', 'Color: Green', 1, '280.00', '280.00', '2022-05-02 04:50:43', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `product_details`
--

CREATE TABLE `product_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `image1` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image2` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image3` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image4` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `short_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `long_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `size` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_details`
--

INSERT INTO `product_details` (`id`, `product_id`, `image1`, `image2`, `image3`, `image4`, `short_description`, `long_description`, `color`, `size`, `created_at`, `updated_at`) VALUES
(2, 4, 'https://rukminim1.flixcart.com/image/416/416/kbqu4cw0/computer/q/x/r/hp-original-imaftyzachgrav8f.jpeg?q=70', 'https://rukminim1.flixcart.com/image/416/416/krtjgcw0/computer/p/n/g/15-ec2004ax-gaming-laptop-hp-original-imag5j3b48askf4b.jpeg?q=70', 'https://rukminim1.flixcart.com/image/416/416/kr2e3680/computer/m/6/e/na-gaming-laptop-hp-original-imag4xqwnbpzxff9.jpeg?q=70', 'https://rukminim1.flixcart.com/image/416/416/krtjgcw0/computer/y/i/n/15-ec2004ax-gaming-laptop-hp-original-imag5j3bem5snef4.jpeg?q=70', '(8 GB/512 GB SSD/Windows 11 Home/4 GB Graphics/NVIDIA GeForce GTX 1650/144 Hz) 15-ec2004AX Gaming Laptop  (15.6 inch, Shadow Black, 1.98 kg)', '\"Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?\"', 'Black,White,Silver', 'L', NULL, NULL),
(3, 7, 'https://rukminim1.flixcart.com/image/416/416/kvtuxe80/allinone-desktop/t/a/m/-original-imag8n3ezpfsfmfc.jpeg?q=70', 'https://rukminim1.flixcart.com/image/416/416/kvtuxe80/allinone-desktop/y/f/n/-original-imag8n3ezpewyxj5.jpeg?q=70', 'https://rukminim1.flixcart.com/image/416/416/kvtuxe80/allinone-desktop/3/m/s/-original-imag8n3ezhagjbcu.jpeg?q=70', 'https://rukminim1.flixcart.com/image/416/416/kvtuxe80/allinone-desktop/r/o/8/-original-imag8n3efyx5ttbp.jpeg?q=70', 'Lenovo ideacentre A340-24IWL Core i3 (8 GB DDR4/1 TB/Windows 11 Home/23.8 Inch Screen/A340-24IWL) with MS Office  (Business Black, 447.36 mm x 541.04 mm x 185 mm, 5.87 Kg)', '\"Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?\"', 'Black,Grey', 'Large', NULL, NULL),
(7, 43, '1731609079396165.jpg', '1731609079562983.jpg', '1731609079657920.jpg', '1731609079745340.jpg', '8 GB/512 GB SSD/Windows 10/4 GB Graphics/NVIDIA GeForce GTX 1650/144 Hz) 15-ec2004AX Gaming Laptop  (15.6 inch, Shadow Black, 1.98 kg', '<p><span style=\"color: #212121; font-family: Roboto, Arial, sans-serif; font-size: 18px; background-color: #ffffff;\">8 GB/512 GB SSD/Windows 10/4 GB Graphics/NVIDIA GeForce GTX 1650/144 Hz) 15-ec2004AX Gaming Laptop</span><span style=\"color: #212121; font-family: Roboto, Arial, sans-serif; font-size: 18px; background-color: #ffffff;\"> &nbsp;(15.6 inch, Shadow Black, 1.98 kg</span></p>', 'Black', 'Large', '2022-05-01 04:45:05', '2022-05-01 04:45:05'),
(8, 44, '1731617302900915.jpg', '1731617302973011.jpg', '1731617303046516.jpg', '1731617303129484.jpg', 'The Dell G7 7500 is a well-designed gaming laptop that comes with an innovative space-saving Origami Hinge. Its sleek looks are sure to make you the talk of the town.', '<p><span style=\"color: #212121; font-family: Roboto, Arial, sans-serif; font-size: 14px; background-color: #ffffff;\">The Dell G7 7500 is a well-designed gaming laptop that comes with an innovative space-saving Origami Hinge. Its sleek looks are sure to make you the talk of the town. To enhance your gaming experience and take it to the next level, this laptop comes powered by 10th Gen Intel Core i9 processor and features an 8 GB NVIDIA GeForce RTX 2070 graphics card with Max-Q Design. To top it off, the laptop also features a neat, narrow-bezel FHD display that makes every image on it seem vivid and real.</span></p>', 'Black', 'Medium', '2022-05-01 06:55:47', NULL),
(9, 45, '1731617859327094.jpg', '1731617859404190.jpg', '1731617859479857.jpg', '1731617859557005.jpg', '8 GB/512 GB SSD/Windows 10 Home/4 GB Graphics/NVIDIA GeForce GTX 1650 Ti/144 Hz FX506LI-HN271TS Gaming Laptop,15.6 Inch, Black, 2.3 KG, With MS Office', '<p>8 GB/512 GB SSD/Windows 10 Home/4 GB Graphics/NVIDIA GeForce GTX 1650 Ti/144 Hz FX506LI-HN271TS Gaming Laptop,15.6 Inch, Black, 2.3 KG, With MS Office</p>', 'Black', 'Large', '2022-05-01 07:04:38', NULL),
(10, 46, '1731618076528606.jpg', '1731618076608489.jpg', '1731618076685983.jpg', '1731618076768153.jpg', '8 GB DDR4/1 TB/Windows 11 Home/23.8 Inch Screen/A340-24IWL with MS Office, Business Black, 447.36 mm x 541.04 mm x 185 mm, 5.87 Kg', '<p>8 GB DDR4/1 TB/Windows 11 Home/23.8 Inch Screen/A340-24IWL with MS Office, Business Black, 447.36 mm x 541.04 mm x 185 mm, 5.87 Kg</p>', 'Black', 'Large', '2022-05-01 07:08:05', NULL),
(11, 47, '1731618259443776.jpg', '1731618259514709.jpg', '1731618259640865.jpg', '1731618259724563.jpg', '4 GB/1 TB HDD/DOS, 245 G7 Laptop,14 inch, Grey, 2.1 kg', '<p>4 GB/1 TB HDD/DOS, 245 G7 Laptop,14 inch, Grey, 2.1 kg</p>', 'Grey', 'Medium', '2022-05-01 07:11:00', NULL),
(12, 48, '1731618453089378.jpg', '1731618453166170.jpg', '1731618453239429.jpg', '1731618453315128.jpg', '8 GB DDR3/500 GB/120 GB SSD/Windows 10 Home/512 MB/18.5 Inch Screen/ENTAIC-I5-650-8GB_500-120-18.5LED with MS Office (Black)', '<p><span style=\"color: #212121; font-family: Roboto, Arial, sans-serif; font-size: 14px; background-color: #ffffff;\">This Computer is Assemebled Computer build with as per available Cabinet and power supply. The PC comes with Trail Window 10 and Microsoft Office. There is no DVD writer in this PC. You can use this pc for Office, Online Study, Programming or Gamming purpose</span></p>', 'Black', 'Large', '2022-05-01 07:14:04', NULL),
(13, 49, '1731618649302446.jpg', '1731618649376592.jpg', '1731618649453518.jpg', '1731618649525542.jpg', 'Offering high pixel accuracy, the LG UHD TV offers excellent picture quality and vibrant colours.', '<p>Offering high pixel accuracy, the LG UHD TV offers excellent picture quality and vibrant colours. This TV supports streaming services including Netflix, Disney+ Hotstar, Amazon Prime Video, and Apple TV, allowing you to watch your favourite shows and movies. Furthermore, regardless of the game, this TV\'s Game Optimiser, fine-tuned HDR pictures, and minimal input lag make games seamless and engrossing.&nbsp;</p>', 'Black', 'Large', '2022-05-01 11:17:24', '2022-05-01 11:17:24'),
(14, 50, '1731618815362207.jpg', '1731618815436696.jpg', '1731618815511440.jpg', '1731618815582125.jpg', 'The SAMSUNG Ultra HD (4K) LED Smart TV (UA55AUE70AKLXL) is a stylish, minimalist, and feature-rich home entertainment appliance.', '<p><span style=\"color: #212121; font-family: Roboto, Arial, sans-serif; font-size: 14px; background-color: #ffffff;\">The SAMSUNG Ultra HD (4K) LED Smart TV (UA55AUE70AKLXL) is a stylish, minimalist, and feature-rich home entertainment appliance. This TV features PurColor technology to offer a wide range of colors, Crystal Processor 4K to deliver up to 4K resolution visuals, and the Q Symphony technology to ensure a surround sound experience by ensuring that the speakers of this TV and soundbar work simultaneously.</span></p>', 'Black', 'Large', '2022-05-02 19:45:12', '2022-05-02 19:45:12'),
(15, 51, '1731619021144171.jpg', '1731619021237510.jpg', '1731619021320154.jpg', '1731619021391057.jpg', 'This Canon Camera gives you the freedom to explore different ways to shoot subjects.', '<p><span style=\"color: #212121; font-family: Roboto, Arial, sans-serif; font-size: 14px; background-color: #ffffff;\">This Canon Camera gives you the freedom to explore different ways to shoot subjects. It packs a multitude of shooting options which you can incorporate in still images to create art that embodies the exact mood and vision you are going for. Don&rsquo;t worry about the lighting conditions of a place because this camera&rsquo;s large-sized sensor is designed to capture picture-perfect shots even in a dimly lit environment. Thanks to its Wi-Fi connectivity and NFC paring options, sharing photos is as simple as it gets.</span></p>', 'Black', 'Medium', '2022-05-01 11:16:16', '2022-05-01 11:16:16'),
(16, 52, '1731619225216396.jpg', '1731619225340239.jpg', '1731619225421871.jpg', '1731619225505978.jpg', 'Now, you can dress to impress every day in spotless and hygienic garments, thanks to this IFB 6 kg Fully-automatic washing machine.', '<p><span style=\"color: #212121; font-family: Roboto, Arial, sans-serif; font-size: 14px; background-color: #ffffff;\">Now, you can dress to impress every day in spotless and hygienic garments, thanks to this IFB 6 kg Fully-automatic washing machine. This essential home appliance features the Auto Imbalance Vibration Control technology, the Ball Valve Technology, and a Crescent Moon Drum for quick and efficient washing of your laundry.</span></p>', 'White', 'Large', '2022-05-01 07:26:21', NULL),
(17, 53, '1731619411039920.jpg', '1731619411112036.jpg', '1731619411188675.jpg', '1731619411268195.jpg', 'This Samsung washing machine features the Hygiene Steam feature to ensure high-quality cleaning of your laundry items during a wash.', '<p><span style=\"color: #212121; font-family: Roboto, Arial, sans-serif; font-size: 14px; background-color: #ffffff;\">This Samsung washing machine features the Hygiene Steam feature to ensure high-quality cleaning of your laundry items during a wash. It has a Diamond Drum that features a soft curl design along with smooth, diamond-shaped ridges to produce a gentle effect on your clothes. And, the Quick Wash program can be used to quickly and efficiently clean your clothes that are lightly soiled. This way, you can go about your busy day with ease.</span></p>', 'White', 'Large', '2022-05-01 07:29:18', NULL),
(18, 54, '1731619582771557.jpg', '1731619582837782.jpg', '1731619582950203.jpg', '1731619583028027.jpg', 'You can make your space cool and comfortable even during sultry summers with the LG Dual Inverter Split Air Conditioner.', '<p>You can make your space cool and comfortable even during sultry summers with the LG Dual Inverter Split Air Conditioner. With its varied speed dual rotary compressor, this air conditioner ensures a wide rotational frequency, offering a high-speed cooling range and energy efficiency. This way, it ensures quick cooling, silent operation, and long-lasting durability. Moreover, by adjusting the cooling capacity as per your preferences, this five-in-one air conditioner can easily meet your cooling requirements.</p>', 'White', 'Large', '2022-05-01 07:32:02', NULL),
(19, 55, '1731622380740203.jpg', '1731622380870808.jpg', '1731622381002173.jpg', '1731622381131461.jpg', 'This T-Shirt is made up of 60% Cotton, 40% Polyester. It is bio-washed and softener treated which makes the fabric ultra soft in touch and feel. The fabric GSM is 190.', '<p><span style=\"color: #212121; font-family: Roboto, Arial, sans-serif; font-size: 14px; text-align: justify; background-color: #ffffff;\">This T-Shirt is made up of 60% Cotton, 40% Polyester. It is bio-washed and softener treated which makes the fabric ultra soft in touch and feel. The fabric GSM is 190.</span></p>', 'Green,Black', 'Small,Medium,Large,Extra Large', '2022-05-01 08:16:30', NULL),
(20, 56, '1731622617930674.jpg', '1731622618057227.jpg', '1731622618153291.jpg', '1731622618246751.jpg', 'Light weighted and very flexible It has Breathable Mesh and attractive styling A lightweight and flexible shoe comprising of a mesh upper for breathability.', '<p><span style=\"color: #212121; font-family: Roboto, Arial, sans-serif; font-size: 14px; text-align: justify; background-color: #ffffff;\">Light weighted and very flexible It has Breathable Mesh and attractive styling A lightweight and flexible shoe comprising of a mesh upper for breathability. Full EVA outsole that balances heel cushioning with responsiveness Best for a daily running session</span></p>', 'Navy Blue', 'Small,Medium', '2022-05-01 08:20:16', NULL),
(21, 57, '1731622822633379.jpg', '1731622822768438.jpg', '1731622822902297.jpg', '1731622823087655.jpg', 'Sofi Wns Flip Flops  (Pink 5)', '<p><span style=\"color: #212121; font-family: Roboto, Arial, sans-serif; font-size: 18px; background-color: #ffffff;\">Sofi Wns Flip Flops</span><span style=\"color: #212121; font-family: Roboto, Arial, sans-serif; font-size: 18px; background-color: #ffffff;\"> &nbsp;(Pink 5)</span></p>', 'Pink', 'Medium,Large', '2022-05-01 11:20:58', '2022-05-01 11:20:58'),
(22, 58, '1731623037770147.jpg', '1731623037960404.jpg', '1731623038068738.jpg', '1731623038167806.jpg', 'Slip-on Clogs For Boys & Girls', '<p><span style=\"color: #212121; font-family: Roboto, Arial, sans-serif; font-size: 18px; background-color: #ffffff;\">Slip-on Clogs For Boys &amp; Girls</span></p>', 'Grey,Blue,Pink', 'Small,Medium,Large', '2022-05-01 08:26:57', NULL),
(23, 59, '1731623595823847.jpg', '1731623595945560.jpg', '1731623596064944.jpg', '1731623596208488.jpg', 'Lose yourself in the pages of a comic book or the movie adventure of a lifetime with your favorite Marvel superheroes!', '<p><span style=\"color: #212121; font-family: Roboto, Arial, sans-serif; font-size: 14px; text-align: justify; background-color: #ffffff;\">Lose yourself in the pages of a comic book or the movie adventure of a lifetime with your favorite Marvel superheroes! Whether you want to swing through the city with Spider-Man, smash some walls with the Hulk, or sail through the air with Iron Man...You&rsquo;ll need to be wearing the best Marvel designs to do it! It\'s time to get marvelous with these awesome Marvel t-shirts! Super Girls!</span></p>', 'Grey', 'Small,Medium,Large', '2022-05-01 08:35:49', NULL),
(24, 60, '1731623783343934.jpg', '1731623783412392.jpg', '1731623783530419.jpg', '1731623783603513.jpg', 'Powered by natural antirash shield: Indian Aloe and Yashad Bhasma (Zinc Oxide) (that prevent risk of diaper rash) Soft easy-to-fit design offers care and comfort to your baby.', '<p><span style=\"color: #212121; font-family: Roboto, Arial, sans-serif; font-size: 14px; background-color: #ffffff;\">About Himalaya Baby total care pants: Powered by natural antirash shield: Indian Aloe and Yashad Bhasma (Zinc Oxide) (that prevent risk of diaper rash) Soft easy-to-fit design offers care and comfort to your baby. silky soft inner layer for soft &amp; sensitive skin Breathable fabric ensures proper air circulation and leakproof soft elastic edges prevent leakage. Superabsorbent polymer (SAP) layer: Rapidly absorbs multiple wettings and provides maximum protection from dampness. Wetness indicator: Turns green to show when baby wets the diaper. Keeps skin dry so that baby gets an undisturbed and restful sleep.</span></p>', 'White', 'Small,Medium,Large', '2022-05-01 08:38:48', NULL),
(25, 61, '1731623974727853.jpg', '1731623974802125.jpg', '1731623974877612.jpg', '1731623974958389.jpg', 'Flipkart SmartBuy Wall Stickers Wallpaper Multi Bricks Blocks Modern Bedroom Decor Self Adhesive Extra Large Wall Sticker Wallpaper  (Pack of 1)', '<p><span style=\"color: #212121; font-family: Roboto, Arial, sans-serif; font-size: 18px; background-color: #ffffff;\">Flipkart SmartBuy Wall Stickers Wallpaper Multi Bricks Blocks Modern Bedroom Decor Self Adhesive Extra Large Wall Sticker Wallpaper</span><span style=\"color: #212121; font-family: Roboto, Arial, sans-serif; font-size: 18px; background-color: #ffffff;\"> &nbsp;(Pack of 1)</span></p>', 'Brick', 'Extra Large', '2022-05-01 08:41:50', NULL),
(26, 62, '1731624146255115.jpg', '1731624146379363.jpg', '1731624146452280.jpg', '1731624146522896.jpg', 'Flipkart Perfect Homes Carol Engineered Wood Queen Bed  (Finish Color - Espresso, Delivery Condition - Knock Down)', '<p><span style=\"color: #212121; font-family: Roboto, Arial, sans-serif; font-size: 18px; background-color: #ffffff;\">Flipkart Perfect Homes Carol Engineered Wood Queen Bed</span><span style=\"color: #212121; font-family: Roboto, Arial, sans-serif; font-size: 18px; background-color: #ffffff;\"> &nbsp;(Finish Color - Espresso, Delivery Condition - Knock Down)</span></p>', 'Espresso', 'Large', '2022-05-01 08:44:34', NULL),
(27, 63, '1731624317143138.jpg', '1731624317266802.jpg', '1731624317338663.jpg', '1731624317412251.jpg', 'Flipkart Perfect Homes Webster Engineered Wood TV Entertainment Unit  (Finish Color - Espresso, Knock Down)', '<p><span style=\"color: #212121; font-family: Roboto, Arial, sans-serif; font-size: 18px; background-color: #ffffff;\">Flipkart Perfect Homes Webster Engineered Wood TV Entertainment Unit</span><span style=\"color: #212121; font-family: Roboto, Arial, sans-serif; font-size: 18px; background-color: #ffffff;\"> &nbsp;(Finish Color - Espresso, Knock Down)</span></p>', 'Espresso', 'Extra Large', '2022-05-01 08:47:17', NULL),
(28, 64, '1731624502072573.jpg', '1731624502146782.jpg', '1731624502228387.jpg', '1731624502309372.jpg', 'HealthKart Omega-3 is a premium dietary supplement, containing essential omega-3 fatty acids, found predominantly in fish oil and to a lesser extent in walnuts and flax seeds to help promote and maintain a healthy heart and brain.', '<p><span style=\"color: #212121; font-family: Roboto, Arial, sans-serif; font-size: 14px; background-color: #ffffff;\">HealthKart Omega-3 is a premium dietary supplement, containing essential omega-3 fatty acids, found predominantly in fish oil and to a lesser extent in walnuts and flax seeds to help promote and maintain a healthy heart and brain. HealthKart Omega-3 is a rich source of heart-healthy essential fatty acids&mdash;DHA and EPA. The National Health and Medical Research Council (NHMRC) recommends a dietary target of 430mg of omega-3 fatty acids a day for women and 610mg a day for men.</span></p>', NULL, 'Small', '2022-05-01 08:50:13', NULL),
(29, 65, '1731624765408005.jpg', '1731624765480735.jpg', '1731624765557867.jpg', '1731624765632752.jpg', 'Manogyam Push Up Bar & Double Toning Tube for ab exercises for men / women strengthen and tone your abs, shoulders, arms, and back.', '<p><span style=\"color: #212121; font-family: Roboto, Arial, sans-serif; font-size: 14px; background-color: #ffffff;\">Manogyam Push Up Bar &amp; Double Toning Tube for ab exercises for men / women strengthen and tone your abs, shoulders, arms, and back. The unit teams up a pair of non skid push up bar and two easy-grip handles.To use, simply get on all fours, grab hold of the handles, and glide the wheels back and forth across the floor. At various points during the exercise, you\'ll work every major upper body muscle group as your torso adjusts to the movements. Cushioned rubber foam grips for a comfortable grip. Strengthen and tone abs, shoulder, arms and back. Push Up Bar with Toning Tube For Home Gym Combo Gym &amp; Fitness Kit</span></p>', NULL, 'Medium', '2022-05-01 08:54:24', NULL),
(30, 66, '1731625767208567.jpg', '1731625767443682.jpg', '1731625767629726.jpg', '1731625767818664.jpg', 'In The Archer we meet Tetsuya, a man once famous for his prodigious gift with a bow and arrow but who has since retired from public life, and the boy who comes searching for him.', '<p><span style=\"color: #212121; font-family: Roboto, Arial, sans-serif; font-size: 14px; background-color: #ffffff;\">In The Archer we meet Tetsuya, a man once famous for his prodigious gift with a bow and arrow but who has since retired from public life, and the boy who comes searching for him. The boy has many questions, and in answering them Tetsuya illustrates the way of the bow and the tenets of a meaningful life. Paulo Coelho\'s story suggests that living without a connection between action and soul cannot fulfil, that a life constricted by a fear of rejection or failure is not a life worth living. Instead, one must take risks, build courage and embrace the unexpected journey fate has to offer. With the wisdom, generosity, simplicity and grace that have made him an international bestseller, Paulo Coelho provides the framework for a rewarding life: hard work, passion, purpose, thoughtfulness, the willingness to fail and the urge to make a difference.</span></p>', NULL, NULL, '2022-05-01 09:10:20', NULL),
(31, 67, '1731627170185089.jpg', '1731627170254317.jpg', '1731627170320018.jpg', '1731627170433772.jpg', 'Ultra Thin Protect your phone from scratches and dents with this back cover Dust free washable Fingerprints Free.', '<p><span style=\"color: #212121; font-family: Roboto, Arial, sans-serif; font-size: 14px; background-color: #ffffff;\">Ultra Thin Protect your phone from scratches and dents with this back cover Dust free washable Fingerprints Free. Matte finish smooth feeling in hands. Made from high Quality Polycarbonate and Rubber Material Easy to install and remove from your mobile with hands. All buttons and jacks are accessible through the cut-outs. Durable &amp; Flexible material makes fitting and removing the case much easier High quality and nicely made for maximum durability and protection.</span></p>', NULL, 'Medium', '2022-05-01 09:32:38', NULL),
(32, 68, '1731627417251388.jpg', '1731627417338909.jpg', '1731627417424392.jpg', '1731627417515226.jpg', 'AUDONIC Earphones with mic for A3s,A5s,A7,A37,A57,A71,A83,K1,F1s,F3,F5,F7,F9,F11,R15 Pro,R17,Reno, Find X m for All Smartphones Wired Headset  (White, In the Ear)', '<p><span style=\"color: #212121; font-family: Arial, sans-serif; font-size: 14px; letter-spacing: -0.2px; background-color: #ffffff;\">The design of the new EarPhones is defined by the geometry of the ear. Which makes them more comfortable for more people than any other earbud-style headphone.It is a Universal wired earphone that is compatible with Various 3.5mm Jack Devices like ipod, Mobile, Tablet, Televisions, Computers, Laptops, MP3 Players.Its offered the best quality sound. The speakers inside EarPhones have been engineered to minimize sound loss and maximize sound output. So you get high-quality audio thats just as impressive as what youd hear from more expensive headphones.The EarPhones with Remote and Mic also include a built-in remote that lets you adjust the volume, control the playback of music and video, and answer or end calls with a pinch of the cord.Make calls or listen to music with this Genuine Hands Free.</span></p>', 'White', NULL, '2022-05-01 09:36:33', NULL),
(33, 69, '1731627562727726.jpg', '1731627562819893.jpg', '1731627562898254.jpg', '1731627562977134.jpg', 'APPLE MMTN2ZM/A Wired Headset  (White, In the Ear)', '<p><span style=\"color: #212121; font-family: Roboto, Arial, sans-serif; font-size: 18px; background-color: #ffffff;\">APPLE MMTN2ZM/A Wired Headset</span><span style=\"color: #212121; font-family: Roboto, Arial, sans-serif; font-size: 18px; background-color: #ffffff;\"> &nbsp;(White, In the Ear)</span></p>', NULL, NULL, '2022-05-01 09:38:52', NULL),
(34, 70, '1731627829073241.jpg', '1731627829158342.jpg', '1731627829239393.jpg', '1731627829321275.jpg', 'Simple yet elegant, this basic calculator from Casio lets you do all the usual calculations without any hassle.', '<p><span style=\"color: #212121; font-family: Roboto, Arial, sans-serif; font-size: 14px; background-color: #ffffff;\">Simple yet elegant, this basic calculator from Casio lets you do all the usual calculations without any hassle. Powered by a battery as well as solar energy, this calculator is sure to go a long way with you. You can workout 12 digit calculations with 300 steps. You will have access to regular keys like Square Root, %, and Memory. All key operations are stored in buffer, so that you don\'t lose anything even during high-speed inputs.</span></p>', NULL, NULL, '2022-05-01 09:43:06', NULL),
(35, 71, '1731627983181593.jpg', '1731627983252661.jpg', '1731627983323515.jpg', '1731627983398868.jpg', 'Lauret Blanc Undated Daily Planner and Organizer, To Do List, Affirmation and Gratitude Journal- A5, 80 GSM, 160 Pages (Plan for 80 days) A5 Planner/Organizer Ruled 160 Pages  (Multicolor)', '<p><span style=\"color: #212121; font-family: Roboto, Arial, sans-serif; font-size: 14px; background-color: #ffffff;\">Craft daily affirmations and gratitude for inspired and happier days. Appreciating whatever shows up for you in life changes your personal vibration. You radiate and generate more goodness for yourself when you&rsquo;re aware of all you have and not focusing on your have-nots. Make Every Day Count, take each day and plan it by the hour so you stay on schedule and on time always.</span></p>', NULL, NULL, '2022-05-01 09:45:33', NULL),
(36, 72, '1731628137884161.jpg', '1731628137964217.jpg', '1731628138039543.jpg', '1731628138120894.jpg', 'Flipkart SmartBuy 38Inch Acoustic Guitar Linden Wood Linden Wood  (Blue)', '<ul style=\"box-sizing: border-box; margin: 0px; padding: 0px; color: #212121; font-family: Roboto, Arial, sans-serif; font-size: 14px; background-color: #ffffff;\">\r\n<li class=\"_21lJbe\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; list-style: none;\">1 Guitar, 1 String Set, 2 Picks, 1 Strap with Cover and User Manual</li>\r\n</ul>', 'Blue', NULL, '2022-05-01 09:48:01', NULL),
(37, 73, '1731628304853604.jpg', '1731628304965942.jpg', '1731628305035884.jpg', '1731628305101801.jpg', 'Samsung Galaxy M33 5G (Mystique Green, 6GB, 128GB Storage)', '<p><span style=\"color: #212121; font-family: Roboto, Arial, sans-serif; font-size: 14px; background-color: #ffffff;\">Samsung Galaxy M33 5G (Mystique Green, 6GB, 128GB Storage) | Travel Adapter to be Purchased Separately | 5nm Processor | 6000mAh Battery | Voice Focus | Upto 12GB RAM with RAM Plus</span></p>', 'Green', 'Medium', '2022-05-01 09:50:40', NULL),
(38, 74, '1731628495061457.jpg', '1731628495126278.jpg', '1731628495192441.jpg', '1731628495254317.jpg', 'APPLE iPhone 11 (White, 64 GB)', '<p><span style=\"color: #212121; font-family: Roboto, Arial, sans-serif; font-size: 18px; background-color: #ffffff;\">APPLE iPhone 11 (White, 64 GB)</span></p>', 'White', 'W', '2022-05-01 09:53:41', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `product_lists`
--

CREATE TABLE `product_lists` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `special_price` decimal(10,2) DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subcategory` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remark` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `brand` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `star` int(11) DEFAULT NULL,
  `product_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_lists`
--

INSERT INTO `product_lists` (`id`, `title`, `price`, `special_price`, `image`, `category`, `subcategory`, `remark`, `brand`, `star`, `product_code`, `created_at`, `updated_at`) VALUES
(43, 'HP Pavilion Ryzen 5 Hexa Core 5600H', '70172.00', '59990.00', '1731519039827578.jpg', 'Computer', 'Laptops', 'FEATURED', 'HP', NULL, '76543', '2022-05-01 04:45:05', '2022-05-01 04:45:05'),
(44, 'DELL G7 Core i9 10th Gen', '227250.00', '205440.00', '1731617302806989.jpg', 'Computer', 'Laptops', 'NEW', 'Dell', NULL, '4534646', '2022-05-01 06:55:47', NULL),
(45, 'ASUS TUF Gaming F15 Core i5 10th Gen', '89990.00', '64449.00', '1731617859250555.jpg', 'Computer', 'Laptops', 'COLLECTION', 'ASUS', NULL, '546664', '2022-05-01 07:04:38', NULL),
(46, 'Lenovo ideacentre A340-24IWL Core i3', '54890.00', '44440.00', '1731618076449483.jpg', 'Computer', 'Desktop', 'FEATURED', 'Lenovo', NULL, '76568', '2022-05-01 07:08:05', NULL),
(47, 'HP APU Dual Core A6 A6-9225', '22825.00', '20850.00', '1731618259372455.jpg', 'Computer', 'Laptops', 'NEW', 'HP', NULL, '87669', '2022-05-01 07:11:00', NULL),
(48, 'ENTWINO Intel Core i5', '39999.00', '18840.00', '1731618453012179.jpg', 'Computer', 'Desktop', 'COLLECTION', 'Entwino', NULL, '342355', '2022-05-01 07:14:04', NULL),
(49, 'LG 108 cm (43 inch) Ultra HD (4K) LED Smart TV', '59990.00', '32940.00', '1731618649225301.jpg', 'Electronics', 'Smart TV', 'COLLECTION', 'LG', NULL, '543677', '2022-05-01 11:17:24', '2022-05-01 11:17:24'),
(50, 'SAMSUNG Crystal 4K Pro 108 cm (43 inch) Ultra HD (4K) LED Smart TV', '54900.00', '35940.00', '1731618815235750.jpg', 'Electronics', 'Smart TV', 'FEATURED', 'Samsung', NULL, '352566', '2022-05-02 19:45:12', '2022-05-02 19:45:12'),
(51, 'Canon EOS 1500D DSLR Camera Body+ 18-55 mm IS II Lens', '39995.00', '36449.00', '1731619021049115.jpg', 'Electronics', 'Camera', 'NEW', 'Canon', NULL, '765765', '2022-05-01 11:16:16', '2022-05-01 11:16:16'),
(52, 'IFB 6 kg 5 Star Aqua Energie', '23990.00', '20940.00', '1731619225124423.jpg', 'TVs & Appliances', 'Washing Machine', 'COLLECTION', 'IFB', NULL, '543545', '2022-05-01 07:26:21', NULL),
(53, 'SAMSUNG 6 kg 5 Star With Hygiene Steam and Ceramic Heater Fully Automatic Front Load', '26500.00', '21940.00', '1731619410966088.jpg', 'TVs & Appliances', 'Washing Machine', 'FEATURED', 'Samsung', NULL, '654788', '2022-05-01 07:29:18', NULL),
(54, 'LG 1.5 Ton 3 Star Split Dual Inverter', '68990.00', '36449.00', '1731619582703971.jpg', 'TVs & Appliances', 'Air Conditioners', 'NEW', 'LG', NULL, '87687', '2022-05-01 07:32:02', NULL),
(55, 'Striped Men Polo Neck White T-Shirt', '1299.00', '280.00', '1731622380605233.jpg', 'Fashion', 'Mens Top Wear', 'FEATURED', 'Seven Rocks', NULL, '765789', '2022-05-01 08:16:30', NULL),
(56, 'Stride Runner Running Shoes For Men', '1899.00', '1028.00', '1731622617812655.jpg', 'Fashion', 'Mens Footwear', 'COLLECTION', 'Reebok', NULL, '6856865', '2022-05-01 08:20:16', NULL),
(57, 'Sofi Wns Flip Flops', '999.00', '629.00', '1731622822477410.jpg', 'Fashion', 'Womens Footwear', 'FEATURED', 'Puma', NULL, '7876867', '2022-05-01 11:20:58', '2022-05-01 11:20:58'),
(58, 'Slip-on Clogs For Boys & Girls', '1495.00', '762.00', '1731623037628819.jpg', 'Baby & Kids', 'Kids Footwear', 'NEW', 'Crocs', NULL, '86567', '2022-05-01 08:26:57', NULL),
(59, 'Boys Printed Cotton Blend, Polycotton T Shirt', '899.00', '424.00', '1731623595641819.jpg', 'Baby & Kids', 'Kids Clothing', 'COLLECTION', 'Marvel Avengers', NULL, '434677', '2022-05-01 08:35:49', NULL),
(60, 'HIMALAYA Total Care Baby Pants', '875.00', '556.00', '1731623783260074.jpg', 'Baby & Kids', 'Baby Care', 'COLLECTION', 'Himalaya', NULL, '57677', '2022-05-01 08:38:48', NULL),
(61, 'Flipkart SmartBuy Wall Stickers Wallpaper', '999.00', '175.00', '1731623974646369.jpg', 'Home & Furniture', 'Home Decor', 'COLLECTION', 'Flipkart', NULL, '754747', '2022-05-01 08:41:50', NULL),
(62, 'Flipkart Perfect Homes Carol Engineered Wood Queen Bed', '13999.00', '9440.00', '1731624146176420.jpg', 'Home & Furniture', 'Bedroom Furniture', 'FEATURED', 'Flipkart', NULL, '757457', '2022-05-01 08:44:34', NULL),
(63, 'Flipkart Perfect Homes Webster Engineered Wood TV Entertainment Unit', '20499.00', '13640.00', '1731624317064791.jpg', 'Home & Furniture', 'Living Room Furniture', 'NEW', 'Flipkart', NULL, '754334', '2022-05-01 08:47:17', NULL),
(64, 'HEALTHKART Omega 3', '699.00', '325.00', '1731624502002243.jpg', 'Sports, Books', 'Health and Nutrition', 'COLLECTION', 'HealthKart', NULL, '25545', '2022-05-01 08:50:13', NULL),
(65, 'Manogyam Combo For General Fitness', '599.00', '249.00', '1731624765335608.jpg', 'Sports, Books', 'Home Gyms', 'COLLECTION', 'Manogyam', NULL, '23366', '2022-05-01 08:54:24', NULL),
(66, 'The Archer  (English, Hardcover, Coelho Paulo)', '250.00', '140.00', '1731625766993386.jpg', 'Sports, Books', 'Books', 'NEW', 'Penguin', NULL, '13445', '2022-05-01 09:10:20', NULL),
(67, 'WEBKREATURE Back Cover for REDMI 10', '999.00', '127.00', '1731627170098743.jpg', 'Mobile Accessories', 'Mobile Cases', 'COLLECTION', 'WebKreature', NULL, '33425', '2022-05-01 09:32:38', NULL),
(68, 'AUDONIC Earphones with mic', '899.00', '196.00', '1731627417142865.jpg', 'Mobile Accessories', 'Headphones', 'FEATURED', 'Audionic', NULL, '34577', '2022-05-01 09:36:33', NULL),
(69, 'APPLE MMTN2ZM/A Wired Headset', '1900.00', '1629.00', '1731627562626199.jpg', 'Mobile Accessories', 'Headphones', 'COLLECTION', 'Apple', NULL, '34577', '2022-05-01 09:38:52', NULL),
(70, 'CASIO MJ-12VCB-RG Desktop Basic Calculator', '535.00', '458.00', '1731627828979797.jpg', 'Others', 'Others', 'FEATURED', 'Casio', NULL, '234676', '2022-05-01 09:43:06', NULL),
(71, 'Lauret Blanc Undated Daily Planner and Organizer', '349.00', '254.00', '1731627983100407.jpg', 'Others', 'Others', 'NEW', 'Lauret Blanc', NULL, '46788', '2022-05-01 09:45:33', NULL),
(72, 'Flipkart SmartBuy 38Inch Acoustic Guitar', '6999.00', '2499.00', '1731628137805976.jpg', 'Others', 'Others', 'FEATURED', 'Flipkart', NULL, '57764', '2022-05-01 09:48:01', NULL),
(73, 'SAMSUNG Galaxy M33 5G', '24990.00', '17689.00', '1731628304786743.jpg', 'Mobiles', 'Samsung', 'NEW', 'Samsung', NULL, '35678', '2022-05-01 09:50:40', NULL),
(74, 'APPLE iPhone 11', '49900.00', '39949.00', '1731628494994249.jpg', 'Mobiles', 'Apple', 'COLLECTION', 'Apple', NULL, '46477', '2022-05-01 09:53:41', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `product_reviews`
--

CREATE TABLE `product_reviews` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reviewer_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `review_photo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reviewer_rating` tinyint(3) UNSIGNED NOT NULL,
  `reviewer_comments` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_reviews`
--

INSERT INTO `product_reviews` (`id`, `product_code`, `product_name`, `reviewer_name`, `review_photo`, `reviewer_rating`, `reviewer_comments`, `created_at`, `updated_at`) VALUES
(1, '1003499', 'Realme C35 (Glowing Black, 64 GB)', 'Ariyan', 'https://www.iconspng.com/images/young-user-icon.jpg', 4, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', NULL, NULL),
(2, '1003499', 'Realme C35 (Glowing Black, 64 GB)', 'Kazi', 'https://cdn-icons-png.flaticon.com/512/219/219986.png', 3, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', NULL, NULL),
(3, '54654654', 'HP Pavilion Ryzen 5 Hexa Core 5600H', 'Anand', NULL, 4, 'Very good', NULL, NULL),
(4, '1003499', 'Realme C35 (Glowing Black, 64 GB)', 'Anand', NULL, 3, 'Good', NULL, NULL),
(5, '54654654', 'HP Pavilion Ryzen 5 Hexa Core 5600H', 'George', NULL, 5, 'Very very good.', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payload` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('7eVL7X3qoCxGpgHIMLvIN9RkTFizgU5Nar2yy2Tc', NULL, '37.231.250.175', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiRzFDa3ZtcjR2ZUZhZDRMbVpORDdGQ1VhRkpON3dYUjlYSW10cVBnYiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NjI6Imh0dHA6Ly93d3cuYWdlb3JnZTI4LmNvbS9yZWFjdGVjb21tZXJjZS9hZG1pbmVjb20vcHVibGljL2xvZ2luIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1651586234),
('bUYhfkhbovcIruwt8qlmeFtGajZBbrU0S6oC4pZM', 1, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoieHBVOExEb0lOWGRCZnJlY2hrckZyNGZvc1AzYm1kYXZRZXdtYzR3ayI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Njk6Imh0dHA6Ly9sb2NhbGhvc3Q6ODA4MC9yZWFjdGVjb21tZXJjZS9hZG1pbmVjb20vcHVibGljL3Byb2R1Y3RzP3BhZ2U9MSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjE7czoyMToicGFzc3dvcmRfaGFzaF9zYW5jdHVtIjtzOjYwOiIkMnkkMTAkNHpzOEJFcHpRSC9KOVhBVnRVcUhsdVVUbTI1RVNqbUxXUkhZL0YyYzYzWmxuWVJHbk0xaXUiO30=', 1668413966),
('JFzbhMDX3lyhHpu0eoqY7tdmrYm27Yr0f0tLWNzM', NULL, '94.128.222.7', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoia24xTElVMkpoQ0dRWmhFb2hLVUlhUjlRMTYwajJGS1JIbUJmREw2QyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NTI6Imh0dHA6Ly9hZ2VvcmdlMjguY29tL3JlYWN0ZWNvbW1lcmNlL2FkbWluZWNvbS9wdWJsaWMiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1651502103),
('N1ro4onzLBW74zIT5948jk5YHO5FoNdASWmOY0wb', 1, '94.128.206.185', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', 'YTo2OntzOjM6InVybCI7YTowOnt9czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NjM6Imh0dHA6Ly9hZ2VvcmdlMjguY29tL3JlYWN0ZWNvbW1lcmNlL2FkbWluZWNvbS9wdWJsaWMvY2F0ZWdvcmllcyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fXM6NjoiX3Rva2VuIjtzOjQwOiJ1RHJTMmdEY3RvZnZaRWZ5OGw5d3dMUUFldmhhcVRsYzN6NWFlWUozIjtzOjIxOiJwYXNzd29yZF9oYXNoX3NhbmN0dW0iO3M6NjA6IiQyeSQxMCQ0enM4QkVwelFIL0o5WEFWdFVxSGx1VVRtMjVFU2ptTFdSSFkvRjJjNjNabG5ZUkduTTFpdSI7czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6MTt9', 1651496092),
('NI4XduxcOtjPlKN02kUo8nNR8nakO9DrSPmgdz4m', 1, '94.128.222.7', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoia3I0VVRoRzVDVEtYUkVvanJDamxHdGVNRmhDNGJsa0hOYkxoUk5QNyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Njc6Imh0dHA6Ly93d3cuYWdlb3JnZTI4LmNvbS9yZWFjdGVjb21tZXJjZS9hZG1pbmVjb20vcHVibGljL2NhdGVnb3JpZXMiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX1zOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aToxO3M6MjE6InBhc3N3b3JkX2hhc2hfc2FuY3R1bSI7czo2MDoiJDJ5JDEwJDR6czhCRXB6UUgvSjlYQVZ0VXFIbHVVVG0yNUVTam1MV1JIWS9GMmM2M1psbllSR25NMWl1Ijt9', 1651567531),
('Tk9P9b0Hml47YU3bYAPLKa6qOXATNiEV2Yho981M', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoiSkRHQ05OUTZTdVAydzdueGhkVkF4bEFJMmJqZ0w4c2I1NWlKWWIyNyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzc6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9wcm9kdWN0cz9wYWdlPTIiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX1zOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aToxO3M6MjE6InBhc3N3b3JkX2hhc2hfc2FuY3R1bSI7czo2MDoiJDJ5JDEwJEgvM2NlMWo4S1paajNFZDhwQWYzTy5mYnoyQmpFQzRXUnVDeXBaYm1zdUwxRi5NUGxmSmJpIjt9', 1651489600);

-- --------------------------------------------------------

--
-- Table structure for table `site_infos`
--

CREATE TABLE `site_infos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `about` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `refund` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `profile` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `purchase` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `privacy` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `android` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ios` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `facebook` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `twitter` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `instagram` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `copyright` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `site_infos`
--

INSERT INTO `site_infos` (`id`, `about`, `refund`, `profile`, `purchase`, `privacy`, `address`, `email`, `android`, `ios`, `facebook`, `twitter`, `instagram`, `copyright`, `created_at`, `updated_at`) VALUES
(1, '<div class=\"block__image-with-text__inner__heading\">\r\n<p class=\"ql-align-justify\">Hi! I\'m Kazi Ariyan. I\'m a web developer with a serious love for teaching I am a founder of easy Learning and a passionate Web Developer, Programmer &amp; Instructor.</p>\r\n<p class=\"ql-align-justify\">&nbsp;</p>\r\n<p class=\"ql-align-justify\">I am working online for the last 9 years and have created several successful websites running on the internet. I try to create a project-based course that helps you to learn professionally and make you fell as a complete developer. easy learning exists to help you succeed in life.</p>\r\n<p class=\"ql-align-justify\">&nbsp;</p>\r\n<p class=\"ql-align-justify\">Each course has been hand-tailored to teach a specific skill. I hope you agree! Whether you&rsquo;re trying to learn a new skill from scratch or want to refresh your memory on something you&rsquo;ve learned in the past, you&rsquo;ve come to the right place.</p>\r\n<p class=\"ql-align-justify\">&nbsp;</p>\r\n<p class=\"ql-align-justify\">Education makes the world a better place. Make your world better with new skills.</p>\r\n<p>&nbsp;</p>\r\n</div>', '<div class=\"block__image-with-text__inner__heading\">\r\n<div class=\"prose-sm\">\r\n<p><em>If you have entered this website from the European Union or Norway, Iceland or Liechtenstein, please <a href=\"https://www.entrepreneur.com/privacy-policy/eu\" aria-label=\"read information about your personal data\">click on this link</a>&nbsp;to read important information about how your personal data is used and stored.</em></p>\r\n<p><em>If you have entered this website from California, please&nbsp;<a href=\"https://www.entrepreneur.com/privacy-policy/ccpa\" aria-label=\"read information about your personal data\">click on this link</a>&nbsp;to read important information about how your personal data is used and stored.</em></p>\r\n<p>Last Revised: October 27th, 2021</p>\r\n</div>\r\n<h2>Your Privacy is Serious Business to Us!</h2>\r\n<p>Maintaining the privacy of our website visitors and mobile application users is very important to us. Because we gather information about you, you need to know:</p>\r\n<ul>\r\n<li>The kinds of information we collect and why we collect it;</li>\r\n<li>How we use that information; and</li>\r\n<li>How you can update that information or limit or control how it is used.</li>\r\n</ul>\r\n<p>This privacy policy (\"Privacy Policy\") describes how Entrepreneur Media, Inc. (\"EMI\") with registered address at 18061 Fitch, Irvine CA, 92614 may collect, use and share information you provide when using our Service, including your personal information. The term \"Service\" includes the websites&nbsp;<a href=\"https://www.entrepreneur.com/\">www.entrepreneur.com</a>,&nbsp;<a href=\"https://www.greenentrepreneur.com/\">www.greenentrepreneur.com</a>&nbsp;and&nbsp;<a href=\"https://www.franchise500.com/?__hstc=163787360.8b28c2f0fca021cc9581de251ee40abe.1649154398878.1649154398878.1649154398878.1&amp;__hssc=163787360.2.1649154398878&amp;__hsfp=1134087836\">www.franchise500.com</a>&nbsp;together with any related subsites, sub-domains, mobile and software applications, services, features and/or content associated therewith (collectively, \"our Websites\"). For purposes of this Privacy Policy, the terms \"we,\" \"us\" and \"our\" refer to EMI and \"you\" refers to you, as a user of our Service.</p>\r\n<p>We\'ve tried to keep this Privacy Policy simple, but if you\'re not familiar with any of the terms used or have any questions, contact us at&nbsp;<em><a href=\"mailto:legal@entrepreneur.com\">legal@entrepreneur.com</a></em>. Your privacy matters to us at EMI, so whether you are new to our Service or are a regular or longtime user, it is important that you take the time to carefully read our Privacy Policy, so you can understand our practices as relates to your information.</p>\r\n<p>We will ask for your consent before using your information in any manner and for any purpose other than as described in this Privacy Policy.</p>\r\n<h2>TABLE OF CONTENTS</h2>\r\n<ol>\r\n<li><a href=\"https://www.entrepreneur.com/privacy-policy#infocollect\">The Kinds of Information We Collect</a></li>\r\n<li><a href=\"https://www.entrepreneur.com/privacy-policy#howcollect\">How We Use Information We Collect</a></li>\r\n<li><a href=\"https://www.entrepreneur.com/privacy-policy#advertising\">The Advertising on Our Service</a></li>\r\n<li><a href=\"https://www.entrepreneur.com/privacy-policy#choice\">Privacy and Choice</a></li>\r\n<li><a href=\"https://www.entrepreneur.com/privacy-policy#minors\">Minors and Children Under Age 16</a></li>\r\n<li><a href=\"https://www.entrepreneur.com/privacy-policy#wherestore\">Where We Store the Information</a></li>\r\n<li><a href=\"https://www.entrepreneur.com/privacy-policy#infoshare\">The Information You Share</a></li>\r\n<li><a href=\"https://www.entrepreneur.com/privacy-policy#updateinfo\">Updating Your Personal Information</a></li>\r\n<li><a href=\"https://www.entrepreneur.com/privacy-policy#share\">The Information We Share</a></li>\r\n<li><a href=\"https://www.entrepreneur.com/privacy-policy#protect\">The Protection of Your Information</a></li>\r\n<li><a href=\"https://www.entrepreneur.com/privacy-policy#policy\">The Scope of Our Privacy Policy</a></li>\r\n<li><a href=\"https://www.entrepreneur.com/privacy-policy#rights\">Your Rights and Choices about What Personal Information We Collect and Maintain and How We Use It</a></li>\r\n<li><a href=\"https://www.entrepreneur.com/privacy-policy#glossary\">Glossary of Terms</a></li>\r\n<li><a href=\"https://www.entrepreneur.com/privacy-policy#complaints\">Handling Complaints from Our Service Users and Regulatory Authorities</a></li>\r\n<li><a href=\"https://www.entrepreneur.com/privacy-policy#california\">California Residents</a></li>\r\n<li><a href=\"https://www.entrepreneur.com/privacy-policy#revisions\">Privacy Policy Revisions and Updates</a></li>\r\n<li><a href=\"https://www.entrepreneur.com/privacy-policy#contact\">Contacting Us</a></li>\r\n</ol>\r\n<h3 id=\"infocollect\">1. The Kinds of Information We Collect.</h3>\r\n<p>We collect information to provide better services to all of users of our Service, including determining what types of editorial content and the products and services offered on our Service that are of the most interest and relevance to you.</p>\r\n<p>We collect information about you from the following two sources:</p>\r\n<p><strong>a. The Information you give us (\"EMI Profile\").</strong>&nbsp;For example, many of our services require that you create an account. When you do, we\'ll ask for personal information, like your name, email address, telephone number, and, if you are purchasing products or services on our Service, purchase information such as the products or services purchased, the dates of purchase and the purchase price.</p>\r\n<p><strong>b. The information we collect from your use of our Service.</strong>&nbsp;This information relates generally to what editorial and advertising content you view, and the products and services you use that we and our third-party providers offer. This information includes:</p>\r\n<p class=\"ml-10\">(i) Device Information, we collect information about the devices you use to access our Service, such as hardware settings, browser type, browser language, the date and time of your request and referral URL.</p>\r\n<p class=\"ml-10\">(ii) Log Information. When you use our Service, we automatically collect and store certain information in&nbsp;<em>server logs</em>, which automatically record certain information when you use our Service, including the following:</p>\r\n<p class=\"ml-20\">(a) details about how you have used our Service, such as your search queries;</p>\r\n<p class=\"ml-20\">(b) your&nbsp;<em>IP address</em>, which is the number assigned to an Internet connected device such as a tablet or smartphone and used to identify the geographic location of that device; and</p>\r\n<p class=\"ml-20\">(c)&nbsp;<em>cookies</em>&nbsp;that may uniquely identify your browser and collect information about how our visitors interact with our Service, as well as help us identify problems such as error messages from certain pages. A&nbsp;<em>cookie</em>&nbsp;is a small file containing a string of characters that is sent to your computer or other device when you visit our Service. When you visit our Service any time thereafter, the cookie allows our Service to recognize your browser and to store information about your user preferences and other personal information.</p>\r\n<p class=\"ml-10\">(iii) Location information. When you visit our Service, we may collect and process information about your actual location. We use various technologies to determine location, including IP address.</p>\r\n<p class=\"ml-10\">(iv) Local storage. We may collect and store information (including personal information) locally on your device, using mechanisms such as&nbsp;<em>browser web storage</em>&nbsp;(including HTML 5), which allows for data to be stored on a browser even after the browser has been closed and the reopened, and&nbsp;<em>application data caches</em>, which allow for data to be stored on your device, enabling an application to run without an Internet connection and to load content faster.</p>\r\n<p class=\"ml-10\">(v) Collection and Storage technologies. We and our partners use various technologies to collect and store information when you access the EMI Service, and this may include using cookies or other technologies to identify your browser or device. We also use these technologies to collect and store information when you access our Service and interact with the content and products and services we offer, such as advertising services.</p>\r\n<p>c. Our properties may feature Nielsen proprietary measurement software, which will allow you to contribute to market research, such as Nielsen TV Ratings. To learn more about the information that Nielsen software may collect and your choices with regard to it, please see the Nielsen Digital Measurement Privacy Policy at&nbsp;<a href=\"https://www.nielsen.com/digitalprivacy\">https://www.nielsen.com/digitalprivacy</a>.</p>\r\n<h3 id=\"howcollect\">2. How We Use Information We Collect.</h3>\r\n<p>We use the information we collect from users of our Service in order to provide you with more meaningful editorial and advertising content and to offer you relevant products and services, as well as to maintain, protect and improve your overall experience. In particular, you may choose (i) to subscribe to any of our electronic newsletters, (ii) to receive \"special offers\" by EMI and its various service providers, (iii) to receive franchise and business opportunity information from selected advertisers, and we will use your information for these purposes provided you have given us your consent. You may also choose (iv) to submit questions or comments in response to editorial content on our Service, or (v) to purchase books and related publications offered on our affiliated website at bookstore.entrepreneur.com (the \"Bookstore Website\") in which case, we will process your information to perform our agreement or comply with your request. In each of those instances you will be asked to provide, and we will collect and store, certain personal information such as email address, zip code, telephone number, and in some instances information about your business. In the case of purchases made through the Bookstore Website, we will also collect and store additional information about those purchases, including titles purchased, quantity and dates of purchases, the method of payment, and other information provided such as billing and shipping addresses (if different). By providing that information and provided you have consented thereto, you acknowledge that it can be used by EMI and its various advertisers and other service providers to send you promotions and other communications concerning business opportunities, products or services. You can remove yourself from any such electronic newsletters and otherwise stop receiving any further promotions and other commercial communications by following the \"unsubscribe\" directions included with each newsletter or, in all of the above instances, by sending an email with the word \"unsubscribe\" in the subject line to&nbsp;<em>unsubscribe@entrepreneur.com</em>.</p>\r\n<p>We may use the name you provide for your EMI Profile across all of the services we offer that require an EMI Account, which is where the information you provide is maintained. In addition, we may replace past names associated with your EMI Account, so that you are represented consistently across all our services.</p>\r\n<p>When you contact EMI, we retain a record of your communications to help solve any issues you might be facing, or to maintain a record to assist with legal claims. We will keep these records for a period of no more than 6 years. Provided you have consented thereto, we may use your email address to inform you about the products and services offered on our Service, such as letting you know about upcoming changes or improvements.</p>\r\n<p>We use information collected from cookies and other technologies, like&nbsp;<em>pixel tags</em>, to improve your user experience and the overall quality of our services. You can reset your browser to reject all cookies or to indicate when a cookie is being sent. But you need to know that you may not be able to access or use some features and services on our Service without cookies. A&nbsp;<em>pixel tag</em>&nbsp;is a type of technology which is placed on a website or within an email and used for the purpose of tracking activity on a website and is often used in combination with cookies. For further information about how we use and collect cookies, see our separate cookie policy located at&nbsp;<a href=\"https://www.entrepreneur.com/cookie-policy\">https://www.entrepreneur.com/cookie-policy</a>.</p>\r\n<p>We do not track our users across third party websites and thus do not respond to Do Not Track (\"DNT\") signals. However, some third party websites do keep track of your browsing activities when they serve you content, which enables them to tailor what they present to you. If you are visiting such sites, certain website browsers allow you to set the DNT signal on your browser so that third parties (particularly advertisers) know you do not want to be tracked.</p>\r\n<h3 id=\"advertising\">3. The Advertising on Our Service.</h3>\r\n<p>Advertising on our Service makes it possible for us to offer you the information and products/services free of charge. We take seriously and make every effort to make sure that advertising is safe, unobtrusive and as relevant as possible.</p>\r\n<p>Cookies are used to make that advertising as relevant as possible to the needs and interests of users of our Service, and more valuable to our advertisers in being able to show our visitors more relevant ads. Cookies are also used to avoid you seeing the same ad multiple times and to detect and prevent click fraud. We use AdSense, Google Analytics and other DoubleClick services (collectively, \"Google&reg; Services\"), which help us manage and improve our Service and help our advertisers better understand and track user interaction with their ads. When you visit a location on our Service that includes one or more of these ads, various cookies may be sent to your browser.</p>\r\n<p>We may use other technologies, including Flash and HTML5, which provide the functionality for such displays as interactive advertising. We may also use your IP address to select and provide advertising targeted to that address, in order to improve the relevance of the ads you see and to measure and report to advertisers non-personal statistical information about geographical location of those website visitors who are viewing their ads.</p>\r\n<p>The advertising you see on our Service is determined by a number of factors relating to relevance, including (i) your approximate geographical location base on you IP address and (ii) the subject matter you may be viewing on our Service. For example, if you are viewing an article about physical health, you may see ads concerning exercise equipment.</p>\r\n<p>If you wish to know more about the information collected from website users and used to tailor those advertisements for products and services which might be of the most interest and relevance to those users, or would like to know more about the user&rsquo;s options in connection with the collection and use of that information, you can visit the Network Advertising Initiative (\"NAI\") website at&nbsp;<a href=\"https://www.networkadvertising.org/\">https://www.networkadvertising.org</a>. The NAI is a cooperative of online advertising companies who are committed to responsible practices and consumer protection.</p>\r\n<p><a>Click here to revoke your Ad Personalization choice.</a></p>\r\n<h3 id=\"choice\">4. Privacy and Choice.</h3>\r\n<p>People have different concerns about privacy. Our goal is to be clear about what information we collect, so that you can make meaningful choices about how that information is used. You may set your browser in its \"options\" or \"preferences\" feature in order to warn you before accepting cookies or to disable all cookies entirely. However, it is important to understand that many of the services we provide on our Service and to our Service users may not function properly if your cookies are disabled.</p>\r\n<h3 id=\"minors\">5. Minors and Children under the Age of 16.</h3>\r\n<p>EMI does not knowingly collect or solicit personal information from anyone under the age of 16 or knowingly allow such persons to register to use our Service. No one under age 16 is allowed to provide any personal information to EMI or on our Service. In the event that we learn that we have collected personal information from a child under age 16, we will delete that information as quickly as possible. If you believe that we might have any information from or about a child under age 16, please contact us at&nbsp;<em><a href=\"mailto:legal@entrepreneur.com\">legal@entrepreneur.com</a></em>.</p>\r\n<h3 id=\"wherestore\">6. Where We Store the Information</h3>\r\n<p>The data that we collect from you may be transferred to, and stored at, a destination outside of your country and the European Economic Area (\"<strong>EEA</strong>\") including, in particular, the United States. It may also be processed by staff operating outside the EEA who work for us or for one of our suppliers. Such staff may be engaged in, among other things, the fulfilment of your order, the processing of your payment details and the provision of support services. By submitting your information, you agree to this transfer, storing or processing.</p>\r\n<h3 id=\"infoshare\">7. The Information You Share.</h3>\r\n<p>Our Service allows visitors to share information with others, such as comments on editorial content and information shared via social media. When you share information it may as a result become accessible to others, through such mechanisms as search engines. We cannot be responsible for how others with whom you may share information may use that information. (See Paragraph 10 below&mdash;The Scope of Our Privacy Policy.)</p>\r\n<h3 id=\"updateinfo\">8. Updating Your Personal Information.</h3>\r\n<p>It is our policy that, whenever you visit our Service, you should be able to access your&nbsp;<em>personal information</em>, which is information identifying you such as name, email address, billing information or any other information which can reasonably be expected to identify you. If that information is incorrect, we try to provide you ways to update it quickly or to delete it - unless we have to keep that information for legitimate business or legal purposes, in which case it will be retained for the periods specified in this Privacy Policy. When updating your personal information, we may ask you to verify your identity before we can act on your request.</p>\r\n<p>If allowed under applicable law, we may reject requests that are unreasonably repetitive, require disproportionate technical effort (for example, requests which would be extremely impractical (for instance, requests concerning information residing on backup systems)).</p>\r\n<p>Where we can provide information access and correction, we will do so at no cost to you, except where it would require a disproportionate effort. We aim to maintain our services in a manner that protects information from accidental or malicious destruction. Because of this, after you delete information from our Service, we may not immediately delete residual copies from our active servers and may not remove information from our backup systems.</p>\r\n<h3 id=\"share\">9. The Information We Share.</h3>\r\n<p>We do not share personal information with companies, organizations and individuals outside of EMI, unless one of the following circumstances applies:</p>\r\n<p>a. We will share personal information with companies, organizations or individuals outside of EMI when we have your opt-in or other consent to do so.</p>\r\n<p>b. We will share personal information with companies, organizations or individuals outside of EMI if we have a good-faith belief that access, use, preservation or disclosure of that information is reasonably necessary to:</p>\r\n<p class=\"ml-10\">(i)comply with applicable law, regulations, legal process or enforceable governmental request;</p>\r\n<p class=\"ml-10\">(ii)enforce any of our applicable Terms of Service, including any potential violations;</p>\r\n<p class=\"ml-10\">(iii)detect, prevent, or otherwise address fraud, security or technical issues; or</p>\r\n<p class=\"ml-10\">(iv)protect against harm to the rights, property or safety of users of our Service or service providers, as well as the general public and EMI as required or permitted by law.</p>\r\n<p>c. We may share personal information with a buyer or other successor in the event of a merger, divestiture, restructuring, reorganization, dissolution or other sale or transfer of some or all of EMI&rsquo;s assets, whether as a going concern or as part of bankruptcy, liquidation or similar proceeding, in which personal information held by EMI about our Service users is among the assets transferred.</p>\r\n<p>d. We may share your information publicly and with our partners such as third-party content providers, advertisers or connected sites, but in a manner which does&nbsp;<em>not</em>&nbsp;reveal your personally-identifiable information and which is&nbsp;<em>aggregated with other user information</em>&nbsp;to show usage of EMI and third-party products and services offered on our Service and trends based on such categories as age, gender, geographical origination and other demographic characteristics.</p>\r\n<h3 id=\"protect\">10. The Protection of Your Information.</h3>\r\n<p>We work hard to protect the information provided by, or collected about, the users of our Service, from unauthorized access, or alteration, disclosure or destruction. In particular:</p>\r\n<p>a. We encrypt much of that information using SSL.</p>\r\n<p>b. We review our information collection, storage and processing practices, including physical security measures, to guard against unauthorized access to our systems and the information collected and stored therein</p>\r\n<p>c. We restrict access to personal information to those of our employees, contractors and agents, who need to know that information in order to process it for us, who are subject to the obligation of strict confidentiality as relates to that information, and who will be subject to discipline, including termination, if they violate that obligation.</p>\r\n<h3 id=\"policy\">11. The Scope of Our Privacy Policy.</h3>\r\n<p>Our Privacy Policy applies to all of the services offered through our Service. However, our Privacy Policy does&nbsp;<em>not</em>&nbsp;apply to the any of the following:</p>\r\n<p>a. services offered by other companies or individuals on non-EMI websites or applications, including any such websites or applications which may be referenced on or linked from our Service; and</p>\r\n<p>b. the information collected by, and information practices of, other companies, organizations or individuals, who advertise our Service, editorial or advertising content, or any of the products or services offered on our Service, and who may use cookies, pixel tags and other technologies to serve and offer relevant ads.</p>\r\n<h3 id=\"rights\">12. Your Rights and Choices about What Personal Information We Collect and Maintain and How We Use It</h3>\r\n<p><strong><em>Access to Specific Information and Data Portability Rights</em></strong></p>\r\n<p>You have the right to request that we disclose certain information to You about our collection and use of your Personal Information over the past 12 months. Once we receive and confirm your verifiable consumer request, we will disclose to you:</p>\r\n<ul>\r\n<li>The categories of Personal Information we collected about you.</li>\r\n<li>The categories of sources for the Personal Information we collected about you.</li>\r\n<li>Our business or commercial purpose (as defined in Section 13 below) for collecting or selling (as also defined in Section below) that Personal Information.</li>\r\n<li>The categories of third parties, with whom we share that Personal Information.</li>\r\n<li>The specific pieces of Personal Information we collected about YOU (also called a data portability request).</li>\r\n<li>If we sold (as defined in Section 13 below) or disclosed your Personal Information for a business purpose, two separate lists disclosing:\r\n<ul>\r\n<li>sales, identifying the Personal Information categories that each category of recipient purchased; and</li>\r\n<li>disclosures for a business purpose, identifying the Personal Information categories that each category of recipient obtained.</li>\r\n</ul>\r\n</li>\r\n</ul>\r\n<p><strong><em>Deletion Request Rights</em></strong></p>\r\n<p>You have the right to request that we delete any of your Personal Information that we collected from you and retained, subject to certain exceptions. Once we receive and confirm your verifiable consumer request, we will delete (and direct our service providers to delete) your Personal Information from our records, unless an exception applies.</p>\r\n<p>We may deny your deletion request if retaining the Personal Information you request to have deleted is necessary for us or our service providers to:</p>\r\n<div class=\"ml-10\">\r\n<div class=\"mb-4\">a. Complete the transaction, for which we collected the Personal Information, provide a good or service that you requested, take actions reasonably anticipated within the context of our ongoing business relationship with you, or otherwise perform our contract with you.</div>\r\n<div class=\"mb-4\">b. Detect security incidents, protect against malicious, deceptive, fraudulent, or illegal activity, or prosecute those responsible for such activities.</div>\r\n<div class=\"mb-4\">c. Debug products, in order to identify and repair errors that impair existing intended functionality.</div>\r\n<div class=\"mb-4\">d. Exercise free speech, ensure the right of another consumer to exercise his/her free speech rights, or exercise another right provided for by law.</div>\r\n<div class=\"mb-4\">e. If you had previously provided informed consent, engage in public or peer-reviewed scientific, historical, or statistical research in the public interest, that adheres to all other applicable ethics and privacy laws, when deletion of the Personal Information may likely render impossible or seriously impair the purpose(s) of that research.</div>\r\n<div class=\"mb-4\">f. Enable solely internal uses that are reasonably aligned with consumer expectations based on your relationship with us.</div>\r\n<div class=\"mb-4\">g. Comply with applicable law or any legal obligation(s) we may have.</div>\r\n<div class=\"mb-4\">h. Make other internal and lawful use of that Personal Information that is compatible with the context in which you provided that Information.</div>\r\n</div>\r\n<p><strong><em>Exercising Access, Data Portability, and Deletion Rights</em></strong></p>\r\n<p>To exercise the access, data portability, and deletion rights described above, please submit a verifiable consumer request to us by visiting us, and completing the information requested, at&nbsp;<a href=\"https://www.entrepreneur.com/privacy-preferences\">www.entrepreneur.com/privacy-preferences</a>.</p>\r\n<p>Only You may make a verifiable consumer request related to your Personal Information. You may also make a verifiable consumer request on behalf of your minor child.</p>\r\n<p>You may only make a verifiable consumer request for access or data portability twice within a 12-month period. The verifiable consumer request must:</p>\r\n<ul>\r\n<li>Provide sufficient information that allows us to reasonably verify you are the person about whom we collected personal information or an authorized representative.</li>\r\n<li>Describe your request with sufficient detail that allows us to properly understand, evaluate, and respond to it.</li>\r\n</ul>\r\n<p>We cannot respond to your request or provide you with personal information if we cannot verify your identity or authority to make the request and confirm that the Personal Information relates to you. Making a verifiable consumer request does not require you to create an account with us. We will only use Personal Information provided in a verifiable consumer request to verify your identity as the person making the request or having your authority to make the request.</p>\r\n<p><strong><em>Response Timing and Format</em></strong></p>\r\n<p>We endeavor to respond to a verifiable consumer request within 45 days of its receipt. If we require more time (up to 90 days), we will inform you in writing of the reason(s) why we will need more time and the additional time needed. If you have an account with us, we will deliver our written response to that account. If you do not have an account with us, we will deliver our written response to you electronically to the email address you provide. Any disclosures we provide will only cover the 12-month period preceding our receipt of your verifiable consumer request. The response we provide will also explain any reason(s) why we cannot comply with your request (if applicable). For data portability requests, we will select a format for providing your Personal Information, which is readily usable and which should allow you to transmit that Information from one entity to another entity without hindrance.</p>\r\n<p>We do not charge a fee to process or respond to your verifiable consumer request unless it is excessive, repetitive, or manifestly unfounded. If we determine that the request warrants a fee, we will tell you why we made that decision and provide you with a cost estimate before completing your request.</p>\r\n<h3 id=\"glossary\">13. Glossary of Terms.</h3>\r\n<p>As used in this Privacy Notice, the terms below shall have the following meanings:</p>\r\n<p><strong>&ldquo;Affiliate&rdquo;</strong>&nbsp;means a person or entity, who/which directly, or indirectly through one or more intermediaries, controls, is controlled by, or is under common control with, us.</p>\r\n<p><strong>&ldquo;Business purpose&rdquo;</strong>&nbsp;means the use of Personal Information for a business&rsquo; or service provider&rsquo;s operational purpose(s) or other notified purpose(s), provided that the use of such information is reasonably necessary and proportionate to achieve the purpose for which the Personal Information was collected or processed or for another operational purpose that is compatible with the context in which the Personal Information was collected or processed. A business purpose includes: (i) auditing interactions with consumers such as counting ad impressions; (ii) security such as protecting against malicious or fraudulent activity; (iii) debugging such as identification and repair of impairments to functionality; (iv) short-term uses not involving disclosure to a third party, building a profile about a consumer, or altering a consumer&rsquo;s experience outside of the transaction for which the personal information was collected; (v) performing services such as maintaining or servicing accounts and processing or fulfilling orders, verifying customer information, or providing advertising or marketing services; (vi) internal research for tech development; and (vi) quality and safety maintenance and verification.</p>\r\n<p><strong>&ldquo;Commercial purpose&rdquo;</strong>&nbsp;under CCPA means to induce a person&rsquo;s commercial or economic interests, such as by inducing a person to buy, subscribe to, or provide goods, services or information.</p>\r\n<p><strong>&ldquo;Sale&rdquo;</strong>&nbsp;means selling, renting, releasing, disclosing, disseminating, making available, transferring, or otherwise communicating orally, in writing, or by electronic or other means, a consumer\'s Personal Information to a third party for valuable consideration or for no consideration, for the third party\'s commercial purposes.</p>\r\n<p><strong>&ldquo;Service Provider&rdquo;</strong>&nbsp;means a for-profit legal entity, to which we disclose a consumer&rsquo;s Personal Information for processing for a business purpose pursuant to a written contract between us and the Service Provider.</p>\r\n<h3 id=\"complaints\">14. Handling Complaints from Our Service Users and Regulatory Authorities.</h3>\r\n<p>We regularly review our compliance with this Privacy Policy and with any and all industry-recommended best practices, as well as applicable laws and regulations. When we receive a formal written complaint, we will contact the person who made the complaint to follow up. This is without prejudice to your right to launch a claim with your local data protection supervisory authority. We work with the appropriate regulatory authorities, including local data protection authorities, to resolve any complaints regarding the transfer of personal data that we cannot resolve with the users of our Service directly.</p>\r\n<h3 id=\"california\">15. California Residents.</h3>\r\n<p>California residents may choose to request certain information regarding our disclosure of personal information to third parties for their direct marketing purposes or choose to opt out of such disclosure. Our policy is not to disclose personal information collected online to a third party for directing marketing without your approval. To make a request or to opt out at any time, please contact us at&nbsp;<em><a href=\"mailto:legal@entrepreneur.com\">legal@entrepreneur.com</a></em>&nbsp;or the other contact information provided below.</p>\r\n<h3 id=\"revisions\">16. Privacy Policy Revisions and Updates.</h3>\r\n<p>Our Privacy Policy may be revised from time to time, in which case the Privacy Policy you view will be the most current version and the date of the latest such revision will be identified at the beginning of this Privacy Policy. We will provide you with 30 days&rsquo; notice of any substantial changes to the terms of this Privacy Policy.</p>\r\n</div>', '<div class=\"block__image-with-text__inner__heading\">\r\n<p class=\"ql-align-justify\">Hi! I\'m Kazi Ariyan. I\'m a web developer with a serious love for teaching I am a founder of easy Learning and a passionate Web Developer, Programmer &amp; Instructor.</p>\r\n<p class=\"ql-align-justify\">&nbsp;</p>\r\n<p class=\"ql-align-justify\">I am working online for the last 9 years and have created several successful websites running on the internet. I try to create a project-based course that helps you to learn professionally and make you fell as a complete developer. easy learning exists to help you succeed in life.</p>\r\n<p class=\"ql-align-justify\">&nbsp;</p>\r\n<p class=\"ql-align-justify\">Each course has been hand-tailored to teach a specific skill. I hope you agree! Whether you&rsquo;re trying to learn a new skill from scratch or want to refresh your memory on something you&rsquo;ve learned in the past, you&rsquo;ve come to the right place.</p>\r\n<p class=\"ql-align-justify\">&nbsp;</p>\r\n<p class=\"ql-align-justify\">Education makes the world a better place. Make your world better with new skills.</p>\r\n<p>&nbsp;</p>\r\n</div>', '<div class=\"block__image-with-text__inner__heading\">\r\n<div class=\"prose-sm\">\r\n<p><em>If you have entered this website from the European Union or Norway, Iceland or Liechtenstein, please <a href=\"https://www.entrepreneur.com/privacy-policy/eu\" aria-label=\"read information about your personal data\">click on this link</a>&nbsp;to read important information about how your personal data is used and stored.</em></p>\r\n<p><em>If you have entered this website from California, please&nbsp;<a href=\"https://www.entrepreneur.com/privacy-policy/ccpa\" aria-label=\"read information about your personal data\">click on this link</a>&nbsp;to read important information about how your personal data is used and stored.</em></p>\r\n<p>Last Revised: October 27th, 2021</p>\r\n</div>\r\n<h2>Your Privacy is Serious Business to Us!</h2>\r\n<p>Maintaining the privacy of our website visitors and mobile application users is very important to us. Because we gather information about you, you need to know:</p>\r\n<ul>\r\n<li>The kinds of information we collect and why we collect it;</li>\r\n<li>How we use that information; and</li>\r\n<li>How you can update that information or limit or control how it is used.</li>\r\n</ul>\r\n<p>This privacy policy (\"Privacy Policy\") describes how Entrepreneur Media, Inc. (\"EMI\") with registered address at 18061 Fitch, Irvine CA, 92614 may collect, use and share information you provide when using our Service, including your personal information. The term \"Service\" includes the websites&nbsp;<a href=\"https://www.entrepreneur.com/\">www.entrepreneur.com</a>,&nbsp;<a href=\"https://www.greenentrepreneur.com/\">www.greenentrepreneur.com</a>&nbsp;and&nbsp;<a href=\"https://www.franchise500.com/?__hstc=163787360.8b28c2f0fca021cc9581de251ee40abe.1649154398878.1649154398878.1649154398878.1&amp;__hssc=163787360.2.1649154398878&amp;__hsfp=1134087836\">www.franchise500.com</a>&nbsp;together with any related subsites, sub-domains, mobile and software applications, services, features and/or content associated therewith (collectively, \"our Websites\"). For purposes of this Privacy Policy, the terms \"we,\" \"us\" and \"our\" refer to EMI and \"you\" refers to you, as a user of our Service.</p>\r\n<p>We\'ve tried to keep this Privacy Policy simple, but if you\'re not familiar with any of the terms used or have any questions, contact us at&nbsp;<em><a href=\"mailto:legal@entrepreneur.com\">legal@entrepreneur.com</a></em>. Your privacy matters to us at EMI, so whether you are new to our Service or are a regular or longtime user, it is important that you take the time to carefully read our Privacy Policy, so you can understand our practices as relates to your information.</p>\r\n<p>We will ask for your consent before using your information in any manner and for any purpose other than as described in this Privacy Policy.</p>\r\n<h2>TABLE OF CONTENTS</h2>\r\n<ol>\r\n<li><a href=\"https://www.entrepreneur.com/privacy-policy#infocollect\">The Kinds of Information We Collect</a></li>\r\n<li><a href=\"https://www.entrepreneur.com/privacy-policy#howcollect\">How We Use Information We Collect</a></li>\r\n<li><a href=\"https://www.entrepreneur.com/privacy-policy#advertising\">The Advertising on Our Service</a></li>\r\n<li><a href=\"https://www.entrepreneur.com/privacy-policy#choice\">Privacy and Choice</a></li>\r\n<li><a href=\"https://www.entrepreneur.com/privacy-policy#minors\">Minors and Children Under Age 16</a></li>\r\n<li><a href=\"https://www.entrepreneur.com/privacy-policy#wherestore\">Where We Store the Information</a></li>\r\n<li><a href=\"https://www.entrepreneur.com/privacy-policy#infoshare\">The Information You Share</a></li>\r\n<li><a href=\"https://www.entrepreneur.com/privacy-policy#updateinfo\">Updating Your Personal Information</a></li>\r\n<li><a href=\"https://www.entrepreneur.com/privacy-policy#share\">The Information We Share</a></li>\r\n<li><a href=\"https://www.entrepreneur.com/privacy-policy#protect\">The Protection of Your Information</a></li>\r\n<li><a href=\"https://www.entrepreneur.com/privacy-policy#policy\">The Scope of Our Privacy Policy</a></li>\r\n<li><a href=\"https://www.entrepreneur.com/privacy-policy#rights\">Your Rights and Choices about What Personal Information We Collect and Maintain and How We Use It</a></li>\r\n<li><a href=\"https://www.entrepreneur.com/privacy-policy#glossary\">Glossary of Terms</a></li>\r\n<li><a href=\"https://www.entrepreneur.com/privacy-policy#complaints\">Handling Complaints from Our Service Users and Regulatory Authorities</a></li>\r\n<li><a href=\"https://www.entrepreneur.com/privacy-policy#california\">California Residents</a></li>\r\n<li><a href=\"https://www.entrepreneur.com/privacy-policy#revisions\">Privacy Policy Revisions and Updates</a></li>\r\n<li><a href=\"https://www.entrepreneur.com/privacy-policy#contact\">Contacting Us</a></li>\r\n</ol>\r\n<h3 id=\"infocollect\">1. The Kinds of Information We Collect.</h3>\r\n<p>We collect information to provide better services to all of users of our Service, including determining what types of editorial content and the products and services offered on our Service that are of the most interest and relevance to you.</p>\r\n<p>We collect information about you from the following two sources:</p>\r\n<p><strong>a. The Information you give us (\"EMI Profile\").</strong>&nbsp;For example, many of our services require that you create an account. When you do, we\'ll ask for personal information, like your name, email address, telephone number, and, if you are purchasing products or services on our Service, purchase information such as the products or services purchased, the dates of purchase and the purchase price.</p>\r\n<p><strong>b. The information we collect from your use of our Service.</strong>&nbsp;This information relates generally to what editorial and advertising content you view, and the products and services you use that we and our third-party providers offer. This information includes:</p>\r\n<p class=\"ml-10\">(i) Device Information, we collect information about the devices you use to access our Service, such as hardware settings, browser type, browser language, the date and time of your request and referral URL.</p>\r\n<p class=\"ml-10\">(ii) Log Information. When you use our Service, we automatically collect and store certain information in&nbsp;<em>server logs</em>, which automatically record certain information when you use our Service, including the following:</p>\r\n<p class=\"ml-20\">(a) details about how you have used our Service, such as your search queries;</p>\r\n<p class=\"ml-20\">(b) your&nbsp;<em>IP address</em>, which is the number assigned to an Internet connected device such as a tablet or smartphone and used to identify the geographic location of that device; and</p>\r\n<p class=\"ml-20\">(c)&nbsp;<em>cookies</em>&nbsp;that may uniquely identify your browser and collect information about how our visitors interact with our Service, as well as help us identify problems such as error messages from certain pages. A&nbsp;<em>cookie</em>&nbsp;is a small file containing a string of characters that is sent to your computer or other device when you visit our Service. When you visit our Service any time thereafter, the cookie allows our Service to recognize your browser and to store information about your user preferences and other personal information.</p>\r\n<p class=\"ml-10\">(iii) Location information. When you visit our Service, we may collect and process information about your actual location. We use various technologies to determine location, including IP address.</p>\r\n<p class=\"ml-10\">(iv) Local storage. We may collect and store information (including personal information) locally on your device, using mechanisms such as&nbsp;<em>browser web storage</em>&nbsp;(including HTML 5), which allows for data to be stored on a browser even after the browser has been closed and the reopened, and&nbsp;<em>application data caches</em>, which allow for data to be stored on your device, enabling an application to run without an Internet connection and to load content faster.</p>\r\n<p class=\"ml-10\">(v) Collection and Storage technologies. We and our partners use various technologies to collect and store information when you access the EMI Service, and this may include using cookies or other technologies to identify your browser or device. We also use these technologies to collect and store information when you access our Service and interact with the content and products and services we offer, such as advertising services.</p>\r\n<p>c. Our properties may feature Nielsen proprietary measurement software, which will allow you to contribute to market research, such as Nielsen TV Ratings. To learn more about the information that Nielsen software may collect and your choices with regard to it, please see the Nielsen Digital Measurement Privacy Policy at&nbsp;<a href=\"https://www.nielsen.com/digitalprivacy\">https://www.nielsen.com/digitalprivacy</a>.</p>\r\n<h3 id=\"howcollect\">2. How We Use Information We Collect.</h3>\r\n<p>We use the information we collect from users of our Service in order to provide you with more meaningful editorial and advertising content and to offer you relevant products and services, as well as to maintain, protect and improve your overall experience. In particular, you may choose (i) to subscribe to any of our electronic newsletters, (ii) to receive \"special offers\" by EMI and its various service providers, (iii) to receive franchise and business opportunity information from selected advertisers, and we will use your information for these purposes provided you have given us your consent. You may also choose (iv) to submit questions or comments in response to editorial content on our Service, or (v) to purchase books and related publications offered on our affiliated website at bookstore.entrepreneur.com (the \"Bookstore Website\") in which case, we will process your information to perform our agreement or comply with your request. In each of those instances you will be asked to provide, and we will collect and store, certain personal information such as email address, zip code, telephone number, and in some instances information about your business. In the case of purchases made through the Bookstore Website, we will also collect and store additional information about those purchases, including titles purchased, quantity and dates of purchases, the method of payment, and other information provided such as billing and shipping addresses (if different). By providing that information and provided you have consented thereto, you acknowledge that it can be used by EMI and its various advertisers and other service providers to send you promotions and other communications concerning business opportunities, products or services. You can remove yourself from any such electronic newsletters and otherwise stop receiving any further promotions and other commercial communications by following the \"unsubscribe\" directions included with each newsletter or, in all of the above instances, by sending an email with the word \"unsubscribe\" in the subject line to&nbsp;<em>unsubscribe@entrepreneur.com</em>.</p>\r\n<p>We may use the name you provide for your EMI Profile across all of the services we offer that require an EMI Account, which is where the information you provide is maintained. In addition, we may replace past names associated with your EMI Account, so that you are represented consistently across all our services.</p>\r\n<p>When you contact EMI, we retain a record of your communications to help solve any issues you might be facing, or to maintain a record to assist with legal claims. We will keep these records for a period of no more than 6 years. Provided you have consented thereto, we may use your email address to inform you about the products and services offered on our Service, such as letting you know about upcoming changes or improvements.</p>\r\n<p>We use information collected from cookies and other technologies, like&nbsp;<em>pixel tags</em>, to improve your user experience and the overall quality of our services. You can reset your browser to reject all cookies or to indicate when a cookie is being sent. But you need to know that you may not be able to access or use some features and services on our Service without cookies. A&nbsp;<em>pixel tag</em>&nbsp;is a type of technology which is placed on a website or within an email and used for the purpose of tracking activity on a website and is often used in combination with cookies. For further information about how we use and collect cookies, see our separate cookie policy located at&nbsp;<a href=\"https://www.entrepreneur.com/cookie-policy\">https://www.entrepreneur.com/cookie-policy</a>.</p>\r\n<p>We do not track our users across third party websites and thus do not respond to Do Not Track (\"DNT\") signals. However, some third party websites do keep track of your browsing activities when they serve you content, which enables them to tailor what they present to you. If you are visiting such sites, certain website browsers allow you to set the DNT signal on your browser so that third parties (particularly advertisers) know you do not want to be tracked.</p>\r\n<h3 id=\"advertising\">3. The Advertising on Our Service.</h3>\r\n<p>Advertising on our Service makes it possible for us to offer you the information and products/services free of charge. We take seriously and make every effort to make sure that advertising is safe, unobtrusive and as relevant as possible.</p>\r\n<p>Cookies are used to make that advertising as relevant as possible to the needs and interests of users of our Service, and more valuable to our advertisers in being able to show our visitors more relevant ads. Cookies are also used to avoid you seeing the same ad multiple times and to detect and prevent click fraud. We use AdSense, Google Analytics and other DoubleClick services (collectively, \"Google&reg; Services\"), which help us manage and improve our Service and help our advertisers better understand and track user interaction with their ads. When you visit a location on our Service that includes one or more of these ads, various cookies may be sent to your browser.</p>\r\n<p>We may use other technologies, including Flash and HTML5, which provide the functionality for such displays as interactive advertising. We may also use your IP address to select and provide advertising targeted to that address, in order to improve the relevance of the ads you see and to measure and report to advertisers non-personal statistical information about geographical location of those website visitors who are viewing their ads.</p>\r\n<p>The advertising you see on our Service is determined by a number of factors relating to relevance, including (i) your approximate geographical location base on you IP address and (ii) the subject matter you may be viewing on our Service. For example, if you are viewing an article about physical health, you may see ads concerning exercise equipment.</p>\r\n<p>If you wish to know more about the information collected from website users and used to tailor those advertisements for products and services which might be of the most interest and relevance to those users, or would like to know more about the user&rsquo;s options in connection with the collection and use of that information, you can visit the Network Advertising Initiative (\"NAI\") website at&nbsp;<a href=\"https://www.networkadvertising.org/\">https://www.networkadvertising.org</a>. The NAI is a cooperative of online advertising companies who are committed to responsible practices and consumer protection.</p>\r\n<p><a>Click here to revoke your Ad Personalization choice.</a></p>\r\n<h3 id=\"choice\">4. Privacy and Choice.</h3>\r\n<p>People have different concerns about privacy. Our goal is to be clear about what information we collect, so that you can make meaningful choices about how that information is used. You may set your browser in its \"options\" or \"preferences\" feature in order to warn you before accepting cookies or to disable all cookies entirely. However, it is important to understand that many of the services we provide on our Service and to our Service users may not function properly if your cookies are disabled.</p>\r\n<h3 id=\"minors\">5. Minors and Children under the Age of 16.</h3>\r\n<p>EMI does not knowingly collect or solicit personal information from anyone under the age of 16 or knowingly allow such persons to register to use our Service. No one under age 16 is allowed to provide any personal information to EMI or on our Service. In the event that we learn that we have collected personal information from a child under age 16, we will delete that information as quickly as possible. If you believe that we might have any information from or about a child under age 16, please contact us at&nbsp;<em><a href=\"mailto:legal@entrepreneur.com\">legal@entrepreneur.com</a></em>.</p>\r\n<h3 id=\"wherestore\">6. Where We Store the Information</h3>\r\n<p>The data that we collect from you may be transferred to, and stored at, a destination outside of your country and the European Economic Area (\"<strong>EEA</strong>\") including, in particular, the United States. It may also be processed by staff operating outside the EEA who work for us or for one of our suppliers. Such staff may be engaged in, among other things, the fulfilment of your order, the processing of your payment details and the provision of support services. By submitting your information, you agree to this transfer, storing or processing.</p>\r\n<h3 id=\"infoshare\">7. The Information You Share.</h3>\r\n<p>Our Service allows visitors to share information with others, such as comments on editorial content and information shared via social media. When you share information it may as a result become accessible to others, through such mechanisms as search engines. We cannot be responsible for how others with whom you may share information may use that information. (See Paragraph 10 below&mdash;The Scope of Our Privacy Policy.)</p>\r\n<h3 id=\"updateinfo\">8. Updating Your Personal Information.</h3>\r\n<p>It is our policy that, whenever you visit our Service, you should be able to access your&nbsp;<em>personal information</em>, which is information identifying you such as name, email address, billing information or any other information which can reasonably be expected to identify you. If that information is incorrect, we try to provide you ways to update it quickly or to delete it - unless we have to keep that information for legitimate business or legal purposes, in which case it will be retained for the periods specified in this Privacy Policy. When updating your personal information, we may ask you to verify your identity before we can act on your request.</p>\r\n<p>If allowed under applicable law, we may reject requests that are unreasonably repetitive, require disproportionate technical effort (for example, requests which would be extremely impractical (for instance, requests concerning information residing on backup systems)).</p>\r\n<p>Where we can provide information access and correction, we will do so at no cost to you, except where it would require a disproportionate effort. We aim to maintain our services in a manner that protects information from accidental or malicious destruction. Because of this, after you delete information from our Service, we may not immediately delete residual copies from our active servers and may not remove information from our backup systems.</p>\r\n<h3 id=\"share\">9. The Information We Share.</h3>\r\n<p>We do not share personal information with companies, organizations and individuals outside of EMI, unless one of the following circumstances applies:</p>\r\n<p>a. We will share personal information with companies, organizations or individuals outside of EMI when we have your opt-in or other consent to do so.</p>\r\n<p>b. We will share personal information with companies, organizations or individuals outside of EMI if we have a good-faith belief that access, use, preservation or disclosure of that information is reasonably necessary to:</p>\r\n<p class=\"ml-10\">(i)comply with applicable law, regulations, legal process or enforceable governmental request;</p>\r\n<p class=\"ml-10\">(ii)enforce any of our applicable Terms of Service, including any potential violations;</p>\r\n<p class=\"ml-10\">(iii)detect, prevent, or otherwise address fraud, security or technical issues; or</p>\r\n<p class=\"ml-10\">(iv)protect against harm to the rights, property or safety of users of our Service or service providers, as well as the general public and EMI as required or permitted by law.</p>\r\n<p>c. We may share personal information with a buyer or other successor in the event of a merger, divestiture, restructuring, reorganization, dissolution or other sale or transfer of some or all of EMI&rsquo;s assets, whether as a going concern or as part of bankruptcy, liquidation or similar proceeding, in which personal information held by EMI about our Service users is among the assets transferred.</p>\r\n<p>d. We may share your information publicly and with our partners such as third-party content providers, advertisers or connected sites, but in a manner which does&nbsp;<em>not</em>&nbsp;reveal your personally-identifiable information and which is&nbsp;<em>aggregated with other user information</em>&nbsp;to show usage of EMI and third-party products and services offered on our Service and trends based on such categories as age, gender, geographical origination and other demographic characteristics.</p>\r\n<h3 id=\"protect\">10. The Protection of Your Information.</h3>\r\n<p>We work hard to protect the information provided by, or collected about, the users of our Service, from unauthorized access, or alteration, disclosure or destruction. In particular:</p>\r\n<p>a. We encrypt much of that information using SSL.</p>\r\n<p>b. We review our information collection, storage and processing practices, including physical security measures, to guard against unauthorized access to our systems and the information collected and stored therein</p>\r\n<p>c. We restrict access to personal information to those of our employees, contractors and agents, who need to know that information in order to process it for us, who are subject to the obligation of strict confidentiality as relates to that information, and who will be subject to discipline, including termination, if they violate that obligation.</p>\r\n<h3 id=\"policy\">11. The Scope of Our Privacy Policy.</h3>\r\n<p>Our Privacy Policy applies to all of the services offered through our Service. However, our Privacy Policy does&nbsp;<em>not</em>&nbsp;apply to the any of the following:</p>\r\n<p>a. services offered by other companies or individuals on non-EMI websites or applications, including any such websites or applications which may be referenced on or linked from our Service; and</p>\r\n<p>b. the information collected by, and information practices of, other companies, organizations or individuals, who advertise our Service, editorial or advertising content, or any of the products or services offered on our Service, and who may use cookies, pixel tags and other technologies to serve and offer relevant ads.</p>\r\n<h3 id=\"rights\">12. Your Rights and Choices about What Personal Information We Collect and Maintain and How We Use It</h3>\r\n<p><strong><em>Access to Specific Information and Data Portability Rights</em></strong></p>\r\n<p>You have the right to request that we disclose certain information to You about our collection and use of your Personal Information over the past 12 months. Once we receive and confirm your verifiable consumer request, we will disclose to you:</p>\r\n<ul>\r\n<li>The categories of Personal Information we collected about you.</li>\r\n<li>The categories of sources for the Personal Information we collected about you.</li>\r\n<li>Our business or commercial purpose (as defined in Section 13 below) for collecting or selling (as also defined in Section below) that Personal Information.</li>\r\n<li>The categories of third parties, with whom we share that Personal Information.</li>\r\n<li>The specific pieces of Personal Information we collected about YOU (also called a data portability request).</li>\r\n<li>If we sold (as defined in Section 13 below) or disclosed your Personal Information for a business purpose, two separate lists disclosing:\r\n<ul>\r\n<li>sales, identifying the Personal Information categories that each category of recipient purchased; and</li>\r\n<li>disclosures for a business purpose, identifying the Personal Information categories that each category of recipient obtained.</li>\r\n</ul>\r\n</li>\r\n</ul>\r\n<p><strong><em>Deletion Request Rights</em></strong></p>\r\n<p>You have the right to request that we delete any of your Personal Information that we collected from you and retained, subject to certain exceptions. Once we receive and confirm your verifiable consumer request, we will delete (and direct our service providers to delete) your Personal Information from our records, unless an exception applies.</p>\r\n<p>We may deny your deletion request if retaining the Personal Information you request to have deleted is necessary for us or our service providers to:</p>\r\n<div class=\"ml-10\">\r\n<div class=\"mb-4\">a. Complete the transaction, for which we collected the Personal Information, provide a good or service that you requested, take actions reasonably anticipated within the context of our ongoing business relationship with you, or otherwise perform our contract with you.</div>\r\n<div class=\"mb-4\">b. Detect security incidents, protect against malicious, deceptive, fraudulent, or illegal activity, or prosecute those responsible for such activities.</div>\r\n<div class=\"mb-4\">c. Debug products, in order to identify and repair errors that impair existing intended functionality.</div>\r\n<div class=\"mb-4\">d. Exercise free speech, ensure the right of another consumer to exercise his/her free speech rights, or exercise another right provided for by law.</div>\r\n<div class=\"mb-4\">e. If you had previously provided informed consent, engage in public or peer-reviewed scientific, historical, or statistical research in the public interest, that adheres to all other applicable ethics and privacy laws, when deletion of the Personal Information may likely render impossible or seriously impair the purpose(s) of that research.</div>\r\n<div class=\"mb-4\">f. Enable solely internal uses that are reasonably aligned with consumer expectations based on your relationship with us.</div>\r\n<div class=\"mb-4\">g. Comply with applicable law or any legal obligation(s) we may have.</div>\r\n<div class=\"mb-4\">h. Make other internal and lawful use of that Personal Information that is compatible with the context in which you provided that Information.</div>\r\n</div>\r\n<p><strong><em>Exercising Access, Data Portability, and Deletion Rights</em></strong></p>\r\n<p>To exercise the access, data portability, and deletion rights described above, please submit a verifiable consumer request to us by visiting us, and completing the information requested, at&nbsp;<a href=\"https://www.entrepreneur.com/privacy-preferences\">www.entrepreneur.com/privacy-preferences</a>.</p>\r\n<p>Only You may make a verifiable consumer request related to your Personal Information. You may also make a verifiable consumer request on behalf of your minor child.</p>\r\n<p>You may only make a verifiable consumer request for access or data portability twice within a 12-month period. The verifiable consumer request must:</p>\r\n<ul>\r\n<li>Provide sufficient information that allows us to reasonably verify you are the person about whom we collected personal information or an authorized representative.</li>\r\n<li>Describe your request with sufficient detail that allows us to properly understand, evaluate, and respond to it.</li>\r\n</ul>\r\n<p>We cannot respond to your request or provide you with personal information if we cannot verify your identity or authority to make the request and confirm that the Personal Information relates to you. Making a verifiable consumer request does not require you to create an account with us. We will only use Personal Information provided in a verifiable consumer request to verify your identity as the person making the request or having your authority to make the request.</p>\r\n<p><strong><em>Response Timing and Format</em></strong></p>\r\n<p>We endeavor to respond to a verifiable consumer request within 45 days of its receipt. If we require more time (up to 90 days), we will inform you in writing of the reason(s) why we will need more time and the additional time needed. If you have an account with us, we will deliver our written response to that account. If you do not have an account with us, we will deliver our written response to you electronically to the email address you provide. Any disclosures we provide will only cover the 12-month period preceding our receipt of your verifiable consumer request. The response we provide will also explain any reason(s) why we cannot comply with your request (if applicable). For data portability requests, we will select a format for providing your Personal Information, which is readily usable and which should allow you to transmit that Information from one entity to another entity without hindrance.</p>\r\n<p>We do not charge a fee to process or respond to your verifiable consumer request unless it is excessive, repetitive, or manifestly unfounded. If we determine that the request warrants a fee, we will tell you why we made that decision and provide you with a cost estimate before completing your request.</p>\r\n<h3 id=\"glossary\">13. Glossary of Terms.</h3>\r\n<p>As used in this Privacy Notice, the terms below shall have the following meanings:</p>\r\n<p><strong>&ldquo;Affiliate&rdquo;</strong>&nbsp;means a person or entity, who/which directly, or indirectly through one or more intermediaries, controls, is controlled by, or is under common control with, us.</p>\r\n<p><strong>&ldquo;Business purpose&rdquo;</strong>&nbsp;means the use of Personal Information for a business&rsquo; or service provider&rsquo;s operational purpose(s) or other notified purpose(s), provided that the use of such information is reasonably necessary and proportionate to achieve the purpose for which the Personal Information was collected or processed or for another operational purpose that is compatible with the context in which the Personal Information was collected or processed. A business purpose includes: (i) auditing interactions with consumers such as counting ad impressions; (ii) security such as protecting against malicious or fraudulent activity; (iii) debugging such as identification and repair of impairments to functionality; (iv) short-term uses not involving disclosure to a third party, building a profile about a consumer, or altering a consumer&rsquo;s experience outside of the transaction for which the personal information was collected; (v) performing services such as maintaining or servicing accounts and processing or fulfilling orders, verifying customer information, or providing advertising or marketing services; (vi) internal research for tech development; and (vi) quality and safety maintenance and verification.</p>\r\n<p><strong>&ldquo;Commercial purpose&rdquo;</strong>&nbsp;under CCPA means to induce a person&rsquo;s commercial or economic interests, such as by inducing a person to buy, subscribe to, or provide goods, services or information.</p>\r\n<p><strong>&ldquo;Sale&rdquo;</strong>&nbsp;means selling, renting, releasing, disclosing, disseminating, making available, transferring, or otherwise communicating orally, in writing, or by electronic or other means, a consumer\'s Personal Information to a third party for valuable consideration or for no consideration, for the third party\'s commercial purposes.</p>\r\n<p><strong>&ldquo;Service Provider&rdquo;</strong>&nbsp;means a for-profit legal entity, to which we disclose a consumer&rsquo;s Personal Information for processing for a business purpose pursuant to a written contract between us and the Service Provider.</p>\r\n<h3 id=\"complaints\">14. Handling Complaints from Our Service Users and Regulatory Authorities.</h3>\r\n<p>We regularly review our compliance with this Privacy Policy and with any and all industry-recommended best practices, as well as applicable laws and regulations. When we receive a formal written complaint, we will contact the person who made the complaint to follow up. This is without prejudice to your right to launch a claim with your local data protection supervisory authority. We work with the appropriate regulatory authorities, including local data protection authorities, to resolve any complaints regarding the transfer of personal data that we cannot resolve with the users of our Service directly.</p>\r\n<h3 id=\"california\">15. California Residents.</h3>\r\n<p>California residents may choose to request certain information regarding our disclosure of personal information to third parties for their direct marketing purposes or choose to opt out of such disclosure. Our policy is not to disclose personal information collected online to a third party for directing marketing without your approval. To make a request or to opt out at any time, please contact us at&nbsp;<em><a href=\"mailto:legal@entrepreneur.com\">legal@entrepreneur.com</a></em>&nbsp;or the other contact information provided below.</p>\r\n<h3 id=\"revisions\">16. Privacy Policy Revisions and Updates.</h3>\r\n<p>Our Privacy Policy may be revised from time to time, in which case the Privacy Policy you view will be the most current version and the date of the latest such revision will be identified at the beginning of this Privacy Policy. We will provide you with 30 days&rsquo; notice of any substantial changes to the terms of this Privacy Policy.</p>\r\n</div>', '<div class=\"block__image-with-text__inner__heading\">\r\n<div class=\"prose-sm\">\r\n<p><em>If you have entered this website from the European Union or Norway, Iceland or Liechtenstein, please <a href=\"https://www.entrepreneur.com/privacy-policy/eu\" aria-label=\"read information about your personal data\">click on this link</a>&nbsp;to read important information about how your personal data is used and stored.</em></p>\r\n<p><em>If you have entered this website from California, please&nbsp;<a href=\"https://www.entrepreneur.com/privacy-policy/ccpa\" aria-label=\"read information about your personal data\">click on this link</a>&nbsp;to read important information about how your personal data is used and stored.</em></p>\r\n<p>Last Revised: October 27th, 2021</p>\r\n</div>\r\n<h2>Your Privacy is Serious Business to Us!</h2>\r\n<p>Maintaining the privacy of our website visitors and mobile application users is very important to us. Because we gather information about you, you need to know:</p>\r\n<ul>\r\n<li>The kinds of information we collect and why we collect it;</li>\r\n<li>How we use that information; and</li>\r\n<li>How you can update that information or limit or control how it is used.</li>\r\n</ul>\r\n<p>This privacy policy (\"Privacy Policy\") describes how Entrepreneur Media, Inc. (\"EMI\") with registered address at 18061 Fitch, Irvine CA, 92614 may collect, use and share information you provide when using our Service, including your personal information. The term \"Service\" includes the websites&nbsp;<a href=\"https://www.entrepreneur.com/\">www.entrepreneur.com</a>,&nbsp;<a href=\"https://www.greenentrepreneur.com/\">www.greenentrepreneur.com</a>&nbsp;and&nbsp;<a href=\"https://www.franchise500.com/?__hstc=163787360.8b28c2f0fca021cc9581de251ee40abe.1649154398878.1649154398878.1649154398878.1&amp;__hssc=163787360.2.1649154398878&amp;__hsfp=1134087836\">www.franchise500.com</a>&nbsp;together with any related subsites, sub-domains, mobile and software applications, services, features and/or content associated therewith (collectively, \"our Websites\"). For purposes of this Privacy Policy, the terms \"we,\" \"us\" and \"our\" refer to EMI and \"you\" refers to you, as a user of our Service.</p>\r\n<p>We\'ve tried to keep this Privacy Policy simple, but if you\'re not familiar with any of the terms used or have any questions, contact us at&nbsp;<em><a href=\"mailto:legal@entrepreneur.com\">legal@entrepreneur.com</a></em>. Your privacy matters to us at EMI, so whether you are new to our Service or are a regular or longtime user, it is important that you take the time to carefully read our Privacy Policy, so you can understand our practices as relates to your information.</p>\r\n<p>We will ask for your consent before using your information in any manner and for any purpose other than as described in this Privacy Policy.</p>\r\n<h2>TABLE OF CONTENTS</h2>\r\n<ol>\r\n<li><a href=\"https://www.entrepreneur.com/privacy-policy#infocollect\">The Kinds of Information We Collect</a></li>\r\n<li><a href=\"https://www.entrepreneur.com/privacy-policy#howcollect\">How We Use Information We Collect</a></li>\r\n<li><a href=\"https://www.entrepreneur.com/privacy-policy#advertising\">The Advertising on Our Service</a></li>\r\n<li><a href=\"https://www.entrepreneur.com/privacy-policy#choice\">Privacy and Choice</a></li>\r\n<li><a href=\"https://www.entrepreneur.com/privacy-policy#minors\">Minors and Children Under Age 16</a></li>\r\n<li><a href=\"https://www.entrepreneur.com/privacy-policy#wherestore\">Where We Store the Information</a></li>\r\n<li><a href=\"https://www.entrepreneur.com/privacy-policy#infoshare\">The Information You Share</a></li>\r\n<li><a href=\"https://www.entrepreneur.com/privacy-policy#updateinfo\">Updating Your Personal Information</a></li>\r\n<li><a href=\"https://www.entrepreneur.com/privacy-policy#share\">The Information We Share</a></li>\r\n<li><a href=\"https://www.entrepreneur.com/privacy-policy#protect\">The Protection of Your Information</a></li>\r\n<li><a href=\"https://www.entrepreneur.com/privacy-policy#policy\">The Scope of Our Privacy Policy</a></li>\r\n<li><a href=\"https://www.entrepreneur.com/privacy-policy#rights\">Your Rights and Choices about What Personal Information We Collect and Maintain and How We Use It</a></li>\r\n<li><a href=\"https://www.entrepreneur.com/privacy-policy#glossary\">Glossary of Terms</a></li>\r\n<li><a href=\"https://www.entrepreneur.com/privacy-policy#complaints\">Handling Complaints from Our Service Users and Regulatory Authorities</a></li>\r\n<li><a href=\"https://www.entrepreneur.com/privacy-policy#california\">California Residents</a></li>\r\n<li><a href=\"https://www.entrepreneur.com/privacy-policy#revisions\">Privacy Policy Revisions and Updates</a></li>\r\n<li><a href=\"https://www.entrepreneur.com/privacy-policy#contact\">Contacting Us</a></li>\r\n</ol>\r\n<h3 id=\"infocollect\">1. The Kinds of Information We Collect.</h3>\r\n<p>We collect information to provide better services to all of users of our Service, including determining what types of editorial content and the products and services offered on our Service that are of the most interest and relevance to you.</p>\r\n<p>We collect information about you from the following two sources:</p>\r\n<p><strong>a. The Information you give us (\"EMI Profile\").</strong>&nbsp;For example, many of our services require that you create an account. When you do, we\'ll ask for personal information, like your name, email address, telephone number, and, if you are purchasing products or services on our Service, purchase information such as the products or services purchased, the dates of purchase and the purchase price.</p>\r\n<p><strong>b. The information we collect from your use of our Service.</strong>&nbsp;This information relates generally to what editorial and advertising content you view, and the products and services you use that we and our third-party providers offer. This information includes:</p>\r\n<p class=\"ml-10\">(i) Device Information, we collect information about the devices you use to access our Service, such as hardware settings, browser type, browser language, the date and time of your request and referral URL.</p>\r\n<p class=\"ml-10\">(ii) Log Information. When you use our Service, we automatically collect and store certain information in&nbsp;<em>server logs</em>, which automatically record certain information when you use our Service, including the following:</p>\r\n<p class=\"ml-20\">(a) details about how you have used our Service, such as your search queries;</p>\r\n<p class=\"ml-20\">(b) your&nbsp;<em>IP address</em>, which is the number assigned to an Internet connected device such as a tablet or smartphone and used to identify the geographic location of that device; and</p>\r\n<p class=\"ml-20\">(c)&nbsp;<em>cookies</em>&nbsp;that may uniquely identify your browser and collect information about how our visitors interact with our Service, as well as help us identify problems such as error messages from certain pages. A&nbsp;<em>cookie</em>&nbsp;is a small file containing a string of characters that is sent to your computer or other device when you visit our Service. When you visit our Service any time thereafter, the cookie allows our Service to recognize your browser and to store information about your user preferences and other personal information.</p>\r\n<p class=\"ml-10\">(iii) Location information. When you visit our Service, we may collect and process information about your actual location. We use various technologies to determine location, including IP address.</p>\r\n<p class=\"ml-10\">(iv) Local storage. We may collect and store information (including personal information) locally on your device, using mechanisms such as&nbsp;<em>browser web storage</em>&nbsp;(including HTML 5), which allows for data to be stored on a browser even after the browser has been closed and the reopened, and&nbsp;<em>application data caches</em>, which allow for data to be stored on your device, enabling an application to run without an Internet connection and to load content faster.</p>\r\n<p class=\"ml-10\">(v) Collection and Storage technologies. We and our partners use various technologies to collect and store information when you access the EMI Service, and this may include using cookies or other technologies to identify your browser or device. We also use these technologies to collect and store information when you access our Service and interact with the content and products and services we offer, such as advertising services.</p>\r\n<p>c. Our properties may feature Nielsen proprietary measurement software, which will allow you to contribute to market research, such as Nielsen TV Ratings. To learn more about the information that Nielsen software may collect and your choices with regard to it, please see the Nielsen Digital Measurement Privacy Policy at&nbsp;<a href=\"https://www.nielsen.com/digitalprivacy\">https://www.nielsen.com/digitalprivacy</a>.</p>\r\n<h3 id=\"howcollect\">2. How We Use Information We Collect.</h3>\r\n<p>We use the information we collect from users of our Service in order to provide you with more meaningful editorial and advertising content and to offer you relevant products and services, as well as to maintain, protect and improve your overall experience. In particular, you may choose (i) to subscribe to any of our electronic newsletters, (ii) to receive \"special offers\" by EMI and its various service providers, (iii) to receive franchise and business opportunity information from selected advertisers, and we will use your information for these purposes provided you have given us your consent. You may also choose (iv) to submit questions or comments in response to editorial content on our Service, or (v) to purchase books and related publications offered on our affiliated website at bookstore.entrepreneur.com (the \"Bookstore Website\") in which case, we will process your information to perform our agreement or comply with your request. In each of those instances you will be asked to provide, and we will collect and store, certain personal information such as email address, zip code, telephone number, and in some instances information about your business. In the case of purchases made through the Bookstore Website, we will also collect and store additional information about those purchases, including titles purchased, quantity and dates of purchases, the method of payment, and other information provided such as billing and shipping addresses (if different). By providing that information and provided you have consented thereto, you acknowledge that it can be used by EMI and its various advertisers and other service providers to send you promotions and other communications concerning business opportunities, products or services. You can remove yourself from any such electronic newsletters and otherwise stop receiving any further promotions and other commercial communications by following the \"unsubscribe\" directions included with each newsletter or, in all of the above instances, by sending an email with the word \"unsubscribe\" in the subject line to&nbsp;<em>unsubscribe@entrepreneur.com</em>.</p>\r\n<p>We may use the name you provide for your EMI Profile across all of the services we offer that require an EMI Account, which is where the information you provide is maintained. In addition, we may replace past names associated with your EMI Account, so that you are represented consistently across all our services.</p>\r\n<p>When you contact EMI, we retain a record of your communications to help solve any issues you might be facing, or to maintain a record to assist with legal claims. We will keep these records for a period of no more than 6 years. Provided you have consented thereto, we may use your email address to inform you about the products and services offered on our Service, such as letting you know about upcoming changes or improvements.</p>\r\n<p>We use information collected from cookies and other technologies, like&nbsp;<em>pixel tags</em>, to improve your user experience and the overall quality of our services. You can reset your browser to reject all cookies or to indicate when a cookie is being sent. But you need to know that you may not be able to access or use some features and services on our Service without cookies. A&nbsp;<em>pixel tag</em>&nbsp;is a type of technology which is placed on a website or within an email and used for the purpose of tracking activity on a website and is often used in combination with cookies. For further information about how we use and collect cookies, see our separate cookie policy located at&nbsp;<a href=\"https://www.entrepreneur.com/cookie-policy\">https://www.entrepreneur.com/cookie-policy</a>.</p>\r\n<p>We do not track our users across third party websites and thus do not respond to Do Not Track (\"DNT\") signals. However, some third party websites do keep track of your browsing activities when they serve you content, which enables them to tailor what they present to you. If you are visiting such sites, certain website browsers allow you to set the DNT signal on your browser so that third parties (particularly advertisers) know you do not want to be tracked.</p>\r\n<h3 id=\"advertising\">3. The Advertising on Our Service.</h3>\r\n<p>Advertising on our Service makes it possible for us to offer you the information and products/services free of charge. We take seriously and make every effort to make sure that advertising is safe, unobtrusive and as relevant as possible.</p>\r\n<p>Cookies are used to make that advertising as relevant as possible to the needs and interests of users of our Service, and more valuable to our advertisers in being able to show our visitors more relevant ads. Cookies are also used to avoid you seeing the same ad multiple times and to detect and prevent click fraud. We use AdSense, Google Analytics and other DoubleClick services (collectively, \"Google&reg; Services\"), which help us manage and improve our Service and help our advertisers better understand and track user interaction with their ads. When you visit a location on our Service that includes one or more of these ads, various cookies may be sent to your browser.</p>\r\n<p>We may use other technologies, including Flash and HTML5, which provide the functionality for such displays as interactive advertising. We may also use your IP address to select and provide advertising targeted to that address, in order to improve the relevance of the ads you see and to measure and report to advertisers non-personal statistical information about geographical location of those website visitors who are viewing their ads.</p>\r\n<p>The advertising you see on our Service is determined by a number of factors relating to relevance, including (i) your approximate geographical location base on you IP address and (ii) the subject matter you may be viewing on our Service. For example, if you are viewing an article about physical health, you may see ads concerning exercise equipment.</p>\r\n<p>If you wish to know more about the information collected from website users and used to tailor those advertisements for products and services which might be of the most interest and relevance to those users, or would like to know more about the user&rsquo;s options in connection with the collection and use of that information, you can visit the Network Advertising Initiative (\"NAI\") website at&nbsp;<a href=\"https://www.networkadvertising.org/\">https://www.networkadvertising.org</a>. The NAI is a cooperative of online advertising companies who are committed to responsible practices and consumer protection.</p>\r\n<p><a>Click here to revoke your Ad Personalization choice.</a></p>\r\n<h3 id=\"choice\">4. Privacy and Choice.</h3>\r\n<p>People have different concerns about privacy. Our goal is to be clear about what information we collect, so that you can make meaningful choices about how that information is used. You may set your browser in its \"options\" or \"preferences\" feature in order to warn you before accepting cookies or to disable all cookies entirely. However, it is important to understand that many of the services we provide on our Service and to our Service users may not function properly if your cookies are disabled.</p>\r\n<h3 id=\"minors\">5. Minors and Children under the Age of 16.</h3>\r\n<p>EMI does not knowingly collect or solicit personal information from anyone under the age of 16 or knowingly allow such persons to register to use our Service. No one under age 16 is allowed to provide any personal information to EMI or on our Service. In the event that we learn that we have collected personal information from a child under age 16, we will delete that information as quickly as possible. If you believe that we might have any information from or about a child under age 16, please contact us at&nbsp;<em><a href=\"mailto:legal@entrepreneur.com\">legal@entrepreneur.com</a></em>.</p>\r\n<h3 id=\"wherestore\">6. Where We Store the Information</h3>\r\n<p>The data that we collect from you may be transferred to, and stored at, a destination outside of your country and the European Economic Area (\"<strong>EEA</strong>\") including, in particular, the United States. It may also be processed by staff operating outside the EEA who work for us or for one of our suppliers. Such staff may be engaged in, among other things, the fulfilment of your order, the processing of your payment details and the provision of support services. By submitting your information, you agree to this transfer, storing or processing.</p>\r\n<h3 id=\"infoshare\">7. The Information You Share.</h3>\r\n<p>Our Service allows visitors to share information with others, such as comments on editorial content and information shared via social media. When you share information it may as a result become accessible to others, through such mechanisms as search engines. We cannot be responsible for how others with whom you may share information may use that information. (See Paragraph 10 below&mdash;The Scope of Our Privacy Policy.)</p>\r\n<h3 id=\"updateinfo\">8. Updating Your Personal Information.</h3>\r\n<p>It is our policy that, whenever you visit our Service, you should be able to access your&nbsp;<em>personal information</em>, which is information identifying you such as name, email address, billing information or any other information which can reasonably be expected to identify you. If that information is incorrect, we try to provide you ways to update it quickly or to delete it - unless we have to keep that information for legitimate business or legal purposes, in which case it will be retained for the periods specified in this Privacy Policy. When updating your personal information, we may ask you to verify your identity before we can act on your request.</p>\r\n<p>If allowed under applicable law, we may reject requests that are unreasonably repetitive, require disproportionate technical effort (for example, requests which would be extremely impractical (for instance, requests concerning information residing on backup systems)).</p>\r\n<p>Where we can provide information access and correction, we will do so at no cost to you, except where it would require a disproportionate effort. We aim to maintain our services in a manner that protects information from accidental or malicious destruction. Because of this, after you delete information from our Service, we may not immediately delete residual copies from our active servers and may not remove information from our backup systems.</p>\r\n<h3 id=\"share\">9. The Information We Share.</h3>\r\n<p>We do not share personal information with companies, organizations and individuals outside of EMI, unless one of the following circumstances applies:</p>\r\n<p>a. We will share personal information with companies, organizations or individuals outside of EMI when we have your opt-in or other consent to do so.</p>\r\n<p>b. We will share personal information with companies, organizations or individuals outside of EMI if we have a good-faith belief that access, use, preservation or disclosure of that information is reasonably necessary to:</p>\r\n<p class=\"ml-10\">(i)comply with applicable law, regulations, legal process or enforceable governmental request;</p>\r\n<p class=\"ml-10\">(ii)enforce any of our applicable Terms of Service, including any potential violations;</p>\r\n<p class=\"ml-10\">(iii)detect, prevent, or otherwise address fraud, security or technical issues; or</p>\r\n<p class=\"ml-10\">(iv)protect against harm to the rights, property or safety of users of our Service or service providers, as well as the general public and EMI as required or permitted by law.</p>\r\n<p>c. We may share personal information with a buyer or other successor in the event of a merger, divestiture, restructuring, reorganization, dissolution or other sale or transfer of some or all of EMI&rsquo;s assets, whether as a going concern or as part of bankruptcy, liquidation or similar proceeding, in which personal information held by EMI about our Service users is among the assets transferred.</p>\r\n<p>d. We may share your information publicly and with our partners such as third-party content providers, advertisers or connected sites, but in a manner which does&nbsp;<em>not</em>&nbsp;reveal your personally-identifiable information and which is&nbsp;<em>aggregated with other user information</em>&nbsp;to show usage of EMI and third-party products and services offered on our Service and trends based on such categories as age, gender, geographical origination and other demographic characteristics.</p>\r\n<h3 id=\"protect\">10. The Protection of Your Information.</h3>\r\n<p>We work hard to protect the information provided by, or collected about, the users of our Service, from unauthorized access, or alteration, disclosure or destruction. In particular:</p>\r\n<p>a. We encrypt much of that information using SSL.</p>\r\n<p>b. We review our information collection, storage and processing practices, including physical security measures, to guard against unauthorized access to our systems and the information collected and stored therein</p>\r\n<p>c. We restrict access to personal information to those of our employees, contractors and agents, who need to know that information in order to process it for us, who are subject to the obligation of strict confidentiality as relates to that information, and who will be subject to discipline, including termination, if they violate that obligation.</p>\r\n<h3 id=\"policy\">11. The Scope of Our Privacy Policy.</h3>\r\n<p>Our Privacy Policy applies to all of the services offered through our Service. However, our Privacy Policy does&nbsp;<em>not</em>&nbsp;apply to the any of the following:</p>\r\n<p>a. services offered by other companies or individuals on non-EMI websites or applications, including any such websites or applications which may be referenced on or linked from our Service; and</p>\r\n<p>b. the information collected by, and information practices of, other companies, organizations or individuals, who advertise our Service, editorial or advertising content, or any of the products or services offered on our Service, and who may use cookies, pixel tags and other technologies to serve and offer relevant ads.</p>\r\n<h3 id=\"rights\">12. Your Rights and Choices about What Personal Information We Collect and Maintain and How We Use It</h3>\r\n<p><strong><em>Access to Specific Information and Data Portability Rights</em></strong></p>\r\n<p>You have the right to request that we disclose certain information to You about our collection and use of your Personal Information over the past 12 months. Once we receive and confirm your verifiable consumer request, we will disclose to you:</p>\r\n<ul>\r\n<li>The categories of Personal Information we collected about you.</li>\r\n<li>The categories of sources for the Personal Information we collected about you.</li>\r\n<li>Our business or commercial purpose (as defined in Section 13 below) for collecting or selling (as also defined in Section below) that Personal Information.</li>\r\n<li>The categories of third parties, with whom we share that Personal Information.</li>\r\n<li>The specific pieces of Personal Information we collected about YOU (also called a data portability request).</li>\r\n<li>If we sold (as defined in Section 13 below) or disclosed your Personal Information for a business purpose, two separate lists disclosing:\r\n<ul>\r\n<li>sales, identifying the Personal Information categories that each category of recipient purchased; and</li>\r\n<li>disclosures for a business purpose, identifying the Personal Information categories that each category of recipient obtained.</li>\r\n</ul>\r\n</li>\r\n</ul>\r\n<p><strong><em>Deletion Request Rights</em></strong></p>\r\n<p>You have the right to request that we delete any of your Personal Information that we collected from you and retained, subject to certain exceptions. Once we receive and confirm your verifiable consumer request, we will delete (and direct our service providers to delete) your Personal Information from our records, unless an exception applies.</p>\r\n<p>We may deny your deletion request if retaining the Personal Information you request to have deleted is necessary for us or our service providers to:</p>\r\n<div class=\"ml-10\">\r\n<div class=\"mb-4\">a. Complete the transaction, for which we collected the Personal Information, provide a good or service that you requested, take actions reasonably anticipated within the context of our ongoing business relationship with you, or otherwise perform our contract with you.</div>\r\n<div class=\"mb-4\">b. Detect security incidents, protect against malicious, deceptive, fraudulent, or illegal activity, or prosecute those responsible for such activities.</div>\r\n<div class=\"mb-4\">c. Debug products, in order to identify and repair errors that impair existing intended functionality.</div>\r\n<div class=\"mb-4\">d. Exercise free speech, ensure the right of another consumer to exercise his/her free speech rights, or exercise another right provided for by law.</div>\r\n<div class=\"mb-4\">e. If you had previously provided informed consent, engage in public or peer-reviewed scientific, historical, or statistical research in the public interest, that adheres to all other applicable ethics and privacy laws, when deletion of the Personal Information may likely render impossible or seriously impair the purpose(s) of that research.</div>\r\n<div class=\"mb-4\">f. Enable solely internal uses that are reasonably aligned with consumer expectations based on your relationship with us.</div>\r\n<div class=\"mb-4\">g. Comply with applicable law or any legal obligation(s) we may have.</div>\r\n<div class=\"mb-4\">h. Make other internal and lawful use of that Personal Information that is compatible with the context in which you provided that Information.</div>\r\n</div>\r\n<p><strong><em>Exercising Access, Data Portability, and Deletion Rights</em></strong></p>\r\n<p>To exercise the access, data portability, and deletion rights described above, please submit a verifiable consumer request to us by visiting us, and completing the information requested, at&nbsp;<a href=\"https://www.entrepreneur.com/privacy-preferences\">www.entrepreneur.com/privacy-preferences</a>.</p>\r\n<p>Only You may make a verifiable consumer request related to your Personal Information. You may also make a verifiable consumer request on behalf of your minor child.</p>\r\n<p>You may only make a verifiable consumer request for access or data portability twice within a 12-month period. The verifiable consumer request must:</p>\r\n<ul>\r\n<li>Provide sufficient information that allows us to reasonably verify you are the person about whom we collected personal information or an authorized representative.</li>\r\n<li>Describe your request with sufficient detail that allows us to properly understand, evaluate, and respond to it.</li>\r\n</ul>\r\n<p>We cannot respond to your request or provide you with personal information if we cannot verify your identity or authority to make the request and confirm that the Personal Information relates to you. Making a verifiable consumer request does not require you to create an account with us. We will only use Personal Information provided in a verifiable consumer request to verify your identity as the person making the request or having your authority to make the request.</p>\r\n<p><strong><em>Response Timing and Format</em></strong></p>\r\n<p>We endeavor to respond to a verifiable consumer request within 45 days of its receipt. If we require more time (up to 90 days), we will inform you in writing of the reason(s) why we will need more time and the additional time needed. If you have an account with us, we will deliver our written response to that account. If you do not have an account with us, we will deliver our written response to you electronically to the email address you provide. Any disclosures we provide will only cover the 12-month period preceding our receipt of your verifiable consumer request. The response we provide will also explain any reason(s) why we cannot comply with your request (if applicable). For data portability requests, we will select a format for providing your Personal Information, which is readily usable and which should allow you to transmit that Information from one entity to another entity without hindrance.</p>\r\n<p>We do not charge a fee to process or respond to your verifiable consumer request unless it is excessive, repetitive, or manifestly unfounded. If we determine that the request warrants a fee, we will tell you why we made that decision and provide you with a cost estimate before completing your request.</p>\r\n<h3 id=\"glossary\">13. Glossary of Terms.</h3>\r\n<p>As used in this Privacy Notice, the terms below shall have the following meanings:</p>\r\n<p><strong>&ldquo;Affiliate&rdquo;</strong>&nbsp;means a person or entity, who/which directly, or indirectly through one or more intermediaries, controls, is controlled by, or is under common control with, us.</p>\r\n<p><strong>&ldquo;Business purpose&rdquo;</strong>&nbsp;means the use of Personal Information for a business&rsquo; or service provider&rsquo;s operational purpose(s) or other notified purpose(s), provided that the use of such information is reasonably necessary and proportionate to achieve the purpose for which the Personal Information was collected or processed or for another operational purpose that is compatible with the context in which the Personal Information was collected or processed. A business purpose includes: (i) auditing interactions with consumers such as counting ad impressions; (ii) security such as protecting against malicious or fraudulent activity; (iii) debugging such as identification and repair of impairments to functionality; (iv) short-term uses not involving disclosure to a third party, building a profile about a consumer, or altering a consumer&rsquo;s experience outside of the transaction for which the personal information was collected; (v) performing services such as maintaining or servicing accounts and processing or fulfilling orders, verifying customer information, or providing advertising or marketing services; (vi) internal research for tech development; and (vi) quality and safety maintenance and verification.</p>\r\n<p><strong>&ldquo;Commercial purpose&rdquo;</strong>&nbsp;under CCPA means to induce a person&rsquo;s commercial or economic interests, such as by inducing a person to buy, subscribe to, or provide goods, services or information.</p>\r\n<p><strong>&ldquo;Sale&rdquo;</strong>&nbsp;means selling, renting, releasing, disclosing, disseminating, making available, transferring, or otherwise communicating orally, in writing, or by electronic or other means, a consumer\'s Personal Information to a third party for valuable consideration or for no consideration, for the third party\'s commercial purposes.</p>\r\n<p><strong>&ldquo;Service Provider&rdquo;</strong>&nbsp;means a for-profit legal entity, to which we disclose a consumer&rsquo;s Personal Information for processing for a business purpose pursuant to a written contract between us and the Service Provider.</p>\r\n<h3 id=\"complaints\">14. Handling Complaints from Our Service Users and Regulatory Authorities.</h3>\r\n<p>We regularly review our compliance with this Privacy Policy and with any and all industry-recommended best practices, as well as applicable laws and regulations. When we receive a formal written complaint, we will contact the person who made the complaint to follow up. This is without prejudice to your right to launch a claim with your local data protection supervisory authority. We work with the appropriate regulatory authorities, including local data protection authorities, to resolve any complaints regarding the transfer of personal data that we cannot resolve with the users of our Service directly.</p>\r\n<h3 id=\"california\">15. California Residents.</h3>\r\n<p>California residents may choose to request certain information regarding our disclosure of personal information to third parties for their direct marketing purposes or choose to opt out of such disclosure. Our policy is not to disclose personal information collected online to a third party for directing marketing without your approval. To make a request or to opt out at any time, please contact us at&nbsp;<em><a href=\"mailto:legal@entrepreneur.com\">legal@entrepreneur.com</a></em>&nbsp;or the other contact information provided below.</p>\r\n<h3 id=\"revisions\">16. Privacy Policy Revisions and Updates.</h3>\r\n<p>Our Privacy Policy may be revised from time to time, in which case the Privacy Policy you view will be the most current version and the date of the latest such revision will be identified at the beginning of this Privacy Policy. We will provide you with 30 days&rsquo; notice of any substantial changes to the terms of this Privacy Policy.</p>\r\n</div>', '<div class=\"block__image-with-text__inner__heading\">\r\n<p>BNC Publishing<br />Phone +971 4 4200 506<br />Fax +971 4 4200 196<br />PO Box 502511, Dubai, United Arab Emirates</p>\r\n</div>', 'support@easycommerce.com', 'http://localhost:3000/android', 'http://localhost:3000/ios', 'https://www.facebook.com/', 'https://www.twitter.com/', 'https://www.instagram.com/', '<p>Copyright &copy; 2022 Easy Learning. All rights reserved.</p>', NULL, '2022-04-27 11:31:14');

-- --------------------------------------------------------

--
-- Table structure for table `subcategories`
--

CREATE TABLE `subcategories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `subcategory_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `subcategories`
--

INSERT INTO `subcategories` (`id`, `subcategory_name`, `category_name`, `created_at`, `updated_at`) VALUES
(1, 'Apple', 'Mobiles', NULL, NULL),
(2, 'Samsung', 'Mobiles', NULL, NULL),
(4, 'Laptops', 'Computer', NULL, NULL),
(5, 'Desktop', 'Computer', NULL, NULL),
(6, 'Smart TV', 'Electronics', NULL, NULL),
(7, 'Camera ', 'Electronics', NULL, NULL),
(8, 'Washing Machine', 'TVs & Appliances', NULL, NULL),
(9, 'Air Conditioners', 'TVs & Appliances', NULL, NULL),
(10, 'Mens Top Wear', 'Fashion', NULL, NULL),
(11, 'Mens Footwear', 'Fashion', NULL, NULL),
(12, 'Womens Footwear', 'Fashion', NULL, NULL),
(13, 'Kids Footwear', 'Baby & Kids', NULL, NULL),
(14, 'Kids Clothing', 'Baby & Kids', NULL, NULL),
(15, 'Baby Care', 'Baby & Kids', NULL, NULL),
(16, 'Home Decor ', 'Home & Furniture', NULL, NULL),
(17, 'Bedroom Furniture', 'Home & Furniture', NULL, NULL),
(18, 'Living Room Furniture', 'Home & Furniture', NULL, NULL),
(19, 'Health and Nutrition', 'Sports, Books', NULL, NULL),
(20, 'Home Gyms', 'Sports, Books', NULL, NULL),
(21, 'Books', 'Sports, Books', NULL, NULL),
(22, 'Mobile Cases', 'Mobile Accessories', NULL, NULL),
(23, 'Headphones', 'Mobile Accessories', NULL, NULL),
(24, 'Others', 'Others', NULL, '2022-04-27 07:46:50');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `two_factor_secret` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `two_factor_recovery_codes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `two_factor_confirmed_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `current_team_id` bigint(20) UNSIGNED DEFAULT NULL,
  `profile_photo_path` varchar(2048) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `two_factor_confirmed_at`, `remember_token`, `current_team_id`, `profile_photo_path`, `created_at`, `updated_at`) VALUES
(1, 'Administrator', 'admin@gmail.com', NULL, '$2y$10$4zs8BEpzQH/J9XAVtUqHluUTm25ESjmLWRHY/F2c63ZlnYRGnM1iu', NULL, NULL, NULL, NULL, NULL, '202204251014user.png', '2022-04-04 04:19:33', '2022-05-02 19:46:53'),
(2, 'Anand', 'ageorge28@gmail.com', NULL, '$2y$10$8wJdJ0fTxIFPycCpgxsnouwTihKvwecULgiUfb4W3aS2UAPcLx1Gu', NULL, NULL, NULL, NULL, NULL, NULL, '2022-04-13 06:35:02', '2022-04-13 06:35:02'),
(7, 'Anand', 'ageorge28@yahoo.com', NULL, '$2y$10$oVJen685kW8uEa3nxIwiDeh1NjcHJI6n2ic3/bOCL7YPA8LpW43Pe', NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-11 07:04:37', '2022-05-11 07:04:37'),
(8, 'Anand', 'ageorge28@hotmail.com', NULL, '$2y$10$7zCfM20o6f3OZU/f6GYOu.33jLFunxZFaOQdb4plhHhD6NdFtrgxO', NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-11 07:05:34', '2022-05-11 07:05:34');

-- --------------------------------------------------------

--
-- Table structure for table `visitors`
--

CREATE TABLE `visitors` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `ip_address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `visit_time` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `visit_date` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `visitors`
--

INSERT INTO `visitors` (`id`, `ip_address`, `visit_time`, `visit_date`, `created_at`, `updated_at`) VALUES
(1, '127.0.0.1', '08:26:43pm', '04-04-2022', NULL, NULL),
(3, '127.0.0.1', '08:27:51pm', '04-04-2022', NULL, NULL),
(4, '127.0.0.1', '08:36:54pm', '04-04-2022', NULL, NULL),
(5, '127.0.0.1', '08:45:13pm', '04-04-2022', NULL, NULL),
(6, '127.0.0.1', '08:45:20pm', '04-04-2022', NULL, NULL),
(7, '127.0.0.1', '01:24:24pm', '05-04-2022', NULL, NULL),
(8, '127.0.0.1', '03:44:03pm', '05-04-2022', NULL, NULL),
(9, '127.0.0.1', '03:44:13pm', '05-04-2022', NULL, NULL),
(10, '127.0.0.1', '05:05:32pm', '05-04-2022', NULL, NULL),
(11, '127.0.0.1', '11:21:28am', '06-04-2022', NULL, NULL),
(12, '127.0.0.1', '11:22:24am', '06-04-2022', NULL, NULL),
(13, '127.0.0.1', '11:22:59am', '06-04-2022', NULL, NULL),
(14, '127.0.0.1', '12:41:37pm', '06-04-2022', NULL, NULL),
(15, '127.0.0.1', '01:03:36pm', '06-04-2022', NULL, NULL),
(16, '127.0.0.1', '01:04:16pm', '06-04-2022', NULL, NULL),
(17, '127.0.0.1', '02:47:35pm', '06-04-2022', NULL, NULL),
(18, '127.0.0.1', '02:55:42pm', '06-04-2022', NULL, NULL),
(19, '127.0.0.1', '05:06:21pm', '06-04-2022', NULL, NULL),
(20, '127.0.0.1', '05:07:08pm', '06-04-2022', NULL, NULL),
(21, '127.0.0.1', '05:08:25pm', '06-04-2022', NULL, NULL),
(22, '127.0.0.1', '05:09:08pm', '06-04-2022', NULL, NULL),
(23, '127.0.0.1', '05:10:02pm', '06-04-2022', NULL, NULL),
(24, '127.0.0.1', '05:17:20pm', '06-04-2022', NULL, NULL),
(25, '127.0.0.1', '05:19:55pm', '06-04-2022', NULL, NULL),
(26, '127.0.0.1', '05:20:28pm', '06-04-2022', NULL, NULL),
(27, '127.0.0.1', '05:29:25pm', '06-04-2022', NULL, NULL),
(28, '127.0.0.1', '05:30:00pm', '06-04-2022', NULL, NULL),
(29, '127.0.0.1', '05:30:45pm', '06-04-2022', NULL, NULL),
(30, '127.0.0.1', '05:31:18pm', '06-04-2022', NULL, NULL),
(31, '127.0.0.1', '05:33:55pm', '06-04-2022', NULL, NULL),
(32, '127.0.0.1', '05:40:19pm', '06-04-2022', NULL, NULL),
(33, '127.0.0.1', '05:40:23pm', '06-04-2022', NULL, NULL),
(34, '127.0.0.1', '05:42:29pm', '06-04-2022', NULL, NULL),
(35, '127.0.0.1', '05:42:32pm', '06-04-2022', NULL, NULL),
(36, '127.0.0.1', '05:43:04pm', '06-04-2022', NULL, NULL),
(37, '127.0.0.1', '05:44:00pm', '06-04-2022', NULL, NULL),
(38, '127.0.0.1', '05:44:29pm', '06-04-2022', NULL, NULL),
(39, '127.0.0.1', '05:45:29pm', '06-04-2022', NULL, NULL),
(40, '127.0.0.1', '05:57:15pm', '06-04-2022', NULL, NULL),
(41, '127.0.0.1', '06:02:31pm', '06-04-2022', NULL, NULL),
(42, '127.0.0.1', '06:05:06pm', '06-04-2022', NULL, NULL),
(43, '127.0.0.1', '06:05:32pm', '06-04-2022', NULL, NULL),
(44, '127.0.0.1', '06:05:36pm', '06-04-2022', NULL, NULL),
(45, '127.0.0.1', '06:20:46pm', '06-04-2022', NULL, NULL),
(46, '127.0.0.1', '06:23:26pm', '06-04-2022', NULL, NULL),
(47, '127.0.0.1', '06:23:36pm', '06-04-2022', NULL, NULL),
(48, '127.0.0.1', '06:23:53pm', '06-04-2022', NULL, NULL),
(49, '127.0.0.1', '06:24:05pm', '06-04-2022', NULL, NULL),
(50, '127.0.0.1', '06:24:35pm', '06-04-2022', NULL, NULL),
(51, '127.0.0.1', '06:27:07pm', '06-04-2022', NULL, NULL),
(52, '127.0.0.1', '06:27:15pm', '06-04-2022', NULL, NULL),
(53, '127.0.0.1', '06:27:50pm', '06-04-2022', NULL, NULL),
(54, '127.0.0.1', '06:28:22pm', '06-04-2022', NULL, NULL),
(55, '127.0.0.1', '06:28:51pm', '06-04-2022', NULL, NULL),
(56, '127.0.0.1', '06:34:31pm', '06-04-2022', NULL, NULL),
(57, '127.0.0.1', '06:34:37pm', '06-04-2022', NULL, NULL),
(58, '127.0.0.1', '06:38:21pm', '06-04-2022', NULL, NULL),
(59, '127.0.0.1', '06:38:24pm', '06-04-2022', NULL, NULL),
(60, '127.0.0.1', '06:40:33pm', '06-04-2022', NULL, NULL),
(61, '127.0.0.1', '06:40:42pm', '06-04-2022', NULL, NULL),
(62, '127.0.0.1', '06:40:48pm', '06-04-2022', NULL, NULL),
(63, '127.0.0.1', '06:40:52pm', '06-04-2022', NULL, NULL),
(64, '127.0.0.1', '06:43:34pm', '06-04-2022', NULL, NULL),
(65, '127.0.0.1', '06:48:19pm', '06-04-2022', NULL, NULL),
(66, '127.0.0.1', '06:55:45pm', '06-04-2022', NULL, NULL),
(67, '127.0.0.1', '06:59:49pm', '06-04-2022', NULL, NULL),
(68, '127.0.0.1', '07:16:45pm', '06-04-2022', NULL, NULL),
(69, '127.0.0.1', '07:17:31pm', '06-04-2022', NULL, NULL),
(70, '127.0.0.1', '07:18:05pm', '06-04-2022', NULL, NULL),
(71, '127.0.0.1', '07:21:45pm', '06-04-2022', NULL, NULL),
(72, '127.0.0.1', '07:22:02pm', '06-04-2022', NULL, NULL),
(73, '127.0.0.1', '07:22:08pm', '06-04-2022', NULL, NULL),
(74, '127.0.0.1', '07:22:14pm', '06-04-2022', NULL, NULL),
(75, '127.0.0.1', '07:22:25pm', '06-04-2022', NULL, NULL),
(76, '127.0.0.1', '07:22:34pm', '06-04-2022', NULL, NULL),
(77, '127.0.0.1', '07:25:14pm', '06-04-2022', NULL, NULL),
(78, '127.0.0.1', '07:25:25pm', '06-04-2022', NULL, NULL),
(79, '127.0.0.1', '07:35:56pm', '06-04-2022', NULL, NULL),
(80, '127.0.0.1', '07:36:16pm', '06-04-2022', NULL, NULL),
(81, '127.0.0.1', '07:36:34pm', '06-04-2022', NULL, NULL),
(82, '127.0.0.1', '07:36:41pm', '06-04-2022', NULL, NULL),
(83, '127.0.0.1', '07:36:47pm', '06-04-2022', NULL, NULL),
(84, '127.0.0.1', '07:37:04pm', '06-04-2022', NULL, NULL),
(85, '127.0.0.1', '07:37:54pm', '06-04-2022', NULL, NULL),
(86, '127.0.0.1', '08:04:54pm', '06-04-2022', NULL, NULL),
(87, '127.0.0.1', '08:13:13pm', '06-04-2022', NULL, NULL),
(88, '127.0.0.1', '08:14:49pm', '06-04-2022', NULL, NULL),
(89, '127.0.0.1', '08:16:20pm', '06-04-2022', NULL, NULL),
(90, '127.0.0.1', '08:17:25pm', '06-04-2022', NULL, NULL),
(91, '127.0.0.1', '08:17:46pm', '06-04-2022', NULL, NULL),
(92, '127.0.0.1', '08:18:39pm', '06-04-2022', NULL, NULL),
(93, '127.0.0.1', '08:19:30pm', '06-04-2022', NULL, NULL),
(94, '127.0.0.1', '08:27:43pm', '06-04-2022', NULL, NULL),
(95, '127.0.0.1', '08:35:45pm', '06-04-2022', NULL, NULL),
(96, '127.0.0.1', '08:39:06pm', '06-04-2022', NULL, NULL),
(97, '127.0.0.1', '08:57:29pm', '06-04-2022', NULL, NULL),
(98, '127.0.0.1', '09:01:46pm', '06-04-2022', NULL, NULL),
(99, '127.0.0.1', '09:01:56pm', '06-04-2022', NULL, NULL),
(100, '127.0.0.1', '09:19:49pm', '06-04-2022', NULL, NULL),
(101, '127.0.0.1', '09:24:26pm', '06-04-2022', NULL, NULL),
(102, '127.0.0.1', '09:34:22pm', '06-04-2022', NULL, NULL),
(103, '127.0.0.1', '09:44:31pm', '06-04-2022', NULL, NULL),
(104, '127.0.0.1', '10:04:53pm', '06-04-2022', NULL, NULL),
(105, '127.0.0.1', '10:13:32pm', '06-04-2022', NULL, NULL),
(106, '127.0.0.1', '10:20:00pm', '06-04-2022', NULL, NULL),
(107, '127.0.0.1', '10:22:05pm', '06-04-2022', NULL, NULL),
(108, '127.0.0.1', '10:24:19pm', '06-04-2022', NULL, NULL),
(109, '127.0.0.1', '10:27:08pm', '06-04-2022', NULL, NULL),
(110, '127.0.0.1', '10:30:35pm', '06-04-2022', NULL, NULL),
(111, '127.0.0.1', '10:30:40pm', '06-04-2022', NULL, NULL),
(112, '127.0.0.1', '10:40:30pm', '06-04-2022', NULL, NULL),
(113, '127.0.0.1', '10:41:40pm', '06-04-2022', NULL, NULL),
(114, '127.0.0.1', '10:46:09pm', '06-04-2022', NULL, NULL),
(115, '127.0.0.1', '10:46:49pm', '06-04-2022', NULL, NULL),
(116, '127.0.0.1', '10:46:53pm', '06-04-2022', NULL, NULL),
(117, '127.0.0.1', '03:45:57pm', '07-04-2022', NULL, NULL),
(118, '127.0.0.1', '03:46:04pm', '07-04-2022', NULL, NULL),
(119, '127.0.0.1', '03:47:01pm', '07-04-2022', NULL, NULL),
(120, '127.0.0.1', '03:49:01pm', '07-04-2022', NULL, NULL),
(121, '127.0.0.1', '04:14:01pm', '07-04-2022', NULL, NULL),
(122, '127.0.0.1', '04:14:35pm', '07-04-2022', NULL, NULL),
(123, '127.0.0.1', '06:30:02pm', '09-04-2022', NULL, NULL),
(124, '127.0.0.1', '06:30:24pm', '09-04-2022', NULL, NULL),
(125, '127.0.0.1', '07:44:16pm', '09-04-2022', NULL, NULL),
(126, '127.0.0.1', '07:46:18pm', '09-04-2022', NULL, NULL),
(127, '127.0.0.1', '07:47:53pm', '09-04-2022', NULL, NULL),
(128, '127.0.0.1', '07:49:24pm', '09-04-2022', NULL, NULL),
(129, '127.0.0.1', '07:49:30pm', '09-04-2022', NULL, NULL),
(130, '127.0.0.1', '07:49:47pm', '09-04-2022', NULL, NULL),
(131, '127.0.0.1', '07:50:06pm', '09-04-2022', NULL, NULL),
(132, '127.0.0.1', '07:50:48pm', '09-04-2022', NULL, NULL),
(133, '127.0.0.1', '07:51:19pm', '09-04-2022', NULL, NULL),
(134, '127.0.0.1', '07:51:32pm', '09-04-2022', NULL, NULL),
(135, '127.0.0.1', '07:51:50pm', '09-04-2022', NULL, NULL),
(136, '127.0.0.1', '07:52:04pm', '09-04-2022', NULL, NULL),
(137, '127.0.0.1', '07:52:18pm', '09-04-2022', NULL, NULL),
(138, '127.0.0.1', '07:54:41pm', '09-04-2022', NULL, NULL),
(139, '127.0.0.1', '07:54:48pm', '09-04-2022', NULL, NULL),
(140, '127.0.0.1', '07:56:09pm', '09-04-2022', NULL, NULL),
(141, '127.0.0.1', '07:57:03pm', '09-04-2022', NULL, NULL),
(142, '127.0.0.1', '07:57:20pm', '09-04-2022', NULL, NULL),
(143, '127.0.0.1', '07:57:37pm', '09-04-2022', NULL, NULL),
(144, '127.0.0.1', '07:57:57pm', '09-04-2022', NULL, NULL),
(145, '127.0.0.1', '07:58:11pm', '09-04-2022', NULL, NULL),
(146, '127.0.0.1', '07:58:48pm', '09-04-2022', NULL, NULL),
(147, '127.0.0.1', '07:58:59pm', '09-04-2022', NULL, NULL),
(148, '127.0.0.1', '07:59:46pm', '09-04-2022', NULL, NULL),
(149, '127.0.0.1', '08:00:25pm', '09-04-2022', NULL, NULL),
(150, '127.0.0.1', '08:00:29pm', '09-04-2022', NULL, NULL),
(151, '127.0.0.1', '08:02:08pm', '09-04-2022', NULL, NULL),
(152, '127.0.0.1', '08:06:05pm', '09-04-2022', NULL, NULL),
(153, '127.0.0.1', '08:07:22pm', '09-04-2022', NULL, NULL),
(154, '127.0.0.1', '08:08:13pm', '09-04-2022', NULL, NULL),
(155, '127.0.0.1', '08:15:30pm', '09-04-2022', NULL, NULL),
(156, '127.0.0.1', '08:16:11pm', '09-04-2022', NULL, NULL),
(157, '127.0.0.1', '08:18:44pm', '09-04-2022', NULL, NULL),
(158, '127.0.0.1', '08:24:30pm', '09-04-2022', NULL, NULL),
(159, '127.0.0.1', '08:30:37pm', '09-04-2022', NULL, NULL),
(160, '127.0.0.1', '08:31:21pm', '09-04-2022', NULL, NULL),
(161, '127.0.0.1', '08:31:25pm', '09-04-2022', NULL, NULL),
(162, '127.0.0.1', '08:33:19pm', '09-04-2022', NULL, NULL),
(163, '127.0.0.1', '08:33:34pm', '09-04-2022', NULL, NULL),
(164, '127.0.0.1', '08:34:23pm', '09-04-2022', NULL, NULL),
(165, '127.0.0.1', '08:36:25pm', '09-04-2022', NULL, NULL),
(166, '127.0.0.1', '08:38:02pm', '09-04-2022', NULL, NULL),
(167, '127.0.0.1', '08:38:26pm', '09-04-2022', NULL, NULL),
(168, '127.0.0.1', '08:38:34pm', '09-04-2022', NULL, NULL),
(169, '127.0.0.1', '08:38:48pm', '09-04-2022', NULL, NULL),
(170, '127.0.0.1', '08:41:04pm', '09-04-2022', NULL, NULL),
(171, '127.0.0.1', '09:56:00pm', '09-04-2022', NULL, NULL),
(172, '127.0.0.1', '10:03:07pm', '09-04-2022', NULL, NULL),
(173, '127.0.0.1', '10:03:13pm', '09-04-2022', NULL, NULL),
(174, '127.0.0.1', '10:03:33pm', '09-04-2022', NULL, NULL),
(175, '127.0.0.1', '10:04:20pm', '09-04-2022', NULL, NULL),
(176, '127.0.0.1', '10:05:22pm', '09-04-2022', NULL, NULL),
(177, '127.0.0.1', '10:10:25pm', '09-04-2022', NULL, NULL),
(178, '127.0.0.1', '10:12:02pm', '09-04-2022', NULL, NULL),
(179, '127.0.0.1', '10:12:08pm', '09-04-2022', NULL, NULL),
(180, '127.0.0.1', '10:12:48pm', '09-04-2022', NULL, NULL),
(181, '127.0.0.1', '10:13:06pm', '09-04-2022', NULL, NULL),
(182, '127.0.0.1', '10:13:33pm', '09-04-2022', NULL, NULL),
(183, '127.0.0.1', '10:18:16pm', '09-04-2022', NULL, NULL),
(184, '127.0.0.1', '10:18:18pm', '09-04-2022', NULL, NULL),
(185, '127.0.0.1', '10:18:28pm', '09-04-2022', NULL, NULL),
(186, '127.0.0.1', '10:19:17pm', '09-04-2022', NULL, NULL),
(187, '127.0.0.1', '10:19:21pm', '09-04-2022', NULL, NULL),
(188, '127.0.0.1', '10:21:08pm', '09-04-2022', NULL, NULL),
(189, '127.0.0.1', '10:21:10pm', '09-04-2022', NULL, NULL),
(190, '127.0.0.1', '10:21:32pm', '09-04-2022', NULL, NULL),
(191, '127.0.0.1', '10:22:15pm', '09-04-2022', NULL, NULL),
(192, '127.0.0.1', '10:24:46pm', '09-04-2022', NULL, NULL),
(193, '127.0.0.1', '10:26:57pm', '09-04-2022', NULL, NULL),
(194, '127.0.0.1', '10:27:22pm', '09-04-2022', NULL, NULL),
(195, '127.0.0.1', '10:27:52pm', '09-04-2022', NULL, NULL),
(196, '127.0.0.1', '10:28:13pm', '09-04-2022', NULL, NULL),
(197, '127.0.0.1', '10:29:02pm', '09-04-2022', NULL, NULL),
(198, '127.0.0.1', '10:29:53pm', '09-04-2022', NULL, NULL),
(199, '127.0.0.1', '10:32:19pm', '09-04-2022', NULL, NULL),
(200, '127.0.0.1', '10:32:33pm', '09-04-2022', NULL, NULL),
(201, '127.0.0.1', '10:34:21pm', '09-04-2022', NULL, NULL),
(202, '127.0.0.1', '10:34:39pm', '09-04-2022', NULL, NULL),
(203, '127.0.0.1', '10:35:06pm', '09-04-2022', NULL, NULL),
(204, '127.0.0.1', '10:35:53pm', '09-04-2022', NULL, NULL),
(205, '127.0.0.1', '10:37:10pm', '09-04-2022', NULL, NULL),
(206, '127.0.0.1', '10:37:40pm', '09-04-2022', NULL, NULL),
(207, '127.0.0.1', '10:37:52pm', '09-04-2022', NULL, NULL),
(208, '127.0.0.1', '10:38:30pm', '09-04-2022', NULL, NULL),
(209, '127.0.0.1', '01:06:20pm', '10-04-2022', NULL, NULL),
(210, '127.0.0.1', '01:11:41pm', '10-04-2022', NULL, NULL),
(211, '127.0.0.1', '01:14:28pm', '10-04-2022', NULL, NULL),
(212, '127.0.0.1', '01:15:33pm', '10-04-2022', NULL, NULL),
(213, '127.0.0.1', '01:16:07pm', '10-04-2022', NULL, NULL),
(214, '127.0.0.1', '01:18:54pm', '10-04-2022', NULL, NULL),
(215, '127.0.0.1', '01:19:56pm', '10-04-2022', NULL, NULL),
(216, '127.0.0.1', '01:20:04pm', '10-04-2022', NULL, NULL),
(217, '127.0.0.1', '01:21:22pm', '10-04-2022', NULL, NULL),
(218, '127.0.0.1', '01:21:29pm', '10-04-2022', NULL, NULL),
(219, '127.0.0.1', '01:21:34pm', '10-04-2022', NULL, NULL),
(220, '127.0.0.1', '01:21:50pm', '10-04-2022', NULL, NULL),
(221, '127.0.0.1', '01:21:54pm', '10-04-2022', NULL, NULL),
(222, '127.0.0.1', '01:22:37pm', '10-04-2022', NULL, NULL),
(223, '127.0.0.1', '01:23:04pm', '10-04-2022', NULL, NULL),
(224, '127.0.0.1', '01:23:21pm', '10-04-2022', NULL, NULL),
(225, '127.0.0.1', '01:23:25pm', '10-04-2022', NULL, NULL),
(226, '127.0.0.1', '01:23:45pm', '10-04-2022', NULL, NULL),
(227, '127.0.0.1', '01:24:01pm', '10-04-2022', NULL, NULL),
(228, '127.0.0.1', '01:24:05pm', '10-04-2022', NULL, NULL),
(229, '127.0.0.1', '01:24:20pm', '10-04-2022', NULL, NULL),
(230, '127.0.0.1', '01:24:26pm', '10-04-2022', NULL, NULL),
(231, '127.0.0.1', '01:24:52pm', '10-04-2022', NULL, NULL),
(232, '127.0.0.1', '01:25:08pm', '10-04-2022', NULL, NULL),
(233, '127.0.0.1', '01:25:20pm', '10-04-2022', NULL, NULL),
(234, '127.0.0.1', '01:25:28pm', '10-04-2022', NULL, NULL),
(235, '127.0.0.1', '01:25:31pm', '10-04-2022', NULL, NULL),
(236, '127.0.0.1', '03:09:26pm', '10-04-2022', NULL, NULL),
(237, '127.0.0.1', '03:15:38pm', '10-04-2022', NULL, NULL),
(238, '127.0.0.1', '03:15:42pm', '10-04-2022', NULL, NULL),
(239, '127.0.0.1', '03:16:10pm', '10-04-2022', NULL, NULL),
(240, '127.0.0.1', '03:16:14pm', '10-04-2022', NULL, NULL),
(241, '127.0.0.1', '03:16:26pm', '10-04-2022', NULL, NULL),
(242, '127.0.0.1', '03:16:33pm', '10-04-2022', NULL, NULL),
(243, '127.0.0.1', '03:16:37pm', '10-04-2022', NULL, NULL),
(244, '127.0.0.1', '03:16:58pm', '10-04-2022', NULL, NULL),
(245, '127.0.0.1', '03:17:34pm', '10-04-2022', NULL, NULL),
(246, '127.0.0.1', '03:17:56pm', '10-04-2022', NULL, NULL),
(247, '127.0.0.1', '03:17:59pm', '10-04-2022', NULL, NULL),
(248, '127.0.0.1', '03:18:04pm', '10-04-2022', NULL, NULL),
(249, '127.0.0.1', '03:18:16pm', '10-04-2022', NULL, NULL),
(250, '127.0.0.1', '03:26:32pm', '10-04-2022', NULL, NULL),
(251, '127.0.0.1', '03:26:36pm', '10-04-2022', NULL, NULL),
(252, '127.0.0.1', '03:26:51pm', '10-04-2022', NULL, NULL),
(253, '127.0.0.1', '03:26:57pm', '10-04-2022', NULL, NULL),
(254, '127.0.0.1', '03:27:01pm', '10-04-2022', NULL, NULL),
(255, '127.0.0.1', '03:27:06pm', '10-04-2022', NULL, NULL),
(256, '127.0.0.1', '03:27:47pm', '10-04-2022', NULL, NULL),
(257, '127.0.0.1', '03:27:52pm', '10-04-2022', NULL, NULL),
(258, '127.0.0.1', '03:27:55pm', '10-04-2022', NULL, NULL),
(259, '127.0.0.1', '03:28:00pm', '10-04-2022', NULL, NULL),
(260, '127.0.0.1', '03:28:50pm', '10-04-2022', NULL, NULL),
(261, '127.0.0.1', '03:28:55pm', '10-04-2022', NULL, NULL),
(262, '127.0.0.1', '03:29:53pm', '10-04-2022', NULL, NULL),
(263, '127.0.0.1', '03:29:57pm', '10-04-2022', NULL, NULL),
(264, '127.0.0.1', '03:30:01pm', '10-04-2022', NULL, NULL),
(265, '127.0.0.1', '03:30:06pm', '10-04-2022', NULL, NULL),
(266, '127.0.0.1', '03:31:41pm', '10-04-2022', NULL, NULL),
(267, '127.0.0.1', '03:32:46pm', '10-04-2022', NULL, NULL),
(268, '127.0.0.1', '03:32:49pm', '10-04-2022', NULL, NULL),
(269, '127.0.0.1', '03:37:24pm', '10-04-2022', NULL, NULL),
(270, '127.0.0.1', '03:37:29pm', '10-04-2022', NULL, NULL),
(271, '127.0.0.1', '03:38:26pm', '10-04-2022', NULL, NULL),
(272, '127.0.0.1', '03:38:31pm', '10-04-2022', NULL, NULL),
(273, '127.0.0.1', '03:40:32pm', '10-04-2022', NULL, NULL),
(274, '127.0.0.1', '03:41:13pm', '10-04-2022', NULL, NULL),
(275, '127.0.0.1', '03:41:59pm', '10-04-2022', NULL, NULL),
(276, '127.0.0.1', '03:42:03pm', '10-04-2022', NULL, NULL),
(277, '127.0.0.1', '03:42:29pm', '10-04-2022', NULL, NULL),
(278, '127.0.0.1', '03:47:40pm', '10-04-2022', NULL, NULL),
(279, '127.0.0.1', '04:09:35pm', '10-04-2022', NULL, NULL),
(280, '127.0.0.1', '04:09:40pm', '10-04-2022', NULL, NULL),
(281, '127.0.0.1', '04:09:45pm', '10-04-2022', NULL, NULL),
(282, '127.0.0.1', '04:10:25pm', '10-04-2022', NULL, NULL),
(283, '127.0.0.1', '04:12:31pm', '10-04-2022', NULL, NULL),
(284, '127.0.0.1', '04:12:36pm', '10-04-2022', NULL, NULL),
(285, '127.0.0.1', '04:12:39pm', '10-04-2022', NULL, NULL),
(286, '127.0.0.1', '07:44:51pm', '10-04-2022', NULL, NULL),
(287, '127.0.0.1', '07:49:46pm', '10-04-2022', NULL, NULL),
(288, '127.0.0.1', '07:49:52pm', '10-04-2022', NULL, NULL),
(289, '127.0.0.1', '08:32:24pm', '10-04-2022', NULL, NULL),
(290, '127.0.0.1', '08:32:26pm', '10-04-2022', NULL, NULL),
(291, '127.0.0.1', '08:32:28pm', '10-04-2022', NULL, NULL),
(292, '127.0.0.1', '08:32:30pm', '10-04-2022', NULL, NULL),
(293, '127.0.0.1', '08:32:31pm', '10-04-2022', NULL, NULL),
(294, '127.0.0.1', '08:32:32pm', '10-04-2022', NULL, NULL),
(295, '127.0.0.1', '08:32:34pm', '10-04-2022', NULL, NULL),
(296, '127.0.0.1', '11:18:12am', '11-04-2022', NULL, NULL),
(297, '127.0.0.1', '11:21:34am', '11-04-2022', NULL, NULL),
(298, '127.0.0.1', '11:28:15am', '11-04-2022', NULL, NULL),
(299, '127.0.0.1', '11:30:28am', '11-04-2022', NULL, NULL),
(300, '127.0.0.1', '11:33:14am', '11-04-2022', NULL, NULL),
(301, '127.0.0.1', '11:33:19am', '11-04-2022', NULL, NULL),
(302, '127.0.0.1', '11:33:23am', '11-04-2022', NULL, NULL),
(303, '127.0.0.1', '11:33:29am', '11-04-2022', NULL, NULL),
(304, '127.0.0.1', '11:33:46am', '11-04-2022', NULL, NULL),
(305, '127.0.0.1', '11:33:53am', '11-04-2022', NULL, NULL),
(306, '127.0.0.1', '02:29:50pm', '11-04-2022', NULL, NULL),
(307, '127.0.0.1', '02:34:29pm', '11-04-2022', NULL, NULL),
(308, '127.0.0.1', '03:56:23pm', '11-04-2022', NULL, NULL),
(309, '127.0.0.1', '03:59:25pm', '11-04-2022', NULL, NULL),
(310, '127.0.0.1', '03:59:56pm', '11-04-2022', NULL, NULL),
(311, '127.0.0.1', '04:01:49pm', '11-04-2022', NULL, NULL),
(312, '127.0.0.1', '04:07:20pm', '11-04-2022', NULL, NULL),
(313, '127.0.0.1', '04:07:44pm', '11-04-2022', NULL, NULL),
(314, '127.0.0.1', '04:08:55pm', '11-04-2022', NULL, NULL),
(315, '127.0.0.1', '04:09:04pm', '11-04-2022', NULL, NULL),
(316, '127.0.0.1', '04:09:31pm', '11-04-2022', NULL, NULL),
(317, '127.0.0.1', '04:09:42pm', '11-04-2022', NULL, NULL),
(318, '127.0.0.1', '04:09:51pm', '11-04-2022', NULL, NULL),
(319, '127.0.0.1', '04:15:14pm', '11-04-2022', NULL, NULL),
(320, '127.0.0.1', '04:15:20pm', '11-04-2022', NULL, NULL),
(321, '127.0.0.1', '04:16:19pm', '11-04-2022', NULL, NULL),
(322, '127.0.0.1', '04:17:29pm', '11-04-2022', NULL, NULL),
(323, '127.0.0.1', '04:17:41pm', '11-04-2022', NULL, NULL),
(324, '127.0.0.1', '04:18:19pm', '11-04-2022', NULL, NULL),
(325, '127.0.0.1', '04:18:24pm', '11-04-2022', NULL, NULL),
(326, '127.0.0.1', '04:19:09pm', '11-04-2022', NULL, NULL),
(327, '127.0.0.1', '04:19:18pm', '11-04-2022', NULL, NULL),
(328, '127.0.0.1', '04:19:21pm', '11-04-2022', NULL, NULL),
(329, '127.0.0.1', '04:19:27pm', '11-04-2022', NULL, NULL),
(330, '127.0.0.1', '04:19:44pm', '11-04-2022', NULL, NULL),
(331, '127.0.0.1', '04:19:52pm', '11-04-2022', NULL, NULL),
(332, '127.0.0.1', '04:20:20pm', '11-04-2022', NULL, NULL),
(333, '127.0.0.1', '04:21:26pm', '11-04-2022', NULL, NULL),
(334, '127.0.0.1', '04:21:51pm', '11-04-2022', NULL, NULL),
(335, '127.0.0.1', '04:21:58pm', '11-04-2022', NULL, NULL),
(336, '127.0.0.1', '04:34:19pm', '11-04-2022', NULL, NULL),
(337, '127.0.0.1', '04:34:28pm', '11-04-2022', NULL, NULL),
(338, '127.0.0.1', '04:34:44pm', '11-04-2022', NULL, NULL),
(339, '127.0.0.1', '04:35:56pm', '11-04-2022', NULL, NULL),
(340, '127.0.0.1', '04:36:00pm', '11-04-2022', NULL, NULL),
(341, '127.0.0.1', '04:38:49pm', '11-04-2022', NULL, NULL),
(342, '127.0.0.1', '04:38:52pm', '11-04-2022', NULL, NULL),
(343, '127.0.0.1', '04:38:56pm', '11-04-2022', NULL, NULL),
(344, '127.0.0.1', '04:40:26pm', '11-04-2022', NULL, NULL),
(345, '127.0.0.1', '04:40:30pm', '11-04-2022', NULL, NULL),
(346, '127.0.0.1', '04:42:17pm', '11-04-2022', NULL, NULL),
(347, '127.0.0.1', '04:42:29pm', '11-04-2022', NULL, NULL),
(348, '127.0.0.1', '04:42:39pm', '11-04-2022', NULL, NULL),
(349, '127.0.0.1', '04:45:02pm', '11-04-2022', NULL, NULL),
(350, '127.0.0.1', '04:45:04pm', '11-04-2022', NULL, NULL),
(351, '127.0.0.1', '04:45:19pm', '11-04-2022', NULL, NULL),
(352, '127.0.0.1', '04:52:37pm', '11-04-2022', NULL, NULL),
(353, '127.0.0.1', '07:01:53pm', '11-04-2022', NULL, NULL),
(354, '127.0.0.1', '07:01:58pm', '11-04-2022', NULL, NULL),
(355, '127.0.0.1', '07:12:20pm', '11-04-2022', NULL, NULL),
(356, '127.0.0.1', '07:20:00pm', '11-04-2022', NULL, NULL),
(357, '127.0.0.1', '07:21:33pm', '11-04-2022', NULL, NULL),
(358, '127.0.0.1', '07:21:44pm', '11-04-2022', NULL, NULL),
(359, '127.0.0.1', '01:16:44pm', '12-04-2022', NULL, NULL),
(360, '127.0.0.1', '01:17:06pm', '12-04-2022', NULL, NULL),
(361, '127.0.0.1', '02:36:52pm', '12-04-2022', NULL, NULL),
(362, '127.0.0.1', '02:37:02pm', '12-04-2022', NULL, NULL),
(363, '127.0.0.1', '02:44:16pm', '12-04-2022', NULL, NULL),
(364, '127.0.0.1', '03:00:18pm', '12-04-2022', NULL, NULL),
(365, '127.0.0.1', '03:00:34pm', '12-04-2022', NULL, NULL),
(366, '127.0.0.1', '03:00:44pm', '12-04-2022', NULL, NULL),
(367, '127.0.0.1', '03:04:46pm', '12-04-2022', NULL, NULL),
(368, '127.0.0.1', '03:05:06pm', '12-04-2022', NULL, NULL),
(369, '127.0.0.1', '03:08:05pm', '12-04-2022', NULL, NULL),
(370, '127.0.0.1', '03:09:55pm', '12-04-2022', NULL, NULL),
(371, '127.0.0.1', '03:11:07pm', '12-04-2022', NULL, NULL),
(372, '127.0.0.1', '03:11:59pm', '12-04-2022', NULL, NULL),
(373, '127.0.0.1', '03:13:04pm', '12-04-2022', NULL, NULL),
(374, '127.0.0.1', '03:13:17pm', '12-04-2022', NULL, NULL),
(375, '127.0.0.1', '03:13:41pm', '12-04-2022', NULL, NULL),
(376, '127.0.0.1', '03:14:20pm', '12-04-2022', NULL, NULL),
(377, '127.0.0.1', '03:14:57pm', '12-04-2022', NULL, NULL),
(378, '127.0.0.1', '03:16:50pm', '12-04-2022', NULL, NULL),
(379, '127.0.0.1', '03:16:55pm', '12-04-2022', NULL, NULL),
(380, '127.0.0.1', '03:23:30pm', '12-04-2022', NULL, NULL),
(381, '127.0.0.1', '03:26:14pm', '12-04-2022', NULL, NULL),
(382, '127.0.0.1', '03:26:34pm', '12-04-2022', NULL, NULL),
(383, '127.0.0.1', '03:39:27pm', '12-04-2022', NULL, NULL),
(384, '127.0.0.1', '03:39:33pm', '12-04-2022', NULL, NULL),
(385, '127.0.0.1', '03:39:59pm', '12-04-2022', NULL, NULL),
(386, '127.0.0.1', '03:55:32pm', '12-04-2022', NULL, NULL),
(387, '127.0.0.1', '04:12:09pm', '12-04-2022', NULL, NULL),
(388, '127.0.0.1', '04:12:54pm', '12-04-2022', NULL, NULL),
(389, '127.0.0.1', '04:12:57pm', '12-04-2022', NULL, NULL),
(390, '127.0.0.1', '04:13:43pm', '12-04-2022', NULL, NULL),
(391, '127.0.0.1', '04:15:51pm', '12-04-2022', NULL, NULL),
(392, '127.0.0.1', '04:18:08pm', '12-04-2022', NULL, NULL),
(393, '127.0.0.1', '04:26:18pm', '12-04-2022', NULL, NULL),
(394, '127.0.0.1', '04:29:32pm', '12-04-2022', NULL, NULL),
(395, '127.0.0.1', '06:13:39pm', '12-04-2022', NULL, NULL),
(396, '127.0.0.1', '06:26:06pm', '12-04-2022', NULL, NULL),
(397, '127.0.0.1', '06:56:27pm', '12-04-2022', NULL, NULL),
(398, '127.0.0.1', '06:56:52pm', '12-04-2022', NULL, NULL),
(399, '127.0.0.1', '06:57:03pm', '12-04-2022', NULL, NULL),
(400, '127.0.0.1', '06:57:49pm', '12-04-2022', NULL, NULL),
(401, '127.0.0.1', '06:58:03pm', '12-04-2022', NULL, NULL),
(402, '127.0.0.1', '07:06:44pm', '12-04-2022', NULL, NULL),
(403, '127.0.0.1', '07:09:49pm', '12-04-2022', NULL, NULL),
(404, '127.0.0.1', '07:10:38pm', '12-04-2022', NULL, NULL),
(405, '127.0.0.1', '07:13:30pm', '12-04-2022', NULL, NULL),
(406, '127.0.0.1', '07:13:47pm', '12-04-2022', NULL, NULL),
(407, '127.0.0.1', '07:26:46pm', '12-04-2022', NULL, NULL),
(408, '127.0.0.1', '07:27:05pm', '12-04-2022', NULL, NULL),
(409, '127.0.0.1', '07:27:17pm', '12-04-2022', NULL, NULL),
(410, '127.0.0.1', '07:27:29pm', '12-04-2022', NULL, NULL),
(411, '127.0.0.1', '07:27:39pm', '12-04-2022', NULL, NULL),
(412, '127.0.0.1', '07:27:48pm', '12-04-2022', NULL, NULL),
(413, '127.0.0.1', '07:27:58pm', '12-04-2022', NULL, NULL),
(414, '127.0.0.1', '07:29:52pm', '12-04-2022', NULL, NULL),
(415, '127.0.0.1', '07:29:55pm', '12-04-2022', NULL, NULL),
(416, '127.0.0.1', '07:29:58pm', '12-04-2022', NULL, NULL),
(417, '127.0.0.1', '07:30:00pm', '12-04-2022', NULL, NULL),
(418, '127.0.0.1', '07:30:08pm', '12-04-2022', NULL, NULL),
(419, '127.0.0.1', '07:31:22pm', '12-04-2022', NULL, NULL),
(420, '127.0.0.1', '07:32:08pm', '12-04-2022', NULL, NULL),
(421, '127.0.0.1', '07:32:18pm', '12-04-2022', NULL, NULL),
(422, '127.0.0.1', '07:34:31pm', '12-04-2022', NULL, NULL),
(423, '127.0.0.1', '07:34:40pm', '12-04-2022', NULL, NULL),
(424, '127.0.0.1', '07:35:17pm', '12-04-2022', NULL, NULL),
(425, '127.0.0.1', '07:39:19pm', '12-04-2022', NULL, NULL),
(426, '127.0.0.1', '07:39:27pm', '12-04-2022', NULL, NULL),
(427, '127.0.0.1', '07:57:35pm', '12-04-2022', NULL, NULL),
(428, '127.0.0.1', '07:57:53pm', '12-04-2022', NULL, NULL),
(429, '127.0.0.1', '07:58:26pm', '12-04-2022', NULL, NULL),
(430, '127.0.0.1', '07:58:43pm', '12-04-2022', NULL, NULL),
(431, '127.0.0.1', '08:03:20pm', '12-04-2022', NULL, NULL),
(432, '127.0.0.1', '08:03:24pm', '12-04-2022', NULL, NULL),
(433, '127.0.0.1', '08:03:28pm', '12-04-2022', NULL, NULL),
(434, '127.0.0.1', '08:03:34pm', '12-04-2022', NULL, NULL),
(435, '127.0.0.1', '08:04:37pm', '12-04-2022', NULL, NULL),
(436, '127.0.0.1', '08:04:42pm', '12-04-2022', NULL, NULL),
(437, '127.0.0.1', '08:04:47pm', '12-04-2022', NULL, NULL),
(438, '127.0.0.1', '08:04:53pm', '12-04-2022', NULL, NULL),
(439, '127.0.0.1', '08:05:18pm', '12-04-2022', NULL, NULL),
(440, '127.0.0.1', '08:05:44pm', '12-04-2022', NULL, NULL),
(441, '127.0.0.1', '08:05:58pm', '12-04-2022', NULL, NULL),
(442, '127.0.0.1', '08:13:54pm', '12-04-2022', NULL, NULL),
(443, '127.0.0.1', '08:14:06pm', '12-04-2022', NULL, NULL),
(444, '127.0.0.1', '08:14:11pm', '12-04-2022', NULL, NULL),
(445, '127.0.0.1', '08:14:17pm', '12-04-2022', NULL, NULL),
(446, '127.0.0.1', '08:17:08pm', '12-04-2022', NULL, NULL),
(447, '127.0.0.1', '08:17:19pm', '12-04-2022', NULL, NULL),
(448, '127.0.0.1', '08:17:25pm', '12-04-2022', NULL, NULL),
(449, '127.0.0.1', '08:18:11pm', '12-04-2022', NULL, NULL),
(450, '127.0.0.1', '08:18:34pm', '12-04-2022', NULL, NULL),
(451, '127.0.0.1', '08:18:37pm', '12-04-2022', NULL, NULL),
(452, '127.0.0.1', '08:28:17pm', '12-04-2022', NULL, NULL),
(453, '127.0.0.1', '08:29:25pm', '12-04-2022', NULL, NULL),
(454, '127.0.0.1', '10:58:05am', '13-04-2022', NULL, NULL),
(455, '127.0.0.1', '10:58:18am', '13-04-2022', NULL, NULL),
(456, '127.0.0.1', '11:50:42am', '13-04-2022', NULL, NULL),
(457, '127.0.0.1', '11:50:44am', '13-04-2022', NULL, NULL),
(458, '127.0.0.1', '11:51:57am', '13-04-2022', NULL, NULL),
(459, '127.0.0.1', '11:52:09am', '13-04-2022', NULL, NULL),
(460, '127.0.0.1', '12:05:16pm', '13-04-2022', NULL, NULL),
(461, '127.0.0.1', '09:33:20pm', '13-04-2022', NULL, NULL),
(462, '127.0.0.1', '09:33:54pm', '13-04-2022', NULL, NULL),
(463, '127.0.0.1', '09:42:35pm', '13-04-2022', NULL, NULL),
(464, '127.0.0.1', '11:36:28am', '14-04-2022', NULL, NULL),
(465, '127.0.0.1', '06:00:02pm', '14-04-2022', NULL, NULL),
(466, '127.0.0.1', '06:10:35pm', '14-04-2022', NULL, NULL),
(467, '127.0.0.1', '06:10:41pm', '14-04-2022', NULL, NULL),
(468, '127.0.0.1', '07:02:56pm', '14-04-2022', NULL, NULL),
(469, '127.0.0.1', '01:22:03pm', '16-04-2022', NULL, NULL),
(470, '127.0.0.1', '01:22:10pm', '16-04-2022', NULL, NULL),
(471, '127.0.0.1', '01:22:23pm', '16-04-2022', NULL, NULL),
(472, '127.0.0.1', '01:23:20pm', '16-04-2022', NULL, NULL),
(473, '127.0.0.1', '03:47:22pm', '16-04-2022', NULL, NULL),
(474, '127.0.0.1', '03:49:40pm', '16-04-2022', NULL, NULL),
(475, '127.0.0.1', '04:13:38pm', '16-04-2022', NULL, NULL),
(476, '127.0.0.1', '06:28:53pm', '16-04-2022', NULL, NULL),
(477, '127.0.0.1', '06:29:37pm', '16-04-2022', NULL, NULL),
(478, '127.0.0.1', '07:03:06pm', '16-04-2022', NULL, NULL),
(479, '127.0.0.1', '07:03:36pm', '16-04-2022', NULL, NULL),
(480, '127.0.0.1', '07:03:48pm', '16-04-2022', NULL, NULL),
(481, '127.0.0.1', '12:58:01pm', '17-04-2022', NULL, NULL),
(482, '127.0.0.1', '12:58:19pm', '17-04-2022', NULL, NULL),
(483, '127.0.0.1', '01:32:14pm', '17-04-2022', NULL, NULL),
(484, '127.0.0.1', '01:32:50pm', '17-04-2022', NULL, NULL),
(485, '127.0.0.1', '01:35:33pm', '17-04-2022', NULL, NULL),
(486, '127.0.0.1', '01:35:40pm', '17-04-2022', NULL, NULL),
(487, '127.0.0.1', '01:36:30pm', '17-04-2022', NULL, NULL),
(488, '127.0.0.1', '01:38:10pm', '17-04-2022', NULL, NULL),
(489, '127.0.0.1', '01:50:26pm', '17-04-2022', NULL, NULL),
(490, '127.0.0.1', '01:52:49pm', '17-04-2022', NULL, NULL),
(491, '127.0.0.1', '01:56:42pm', '17-04-2022', NULL, NULL),
(492, '127.0.0.1', '01:58:44pm', '17-04-2022', NULL, NULL),
(493, '127.0.0.1', '02:01:15pm', '17-04-2022', NULL, NULL),
(494, '127.0.0.1', '02:02:46pm', '17-04-2022', NULL, NULL),
(495, '127.0.0.1', '02:09:35pm', '17-04-2022', NULL, NULL),
(496, '127.0.0.1', '02:10:30pm', '17-04-2022', NULL, NULL),
(497, '127.0.0.1', '02:15:29pm', '17-04-2022', NULL, NULL),
(498, '127.0.0.1', '02:40:47pm', '17-04-2022', NULL, NULL),
(499, '127.0.0.1', '02:40:55pm', '17-04-2022', NULL, NULL),
(500, '127.0.0.1', '02:41:23pm', '17-04-2022', NULL, NULL),
(501, '127.0.0.1', '02:42:56pm', '17-04-2022', NULL, NULL),
(502, '127.0.0.1', '06:12:27pm', '17-04-2022', NULL, NULL),
(503, '127.0.0.1', '06:19:54pm', '17-04-2022', NULL, NULL),
(504, '127.0.0.1', '06:20:44pm', '17-04-2022', NULL, NULL),
(505, '127.0.0.1', '06:22:32pm', '17-04-2022', NULL, NULL),
(506, '127.0.0.1', '06:51:56pm', '17-04-2022', NULL, NULL),
(507, '127.0.0.1', '06:56:45pm', '17-04-2022', NULL, NULL),
(508, '127.0.0.1', '06:57:20pm', '17-04-2022', NULL, NULL),
(509, '127.0.0.1', '07:00:08pm', '17-04-2022', NULL, NULL),
(510, '127.0.0.1', '09:45:12pm', '18-04-2022', NULL, NULL),
(511, '127.0.0.1', '09:45:39pm', '18-04-2022', NULL, NULL),
(512, '127.0.0.1', '09:45:50pm', '18-04-2022', NULL, NULL),
(513, '127.0.0.1', '09:47:04pm', '18-04-2022', NULL, NULL),
(514, '127.0.0.1', '10:10:47pm', '18-04-2022', NULL, NULL),
(515, '127.0.0.1', '10:10:50pm', '18-04-2022', NULL, NULL),
(516, '127.0.0.1', '10:14:54pm', '18-04-2022', NULL, NULL),
(517, '127.0.0.1', '10:14:57pm', '18-04-2022', NULL, NULL),
(518, '127.0.0.1', '10:16:09pm', '18-04-2022', NULL, NULL),
(519, '127.0.0.1', '10:16:10pm', '18-04-2022', NULL, NULL),
(520, '127.0.0.1', '10:16:11pm', '18-04-2022', NULL, NULL),
(521, '127.0.0.1', '10:16:12pm', '18-04-2022', NULL, NULL),
(522, '127.0.0.1', '10:18:49pm', '18-04-2022', NULL, NULL),
(523, '127.0.0.1', '10:18:50pm', '18-04-2022', NULL, NULL),
(524, '127.0.0.1', '10:19:16pm', '18-04-2022', NULL, NULL),
(525, '127.0.0.1', '10:19:18pm', '18-04-2022', NULL, NULL),
(526, '127.0.0.1', '10:21:24pm', '18-04-2022', NULL, NULL),
(527, '127.0.0.1', '10:21:27pm', '18-04-2022', NULL, NULL),
(528, '127.0.0.1', '10:28:07pm', '18-04-2022', NULL, NULL),
(529, '127.0.0.1', '10:28:08pm', '18-04-2022', NULL, NULL),
(530, '127.0.0.1', '10:30:25pm', '18-04-2022', NULL, NULL),
(531, '127.0.0.1', '10:30:28pm', '18-04-2022', NULL, NULL),
(532, '127.0.0.1', '10:30:54pm', '18-04-2022', NULL, NULL),
(533, '127.0.0.1', '10:30:59pm', '18-04-2022', NULL, NULL),
(534, '127.0.0.1', '12:19:43am', '19-04-2022', NULL, NULL),
(535, '127.0.0.1', '12:19:59am', '19-04-2022', NULL, NULL),
(536, '127.0.0.1', '12:20:28am', '19-04-2022', NULL, NULL),
(537, '127.0.0.1', '12:30:45am', '19-04-2022', NULL, NULL),
(538, '127.0.0.1', '12:38:39am', '19-04-2022', NULL, NULL),
(539, '127.0.0.1', '12:45:17am', '19-04-2022', NULL, NULL),
(540, '127.0.0.1', '12:52:57am', '19-04-2022', NULL, NULL),
(541, '127.0.0.1', '01:01:39am', '19-04-2022', NULL, NULL),
(542, '127.0.0.1', '01:01:43am', '19-04-2022', NULL, NULL),
(543, '127.0.0.1', '01:03:28am', '19-04-2022', NULL, NULL),
(544, '127.0.0.1', '10:18:29am', '19-04-2022', NULL, NULL),
(545, '127.0.0.1', '10:25:26am', '19-04-2022', NULL, NULL),
(546, '127.0.0.1', '10:25:35am', '19-04-2022', NULL, NULL),
(547, '127.0.0.1', '10:26:54am', '19-04-2022', NULL, NULL),
(548, '127.0.0.1', '10:31:34am', '19-04-2022', NULL, NULL),
(549, '127.0.0.1', '10:31:49am', '19-04-2022', NULL, NULL),
(550, '127.0.0.1', '10:34:19am', '19-04-2022', NULL, NULL),
(551, '127.0.0.1', '11:19:03am', '19-04-2022', NULL, NULL),
(552, '127.0.0.1', '11:20:40am', '19-04-2022', NULL, NULL),
(553, '127.0.0.1', '11:34:54am', '19-04-2022', NULL, NULL),
(554, '127.0.0.1', '11:35:19am', '19-04-2022', NULL, NULL),
(555, '127.0.0.1', '11:53:20am', '19-04-2022', NULL, NULL),
(556, '127.0.0.1', '01:00:22pm', '19-04-2022', NULL, NULL),
(557, '127.0.0.1', '01:00:24pm', '19-04-2022', NULL, NULL),
(558, '127.0.0.1', '01:05:35pm', '19-04-2022', NULL, NULL),
(559, '127.0.0.1', '01:05:37pm', '19-04-2022', NULL, NULL),
(560, '127.0.0.1', '01:07:39pm', '19-04-2022', NULL, NULL),
(561, '127.0.0.1', '01:07:40pm', '19-04-2022', NULL, NULL),
(562, '127.0.0.1', '01:21:55pm', '19-04-2022', NULL, NULL),
(563, '127.0.0.1', '01:21:58pm', '19-04-2022', NULL, NULL),
(564, '127.0.0.1', '01:23:48pm', '19-04-2022', NULL, NULL),
(565, '127.0.0.1', '01:23:50pm', '19-04-2022', NULL, NULL),
(566, '127.0.0.1', '01:24:00pm', '19-04-2022', NULL, NULL),
(567, '127.0.0.1', '01:24:02pm', '19-04-2022', NULL, NULL),
(568, '127.0.0.1', '01:24:09pm', '19-04-2022', NULL, NULL),
(569, '127.0.0.1', '01:27:13pm', '19-04-2022', NULL, NULL),
(570, '127.0.0.1', '01:27:15pm', '19-04-2022', NULL, NULL),
(571, '127.0.0.1', '01:29:21pm', '19-04-2022', NULL, NULL),
(572, '127.0.0.1', '01:29:23pm', '19-04-2022', NULL, NULL),
(573, '127.0.0.1', '03:40:49pm', '19-04-2022', NULL, NULL),
(574, '127.0.0.1', '03:40:51pm', '19-04-2022', NULL, NULL),
(575, '127.0.0.1', '03:41:24pm', '19-04-2022', NULL, NULL),
(576, '127.0.0.1', '03:41:26pm', '19-04-2022', NULL, NULL),
(577, '127.0.0.1', '03:41:38pm', '19-04-2022', NULL, NULL),
(578, '127.0.0.1', '03:41:39pm', '19-04-2022', NULL, NULL),
(579, '127.0.0.1', '03:42:07pm', '19-04-2022', NULL, NULL),
(580, '127.0.0.1', '03:42:09pm', '19-04-2022', NULL, NULL),
(581, '127.0.0.1', '03:42:15pm', '19-04-2022', NULL, NULL),
(582, '127.0.0.1', '03:42:16pm', '19-04-2022', NULL, NULL),
(583, '127.0.0.1', '03:51:40pm', '19-04-2022', NULL, NULL),
(584, '127.0.0.1', '03:51:41pm', '19-04-2022', NULL, NULL),
(585, '127.0.0.1', '03:52:48pm', '19-04-2022', NULL, NULL),
(586, '127.0.0.1', '03:52:49pm', '19-04-2022', NULL, NULL),
(587, '127.0.0.1', '03:54:24pm', '19-04-2022', NULL, NULL),
(588, '127.0.0.1', '03:54:25pm', '19-04-2022', NULL, NULL),
(589, '127.0.0.1', '03:54:47pm', '19-04-2022', NULL, NULL),
(590, '127.0.0.1', '03:54:48pm', '19-04-2022', NULL, NULL),
(591, '127.0.0.1', '03:55:25pm', '19-04-2022', NULL, NULL),
(592, '127.0.0.1', '03:55:27pm', '19-04-2022', NULL, NULL),
(593, '127.0.0.1', '03:55:35pm', '19-04-2022', NULL, NULL),
(594, '127.0.0.1', '03:55:37pm', '19-04-2022', NULL, NULL),
(595, '127.0.0.1', '03:55:45pm', '19-04-2022', NULL, NULL),
(596, '127.0.0.1', '03:59:32pm', '19-04-2022', NULL, NULL),
(597, '127.0.0.1', '03:59:34pm', '19-04-2022', NULL, NULL),
(598, '127.0.0.1', '03:59:44pm', '19-04-2022', NULL, NULL),
(599, '127.0.0.1', '03:59:46pm', '19-04-2022', NULL, NULL),
(600, '127.0.0.1', '04:01:48pm', '19-04-2022', NULL, NULL),
(601, '127.0.0.1', '04:01:52pm', '19-04-2022', NULL, NULL),
(602, '127.0.0.1', '04:01:56pm', '19-04-2022', NULL, NULL),
(603, '127.0.0.1', '04:01:57pm', '19-04-2022', NULL, NULL),
(604, '127.0.0.1', '04:03:25pm', '19-04-2022', NULL, NULL),
(605, '127.0.0.1', '04:03:28pm', '19-04-2022', NULL, NULL),
(606, '127.0.0.1', '04:03:34pm', '19-04-2022', NULL, NULL),
(607, '127.0.0.1', '04:03:35pm', '19-04-2022', NULL, NULL),
(608, '127.0.0.1', '04:07:45pm', '19-04-2022', NULL, NULL),
(609, '127.0.0.1', '04:07:47pm', '19-04-2022', NULL, NULL),
(610, '127.0.0.1', '04:07:50pm', '19-04-2022', NULL, NULL),
(611, '127.0.0.1', '04:07:51pm', '19-04-2022', NULL, NULL),
(612, '127.0.0.1', '04:09:42pm', '19-04-2022', NULL, NULL),
(613, '127.0.0.1', '04:09:44pm', '19-04-2022', NULL, NULL),
(614, '127.0.0.1', '04:14:35pm', '19-04-2022', NULL, NULL),
(615, '127.0.0.1', '04:14:36pm', '19-04-2022', NULL, NULL),
(616, '127.0.0.1', '04:21:50pm', '19-04-2022', NULL, NULL),
(617, '127.0.0.1', '04:21:52pm', '19-04-2022', NULL, NULL),
(618, '127.0.0.1', '04:22:48pm', '19-04-2022', NULL, NULL),
(619, '127.0.0.1', '04:22:52pm', '19-04-2022', NULL, NULL),
(620, '127.0.0.1', '04:23:28pm', '19-04-2022', NULL, NULL),
(621, '127.0.0.1', '04:23:30pm', '19-04-2022', NULL, NULL),
(622, '127.0.0.1', '04:25:27pm', '19-04-2022', NULL, NULL),
(623, '127.0.0.1', '04:25:29pm', '19-04-2022', NULL, NULL),
(624, '127.0.0.1', '04:26:52pm', '19-04-2022', NULL, NULL),
(625, '127.0.0.1', '04:26:53pm', '19-04-2022', NULL, NULL),
(626, '127.0.0.1', '04:27:19pm', '19-04-2022', NULL, NULL),
(627, '127.0.0.1', '04:27:20pm', '19-04-2022', NULL, NULL),
(628, '127.0.0.1', '04:27:43pm', '19-04-2022', NULL, NULL),
(629, '127.0.0.1', '04:29:41pm', '19-04-2022', NULL, NULL),
(630, '127.0.0.1', '04:29:44pm', '19-04-2022', NULL, NULL),
(631, '127.0.0.1', '04:42:42pm', '19-04-2022', NULL, NULL),
(632, '127.0.0.1', '04:42:43pm', '19-04-2022', NULL, NULL),
(633, '127.0.0.1', '04:42:50pm', '19-04-2022', NULL, NULL),
(634, '127.0.0.1', '04:42:51pm', '19-04-2022', NULL, NULL),
(635, '127.0.0.1', '04:42:58pm', '19-04-2022', NULL, NULL),
(636, '127.0.0.1', '04:55:09pm', '19-04-2022', NULL, NULL),
(637, '127.0.0.1', '04:55:10pm', '19-04-2022', NULL, NULL),
(638, '127.0.0.1', '04:55:20pm', '19-04-2022', NULL, NULL),
(639, '127.0.0.1', '04:55:21pm', '19-04-2022', NULL, NULL),
(640, '127.0.0.1', '05:03:35pm', '19-04-2022', NULL, NULL),
(641, '127.0.0.1', '05:03:36pm', '19-04-2022', NULL, NULL),
(642, '127.0.0.1', '05:03:40pm', '19-04-2022', NULL, NULL),
(643, '127.0.0.1', '05:03:41pm', '19-04-2022', NULL, NULL),
(644, '127.0.0.1', '05:03:46pm', '19-04-2022', NULL, NULL),
(645, '127.0.0.1', '05:03:47pm', '19-04-2022', NULL, NULL),
(646, '127.0.0.1', '05:03:54pm', '19-04-2022', NULL, NULL),
(647, '127.0.0.1', '05:03:56pm', '19-04-2022', NULL, NULL),
(648, '127.0.0.1', '05:42:31pm', '19-04-2022', NULL, NULL),
(649, '127.0.0.1', '05:42:32pm', '19-04-2022', NULL, NULL),
(650, '127.0.0.1', '05:43:27pm', '19-04-2022', NULL, NULL),
(651, '127.0.0.1', '05:43:27pm', '19-04-2022', NULL, NULL),
(652, '127.0.0.1', '05:45:28pm', '19-04-2022', NULL, NULL),
(653, '127.0.0.1', '05:45:30pm', '19-04-2022', NULL, NULL),
(654, '127.0.0.1', '05:47:55pm', '19-04-2022', NULL, NULL),
(655, '127.0.0.1', '05:47:56pm', '19-04-2022', NULL, NULL),
(656, '127.0.0.1', '05:48:14pm', '19-04-2022', NULL, NULL),
(657, '127.0.0.1', '05:48:15pm', '19-04-2022', NULL, NULL),
(658, '127.0.0.1', '05:49:11pm', '19-04-2022', NULL, NULL),
(659, '127.0.0.1', '05:49:12pm', '19-04-2022', NULL, NULL),
(660, '127.0.0.1', '05:54:12pm', '19-04-2022', NULL, NULL),
(661, '127.0.0.1', '05:54:13pm', '19-04-2022', NULL, NULL),
(662, '127.0.0.1', '05:56:39pm', '19-04-2022', NULL, NULL),
(663, '127.0.0.1', '05:56:40pm', '19-04-2022', NULL, NULL),
(664, '127.0.0.1', '05:56:46pm', '19-04-2022', NULL, NULL),
(665, '127.0.0.1', '05:56:47pm', '19-04-2022', NULL, NULL),
(666, '127.0.0.1', '05:58:36pm', '19-04-2022', NULL, NULL),
(667, '127.0.0.1', '05:58:39pm', '19-04-2022', NULL, NULL),
(668, '127.0.0.1', '05:59:06pm', '19-04-2022', NULL, NULL),
(669, '127.0.0.1', '05:59:07pm', '19-04-2022', NULL, NULL),
(670, '127.0.0.1', '06:00:27pm', '19-04-2022', NULL, NULL),
(671, '127.0.0.1', '06:00:28pm', '19-04-2022', NULL, NULL),
(672, '127.0.0.1', '06:00:44pm', '19-04-2022', NULL, NULL),
(673, '127.0.0.1', '06:00:45pm', '19-04-2022', NULL, NULL),
(674, '127.0.0.1', '06:20:58pm', '19-04-2022', NULL, NULL),
(675, '127.0.0.1', '06:20:59pm', '19-04-2022', NULL, NULL),
(676, '127.0.0.1', '06:31:03pm', '19-04-2022', NULL, NULL),
(677, '127.0.0.1', '06:31:05pm', '19-04-2022', NULL, NULL),
(678, '127.0.0.1', '06:32:19pm', '19-04-2022', NULL, NULL),
(679, '127.0.0.1', '06:32:22pm', '19-04-2022', NULL, NULL),
(680, '127.0.0.1', '06:32:28pm', '19-04-2022', NULL, NULL),
(681, '127.0.0.1', '06:32:31pm', '19-04-2022', NULL, NULL),
(682, '127.0.0.1', '06:32:52pm', '19-04-2022', NULL, NULL),
(683, '127.0.0.1', '06:32:55pm', '19-04-2022', NULL, NULL),
(684, '127.0.0.1', '06:33:49pm', '19-04-2022', NULL, NULL),
(685, '127.0.0.1', '06:33:52pm', '19-04-2022', NULL, NULL),
(686, '127.0.0.1', '10:31:34pm', '19-04-2022', NULL, NULL),
(687, '127.0.0.1', '10:31:54pm', '19-04-2022', NULL, NULL),
(688, '127.0.0.1', '03:32:13pm', '20-04-2022', NULL, NULL),
(689, '127.0.0.1', '03:42:17pm', '20-04-2022', NULL, NULL),
(690, '127.0.0.1', '04:22:47pm', '20-04-2022', NULL, NULL),
(691, '127.0.0.1', '04:27:13pm', '20-04-2022', NULL, NULL),
(692, '127.0.0.1', '04:28:44pm', '20-04-2022', NULL, NULL),
(693, '127.0.0.1', '04:28:50pm', '20-04-2022', NULL, NULL),
(694, '127.0.0.1', '04:30:14pm', '20-04-2022', NULL, NULL),
(695, '127.0.0.1', '04:34:35pm', '20-04-2022', NULL, NULL),
(696, '127.0.0.1', '04:36:33pm', '20-04-2022', NULL, NULL),
(697, '127.0.0.1', '04:36:34pm', '20-04-2022', NULL, NULL),
(698, '127.0.0.1', '04:36:38pm', '20-04-2022', NULL, NULL),
(699, '127.0.0.1', '04:36:45pm', '20-04-2022', NULL, NULL),
(700, '127.0.0.1', '04:36:46pm', '20-04-2022', NULL, NULL),
(701, '127.0.0.1', '04:36:50pm', '20-04-2022', NULL, NULL),
(702, '127.0.0.1', '04:39:35pm', '20-04-2022', NULL, NULL),
(703, '127.0.0.1', '04:39:39pm', '20-04-2022', NULL, NULL),
(704, '127.0.0.1', '04:45:33pm', '20-04-2022', NULL, NULL),
(705, '127.0.0.1', '04:46:23pm', '20-04-2022', NULL, NULL),
(706, '127.0.0.1', '04:57:52pm', '20-04-2022', NULL, NULL),
(707, '127.0.0.1', '04:58:25pm', '20-04-2022', NULL, NULL),
(708, '127.0.0.1', '04:59:27pm', '20-04-2022', NULL, NULL),
(709, '127.0.0.1', '05:00:57pm', '20-04-2022', NULL, NULL),
(710, '127.0.0.1', '05:01:10pm', '20-04-2022', NULL, NULL),
(711, '127.0.0.1', '05:01:13pm', '20-04-2022', NULL, NULL),
(712, '127.0.0.1', '05:03:50pm', '20-04-2022', NULL, NULL),
(713, '127.0.0.1', '05:08:07pm', '20-04-2022', NULL, NULL),
(714, '127.0.0.1', '05:08:54pm', '20-04-2022', NULL, NULL),
(715, '127.0.0.1', '05:08:57pm', '20-04-2022', NULL, NULL),
(716, '127.0.0.1', '05:09:15pm', '20-04-2022', NULL, NULL),
(717, '127.0.0.1', '05:12:36pm', '20-04-2022', NULL, NULL),
(718, '127.0.0.1', '05:14:56pm', '20-04-2022', NULL, NULL),
(719, '127.0.0.1', '05:15:12pm', '20-04-2022', NULL, NULL),
(720, '127.0.0.1', '06:58:48pm', '20-04-2022', NULL, NULL),
(721, '127.0.0.1', '06:59:58pm', '20-04-2022', NULL, NULL),
(722, '127.0.0.1', '08:02:38pm', '20-04-2022', NULL, NULL),
(723, '127.0.0.1', '08:03:15pm', '20-04-2022', NULL, NULL),
(724, '127.0.0.1', '08:03:51pm', '20-04-2022', NULL, NULL),
(725, '127.0.0.1', '08:06:13pm', '20-04-2022', NULL, NULL),
(726, '127.0.0.1', '08:24:39pm', '20-04-2022', NULL, NULL),
(727, '127.0.0.1', '08:26:13pm', '20-04-2022', NULL, NULL),
(728, '127.0.0.1', '08:27:44pm', '20-04-2022', NULL, NULL),
(729, '127.0.0.1', '08:28:12pm', '20-04-2022', NULL, NULL),
(730, '127.0.0.1', '08:29:18pm', '20-04-2022', NULL, NULL),
(731, '127.0.0.1', '08:30:19pm', '20-04-2022', NULL, NULL),
(732, '127.0.0.1', '01:17:11pm', '21-04-2022', NULL, NULL),
(733, '127.0.0.1', '03:40:42pm', '21-04-2022', NULL, NULL),
(734, '127.0.0.1', '05:59:39pm', '21-04-2022', NULL, NULL),
(735, '127.0.0.1', '07:11:03pm', '21-04-2022', NULL, NULL),
(736, '127.0.0.1', '07:11:09pm', '21-04-2022', NULL, NULL),
(737, '127.0.0.1', '07:13:50pm', '21-04-2022', NULL, NULL),
(738, '127.0.0.1', '01:29:40pm', '24-04-2022', NULL, NULL),
(739, '127.0.0.1', '01:29:50pm', '24-04-2022', NULL, NULL),
(740, '127.0.0.1', '01:29:55pm', '24-04-2022', NULL, NULL),
(741, '127.0.0.1', '03:54:56pm', '24-04-2022', NULL, NULL),
(742, '127.0.0.1', '03:59:30pm', '24-04-2022', NULL, NULL),
(743, '127.0.0.1', '06:59:42pm', '24-04-2022', NULL, NULL),
(744, '127.0.0.1', '07:44:00pm', '24-04-2022', NULL, NULL),
(745, '127.0.0.1', '04:03:42pm', '26-04-2022', NULL, NULL),
(746, '127.0.0.1', '04:03:44pm', '26-04-2022', NULL, NULL),
(747, '127.0.0.1', '04:04:05pm', '26-04-2022', NULL, NULL),
(748, '127.0.0.1', '04:04:59pm', '26-04-2022', NULL, NULL),
(749, '127.0.0.1', '04:07:33pm', '26-04-2022', NULL, NULL),
(750, '127.0.0.1', '04:07:50pm', '26-04-2022', NULL, NULL),
(751, '127.0.0.1', '04:21:47pm', '26-04-2022', NULL, NULL),
(752, '127.0.0.1', '04:23:17pm', '26-04-2022', NULL, NULL),
(753, '127.0.0.1', '04:24:09pm', '26-04-2022', NULL, NULL),
(754, '127.0.0.1', '04:24:37pm', '26-04-2022', NULL, NULL),
(755, '127.0.0.1', '04:26:05pm', '26-04-2022', NULL, NULL),
(756, '127.0.0.1', '04:26:55pm', '26-04-2022', NULL, NULL),
(757, '127.0.0.1', '04:28:25pm', '26-04-2022', NULL, NULL),
(758, '127.0.0.1', '04:45:28pm', '26-04-2022', NULL, NULL),
(759, '127.0.0.1', '04:45:41pm', '26-04-2022', NULL, NULL),
(760, '127.0.0.1', '04:46:55pm', '26-04-2022', NULL, NULL),
(761, '127.0.0.1', '04:47:07pm', '26-04-2022', NULL, NULL),
(762, '127.0.0.1', '05:47:58pm', '26-04-2022', NULL, NULL),
(763, '127.0.0.1', '06:55:06pm', '26-04-2022', NULL, NULL),
(764, '127.0.0.1', '06:55:36pm', '26-04-2022', NULL, NULL),
(765, '127.0.0.1', '07:05:07pm', '26-04-2022', NULL, NULL),
(766, '127.0.0.1', '01:42:16pm', '27-04-2022', NULL, NULL),
(767, '127.0.0.1', '02:54:49pm', '27-04-2022', NULL, NULL),
(768, '127.0.0.1', '03:26:54pm', '27-04-2022', NULL, NULL),
(769, '127.0.0.1', '03:49:27pm', '27-04-2022', NULL, NULL),
(770, '127.0.0.1', '03:54:20pm', '27-04-2022', NULL, NULL),
(771, '127.0.0.1', '04:04:05pm', '27-04-2022', NULL, NULL),
(772, '127.0.0.1', '04:15:18pm', '27-04-2022', NULL, NULL),
(773, '127.0.0.1', '04:16:19pm', '27-04-2022', NULL, NULL),
(774, '127.0.0.1', '04:29:23pm', '27-04-2022', NULL, NULL),
(775, '127.0.0.1', '04:50:11pm', '27-04-2022', NULL, NULL),
(776, '127.0.0.1', '04:52:21pm', '27-04-2022', NULL, NULL),
(777, '127.0.0.1', '02:50:15pm', '28-04-2022', NULL, NULL),
(778, '127.0.0.1', '02:56:58pm', '28-04-2022', NULL, NULL),
(779, '127.0.0.1', '04:13:17pm', '28-04-2022', NULL, NULL),
(780, '127.0.0.1', '04:14:21pm', '28-04-2022', NULL, NULL),
(781, '127.0.0.1', '12:58:10pm', '30-04-2022', NULL, NULL),
(782, '127.0.0.1', '12:58:19pm', '30-04-2022', NULL, NULL),
(783, '127.0.0.1', '01:11:31pm', '30-04-2022', NULL, NULL),
(784, '127.0.0.1', '01:17:16pm', '30-04-2022', NULL, NULL),
(785, '127.0.0.1', '01:17:35pm', '30-04-2022', NULL, NULL),
(786, '127.0.0.1', '01:26:06pm', '30-04-2022', NULL, NULL),
(787, '127.0.0.1', '01:26:19pm', '30-04-2022', NULL, NULL),
(788, '127.0.0.1', '01:26:42pm', '30-04-2022', NULL, NULL),
(789, '127.0.0.1', '01:38:07pm', '30-04-2022', NULL, NULL),
(790, '127.0.0.1', '04:55:57pm', '30-04-2022', NULL, NULL),
(791, '127.0.0.1', '04:57:16pm', '30-04-2022', NULL, NULL),
(792, '127.0.0.1', '05:00:43pm', '30-04-2022', NULL, NULL),
(793, '127.0.0.1', '05:05:48pm', '30-04-2022', NULL, NULL),
(794, '127.0.0.1', '05:06:02pm', '30-04-2022', NULL, NULL),
(795, '127.0.0.1', '05:06:05pm', '30-04-2022', NULL, NULL),
(796, '127.0.0.1', '05:58:28pm', '30-04-2022', NULL, NULL),
(797, '127.0.0.1', '12:53:19pm', '01-05-2022', NULL, NULL),
(798, '127.0.0.1', '01:03:45pm', '01-05-2022', NULL, NULL),
(799, '127.0.0.1', '01:12:09pm', '01-05-2022', NULL, NULL),
(800, '127.0.0.1', '01:12:44pm', '01-05-2022', NULL, NULL),
(801, '127.0.0.1', '01:18:43pm', '01-05-2022', NULL, NULL),
(802, '127.0.0.1', '03:21:43pm', '01-05-2022', NULL, NULL),
(803, '127.0.0.1', '03:26:12pm', '01-05-2022', NULL, NULL),
(804, '127.0.0.1', '05:32:14pm', '01-05-2022', NULL, NULL),
(805, '127.0.0.1', '06:24:31pm', '01-05-2022', NULL, NULL),
(806, '127.0.0.1', '06:25:31pm', '01-05-2022', NULL, NULL),
(807, '127.0.0.1', '06:50:23pm', '01-05-2022', NULL, NULL),
(808, '127.0.0.1', '06:50:44pm', '01-05-2022', NULL, NULL),
(809, '127.0.0.1', '06:51:10pm', '01-05-2022', NULL, NULL),
(810, '127.0.0.1', '06:51:29pm', '01-05-2022', NULL, NULL),
(811, '127.0.0.1', '07:00:10pm', '01-05-2022', NULL, NULL),
(812, '127.0.0.1', '07:01:01pm', '01-05-2022', NULL, NULL),
(813, '127.0.0.1', '07:04:12pm', '01-05-2022', NULL, NULL),
(814, '127.0.0.1', '07:26:46pm', '01-05-2022', NULL, NULL),
(815, '127.0.0.1', '07:27:15pm', '01-05-2022', NULL, NULL),
(816, '127.0.0.1', '07:27:56pm', '01-05-2022', NULL, NULL),
(817, '127.0.0.1', '07:28:11pm', '01-05-2022', NULL, NULL),
(818, '127.0.0.1', '07:28:40pm', '01-05-2022', NULL, NULL),
(819, '127.0.0.1', '07:29:11pm', '01-05-2022', NULL, NULL),
(820, '127.0.0.1', '07:42:49pm', '01-05-2022', NULL, NULL),
(821, '127.0.0.1', '07:43:35pm', '01-05-2022', NULL, NULL),
(822, '127.0.0.1', '07:45:58pm', '01-05-2022', NULL, NULL),
(823, '127.0.0.1', '07:47:49pm', '01-05-2022', NULL, NULL),
(824, '127.0.0.1', '07:48:17pm', '01-05-2022', NULL, NULL),
(825, '127.0.0.1', '07:48:20pm', '01-05-2022', NULL, NULL),
(826, '127.0.0.1', '07:49:29pm', '01-05-2022', NULL, NULL),
(827, '127.0.0.1', '07:51:45pm', '01-05-2022', NULL, NULL),
(828, '127.0.0.1', '07:53:04pm', '01-05-2022', NULL, NULL),
(829, '127.0.0.1', '07:53:27pm', '01-05-2022', NULL, NULL),
(830, '127.0.0.1', '07:53:44pm', '01-05-2022', NULL, NULL),
(831, '127.0.0.1', '07:54:37pm', '01-05-2022', NULL, NULL),
(832, '127.0.0.1', '07:59:01pm', '01-05-2022', NULL, NULL),
(833, '127.0.0.1', '07:59:18pm', '01-05-2022', NULL, NULL),
(834, '127.0.0.1', '08:03:34pm', '01-05-2022', NULL, NULL),
(835, '127.0.0.1', '08:12:37pm', '01-05-2022', NULL, NULL),
(836, '127.0.0.1', '08:13:09pm', '01-05-2022', NULL, NULL),
(837, '127.0.0.1', '08:13:17pm', '01-05-2022', NULL, NULL),
(838, '127.0.0.1', '08:13:42pm', '01-05-2022', NULL, NULL),
(839, '127.0.0.1', '08:14:01pm', '01-05-2022', NULL, NULL),
(840, '127.0.0.1', '08:14:11pm', '01-05-2022', NULL, NULL),
(841, '127.0.0.1', '08:14:17pm', '01-05-2022', NULL, NULL),
(842, '127.0.0.1', '08:14:49pm', '01-05-2022', NULL, NULL),
(843, '127.0.0.1', '08:14:56pm', '01-05-2022', NULL, NULL),
(844, '127.0.0.1', '08:16:22pm', '01-05-2022', NULL, NULL),
(845, '127.0.0.1', '08:16:50pm', '01-05-2022', NULL, NULL),
(846, '127.0.0.1', '08:17:48pm', '01-05-2022', NULL, NULL),
(847, '127.0.0.1', '08:17:51pm', '01-05-2022', NULL, NULL),
(848, '127.0.0.1', '08:18:04pm', '01-05-2022', NULL, NULL),
(849, '127.0.0.1', '08:18:08pm', '01-05-2022', NULL, NULL),
(850, '127.0.0.1', '08:18:55pm', '01-05-2022', NULL, NULL),
(851, '127.0.0.1', '08:19:25pm', '01-05-2022', NULL, NULL),
(852, '127.0.0.1', '08:22:27pm', '01-05-2022', NULL, NULL),
(853, '127.0.0.1', '08:23:08pm', '01-05-2022', NULL, NULL),
(854, '127.0.0.1', '08:23:10pm', '01-05-2022', NULL, NULL),
(855, '127.0.0.1', '08:23:13pm', '01-05-2022', NULL, NULL),
(856, '127.0.0.1', '08:23:31pm', '01-05-2022', NULL, NULL),
(857, '127.0.0.1', '08:23:59pm', '01-05-2022', NULL, NULL),
(858, '127.0.0.1', '08:24:45pm', '01-05-2022', NULL, NULL),
(859, '127.0.0.1', '08:24:47pm', '01-05-2022', NULL, NULL),
(860, '127.0.0.1', '08:26:35pm', '01-05-2022', NULL, NULL),
(861, '127.0.0.1', '08:27:03pm', '01-05-2022', NULL, NULL),
(862, '127.0.0.1', '08:27:54pm', '01-05-2022', NULL, NULL),
(863, '127.0.0.1', '08:27:58pm', '01-05-2022', NULL, NULL);
INSERT INTO `visitors` (`id`, `ip_address`, `visit_time`, `visit_date`, `created_at`, `updated_at`) VALUES
(864, '127.0.0.1', '12:22:14pm', '02-05-2022', NULL, NULL),
(865, '127.0.0.1', '12:22:23pm', '02-05-2022', NULL, NULL),
(866, '127.0.0.1', '12:24:34pm', '02-05-2022', NULL, NULL),
(867, '127.0.0.1', '12:24:45pm', '02-05-2022', NULL, NULL),
(868, '127.0.0.1', '12:25:36pm', '02-05-2022', NULL, NULL),
(869, '127.0.0.1', '12:26:00pm', '02-05-2022', NULL, NULL),
(870, '127.0.0.1', '12:26:35pm', '02-05-2022', NULL, NULL),
(871, '127.0.0.1', '12:26:38pm', '02-05-2022', NULL, NULL),
(872, '127.0.0.1', '12:27:05pm', '02-05-2022', NULL, NULL),
(873, '127.0.0.1', '12:27:58pm', '02-05-2022', NULL, NULL),
(874, '127.0.0.1', '12:28:08pm', '02-05-2022', NULL, NULL),
(875, '127.0.0.1', '12:28:48pm', '02-05-2022', NULL, NULL),
(876, '127.0.0.1', '12:29:10pm', '02-05-2022', NULL, NULL),
(877, '127.0.0.1', '12:29:21pm', '02-05-2022', NULL, NULL),
(878, '127.0.0.1', '12:30:33pm', '02-05-2022', NULL, NULL),
(879, '127.0.0.1', '12:30:43pm', '02-05-2022', NULL, NULL),
(880, '127.0.0.1', '12:33:40pm', '02-05-2022', NULL, NULL),
(881, '127.0.0.1', '12:33:48pm', '02-05-2022', NULL, NULL),
(882, '127.0.0.1', '12:38:05pm', '02-05-2022', NULL, NULL),
(883, '127.0.0.1', '12:38:15pm', '02-05-2022', NULL, NULL),
(884, '127.0.0.1', '12:40:43pm', '02-05-2022', NULL, NULL),
(885, '127.0.0.1', '12:41:45pm', '02-05-2022', NULL, NULL),
(886, '127.0.0.1', '12:41:54pm', '02-05-2022', NULL, NULL),
(887, '127.0.0.1', '12:42:03pm', '02-05-2022', NULL, NULL),
(888, '127.0.0.1', '12:42:46pm', '02-05-2022', NULL, NULL),
(889, '127.0.0.1', '12:43:10pm', '02-05-2022', NULL, NULL),
(890, '127.0.0.1', '12:43:18pm', '02-05-2022', NULL, NULL),
(891, '127.0.0.1', '12:43:48pm', '02-05-2022', NULL, NULL),
(892, '127.0.0.1', '12:44:25pm', '02-05-2022', NULL, NULL),
(893, '127.0.0.1', '12:48:26pm', '02-05-2022', NULL, NULL),
(894, '127.0.0.1', '12:49:45pm', '02-05-2022', NULL, NULL),
(895, '127.0.0.1', '12:51:05pm', '02-05-2022', NULL, NULL),
(896, '127.0.0.1', '12:51:24pm', '02-05-2022', NULL, NULL),
(897, '127.0.0.1', '12:53:42pm', '02-05-2022', NULL, NULL),
(898, '127.0.0.1', '12:54:37pm', '02-05-2022', NULL, NULL),
(899, '127.0.0.1', '12:55:21pm', '02-05-2022', NULL, NULL),
(900, '127.0.0.1', '12:56:52pm', '02-05-2022', NULL, NULL),
(901, '127.0.0.1', '12:59:12pm', '02-05-2022', NULL, NULL),
(902, '127.0.0.1', '12:59:15pm', '02-05-2022', NULL, NULL),
(903, '127.0.0.1', '01:00:43pm', '02-05-2022', NULL, NULL),
(904, '127.0.0.1', '01:00:48pm', '02-05-2022', NULL, NULL),
(905, '127.0.0.1', '01:01:20pm', '02-05-2022', NULL, NULL),
(906, '127.0.0.1', '01:01:27pm', '02-05-2022', NULL, NULL),
(907, '127.0.0.1', '01:05:46pm', '02-05-2022', NULL, NULL),
(908, '127.0.0.1', '01:06:08pm', '02-05-2022', NULL, NULL),
(909, '127.0.0.1', '01:06:27pm', '02-05-2022', NULL, NULL),
(910, '127.0.0.1', '01:06:46pm', '02-05-2022', NULL, NULL),
(911, '127.0.0.1', '01:07:02pm', '02-05-2022', NULL, NULL),
(912, '127.0.0.1', '01:13:39pm', '02-05-2022', NULL, NULL),
(913, '127.0.0.1', '01:13:44pm', '02-05-2022', NULL, NULL),
(914, '127.0.0.1', '01:20:23pm', '02-05-2022', NULL, NULL),
(915, '127.0.0.1', '01:20:28pm', '02-05-2022', NULL, NULL),
(916, '127.0.0.1', '01:21:48pm', '02-05-2022', NULL, NULL),
(917, '127.0.0.1', '01:21:59pm', '02-05-2022', NULL, NULL),
(918, '127.0.0.1', '01:22:16pm', '02-05-2022', NULL, NULL),
(919, '127.0.0.1', '01:22:29pm', '02-05-2022', NULL, NULL),
(920, '127.0.0.1', '01:32:21pm', '02-05-2022', NULL, NULL),
(921, '127.0.0.1', '03:50:34pm', '02-05-2022', NULL, NULL),
(922, '127.0.0.1', '04:23:48pm', '02-05-2022', NULL, NULL),
(923, '127.0.0.1', '04:24:08pm', '02-05-2022', NULL, NULL),
(924, '127.0.0.1', '04:24:13pm', '02-05-2022', NULL, NULL),
(925, '127.0.0.1', '04:29:18pm', '02-05-2022', NULL, NULL),
(926, '127.0.0.1', '04:29:46pm', '02-05-2022', NULL, NULL),
(927, '127.0.0.1', '04:30:15pm', '02-05-2022', NULL, NULL),
(928, '127.0.0.1', '04:30:19pm', '02-05-2022', NULL, NULL),
(929, '127.0.0.1', '04:35:52pm', '02-05-2022', NULL, NULL),
(930, '127.0.0.1', '04:36:01pm', '02-05-2022', NULL, NULL),
(931, '127.0.0.1', '04:36:25pm', '02-05-2022', NULL, NULL),
(932, '127.0.0.1', '04:36:57pm', '02-05-2022', NULL, NULL),
(933, '94.128.206.185', '06:07:11pm', '02-05-2022', NULL, NULL),
(934, '94.128.206.185', '06:07:33pm', '02-05-2022', NULL, NULL),
(935, '94.128.206.185', '06:09:44pm', '02-05-2022', NULL, NULL),
(936, '94.128.206.185', '06:10:42pm', '02-05-2022', NULL, NULL),
(937, '94.128.206.185', '06:11:55pm', '02-05-2022', NULL, NULL),
(938, '94.128.206.185', '06:16:19pm', '02-05-2022', NULL, NULL),
(939, '94.128.206.185', '06:20:40pm', '02-05-2022', NULL, NULL),
(940, '94.128.206.185', '06:23:43pm', '02-05-2022', NULL, NULL),
(941, '94.128.222.7', '08:03:13pm', '02-05-2022', NULL, NULL),
(942, '94.128.222.7', '08:28:54pm', '02-05-2022', NULL, NULL),
(943, '94.128.222.7', '08:30:15pm', '02-05-2022', NULL, NULL),
(944, '94.128.222.7', '02:16:30pm', '03-05-2022', NULL, NULL),
(945, '94.128.222.7', '02:17:13pm', '03-05-2022', NULL, NULL),
(946, '37.231.250.175', '07:14:45pm', '03-05-2022', NULL, NULL),
(947, '37.231.250.175', '07:27:32pm', '03-05-2022', NULL, NULL),
(948, '37.231.250.175', '07:32:32pm', '03-05-2022', NULL, NULL),
(949, '37.231.250.175', '07:32:42pm', '03-05-2022', NULL, NULL),
(950, '37.231.250.175', '07:32:58pm', '03-05-2022', NULL, NULL),
(951, '37.231.250.175', '07:33:25pm', '03-05-2022', NULL, NULL),
(952, '37.231.250.175', '07:39:47pm', '03-05-2022', NULL, NULL),
(953, '37.231.250.175', '07:41:11pm', '03-05-2022', NULL, NULL),
(954, '37.231.250.175', '07:47:06pm', '03-05-2022', NULL, NULL),
(955, '37.231.250.175', '08:11:06pm', '03-05-2022', NULL, NULL),
(956, '37.231.250.175', '08:12:51pm', '03-05-2022', NULL, NULL),
(957, '37.231.250.175', '08:16:38pm', '03-05-2022', NULL, NULL),
(958, '94.128.210.52', '05:36:49pm', '05-05-2022', NULL, NULL),
(959, '94.128.210.52', '05:37:22pm', '05-05-2022', NULL, NULL),
(960, '94.128.210.52', '05:37:37pm', '05-05-2022', NULL, NULL),
(961, '94.128.210.52', '05:38:31pm', '05-05-2022', NULL, NULL),
(962, '94.128.210.52', '06:06:33pm', '05-05-2022', NULL, NULL),
(963, '94.128.210.52', '06:07:25pm', '05-05-2022', NULL, NULL),
(964, '94.128.210.52', '06:07:57pm', '05-05-2022', NULL, NULL),
(965, '94.128.210.52', '06:10:57pm', '05-05-2022', NULL, NULL),
(966, '94.128.210.52', '06:11:32pm', '05-05-2022', NULL, NULL),
(967, '94.128.210.52', '06:17:23pm', '05-05-2022', NULL, NULL),
(968, '94.128.210.52', '06:18:19pm', '05-05-2022', NULL, NULL),
(969, '94.128.210.52', '06:19:29pm', '05-05-2022', NULL, NULL),
(970, '94.128.210.52', '06:21:07pm', '05-05-2022', NULL, NULL),
(971, '94.128.210.52', '06:21:16pm', '05-05-2022', NULL, NULL),
(972, '94.128.210.52', '06:22:22pm', '05-05-2022', NULL, NULL),
(973, '94.128.210.52', '06:22:28pm', '05-05-2022', NULL, NULL),
(974, '94.128.210.52', '06:24:29pm', '05-05-2022', NULL, NULL),
(975, '94.128.210.52', '06:40:30pm', '05-05-2022', NULL, NULL),
(976, '94.128.210.52', '06:44:25pm', '05-05-2022', NULL, NULL),
(977, '94.128.210.52', '06:44:50pm', '05-05-2022', NULL, NULL),
(978, '94.128.210.52', '06:46:09pm', '05-05-2022', NULL, NULL),
(979, '94.128.210.52', '07:09:38pm', '05-05-2022', NULL, NULL),
(980, '94.128.210.52', '07:11:36pm', '05-05-2022', NULL, NULL),
(981, '94.128.210.52', '07:18:03pm', '05-05-2022', NULL, NULL),
(982, '94.128.210.52', '07:19:45pm', '05-05-2022', NULL, NULL),
(983, '94.128.210.52', '07:20:06pm', '05-05-2022', NULL, NULL),
(984, '94.128.210.52', '07:22:11pm', '05-05-2022', NULL, NULL),
(985, '94.128.210.52', '07:25:31pm', '05-05-2022', NULL, NULL),
(986, '94.128.210.52', '07:28:03pm', '05-05-2022', NULL, NULL),
(987, '94.128.210.52', '07:28:19pm', '05-05-2022', NULL, NULL),
(988, '94.128.210.52', '07:29:00pm', '05-05-2022', NULL, NULL),
(989, '94.128.210.52', '07:29:53pm', '05-05-2022', NULL, NULL),
(990, '94.128.210.52', '07:36:42pm', '05-05-2022', NULL, NULL),
(991, '94.128.210.52', '11:22:50am', '07-05-2022', NULL, NULL),
(992, '94.128.210.52', '12:02:01am', '10-05-2022', NULL, NULL),
(993, '94.128.210.52', '12:02:13am', '10-05-2022', NULL, NULL),
(994, '37.231.187.178', '12:32:01pm', '11-05-2022', NULL, NULL),
(995, '37.231.187.178', '12:32:05pm', '11-05-2022', NULL, NULL),
(996, '37.231.187.178', '12:32:44pm', '11-05-2022', NULL, NULL),
(997, '37.231.187.178', '12:33:15pm', '11-05-2022', NULL, NULL),
(998, '37.231.187.178', '12:34:23pm', '11-05-2022', NULL, NULL),
(999, '37.231.187.178', '12:34:43pm', '11-05-2022', NULL, NULL),
(1000, '37.231.187.178', '12:35:49pm', '11-05-2022', NULL, NULL),
(1001, '37.231.187.178', '12:36:47pm', '11-05-2022', NULL, NULL),
(1002, '37.231.187.178', '11:57:22am', '16-05-2022', NULL, NULL),
(1003, '94.128.221.211', '05:34:41pm', '19-05-2022', NULL, NULL),
(1004, '94.129.49.132', '12:16:07pm', '29-05-2022', NULL, NULL),
(1005, '94.129.68.14', '01:02:25pm', '30-05-2022', NULL, NULL),
(1006, '203.187.238.192', '11:30:18am', '06-06-2022', NULL, NULL),
(1007, '51.15.207.238', '02:29:41am', '05-09-2022', NULL, NULL),
(1008, '66.249.79.204', '10:49:12am', '23-10-2022', NULL, NULL),
(1009, '66.249.79.202', '03:28:38am', '24-10-2022', NULL, NULL),
(1010, '66.249.79.202', '02:31:39am', '08-11-2022', NULL, NULL),
(1011, '127.0.0.1', '02:09:26pm', '14-11-2022', NULL, NULL),
(1012, '127.0.0.1', '02:09:48pm', '14-11-2022', NULL, NULL),
(1013, '127.0.0.1', '02:10:09pm', '14-11-2022', NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cart_orders`
--
ALTER TABLE `cart_orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `favourites`
--
ALTER TABLE `favourites`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `home_sliders`
--
ALTER TABLE `home_sliders`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `oauth_access_tokens`
--
ALTER TABLE `oauth_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_access_tokens_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_auth_codes`
--
ALTER TABLE `oauth_auth_codes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_auth_codes_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_clients_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_refresh_tokens`
--
ALTER TABLE `oauth_refresh_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD PRIMARY KEY (`id`),
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `product_carts`
--
ALTER TABLE `product_carts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_details`
--
ALTER TABLE `product_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_lists`
--
ALTER TABLE `product_lists`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_reviews`
--
ALTER TABLE `product_reviews`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `site_infos`
--
ALTER TABLE `site_infos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subcategories`
--
ALTER TABLE `subcategories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `visitors`
--
ALTER TABLE `visitors`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `cart_orders`
--
ALTER TABLE `cart_orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `favourites`
--
ALTER TABLE `favourites`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `home_sliders`
--
ALTER TABLE `home_sliders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `notifications`
--
ALTER TABLE `notifications`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `password_resets`
--
ALTER TABLE `password_resets`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `product_carts`
--
ALTER TABLE `product_carts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `product_details`
--
ALTER TABLE `product_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `product_lists`
--
ALTER TABLE `product_lists`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=75;

--
-- AUTO_INCREMENT for table `product_reviews`
--
ALTER TABLE `product_reviews`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `site_infos`
--
ALTER TABLE `site_infos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `subcategories`
--
ALTER TABLE `subcategories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `visitors`
--
ALTER TABLE `visitors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1014;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
