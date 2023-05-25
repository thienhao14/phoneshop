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
(1, 'iPhone', NULL, 1, '2023-05-18 00:00:00', '2023-05-18 00:00:00', 1),
(2, 'Samsung', NULL, 1, '2023-05-18 00:00:00', '2023-05-18 00:00:00', 1);

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
(1, 'Điện Thoại', '1', '1', 1, '2023-05-18 00:00:00', NULL),
(2, 'Laptop', '2', '2', 1, '2023-05-18 00:00:00', NULL);

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
(1, 1, 1, 'iPhone 14 Pro Max', '#iphone', '26690000.00000', '200000.00', 'iPhone 14 Pro Max một siêu phẩm trong giới smartphone', 'iPhone 14 Pro Max một siêu phẩm trong giới smartphone', NULL, NULL, 50, 1, '2023-05-18 00:00:00', '2023-05-18 00:00:00');

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
(1, 'admin', 'admin', 1, '2023-05-18 00:00:00', NULL),
(2, 'user', 'user', 1, '2023-05-18 00:00:00', NULL);

CREATE TABLE `roleuser` (
  `userId` int(11) NOT NULL,
  `roleId` int(11) NOT NULL,
  `activeFlag` int(1) NOT NULL,
  `createDate` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updateDate` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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
(1, 'Hao', '123', 'hao@gmail.com', 'Hao', 1, '2023-05-18 00:00:00', '2023-05-18 00:00:00'),
(2, 'Hang', '123', 'hang@gmail.com', 'Hang', 1, '2023-05-18 00:00:00', '2023-05-18 00:00:00');

