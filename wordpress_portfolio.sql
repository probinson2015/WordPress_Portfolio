-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
-- -----------------------------------------------------
-- Schema wordpress_portfolio
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema wordpress_portfolio
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `wordpress_portfolio` DEFAULT CHARACTER SET latin1 ;
USE `wordpress_portfolio` ;

-- -----------------------------------------------------
-- Table `wordpress_portfolio`.`wp_commentmeta`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `wordpress_portfolio`.`wp_commentmeta` (
  `meta_id` BIGINT(20) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '',
  `comment_id` BIGINT(20) UNSIGNED NOT NULL DEFAULT '0' COMMENT '',
  `meta_key` VARCHAR(255) CHARACTER SET 'utf8mb4' NULL DEFAULT NULL COMMENT '',
  `meta_value` LONGTEXT CHARACTER SET 'utf8mb4' NULL DEFAULT NULL COMMENT '',
  PRIMARY KEY (`meta_id`)  COMMENT '',
  INDEX `comment_id` (`comment_id` ASC)  COMMENT '',
  INDEX `meta_key` (`meta_key`(191) ASC)  COMMENT '')
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4;


-- -----------------------------------------------------
-- Table `wordpress_portfolio`.`wp_comments`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `wordpress_portfolio`.`wp_comments` (
  `comment_ID` BIGINT(20) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '',
  `comment_post_ID` BIGINT(20) UNSIGNED NOT NULL DEFAULT '0' COMMENT '',
  `comment_author` TINYTEXT CHARACTER SET 'utf8mb4' NOT NULL COMMENT '',
  `comment_author_email` VARCHAR(100) CHARACTER SET 'utf8mb4' NOT NULL DEFAULT '' COMMENT '',
  `comment_author_url` VARCHAR(200) CHARACTER SET 'utf8mb4' NOT NULL DEFAULT '' COMMENT '',
  `comment_author_IP` VARCHAR(100) CHARACTER SET 'utf8mb4' NOT NULL DEFAULT '' COMMENT '',
  `comment_date` DATETIME NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '',
  `comment_date_gmt` DATETIME NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '',
  `comment_content` TEXT CHARACTER SET 'utf8mb4' NOT NULL COMMENT '',
  `comment_karma` INT(11) NOT NULL DEFAULT '0' COMMENT '',
  `comment_approved` VARCHAR(20) CHARACTER SET 'utf8mb4' NOT NULL DEFAULT '1' COMMENT '',
  `comment_agent` VARCHAR(255) CHARACTER SET 'utf8mb4' NOT NULL DEFAULT '' COMMENT '',
  `comment_type` VARCHAR(20) CHARACTER SET 'utf8mb4' NOT NULL DEFAULT '' COMMENT '',
  `comment_parent` BIGINT(20) UNSIGNED NOT NULL DEFAULT '0' COMMENT '',
  `user_id` BIGINT(20) UNSIGNED NOT NULL DEFAULT '0' COMMENT '',
  PRIMARY KEY (`comment_ID`)  COMMENT '',
  INDEX `comment_post_ID` (`comment_post_ID` ASC)  COMMENT '',
  INDEX `comment_approved_date_gmt` (`comment_approved` ASC, `comment_date_gmt` ASC)  COMMENT '',
  INDEX `comment_date_gmt` (`comment_date_gmt` ASC)  COMMENT '',
  INDEX `comment_parent` (`comment_parent` ASC)  COMMENT '',
  INDEX `comment_author_email` (`comment_author_email`(10) ASC)  COMMENT '')
ENGINE = InnoDB
AUTO_INCREMENT = 3
DEFAULT CHARACTER SET = utf8mb4;


