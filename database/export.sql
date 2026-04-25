-- SAA Hosting Demo Database Export
-- This is a minimal WordPress-compatible database export for testing
-- Replace 'localhost' with your domain during deployment

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;

-- Database: demo_website
CREATE DATABASE IF NOT EXISTS demo_website DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
USE demo_website;

-- Table: wp_posts
CREATE TABLE IF NOT EXISTS wp_posts (
  ID bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  post_author bigint(20) unsigned NOT NULL DEFAULT 0,
  post_date datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  post_date_gmt datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  post_content longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  post_title text COLLATE utf8mb4_unicode_ci NOT NULL,
  post_name varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  post_type varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'post',
  post_status varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'publish',
  PRIMARY KEY (ID)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO wp_posts (ID, post_author, post_date, post_date_gmt, post_content, post_title, post_name, post_type, post_status) VALUES
(1, 1, '2026-04-26 00:00:00', '2026-04-26 00:00:00', 'Welcome to your new WordPress site deployed by SAA Hosting!', 'Welcome to SAA Hosting Demo', 'hello-world', 'post', 'publish');

-- Table: wp_options (for site configuration)
CREATE TABLE IF NOT EXISTS wp_options (
  option_id bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  option_name varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  option_value longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (option_id),
  UNIQUE KEY option_name (option_name)
) ENGINE=InnoDB AUTO_INCREMENT=100 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO wp_options (option_name, option_value) VALUES
('siteurl', 'http://localhost'),
('home', 'http://localhost'),
('blogname', 'SAA Hosting Demo'),
('blogdescription', 'Deployed via SAA Hosting'),
('users_can_register', '0');

COMMIT;
