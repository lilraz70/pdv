-- -------------------------------------------------------------
-- TablePlus 5.8.4(532)
--
-- https://tableplus.com/
--
-- Database: v5
-- Generation Time: 2024-01-22 09:26:10.1080
-- -------------------------------------------------------------


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


CREATE TABLE `failed_jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `queue` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint unsigned NOT NULL,
  `reserved_at` int unsigned DEFAULT NULL,
  `available_at` int unsigned NOT NULL,
  `created_at` int unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `jobs_queue_index` (`queue`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=76 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `nexopos_coupons` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'discount',
  `discount_value` double(18,5) NOT NULL DEFAULT '0.00000',
  `valid_until` datetime DEFAULT NULL,
  `minimum_cart_value` double(18,5) DEFAULT '0.00000',
  `maximum_cart_value` double(18,5) DEFAULT '0.00000',
  `valid_hours_start` datetime DEFAULT NULL,
  `valid_hours_end` datetime DEFAULT NULL,
  `limit_usage` double(18,5) NOT NULL DEFAULT '0.00000',
  `groups_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customers_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `author` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `nexopos_coupons_categories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `coupon_id` int NOT NULL,
  `category_id` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `nexopos_coupons_customers` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `coupon_id` int NOT NULL,
  `customer_id` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `nexopos_coupons_customers_groups` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `coupon_id` int NOT NULL,
  `group_id` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `nexopos_coupons_products` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `coupon_id` int NOT NULL,
  `product_id` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `nexopos_customers_account_history` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `customer_id` int NOT NULL,
  `order_id` int DEFAULT NULL,
  `previous_amount` double(8,2) NOT NULL DEFAULT '0.00',
  `amount` double(8,2) NOT NULL DEFAULT '0.00',
  `next_amount` double(8,2) NOT NULL DEFAULT '0.00',
  `operation` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `author` int NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `nexopos_customers_addresses` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `customer_id` int NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `first_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address_1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address_2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pobox` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `author` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `nexopos_customers_coupons` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `usage` int NOT NULL DEFAULT '0',
  `limit_usage` int NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `coupon_id` int NOT NULL,
  `customer_id` int NOT NULL,
  `author` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `nexopos_customers_groups` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `reward_system_id` int DEFAULT '0',
  `minimal_credit_payment` int NOT NULL DEFAULT '0',
  `author` int NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `nexopos_customers_rewards` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `customer_id` int NOT NULL,
  `reward_id` int NOT NULL,
  `reward_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `points` double(18,5) NOT NULL,
  `target` double(18,5) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `nexopos_dashboard_days` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `total_unpaid_orders` double(18,5) NOT NULL DEFAULT '0.00000',
  `day_unpaid_orders` double(18,5) NOT NULL DEFAULT '0.00000',
  `total_unpaid_orders_count` double(18,5) NOT NULL DEFAULT '0.00000',
  `day_unpaid_orders_count` double(18,5) NOT NULL DEFAULT '0.00000',
  `total_paid_orders` double(18,5) NOT NULL DEFAULT '0.00000',
  `day_paid_orders` double(18,5) NOT NULL DEFAULT '0.00000',
  `total_paid_orders_count` double(18,5) NOT NULL DEFAULT '0.00000',
  `day_paid_orders_count` double(18,5) NOT NULL DEFAULT '0.00000',
  `total_partially_paid_orders` double(18,5) NOT NULL DEFAULT '0.00000',
  `day_partially_paid_orders` double(18,5) NOT NULL DEFAULT '0.00000',
  `total_partially_paid_orders_count` double(18,5) NOT NULL DEFAULT '0.00000',
  `day_partially_paid_orders_count` double(18,5) NOT NULL DEFAULT '0.00000',
  `total_income` double(18,5) NOT NULL DEFAULT '0.00000',
  `day_income` double(18,5) NOT NULL DEFAULT '0.00000',
  `total_discounts` double(18,5) NOT NULL DEFAULT '0.00000',
  `day_discounts` double(18,5) NOT NULL DEFAULT '0.00000',
  `day_taxes` double(18,5) NOT NULL DEFAULT '0.00000',
  `total_taxes` double(18,5) NOT NULL DEFAULT '0.00000',
  `total_wasted_goods_count` double(18,5) NOT NULL DEFAULT '0.00000',
  `day_wasted_goods_count` double(18,5) NOT NULL DEFAULT '0.00000',
  `total_wasted_goods` double(18,5) NOT NULL DEFAULT '0.00000',
  `day_wasted_goods` double(18,5) NOT NULL DEFAULT '0.00000',
  `total_expenses` double(18,5) NOT NULL DEFAULT '0.00000',
  `day_expenses` double(18,5) NOT NULL DEFAULT '0.00000',
  `day_of_year` int NOT NULL DEFAULT '0',
  `range_starts` datetime DEFAULT NULL,
  `range_ends` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `nexopos_dashboard_months` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `month_taxes` double(18,5) NOT NULL DEFAULT '0.00000',
  `month_unpaid_orders` double(18,5) NOT NULL DEFAULT '0.00000',
  `month_unpaid_orders_count` double(18,5) NOT NULL DEFAULT '0.00000',
  `month_paid_orders` double(18,5) NOT NULL DEFAULT '0.00000',
  `month_paid_orders_count` double(18,5) NOT NULL DEFAULT '0.00000',
  `month_partially_paid_orders` double(18,5) NOT NULL DEFAULT '0.00000',
  `month_partially_paid_orders_count` double(18,5) NOT NULL DEFAULT '0.00000',
  `month_income` double(18,5) NOT NULL DEFAULT '0.00000',
  `month_discounts` double(18,5) NOT NULL DEFAULT '0.00000',
  `month_wasted_goods_count` double(18,5) NOT NULL DEFAULT '0.00000',
  `month_wasted_goods` double(18,5) NOT NULL DEFAULT '0.00000',
  `month_expenses` double(18,5) NOT NULL DEFAULT '0.00000',
  `total_wasted_goods` double(18,5) NOT NULL DEFAULT '0.00000',
  `total_unpaid_orders` double(18,5) NOT NULL DEFAULT '0.00000',
  `total_unpaid_orders_count` double(18,5) NOT NULL DEFAULT '0.00000',
  `total_paid_orders` double(18,5) NOT NULL DEFAULT '0.00000',
  `total_paid_orders_count` double(18,5) NOT NULL DEFAULT '0.00000',
  `total_partially_paid_orders` double(18,5) NOT NULL DEFAULT '0.00000',
  `total_partially_paid_orders_count` double(18,5) NOT NULL DEFAULT '0.00000',
  `total_income` double(18,5) NOT NULL DEFAULT '0.00000',
  `total_discounts` double(18,5) NOT NULL DEFAULT '0.00000',
  `total_taxes` double(18,5) NOT NULL DEFAULT '0.00000',
  `total_wasted_goods_count` double(18,5) NOT NULL DEFAULT '0.00000',
  `total_expenses` double(18,5) NOT NULL DEFAULT '0.00000',
  `month_of_year` int NOT NULL DEFAULT '0',
  `range_starts` datetime NOT NULL,
  `range_ends` datetime NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `nexopos_dashboard_weeks` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `total_gross_income` double(18,5) NOT NULL DEFAULT '0.00000',
  `total_taxes` double(18,5) NOT NULL DEFAULT '0.00000',
  `total_expenses` double(18,5) NOT NULL DEFAULT '0.00000',
  `total_net_income` double(18,5) NOT NULL DEFAULT '0.00000',
  `week_number` int NOT NULL DEFAULT '0',
  `range_starts` datetime DEFAULT NULL,
  `range_ends` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `nexopos_medias` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `extension` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `nexopos_medias_name_unique` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `nexopos_modules_migrations` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `namespace` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `file` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `nexopos_notifications` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `identifier` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '#',
  `source` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'system',
  `dismissable` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `nexopos_options` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int DEFAULT NULL,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci,
  `expire_on` datetime DEFAULT NULL,
  `array` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `nexopos_orders` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `description` text COLLATE utf8mb4_unicode_ci,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `process_status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `delivery_status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `discount` double(18,5) NOT NULL DEFAULT '0.00000',
  `discount_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `support_instalments` tinyint(1) NOT NULL DEFAULT '1',
  `discount_percentage` double(18,5) DEFAULT NULL,
  `shipping` double(18,5) NOT NULL DEFAULT '0.00000',
  `shipping_rate` double(18,5) NOT NULL DEFAULT '0.00000',
  `shipping_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `total_without_tax` double(18,5) NOT NULL DEFAULT '0.00000',
  `subtotal` double(18,5) NOT NULL DEFAULT '0.00000',
  `total_with_tax` double(18,5) NOT NULL DEFAULT '0.00000',
  `total_coupons` double(18,5) NOT NULL DEFAULT '0.00000',
  `total` double(18,5) NOT NULL DEFAULT '0.00000',
  `tax_value` double(18,5) NOT NULL DEFAULT '0.00000',
  `products_tax_value` double(8,2) NOT NULL DEFAULT '0.00',
  `total_tax_value` double(8,2) NOT NULL DEFAULT '0.00',
  `tax_group_id` int DEFAULT NULL,
  `tax_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tendered` double(18,5) NOT NULL DEFAULT '0.00000',
  `change` double(18,5) NOT NULL DEFAULT '0.00000',
  `final_payment_date` datetime DEFAULT NULL,
  `total_instalments` int NOT NULL DEFAULT '0',
  `customer_id` int NOT NULL,
  `note` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `note_visibility` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `author` int NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `register_id` int DEFAULT NULL,
  `voidance_reason` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `nexopos_orders_addresses` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `order_id` int NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `first_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address_1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address_2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pobox` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `author` int NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `nexopos_orders_count` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `count` int NOT NULL,
  `date` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `nexopos_orders_coupons` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_coupon_id` int NOT NULL,
  `coupon_id` int NOT NULL,
  `order_id` int NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `discount_value` double(18,5) NOT NULL,
  `minimum_cart_value` double(18,5) NOT NULL DEFAULT '0.00000',
  `maximum_cart_value` double(18,5) NOT NULL DEFAULT '0.00000',
  `limit_usage` int NOT NULL DEFAULT '0',
  `value` double(18,5) NOT NULL DEFAULT '0.00000',
  `author` int NOT NULL,
  `counted` tinyint(1) NOT NULL DEFAULT '0',
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `nexopos_orders_instalments` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `amount` double(18,5) NOT NULL DEFAULT '0.00000',
  `order_id` int DEFAULT NULL,
  `paid` tinyint(1) NOT NULL DEFAULT '0',
  `payment_id` int DEFAULT NULL,
  `date` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `nexopos_orders_metas` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `order_id` int NOT NULL,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `author` int NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `nexopos_orders_payments` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `order_id` int NOT NULL,
  `value` double(18,5) NOT NULL DEFAULT '0.00000',
  `author` int NOT NULL,
  `identifier` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `nexopos_orders_products` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `unit_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mode` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'normal',
  `product_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'product',
  `product_id` int NOT NULL,
  `order_id` int NOT NULL,
  `unit_id` int NOT NULL,
  `unit_quantity_id` int NOT NULL,
  `product_category_id` int NOT NULL,
  `procurement_product_id` int DEFAULT NULL,
  `tax_group_id` int NOT NULL DEFAULT '0',
  `tax_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'sold',
  `return_observations` text COLLATE utf8mb4_unicode_ci,
  `return_condition` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `discount_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'none',
  `discount` double(18,5) NOT NULL DEFAULT '0.00000',
  `quantity` double(18,5) NOT NULL,
  `discount_percentage` double(18,5) NOT NULL DEFAULT '0.00000',
  `unit_price` double(18,5) NOT NULL DEFAULT '0.00000',
  `price_with_tax` double(18,5) NOT NULL DEFAULT '0.00000',
  `price_without_tax` double(18,5) NOT NULL DEFAULT '0.00000',
  `wholesale_tax_value` double(18,5) NOT NULL DEFAULT '0.00000',
  `sale_tax_value` double(18,5) NOT NULL DEFAULT '0.00000',
  `tax_value` double(18,5) NOT NULL DEFAULT '0.00000',
  `rate` double(8,2) NOT NULL DEFAULT '0.00',
  `total_price` double(18,5) NOT NULL DEFAULT '0.00000',
  `total_price_with_tax` double(18,5) NOT NULL DEFAULT '0.00000',
  `total_price_without_tax` double(18,5) NOT NULL DEFAULT '0.00000',
  `total_purchase_price` double(18,5) NOT NULL DEFAULT '0.00000',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `nexopos_orders_products_refunds` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `order_id` int NOT NULL,
  `order_refund_id` int NOT NULL,
  `order_product_id` int NOT NULL,
  `unit_id` int NOT NULL,
  `product_id` int NOT NULL,
  `unit_price` double(18,5) NOT NULL,
  `tax_value` double(18,5) NOT NULL DEFAULT '0.00000',
  `quantity` double(18,5) NOT NULL,
  `total_price` double(18,5) NOT NULL,
  `condition` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `author` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `nexopos_orders_refunds` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `order_id` int NOT NULL,
  `author` int NOT NULL,
  `total` double(18,5) NOT NULL,
  `tax_value` double(18,5) NOT NULL DEFAULT '0.00000',
  `shipping` double(18,5) NOT NULL,
  `payment_method` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `nexopos_orders_storage` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `product_id` int DEFAULT NULL,
  `unit_quantity_id` int DEFAULT NULL,
  `unit_id` int DEFAULT NULL,
  `quantity` int DEFAULT NULL,
  `session_identifier` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `nexopos_orders_taxes` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `tax_id` int DEFAULT NULL,
  `order_id` int DEFAULT NULL,
  `rate` double(8,2) NOT NULL,
  `tax_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tax_value` double(8,2) NOT NULL DEFAULT '0.00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `nexopos_payments_types` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `label` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `identifier` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `priority` int NOT NULL DEFAULT '0',
  `description` text COLLATE utf8mb4_unicode_ci,
  `author` int NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `readonly` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `nexopos_permissions` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `namespace` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `nexopos_permissions_name_unique` (`name`),
  UNIQUE KEY `nexopos_permissions_namespace_unique` (`namespace`)
) ENGINE=InnoDB AUTO_INCREMENT=119 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `nexopos_procurements` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `provider_id` int NOT NULL,
  `value` double(18,5) NOT NULL DEFAULT '0.00000',
  `cost` double(18,5) NOT NULL DEFAULT '0.00000',
  `tax_value` double(18,5) NOT NULL DEFAULT '0.00000',
  `invoice_reference` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `automatic_approval` tinyint(1) DEFAULT '0',
  `delivery_time` datetime DEFAULT NULL,
  `invoice_date` datetime DEFAULT NULL,
  `payment_status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'unpaid',
  `delivery_status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `total_items` int NOT NULL DEFAULT '0',
  `description` text COLLATE utf8mb4_unicode_ci,
  `author` int NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `nexopos_procurements_products` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gross_purchase_price` double(18,5) NOT NULL DEFAULT '0.00000',
  `net_purchase_price` double(18,5) NOT NULL DEFAULT '0.00000',
  `procurement_id` int NOT NULL,
  `product_id` int NOT NULL,
  `purchase_price` double(18,5) NOT NULL DEFAULT '0.00000',
  `quantity` double(18,5) NOT NULL,
  `available_quantity` double(18,5) NOT NULL,
  `tax_group_id` int NOT NULL,
  `barcode` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `expiration_date` datetime DEFAULT NULL,
  `tax_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tax_value` double(18,5) NOT NULL DEFAULT '0.00000',
  `total_purchase_price` double(18,5) NOT NULL DEFAULT '0.00000',
  `unit_id` int NOT NULL,
  `convert_unit_id` int DEFAULT NULL,
  `author` int NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `nexopos_products` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tax_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tax_group_id` int DEFAULT NULL,
  `tax_value` double(18,5) NOT NULL DEFAULT '0.00000',
  `product_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'product',
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'tangible',
  `accurate_tracking` tinyint(1) NOT NULL DEFAULT '0',
  `auto_cogs` tinyint(1) NOT NULL DEFAULT '1',
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'available',
  `stock_management` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'enabled',
  `barcode` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `barcode_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sku` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `thumbnail_id` int DEFAULT NULL,
  `category_id` int DEFAULT NULL,
  `parent_id` int NOT NULL DEFAULT '0',
  `unit_group` int NOT NULL,
  `on_expiration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'prevent_sales',
  `expires` tinyint(1) NOT NULL DEFAULT '0',
  `searchable` tinyint(1) NOT NULL DEFAULT '1',
  `author` int NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `nexopos_products_categories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_id` int DEFAULT '0',
  `media_id` int NOT NULL DEFAULT '0',
  `preview_url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `displays_on_pos` tinyint(1) NOT NULL DEFAULT '1',
  `total_items` int NOT NULL DEFAULT '0',
  `description` text COLLATE utf8mb4_unicode_ci,
  `author` int NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `nexopos_products_galleries` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_id` int NOT NULL,
  `media_id` int DEFAULT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` int NOT NULL DEFAULT '0',
  `featured` tinyint(1) NOT NULL DEFAULT '0',
  `author` int NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `nexopos_products_histories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `product_id` int NOT NULL,
  `procurement_id` int DEFAULT NULL,
  `procurement_product_id` int DEFAULT NULL,
  `order_id` int DEFAULT NULL,
  `order_product_id` int DEFAULT NULL,
  `operation_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `unit_id` int NOT NULL,
  `before_quantity` double(18,5) DEFAULT NULL,
  `quantity` double(18,5) NOT NULL,
  `after_quantity` double(18,5) DEFAULT NULL,
  `unit_price` double(18,5) NOT NULL,
  `total_price` double(18,5) NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `author` int NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `nexopos_products_histories_combined` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` date NOT NULL,
  `product_id` int NOT NULL,
  `unit_id` int NOT NULL,
  `initial_quantity` double(8,2) NOT NULL DEFAULT '0.00',
  `sold_quantity` double(8,2) NOT NULL DEFAULT '0.00',
  `procured_quantity` double(8,2) NOT NULL DEFAULT '0.00',
  `defective_quantity` double(8,2) NOT NULL DEFAULT '0.00',
  `final_quantity` double(8,2) NOT NULL DEFAULT '0.00',
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `nexopos_products_metas` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `product_id` int NOT NULL,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci,
  `author` int NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `nexopos_products_subitems` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int NOT NULL,
  `product_id` int NOT NULL,
  `unit_id` int NOT NULL,
  `unit_quantity_id` int NOT NULL,
  `sale_price` double(8,2) NOT NULL DEFAULT '0.00',
  `quantity` double(8,2) NOT NULL DEFAULT '0.00',
  `total_price` double(8,2) NOT NULL DEFAULT '0.00',
  `author` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `nexopos_products_taxes` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `product_id` int NOT NULL,
  `unit_quantity_id` int NOT NULL,
  `tax_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rate` double(18,5) NOT NULL,
  `value` double(18,5) NOT NULL,
  `author` int NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `nexopos_products_unit_quantities` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `product_id` int NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'product',
  `preview_url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `expiration_date` datetime DEFAULT NULL,
  `unit_id` int NOT NULL,
  `barcode` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `quantity` double(18,5) NOT NULL,
  `low_quantity` double(18,5) NOT NULL DEFAULT '0.00000',
  `stock_alert_enabled` tinyint(1) NOT NULL DEFAULT '0',
  `sale_price` double(18,5) NOT NULL DEFAULT '0.00000',
  `sale_price_edit` double(18,5) NOT NULL DEFAULT '0.00000',
  `sale_price_without_tax` double(18,5) NOT NULL DEFAULT '0.00000',
  `sale_price_with_tax` double(18,5) NOT NULL DEFAULT '0.00000',
  `sale_price_tax` double(18,5) NOT NULL DEFAULT '0.00000',
  `wholesale_price` double(18,5) NOT NULL DEFAULT '0.00000',
  `wholesale_price_edit` double(18,5) NOT NULL DEFAULT '0.00000',
  `wholesale_price_with_tax` double(18,5) NOT NULL DEFAULT '0.00000',
  `wholesale_price_without_tax` double(18,5) NOT NULL DEFAULT '0.00000',
  `wholesale_price_tax` double(18,5) NOT NULL DEFAULT '0.00000',
  `custom_price` double(18,5) NOT NULL DEFAULT '0.00000',
  `custom_price_edit` double(18,5) NOT NULL DEFAULT '0.00000',
  `custom_price_with_tax` double(18,5) NOT NULL DEFAULT '0.00000',
  `custom_price_without_tax` double(18,5) NOT NULL DEFAULT '0.00000',
  `custom_price_tax` double(18,5) NOT NULL DEFAULT '0.00000',
  `visible` tinyint(1) NOT NULL DEFAULT '1',
  `convert_unit_id` int DEFAULT NULL,
  `cogs` double(8,2) NOT NULL DEFAULT '0.00',
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `nexopos_providers` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `first_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address_1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address_2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `author` int NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `amount_due` double(18,5) NOT NULL DEFAULT '0.00000',
  `amount_paid` double(18,5) NOT NULL DEFAULT '0.00000',
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `nexopos_providers_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `nexopos_registers` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'closed',
  `description` text COLLATE utf8mb4_unicode_ci,
  `used_by` int DEFAULT NULL,
  `author` int NOT NULL,
  `balance` double(18,5) NOT NULL DEFAULT '0.00000',
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `nexopos_registers_history` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `register_id` int NOT NULL,
  `payment_id` int DEFAULT NULL,
  `payment_type_id` int NOT NULL DEFAULT '0',
  `order_id` int DEFAULT NULL,
  `action` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `author` int NOT NULL,
  `value` double(18,5) NOT NULL DEFAULT '0.00000',
  `description` text COLLATE utf8mb4_unicode_ci,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `balance_before` double(18,5) NOT NULL DEFAULT '0.00000',
  `transaction_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `balance_after` double(18,5) NOT NULL DEFAULT '0.00000',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `nexopos_rewards_system` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `author` int NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `target` double(18,5) NOT NULL DEFAULT '0.00000',
  `description` text COLLATE utf8mb4_unicode_ci,
  `coupon_id` int DEFAULT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `nexopos_rewards_system_rules` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `from` double(18,5) NOT NULL,
  `to` double(18,5) NOT NULL,
  `reward` double(18,5) NOT NULL,
  `reward_id` int NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `author` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `nexopos_role_permission` (
  `permission_id` int NOT NULL,
  `role_id` int NOT NULL,
  PRIMARY KEY (`permission_id`,`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `nexopos_roles` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `namespace` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `reward_system_id` int DEFAULT NULL,
  `minimal_credit_payment` double(8,2) NOT NULL DEFAULT '0.00',
  `author` int DEFAULT NULL,
  `locked` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `nexopos_roles_name_unique` (`name`),
  UNIQUE KEY `nexopos_roles_namespace_unique` (`namespace`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `nexopos_taxes` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `rate` double(18,5) NOT NULL,
  `tax_group_id` int NOT NULL,
  `author` int NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `nexopos_taxes_groups` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `author` int NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `nexopos_transactions` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `account_id` int NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `media_id` int NOT NULL DEFAULT '0',
  `value` double(18,5) NOT NULL DEFAULT '0.00000',
  `recurring` tinyint(1) NOT NULL DEFAULT '0',
  `type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '0',
  `group_id` int DEFAULT NULL,
  `occurrence` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `occurrence_value` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scheduled_date` datetime DEFAULT NULL,
  `author` int NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `nexopos_transactions_accounts` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `operation` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'debit',
  `account` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `description` text COLLATE utf8mb4_unicode_ci,
  `author` int NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `nexopos_transactions_histories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `transaction_id` int DEFAULT NULL,
  `operation` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `transaction_account_id` int DEFAULT NULL,
  `procurement_id` int DEFAULT NULL,
  `order_refund_id` int DEFAULT NULL,
  `order_refund_product_id` int DEFAULT NULL,
  `order_id` int DEFAULT NULL,
  `order_product_id` int DEFAULT NULL,
  `register_history_id` int DEFAULT NULL,
  `customer_account_history_id` int DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `value` double(18,5) NOT NULL DEFAULT '0.00000',
  `author` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `nexopos_units` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `identifier` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `author` int NOT NULL,
  `group_id` int NOT NULL,
  `value` double(18,5) NOT NULL,
  `preview_url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `base_unit` tinyint(1) NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `nexopos_units_identifier_unique` (`identifier`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `nexopos_units_groups` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `author` int NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `nexopos_users` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '0',
  `author` int DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `group_id` int DEFAULT NULL,
  `first_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gender` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pobox` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `activation_expiration` datetime DEFAULT NULL,
  `total_sales_count` int NOT NULL DEFAULT '0',
  `total_sales` double(18,5) NOT NULL DEFAULT '0.00000',
  `birth_date` datetime DEFAULT NULL,
  `purchases_amount` double(8,2) NOT NULL DEFAULT '0.00',
  `owed_amount` double(8,2) NOT NULL DEFAULT '0.00',
  `credit_limit_amount` double(8,2) NOT NULL DEFAULT '0.00',
  `account_amount` double(8,2) NOT NULL DEFAULT '0.00',
  `activation_token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `nexopos_users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `nexopos_users_attributes` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `avatar_link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `theme` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `language` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `nexopos_users_roles_relations` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `role_id` int NOT NULL,
  `user_id` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `nexopos_users_widgets` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `identifier` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `column` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `class_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `position` int NOT NULL,
  `user_id` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `telescope_entries` (
  `sequence` bigint unsigned NOT NULL AUTO_INCREMENT,
  `uuid` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `family_hash` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `should_display_on_index` tinyint(1) NOT NULL DEFAULT '1',
  `type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime DEFAULT NULL,
  PRIMARY KEY (`sequence`),
  UNIQUE KEY `telescope_entries_uuid_unique` (`uuid`),
  KEY `telescope_entries_batch_id_index` (`batch_id`),
  KEY `telescope_entries_family_hash_index` (`family_hash`),
  KEY `telescope_entries_created_at_index` (`created_at`),
  KEY `telescope_entries_type_should_display_on_index_index` (`type`,`should_display_on_index`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `telescope_entries_tags` (
  `entry_uuid` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tag` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  KEY `telescope_entries_tags_entry_uuid_tag_index` (`entry_uuid`,`tag`),
  KEY `telescope_entries_tags_tag_index` (`tag`),
  CONSTRAINT `telescope_entries_tags_entry_uuid_foreign` FOREIGN KEY (`entry_uuid`) REFERENCES `telescope_entries` (`uuid`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `telescope_monitoring` (
  `tag` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `websockets_statistics_entries` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `app_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `peak_connection_count` int NOT NULL,
  `websocket_message_count` int NOT NULL,
  `api_message_count` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `migrations` (`id`, `migration`, `batch`, `type`) VALUES
(1, '2018_08_08_100000_create_telescope_entries_table', 1, NULL),
(2, '2022_10_28_123458_setup_migration_table', 1, NULL),
(3, '2014_10_13_000000_create_users_table', 0, 'core'),
(4, '2017_07_28_130434_create_roles_table', 0, 'core'),
(5, '2017_07_28_130610_create_permissions_table', 0, 'core'),
(6, '2018_08_08_100000_create_telescope_entries_table', 0, 'core'),
(7, '2019_08_19_000000_create_failed_jobs_table', 0, 'core'),
(8, '2020_06_20_000000_create_permissions', 0, 'core'),
(9, '2020_06_20_000000_create_roles', 0, 'core'),
(10, '2020_10_11_122857_create_jobs_table', 0, 'core'),
(11, '2020_11_04_124040_add_new_customers_permission_nov4', 0, 'core'),
(12, '2020_11_11_151614_nov11_create_nexopos_users_attributes_table', 0, 'core'),
(13, '2020_11_12_205243_nov12_create_order_permission', 0, 'core'),
(14, '2020_11_25_203531_nov25_fix_report_permissions_attribution', 0, 'core'),
(15, '2020_12_08_210001_dec8add_new_permissions', 0, 'core'),
(16, '2020_12_19_221434_create_nexopos_modules_migrations_table', 0, 'core'),
(17, '2021_01_07_143635_add_new_customer_permission_janv7_21', 0, 'core'),
(18, '2021_03_09_165538_create_new_permissions_march_9', 0, 'core'),
(19, '2021_05_25_175424_update_add_payment_type_permissions', 0, 'core'),
(20, '2021_05_28_114827_create_new_report_permissions_may28', 0, 'core'),
(21, '2021_06_24_053134_update_permissions_jun24', 0, 'core'),
(22, '2021_07_31_153029_update_dashboard_days_report_jul31', 0, 'core'),
(23, '0000_00_00_000000_create_websockets_statistics_entries_table', 0, 'create'),
(24, '2014_10_12_000000_create_medias_table', 0, 'create'),
(25, '2017_12_29_174613_create_options_table', 0, 'create'),
(26, '2020_06_20_000000_create_customers_groups_table', 0, 'create'),
(27, '2020_06_20_000000_create_customers_table', 0, 'create'),
(28, '2020_06_20_000000_create_expenses_categories_table', 0, 'create'),
(29, '2020_06_20_000000_create_expenses_table', 0, 'create'),
(30, '2020_06_20_000000_create_orders_addresses_table', 0, 'create'),
(31, '2020_06_20_000000_create_orders_coupons_table', 0, 'create'),
(32, '2020_06_20_000000_create_orders_metas_table', 0, 'create'),
(33, '2020_06_20_000000_create_orders_payment_table', 0, 'create'),
(34, '2020_06_20_000000_create_orders_products_table', 0, 'create'),
(35, '2020_06_20_000000_create_orders_table', 0, 'create'),
(36, '2020_06_20_000000_create_procurements_products_table', 0, 'create'),
(37, '2020_06_20_000000_create_procurements_table', 0, 'create'),
(38, '2020_06_20_000000_create_products_categories_table', 0, 'create'),
(39, '2020_06_20_000000_create_products_gallery_table', 0, 'create'),
(40, '2020_06_20_000000_create_products_history_table', 0, 'create'),
(41, '2020_06_20_000000_create_products_metas_table', 0, 'create'),
(42, '2020_06_20_000000_create_products_table', 0, 'create'),
(43, '2020_06_20_000000_create_products_taxes_table', 0, 'create'),
(44, '2020_06_20_000000_create_products_unit_quantities', 0, 'create'),
(45, '2020_06_20_000000_create_providers_table', 0, 'create'),
(46, '2020_06_20_000000_create_registers_history_table', 0, 'create'),
(47, '2020_06_20_000000_create_registers_table', 0, 'create'),
(48, '2020_06_20_000000_create_rewards_system_rules_table', 0, 'create'),
(49, '2020_06_20_000000_create_rewards_system_table', 0, 'create'),
(50, '2020_06_20_000000_create_taxes_table', 0, 'create'),
(51, '2020_06_20_000000_create_units_group_table', 0, 'create'),
(52, '2020_06_20_000000_create_units_table', 0, 'create'),
(53, '2020_08_01_143801_create_customers_coupons_table', 0, 'create'),
(54, '2020_10_10_224639_create_dashboard_table', 0, 'create'),
(55, '2020_10_11_074631_create_nexopos_notifications_table', 0, 'create'),
(56, '2020_10_17_231628_create_nexopos_orders_storage', 0, 'create'),
(57, '2020_10_29_150642_create_nexopos_expenses_history_table', 0, 'create'),
(58, '2020_11_17_120204_nov17_add_fields_to_nexopos_orders_products_table', 0, 'create'),
(59, '2020_12_11_210734_create_nexopos_dashboard_months_table', 0, 'create'),
(60, '2021_01_23_225101_create_coupons_table', 0, 'create'),
(61, '2021_01_23_225713_create_customers_rewards_table', 0, 'create'),
(62, '2021_02_21_144532_create_orders_instalments_table', 0, 'create'),
(63, '2021_02_23_004748_create_new_instalments_permissions', 0, 'create'),
(64, '2021_05_25_131104_create_nexopos_payments_types_table', 0, 'create'),
(65, '2022_01_20_202253_create_user_role_relations_table', 0, 'create'),
(66, '2022_05_13_142039_create_products_group_items_table', 0, 'create'),
(67, '2022_10_12_083552_update_register_history_oct12_22', 0, 'create'),
(68, '2022_10_28_093041_update_expense_table28_oct22', 0, 'create'),
(69, '2022_11_25_071626_create_users_widgets_table', 0, 'create'),
(70, '2023_10_31_120602_stock_history_detailed', 0, 'create'),
(71, '2022_11_28_000259_v5x_general_database_update', 0, 'update'),
(72, '2022_11_30_224820_update_orders_coupon_table', 0, 'update'),
(73, '2023_02_14_123130_update_product_history_table14_fev23', 0, 'update'),
(74, '2023_03_16_214039_update_expense_table', 0, 'update'),
(75, '2023_07_30_235454_fix_wrong_purchase_price_32_jul_23', 0, 'update');

INSERT INTO `nexopos_customers_addresses` (`id`, `customer_id`, `type`, `email`, `first_name`, `last_name`, `phone`, `address_1`, `address_2`, `country`, `city`, `pobox`, `company`, `uuid`, `author`, `created_at`, `updated_at`) VALUES
(1, 33, 'shipping', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 32, '2024-01-20 12:13:36', '2024-01-20 12:13:36'),
(2, 33, 'billing', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 32, '2024-01-20 12:13:36', '2024-01-20 12:13:36');

INSERT INTO `nexopos_customers_groups` (`id`, `name`, `description`, `reward_system_id`, `minimal_credit_payment`, `author`, `uuid`, `created_at`, `updated_at`) VALUES
(1, 'Ordinaire', NULL, NULL, 0, 32, NULL, '2024-01-20 12:12:25', '2024-01-20 12:12:25');

INSERT INTO `nexopos_medias` (`id`, `name`, `extension`, `slug`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'goteysoft-logo', 'png', '2024/01/goteysoft-logo', 32, '2024-01-20 11:56:08', '2024-01-20 11:56:08');

INSERT INTO `nexopos_notifications` (`id`, `user_id`, `identifier`, `title`, `description`, `url`, `source`, `dismissable`, `created_at`, `updated_at`) VALUES
(1, 32, 'ns.notifications.workers-disabled', 'Planification des tâches désactivée', 'GoteysoftPDV ne peut pas planifier les tâches en arrière-plan. Cela peut restreindre certaines fonctionnalités nécessaires. Cliquez ici pour savoir comment le résoudre.', 'https://my.nexopos.com/en/documentation/troubleshooting/workers-or-async-requests-disabled?utm_source=nexopos&utm_campaign=warning&utm_medium=app', 'system', 1, '2024-01-20 11:55:27', '2024-01-22 09:03:59'),
(2, 32, 'ns.notifications.cron-disabled', 'Cron désactivé', 'Cron jobs aren\'t configured correctly on NexoPOS. This might restrict necessary features. Click here to learn how to fix it.', 'https://my.nexopos.com/en/documentation/troubleshooting/workers-or-async-requests-disabled?utm_source=nexopos&utm_campaign=warning&utm_medium=app', 'system', 1, '2024-01-20 11:55:27', '2024-01-22 09:03:59');

INSERT INTO `nexopos_options` (`id`, `user_id`, `key`, `value`, `expire_on`, `array`, `created_at`, `updated_at`) VALUES
(1, NULL, 'ns_registration_enabled', 'no', NULL, 0, '2024-01-20 11:55:17', '2024-01-20 11:55:17'),
(2, NULL, 'ns_store_name', 'GoteysoftPDV', NULL, 0, '2024-01-20 11:55:17', '2024-01-20 11:56:48'),
(3, NULL, 'ns_pos_order_types', '[\"takeaway\",\"delivery\"]', NULL, 1, '2024-01-20 11:55:17', '2024-01-20 11:55:17'),
(4, NULL, 'ns_store_language', 'fr', NULL, 0, '2024-01-20 11:55:17', '2024-01-20 11:55:17'),
(5, NULL, 'ns_store_square_logo', 'http://127.0.0.1:8000/storage/2024/01/goteysoft-logo.png', NULL, 0, '2024-01-20 11:56:48', '2024-01-20 11:56:48'),
(6, NULL, 'ns_store_rectangle_logo', 'http://127.0.0.1:8000/storage/2024/01/goteysoft-logo.png', NULL, 0, '2024-01-20 11:56:48', '2024-01-20 11:56:48'),
(7, NULL, 'ns_currency_symbol', 'CFA', NULL, 0, '2024-01-20 11:56:48', '2024-01-20 11:56:48'),
(8, NULL, 'ns_currency_iso', 'Franc CFA', NULL, 0, '2024-01-20 11:56:48', '2024-01-20 11:56:48'),
(9, NULL, 'ns_currency_thousand_separator', '.', NULL, 0, '2024-01-20 11:56:48', '2024-01-20 11:56:48'),
(10, NULL, 'ns_currency_decimal_separator', ',', NULL, 0, '2024-01-20 11:56:48', '2024-01-20 11:56:48'),
(11, NULL, 'ns_date_format', 'd M Y', NULL, 0, '2024-01-20 11:57:06', '2024-01-20 11:57:06'),
(12, NULL, 'ns_datetime_format', 'd M Y, H:i', NULL, 0, '2024-01-20 11:57:06', '2024-01-20 11:57:06'),
(13, NULL, 'ns_datetime_timezone', 'Africa/Ouagadougou', NULL, 0, '2024-01-20 11:57:06', '2024-01-20 11:57:06'),
(14, NULL, 'ns_currency_prefered', 'iso', NULL, 0, '2024-01-20 12:22:09', '2024-01-20 12:22:09'),
(15, NULL, 'ns_registration_role', '4', NULL, 0, '2024-01-20 12:27:26', '2024-01-20 12:27:26'),
(16, NULL, 'ns_registration_validated', 'yes', NULL, 0, '2024-01-20 12:27:26', '2024-01-20 12:27:26'),
(17, NULL, 'ns_recovery_enabled', 'yes', NULL, 0, '2024-01-20 12:27:26', '2024-01-20 12:27:26'),
(18, NULL, 'ns_currency_position', 'after', NULL, 0, '2024-01-20 12:27:38', '2024-01-20 12:27:38'),
(19, NULL, 'ns_pos_layout', 'grocery_shop', NULL, 0, '2024-01-20 12:28:09', '2024-01-20 12:28:09'),
(20, NULL, 'ns_pos_complete_sale_audio', 'http://127.0.0.1:8000/audio/cash-sound.mp3', NULL, 0, '2024-01-20 12:28:09', '2024-01-20 12:28:09'),
(21, NULL, 'ns_pos_new_item_audio', 'http://127.0.0.1:8000/audio/cash-sound.mp3', NULL, 0, '2024-01-20 12:28:09', '2024-01-20 12:28:09'),
(22, NULL, 'ns_pos_printing_enabled_for', 'all_orders', NULL, 0, '2024-01-20 12:29:08', '2024-01-20 12:29:08'),
(23, NULL, 'ns_pos_vat', 'disabled', NULL, 0, '2024-01-20 12:32:34', '2024-01-20 12:32:34'),
(24, NULL, 'ns_customers_rewards_enabled', 'no', NULL, 0, '2024-01-20 12:41:37', '2024-01-20 12:41:37'),
(25, NULL, 'ns_customers_force_valid_email', 'no', NULL, 0, '2024-01-20 12:41:37', '2024-01-20 12:41:37'),
(26, NULL, 'ns_customers_force_unique_phone', 'no', NULL, 0, '2024-01-20 12:41:37', '2024-01-20 12:41:37'),
(27, NULL, 'ns_customers_default', '33', NULL, 0, '2024-01-20 12:41:37', '2024-01-20 12:41:37'),
(28, NULL, 'ns_customers_default_group', '1', NULL, 0, '2024-01-20 12:41:37', '2024-01-20 12:41:37'),
(29, NULL, 'ns_customers_credit_enabled', 'no', NULL, 0, '2024-01-20 12:41:37', '2024-01-20 12:41:37');

INSERT INTO `nexopos_payments_types` (`id`, `label`, `identifier`, `priority`, `description`, `author`, `active`, `readonly`, `created_at`, `updated_at`) VALUES
(1, 'Espèces', 'cash-payment', 0, NULL, 32, 1, 1, '2024-01-20 11:55:17', '2024-01-20 11:55:17'),
(2, 'Paiement bancaire', 'bank-payment', 0, NULL, 32, 1, 1, '2024-01-20 11:55:17', '2024-01-20 11:55:17'),
(3, 'Compte client', 'account-payment', 0, NULL, 32, 1, 1, '2024-01-20 11:55:17', '2024-01-20 11:55:17');

INSERT INTO `nexopos_permissions` (`id`, `name`, `namespace`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Create Users', 'create.users', 'Can create users', '2024-01-20 11:55:16', '2024-01-20 11:55:16'),
(2, 'Read Users', 'read.users', 'Can read users', '2024-01-20 11:55:16', '2024-01-20 11:55:16'),
(3, 'Update Users', 'update.users', 'Can update users', '2024-01-20 11:55:16', '2024-01-20 11:55:16'),
(4, 'Delete Users', 'delete.users', 'Can delete users', '2024-01-20 11:55:16', '2024-01-20 11:55:16'),
(5, 'Create Roles', 'create.roles', 'Can create roles', '2024-01-20 11:55:16', '2024-01-20 11:55:16'),
(6, 'Read Roles', 'read.roles', 'Can read roles', '2024-01-20 11:55:16', '2024-01-20 11:55:16'),
(7, 'Update Roles', 'update.roles', 'Can update roles', '2024-01-20 11:55:16', '2024-01-20 11:55:16'),
(8, 'Delete Roles', 'delete.roles', 'Can delete roles', '2024-01-20 11:55:16', '2024-01-20 11:55:16'),
(9, 'Update Core', 'update.core', 'Can update core', '2024-01-20 11:55:16', '2024-01-20 11:55:16'),
(10, 'Manage Profile', 'manage.profile', 'Can manage profile', '2024-01-20 11:55:16', '2024-01-20 11:55:16'),
(11, 'Manage Modules', 'manage.modules', 'Can manage module : install, delete, update, migrate, enable, disable', '2024-01-20 11:55:16', '2024-01-20 11:55:16'),
(12, 'Manage Options', 'manage.options', 'Can manage options : read, update', '2024-01-20 11:55:16', '2024-01-20 11:55:16'),
(13, 'View Dashboard', 'read.dashboard', 'Can access the dashboard and see metrics', '2024-01-20 11:55:16', '2024-01-20 11:55:16'),
(14, 'Upload Medias', 'nexopos.upload.medias', 'Let the user upload medias.', '2024-01-20 11:55:16', '2024-01-20 11:55:16'),
(15, 'See Medias', 'nexopos.see.medias', 'Let the user see medias.', '2024-01-20 11:55:16', '2024-01-20 11:55:16'),
(16, 'Delete Medias', 'nexopos.delete.medias', 'Let the user delete medias.', '2024-01-20 11:55:16', '2024-01-20 11:55:16'),
(17, 'Update Medias', 'nexopos.update.medias', 'Let the user update uploaded medias.', '2024-01-20 11:55:16', '2024-01-20 11:55:16'),
(18, 'Créer des catégories', 'nexopos.create.categories', 'Let the user create products categories.', '2024-01-20 11:55:16', '2024-01-20 11:55:16'),
(19, 'Delete Categories', 'nexopos.delete.categories', 'Let the user delete products categories.', '2024-01-20 11:55:16', '2024-01-20 11:55:16'),
(20, 'Update Categories', 'nexopos.update.categories', 'Let the user update products categories.', '2024-01-20 11:55:16', '2024-01-20 11:55:16'),
(21, 'Read Categories', 'nexopos.read.categories', 'Let the user read products categories.', '2024-01-20 11:55:16', '2024-01-20 11:55:16'),
(22, 'Create Customers', 'nexopos.create.customers', 'Let the user create customers.', '2024-01-20 11:55:16', '2024-01-20 11:55:16'),
(23, 'Delete Customers', 'nexopos.delete.customers', 'Let the user delete customers.', '2024-01-20 11:55:16', '2024-01-20 11:55:16'),
(24, 'Update Customers', 'nexopos.update.customers', 'Let the user update customers.', '2024-01-20 11:55:16', '2024-01-20 11:55:16'),
(25, 'Read Customers', 'nexopos.read.customers', 'Let the user read customers.', '2024-01-20 11:55:16', '2024-01-20 11:55:16'),
(26, 'Import Customers', 'nexopos.import.customers', 'Let the user import customers.', '2024-01-20 11:55:16', '2024-01-20 11:55:16'),
(27, 'Manage Customer Account History', 'nexopos.customers.manage-account-history', 'Can add, deduct amount from each customers account.', '2024-01-20 11:55:16', '2024-01-20 11:55:16'),
(28, 'Create Customers Groups', 'nexopos.create.customers-groups', 'Let the user create Customers Groups', '2024-01-20 11:55:16', '2024-01-20 11:55:16'),
(29, 'Delete Customers Groups', 'nexopos.delete.customers-groups', 'Let the user delete Customers Groups', '2024-01-20 11:55:16', '2024-01-20 11:55:16'),
(30, 'Update Customers Groups', 'nexopos.update.customers-groups', 'Let the user update Customers Groups', '2024-01-20 11:55:16', '2024-01-20 11:55:16'),
(31, 'Read Customers Groups', 'nexopos.read.customers-groups', 'Let the user read Customers Groups', '2024-01-20 11:55:16', '2024-01-20 11:55:16'),
(32, 'Create Coupons', 'nexopos.create.coupons', 'Let the user create coupons', '2024-01-20 11:55:16', '2024-01-20 11:55:16'),
(33, 'Delete Coupons', 'nexopos.delete.coupons', 'Let the user delete coupons', '2024-01-20 11:55:16', '2024-01-20 11:55:16'),
(34, 'Update Coupons', 'nexopos.update.coupons', 'Let the user update coupons', '2024-01-20 11:55:16', '2024-01-20 11:55:16'),
(35, 'Read Coupons', 'nexopos.read.coupons', 'Let the user read coupons', '2024-01-20 11:55:16', '2024-01-20 11:55:16'),
(36, 'Create Transaction Account', 'nexopos.create.transactions-account', 'Let the user create transactions account', '2024-01-20 11:55:16', '2024-01-20 11:55:16'),
(37, 'Delete Transactions Account', 'nexopos.delete.transactions-account', 'Let the user delete Transaction Account', '2024-01-20 11:55:16', '2024-01-20 11:55:16'),
(38, 'Update Transactions Account', 'nexopos.update.transactions-account', 'Let the user update Transaction Account', '2024-01-20 11:55:16', '2024-01-20 11:55:16'),
(39, 'Read Transactions Account', 'nexopos.read.transactions-account', 'Let the user read Transaction Account', '2024-01-20 11:55:16', '2024-01-20 11:55:16'),
(40, 'Créer une transaction', 'nexopos.create.transactions', 'Let the user create transactions', '2024-01-20 11:55:16', '2024-01-20 11:55:16'),
(41, 'Delete Transaction', 'nexopos.delete.transactions', 'Let the user delete transactions', '2024-01-20 11:55:16', '2024-01-20 11:55:16'),
(42, 'Mettre à jour la transaction', 'nexopos.update.transactions', 'Let the user update transactions', '2024-01-20 11:55:16', '2024-01-20 11:55:16'),
(43, 'Read Transaction', 'nexopos.read.transactions', 'Let the user read transactions', '2024-01-20 11:55:17', '2024-01-20 11:55:17'),
(44, 'Read Transactions History', 'nexopos.read.transactions-history', 'Give access to the transactions history.', '2024-01-20 11:55:17', '2024-01-20 11:55:17'),
(45, 'Delete Transactions History', 'nexopos.delete.transactions-history', 'Allow to delete an Transactions History.', '2024-01-20 11:55:17', '2024-01-20 11:55:17'),
(46, 'Update Transactions History', 'nexopos.update.transactions-history', 'Allow to the Transactions History.', '2024-01-20 11:55:17', '2024-01-20 11:55:17'),
(47, 'Create Transactions History', 'nexopos.create.transactions-history', 'Allow to create a Transactions History.', '2024-01-20 11:55:17', '2024-01-20 11:55:17'),
(48, 'Create Orders', 'nexopos.create.orders', 'Let the user create orders', '2024-01-20 11:55:17', '2024-01-20 11:55:17'),
(49, 'Delete Orders', 'nexopos.delete.orders', 'Let the user delete orders', '2024-01-20 11:55:17', '2024-01-20 11:55:17'),
(50, 'Update Orders', 'nexopos.update.orders', 'Let the user update orders', '2024-01-20 11:55:17', '2024-01-20 11:55:17'),
(51, 'Read Orders', 'nexopos.read.orders', 'Let the user read orders', '2024-01-20 11:55:17', '2024-01-20 11:55:17'),
(52, 'Void Order', 'nexopos.void.orders', 'Let the user void orders', '2024-01-20 11:55:17', '2024-01-20 11:55:17'),
(53, 'Refund Order', 'nexopos.refund.orders', 'Let the user refund orders', '2024-01-20 11:55:17', '2024-01-20 11:55:17'),
(54, 'Make Payment To orders', 'nexopos.make-payment.orders', 'Allow the user to make payments to orders.', '2024-01-20 11:55:17', '2024-01-20 11:55:17'),
(55, 'Créer des approvisionnements', 'nexopos.create.procurements', 'Let the user create procurements', '2024-01-20 11:55:17', '2024-01-20 11:55:17'),
(56, 'Delete Procurements', 'nexopos.delete.procurements', 'Let the user delete procurements', '2024-01-20 11:55:17', '2024-01-20 11:55:17'),
(57, 'Update Procurements', 'nexopos.update.procurements', 'Let the user update procurements', '2024-01-20 11:55:17', '2024-01-20 11:55:17'),
(58, 'Read Procurements', 'nexopos.read.procurements', 'Let the user read procurements', '2024-01-20 11:55:17', '2024-01-20 11:55:17'),
(59, 'Create Providers', 'nexopos.create.providers', 'Let the user create providers', '2024-01-20 11:55:17', '2024-01-20 11:55:17'),
(60, 'Delete Providers', 'nexopos.delete.providers', 'Let the user delete providers', '2024-01-20 11:55:17', '2024-01-20 11:55:17'),
(61, 'Update Providers', 'nexopos.update.providers', 'Let the user update providers', '2024-01-20 11:55:17', '2024-01-20 11:55:17'),
(62, 'Read Providers', 'nexopos.read.providers', 'Let the user read providers', '2024-01-20 11:55:17', '2024-01-20 11:55:17'),
(63, 'Create Products', 'nexopos.create.products', 'Let the user create products', '2024-01-20 11:55:17', '2024-01-20 11:55:17'),
(64, 'Delete Products', 'nexopos.delete.products', 'Let the user delete products', '2024-01-20 11:55:17', '2024-01-20 11:55:17'),
(65, 'Update Products', 'nexopos.update.products', 'Let the user update products', '2024-01-20 11:55:17', '2024-01-20 11:55:17'),
(66, 'Read Products', 'nexopos.read.products', 'Let the user read products', '2024-01-20 11:55:17', '2024-01-20 11:55:17'),
(67, 'Read Product History', 'nexopos.read.products-history', 'Let the user read products history', '2024-01-20 11:55:17', '2024-01-20 11:55:17'),
(68, 'Adjust Product Stock', 'nexopos.make.products-adjustments', 'Let the user adjust product stock.', '2024-01-20 11:55:17', '2024-01-20 11:55:17'),
(69, 'Create Product Units/Unit Group', 'nexopos.create.products-units', 'Let the user create products units.', '2024-01-20 11:55:17', '2024-01-20 11:55:17'),
(70, 'Read Product Units/Unit Group', 'nexopos.read.products-units', 'Let the user read products units.', '2024-01-20 11:55:17', '2024-01-20 11:55:17'),
(71, 'Update Product Units/Unit Group', 'nexopos.update.products-units', 'Let the user update products units.', '2024-01-20 11:55:17', '2024-01-20 11:55:17'),
(72, 'Delete Product Units/Unit Group', 'nexopos.delete.products-units', 'Let the user delete products units.', '2024-01-20 11:55:17', '2024-01-20 11:55:17'),
(73, 'Create Registers', 'nexopos.create.registers', 'Let the user create registers', '2024-01-20 11:55:17', '2024-01-20 11:55:17'),
(74, 'Delete Registers', 'nexopos.delete.registers', 'Let the user delete registers', '2024-01-20 11:55:17', '2024-01-20 11:55:17'),
(75, 'Update Registers', 'nexopos.update.registers', 'Let the user update registers', '2024-01-20 11:55:17', '2024-01-20 11:55:17'),
(76, 'Read Registers', 'nexopos.read.registers', 'Let the user read registers', '2024-01-20 11:55:17', '2024-01-20 11:55:17'),
(77, 'Read Registers History', 'nexopos.read.registers-history', 'Let the user read registers history', '2024-01-20 11:55:17', '2024-01-20 11:55:17'),
(78, 'Read Use Registers', 'nexopos.use.registers', 'Let the user use registers', '2024-01-20 11:55:17', '2024-01-20 11:55:17'),
(79, 'Create Rewards', 'nexopos.create.rewards', 'Let the user create Rewards', '2024-01-20 11:55:17', '2024-01-20 11:55:17'),
(80, 'Delete Rewards', 'nexopos.delete.rewards', 'Let the user delete Rewards', '2024-01-20 11:55:17', '2024-01-20 11:55:17'),
(81, 'Update Rewards', 'nexopos.update.rewards', 'Let the user update Rewards', '2024-01-20 11:55:17', '2024-01-20 11:55:17'),
(82, 'Read Rewards', 'nexopos.read.rewards', 'Let the user read Rewards', '2024-01-20 11:55:17', '2024-01-20 11:55:17'),
(83, 'Create Taxes', 'nexopos.create.taxes', 'Let the user create taxes', '2024-01-20 11:55:17', '2024-01-20 11:55:17'),
(84, 'Delete Taxes', 'nexopos.delete.taxes', 'Let the user delete taxes', '2024-01-20 11:55:17', '2024-01-20 11:55:17'),
(85, 'Update Taxes', 'nexopos.update.taxes', 'Let the user update taxes', '2024-01-20 11:55:17', '2024-01-20 11:55:17'),
(86, 'Read Taxes', 'nexopos.read.taxes', 'Let the user read taxes', '2024-01-20 11:55:17', '2024-01-20 11:55:17'),
(87, 'See Sale Report', 'nexopos.reports.sales', 'Let you see the sales report', '2024-01-20 11:55:17', '2024-01-20 11:55:17'),
(88, 'See Products Report', 'nexopos.reports.products-report', 'Let you see the Products report', '2024-01-20 11:55:17', '2024-01-20 11:55:17'),
(89, 'See Best Report', 'nexopos.reports.best_sales', 'Let you see the best_sales report', '2024-01-20 11:55:17', '2024-01-20 11:55:17'),
(90, 'See Transaction Report', 'nexopos.reports.transactions', 'Let you see the transactions report', '2024-01-20 11:55:17', '2024-01-20 11:55:17'),
(91, 'See Yearly Sales', 'nexopos.reports.yearly', 'Allow to see the yearly sales.', '2024-01-20 11:55:17', '2024-01-20 11:55:17'),
(92, 'See Customers', 'nexopos.reports.customers', 'Allow to see the customers', '2024-01-20 11:55:17', '2024-01-20 11:55:17'),
(93, 'See Inventory Tracking', 'nexopos.reports.inventory', 'Allow to see the inventory', '2024-01-20 11:55:17', '2024-01-20 11:55:17'),
(94, 'See Customers Statement', 'nexopos.reports.customers-statement', 'Allow to see the customers statement.', '2024-01-20 11:55:17', '2024-01-20 11:55:17'),
(95, 'Read Sales by Payment Types', 'nexopos.reports.payment-types', 'Let the user read the report that shows sales by payment types.', '2024-01-20 11:55:17', '2024-01-20 11:55:17'),
(96, 'Read Low Stock Report', 'nexopos.reports.low-stock', 'Let the user read the report that shows low stock.', '2024-01-20 11:55:17', '2024-01-20 11:55:17'),
(97, 'Read Stock History', 'nexopos.reports.stock-history', 'Let the user read the stock history report.', '2024-01-20 11:55:17', '2024-01-20 11:55:17'),
(98, 'Manage Order Payments', 'nexopos.manage-payments-types', 'Allow to create, update and delete payments type.', '2024-01-20 11:55:17', '2024-01-20 11:55:17'),
(99, 'Edit Purchase Price', 'nexopos.pos.edit-purchase-price', 'Let the user edit the purchase price of products.', '2024-01-20 11:55:17', '2024-01-20 11:55:17'),
(100, 'Edit Order Settings', 'nexopos.pos.edit-settings', 'Let the user edit the order settings.', '2024-01-20 11:55:17', '2024-01-20 11:55:17'),
(101, 'Edit Product Discounts', 'nexopos.pos.products-discount', 'Let the user add discount on products.', '2024-01-20 11:55:17', '2024-01-20 11:55:17'),
(102, 'Edit Cart Discounts', 'nexopos.pos.cart-discount', 'Let the user add discount on cart.', '2024-01-20 11:55:17', '2024-01-20 11:55:17'),
(103, 'Widget: Widget de carte de ventes incomplètes', 'nexopos.see.incomplete-sale-card-widget', 'Affichera une carte des ventes incomplètes actuelles et globales.', '2024-01-20 11:55:17', '2024-01-20 11:55:17'),
(104, 'Widget: Widget de carte de dépenses', 'nexopos.see.expense-card-widget', 'Will display a card of current and overwall expenses.', '2024-01-20 11:55:17', '2024-01-20 11:55:17'),
(105, 'Widget: Widget de carte de vente', 'nexopos.see.sale-card-widget', 'Affichera les ventes actuelles et globales.', '2024-01-20 11:55:17', '2024-01-20 11:55:17'),
(106, 'Widget: Meilleurs clients', 'nexopos.see.best-customers-widget', 'Affichera tous les clients ayant effectué les achats les plus importants.', '2024-01-20 11:55:17', '2024-01-20 11:55:17'),
(107, 'Widget: Profil', 'nexopos.see.profile-widget', 'Affichera un widget de profil avec des statistiques utilisateur.', '2024-01-20 11:55:17', '2024-01-20 11:55:17'),
(108, 'Widget: Graphique des commandes', 'nexopos.see.orders-chart-widget', 'Affichera un graphique des ventes hebdomadaires.', '2024-01-20 11:55:17', '2024-01-20 11:55:17'),
(109, 'Widget: Résumé des commandes', 'nexopos.see.orders-summary-widget', 'Affichera un résumé des ventes récentes.', '2024-01-20 11:55:17', '2024-01-20 11:55:17'),
(110, 'Widget: Meilleures caissières', 'nexopos.see.best-cashier-widget', 'Will display all cashiers who performs well.', '2024-01-20 11:55:17', '2024-01-20 11:55:17'),
(111, 'Read Cash Flow History', 'nexopos.read.cash-flow-history', 'Allow to the Cash Flow History.', '2024-01-20 11:55:17', '2024-01-20 11:55:17'),
(112, 'Delete Expense History', 'nexopos.delete.cash-flow-history', 'Allow to delete an expense history.', '2024-01-20 11:55:17', '2024-01-20 11:55:17'),
(113, 'Manage Customers Account', 'nexopos.customers.manage-account', 'Allow to manage customer virtual deposit account.', '2024-01-20 11:55:17', '2024-01-20 11:55:17'),
(114, 'Create Products Labels', 'nexopos.create.products-labels', 'Allow the user to create products labels', '2024-01-20 11:55:17', '2024-01-20 11:55:17'),
(115, 'Create Instalment', 'nexopos.create.orders-instalments', 'Allow the user to create instalments.', '2024-01-20 11:55:17', '2024-01-20 11:55:17'),
(116, 'Update Instalment', 'nexopos.update.orders-instalments', 'Allow the user to update instalments.', '2024-01-20 11:55:17', '2024-01-20 11:55:17'),
(117, 'Read Instalment', 'nexopos.read.orders-instalments', 'Allow the user to read instalments.', '2024-01-20 11:55:17', '2024-01-20 11:55:17'),
(118, 'Delete Instalment', 'nexopos.delete.orders-instalments', 'Allow the user to delete instalments.', '2024-01-20 11:55:17', '2024-01-20 11:55:17');

INSERT INTO `nexopos_providers` (`id`, `first_name`, `last_name`, `email`, `phone`, `address_1`, `address_2`, `author`, `description`, `amount_due`, `amount_paid`, `uuid`, `created_at`, `updated_at`) VALUES
(1, 'Par défaut', NULL, NULL, NULL, NULL, NULL, 32, NULL, 0.00000, 0.00000, NULL, '2024-01-20 12:14:47', '2024-01-20 12:14:47');

INSERT INTO `nexopos_role_permission` (`permission_id`, `role_id`) VALUES
(1, 2),
(2, 2),
(3, 2),
(4, 2),
(5, 2),
(6, 2),
(7, 2),
(8, 2),
(9, 2),
(10, 1),
(10, 2),
(10, 3),
(10, 4),
(10, 5),
(11, 2),
(12, 2),
(13, 2),
(13, 3),
(13, 4),
(13, 5),
(14, 2),
(15, 2),
(16, 2),
(17, 2),
(18, 2),
(18, 3),
(19, 2),
(19, 3),
(20, 2),
(20, 3),
(21, 2),
(21, 3),
(22, 2),
(22, 3),
(23, 2),
(23, 3),
(24, 2),
(24, 3),
(25, 2),
(25, 3),
(26, 2),
(26, 3),
(27, 2),
(27, 3),
(27, 4),
(28, 2),
(28, 3),
(29, 2),
(29, 3),
(30, 2),
(30, 3),
(31, 2),
(31, 3),
(32, 2),
(32, 3),
(33, 2),
(33, 3),
(34, 2),
(34, 3),
(35, 2),
(35, 3),
(36, 2),
(36, 3),
(37, 2),
(37, 3),
(38, 2),
(38, 3),
(39, 2),
(39, 3),
(40, 2),
(40, 3),
(41, 2),
(41, 3),
(42, 2),
(42, 3),
(43, 2),
(43, 3),
(44, 2),
(44, 3),
(45, 2),
(45, 3),
(46, 2),
(46, 3),
(47, 2),
(47, 3),
(48, 2),
(48, 3),
(48, 4),
(49, 2),
(49, 3),
(50, 2),
(50, 3),
(50, 4),
(51, 2),
(51, 3),
(51, 4),
(52, 2),
(52, 3),
(52, 4),
(53, 2),
(53, 3),
(53, 4),
(54, 2),
(54, 3),
(54, 4),
(55, 2),
(55, 3),
(56, 2),
(56, 3),
(57, 2),
(57, 3),
(58, 2),
(58, 3),
(59, 2),
(59, 3),
(60, 2),
(60, 3),
(61, 2),
(61, 3),
(62, 2),
(62, 3),
(63, 2),
(63, 3),
(64, 2),
(64, 3),
(65, 2),
(65, 3),
(66, 2),
(66, 3),
(67, 2),
(67, 3),
(68, 2),
(68, 3),
(69, 2),
(69, 3),
(70, 2),
(70, 3),
(71, 2),
(71, 3),
(72, 2),
(72, 3),
(73, 2),
(73, 3),
(74, 2),
(74, 3),
(75, 2),
(75, 3),
(76, 2),
(76, 3),
(77, 2),
(77, 3),
(78, 2),
(78, 3),
(79, 2),
(79, 3),
(80, 2),
(80, 3),
(81, 2),
(81, 3),
(82, 2),
(82, 3),
(83, 2),
(83, 3),
(84, 2),
(84, 3),
(85, 2),
(85, 3),
(86, 2),
(86, 3),
(87, 2),
(87, 3),
(88, 2),
(88, 3),
(89, 2),
(89, 3),
(90, 2),
(90, 3),
(91, 2),
(91, 3),
(92, 2),
(92, 3),
(93, 2),
(93, 3),
(94, 2),
(94, 3),
(95, 2),
(95, 3),
(96, 2),
(96, 3),
(97, 2),
(97, 3),
(98, 2),
(98, 3),
(99, 2),
(99, 3),
(99, 4),
(100, 2),
(100, 3),
(100, 4),
(101, 2),
(101, 3),
(101, 4),
(102, 2),
(102, 3),
(102, 4),
(103, 2),
(103, 3),
(104, 2),
(104, 3),
(105, 2),
(105, 3),
(106, 2),
(106, 3),
(107, 1),
(107, 2),
(107, 3),
(107, 4),
(107, 5),
(108, 2),
(108, 3),
(109, 2),
(109, 3),
(110, 2),
(110, 3),
(111, 2),
(111, 3),
(112, 2),
(112, 3),
(113, 2),
(113, 3),
(114, 2),
(114, 3),
(115, 2),
(115, 3),
(116, 2),
(116, 3),
(117, 2),
(117, 3),
(118, 2),
(118, 3);

INSERT INTO `nexopos_roles` (`id`, `name`, `namespace`, `description`, `reward_system_id`, `minimal_credit_payment`, `author`, `locked`, `created_at`, `updated_at`) VALUES
(1, 'Utilisateur', 'user', 'Basic user role.', NULL, 0.00, NULL, 1, '2024-01-20 11:55:17', '2024-01-20 11:55:17'),
(2, 'Administrateur', 'admin', 'Master role which can perform all actions like create users, install/update/delete modules and much more.', NULL, 0.00, NULL, 1, '2024-01-20 11:55:17', '2024-01-20 11:55:17'),
(3, 'Administrateur de magasin', 'nexopos.store.administrator', 'Has a control over an entire store of NexoPOS.', NULL, 0.00, NULL, 1, '2024-01-20 11:55:17', '2024-01-20 11:55:17'),
(4, 'Caissier de magasin', 'nexopos.store.cashier', 'Has a control over the sale process.', NULL, 0.00, NULL, 1, '2024-01-20 11:55:17', '2024-01-20 11:55:17'),
(5, 'Store Customer', 'nexopos.store.customer', 'Can purchase orders and manage his profile.', NULL, 0.00, NULL, 1, '2024-01-20 11:55:17', '2024-01-20 11:55:17');

INSERT INTO `nexopos_taxes` (`id`, `name`, `description`, `rate`, `tax_group_id`, `author`, `uuid`, `created_at`, `updated_at`) VALUES
(1, 'TVA', NULL, 18.00000, 1, 32, NULL, '2024-01-20 12:11:24', '2024-01-20 12:11:24');

INSERT INTO `nexopos_taxes_groups` (`id`, `name`, `description`, `author`, `uuid`, `created_at`, `updated_at`) VALUES
(1, 'Taxes de vente', NULL, 32, NULL, '2024-01-20 12:11:05', '2024-01-20 12:11:05');

INSERT INTO `nexopos_users` (`id`, `username`, `active`, `author`, `email`, `password`, `group_id`, `first_name`, `last_name`, `gender`, `phone`, `pobox`, `activation_expiration`, `total_sales_count`, `total_sales`, `birth_date`, `purchases_amount`, `owed_amount`, `credit_limit_amount`, `account_amount`, `activation_token`, `remember_token`, `created_at`, `updated_at`) VALUES
(32, 'admin', 1, 32, 'abdoulrazakmaali@gmail.com', '$2y$10$uW7ABkFWPs2jg2uKR4YBquacCqSDpJwSduR/QZG/7EeM2uFuXL1xK', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0.00000, NULL, 0.00, 0.00, 0.00, 0.00, NULL, NULL, '2024-01-20 11:55:17', '2024-01-20 11:55:17'),
(33, 'customer-34@127.0.0.1', 0, 32, 'na@gmail.com', '$2y$10$pJz2HHgKgHJmWv1azs//GulopLrV/ZmnkmD8b3zhvrIrfPT1zN/CO', 1, 'NA', 'NA', 'male', NULL, NULL, NULL, 0, 0.00000, '2024-01-20 12:12:33', 0.00, 0.00, 0.00, 0.00, NULL, NULL, '2024-01-20 12:13:36', '2024-01-20 12:13:36');

INSERT INTO `nexopos_users_attributes` (`id`, `user_id`, `avatar_link`, `theme`, `language`) VALUES
(1, 32, NULL, NULL, 'fr');

INSERT INTO `nexopos_users_roles_relations` (`id`, `role_id`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 2, 32, '2024-01-20 11:55:17', '2024-01-20 11:55:17'),
(2, 5, 33, '2024-01-20 12:13:36', '2024-01-20 12:13:36');

INSERT INTO `nexopos_users_widgets` (`id`, `identifier`, `column`, `class_name`, `position`, `user_id`, `created_at`, `updated_at`) VALUES
('9b232085-c2f6-4ed0-b972-4bdafc132326', 'nsIncompleteSaleCardWidget', 'first-column', 'App\\Widgets\\IncompleteSaleCardWidget', 0, 32, '2024-01-20 11:55:17', '2024-01-20 11:55:17'),
('9b232085-c410-4aa1-96f5-868333b1354c', 'nsBestCustomers', 'first-column', 'App\\Widgets\\BestCustomersWidget', 1, 32, '2024-01-20 11:55:17', '2024-01-20 11:55:17'),
('9b232085-c48c-45da-8d5b-6400ebc11909', 'nsOrdersSummary', 'first-column', 'App\\Widgets\\OrdersSummaryWidget', 2, 32, '2024-01-20 11:55:17', '2024-01-20 11:55:17'),
('9b232085-c549-4e57-8e1e-80eaf651044a', 'nsExpenseCardWidget', 'second-column', 'App\\Widgets\\ExpenseCardWidget', 0, 32, '2024-01-20 11:55:17', '2024-01-20 11:55:17'),
('9b232085-c5c8-4a60-89db-9ae08420b009', 'nsProfileWidget', 'second-column', 'App\\Widgets\\ProfileWidget', 1, 32, '2024-01-20 11:55:17', '2024-01-20 11:55:17'),
('9b232085-c64a-4139-a6d2-c3b89c072d93', 'nsBestCashiers', 'second-column', 'App\\Widgets\\BestCashiersWidget', 2, 32, '2024-01-20 11:55:17', '2024-01-20 11:55:17'),
('9b232085-c6d1-4fa8-b2cf-935ebe9848b1', 'nsSaleCardWidget', 'third-column', 'App\\Widgets\\SaleCardWidget', 0, 32, '2024-01-20 11:55:17', '2024-01-20 11:55:17'),
('9b232085-c73d-4176-b812-5f376e9b1b59', 'nsOrdersChart', 'third-column', 'App\\Widgets\\OrdersChartWidget', 1, 32, '2024-01-20 11:55:17', '2024-01-20 11:55:17');



/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;