-- -----------------------------------------------------
-- Table `wordpress_portfolio`.`wp_links`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `wordpress_portfolio`.`wp_links` (
  `link_id` BIGINT(20) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '',
  `link_url` VARCHAR(255) CHARACTER SET 'utf8mb4' NOT NULL DEFAULT '' COMMENT '',
  `link_name` VARCHAR(255) CHARACTER SET 'utf8mb4' NOT NULL DEFAULT '' COMMENT '',
  `link_image` VARCHAR(255) CHARACTER SET 'utf8mb4' NOT NULL DEFAULT '' COMMENT '',
  `link_target` VARCHAR(25) CHARACTER SET 'utf8mb4' NOT NULL DEFAULT '' COMMENT '',
  `link_description` VARCHAR(255) CHARACTER SET 'utf8mb4' NOT NULL DEFAULT '' COMMENT '',
  `link_visible` VARCHAR(20) CHARACTER SET 'utf8mb4' NOT NULL DEFAULT 'Y' COMMENT '',
  `link_owner` BIGINT(20) UNSIGNED NOT NULL DEFAULT '1' COMMENT '',
  `link_rating` INT(11) NOT NULL DEFAULT '0' COMMENT '',
  `link_updated` DATETIME NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '',
  `link_rel` VARCHAR(255) CHARACTER SET 'utf8mb4' NOT NULL DEFAULT '' COMMENT '',
  `link_notes` MEDIUMTEXT CHARACTER SET 'utf8mb4' NOT NULL COMMENT '',
  `link_rss` VARCHAR(255) CHARACTER SET 'utf8mb4' NOT NULL DEFAULT '' COMMENT '',
  PRIMARY KEY (`link_id`)  COMMENT '',
  INDEX `link_visible` (`link_visible` ASC)  COMMENT '')
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4;


-- -----------------------------------------------------
-- Table `wordpress_portfolio`.`wp_options`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `wordpress_portfolio`.`wp_options` (
  `option_id` BIGINT(20) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '',
  `option_name` VARCHAR(191) CHARACTER SET 'utf8mb4' NOT NULL DEFAULT '' COMMENT '',
  `option_value` LONGTEXT CHARACTER SET 'utf8mb4' NOT NULL COMMENT '',
  `autoload` VARCHAR(20) CHARACTER SET 'utf8mb4' NOT NULL DEFAULT 'yes' COMMENT '',
  PRIMARY KEY (`option_id`)  COMMENT '',
  UNIQUE INDEX `option_name` (`option_name` ASC)  COMMENT '')
ENGINE = InnoDB
AUTO_INCREMENT = 329
DEFAULT CHARACTER SET = utf8mb4;


-- -----------------------------------------------------
-- Table `wordpress_portfolio`.`wp_postmeta`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `wordpress_portfolio`.`wp_postmeta` (
  `meta_id` BIGINT(20) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '',
  `post_id` BIGINT(20) UNSIGNED NOT NULL DEFAULT '0' COMMENT '',
  `meta_key` VARCHAR(255) CHARACTER SET 'utf8mb4' NULL DEFAULT NULL COMMENT '',
  `meta_value` LONGTEXT CHARACTER SET 'utf8mb4' NULL DEFAULT NULL COMMENT '',
  PRIMARY KEY (`meta_id`)  COMMENT '',
  INDEX `post_id` (`post_id` ASC)  COMMENT '',
  INDEX `meta_key` (`meta_key`(191) ASC)  COMMENT '')
ENGINE = InnoDB
AUTO_INCREMENT = 191
DEFAULT CHARACTER SET = utf8mb4;


