-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- 主機： 127.0.0.1
-- 產生時間： 2023-05-29 15:15:06
-- 伺服器版本： 10.4.28-MariaDB
-- PHP 版本： 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 資料庫： `openshop`
--

-- --------------------------------------------------------

--
-- 資料表結構 `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- 資料表結構 `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- 資料表結構 `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- 傾印資料表的資料 `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add site', 7, 'add_site'),
(26, 'Can change site', 7, 'change_site'),
(27, 'Can delete site', 7, 'delete_site'),
(28, 'Can view site', 7, 'view_site'),
(29, 'Can add flat page', 8, 'add_flatpage'),
(30, 'Can change flat page', 8, 'change_flatpage'),
(31, 'Can delete flat page', 8, 'delete_flatpage'),
(32, 'Can view flat page', 8, 'view_flatpage'),
(33, 'Can add 菜单', 9, 'add_baykemenu'),
(34, 'Can change 菜单', 9, 'change_baykemenu'),
(35, 'Can delete 菜单', 9, 'delete_baykemenu'),
(36, 'Can view 菜单', 9, 'view_baykemenu'),
(37, 'Can add BaykeOrder', 10, 'add_baykeorder'),
(38, 'Can change BaykeOrder', 10, 'change_baykeorder'),
(39, 'Can delete BaykeOrder', 10, 'delete_baykeorder'),
(40, 'Can view BaykeOrder', 10, 'view_baykeorder'),
(41, 'Can add BaykeProductCategory', 11, 'add_baykeproductcategory'),
(42, 'Can change BaykeProductCategory', 11, 'change_baykeproductcategory'),
(43, 'Can delete BaykeProductCategory', 11, 'delete_baykeproductcategory'),
(44, 'Can view BaykeProductCategory', 11, 'view_baykeproductcategory'),
(45, 'Can add BaykeProductSpec', 12, 'add_baykeproductspec'),
(46, 'Can change BaykeProductSpec', 12, 'change_baykeproductspec'),
(47, 'Can delete BaykeProductSpec', 12, 'delete_baykeproductspec'),
(48, 'Can view BaykeProductSpec', 12, 'view_baykeproductspec'),
(49, 'Can add VerifyCode', 13, 'add_baykeverifycode'),
(50, 'Can change VerifyCode', 13, 'change_baykeverifycode'),
(51, 'Can delete VerifyCode', 13, 'delete_baykeverifycode'),
(52, 'Can view VerifyCode', 13, 'view_baykeverifycode'),
(53, 'Can add 余额明细', 14, 'add_baykeuserbalancelog'),
(54, 'Can change 余额明细', 14, 'change_baykeuserbalancelog'),
(55, 'Can delete 余额明细', 14, 'delete_baykeuserbalancelog'),
(56, 'Can view 余额明细', 14, 'view_baykeuserbalancelog'),
(57, 'Can add BaykeUser', 15, 'add_baykeuser'),
(58, 'Can change BaykeUser', 15, 'change_baykeuser'),
(59, 'Can delete BaykeUser', 15, 'delete_baykeuser'),
(60, 'Can view BaykeUser', 15, 'view_baykeuser'),
(61, 'Can add 富文本编辑器图片上传', 16, 'add_baykeupload'),
(62, 'Can change 富文本编辑器图片上传', 16, 'change_baykeupload'),
(63, 'Can delete 富文本编辑器图片上传', 16, 'delete_baykeupload'),
(64, 'Can view 富文本编辑器图片上传', 16, 'view_baykeupload'),
(65, 'Can add BaykeSite', 17, 'add_baykesite'),
(66, 'Can change BaykeSite', 17, 'change_baykesite'),
(67, 'Can delete BaykeSite', 17, 'delete_baykesite'),
(68, 'Can view BaykeSite', 17, 'view_baykesite'),
(69, 'Can add BaykeSpu', 18, 'add_baykeproductspu'),
(70, 'Can change BaykeSpu', 18, 'change_baykeproductspu'),
(71, 'Can delete BaykeSpu', 18, 'delete_baykeproductspu'),
(72, 'Can view BaykeSpu', 18, 'view_baykeproductspu'),
(73, 'Can add BaykeProductSpecOption', 19, 'add_baykeproductspecoption'),
(74, 'Can change BaykeProductSpecOption', 19, 'change_baykeproductspecoption'),
(75, 'Can delete BaykeProductSpecOption', 19, 'delete_baykeproductspecoption'),
(76, 'Can view BaykeProductSpecOption', 19, 'view_baykeproductspecoption'),
(77, 'Can add BaykeProductSKU', 20, 'add_baykeproductsku'),
(78, 'Can change BaykeProductSKU', 20, 'change_baykeproductsku'),
(79, 'Can delete BaykeProductSKU', 20, 'delete_baykeproductsku'),
(80, 'Can view BaykeProductSKU', 20, 'view_baykeproductsku'),
(81, 'Can add BaykeProductBanner', 21, 'add_baykeproductbanner'),
(82, 'Can change BaykeProductBanner', 21, 'change_baykeproductbanner'),
(83, 'Can delete BaykeProductBanner', 21, 'delete_baykeproductbanner'),
(84, 'Can view BaykeProductBanner', 21, 'view_baykeproductbanner'),
(85, 'Can add 菜单权限', 22, 'add_baykepermission'),
(86, 'Can change 菜单权限', 22, 'change_baykepermission'),
(87, 'Can delete 菜单权限', 22, 'delete_baykepermission'),
(88, 'Can view 菜单权限', 22, 'view_baykepermission'),
(89, 'Can add BaykeOrderSKU', 23, 'add_baykeordersku'),
(90, 'Can change BaykeOrderSKU', 23, 'change_baykeordersku'),
(91, 'Can delete BaykeOrderSKU', 23, 'delete_baykeordersku'),
(92, 'Can view BaykeOrderSKU', 23, 'view_baykeordersku'),
(93, 'Can add 商品评价', 24, 'add_baykeordercomments'),
(94, 'Can change 商品评价', 24, 'change_baykeordercomments'),
(95, 'Can delete 商品评价', 24, 'delete_baykeordercomments'),
(96, 'Can view 商品评价', 24, 'view_baykeordercomments'),
(97, 'Can add BaykeCart', 25, 'add_baykecart'),
(98, 'Can change BaykeCart', 25, 'change_baykecart'),
(99, 'Can delete BaykeCart', 25, 'delete_baykecart'),
(100, 'Can view BaykeCart', 25, 'view_baykecart'),
(101, 'Can add 轮播图', 26, 'add_baykebanner'),
(102, 'Can change 轮播图', 26, 'change_baykebanner'),
(103, 'Can delete 轮播图', 26, 'delete_baykebanner'),
(104, 'Can view 轮播图', 26, 'view_baykebanner'),
(105, 'Can add BaykeArticleTag', 27, 'add_baykearticletag'),
(106, 'Can change BaykeArticleTag', 27, 'change_baykearticletag'),
(107, 'Can delete BaykeArticleTag', 27, 'delete_baykearticletag'),
(108, 'Can view BaykeArticleTag', 27, 'view_baykearticletag'),
(109, 'Can add BaykeArticleCategory', 28, 'add_baykearticlecategory'),
(110, 'Can change BaykeArticleCategory', 28, 'change_baykearticlecategory'),
(111, 'Can delete BaykeArticleCategory', 28, 'delete_baykearticlecategory'),
(112, 'Can view BaykeArticleCategory', 28, 'view_baykearticlecategory'),
(113, 'Can add BaykeArticle', 29, 'add_baykearticle'),
(114, 'Can change BaykeArticle', 29, 'change_baykearticle'),
(115, 'Can delete BaykeArticle', 29, 'delete_baykearticle'),
(116, 'Can view BaykeArticle', 29, 'view_baykearticle'),
(117, 'Can add 收货地址', 30, 'add_baykeaddress'),
(118, 'Can change 收货地址', 30, 'change_baykeaddress'),
(119, 'Can delete 收货地址', 30, 'delete_baykeaddress'),
(120, 'Can view 收货地址', 30, 'view_baykeaddress');

-- --------------------------------------------------------

--
-- 資料表結構 `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- 傾印資料表的資料 `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$600000$JkY2SsR7XMW5Sv9Af2aThx$9a5GIn1SB9m4DD6uxOVVJREALRAVpwPmpgUG/KNw2Io=', '2023-05-29 12:52:50.359137', 1, 'poyu', '', '', 'bruce920309@gmail.com', 1, 1, '2023-05-27 15:20:30.482076');

-- --------------------------------------------------------

--
-- 資料表結構 `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- 資料表結構 `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- 資料表結構 `baykeshop_baykeaddress`
--

