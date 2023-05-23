create database dbinvoice;

use dbinvoice;
CREATE TABLE `brand` (
  `id` int(11) NOT NULL auto_increment primary key,
  `name` varchar(255) NOT NULL,
  `logo` varchar(255) DEFAULT NULL,
  `activeFlag` int(11) NOT NULL DEFAULT 1,
  `createDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `updateDate` timestamp NULL DEFAULT current_timestamp(),
  `status` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

INSERT INTO `brand` (`id`, `name`, `logo`, `activeFlag`, `createDate`, `updateDate`, `status`) VALUES
(22, 'Oppo', NULL, 1, '2023-05-18 00:00:00', '2023-05-18 00:00:00', 1),
(23, 'SamSung', NULL, 1, '2023-05-18 00:00:00', '2020-08-25 22:58:48', 1),
(24, 'Huawei', NULL, 1, '2020-08-25 22:59:15', '2020-08-25 22:59:15', 1),
(25, 'Apple', NULL, 1, '2020-08-25 22:59:31', '2020-08-25 22:59:31', 1),
(26, 'Xiaomi', NULL, 1, '2020-08-25 23:00:18', '2020-08-25 23:00:18', 1),
(27, 'Vinmart', NULL, 1, '2020-08-25 23:01:03', '2020-08-25 23:01:03', 1),
(28, 'LG', NULL, 1, '2020-08-25 23:01:30', '2020-08-25 23:01:30', 1);


CREATE TABLE `category` (
  `id` int(11) NOT NULL auto_increment primary key,
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `activeFlag` int(1) NOT NULL,
  `createDate` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updateDate` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


INSERT INTO `category` (`id`, `name`, `code`, `description`, `activeFlag`, `createDate`, `updateDate`) VALUES
(1, 'Điện Thoại', '1', '1', 1, '2020-08-05 16:08:43', NULL),
(2, 'Laptop', '2', '2', 1, '2020-08-08 16:08:59', NULL);


use dbinvoice;
CREATE TABLE `invoice` (
  `id` int(11) NOT NULL auto_increment primary key,
  `userId` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `phoneNumber` varchar(12) DEFAULT NULL,
  `address` text DEFAULT NULL,
  `payment` int(1) DEFAULT NULL,
  `quantity` int(5) DEFAULT NULL,
  `amount` decimal(20,1) DEFAULT NULL,
  `status` int(1) DEFAULT NULL,
  `activeFlag` int(1) NOT NULL DEFAULT 1,
  `createDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;



CREATE TABLE `invoicedetail` (
  `id` int(11) NOT NULL auto_increment primary key,
  `invoiceId` int(11) NOT NULL,
  `productId` int(11) NOT NULL,
  `quanlity` int(3) DEFAULT NULL,
  `price` decimal(20,1) NOT NULL,
  `activeFlag` int(1) NOT NULL DEFAULT 1,
  `createDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `updateDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `invoicedetail` (`id`, `invoiceId`, `productId`, `quanlity`, `price`, `activeFlag`, `createDate`, `updateDate`) VALUES
(1, 1, 20, 1, '2400000.0', 1, '2020-08-25 23:58:03', '2020-08-25 23:58:03'),
(2, 2, 21, 1, '25000000.0', 1, '2020-08-25 23:59:03', '2020-08-25 23:59:03');



CREATE TABLE `menu` (
  `id` int(11) NOT NULL auto_increment primary key,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;



CREATE TABLE `product` (
  `id` int(11) NOT NULL auto_increment primary key,
  `categoryId` int(11) NOT NULL,
  `brandId` int(11) NOT NULL,
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` decimal(20,5) NOT NULL,
  `discount` decimal(15,2) DEFAULT NULL,
  `unitBrief` text DEFAULT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `imgMain` varchar(200) DEFAULT NULL,
  `imgList` varchar(255) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `activeFlag` int(1) NOT NULL DEFAULT 1,
  `createDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `updateDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


INSERT INTO `product` (`id`, `categoryId`, `brandId`, `name`, `code`, `price`, `discount`, `unitBrief`, `description`, `imgMain`, `imgList`, `quantity`, `activeFlag`, `createDate`, `updateDate`) VALUES
(20, 1, 24, 'Hawei-p40', '#samsung', '2400000.00000', '10000.00', 'OPPO A92 được trang bị cho mình con chip Snapdragon 665 mạnh mẽ cho hiệu năng cao, xử lý đa nhiệm mượt mà, “cân” tốt các tựa game mobile hiện hành. ', 'New Product', NULL, NULL, 50, 1, '2020-08-25 23:10:41', '2020-08-25 23:10:41'),
(21, 1, 25, 'Iphone 11 pro', '#Iphone', '25000000.00000', '10000.00', 'OPPO A92 được trang bị cho mình con chip Snapdragon 665 mạnh mẽ cho hiệu năng cao, xử lý đa nhiệm mượt mà, “cân” tốt các tựa game mobile hiện hành. ', 'New Product', NULL, NULL, 50, 1, '2020-08-25 23:11:44', '2020-08-25 23:11:44'),
(22, 1, 22, 'Oppo-reno4', '#oppo', '4000000.00000', '10000.00', 'OPPO A92 được trang bị cho mình con chip Snapdragon 665 mạnh mẽ cho hiệu năng cao, xử lý đa nhiệm mượt mà, “cân” tốt các tựa game mobile hiện hành. ', 'New Product', NULL, NULL, 30, 1, '2020-08-25 23:12:48', '2020-08-25 23:12:48'),
(23, 1, 23, 'SamSung A21', '#samsung', '3000000.00000', '10000.00', 'OPPO A92 được trang bị cho mình con chip Snapdragon 665 mạnh mẽ cho hiệu năng cao, xử lý đa nhiệm mượt mà, “cân” tốt các tựa game mobile hiện hành. ', 'New Product', NULL, NULL, 30, 1, '2020-08-25 23:13:39', '2020-08-25 23:13:39'),
(24, 1, 27, 'VsMart-star-4', '#vsmart', '4500000.00000', '10000.00', 'OPPO A92 được trang bị cho mình con chip Snapdragon 665 mạnh mẽ cho hiệu năng cao, xử lý đa nhiệm mượt mà, “cân” tốt các tựa game mobile hiện hành. ', 'New Product', NULL, NULL, 30, 1, '2020-08-25 23:14:54', '2020-08-25 23:14:54'),
(25, 1, 26, 'Xiaomi redmi note 8', '#xiaomi', '2340000.00000', '10000.00', 'OPPO A92 được trang bị cho mình con chip Snapdragon 665 mạnh mẽ cho hiệu năng cao, xử lý đa nhiệm mượt mà, “cân” tốt các tựa game mobile hiện hành. ', 'New Product', NULL, NULL, 30, 1, '2020-08-25 23:16:00', '2020-08-25 23:16:00');



CREATE TABLE `productline` (
  `id` int(11) NOT NULL auto_increment primary key,
  `name` varchar(255) COLLATE utf8_unicode_nopad_ci DEFAULT NULL,
  `brandId` int(11) DEFAULT NULL,
  `createDate` timestamp NULL DEFAULT NULL,
  `createUpdate` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_nopad_ci ROW_FORMAT=DYNAMIC;

CREATE TABLE `role` (
  `id` int(11) NOT NULL auto_increment primary key,
  `roleName` varchar(50) NOT NULL,
  `description` varchar(255) NOT NULL,
  `activeFlag` int(1) NOT NULL,
  `createDate` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updateDate` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `role` (`id`, `roleName`, `description`, `activeFlag`, `createDate`, `updateDate`) VALUES
(1, 'admin', 'admin', 1, '2020-08-22 05:24:25', NULL),
(2, 'user', 'user', 1, '2020-08-22 05:24:34', NULL);

CREATE TABLE `roleuser` (
  `userId` int(11) NOT NULL,
  `roleId` int(11) NOT NULL,
  `activeFlag` int(1) NOT NULL,
  `createDate` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updateDate` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `roleuser` (`userId`, `roleId`, `activeFlag`, `createDate`, `updateDate`) VALUES
(1, 1, 1, '2020-08-01 05:25:04', NULL),
(2, 2, 1, '2020-08-14 05:25:08', NULL),
(7, 1, 0, '2020-08-22 08:00:47', NULL);

CREATE TABLE `users` (
  `id` int(11) NOT NULL auto_increment primary key,
  `username` varchar(50) NOT NULL,
  `password` varchar(100) NOT NULL,
  `email` varchar(100) DEFAULT NULL,
  `name` varchar(100) NOT NULL,
  `activeFlag` int(1) NOT NULL DEFAULT 1,
  `createDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `updateDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `users` (`id`, `username`, `password`, `email`, `name`, `activeFlag`, `createDate`, `updateDate`) VALUES
(1, 'dat', '123456', 'dat@gmail.com', 'Dat', 1, '2020-08-01 02:59:10', '2020-08-02 02:59:14'),
(2, 'ngoc', '456789', 'ngoc@gmail.com', 'Ngoc', 1, '2020-08-01 09:21:50', '2020-08-07 09:21:53')
;