-- -----------------------------------------------------
-- Table `wordpress_portfolio`.`wp_posts`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `wordpress_portfolio`.`wp_posts` (
  `ID` BIGINT(20) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '',
  `post_author` BIGINT(20) UNSIGNED NOT NULL DEFAULT '0' COMMENT '',
  `post_date` DATETIME NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '',
  `post_date_gmt` DATETIME NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '',
  `post_content` LONGTEXT CHARACTER SET 'utf8mb4' NOT NULL COMMENT '',
  `post_title` TEXT CHARACTER SET 'utf8mb4' NOT NULL COMMENT '',
  `post_excerpt` TEXT CHARACTER SET 'utf8mb4' NOT NULL COMMENT '',
  `post_status` VARCHAR(20) CHARACTER SET 'utf8mb4' NOT NULL DEFAULT 'publish' COMMENT '',
  `comment_status` VARCHAR(20) CHARACTER SET 'utf8mb4' NOT NULL DEFAULT 'open' COMMENT '',
  `ping_status` VARCHAR(20) CHARACTER SET 'utf8mb4' NOT NULL DEFAULT 'open' COMMENT '',
  `post_password` VARCHAR(20) CHARACTER SET 'utf8mb4' NOT NULL DEFAULT '' COMMENT '',
  `post_name` VARCHAR(200) CHARACTER SET 'utf8mb4' NOT NULL DEFAULT '' COMMENT '',
  `to_ping` TEXT CHARACTER SET 'utf8mb4' NOT NULL COMMENT '',
  `pinged` TEXT CHARACTER SET 'utf8mb4' NOT NULL COMMENT '',
  `post_modified` DATETIME NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '',
  `post_modified_gmt` DATETIME NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '',
  `post_content_filtered` LONGTEXT CHARACTER SET 'utf8mb4' NOT NULL COMMENT '',
  `post_parent` BIGINT(20) UNSIGNED NOT NULL DEFAULT '0' COMMENT '',
  `guid` VARCHAR(255) CHARACTER SET 'utf8mb4' NOT NULL DEFAULT '' COMMENT '',
  `menu_order` INT(11) NOT NULL DEFAULT '0' COMMENT '',
  `post_type` VARCHAR(20) CHARACTER SET 'utf8mb4' NOT NULL DEFAULT 'post' COMMENT '',
  `post_mime_type` VARCHAR(100) CHARACTER SET 'utf8mb4' NOT NULL DEFAULT '' COMMENT '',
  `comment_count` BIGINT(20) NOT NULL DEFAULT '0' COMMENT '',
  PRIMARY KEY (`ID`)  COMMENT '',
  INDEX `post_name` (`post_name`(191) ASC)  COMMENT '',
  INDEX `type_status_date` (`post_type` ASC, `post_status` ASC, `post_date` ASC, `ID` ASC)  COMMENT '',
  INDEX `post_parent` (`post_parent` ASC)  COMMENT '',
  INDEX `post_author` (`post_author` ASC)  COMMENT '')
ENGINE = InnoDB
AUTO_INCREMENT = 63
DEFAULT CHARACTER SET = utf8mb4;


-- -----------------------------------------------------
-- Table `wordpress_portfolio`.`wp_term_relationships`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `wordpress_portfolio`.`wp_term_relationships` (
  `object_id` BIGINT(20) UNSIGNED NOT NULL DEFAULT '0' COMMENT '',
  `term_taxonomy_id` BIGINT(20) UNSIGNED NOT NULL DEFAULT '0' COMMENT '',
  `term_order` INT(11) NOT NULL DEFAULT '0' COMMENT '',
  PRIMARY KEY (`object_id`, `term_taxonomy_id`)  COMMENT '',
  INDEX `term_taxonomy_id` (`term_taxonomy_id` ASC)  COMMENT '')
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4;


-- -----------------------------------------------------
-- Table `wordpress_portfolio`.`wp_term_taxonomy`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `wordpress_portfolio`.`wp_term_taxonomy` (
  `term_taxonomy_id` BIGINT(20) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '',
  `term_id` BIGINT(20) UNSIGNED NOT NULL DEFAULT '0' COMMENT '',
  `taxonomy` VARCHAR(32) CHARACTER SET 'utf8mb4' NOT NULL DEFAULT '' COMMENT '',
  `description` LONGTEXT CHARACTER SET 'utf8mb4' NOT NULL COMMENT '',
  `parent` BIGINT(20) UNSIGNED NOT NULL DEFAULT '0' COMMENT '',
  `count` BIGINT(20) NOT NULL DEFAULT '0' COMMENT '',
  PRIMARY KEY (`term_taxonomy_id`)  COMMENT '',
  UNIQUE INDEX `term_id_taxonomy` (`term_id` ASC, `taxonomy` ASC)  COMMENT '',
  INDEX `taxonomy` (`taxonomy` ASC)  COMMENT '')
ENGINE = InnoDB
AUTO_INCREMENT = 9
DEFAULT CHARACTER SET = utf8mb4;