CREATE TABLE `baykeshop_baykeaddress` (
  `id` bigint(20) NOT NULL,
  `add_date` datetime(6) NOT NULL,
  `pub_date` datetime(6) NOT NULL,
  `is_del` tinyint(1) NOT NULL,
  `name` varchar(50) NOT NULL,
  `phone` varchar(11) NOT NULL,
  `email` varchar(50) NOT NULL,
  `province` varchar(150) NOT NULL,
  `city` varchar(150) NOT NULL,
  `county` varchar(150) NOT NULL,
  `address` varchar(150) NOT NULL,
  `is_default` tinyint(1) NOT NULL,
  `owner_id` int(11) NOT NULL,
  `site_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- 資料表結構 `baykeshop_baykearticle`
--

CREATE TABLE `baykeshop_baykearticle` (
  `id` bigint(20) NOT NULL,
  `add_date` datetime(6) NOT NULL,
  `pub_date` datetime(6) NOT NULL,
  `is_del` tinyint(1) NOT NULL,
  `title` varchar(100) NOT NULL,
  `desc` varchar(150) NOT NULL,
  `keywords` varchar(150) NOT NULL,
  `content` longtext NOT NULL,
  `category_id` bigint(20) NOT NULL,
  `site_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- 傾印資料表的資料 `baykeshop_baykearticle`
--

INSERT INTO `baykeshop_baykearticle` (`id`, `add_date`, `pub_date`, `is_del`, `title`, `desc`, `keywords`, `content`, `category_id`, `site_id`) VALUES
(3, '2023-05-28 14:27:46.344357', '2023-05-29 12:53:24.785837', 0, '【推しの子】 7', '\r\n\r\n', '', '<p><img src=\"../../../../media/upload/35816481f40a4648805dad496ccde654.png\" alt=\"\" width=\"1767\" height=\"1254\"></p>\r\n<p><img src=\"../../../../media/upload/39320ccc6af04ea0a0b1498f7faec59b.png\" alt=\"\" width=\"1765\" height=\"1251\"></p>\r\n<p><img src=\"../../../../media/upload/21f0cc7da0a84daba1f242e27bafeb4b.png\" alt=\"\" width=\"1765\" height=\"1246\"></p>', 2, NULL),
(4, '2023-05-29 13:05:16.657996', '2023-05-29 13:05:16.657996', 0, '【心得】第40話前後一些有趣的細節(有雷)', '首先關於阿庫雅的真命天女是誰 漫畫雖然演到目前已經看出來了\r\n但實際上在漫畫第40話前後就已經揭露了\r\n&nbsp;\r\n很多人一定以為是露比對MEM說[老哥只有對有馬才會像以前那樣]那句話 但我的觀點實際上是在穿著上\r\n\r\n阿庫雅身上穿的衣服寫著[最喜歡了]的字樣的衣服', '', '<div><span style=\"color: #0f0f0f;\"><span style=\"font-size: small;\"><span>首先關於阿庫雅的真命天女是誰 漫畫雖然演到目前已經看出來了</span></span></span><span style=\"color: #0f0f0f;\"><span style=\"font-size: small;\"><span><br></span></span></span></div>\r\n<div><span style=\"color: #0f0f0f;\"><span style=\"font-size: small;\"><span>但實際上在漫畫第40話前後就已經揭露了</span></span></span></div>\r\n<div><span style=\"color: #0f0f0f;\"><span style=\"font-size: small;\">&nbsp;</span></span></div>\r\n<div><span style=\"color: #0f0f0f;\"><span style=\"font-size: small;\">很多人一定以為是露比對MEM說[老哥只有對有馬才會像以前那樣]那句話 但我的觀點實際上是在穿著上</span></span></div>\r\n<div><span style=\"color: #0f0f0f;\"><span style=\"font-size: small;\"><a class=\"photoswipe-image\" href=\"https://truth.bahamut.com.tw/s01/202305/4077a87bf1c09853d30d984c8dcfc98a.JPG\"><img class=\" lazyloaded\" src=\"https://truth.bahamut.com.tw/s01/202305/4077a87bf1c09853d30d984c8dcfc98a.JPG\" srcset=\"https://truth.bahamut.com.tw/s01/202305/4077a87bf1c09853d30d984c8dcfc98a.JPG?w=1000 1x,https://truth.bahamut.com.tw/s01/202305/4077a87bf1c09853d30d984c8dcfc98a.JPG 2x\" data-src=\"https://truth.bahamut.com.tw/s01/202305/4077a87bf1c09853d30d984c8dcfc98a.JPG\" data-srcset=\"https://truth.bahamut.com.tw/s01/202305/4077a87bf1c09853d30d984c8dcfc98a.JPG?w=1000 1x,https://truth.bahamut.com.tw/s01/202305/4077a87bf1c09853d30d984c8dcfc98a.JPG 2x\"></a></span></span></div>\r\n<div><span style=\"color: #0f0f0f;\"><span style=\"font-size: small;\">阿庫雅身上穿的衣服寫著[最喜歡了]的字樣的衣服同時有個做出東方仗助JOJO立的人影</span></span></div>\r\n<div><span style=\"color: #0f0f0f;\"><span style=\"font-size: small;\">&nbsp;</span></span></div>\r\n<div><span style=\"color: #0f0f0f;\"><span style=\"font-size: small;\">這邊[最喜歡了]的字樣不用說是什麼意思</span></span></div>\r\n<div><span style=\"color: #0f0f0f;\"><span style=\"font-size: small;\">&nbsp;</span></span></div>\r\n<div><span style=\"color: #0f0f0f;\"><span style=\"font-size: small;\">另外東方仗助JOJO立的人影代表的意思實在很有趣</span></span></div>\r\n<div><span style=\"color: #0f0f0f;\"><span style=\"font-size: small;\">&nbsp;</span></span></div>\r\n<div><span style=\"color: #0f0f0f;\"><span style=\"font-size: small;\">說到仗助就不能不提他跟[變身]系列的網路梗圖<a class=\"photoswipe-image\" href=\"https://truth.bahamut.com.tw/s01/202305/3348c35b6bb442fbab4ee4521cbf190d.JPG\"><img class=\" lazyloaded\" src=\"https://truth.bahamut.com.tw/s01/202305/3348c35b6bb442fbab4ee4521cbf190d.JPG\" srcset=\"https://truth.bahamut.com.tw/s01/202305/3348c35b6bb442fbab4ee4521cbf190d.JPG?w=1000 1x,https://truth.bahamut.com.tw/s01/202305/3348c35b6bb442fbab4ee4521cbf190d.JPG 2x\" data-src=\"https://truth.bahamut.com.tw/s01/202305/3348c35b6bb442fbab4ee4521cbf190d.JPG\" data-srcset=\"https://truth.bahamut.com.tw/s01/202305/3348c35b6bb442fbab4ee4521cbf190d.JPG?w=1000 1x,https://truth.bahamut.com.tw/s01/202305/3348c35b6bb442fbab4ee4521cbf190d.JPG 2x\"></a>甚至新堂本人也轉發了這圖片</span></span></div>\r\n<div><span style=\"color: #0f0f0f;\"><span style=\"font-size: small;\">&nbsp;</span></span></div>\r\n<div><span style=\"color: #0f0f0f;\"><span style=\"font-size: small;\">到</span></span><span style=\"font-size: small;\"><span style=\"color: #0f0f0f;\">底是赤坂在暗地裡表示後續舞台劇時阿庫雅的心裡話</span></span></div>\r\n<div><span style=\"font-size: small;\"><span style=\"color: #0f0f0f;\">[希望機械降神復活小愛]</span></span></div>\r\n<div><span style=\"font-size: small;\"><span style=\"color: #0f0f0f;\">&nbsp;</span></span></div>\r\n<div><span style=\"font-size: small;\"><span style=\"color: #0f0f0f;\">還是單純的借用那個類似遮臉的動作來表達掩飾內心的意思?</span></span></div>\r\n<div><span style=\"font-size: small;\"><span style=\"color: #0f0f0f;\">&nbsp;</span></span></div>\r\n<div><span style=\"font-size: small;\"><span style=\"color: #0f0f0f;\">抑或是兩者都有呢?</span></span></div>\r\n<div><span style=\"font-size: small;\"><span style=\"color: #0f0f0f;\">&nbsp;</span></span></div>\r\n<div><span style=\"font-size: small;\"><span style=\"color: #0f0f0f;\">另外整個LIVE篇幾乎都是在各方面表露出阿庫亞的真命天女就是有馬</span></span></div>\r\n<div><span style=\"font-size: small;\"><span style=\"color: #0f0f0f;\">&nbsp;</span></span></div>\r\n<div><span style=\"font-size: small;\"><span style=\"color: #0f0f0f;\">例</span></span><span style=\"color: #0f0f0f;\"><span style=\"font-size: small;\">如面對茜的告白 阿庫亞首先想到的是找有馬翹課去整理心情</span></span></div>\r\n<div><span style=\"color: #0f0f0f;\"><span style=\"font-size: small;\">&nbsp;</span></span></div>\r\n<div><span style=\"color: #0f0f0f;\"><span style=\"font-size: small;\">在面對15日練習因為跟茜告白而生氣的有馬</span></span></div>\r\n<div><span style=\"color: #0f0f0f;\"><span style=\"font-size: small;\">&nbsp;</span></span></div>\r\n<div><span style=\"color: #0f0f0f;\"><span style=\"font-size: small;\">阿庫亞也對啾啾仔坦露自己其實很脆弱</span></span></div>\r\n<div><span style=\"color: #0f0f0f;\"><span style=\"font-size: small;\">&nbsp;</span></span></div>\r\n<div><span style=\"color: #0f0f0f;\"><span style=\"font-size: small;\">這波是青梅竹馬戰勝天降之物的勝利!</span></span></div>', 3, NULL);

-- --------------------------------------------------------

--
-- 資料表結構 `baykeshop_baykearticlecategory`
--

CREATE TABLE `baykeshop_baykearticlecategory` (
  `id` bigint(20) NOT NULL,
  `add_date` datetime(6) NOT NULL,
  `pub_date` datetime(6) NOT NULL,
  `is_del` tinyint(1) NOT NULL,
  `name` varchar(50) NOT NULL,
  `icon` varchar(50) NOT NULL,
  `desc` varchar(150) NOT NULL,
  `keywords` varchar(150) NOT NULL,
  `site_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- 傾印資料表的資料 `baykeshop_baykearticlecategory`
--

INSERT INTO `baykeshop_baykearticlecategory` (`id`, `add_date`, `pub_date`, `is_del`, `name`, `icon`, `desc`, `keywords`, `site_id`) VALUES
(2, '2023-05-28 14:14:38.784421', '2023-05-28 14:14:38.784421', 0, '試閱', '', '', '', NULL),
(3, '2023-05-29 13:04:28.356969', '2023-05-29 13:04:28.356969', 0, '心得', '', '', '', NULL);

-- --------------------------------------------------------

--
-- 資料表結構 `baykeshop_baykearticletag`
--

CREATE TABLE `baykeshop_baykearticletag` (
  `id` bigint(20) NOT NULL,
  `add_date` datetime(6) NOT NULL,
  `pub_date` datetime(6) NOT NULL,
  `is_del` tinyint(1) NOT NULL,
  `name` varchar(50) NOT NULL,
  `site_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- 傾印資料表的資料 `baykeshop_baykearticletag`
--

INSERT INTO `baykeshop_baykearticletag` (`id`, `add_date`, `pub_date`, `is_del`, `name`, `site_id`) VALUES
(1, '2023-05-15 12:19:55.828000', '2023-05-15 12:19:55.828000', 0, '購物', NULL),
(2, '2023-05-29 12:53:04.437920', '2023-05-29 12:53:04.437920', 0, '試閱', NULL),
(3, '2023-05-29 13:04:19.448320', '2023-05-29 13:04:19.449318', 0, '心得', NULL),
(4, '2023-05-29 13:05:11.019051', '2023-05-29 13:05:11.019051', 0, '推しの子', NULL);

-- --------------------------------------------------------

--
-- 資料表結構 `baykeshop_baykearticle_tags`
--

CREATE TABLE `baykeshop_baykearticle_tags` (
  `id` bigint(20) NOT NULL,
  `baykearticle_id` bigint(20) NOT NULL,
  `baykearticletag_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- 傾印資料表的資料 `baykeshop_baykearticle_tags`
--

INSERT INTO `baykeshop_baykearticle_tags` (`id`, `baykearticle_id`, `baykearticletag_id`) VALUES
(4, 3, 2),
(5, 4, 4);

-- --------------------------------------------------------

--
-- 資料表結構 `baykeshop_baykebanner`
--

CREATE TABLE `baykeshop_baykebanner` (
  `id` bigint(20) NOT NULL,
  `add_date` datetime(6) NOT NULL,
  `pub_date` datetime(6) NOT NULL,
  `is_del` tinyint(1) NOT NULL,
  `img` varchar(200) NOT NULL,
  `desc` varchar(150) NOT NULL,
  `place` varchar(50) DEFAULT NULL,
  `target_url` varchar(150) NOT NULL,
  `sort` smallint(5) UNSIGNED NOT NULL CHECK (`sort` >= 0),
  `site_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- 傾印資料表的資料 `baykeshop_baykebanner`
--

INSERT INTO `baykeshop_baykebanner` (`id`, `add_date`, `pub_date`, `is_del`, `img`, `desc`, `place`, `target_url`, `sort`, `site_id`) VALUES
(5, '2023-05-28 13:34:25.073740', '2023-05-28 14:05:45.336239', 0, 'upload/openshop_logo.png', '', NULL, '', 1, NULL);

-- --------------------------------------------------------

--
-- 資料表結構 `baykeshop_baykecart`
--

CREATE TABLE `baykeshop_baykecart` (
  `id` bigint(20) NOT NULL,
  `add_date` datetime(6) NOT NULL,
  `pub_date` datetime(6) NOT NULL,
  `is_del` tinyint(1) NOT NULL,
  `count` int(10) UNSIGNED NOT NULL CHECK (`count` >= 0),
  `owner_id` int(11) NOT NULL,
  `site_id` int(11) DEFAULT NULL,
  `sku_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- 資料表結構 `baykeshop_baykemenu`
--

CREATE TABLE `baykeshop_baykemenu` (
  `id` bigint(20) NOT NULL,
  `add_date` datetime(6) NOT NULL,
  `pub_date` datetime(6) NOT NULL,
  `is_del` tinyint(1) NOT NULL,
  `name` varchar(50) NOT NULL,
  `icon` varchar(50) NOT NULL,
  `desc` varchar(150) NOT NULL,
  `keywords` varchar(150) NOT NULL,
  `sort` smallint(5) UNSIGNED NOT NULL CHECK (`sort` >= 0),
  `site_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- 傾印資料表的資料 `baykeshop_baykemenu`
--

INSERT INTO `baykeshop_baykemenu` (`id`, `add_date`, `pub_date`, `is_del`, `name`, `icon`, `desc`, `keywords`, `sort`, `site_id`) VALUES
(1, '2023-05-27 15:21:28.588681', '2023-05-27 15:21:28.588681', 0, '订单', '', '', '', 3, NULL),
(2, '2023-05-27 15:21:28.600990', '2023-05-27 15:21:28.600990', 0, '商品', '', '', '', 4, NULL),
(3, '2023-05-27 15:21:28.634863', '2023-05-27 15:21:28.634863', 0, '认证和授权', '', '', '', 1, NULL),
(4, '2023-05-27 15:21:28.658478', '2023-05-27 15:21:28.658478', 0, '内容', '', '', '', 2, NULL);

-- --------------------------------------------------------

--
-- 資料表結構 `baykeshop_baykeorder`
--

CREATE TABLE `baykeshop_baykeorder` (
  `id` bigint(20) NOT NULL,
  `add_date` datetime(6) NOT NULL,
  `pub_date` datetime(6) NOT NULL,
  `is_del` tinyint(1) NOT NULL,
  `order_sn` varchar(32) NOT NULL,
  `trade_sn` varchar(64) DEFAULT NULL,
  `pay_status` int(11) NOT NULL,
  `pay_method` int(11) DEFAULT NULL,
  `total_amount` decimal(12,2) NOT NULL,
  `order_mark` varchar(100) NOT NULL,
  `name` varchar(50) NOT NULL,
  `phone` varchar(11) NOT NULL,
  `email` varchar(50) NOT NULL,
  `address` varchar(200) NOT NULL,
  `pay_time` datetime(6) DEFAULT NULL,
  `owner_id` int(11) NOT NULL,
  `site_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- 資料表結構 `baykeshop_baykeordercomments`
--

CREATE TABLE `baykeshop_baykeordercomments` (
  `id` bigint(20) NOT NULL,
  `add_date` datetime(6) NOT NULL,
  `pub_date` datetime(6) NOT NULL,
  `is_del` tinyint(1) NOT NULL,
  `object_id` int(10) UNSIGNED DEFAULT NULL CHECK (`object_id` >= 0),
  `tag` varchar(80) DEFAULT NULL,
  `content` varchar(200) NOT NULL,
  `comment_choices` smallint(5) UNSIGNED NOT NULL CHECK (`comment_choices` >= 0),
  `content_type_id` int(11) NOT NULL,
  `owner_id` int(11) NOT NULL,
  `site_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- 資料表結構 `baykeshop_baykeordersku`
--

CREATE TABLE `baykeshop_baykeordersku` (
  `id` bigint(20) NOT NULL,
  `add_date` datetime(6) NOT NULL,
  `pub_date` datetime(6) NOT NULL,
  `is_del` tinyint(1) NOT NULL,
  `title` varchar(100) NOT NULL,
  `options` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`options`)),
  `price` decimal(8,2) NOT NULL,
  `content` longtext NOT NULL,
  `count` int(11) NOT NULL,
  `is_commented` tinyint(1) NOT NULL,
  `order_id` bigint(20) NOT NULL,
  `site_id` int(11) DEFAULT NULL,
  `sku_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- 資料表結構 `baykeshop_baykepermission`
--

CREATE TABLE `baykeshop_baykepermission` (
  `id` bigint(20) NOT NULL,
  `add_date` datetime(6) NOT NULL,
  `pub_date` datetime(6) NOT NULL,
  `is_del` tinyint(1) NOT NULL,
  `name` varchar(50) NOT NULL,
  `icon` varchar(50) NOT NULL,
  `desc` varchar(150) NOT NULL,
  `keywords` varchar(150) NOT NULL,
  `sort` smallint(5) UNSIGNED NOT NULL CHECK (`sort` >= 0),
  `is_show` tinyint(1) NOT NULL,
  `menus_id` bigint(20) NOT NULL,
  `permission_id` int(11) DEFAULT NULL,
  `site_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- 傾印資料表的資料 `baykeshop_baykepermission`
--

INSERT INTO `baykeshop_baykepermission` (`id`, `add_date`, `pub_date`, `is_del`, `name`, `icon`, `desc`, `keywords`, `sort`, `is_show`, `menus_id`, `permission_id`, `site_id`) VALUES
(1, '2023-05-27 15:21:28.595666', '2023-05-27 15:21:28.595666', 0, '订单管理', '', '', '', 1, 1, 1, 40, NULL),
(2, '2023-05-27 15:21:28.609691', '2023-05-27 15:21:28.609691', 0, '商品分类', '', '', '', 1, 1, 2, 44, NULL),
(3, '2023-05-27 15:21:28.618877', '2023-05-27 15:21:28.618877', 0, '商品规格', '', '', '', 1, 1, 2, 48, NULL),
(4, '2023-05-27 15:21:28.624375', '2023-05-27 15:21:28.624375', 0, '商品管理', '', '', '', 1, 1, 2, 72, NULL),
(5, '2023-05-27 15:21:28.629873', '2023-05-27 15:21:28.629873', 0, '轮播图', '', '', '', 1, 1, 2, 104, NULL),
(6, '2023-05-27 15:21:28.639439', '2023-05-27 15:21:28.639439', 0, '组', '', '', '', 1, 1, 3, 12, NULL),
(7, '2023-05-27 15:21:28.644427', '2023-05-27 15:21:28.644427', 0, '用户', '', '', '', 1, 1, 3, 16, NULL),
(8, '2023-05-27 15:21:28.649976', '2023-05-27 15:21:28.649976', 0, '菜单', '', '', '', 1, 1, 3, 36, NULL),
(9, '2023-05-27 15:21:28.654965', '2023-05-27 15:21:28.654965', 0, '日志', '', '', '', 1, 1, 3, 4, NULL),
(10, '2023-05-27 15:21:28.663779', '2023-05-27 15:21:28.663779', 0, '文章分类', '', '', '', 1, 1, 4, 112, NULL),
(11, '2023-05-27 15:21:28.668810', '2023-05-27 15:21:28.668810', 0, '内容管理', '', '', '', 1, 1, 4, 116, NULL),
(12, '2023-05-27 15:21:28.673800', '2023-05-27 15:21:28.674796', 0, '单页管理', '', '', '', 1, 1, 4, 32, NULL),
(13, '2023-05-27 15:21:28.679674', '2023-05-27 15:21:28.679674', 0, '站点', '', '', '', 1, 1, 4, 28, NULL);

-- --------------------------------------------------------

--
-- 資料表結構 `baykeshop_baykeproductbanner`
--

CREATE TABLE `baykeshop_baykeproductbanner` (
  `id` bigint(20) NOT NULL,
  `add_date` datetime(6) NOT NULL,
  `pub_date` datetime(6) NOT NULL,
  `is_del` tinyint(1) NOT NULL,
  `img` varchar(200) NOT NULL,
  `desc` varchar(150) NOT NULL,
  `site_id` int(11) DEFAULT NULL,
  `spu_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- 傾印資料表的資料 `baykeshop_baykeproductbanner`
--

INSERT INTO `baykeshop_baykeproductbanner` (`id`, `add_date`, `pub_date`, `is_del`, `img`, `desc`, `site_id`, `spu_id`) VALUES
(7, '2023-05-28 13:54:59.733881', '2023-05-28 13:54:59.733881', 0, 'upload/comic1.jpg', '', NULL, 4),
(8, '2023-05-28 13:54:59.735876', '2023-05-28 13:54:59.735876', 0, 'upload/comic1_Ymagzxt.jpg', '', NULL, 4),
(9, '2023-05-28 14:08:41.258124', '2023-05-28 14:08:41.258124', 0, 'upload/comic2.jpg', '', NULL, 5),
(10, '2023-05-28 14:08:41.286638', '2023-05-28 14:08:41.286638', 0, 'upload/comic2_g85kSvD.jpg', '', NULL, 5),
(11, '2023-05-28 14:10:30.517428', '2023-05-28 14:10:30.517428', 0, 'upload/comic3.jpg', '', NULL, 6),
(12, '2023-05-28 14:10:30.518426', '2023-05-28 14:10:30.518426', 0, 'upload/comic3_5su8q9W.jpg', '', NULL, 6),
(13, '2023-05-28 14:17:30.590181', '2023-05-28 14:17:30.590181', 0, 'upload/comic4.jpg', '', NULL, 7),
(14, '2023-05-28 14:17:30.595677', '2023-05-28 14:17:30.595677', 0, 'upload/comic4_wks6qKl.jpg', '', NULL, 7),
(15, '2023-05-28 14:19:58.980935', '2023-05-28 14:19:58.980935', 0, 'upload/comic5.jpg', '', NULL, 8),
(16, '2023-05-28 14:19:59.007686', '2023-05-28 14:19:59.007686', 0, 'upload/comic5_wpPSQS4.jpg', '', NULL, 8);

-- --------------------------------------------------------

--
-- 資料表結構 `baykeshop_baykeproductcategory`
--

CREATE TABLE `baykeshop_baykeproductcategory` (
  `id` bigint(20) NOT NULL,
  `add_date` datetime(6) NOT NULL,
  `pub_date` datetime(6) NOT NULL,
  `is_del` tinyint(1) NOT NULL,
  `name` varchar(50) NOT NULL,
  `icon` varchar(50) NOT NULL,
  `desc` varchar(150) NOT NULL,
  `keywords` varchar(150) NOT NULL,
  `pic` varchar(200) NOT NULL,
  `is_nav` tinyint(1) NOT NULL,
  `parent_id` bigint(20) DEFAULT NULL,
  `site_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- 傾印資料表的資料 `baykeshop_baykeproductcategory`
--

INSERT INTO `baykeshop_baykeproductcategory` (`id`, `add_date`, `pub_date`, `is_del`, `name`, `icon`, `desc`, `keywords`, `pic`, `is_nav`, `parent_id`, `site_id`) VALUES
(8, '2023-05-28 13:41:33.564163', '2023-05-28 14:21:30.331187', 0, '漫畫', '', '男孩・青年漫畫、少女・女性漫畫、Webtoon、有聲漫畫、輕小說', '', 'product/cate/comic_LEPR27c.png', 1, NULL, NULL),
(9, '2023-05-28 13:41:33.564163', '2023-05-28 13:41:33.564163', 0, '綜合', '', '', '', 'default/cate.png', 1, 8, NULL),
(10, '2023-05-28 13:41:33.565159', '2023-05-28 13:41:33.565159', 0, '青年 / 少年漫畫', '', '', '', 'default/cate.png', 1, 8, NULL),
(11, '2023-05-28 13:41:33.570146', '2023-05-28 13:41:33.570146', 0, '少女 / 女性漫畫', '', '', '', 'default/cate.png', 1, 8, NULL),
(12, '2023-05-28 13:41:33.570146', '2023-05-28 13:41:33.570146', 0, '輕小說', '', '', '', 'default/cate.png', 1, 8, NULL),
(13, '2023-05-28 13:41:33.571143', '2023-05-28 13:41:33.571143', 0, 'Teens Love', '', '', '', 'default/cate.png', 1, 8, NULL),
(14, '2023-05-28 13:41:33.571143', '2023-05-28 13:41:33.571143', 0, 'BL', '', '', '', 'default/cate.png', 1, 8, NULL),
(15, '2023-05-28 13:41:33.571647', '2023-05-28 13:41:33.571647', 0, 'Webtoon', '', '', '', 'default/cate.png', 1, 8, NULL),
(16, '2023-05-28 13:41:33.571647', '2023-05-28 13:41:33.571647', 0, '聲音 / 音樂', '', '', '', 'default/cate.png', 1, 8, NULL);

-- --------------------------------------------------------

--
-- 資料表結構 `baykeshop_baykeproductsku`
--

CREATE TABLE `baykeshop_baykeproductsku` (
  `id` bigint(20) NOT NULL,
  `add_date` datetime(6) NOT NULL,
  `pub_date` datetime(6) NOT NULL,
  `is_del` tinyint(1) NOT NULL,
  `pic` varchar(200) NOT NULL,
  `price` decimal(8,2) NOT NULL,
  `cost_price` decimal(10,2) NOT NULL,
  `stock` int(10) UNSIGNED NOT NULL CHECK (`stock` >= 0),
  `sales` int(10) UNSIGNED NOT NULL CHECK (`sales` >= 0),
  `item_id` varchar(50) DEFAULT NULL,
  `weight` smallint(5) UNSIGNED NOT NULL CHECK (`weight` >= 0),
  `volume` smallint(5) UNSIGNED NOT NULL CHECK (`volume` >= 0),
  `is_release` tinyint(1) NOT NULL,
  `site_id` int(11) DEFAULT NULL,
  `spu_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- 傾印資料表的資料 `baykeshop_baykeproductsku`
--

INSERT INTO `baykeshop_baykeproductsku` (`id`, `add_date`, `pub_date`, `is_del`, `pic`, `price`, `cost_price`, `stock`, `sales`, `item_id`, `weight`, `volume`, `is_release`, `site_id`, `spu_id`) VALUES
(5, '2023-05-28 13:54:59.736874', '2023-05-28 13:54:59.736874', 0, 'product/2023/comic1.jpg', 50.00, 50.00, 99, 0, '1', 0, 0, 1, NULL, 4),
(6, '2023-05-28 14:08:41.287635', '2023-05-28 14:08:41.287635', 0, 'product/2023/comic2.jpg', 50.00, 50.00, 99, 0, '2', 0, 0, 1, NULL, 5),
(7, '2023-05-28 14:10:30.519423', '2023-05-28 14:10:30.519423', 0, 'product/2023/comic3.jpg', 50.00, 50.00, 99, 0, '3', 0, 0, 1, NULL, 6),
(8, '2023-05-28 14:17:30.596674', '2023-05-28 14:17:30.596674', 0, 'product/2023/comic4.jpg', 50.00, 50.00, 99, 0, '4', 0, 0, 1, NULL, 7),
(9, '2023-05-28 14:19:59.008683', '2023-05-28 14:19:59.008683', 0, 'product/2023/comic5.jpg', 50.00, 50.00, 99, 0, '5', 0, 0, 1, NULL, 8);

-- --------------------------------------------------------

--
-- 資料表結構 `baykeshop_baykeproductsku_options`
--

CREATE TABLE `baykeshop_baykeproductsku_options` (
  `id` bigint(20) NOT NULL,
  `baykeproductsku_id` bigint(20) NOT NULL,
  `baykeproductspecoption_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- 資料表結構 `baykeshop_baykeproductspec`
--

CREATE TABLE `baykeshop_baykeproductspec` (
  `id` bigint(20) NOT NULL,
  `add_date` datetime(6) NOT NULL,
  `pub_date` datetime(6) NOT NULL,
  `is_del` tinyint(1) NOT NULL,
  `name` varchar(50) NOT NULL,
  `site_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- 傾印資料表的資料 `baykeshop_baykeproductspec`
--

INSERT INTO `baykeshop_baykeproductspec` (`id`, `add_date`, `pub_date`, `is_del`, `name`, `site_id`) VALUES
(1, '2023-04-28 05:43:39.809000', '2023-04-28 05:43:39.809000', 0, '颜色', NULL),
(2, '2023-05-04 01:46:52.085000', '2023-05-04 01:46:52.085000', 0, '大小', NULL);

-- --------------------------------------------------------

--
-- 資料表結構 `baykeshop_baykeproductspecoption`
--

CREATE TABLE `baykeshop_baykeproductspecoption` (
  `id` bigint(20) NOT NULL,
  `add_date` datetime(6) NOT NULL,
  `pub_date` datetime(6) NOT NULL,
  `is_del` tinyint(1) NOT NULL,
  `name` varchar(50) NOT NULL,
  `site_id` int(11) DEFAULT NULL,
  `spec_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- 傾印資料表的資料 `baykeshop_baykeproductspecoption`
--

INSERT INTO `baykeshop_baykeproductspecoption` (`id`, `add_date`, `pub_date`, `is_del`, `name`, `site_id`, `spec_id`) VALUES
(1, '2023-04-28 05:43:39.810000', '2023-04-28 05:43:39.810000', 0, '红色', NULL, 1),
(2, '2023-04-28 05:43:39.811000', '2023-04-28 05:43:39.811000', 0, '绿色', NULL, 1),
(3, '2023-05-04 01:46:52.088000', '2023-05-04 01:46:52.088000', 0, 'L', NULL, 2),
(4, '2023-05-04 01:46:52.091000', '2023-05-04 01:46:52.091000', 0, 'XXL', NULL, 2),
(5, '2023-05-04 01:46:52.092000', '2023-05-04 01:46:52.092000', 0, 'XL', NULL, 2);

-- --------------------------------------------------------

--
-- 資料表結構 `baykeshop_baykeproductspu`
--

CREATE TABLE `baykeshop_baykeproductspu` (
  `id` bigint(20) NOT NULL,
  `add_date` datetime(6) NOT NULL,
  `pub_date` datetime(6) NOT NULL,
  `is_del` tinyint(1) NOT NULL,
  `title` varchar(100) NOT NULL,
  `desc` varchar(150) NOT NULL,
  `keywords` varchar(150) NOT NULL,
  `content` longtext NOT NULL,
  `after_sale` longtext NOT NULL,
  `pic` varchar(200) NOT NULL,
  `freight` decimal(5,2) NOT NULL,
  `site_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- 傾印資料表的資料 `baykeshop_baykeproductspu`
--

INSERT INTO `baykeshop_baykeproductspu` (`id`, `add_date`, `pub_date`, `is_del`, `title`, `desc`, `keywords`, `content`, `after_sale`, `pic`, `freight`, `site_id`) VALUES
(4, '2023-05-28 13:54:59.731884', '2023-05-28 13:54:59.731884', 0, '鬼畜英雄（５）', 'タカミチ城に攻めてきた超巨大ゴブリンを華麗に撃退したオレたち。 祝杯パーティーのあとには、お待ちかねのムフフな&ldquo;お楽しみタイム&rdquo;で心身共にリフレ～ッシュ♪ そんな中、徴兵のために多くの兵士が集まった前線基地でゴブリンたちの奇策「人間爆弾」が猛威を', '', '<p>タカミチ城に攻めてきた超巨大ゴブリンを華麗に撃退したオレたち。 祝杯パーティーのあとには、お待ちかねのムフフな&ldquo;お楽しみタイム&rdquo;で心身共にリフレ～ッシュ♪ そんな中、徴兵のために多くの兵士が集まった前線基地でゴブリンたちの奇策「人間爆弾」が猛威を振るう事態に。 さっそく問題解決に駆り出されたと思った</p>', '', 'goods/2023/comic1.jpg', 0.00, NULL),
(5, '2023-05-28 14:08:41.255132', '2023-05-28 14:08:41.255132', 0, '悪役令嬢の中の人～断罪された転生者のため嘘つきヒロインに復讐いたします～: 3【イラスト特典付】', '「どんな運命だろうとも、わたくしが決めた信念には敵わない」悪役令嬢レミリアはゲームのシナリオを着々と進め、ついにラスボスがいる魔界へ。魔王アンヘルとの謁見で明かされる魔族の現実と狂化の真実。そして魔界の奥に眠るこの世界をつくった創世神に挑む――。世界を巻き込む第3巻、描', '', '<p>「どんな運命だろうとも、わたくしが決めた信念には敵わない」悪役令嬢レミリアはゲームのシナリオを着々と進め、ついにラスボスがいる魔界へ。魔王アンヘルとの謁見で明かされる魔族の現実と狂化の真実。そして魔界の奥に眠るこの世界をつくった創世神に挑む――。世界を巻き込む第3巻、描き下ろし短編も収録！</p>', '', 'goods/2023/comic2.jpg', 0.00, NULL),
(6, '2023-05-28 14:10:30.511440', '2023-05-28 14:10:30.511440', 0, '陰の実力者になりたくて！　（１１）', '異世界に転生し、あらゆる物事に陰から介入し実力を示す「陰の実力者」設定をエンジョイしているシド。ローズ王女結婚の噂を聞き、結婚阻止計画を実行するべくオリアナ王国の城に潜入する。シドはローズに、王妃ではなく光の覇王になってほしかったのだ。なぜなら光あるところに「陰の実力者', '', '<p>異世界に転生し、あらゆる物事に陰から介入し実力を示す「陰の実力者」設定をエンジョイしているシド。ローズ王女結婚の噂を聞き、結婚阻止計画を実行するべくオリアナ王国の城に潜入する。シドはローズに、王妃ではなく光の覇王になってほしかったのだ。<br>なぜなら光あるところに「陰の実力者」はより濃く存在できるから――！<br><br>いつも通りの勘違いも、いつも通りに炸裂する異世界異聞奇譚、信念の第11巻!!</p>', '', 'goods/2023/comic3.jpg', 0.00, NULL),
(7, '2023-05-28 14:17:30.587189', '2023-05-28 14:17:30.587189', 0, '【推しの子】 7', '「俺にとって演じる事は復讐だ」　大人気漫画『東京ブレイド』の2.5次元舞台、本番が開幕!!　幼少時の因縁を元に対立する、かつての天才子役・有馬かなと現『劇団ララライ』エース・黒川あかねは舞台上で自身の演技をぶつけ合う!!　そして、&ldquo;感情演技&rdquo;の為', '', '<p>「俺にとって演じる事は復讐だ」　大人気漫画『東京ブレイド』の2.5次元舞台、本番が開幕!!　幼少時の因縁を元に対立する、かつての天才子役・有馬かなと現『劇団ララライ』エース・黒川あかねは舞台上で自身の演技をぶつけ合う!!　そして、&ldquo;感情演技&rdquo;の為、自身のトラウマと向き合う星野アクアが辿り着く役者としての生き様とは!?　第五章　2.5次元舞台編、クライマックス!!　&ldquo;赤坂アカ&times;横槍メンゴ&rdquo;の豪華タッグが全く新しい切り口で&ldquo;芸能界&rdquo;を描く衝撃作&hellip;第7巻!!　※正式な著者表記「赤坂アカ&times;横槍メンゴ」</p>', '', 'goods/2023/comic4.jpg', 0.00, NULL),
(8, '2023-05-28 14:19:58.973443', '2023-05-28 14:19:58.973443', 0, '望まぬ不死の冒険者 11', '神銀級冒険者を目指す――その理由を遂に語ったレント。その後、ロレーヌと共に己が持つ『聖気の根源』を知るべくかつて聖気を授かった&ldquo;祠&rdquo;へと向かう。到着早々に二人で汚れていた祠の掃除をしていたところ突然ロレーヌが持っていた人形に『神霊』を名乗る存在が', '', '<p>神銀級冒険者を目指す――その理由を遂に語ったレント。<br>その後、ロレーヌと共に己が持つ『聖気の根源』を知るべくかつて聖気を授かった&ldquo;祠&rdquo;へと向かう。<br><br>到着早々に二人で汚れていた祠の掃除をしていたところ突然ロレーヌが持っていた人形に『神霊』を名乗る存在が憑依。<br>その存在こそ、レントに聖気を与えたもので&hellip;&hellip;!?<br><br>そして神霊との交流を終えた矢先、師のカピタンとガルブがレントたちの前に現れ「村を終わらせる」と宣言する。<br>炎に包まれ始めた村に駆け付けようとするも、師である二人はそれを許さず、本気の決闘をレントに挑んでくるのだった――。<br><br>巻末に書き下ろし小説＆描き下ろし漫画を収録。</p>', '', 'goods/2023/comic5.jpg', 0.00, NULL);

-- --------------------------------------------------------

--
-- 資料表結構 `baykeshop_baykeproductspu_cates`
--

CREATE TABLE `baykeshop_baykeproductspu_cates` (
  `id` bigint(20) NOT NULL,
  `baykeproductspu_id` bigint(20) NOT NULL,
  `baykeproductcategory_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- 傾印資料表的資料 `baykeshop_baykeproductspu_cates`
--

INSERT INTO `baykeshop_baykeproductspu_cates` (`id`, `baykeproductspu_id`, `baykeproductcategory_id`) VALUES
(5, 4, 9),
(6, 5, 9),
(7, 6, 9),
(8, 7, 9),
(9, 8, 9);

-- --------------------------------------------------------

--
-- 資料表結構 `baykeshop_baykesite`
--

CREATE TABLE `baykeshop_baykesite` (
  `id` bigint(20) NOT NULL,
  `add_date` datetime(6) NOT NULL,
  `pub_date` datetime(6) NOT NULL,
  `is_del` tinyint(1) NOT NULL,
  `site_name` varchar(50) NOT NULL,
  `site_title` varchar(50) NOT NULL,
  `site_header` varchar(50) NOT NULL,
  `beian` varchar(200) NOT NULL,
  `site_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- 資料表結構 `baykeshop_baykeupload`
--

CREATE TABLE `baykeshop_baykeupload` (
  `id` bigint(20) NOT NULL,
  `add_date` datetime(6) NOT NULL,
  `pub_date` datetime(6) NOT NULL,
  `is_del` tinyint(1) NOT NULL,
  `img` varchar(200) NOT NULL,
  `site_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- 傾印資料表的資料 `baykeshop_baykeupload`
--

INSERT INTO `baykeshop_baykeupload` (`id`, `add_date`, `pub_date`, `is_del`, `img`, `site_id`) VALUES
(1, '2023-05-28 14:27:02.092235', '2023-05-28 14:27:02.092235', 0, 'upload/35816481f40a4648805dad496ccde654.png', NULL),
(2, '2023-05-28 14:27:14.382467', '2023-05-28 14:27:14.382467', 0, 'upload/39320ccc6af04ea0a0b1498f7faec59b.png', NULL),
(3, '2023-05-28 14:27:32.761880', '2023-05-28 14:27:32.761880', 0, 'upload/21f0cc7da0a84daba1f242e27bafeb4b.png', NULL);

-- --------------------------------------------------------

--
-- 資料表結構 `baykeshop_baykeuser`
--

CREATE TABLE `baykeshop_baykeuser` (
  `id` bigint(20) NOT NULL,
  `add_date` datetime(6) NOT NULL,
  `pub_date` datetime(6) NOT NULL,
  `is_del` tinyint(1) NOT NULL,
  `name` varchar(50) NOT NULL,
  `phone` varchar(11) DEFAULT NULL,
  `email` varchar(254) DEFAULT NULL,
  `avatar` varchar(200) NOT NULL,
  `balance` decimal(8,2) NOT NULL,
  `desc` varchar(150) NOT NULL,
  `owner_id` int(11) NOT NULL,
  `site_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- 傾印資料表的資料 `baykeshop_baykeuser`
--

INSERT INTO `baykeshop_baykeuser` (`id`, `add_date`, `pub_date`, `is_del`, `name`, `phone`, `email`, `avatar`, `balance`, `desc`, `owner_id`, `site_id`) VALUES
(1, '2023-05-27 15:20:57.976636', '2023-05-27 15:20:57.976636', 0, '', NULL, 'bruce920309@gmail.com', 'avatar/default.png', 0.00, '', 1, NULL);

-- --------------------------------------------------------

--
-- 資料表結構 `baykeshop_baykeuserbalancelog`
--

CREATE TABLE `baykeshop_baykeuserbalancelog` (
  `id` bigint(20) NOT NULL,
  `add_date` datetime(6) NOT NULL,
  `pub_date` datetime(6) NOT NULL,
  `is_del` tinyint(1) NOT NULL,
  `amount` decimal(15,2) NOT NULL,
  `change_status` smallint(5) UNSIGNED DEFAULT NULL CHECK (`change_status` >= 0),
  `change_way` smallint(5) UNSIGNED NOT NULL CHECK (`change_way` >= 0),
  `owner_id` int(11) NOT NULL,
  `site_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- 資料表結構 `baykeshop_baykeverifycode`
--

CREATE TABLE `baykeshop_baykeverifycode` (
  `id` bigint(20) NOT NULL,
  `add_date` datetime(6) NOT NULL,
  `pub_date` datetime(6) NOT NULL,
  `is_del` tinyint(1) NOT NULL,
  `email` varchar(254) NOT NULL,
  `code` varchar(4) NOT NULL,
  `site_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- 資料表結構 `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- 傾印資料表的資料 `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2023-05-28 13:19:05.325184', '3', 'Home Banner/media/upload/openshop_logo.png', 1, '[{\"added\": {}}]', 26, 1),
(2, '2023-05-28 13:33:14.479386', '3', 'Home Banner/media/upload/openshop_logo.png', 2, '[]', 26, 1),
(3, '2023-05-28 13:33:18.121772', '4', 'Home Banner/media/upload/openshop_logo2.png', 1, '[{\"added\": {}}]', 26, 1),
(4, '2023-05-28 13:34:16.531788', '4', 'Home Banner/media/upload/openshop_logo2.png', 3, '', 26, 1),
(5, '2023-05-28 13:34:18.389335', '3', 'Home Banner/media/upload/openshop_logo.png', 3, '', 26, 1),
(6, '2023-05-28 13:34:20.118648', '2', 'Home Banner/media/upload/%E7%94%BB%E6%9D%BF_1.jpg', 3, '', 26, 1),
(7, '2023-05-28 13:34:25.074739', '5', 'Home Banner/media/upload/openshop_logo2_VdA4QaL.png', 1, '[{\"added\": {}}]', 26, 1),
(8, '2023-05-28 13:41:33.572647', '8', '漫畫', 1, '[{\"added\": {}}, {\"added\": {\"name\": \"BaykeProductCategory\", \"object\": \"\\u7d9c\\u5408\"}}, {\"added\": {\"name\": \"BaykeProductCategory\", \"object\": \"\\u9752\\u5e74 / \\u5c11\\u5e74\\u6f2b\\u756b\"}}, {\"added\": {\"name\": \"BaykeProductCategory\", \"object\": \"\\u5c11\\u5973 / \\u5973\\u6027\\u6f2b\\u756b\"}}, {\"added\": {\"name\": \"BaykeProductCategory\", \"object\": \"\\u8f15\\u5c0f\\u8aaa\"}}, {\"added\": {\"name\": \"BaykeProductCategory\", \"object\": \"Teens Love\"}}, {\"added\": {\"name\": \"BaykeProductCategory\", \"object\": \"BL\"}}, {\"added\": {\"name\": \"BaykeProductCategory\", \"object\": \"Webtoon\"}}, {\"added\": {\"name\": \"BaykeProductCategory\", \"object\": \"\\u8072\\u97f3 / \\u97f3\\u6a02\"}}]', 11, 1),
(9, '2023-05-28 13:42:05.777383', '5', 'Home Banner/media/upload/openshop_logo_fXoqVFB.png', 2, '[{\"changed\": {\"fields\": [\"\\u56fe\\u7247\"]}}]', 26, 1),
(10, '2023-05-28 13:45:14.966379', '8', '漫畫', 2, '[{\"changed\": {\"fields\": [\"\\u63a8\\u8350\\u56fe\"]}}]', 11, 1),
(11, '2023-05-28 13:47:21.939394', '4', '办公设备', 3, '', 11, 1),
(12, '2023-05-28 13:47:24.289221', '1', '家用电器', 3, '', 11, 1),
(13, '2023-05-28 13:48:11.890178', '8', '漫畫', 2, '[{\"changed\": {\"fields\": [\"\\u63a8\\u8350\\u56fe\"]}}]', 11, 1),
(14, '2023-05-28 13:48:39.532216', '8', '漫畫', 2, '[{\"changed\": {\"fields\": [\"\\u63a8\\u8350\\u56fe\"]}}]', 11, 1),
(15, '2023-05-28 13:51:33.911295', '8', '漫畫', 2, '[{\"changed\": {\"fields\": [\"\\u63a8\\u8350\\u56fe\"]}}]', 11, 1),
(16, '2023-05-28 13:54:59.745313', '4', '鬼畜英雄（５）', 1, '[{\"added\": {}}, {\"added\": {\"name\": \"BaykeProductBanner\", \"object\": \"upload/comic1.jpg\"}}, {\"added\": {\"name\": \"BaykeProductBanner\", \"object\": \"upload/comic1_Ymagzxt.jpg\"}}, {\"added\": {\"name\": \"BaykeProductSKU\", \"object\": \"\\u9b3c\\u755c\\u82f1\\u96c4\\uff08\\uff15\\uff09\"}}]', 18, 1),
(17, '2023-05-28 14:05:16.261145', '3', '电脑标题测试', 3, '', 18, 1),
(18, '2023-05-28 14:05:19.804726', '2', '测试的商品', 3, '', 18, 1),
(19, '2023-05-28 14:05:22.382938', '1', '索尼（SONY）WH-H910N 蓝牙降噪无线耳机 头戴式Hi-Res音质游戏耳机 手机耳机（hear系列 灰绿色 ）', 3, '', 18, 1),
(20, '2023-05-28 14:05:45.337237', '5', 'Home Banner/media/upload/openshop_logo.png', 2, '[{\"changed\": {\"fields\": [\"\\u56fe\\u7247\"]}}]', 26, 1),
(21, '2023-05-28 14:08:41.293156', '5', '悪役令嬢の中の人～断罪された転生者のため嘘つきヒロインに復讐いたします～: 3【イラスト特典付】', 1, '[{\"added\": {}}, {\"added\": {\"name\": \"BaykeProductBanner\", \"object\": \"upload/comic2.jpg\"}}, {\"added\": {\"name\": \"BaykeProductBanner\", \"object\": \"upload/comic2_g85kSvD.jpg\"}}, {\"added\": {\"name\": \"BaykeProductSKU\", \"object\": \"\\u60aa\\u5f79\\u4ee4\\u5b22\\u306e\\u4e2d\\u306e\\u4eba\\uff5e\\u65ad\\u7f6a\\u3055\\u308c\\u305f\\u8ee2\\u751f\\u8005\\u306e\\u305f\\u3081\\u5618\\u3064\\u304d\\u30d2\\u30ed\\u30a4\\u30f3\\u306b\\u5fa9\\u8b90\\u3044\\u305f\\u3057\\u307e\\u3059\\uff5e: 3\\u3010\\u30a4\\u30e9\\u30b9\\u30c8\\u7279\\u5178\\u4ed8\\u3011\"}}]', 18, 1),
(22, '2023-05-28 14:10:30.528972', '6', '陰の実力者になりたくて！　（１１）', 1, '[{\"added\": {}}, {\"added\": {\"name\": \"BaykeProductBanner\", \"object\": \"upload/comic3.jpg\"}}, {\"added\": {\"name\": \"BaykeProductBanner\", \"object\": \"upload/comic3_5su8q9W.jpg\"}}, {\"added\": {\"name\": \"BaykeProductSKU\", \"object\": \"\\u9670\\u306e\\u5b9f\\u529b\\u8005\\u306b\\u306a\\u308a\\u305f\\u304f\\u3066\\uff01\\u3000\\uff08\\uff11\\uff11\\uff09\"}}]', 18, 1),
(23, '2023-05-28 14:14:22.882031', '2', 'Django 提供了高级和低级的方法来帮助你管理分页数据', 3, '', 29, 1),
(24, '2023-05-28 14:14:26.681981', '1', '测试文章内容', 3, '', 29, 1),
(25, '2023-05-28 14:14:38.785417', '2', '試閱', 1, '[{\"added\": {}}]', 28, 1),
(26, '2023-05-28 14:17:30.604183', '7', '【推しの子】 7', 1, '[{\"added\": {}}, {\"added\": {\"name\": \"BaykeProductBanner\", \"object\": \"upload/comic4.jpg\"}}, {\"added\": {\"name\": \"BaykeProductBanner\", \"object\": \"upload/comic4_wks6qKl.jpg\"}}, {\"added\": {\"name\": \"BaykeProductSKU\", \"object\": \"\\u3010\\u63a8\\u3057\\u306e\\u5b50\\u3011 7\"}}]', 18, 1),
(27, '2023-05-28 14:19:59.025511', '8', '望まぬ不死の冒険者 11', 1, '[{\"added\": {}}, {\"added\": {\"name\": \"BaykeProductBanner\", \"object\": \"upload/comic5.jpg\"}}, {\"added\": {\"name\": \"BaykeProductBanner\", \"object\": \"upload/comic5_wpPSQS4.jpg\"}}, {\"added\": {\"name\": \"BaykeProductSKU\", \"object\": \"\\u671b\\u307e\\u306c\\u4e0d\\u6b7b\\u306e\\u5192\\u967a\\u8005 11\"}}]', 18, 1),
(28, '2023-05-28 14:20:22.041112', '8', '漫畫', 2, '[{\"changed\": {\"fields\": [\"\\u63a8\\u8350\\u56fe\"]}}]', 11, 1),
(29, '2023-05-28 14:21:30.333549', '8', '漫畫', 2, '[{\"changed\": {\"fields\": [\"\\u63a8\\u8350\\u56fe\"]}}]', 11, 1),
(30, '2023-05-28 14:23:28.265367', '1', '商品资讯', 3, '', 28, 1),
(31, '2023-05-28 14:27:46.346351', '3', '【推しの子】 7', 1, '[{\"added\": {}}]', 29, 1),
(32, '2023-05-29 12:53:04.438917', '2', '試閱', 1, '[{\"added\": {}}]', 27, 1),
(33, '2023-05-29 12:53:20.808138', '3', '【推しの子】 7', 2, '[{\"changed\": {\"fields\": [\"\\u63cf\\u8ff0\"]}}]', 29, 1),
(34, '2023-05-29 12:53:24.792823', '3', '【推しの子】 7', 2, '[{\"changed\": {\"fields\": [\"\\u63cf\\u8ff0\", \"\\u6807\\u7b7e\"]}}]', 29, 1),
(35, '2023-05-29 12:55:08.494527', '2', 'openshop.sparrowten.com', 1, '[{\"added\": {}}]', 7, 1),
(36, '2023-05-29 12:57:52.965836', '1', '/about/ -- 關於我們', 2, '[{\"changed\": {\"fields\": [\"Content\", \"Sites\"]}}]', 8, 1),
(37, '2023-05-29 12:58:06.941279', '2', '/faq/after/ -- 售後服務', 2, '[{\"changed\": {\"fields\": [\"Title\", \"Content\"]}}]', 8, 1),
(38, '2023-05-29 12:58:10.362507', '2', '/faq/after/ -- 售後服務', 2, '[{\"changed\": {\"fields\": [\"Sites\"]}}]', 8, 1),
(39, '2023-05-29 12:58:24.188870', '3', '/faq/pay/ -- 付款問題', 2, '[{\"changed\": {\"fields\": [\"Content\"]}}]', 8, 1),
(40, '2023-05-29 12:58:44.547717', '4', '/newbie/flow/ -- 購物流程', 2, '[{\"changed\": {\"fields\": [\"Content\", \"Sites\"]}}]', 8, 1),
(41, '2023-05-29 12:58:52.429643', '5', '/newbie/payment/ -- 付款方式', 2, '[{\"changed\": {\"fields\": [\"Content\", \"Sites\"]}}]', 8, 1),
(42, '2023-05-29 12:58:59.496207', '6', '/serve/refund/ -- 退款流程', 2, '[{\"changed\": {\"fields\": [\"Content\", \"Sites\"]}}]', 8, 1),
(43, '2023-05-29 12:59:09.274686', '7', '/serve/return/ -- 退貨流程', 2, '[{\"changed\": {\"fields\": [\"Content\", \"Sites\"]}}]', 8, 1),
(44, '2023-05-29 12:59:40.503559', '1', '/about/ -- 關於我們', 2, '[{\"changed\": {\"fields\": [\"Sites\"]}}]', 8, 1),
(45, '2023-05-29 12:59:45.186568', '2', '/faq/after/ -- 售後服務', 2, '[{\"changed\": {\"fields\": [\"Sites\"]}}]', 8, 1),
(46, '2023-05-29 12:59:49.093039', '4', '/newbie/flow/ -- 購物流程', 2, '[{\"changed\": {\"fields\": [\"Sites\"]}}]', 8, 1),
(47, '2023-05-29 12:59:54.995609', '5', '/newbie/payment/ -- 付款方式', 2, '[{\"changed\": {\"fields\": [\"Sites\"]}}]', 8, 1),
(48, '2023-05-29 12:59:58.703682', '6', '/serve/refund/ -- 退款流程', 2, '[{\"changed\": {\"fields\": [\"Sites\"]}}]', 8, 1),
(49, '2023-05-29 13:00:01.589261', '7', '/serve/return/ -- 退貨流程', 2, '[{\"changed\": {\"fields\": [\"Sites\"]}}]', 8, 1),
(50, '2023-05-29 13:04:19.449318', '3', '心得', 1, '[{\"added\": {}}]', 27, 1),
(51, '2023-05-29 13:04:28.357968', '3', '心得', 1, '[{\"added\": {}}]', 28, 1),
(52, '2023-05-29 13:05:11.021050', '4', '推しの子', 1, '[{\"added\": {}}]', 27, 1),
(53, '2023-05-29 13:05:16.666009', '4', '【心得】第40話前後一些有趣的細節(有雷)', 1, '[{\"added\": {}}]', 29, 1);

-- --------------------------------------------------------

--
-- 資料表結構 `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- 傾印資料表的資料 `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(30, 'baykeshop', 'baykeaddress'),
(29, 'baykeshop', 'baykearticle'),
(28, 'baykeshop', 'baykearticlecategory'),
(27, 'baykeshop', 'baykearticletag'),
(26, 'baykeshop', 'baykebanner'),
(25, 'baykeshop', 'baykecart'),
(9, 'baykeshop', 'baykemenu'),
(10, 'baykeshop', 'baykeorder'),
(24, 'baykeshop', 'baykeordercomments'),
(23, 'baykeshop', 'baykeordersku'),
(22, 'baykeshop', 'baykepermission'),
(21, 'baykeshop', 'baykeproductbanner'),
(11, 'baykeshop', 'baykeproductcategory'),
(20, 'baykeshop', 'baykeproductsku'),
(12, 'baykeshop', 'baykeproductspec'),
(19, 'baykeshop', 'baykeproductspecoption'),
(18, 'baykeshop', 'baykeproductspu'),
(17, 'baykeshop', 'baykesite'),
(16, 'baykeshop', 'baykeupload'),
(15, 'baykeshop', 'baykeuser'),
(14, 'baykeshop', 'baykeuserbalancelog'),
(13, 'baykeshop', 'baykeverifycode'),
(5, 'contenttypes', 'contenttype'),
(8, 'flatpages', 'flatpage'),
(6, 'sessions', 'session'),
(7, 'sites', 'site');

-- --------------------------------------------------------

--
-- 資料表結構 `django_flatpage`
--

CREATE TABLE `django_flatpage` (
  `id` int(11) NOT NULL,
  `url` varchar(100) NOT NULL,
  `title` varchar(200) NOT NULL,
  `content` longtext NOT NULL,
  `enable_comments` tinyint(1) NOT NULL,
  `template_name` varchar(70) NOT NULL,
  `registration_required` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- 傾印資料表的資料 `django_flatpage`
--

INSERT INTO `django_flatpage` (`id`, `url`, `title`, `content`, `enable_comments`, `template_name`, `registration_required`) VALUES
(1, '/about/', '關於我們', '<p>OpenShop 是一個以開放論壇式的商城平台，就如名字中的「Open」，用戶可以在這裡以貼文來分享自己對於這本書籍的感想，如果有興趣的話也提供試閱服務，試閱後也可以直接購買完整內容享受！</p>', 0, '', 0),
(2, '/faq/after/', '售後服務', '<p>售後服務</p>', 0, '', 0),
(3, '/faq/pay/', '付款問題', '<p>付款問題</p>', 0, '', 0),
(4, '/newbie/flow/', '購物流程', '<p>購物流程</p>', 0, '', 0),
(5, '/newbie/payment/', '付款方式', '<p>付款方式</p>', 0, '', 0),
(6, '/serve/refund/', '退款流程', '<p>退款流程</p>', 0, '', 0),
(7, '/serve/return/', '退貨流程', '<p>退貨流程</p>', 0, '', 0);

-- --------------------------------------------------------

--
-- 資料表結構 `django_flatpage_sites`
--

CREATE TABLE `django_flatpage_sites` (
  `id` bigint(20) NOT NULL,
  `flatpage_id` int(11) NOT NULL,
  `site_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- 傾印資料表的資料 `django_flatpage_sites`
--

INSERT INTO `django_flatpage_sites` (`id`, `flatpage_id`, `site_id`) VALUES
(14, 1, 1),
(15, 2, 1),
(3, 3, 1),
(16, 4, 1),
(17, 5, 1),
(18, 6, 1),
(19, 7, 1);

-- --------------------------------------------------------

--
-- 資料表結構 `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- 傾印資料表的資料 `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2023-05-27 15:14:45.146290'),
(2, 'auth', '0001_initial', '2023-05-27 15:14:45.699017'),
(3, 'admin', '0001_initial', '2023-05-27 15:14:45.823911'),
(4, 'admin', '0002_logentry_remove_auto_add', '2023-05-27 15:14:45.830461'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2023-05-27 15:14:45.838509'),
(6, 'contenttypes', '0002_remove_content_type_name', '2023-05-27 15:14:45.894846'),
(7, 'auth', '0002_alter_permission_name_max_length', '2023-05-27 15:14:45.955363'),
(8, 'auth', '0003_alter_user_email_max_length', '2023-05-27 15:14:45.968897'),
(9, 'auth', '0004_alter_user_username_opts', '2023-05-27 15:14:45.976000'),
(10, 'auth', '0005_alter_user_last_login_null', '2023-05-27 15:14:46.021111'),
(11, 'auth', '0006_require_contenttypes_0002', '2023-05-27 15:14:46.024103'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2023-05-27 15:14:46.030880'),
(13, 'auth', '0008_alter_user_username_max_length', '2023-05-27 15:14:46.044417'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2023-05-27 15:14:46.080048'),
(15, 'auth', '0010_alter_group_name_max_length', '2023-05-27 15:14:46.092773'),
(16, 'auth', '0011_update_proxy_permissions', '2023-05-27 15:14:46.100266'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2023-05-27 15:14:46.114052'),
(18, 'sites', '0001_initial', '2023-05-27 15:14:46.130368'),
(19, 'sites', '0002_alter_domain_unique', '2023-05-27 15:14:46.148355'),
(20, 'baykeshop', '0001_initial', '2023-05-27 15:14:49.612803'),
(21, 'flatpages', '0001_initial', '2023-05-27 15:14:49.850968'),
(22, 'sessions', '0001_initial', '2023-05-27 15:14:49.881934');

-- --------------------------------------------------------

--
-- 資料表結構 `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- 傾印資料表的資料 `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('cnitmwpuy7kubn35oq2k2ml1lkdkp2ym', '.eJxVjEEOwiAQRe_C2hCwZaAu3fcMzcDMSNVAUtqV8e7apAvd_vfef6kJtzVPW-NlmkldlFWn3y1ienDZAd2x3KpOtazLHPWu6IM2PVbi5_Vw_w4ytvytGc4AQYJxEYMznY0CxvGQmJg6a6RH8TCA90BJwILFECR5pii-T1G9P-OhOH0:1q3cMk:2FUVT88LGEIfiVYdsmmz7vEw_MLaEGjuMTYWIIwVR_A', '2023-06-12 12:52:50.363127'),
('tszjdt89v1wlty0mt085krqgqvjeqvwf', '.eJxVjEEOwiAQRe_C2hCwZaAu3fcMzcDMSNVAUtqV8e7apAvd_vfef6kJtzVPW-NlmkldlFWn3y1ienDZAd2x3KpOtazLHPWu6IM2PVbi5_Vw_w4ytvytGc4AQYJxEYMznY0CxvGQmJg6a6RH8TCA90BJwILFECR5pii-T1G9P-OhOH0:1q2viz:k3sD6_Q6Nv8i0tf6pJ1W_fb7xSS7wkjRCYWA8bI-Xhk', '2023-06-10 15:20:57.966507');

-- --------------------------------------------------------

--
-- 資料表結構 `django_site`
--

CREATE TABLE `django_site` (
  `id` int(11) NOT NULL,
  `domain` varchar(100) NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- 傾印資料表的資料 `django_site`
--

INSERT INTO `django_site` (`id`, `domain`, `name`) VALUES
(1, 'example.com', 'example.com'),
(2, 'openshop.sparrowten.com', 'openshop.sparrowten.com');

--
-- 已傾印資料表的索引
--

--
-- 資料表索引 `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- 資料表索引 `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- 資料表索引 `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- 資料表索引 `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- 資料表索引 `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- 資料表索引 `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- 資料表索引 `baykeshop_baykeaddress`
--
ALTER TABLE `baykeshop_baykeaddress`
  ADD PRIMARY KEY (`id`),
  ADD KEY `baykeshop_baykeaddress_owner_id_7728f157_fk_auth_user_id` (`owner_id`),
  ADD KEY `baykeshop_baykeaddress_site_id_7f84516e_fk_django_site_id` (`site_id`);

--
-- 資料表索引 `baykeshop_baykearticle`
--
ALTER TABLE `baykeshop_baykearticle`
  ADD PRIMARY KEY (`id`),
  ADD KEY `baykeshop_baykeartic_category_id_32ebe339_fk_baykeshop` (`category_id`),
  ADD KEY `baykeshop_baykearticle_site_id_3a79d725_fk_django_site_id` (`site_id`);

--
-- 資料表索引 `baykeshop_baykearticlecategory`
--
ALTER TABLE `baykeshop_baykearticlecategory`
  ADD PRIMARY KEY (`id`),
  ADD KEY `baykeshop_baykeartic_site_id_f5449545_fk_django_si` (`site_id`);

--
-- 資料表索引 `baykeshop_baykearticletag`
--
ALTER TABLE `baykeshop_baykearticletag`
  ADD PRIMARY KEY (`id`),
  ADD KEY `baykeshop_baykearticletag_site_id_1ba297c6_fk_django_site_id` (`site_id`);

--
-- 資料表索引 `baykeshop_baykearticle_tags`
--
ALTER TABLE `baykeshop_baykearticle_tags`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `baykeshop_baykearticle_t_baykearticle_id_baykeart_f5df53e9_uniq` (`baykearticle_id`,`baykearticletag_id`),
  ADD KEY `baykeshop_baykeartic_baykearticletag_id_7de9dc93_fk_baykeshop` (`baykearticletag_id`);

--
-- 資料表索引 `baykeshop_baykebanner`
--
ALTER TABLE `baykeshop_baykebanner`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `place` (`place`),
  ADD KEY `baykeshop_baykebanner_site_id_52f7a514_fk_django_site_id` (`site_id`);

--
-- 資料表索引 `baykeshop_baykecart`
--
ALTER TABLE `baykeshop_baykecart`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unique_owner_sku` (`owner_id`,`sku_id`),
  ADD KEY `baykeshop_baykecart_site_id_332cc0ad_fk_django_site_id` (`site_id`),
  ADD KEY `baykeshop_baykecart_sku_id_c1bcb3c5_fk_baykeshop` (`sku_id`);

--
-- 資料表索引 `baykeshop_baykemenu`
--
ALTER TABLE `baykeshop_baykemenu`
  ADD PRIMARY KEY (`id`),
  ADD KEY `baykeshop_baykemenu_site_id_f059054a_fk_django_site_id` (`site_id`);

--
-- 資料表索引 `baykeshop_baykeorder`
--
ALTER TABLE `baykeshop_baykeorder`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `order_sn` (`order_sn`),
  ADD UNIQUE KEY `trade_sn` (`trade_sn`),
  ADD KEY `baykeshop_baykeorder_owner_id_39a34e78_fk_auth_user_id` (`owner_id`),
  ADD KEY `baykeshop_baykeorder_site_id_d574258d_fk_django_site_id` (`site_id`);

--
-- 資料表索引 `baykeshop_baykeordercomments`
--
ALTER TABLE `baykeshop_baykeordercomments`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `object_id` (`object_id`),
  ADD UNIQUE KEY `tag` (`tag`),
  ADD KEY `baykeshop_baykeorder_content_type_id_7a43d766_fk_django_co` (`content_type_id`),
  ADD KEY `baykeshop_baykeordercomments_owner_id_93240f66_fk_auth_user_id` (`owner_id`),
  ADD KEY `baykeshop_baykeordercomments_site_id_234d40a1_fk_django_site_id` (`site_id`);

--
-- 資料表索引 `baykeshop_baykeordersku`
--
ALTER TABLE `baykeshop_baykeordersku`
  ADD PRIMARY KEY (`id`),
  ADD KEY `baykeshop_baykeorder_order_id_f8e22364_fk_baykeshop` (`order_id`),
  ADD KEY `baykeshop_baykeordersku_site_id_bf8eb092_fk_django_site_id` (`site_id`),
  ADD KEY `baykeshop_baykeorder_sku_id_4a99bdaf_fk_baykeshop` (`sku_id`);

--
-- 資料表索引 `baykeshop_baykepermission`
--
ALTER TABLE `baykeshop_baykepermission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permission_id` (`permission_id`),
  ADD KEY `baykeshop_baykepermi_menus_id_0f07b3dd_fk_baykeshop` (`menus_id`),
  ADD KEY `baykeshop_baykepermission_site_id_8dbb0375_fk_django_site_id` (`site_id`);

--
-- 資料表索引 `baykeshop_baykeproductbanner`
--
ALTER TABLE `baykeshop_baykeproductbanner`
  ADD PRIMARY KEY (`id`),
  ADD KEY `baykeshop_baykeproductbanner_site_id_62065798_fk_django_site_id` (`site_id`),
  ADD KEY `baykeshop_baykeprodu_spu_id_be60b400_fk_baykeshop` (`spu_id`);

--
-- 資料表索引 `baykeshop_baykeproductcategory`
--
ALTER TABLE `baykeshop_baykeproductcategory`
  ADD PRIMARY KEY (`id`),
  ADD KEY `baykeshop_baykeprodu_parent_id_38c8c6c5_fk_baykeshop` (`parent_id`),
  ADD KEY `baykeshop_baykeprodu_site_id_70e1de29_fk_django_si` (`site_id`);

--
-- 資料表索引 `baykeshop_baykeproductsku`
--
ALTER TABLE `baykeshop_baykeproductsku`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `item_id` (`item_id`),
  ADD KEY `baykeshop_baykeproductsku_site_id_5b944484_fk_django_site_id` (`site_id`),
  ADD KEY `baykeshop_baykeprodu_spu_id_b214e0c0_fk_baykeshop` (`spu_id`);

--
-- 資料表索引 `baykeshop_baykeproductsku_options`
--
ALTER TABLE `baykeshop_baykeproductsku_options`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `baykeshop_baykeproductsk_baykeproductsku_id_bayke_bb21f5c6_uniq` (`baykeproductsku_id`,`baykeproductspecoption_id`),
  ADD KEY `baykeshop_baykeprodu_baykeproductspecopti_0fd129d2_fk_baykeshop` (`baykeproductspecoption_id`);

--
-- 資料表索引 `baykeshop_baykeproductspec`
--
ALTER TABLE `baykeshop_baykeproductspec`
  ADD PRIMARY KEY (`id`),
  ADD KEY `baykeshop_baykeproductspec_site_id_1a03492e_fk_django_site_id` (`site_id`);

--
-- 資料表索引 `baykeshop_baykeproductspecoption`
--
ALTER TABLE `baykeshop_baykeproductspecoption`
  ADD PRIMARY KEY (`id`),
  ADD KEY `baykeshop_baykeprodu_site_id_5f2c6288_fk_django_si` (`site_id`),
  ADD KEY `baykeshop_baykeprodu_spec_id_4edb69ce_fk_baykeshop` (`spec_id`);

--
-- 資料表索引 `baykeshop_baykeproductspu`
--
ALTER TABLE `baykeshop_baykeproductspu`
  ADD PRIMARY KEY (`id`),
  ADD KEY `baykeshop_baykeproductspu_site_id_613e9e17_fk_django_site_id` (`site_id`);

--
-- 資料表索引 `baykeshop_baykeproductspu_cates`
--
ALTER TABLE `baykeshop_baykeproductspu_cates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `baykeshop_baykeproductsp_baykeproductspu_id_bayke_96888c07_uniq` (`baykeproductspu_id`,`baykeproductcategory_id`),
  ADD KEY `baykeshop_baykeprodu_baykeproductcategory_82d95bdb_fk_baykeshop` (`baykeproductcategory_id`);

--
-- 資料表索引 `baykeshop_baykesite`
--
ALTER TABLE `baykeshop_baykesite`
  ADD PRIMARY KEY (`id`),
  ADD KEY `baykeshop_baykesite_site_id_6a32bdfa_fk_django_site_id` (`site_id`);

--
-- 資料表索引 `baykeshop_baykeupload`
--
ALTER TABLE `baykeshop_baykeupload`
  ADD PRIMARY KEY (`id`),
  ADD KEY `baykeshop_baykeupload_site_id_c75c7a33_fk_django_site_id` (`site_id`);

--
-- 資料表索引 `baykeshop_baykeuser`
--
ALTER TABLE `baykeshop_baykeuser`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `owner_id` (`owner_id`),
  ADD UNIQUE KEY `phone` (`phone`),
  ADD UNIQUE KEY `email` (`email`),
  ADD KEY `baykeshop_baykeuser_site_id_77b441be_fk_django_site_id` (`site_id`);

--
-- 資料表索引 `baykeshop_baykeuserbalancelog`
--
ALTER TABLE `baykeshop_baykeuserbalancelog`
  ADD PRIMARY KEY (`id`),
  ADD KEY `baykeshop_baykeuserbalancelog_owner_id_7de12bb5_fk_auth_user_id` (`owner_id`),
  ADD KEY `baykeshop_baykeuserbalancelog_site_id_282b8345_fk_django_site_id` (`site_id`);

--
-- 資料表索引 `baykeshop_baykeverifycode`
--
ALTER TABLE `baykeshop_baykeverifycode`
  ADD PRIMARY KEY (`id`),
  ADD KEY `baykeshop_baykeverifycode_site_id_01021837_fk_django_site_id` (`site_id`);

--
-- 資料表索引 `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- 資料表索引 `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- 資料表索引 `django_flatpage`
--
ALTER TABLE `django_flatpage`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_flatpage_url_41612362` (`url`);

--
-- 資料表索引 `django_flatpage_sites`
--
ALTER TABLE `django_flatpage_sites`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_flatpage_sites_flatpage_id_site_id_0d29d9d1_uniq` (`flatpage_id`,`site_id`),
  ADD KEY `django_flatpage_sites_site_id_bfd8ea84_fk_django_site_id` (`site_id`);

--
-- 資料表索引 `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- 資料表索引 `django_site`
--
ALTER TABLE `django_site`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_site_domain_a2e37b91_uniq` (`domain`);

--
-- 在傾印的資料表使用自動遞增(AUTO_INCREMENT)
--

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=121;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `baykeshop_baykeaddress`
--
ALTER TABLE `baykeshop_baykeaddress`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `baykeshop_baykearticle`
--
ALTER TABLE `baykeshop_baykearticle`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `baykeshop_baykearticlecategory`
--
ALTER TABLE `baykeshop_baykearticlecategory`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `baykeshop_baykearticletag`
--
ALTER TABLE `baykeshop_baykearticletag`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `baykeshop_baykearticle_tags`
--
ALTER TABLE `baykeshop_baykearticle_tags`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `baykeshop_baykebanner`
--
ALTER TABLE `baykeshop_baykebanner`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `baykeshop_baykecart`
--
ALTER TABLE `baykeshop_baykecart`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `baykeshop_baykemenu`
--
ALTER TABLE `baykeshop_baykemenu`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `baykeshop_baykeorder`
--
ALTER TABLE `baykeshop_baykeorder`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `baykeshop_baykeordercomments`
--
ALTER TABLE `baykeshop_baykeordercomments`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `baykeshop_baykeordersku`
--
ALTER TABLE `baykeshop_baykeordersku`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `baykeshop_baykepermission`
--
ALTER TABLE `baykeshop_baykepermission`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `baykeshop_baykeproductbanner`
--
ALTER TABLE `baykeshop_baykeproductbanner`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `baykeshop_baykeproductcategory`
--
ALTER TABLE `baykeshop_baykeproductcategory`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `baykeshop_baykeproductsku`
--
ALTER TABLE `baykeshop_baykeproductsku`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `baykeshop_baykeproductsku_options`
--
ALTER TABLE `baykeshop_baykeproductsku_options`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `baykeshop_baykeproductspec`
--
ALTER TABLE `baykeshop_baykeproductspec`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `baykeshop_baykeproductspecoption`
--
ALTER TABLE `baykeshop_baykeproductspecoption`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `baykeshop_baykeproductspu`
--
ALTER TABLE `baykeshop_baykeproductspu`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `baykeshop_baykeproductspu_cates`
--
ALTER TABLE `baykeshop_baykeproductspu_cates`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `baykeshop_baykesite`
--
ALTER TABLE `baykeshop_baykesite`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `baykeshop_baykeupload`
--
ALTER TABLE `baykeshop_baykeupload`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `baykeshop_baykeuser`
--
ALTER TABLE `baykeshop_baykeuser`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `baykeshop_baykeuserbalancelog`
--
ALTER TABLE `baykeshop_baykeuserbalancelog`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `baykeshop_baykeverifycode`
--
ALTER TABLE `baykeshop_baykeverifycode`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `django_flatpage`
--
ALTER TABLE `django_flatpage`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `django_flatpage_sites`
--
ALTER TABLE `django_flatpage_sites`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `django_site`
--
ALTER TABLE `django_site`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- 已傾印資料表的限制式
--

--
-- 資料表的限制式 `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- 資料表的限制式 `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- 資料表的限制式 `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- 資料表的限制式 `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- 資料表的限制式 `baykeshop_baykeaddress`
--
ALTER TABLE `baykeshop_baykeaddress`
  ADD CONSTRAINT `baykeshop_baykeaddress_owner_id_7728f157_fk_auth_user_id` FOREIGN KEY (`owner_id`) REFERENCES `auth_user` (`id`),
  ADD CONSTRAINT `baykeshop_baykeaddress_site_id_7f84516e_fk_django_site_id` FOREIGN KEY (`site_id`) REFERENCES `django_site` (`id`);

--
-- 資料表的限制式 `baykeshop_baykearticle`
--
ALTER TABLE `baykeshop_baykearticle`
  ADD CONSTRAINT `baykeshop_baykeartic_category_id_32ebe339_fk_baykeshop` FOREIGN KEY (`category_id`) REFERENCES `baykeshop_baykearticlecategory` (`id`),
  ADD CONSTRAINT `baykeshop_baykearticle_site_id_3a79d725_fk_django_site_id` FOREIGN KEY (`site_id`) REFERENCES `django_site` (`id`);

--
-- 資料表的限制式 `baykeshop_baykearticlecategory`
--
ALTER TABLE `baykeshop_baykearticlecategory`
  ADD CONSTRAINT `baykeshop_baykeartic_site_id_f5449545_fk_django_si` FOREIGN KEY (`site_id`) REFERENCES `django_site` (`id`);

--
-- 資料表的限制式 `baykeshop_baykearticletag`
--
ALTER TABLE `baykeshop_baykearticletag`
  ADD CONSTRAINT `baykeshop_baykearticletag_site_id_1ba297c6_fk_django_site_id` FOREIGN KEY (`site_id`) REFERENCES `django_site` (`id`);

--
-- 資料表的限制式 `baykeshop_baykearticle_tags`
--
ALTER TABLE `baykeshop_baykearticle_tags`
  ADD CONSTRAINT `baykeshop_baykeartic_baykearticle_id_590c761c_fk_baykeshop` FOREIGN KEY (`baykearticle_id`) REFERENCES `baykeshop_baykearticle` (`id`),
  ADD CONSTRAINT `baykeshop_baykeartic_baykearticletag_id_7de9dc93_fk_baykeshop` FOREIGN KEY (`baykearticletag_id`) REFERENCES `baykeshop_baykearticletag` (`id`);

--
-- 資料表的限制式 `baykeshop_baykebanner`
--
ALTER TABLE `baykeshop_baykebanner`
  ADD CONSTRAINT `baykeshop_baykebanner_site_id_52f7a514_fk_django_site_id` FOREIGN KEY (`site_id`) REFERENCES `django_site` (`id`);

--
-- 資料表的限制式 `baykeshop_baykecart`
--
ALTER TABLE `baykeshop_baykecart`
  ADD CONSTRAINT `baykeshop_baykecart_owner_id_a58e9974_fk_auth_user_id` FOREIGN KEY (`owner_id`) REFERENCES `auth_user` (`id`),
  ADD CONSTRAINT `baykeshop_baykecart_site_id_332cc0ad_fk_django_site_id` FOREIGN KEY (`site_id`) REFERENCES `django_site` (`id`),
  ADD CONSTRAINT `baykeshop_baykecart_sku_id_c1bcb3c5_fk_baykeshop` FOREIGN KEY (`sku_id`) REFERENCES `baykeshop_baykeproductsku` (`id`);

--
-- 資料表的限制式 `baykeshop_baykemenu`
--
ALTER TABLE `baykeshop_baykemenu`
  ADD CONSTRAINT `baykeshop_baykemenu_site_id_f059054a_fk_django_site_id` FOREIGN KEY (`site_id`) REFERENCES `django_site` (`id`);

--
-- 資料表的限制式 `baykeshop_baykeorder`
--
ALTER TABLE `baykeshop_baykeorder`
  ADD CONSTRAINT `baykeshop_baykeorder_owner_id_39a34e78_fk_auth_user_id` FOREIGN KEY (`owner_id`) REFERENCES `auth_user` (`id`),
  ADD CONSTRAINT `baykeshop_baykeorder_site_id_d574258d_fk_django_site_id` FOREIGN KEY (`site_id`) REFERENCES `django_site` (`id`);

--
-- 資料表的限制式 `baykeshop_baykeordercomments`
--
ALTER TABLE `baykeshop_baykeordercomments`
  ADD CONSTRAINT `baykeshop_baykeorder_content_type_id_7a43d766_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `baykeshop_baykeordercomments_owner_id_93240f66_fk_auth_user_id` FOREIGN KEY (`owner_id`) REFERENCES `auth_user` (`id`),
  ADD CONSTRAINT `baykeshop_baykeordercomments_site_id_234d40a1_fk_django_site_id` FOREIGN KEY (`site_id`) REFERENCES `django_site` (`id`);

--
-- 資料表的限制式 `baykeshop_baykeordersku`
--
ALTER TABLE `baykeshop_baykeordersku`
  ADD CONSTRAINT `baykeshop_baykeorder_order_id_f8e22364_fk_baykeshop` FOREIGN KEY (`order_id`) REFERENCES `baykeshop_baykeorder` (`id`),
  ADD CONSTRAINT `baykeshop_baykeorder_sku_id_4a99bdaf_fk_baykeshop` FOREIGN KEY (`sku_id`) REFERENCES `baykeshop_baykeproductsku` (`id`),
  ADD CONSTRAINT `baykeshop_baykeordersku_site_id_bf8eb092_fk_django_site_id` FOREIGN KEY (`site_id`) REFERENCES `django_site` (`id`);

--
-- 資料表的限制式 `baykeshop_baykepermission`
--
ALTER TABLE `baykeshop_baykepermission`
  ADD CONSTRAINT `baykeshop_baykepermi_menus_id_0f07b3dd_fk_baykeshop` FOREIGN KEY (`menus_id`) REFERENCES `baykeshop_baykemenu` (`id`),
  ADD CONSTRAINT `baykeshop_baykepermi_permission_id_0dbf62fe_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `baykeshop_baykepermission_site_id_8dbb0375_fk_django_site_id` FOREIGN KEY (`site_id`) REFERENCES `django_site` (`id`);

--
-- 資料表的限制式 `baykeshop_baykeproductbanner`
--
ALTER TABLE `baykeshop_baykeproductbanner`
  ADD CONSTRAINT `baykeshop_baykeprodu_spu_id_be60b400_fk_baykeshop` FOREIGN KEY (`spu_id`) REFERENCES `baykeshop_baykeproductspu` (`id`),
  ADD CONSTRAINT `baykeshop_baykeproductbanner_site_id_62065798_fk_django_site_id` FOREIGN KEY (`site_id`) REFERENCES `django_site` (`id`);

--
-- 資料表的限制式 `baykeshop_baykeproductcategory`
--
ALTER TABLE `baykeshop_baykeproductcategory`
  ADD CONSTRAINT `baykeshop_baykeprodu_parent_id_38c8c6c5_fk_baykeshop` FOREIGN KEY (`parent_id`) REFERENCES `baykeshop_baykeproductcategory` (`id`),
  ADD CONSTRAINT `baykeshop_baykeprodu_site_id_70e1de29_fk_django_si` FOREIGN KEY (`site_id`) REFERENCES `django_site` (`id`);

--
-- 資料表的限制式 `baykeshop_baykeproductsku`
--
ALTER TABLE `baykeshop_baykeproductsku`
  ADD CONSTRAINT `baykeshop_baykeprodu_spu_id_b214e0c0_fk_baykeshop` FOREIGN KEY (`spu_id`) REFERENCES `baykeshop_baykeproductspu` (`id`),
  ADD CONSTRAINT `baykeshop_baykeproductsku_site_id_5b944484_fk_django_site_id` FOREIGN KEY (`site_id`) REFERENCES `django_site` (`id`);

--
-- 資料表的限制式 `baykeshop_baykeproductsku_options`
--
ALTER TABLE `baykeshop_baykeproductsku_options`
  ADD CONSTRAINT `baykeshop_baykeprodu_baykeproductsku_id_d62150d5_fk_baykeshop` FOREIGN KEY (`baykeproductsku_id`) REFERENCES `baykeshop_baykeproductsku` (`id`),
  ADD CONSTRAINT `baykeshop_baykeprodu_baykeproductspecopti_0fd129d2_fk_baykeshop` FOREIGN KEY (`baykeproductspecoption_id`) REFERENCES `baykeshop_baykeproductspecoption` (`id`);

--
-- 資料表的限制式 `baykeshop_baykeproductspec`
--
ALTER TABLE `baykeshop_baykeproductspec`
  ADD CONSTRAINT `baykeshop_baykeproductspec_site_id_1a03492e_fk_django_site_id` FOREIGN KEY (`site_id`) REFERENCES `django_site` (`id`);

--
-- 資料表的限制式 `baykeshop_baykeproductspecoption`
--
ALTER TABLE `baykeshop_baykeproductspecoption`
  ADD CONSTRAINT `baykeshop_baykeprodu_site_id_5f2c6288_fk_django_si` FOREIGN KEY (`site_id`) REFERENCES `django_site` (`id`),
  ADD CONSTRAINT `baykeshop_baykeprodu_spec_id_4edb69ce_fk_baykeshop` FOREIGN KEY (`spec_id`) REFERENCES `baykeshop_baykeproductspec` (`id`);

--
-- 資料表的限制式 `baykeshop_baykeproductspu`
--
ALTER TABLE `baykeshop_baykeproductspu`
  ADD CONSTRAINT `baykeshop_baykeproductspu_site_id_613e9e17_fk_django_site_id` FOREIGN KEY (`site_id`) REFERENCES `django_site` (`id`);

--
-- 資料表的限制式 `baykeshop_baykeproductspu_cates`
--
ALTER TABLE `baykeshop_baykeproductspu_cates`
  ADD CONSTRAINT `baykeshop_baykeprodu_baykeproductcategory_82d95bdb_fk_baykeshop` FOREIGN KEY (`baykeproductcategory_id`) REFERENCES `baykeshop_baykeproductcategory` (`id`),
  ADD CONSTRAINT `baykeshop_baykeprodu_baykeproductspu_id_e3f2a9f3_fk_baykeshop` FOREIGN KEY (`baykeproductspu_id`) REFERENCES `baykeshop_baykeproductspu` (`id`);

--
-- 資料表的限制式 `baykeshop_baykesite`
--
ALTER TABLE `baykeshop_baykesite`
  ADD CONSTRAINT `baykeshop_baykesite_site_id_6a32bdfa_fk_django_site_id` FOREIGN KEY (`site_id`) REFERENCES `django_site` (`id`);

--
-- 資料表的限制式 `baykeshop_baykeupload`
--
ALTER TABLE `baykeshop_baykeupload`
  ADD CONSTRAINT `baykeshop_baykeupload_site_id_c75c7a33_fk_django_site_id` FOREIGN KEY (`site_id`) REFERENCES `django_site` (`id`);

--
-- 資料表的限制式 `baykeshop_baykeuser`
--
ALTER TABLE `baykeshop_baykeuser`
  ADD CONSTRAINT `baykeshop_baykeuser_owner_id_d2029b09_fk_auth_user_id` FOREIGN KEY (`owner_id`) REFERENCES `auth_user` (`id`),
  ADD CONSTRAINT `baykeshop_baykeuser_site_id_77b441be_fk_django_site_id` FOREIGN KEY (`site_id`) REFERENCES `django_site` (`id`);

--
-- 資料表的限制式 `baykeshop_baykeuserbalancelog`
--
ALTER TABLE `baykeshop_baykeuserbalancelog`
  ADD CONSTRAINT `baykeshop_baykeuserbalancelog_owner_id_7de12bb5_fk_auth_user_id` FOREIGN KEY (`owner_id`) REFERENCES `auth_user` (`id`),
  ADD CONSTRAINT `baykeshop_baykeuserbalancelog_site_id_282b8345_fk_django_site_id` FOREIGN KEY (`site_id`) REFERENCES `django_site` (`id`);

--
-- 資料表的限制式 `baykeshop_baykeverifycode`
--
ALTER TABLE `baykeshop_baykeverifycode`
  ADD CONSTRAINT `baykeshop_baykeverifycode_site_id_01021837_fk_django_site_id` FOREIGN KEY (`site_id`) REFERENCES `django_site` (`id`);

--
-- 資料表的限制式 `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- 資料表的限制式 `django_flatpage_sites`
--
ALTER TABLE `django_flatpage_sites`
  ADD CONSTRAINT `django_flatpage_sites_flatpage_id_078bbc8b_fk_django_flatpage_id` FOREIGN KEY (`flatpage_id`) REFERENCES `django_flatpage` (`id`),
  ADD CONSTRAINT `django_flatpage_sites_site_id_bfd8ea84_fk_django_site_id` FOREIGN KEY (`site_id`) REFERENCES `django_site` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