-- -----------------------------------------------------
-- Table `wordpress_portfolio`.`wp_termmeta`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `wordpress_portfolio`.`wp_termmeta` (
  `meta_id` BIGINT(20) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '',
  `term_id` BIGINT(20) UNSIGNED NOT NULL DEFAULT '0' COMMENT '',
  `meta_key` VARCHAR(255) CHARACTER SET 'utf8mb4' NULL DEFAULT NULL COMMENT '',
  `meta_value` LONGTEXT CHARACTER SET 'utf8mb4' NULL DEFAULT NULL COMMENT '',
  PRIMARY KEY (`meta_id`)  COMMENT '',
  INDEX `term_id` (`term_id` ASC)  COMMENT '',
  INDEX `meta_key` (`meta_key`(191) ASC)  COMMENT '')
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4;


-- -----------------------------------------------------
-- Table `wordpress_portfolio`.`wp_terms`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `wordpress_portfolio`.`wp_terms` (
  `term_id` BIGINT(20) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '',
  `name` VARCHAR(200) CHARACTER SET 'utf8mb4' NOT NULL DEFAULT '' COMMENT '',
  `slug` VARCHAR(200) CHARACTER SET 'utf8mb4' NOT NULL DEFAULT '' COMMENT '',
  `term_group` BIGINT(10) NOT NULL DEFAULT '0' COMMENT '',
  PRIMARY KEY (`term_id`)  COMMENT '',
  INDEX `slug` (`slug`(191) ASC)  COMMENT '',
  INDEX `name` (`name`(191) ASC)  COMMENT '')
ENGINE = InnoDB
AUTO_INCREMENT = 9
DEFAULT CHARACTER SET = utf8mb4;


-- -----------------------------------------------------
-- Table `wordpress_portfolio`.`wp_usermeta`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `wordpress_portfolio`.`wp_usermeta` (
  `umeta_id` BIGINT(20) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '',
  `user_id` BIGINT(20) UNSIGNED NOT NULL DEFAULT '0' COMMENT '',
  `meta_key` VARCHAR(255) CHARACTER SET 'utf8mb4' NULL DEFAULT NULL COMMENT '',
  `meta_value` LONGTEXT CHARACTER SET 'utf8mb4' NULL DEFAULT NULL COMMENT '',
  PRIMARY KEY (`umeta_id`)  COMMENT '',
  INDEX `user_id` (`user_id` ASC)  COMMENT '',
  INDEX `meta_key` (`meta_key`(191) ASC)  COMMENT '')
ENGINE = InnoDB
AUTO_INCREMENT = 26
DEFAULT CHARACTER SET = utf8mb4;


-- -----------------------------------------------------
-- Table `wordpress_portfolio`.`wp_users`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `wordpress_portfolio`.`wp_users` (
  `ID` BIGINT(20) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '',
  `user_login` VARCHAR(60) CHARACTER SET 'utf8mb4' NOT NULL DEFAULT '' COMMENT '',
  `user_pass` VARCHAR(255) CHARACTER SET 'utf8mb4' NOT NULL DEFAULT '' COMMENT '',
  `user_nicename` VARCHAR(50) CHARACTER SET 'utf8mb4' NOT NULL DEFAULT '' COMMENT '',
  `user_email` VARCHAR(100) CHARACTER SET 'utf8mb4' NOT NULL DEFAULT '' COMMENT '',
  `user_url` VARCHAR(100) CHARACTER SET 'utf8mb4' NOT NULL DEFAULT '' COMMENT '',
  `user_registered` DATETIME NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '',
  `user_activation_key` VARCHAR(255) CHARACTER SET 'utf8mb4' NOT NULL DEFAULT '' COMMENT '',
  `user_status` INT(11) NOT NULL DEFAULT '0' COMMENT '',
  `display_name` VARCHAR(250) CHARACTER SET 'utf8mb4' NOT NULL DEFAULT '' COMMENT '',
  PRIMARY KEY (`ID`)  COMMENT '',
  INDEX `user_login_key` (`user_login` ASC)  COMMENT '',
  INDEX `user_nicename` (`user_nicename` ASC)  COMMENT '')
ENGINE = InnoDB
AUTO_INCREMENT = 2
DEFAULT CHARACTER SET = utf8mb4;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
