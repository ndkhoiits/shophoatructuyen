-- phpMyAdmin SQL Dump
-- version 2.10.3
-- http://www.phpmyadmin.net
-- 
-- Host: localhost
-- Generation Time: Jun 04, 2012 at 05:10 PM
-- Server version: 5.0.51
-- PHP Version: 5.2.6

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";

-- 
-- Database: `open1531`
-- 

-- --------------------------------------------------------

-- 
-- Table structure for table `oc_address`
-- 

DROP TABLE IF EXISTS `oc_address`;
CREATE TABLE `oc_address` (
  `address_id` int(11) NOT NULL auto_increment,
  `customer_id` int(11) NOT NULL,
  `firstname` varchar(32) collate utf8_bin NOT NULL default '',
  `lastname` varchar(32) collate utf8_bin NOT NULL default '',
  `company` varchar(32) collate utf8_bin NOT NULL,
  `company_id` varchar(32) collate utf8_bin NOT NULL,
  `tax_id` varchar(32) collate utf8_bin NOT NULL,
  `address_1` varchar(128) collate utf8_bin NOT NULL,
  `address_2` varchar(128) collate utf8_bin NOT NULL,
  `city` varchar(128) collate utf8_bin NOT NULL,
  `postcode` varchar(10) collate utf8_bin NOT NULL,
  `country_id` int(11) NOT NULL default '0',
  `zone_id` int(11) NOT NULL default '0',
  PRIMARY KEY  (`address_id`),
  KEY `customer_id` (`customer_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=2 ;

-- 
-- Dumping data for table `oc_address`
-- 

INSERT INTO `oc_address` VALUES (1, 3, 0x74756e67, 0x74756e67, 0x6e656e636572, 0x6e656e636572, 0x6e656e636572, 0x6861692070686f6e67, 0x6861692070686f6e67, 0x6861692070686f6e67, 0x3335303030, 230, 3774);

-- --------------------------------------------------------

-- 
-- Table structure for table `oc_affiliate`
-- 

DROP TABLE IF EXISTS `oc_affiliate`;
CREATE TABLE `oc_affiliate` (
  `affiliate_id` int(11) NOT NULL auto_increment,
  `firstname` varchar(32) collate utf8_bin NOT NULL default '',
  `lastname` varchar(32) collate utf8_bin NOT NULL default '',
  `email` varchar(96) collate utf8_bin NOT NULL default '',
  `telephone` varchar(32) collate utf8_bin NOT NULL default '',
  `fax` varchar(32) collate utf8_bin NOT NULL default '',
  `password` varchar(40) collate utf8_bin NOT NULL default '',
  `company` varchar(32) collate utf8_bin NOT NULL,
  `website` varchar(255) collate utf8_bin NOT NULL,
  `address_1` varchar(128) collate utf8_bin NOT NULL default '',
  `address_2` varchar(128) collate utf8_bin NOT NULL,
  `city` varchar(128) collate utf8_bin NOT NULL default '',
  `postcode` varchar(10) collate utf8_bin NOT NULL default '',
  `country_id` int(11) NOT NULL,
  `zone_id` int(11) NOT NULL,
  `code` varchar(64) collate utf8_bin NOT NULL,
  `commission` decimal(4,2) NOT NULL default '0.00',
  `tax` varchar(64) collate utf8_bin NOT NULL,
  `payment` varchar(6) collate utf8_bin NOT NULL,
  `cheque` varchar(100) collate utf8_bin NOT NULL default '',
  `paypal` varchar(64) collate utf8_bin NOT NULL default '',
  `bank_name` varchar(64) collate utf8_bin NOT NULL default '',
  `bank_branch_number` varchar(64) collate utf8_bin NOT NULL default '',
  `bank_swift_code` varchar(64) collate utf8_bin NOT NULL default '',
  `bank_account_name` varchar(64) collate utf8_bin NOT NULL default '',
  `bank_account_number` varchar(64) collate utf8_bin NOT NULL default '',
  `ip` varchar(15) collate utf8_bin NOT NULL,
  `status` tinyint(1) NOT NULL,
  `approved` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY  (`affiliate_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=1 ;

-- 
-- Dumping data for table `oc_affiliate`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `oc_affiliate_transaction`
-- 

DROP TABLE IF EXISTS `oc_affiliate_transaction`;
CREATE TABLE `oc_affiliate_transaction` (
  `affiliate_transaction_id` int(11) NOT NULL auto_increment,
  `affiliate_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `description` text collate utf8_bin NOT NULL,
  `amount` decimal(15,4) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY  (`affiliate_transaction_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=1 ;

-- 
-- Dumping data for table `oc_affiliate_transaction`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `oc_attribute`
-- 

DROP TABLE IF EXISTS `oc_attribute`;
CREATE TABLE `oc_attribute` (
  `attribute_id` int(11) NOT NULL auto_increment,
  `attribute_group_id` int(11) NOT NULL,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY  (`attribute_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=12 ;

-- 
-- Dumping data for table `oc_attribute`
-- 

INSERT INTO `oc_attribute` VALUES (1, 6, 1);
INSERT INTO `oc_attribute` VALUES (2, 6, 5);
INSERT INTO `oc_attribute` VALUES (3, 6, 3);
INSERT INTO `oc_attribute` VALUES (4, 3, 1);
INSERT INTO `oc_attribute` VALUES (5, 3, 2);
INSERT INTO `oc_attribute` VALUES (6, 3, 3);
INSERT INTO `oc_attribute` VALUES (7, 3, 4);
INSERT INTO `oc_attribute` VALUES (8, 3, 5);
INSERT INTO `oc_attribute` VALUES (9, 3, 6);
INSERT INTO `oc_attribute` VALUES (10, 3, 7);
INSERT INTO `oc_attribute` VALUES (11, 3, 8);

-- --------------------------------------------------------

-- 
-- Table structure for table `oc_attribute_description`
-- 

DROP TABLE IF EXISTS `oc_attribute_description`;
CREATE TABLE `oc_attribute_description` (
  `attribute_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(64) collate utf8_bin NOT NULL,
  PRIMARY KEY  (`attribute_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- 
-- Dumping data for table `oc_attribute_description`
-- 

INSERT INTO `oc_attribute_description` VALUES (1, 2, 0x4465736372697074696f6e);
INSERT INTO `oc_attribute_description` VALUES (2, 2, 0x4e6f2e206f6620436f726573);
INSERT INTO `oc_attribute_description` VALUES (4, 2, 0x746573742031);
INSERT INTO `oc_attribute_description` VALUES (5, 2, 0x746573742032);
INSERT INTO `oc_attribute_description` VALUES (6, 2, 0x746573742033);
INSERT INTO `oc_attribute_description` VALUES (7, 2, 0x746573742034);
INSERT INTO `oc_attribute_description` VALUES (8, 2, 0x746573742035);
INSERT INTO `oc_attribute_description` VALUES (9, 2, 0x746573742036);
INSERT INTO `oc_attribute_description` VALUES (10, 2, 0x746573742037);
INSERT INTO `oc_attribute_description` VALUES (11, 2, 0x746573742038);
INSERT INTO `oc_attribute_description` VALUES (3, 2, 0x436c6f636b7370656564);

-- --------------------------------------------------------

-- 
-- Table structure for table `oc_attribute_group`
-- 

DROP TABLE IF EXISTS `oc_attribute_group`;
CREATE TABLE `oc_attribute_group` (
  `attribute_group_id` int(11) NOT NULL auto_increment,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY  (`attribute_group_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=7 ;

-- 
-- Dumping data for table `oc_attribute_group`
-- 

INSERT INTO `oc_attribute_group` VALUES (3, 2);
INSERT INTO `oc_attribute_group` VALUES (4, 1);
INSERT INTO `oc_attribute_group` VALUES (5, 3);
INSERT INTO `oc_attribute_group` VALUES (6, 4);

-- --------------------------------------------------------

-- 
-- Table structure for table `oc_attribute_group_description`
-- 

DROP TABLE IF EXISTS `oc_attribute_group_description`;
CREATE TABLE `oc_attribute_group_description` (
  `attribute_group_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(64) collate utf8_bin NOT NULL,
  PRIMARY KEY  (`attribute_group_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- 
-- Dumping data for table `oc_attribute_group_description`
-- 

INSERT INTO `oc_attribute_group_description` VALUES (3, 2, 0x4d656d6f7279);
INSERT INTO `oc_attribute_group_description` VALUES (4, 2, 0x546563686e6963616c);
INSERT INTO `oc_attribute_group_description` VALUES (5, 2, 0x4d6f74686572626f617264);
INSERT INTO `oc_attribute_group_description` VALUES (6, 2, 0x50726f636573736f72);

-- --------------------------------------------------------

-- 
-- Table structure for table `oc_banner`
-- 

DROP TABLE IF EXISTS `oc_banner`;
CREATE TABLE `oc_banner` (
  `banner_id` int(11) NOT NULL auto_increment,
  `name` varchar(64) collate utf8_bin NOT NULL,
  `status` tinyint(1) NOT NULL,
  PRIMARY KEY  (`banner_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=11 ;

-- 
-- Dumping data for table `oc_banner`
-- 

INSERT INTO `oc_banner` VALUES (9, 0x536c696465207472616e67206368e1bba7, 1);
INSERT INTO `oc_banner` VALUES (10, 0x42616e6e6572207175e1baa36e672063c3a16f2031, 1);

-- --------------------------------------------------------

-- 
-- Table structure for table `oc_banner_image`
-- 

DROP TABLE IF EXISTS `oc_banner_image`;
CREATE TABLE `oc_banner_image` (
  `banner_image_id` int(11) NOT NULL auto_increment,
  `banner_id` int(11) NOT NULL,
  `link` varchar(255) collate utf8_bin NOT NULL,
  `image` varchar(255) collate utf8_bin NOT NULL,
  PRIMARY KEY  (`banner_image_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=91 ;

-- 
-- Dumping data for table `oc_banner_image`
-- 

INSERT INTO `oc_banner_image` VALUES (84, 9, 0x687474703a2f2f6f70656e636172742e766e, 0x646174612f736c69646573686f772f62616e6e657274696e686e68616e322e706e67);
INSERT INTO `oc_banner_image` VALUES (83, 9, 0x687474703a2f2f6f70656e636172742e766e, 0x646174612f736c69646573686f772f62616e6e65725f382d332e706e67);
INSERT INTO `oc_banner_image` VALUES (82, 9, 0x687474703a2f2f6f70656e636172742e766e, 0x646174612f736c69646573686f772f62616e6e65725f382d30332e706e67);
INSERT INTO `oc_banner_image` VALUES (85, 9, 0x687474703a2f2f6f70656e636172742e766e, 0x646174612f736c69646573686f772f312e706e67);
INSERT INTO `oc_banner_image` VALUES (86, 9, 0x687474703a2f2f6f70656e636172742e766e, 0x646174612f736c69646573686f772f42414e4e45525f52554f55325f636f70792e706e67);
INSERT INTO `oc_banner_image` VALUES (87, 9, 0x687474703a2f2f6f70656e636172742e766e, 0x646174612f736c69646573686f772f62616e685f6b656d5f636f70792e706e67);
INSERT INTO `oc_banner_image` VALUES (88, 9, 0x687474703a2f2f6f70656e636172742e766e, 0x646174612f736c69646573686f772f63686f636f6c6174655f63686970636869705f636f70792e706e67);
INSERT INTO `oc_banner_image` VALUES (89, 9, 0x687474703a2f2f6f70656e636172742e766e, 0x646174612f736c69646573686f772f686f615f63756f695f337375612e706e67);
INSERT INTO `oc_banner_image` VALUES (90, 10, 0x687474703a2f2f6f70656e636172742e766e, 0x646174612f62616e6e65722f62616e6e65722e676966);

-- --------------------------------------------------------

-- 
-- Table structure for table `oc_banner_image_description`
-- 

DROP TABLE IF EXISTS `oc_banner_image_description`;
CREATE TABLE `oc_banner_image_description` (
  `banner_image_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `banner_id` int(11) NOT NULL,
  `title` varchar(64) collate utf8_bin NOT NULL,
  PRIMARY KEY  (`banner_image_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- 
-- Dumping data for table `oc_banner_image_description`
-- 

INSERT INTO `oc_banner_image_description` VALUES (84, 2, 9, 0x6c696e6b33);
INSERT INTO `oc_banner_image_description` VALUES (83, 2, 9, 0x6c696e6b32);
INSERT INTO `oc_banner_image_description` VALUES (82, 2, 9, 0x6c696e6b31);
INSERT INTO `oc_banner_image_description` VALUES (85, 2, 9, 0x6c696e6b34);
INSERT INTO `oc_banner_image_description` VALUES (86, 2, 9, 0x6c696e6b35);
INSERT INTO `oc_banner_image_description` VALUES (87, 2, 9, 0x6c696e6b36);
INSERT INTO `oc_banner_image_description` VALUES (88, 2, 9, 0x6c696e6b37);
INSERT INTO `oc_banner_image_description` VALUES (89, 2, 9, 0x6c696e6b38);
INSERT INTO `oc_banner_image_description` VALUES (90, 2, 10, 0x62616e6e657231);

-- --------------------------------------------------------

-- 
-- Table structure for table `oc_cat`
-- 

DROP TABLE IF EXISTS `oc_cat`;
CREATE TABLE `oc_cat` (
  `cat_id` int(11) NOT NULL auto_increment,
  `image` varchar(255) collate utf8_bin default NULL,
  `parent_id` int(11) NOT NULL default '0',
  `top` tinyint(1) NOT NULL,
  `column` int(3) NOT NULL,
  `sort_order` int(3) NOT NULL default '0',
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL default '0000-00-00 00:00:00',
  `date_modified` datetime NOT NULL default '0000-00-00 00:00:00',
  PRIMARY KEY  (`cat_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=62 ;

-- 
-- Dumping data for table `oc_cat`
-- 

INSERT INTO `oc_cat` VALUES (59, '', 0, 1, 1, 0, 1, '2012-05-26 06:46:05', '2012-05-26 22:44:29');
INSERT INTO `oc_cat` VALUES (60, '', 0, 0, 1, 1, 1, '2012-05-26 17:19:58', '2012-05-26 17:20:06');
INSERT INTO `oc_cat` VALUES (61, '', 0, 0, 1, 2, 1, '2012-05-26 17:20:19', '2012-05-26 17:20:27');

-- --------------------------------------------------------

-- 
-- Table structure for table `oc_category`
-- 

DROP TABLE IF EXISTS `oc_category`;
CREATE TABLE `oc_category` (
  `category_id` int(11) NOT NULL auto_increment,
  `image` varchar(255) collate utf8_bin default NULL,
  `parent_id` int(11) NOT NULL default '0',
  `top` tinyint(1) NOT NULL,
  `column` int(3) NOT NULL,
  `sort_order` int(3) NOT NULL default '0',
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL default '0000-00-00 00:00:00',
  `date_modified` datetime NOT NULL default '0000-00-00 00:00:00',
  PRIMARY KEY  (`category_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=66 ;

-- 
-- Dumping data for table `oc_category`
-- 

INSERT INTO `oc_category` VALUES (27, '', 20, 0, 0, 2, 1, '2009-01-31 01:55:34', '2011-11-08 16:50:30');
INSERT INTO `oc_category` VALUES (20, 0x646174612f636f6d7061715f707265736172696f2e6a7067, 0, 1, 1, 1, 1, '2009-01-05 21:49:43', '2012-05-26 06:49:37');
INSERT INTO `oc_category` VALUES (18, 0x646174612f68705f322e6a7067, 20, 1, 3, 3, 1, '2009-01-05 21:49:15', '2011-11-08 16:57:44');
INSERT INTO `oc_category` VALUES (63, '', 0, 1, 1, 0, 1, '2012-03-02 15:38:36', '2012-03-02 15:49:05');
INSERT INTO `oc_category` VALUES (64, '', 0, 1, 1, 4, 1, '2012-03-06 02:21:53', '2012-05-26 23:02:56');
INSERT INTO `oc_category` VALUES (65, '', 0, 1, 1, 0, 1, '2012-03-06 07:18:18', '2012-03-06 07:19:13');

-- --------------------------------------------------------

-- 
-- Table structure for table `oc_category_description`
-- 

DROP TABLE IF EXISTS `oc_category_description`;
CREATE TABLE `oc_category_description` (
  `category_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(255) collate utf8_bin NOT NULL default '',
  `description` text collate utf8_bin NOT NULL,
  `meta_description` varchar(255) collate utf8_bin NOT NULL,
  `meta_keyword` varchar(255) collate utf8_bin NOT NULL,
  PRIMARY KEY  (`category_id`,`language_id`),
  KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- 
-- Dumping data for table `oc_category_description`
-- 

INSERT INTO `oc_category_description` VALUES (20, 2, 0x4dc3a1792074c3ad6e68, '', '', '');
INSERT INTO `oc_category_description` VALUES (27, 2, 0x4dc3a1792074c3ad6e682062e1bb99, '', '', '');
INSERT INTO `oc_category_description` VALUES (18, 2, 0x4dc3a1792074c3ad6e682078c3a1636820746179, 0x266c743b702667743b0d0a0953686f70204c6170746f702066656174757265206f6e6c79207468652062657374206c6170746f70206465616c73206f6e20746865206d61726b65742e20427920636f6d706172696e67206c6170746f70206465616c732066726f6d20746865206c696b6573206f6620504320576f726c642c20436f6d65742c204469786f6e732c20546865204c696e6b20616e642043617270686f6e652057617265686f7573652c2053686f70204c6170746f702068617320746865206d6f737420636f6d70726568656e736976652073656c656374696f6e206f66206c6170746f7073206f6e2074686520696e7465726e65742e2041742053686f70204c6170746f702c207765207072696465206f757273656c766573206f6e206f66666572696e6720637573746f6d6572732074686520766572792062657374206c6170746f70206465616c732e2046726f6d207265667572626973686564206c6170746f707320746f206e6574626f6f6b732c2053686f70204c6170746f7020656e73757265732074686174206576657279206c6170746f70202d20696e20657665727920636f6c6f75722c207374796c652c2073697a6520616e6420746563686e6963616c2073706563202d206973206665617475726564206f6e20746865207369746520617420746865206c6f7765737420706f737369626c652070726963652e266c743b2f702667743b0d0a, '', '');
INSERT INTO `oc_category_description` VALUES (63, 2, 0x486f612054c6b0c6a169, '', '', '');
INSERT INTO `oc_category_description` VALUES (64, 2, 0xc49069e1bb876e2074686fe1baa16920646920c491e1bb996e6720, '', '', '');
INSERT INTO `oc_category_description` VALUES (65, 2, 0x5175e1baa76e20c3a16f20, '', '', '');

-- --------------------------------------------------------

-- 
-- Table structure for table `oc_category_to_layout`
-- 

DROP TABLE IF EXISTS `oc_category_to_layout`;
CREATE TABLE `oc_category_to_layout` (
  `category_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `layout_id` int(11) NOT NULL,
  PRIMARY KEY  (`category_id`,`store_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- 
-- Dumping data for table `oc_category_to_layout`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `oc_category_to_store`
-- 

DROP TABLE IF EXISTS `oc_category_to_store`;
CREATE TABLE `oc_category_to_store` (
  `category_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  PRIMARY KEY  (`category_id`,`store_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- 
-- Dumping data for table `oc_category_to_store`
-- 

INSERT INTO `oc_category_to_store` VALUES (18, 0);
INSERT INTO `oc_category_to_store` VALUES (20, 0);
INSERT INTO `oc_category_to_store` VALUES (27, 0);
INSERT INTO `oc_category_to_store` VALUES (63, 0);
INSERT INTO `oc_category_to_store` VALUES (64, 0);
INSERT INTO `oc_category_to_store` VALUES (65, 0);

-- --------------------------------------------------------

-- 
-- Table structure for table `oc_cat_description`
-- 

DROP TABLE IF EXISTS `oc_cat_description`;
CREATE TABLE `oc_cat_description` (
  `cat_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(255) collate utf8_bin NOT NULL default '',
  `description` text collate utf8_bin NOT NULL,
  `meta_description` varchar(255) collate utf8_bin NOT NULL,
  `meta_keyword` varchar(255) collate utf8_bin NOT NULL,
  PRIMARY KEY  (`cat_id`,`language_id`),
  KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- 
-- Dumping data for table `oc_cat_description`
-- 

INSERT INTO `oc_cat_description` VALUES (59, 2, 0x54696e2063c3b46e67207479, 0x266c743b702667743b0d0a0954696e2063c3b46e67207479266c743b2f702667743b0d0a, 0x54696e2063c3b46e67207479, 0x54696e2063c3b46e67207479);
INSERT INTO `oc_cat_description` VALUES (60, 2, 0x54696e2078c3a32068e1bb9969, '', '', '');
INSERT INTO `oc_cat_description` VALUES (61, 2, 0x54696e2076c4836e2068c3b361, '', '', '');

-- --------------------------------------------------------

-- 
-- Table structure for table `oc_cat_to_layout`
-- 

DROP TABLE IF EXISTS `oc_cat_to_layout`;
CREATE TABLE `oc_cat_to_layout` (
  `cat_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `layout_id` int(11) NOT NULL,
  PRIMARY KEY  (`cat_id`,`store_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- 
-- Dumping data for table `oc_cat_to_layout`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `oc_cat_to_store`
-- 

DROP TABLE IF EXISTS `oc_cat_to_store`;
CREATE TABLE `oc_cat_to_store` (
  `cat_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  PRIMARY KEY  (`cat_id`,`store_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- 
-- Dumping data for table `oc_cat_to_store`
-- 

INSERT INTO `oc_cat_to_store` VALUES (59, 0);
INSERT INTO `oc_cat_to_store` VALUES (60, 0);
INSERT INTO `oc_cat_to_store` VALUES (61, 0);

-- --------------------------------------------------------

-- 
-- Table structure for table `oc_comment`
-- 

DROP TABLE IF EXISTS `oc_comment`;
CREATE TABLE `oc_comment` (
  `comment_id` int(11) NOT NULL auto_increment,
  `news_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `author` varchar(64) collate utf8_bin NOT NULL default '',
  `text` text collate utf8_bin NOT NULL,
  `rating` int(1) NOT NULL,
  `status` tinyint(1) NOT NULL default '0',
  `date_added` datetime NOT NULL default '0000-00-00 00:00:00',
  `date_modified` datetime NOT NULL default '0000-00-00 00:00:00',
  PRIMARY KEY  (`comment_id`),
  KEY `news_id` (`news_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=2 ;

-- 
-- Dumping data for table `oc_comment`
-- 

INSERT INTO `oc_comment` VALUES (1, 53, 0, 0x74756e67, 0x676664676664676664676466676664676766646766646766646764666766646767666467666467660d0a64676466676664676766646766646766646764666766646767666467666467666467646667666467670d0a66646766646766646764666766646767666467666467666467646667666467676664676664676664676466676664670d0a6766646766646766646764666766646767666467666467666467646667666467676664676664676664676466676664676766640d0a67666467666467646667666467676664676664676664676466676664676766646766646766646764666766646767666467666467666467640d0a6667666467676664676664676664676466676664676766646766646766640d0a0d0a67646667666467676664676664676664676466676664676766646766646766646764666766646767666467666467666467646667666467, 1, 1, '2012-05-28 15:37:55', '0000-00-00 00:00:00');

-- --------------------------------------------------------

-- 
-- Table structure for table `oc_country`
-- 

DROP TABLE IF EXISTS `oc_country`;
CREATE TABLE `oc_country` (
  `country_id` int(11) NOT NULL auto_increment,
  `name` varchar(128) collate utf8_bin NOT NULL,
  `iso_code_2` varchar(2) collate utf8_bin NOT NULL default '',
  `iso_code_3` varchar(3) collate utf8_bin NOT NULL default '',
  `address_format` text collate utf8_bin NOT NULL,
  `postcode_required` tinyint(1) NOT NULL,
  `status` tinyint(1) NOT NULL default '1',
  PRIMARY KEY  (`country_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=240 ;

-- 
-- Dumping data for table `oc_country`
-- 

INSERT INTO `oc_country` VALUES (1, 0x41666768616e697374616e, 0x4146, 0x414647, '', 0, 1);
INSERT INTO `oc_country` VALUES (2, 0x416c62616e6961, 0x414c, 0x414c42, '', 0, 1);
INSERT INTO `oc_country` VALUES (3, 0x416c6765726961, 0x445a, 0x445a41, '', 0, 1);
INSERT INTO `oc_country` VALUES (4, 0x416d65726963616e2053616d6f61, 0x4153, 0x41534d, '', 0, 1);
INSERT INTO `oc_country` VALUES (5, 0x416e646f727261, 0x4144, 0x414e44, '', 0, 1);
INSERT INTO `oc_country` VALUES (6, 0x416e676f6c61, 0x414f, 0x41474f, '', 0, 1);
INSERT INTO `oc_country` VALUES (7, 0x416e6775696c6c61, 0x4149, 0x414941, '', 0, 1);
INSERT INTO `oc_country` VALUES (8, 0x416e7461726374696361, 0x4151, 0x415441, '', 0, 1);
INSERT INTO `oc_country` VALUES (9, 0x416e746967756120616e642042617262756461, 0x4147, 0x415447, '', 0, 1);
INSERT INTO `oc_country` VALUES (10, 0x417267656e74696e61, 0x4152, 0x415247, '', 0, 1);
INSERT INTO `oc_country` VALUES (11, 0x41726d656e6961, 0x414d, 0x41524d, '', 0, 1);
INSERT INTO `oc_country` VALUES (12, 0x4172756261, 0x4157, 0x414257, '', 0, 1);
INSERT INTO `oc_country` VALUES (13, 0x4175737472616c6961, 0x4155, 0x415553, '', 0, 1);
INSERT INTO `oc_country` VALUES (14, 0x41757374726961, 0x4154, 0x415554, '', 0, 1);
INSERT INTO `oc_country` VALUES (15, 0x417a65726261696a616e, 0x415a, 0x415a45, '', 0, 1);
INSERT INTO `oc_country` VALUES (16, 0x426168616d6173, 0x4253, 0x424853, '', 0, 1);
INSERT INTO `oc_country` VALUES (17, 0x4261687261696e, 0x4248, 0x424852, '', 0, 1);
INSERT INTO `oc_country` VALUES (18, 0x42616e676c6164657368, 0x4244, 0x424744, '', 0, 1);
INSERT INTO `oc_country` VALUES (19, 0x4261726261646f73, 0x4242, 0x425242, '', 0, 1);
INSERT INTO `oc_country` VALUES (20, 0x42656c61727573, 0x4259, 0x424c52, '', 0, 1);
INSERT INTO `oc_country` VALUES (21, 0x42656c6769756d, 0x4245, 0x42454c, '', 0, 1);
INSERT INTO `oc_country` VALUES (22, 0x42656c697a65, 0x425a, 0x424c5a, '', 0, 1);
INSERT INTO `oc_country` VALUES (23, 0x42656e696e, 0x424a, 0x42454e, '', 0, 1);
INSERT INTO `oc_country` VALUES (24, 0x4265726d756461, 0x424d, 0x424d55, '', 0, 1);
INSERT INTO `oc_country` VALUES (25, 0x42687574616e, 0x4254, 0x42544e, '', 0, 1);
INSERT INTO `oc_country` VALUES (26, 0x426f6c69766961, 0x424f, 0x424f4c, '', 0, 1);
INSERT INTO `oc_country` VALUES (27, 0x426f736e696120616e64204865727a65676f77696e61, 0x4241, 0x424948, '', 0, 1);
INSERT INTO `oc_country` VALUES (28, 0x426f747377616e61, 0x4257, 0x425741, '', 0, 1);
INSERT INTO `oc_country` VALUES (29, 0x426f757665742049736c616e64, 0x4256, 0x425654, '', 0, 1);
INSERT INTO `oc_country` VALUES (30, 0x4272617a696c, 0x4252, 0x425241, '', 0, 1);
INSERT INTO `oc_country` VALUES (31, 0x4272697469736820496e6469616e204f6365616e205465727269746f7279, 0x494f, 0x494f54, '', 0, 1);
INSERT INTO `oc_country` VALUES (32, 0x4272756e656920446172757373616c616d, 0x424e, 0x42524e, '', 0, 1);
INSERT INTO `oc_country` VALUES (33, 0x42756c6761726961, 0x4247, 0x424752, '', 0, 1);
INSERT INTO `oc_country` VALUES (34, 0x4275726b696e61204661736f, 0x4246, 0x424641, '', 0, 1);
INSERT INTO `oc_country` VALUES (35, 0x427572756e6469, 0x4249, 0x424449, '', 0, 1);
INSERT INTO `oc_country` VALUES (36, 0x43616d626f646961, 0x4b48, 0x4b484d, '', 0, 1);
INSERT INTO `oc_country` VALUES (37, 0x43616d65726f6f6e, 0x434d, 0x434d52, '', 0, 1);
INSERT INTO `oc_country` VALUES (38, 0x43616e616461, 0x4341, 0x43414e, '', 0, 1);
INSERT INTO `oc_country` VALUES (39, 0x43617065205665726465, 0x4356, 0x435056, '', 0, 1);
INSERT INTO `oc_country` VALUES (40, 0x4361796d616e2049736c616e6473, 0x4b59, 0x43594d, '', 0, 1);
INSERT INTO `oc_country` VALUES (41, 0x43656e7472616c204166726963616e2052657075626c6963, 0x4346, 0x434146, '', 0, 1);
INSERT INTO `oc_country` VALUES (42, 0x43686164, 0x5444, 0x544344, '', 0, 1);
INSERT INTO `oc_country` VALUES (43, 0x4368696c65, 0x434c, 0x43484c, '', 0, 1);
INSERT INTO `oc_country` VALUES (44, 0x4368696e61, 0x434e, 0x43484e, '', 0, 1);
INSERT INTO `oc_country` VALUES (45, 0x4368726973746d61732049736c616e64, 0x4358, 0x435852, '', 0, 1);
INSERT INTO `oc_country` VALUES (46, 0x436f636f7320284b65656c696e67292049736c616e6473, 0x4343, 0x43434b, '', 0, 1);
INSERT INTO `oc_country` VALUES (47, 0x436f6c6f6d626961, 0x434f, 0x434f4c, '', 0, 1);
INSERT INTO `oc_country` VALUES (48, 0x436f6d6f726f73, 0x4b4d, 0x434f4d, '', 0, 1);
INSERT INTO `oc_country` VALUES (49, 0x436f6e676f, 0x4347, 0x434f47, '', 0, 1);
INSERT INTO `oc_country` VALUES (50, 0x436f6f6b2049736c616e6473, 0x434b, 0x434f4b, '', 0, 1);
INSERT INTO `oc_country` VALUES (51, 0x436f7374612052696361, 0x4352, 0x435249, '', 0, 1);
INSERT INTO `oc_country` VALUES (52, 0x436f746520442749766f697265, 0x4349, 0x434956, '', 0, 1);
INSERT INTO `oc_country` VALUES (53, 0x43726f61746961, 0x4852, 0x485256, '', 0, 1);
INSERT INTO `oc_country` VALUES (54, 0x43756261, 0x4355, 0x435542, '', 0, 1);
INSERT INTO `oc_country` VALUES (55, 0x437970727573, 0x4359, 0x435950, '', 0, 1);
INSERT INTO `oc_country` VALUES (56, 0x437a6563682052657075626c6963, 0x435a, 0x435a45, '', 0, 1);
INSERT INTO `oc_country` VALUES (57, 0x44656e6d61726b, 0x444b, 0x444e4b, '', 0, 1);
INSERT INTO `oc_country` VALUES (58, 0x446a69626f757469, 0x444a, 0x444a49, '', 0, 1);
INSERT INTO `oc_country` VALUES (59, 0x446f6d696e696361, 0x444d, 0x444d41, '', 0, 1);
INSERT INTO `oc_country` VALUES (60, 0x446f6d696e6963616e2052657075626c6963, 0x444f, 0x444f4d, '', 0, 1);
INSERT INTO `oc_country` VALUES (61, 0x456173742054696d6f72, 0x5450, 0x544d50, '', 0, 1);
INSERT INTO `oc_country` VALUES (62, 0x45637561646f72, 0x4543, 0x454355, '', 0, 1);
INSERT INTO `oc_country` VALUES (63, 0x4567797074, 0x4547, 0x454759, '', 0, 1);
INSERT INTO `oc_country` VALUES (64, 0x456c2053616c7661646f72, 0x5356, 0x534c56, '', 0, 1);
INSERT INTO `oc_country` VALUES (65, 0x45717561746f7269616c204775696e6561, 0x4751, 0x474e51, '', 0, 1);
INSERT INTO `oc_country` VALUES (66, 0x45726974726561, 0x4552, 0x455249, '', 0, 1);
INSERT INTO `oc_country` VALUES (67, 0x4573746f6e6961, 0x4545, 0x455354, '', 0, 1);
INSERT INTO `oc_country` VALUES (68, 0x457468696f706961, 0x4554, 0x455448, '', 0, 1);
INSERT INTO `oc_country` VALUES (69, 0x46616c6b6c616e642049736c616e647320284d616c76696e617329, 0x464b, 0x464c4b, '', 0, 1);
INSERT INTO `oc_country` VALUES (70, 0x4661726f652049736c616e6473, 0x464f, 0x46524f, '', 0, 1);
INSERT INTO `oc_country` VALUES (71, 0x46696a69, 0x464a, 0x464a49, '', 0, 1);
INSERT INTO `oc_country` VALUES (72, 0x46696e6c616e64, 0x4649, 0x46494e, '', 0, 1);
INSERT INTO `oc_country` VALUES (73, 0x4672616e6365, 0x4652, 0x465241, '', 0, 1);
INSERT INTO `oc_country` VALUES (74, 0x4672616e63652c204d6574726f706f6c6974616e, 0x4658, 0x465858, '', 0, 1);
INSERT INTO `oc_country` VALUES (75, 0x4672656e636820477569616e61, 0x4746, 0x475546, '', 0, 1);
INSERT INTO `oc_country` VALUES (76, 0x4672656e636820506f6c796e65736961, 0x5046, 0x505946, '', 0, 1);
INSERT INTO `oc_country` VALUES (77, 0x4672656e636820536f75746865726e205465727269746f72696573, 0x5446, 0x415446, '', 0, 1);
INSERT INTO `oc_country` VALUES (78, 0x4761626f6e, 0x4741, 0x474142, '', 0, 1);
INSERT INTO `oc_country` VALUES (79, 0x47616d626961, 0x474d, 0x474d42, '', 0, 1);
INSERT INTO `oc_country` VALUES (80, 0x47656f72676961, 0x4745, 0x47454f, '', 0, 1);
INSERT INTO `oc_country` VALUES (81, 0x4765726d616e79, 0x4445, 0x444555, 0x7b636f6d70616e797d0d0a7b66697273746e616d657d207b6c6173746e616d657d0d0a7b616464726573735f317d0d0a7b616464726573735f327d0d0a7b706f7374636f64657d207b636974797d0d0a7b636f756e7472797d, 0, 1);
INSERT INTO `oc_country` VALUES (82, 0x4768616e61, 0x4748, 0x474841, '', 0, 1);
INSERT INTO `oc_country` VALUES (83, 0x47696272616c746172, 0x4749, 0x474942, '', 0, 1);
INSERT INTO `oc_country` VALUES (84, 0x477265656365, 0x4752, 0x475243, '', 0, 1);
INSERT INTO `oc_country` VALUES (85, 0x477265656e6c616e64, 0x474c, 0x47524c, '', 0, 1);
INSERT INTO `oc_country` VALUES (86, 0x4772656e616461, 0x4744, 0x475244, '', 0, 1);
INSERT INTO `oc_country` VALUES (87, 0x47756164656c6f757065, 0x4750, 0x474c50, '', 0, 1);
INSERT INTO `oc_country` VALUES (88, 0x4775616d, 0x4755, 0x47554d, '', 0, 1);
INSERT INTO `oc_country` VALUES (89, 0x47756174656d616c61, 0x4754, 0x47544d, '', 0, 1);
INSERT INTO `oc_country` VALUES (90, 0x4775696e6561, 0x474e, 0x47494e, '', 0, 1);
INSERT INTO `oc_country` VALUES (91, 0x4775696e65612d626973736175, 0x4757, 0x474e42, '', 0, 1);
INSERT INTO `oc_country` VALUES (92, 0x477579616e61, 0x4759, 0x475559, '', 0, 1);
INSERT INTO `oc_country` VALUES (93, 0x4861697469, 0x4854, 0x485449, '', 0, 1);
INSERT INTO `oc_country` VALUES (94, 0x486561726420616e64204d6320446f6e616c642049736c616e6473, 0x484d, 0x484d44, '', 0, 1);
INSERT INTO `oc_country` VALUES (95, 0x486f6e6475726173, 0x484e, 0x484e44, '', 0, 1);
INSERT INTO `oc_country` VALUES (96, 0x486f6e67204b6f6e67, 0x484b, 0x484b47, '', 0, 1);
INSERT INTO `oc_country` VALUES (97, 0x48756e67617279, 0x4855, 0x48554e, '', 0, 1);
INSERT INTO `oc_country` VALUES (98, 0x4963656c616e64, 0x4953, 0x49534c, '', 0, 1);
INSERT INTO `oc_country` VALUES (99, 0x496e646961, 0x494e, 0x494e44, '', 0, 1);
INSERT INTO `oc_country` VALUES (100, 0x496e646f6e65736961, 0x4944, 0x49444e, '', 0, 1);
INSERT INTO `oc_country` VALUES (101, 0x4972616e202849736c616d69632052657075626c6963206f6629, 0x4952, 0x49524e, '', 0, 1);
INSERT INTO `oc_country` VALUES (102, 0x49726171, 0x4951, 0x495251, '', 0, 1);
INSERT INTO `oc_country` VALUES (103, 0x4972656c616e64, 0x4945, 0x49524c, '', 0, 1);
INSERT INTO `oc_country` VALUES (104, 0x49737261656c, 0x494c, 0x495352, '', 0, 1);
INSERT INTO `oc_country` VALUES (105, 0x4974616c79, 0x4954, 0x495441, '', 0, 1);
INSERT INTO `oc_country` VALUES (106, 0x4a616d61696361, 0x4a4d, 0x4a414d, '', 0, 1);
INSERT INTO `oc_country` VALUES (107, 0x4a6170616e, 0x4a50, 0x4a504e, '', 0, 1);
INSERT INTO `oc_country` VALUES (108, 0x4a6f7264616e, 0x4a4f, 0x4a4f52, '', 0, 1);
INSERT INTO `oc_country` VALUES (109, 0x4b617a616b687374616e, 0x4b5a, 0x4b415a, '', 0, 1);
INSERT INTO `oc_country` VALUES (110, 0x4b656e7961, 0x4b45, 0x4b454e, '', 0, 1);
INSERT INTO `oc_country` VALUES (111, 0x4b69726962617469, 0x4b49, 0x4b4952, '', 0, 1);
INSERT INTO `oc_country` VALUES (112, 0x4e6f727468204b6f726561, 0x4b50, 0x50524b, '', 0, 1);
INSERT INTO `oc_country` VALUES (113, 0x4b6f7265612c2052657075626c6963206f66, 0x4b52, 0x4b4f52, '', 0, 1);
INSERT INTO `oc_country` VALUES (114, 0x4b7577616974, 0x4b57, 0x4b5754, '', 0, 1);
INSERT INTO `oc_country` VALUES (115, 0x4b797267797a7374616e, 0x4b47, 0x4b475a, '', 0, 1);
INSERT INTO `oc_country` VALUES (116, 0x4c616f2050656f706c6527732044656d6f6372617469632052657075626c6963, 0x4c41, 0x4c414f, '', 0, 1);
INSERT INTO `oc_country` VALUES (117, 0x4c6174766961, 0x4c56, 0x4c5641, '', 0, 1);
INSERT INTO `oc_country` VALUES (118, 0x4c6562616e6f6e, 0x4c42, 0x4c424e, '', 0, 1);
INSERT INTO `oc_country` VALUES (119, 0x4c65736f74686f, 0x4c53, 0x4c534f, '', 0, 1);
INSERT INTO `oc_country` VALUES (120, 0x4c696265726961, 0x4c52, 0x4c4252, '', 0, 1);
INSERT INTO `oc_country` VALUES (121, 0x4c696279616e2041726162204a616d61686972697961, 0x4c59, 0x4c4259, '', 0, 1);
INSERT INTO `oc_country` VALUES (122, 0x4c6965636874656e737465696e, 0x4c49, 0x4c4945, '', 0, 1);
INSERT INTO `oc_country` VALUES (123, 0x4c69746875616e6961, 0x4c54, 0x4c5455, '', 0, 1);
INSERT INTO `oc_country` VALUES (124, 0x4c7578656d626f757267, 0x4c55, 0x4c5558, '', 0, 1);
INSERT INTO `oc_country` VALUES (125, 0x4d61636175, 0x4d4f, 0x4d4143, '', 0, 1);
INSERT INTO `oc_country` VALUES (126, 0x4d616365646f6e6961, 0x4d4b, 0x4d4b44, '', 0, 1);
INSERT INTO `oc_country` VALUES (127, 0x4d616461676173636172, 0x4d47, 0x4d4447, '', 0, 1);
INSERT INTO `oc_country` VALUES (128, 0x4d616c617769, 0x4d57, 0x4d5749, '', 0, 1);
INSERT INTO `oc_country` VALUES (129, 0x4d616c6179736961, 0x4d59, 0x4d5953, '', 0, 1);
INSERT INTO `oc_country` VALUES (130, 0x4d616c6469766573, 0x4d56, 0x4d4456, '', 0, 1);
INSERT INTO `oc_country` VALUES (131, 0x4d616c69, 0x4d4c, 0x4d4c49, '', 0, 1);
INSERT INTO `oc_country` VALUES (132, 0x4d616c7461, 0x4d54, 0x4d4c54, '', 0, 1);
INSERT INTO `oc_country` VALUES (133, 0x4d61727368616c6c2049736c616e6473, 0x4d48, 0x4d484c, '', 0, 1);
INSERT INTO `oc_country` VALUES (134, 0x4d617274696e69717565, 0x4d51, 0x4d5451, '', 0, 1);
INSERT INTO `oc_country` VALUES (135, 0x4d6175726974616e6961, 0x4d52, 0x4d5254, '', 0, 1);
INSERT INTO `oc_country` VALUES (136, 0x4d6175726974697573, 0x4d55, 0x4d5553, '', 0, 1);
INSERT INTO `oc_country` VALUES (137, 0x4d61796f747465, 0x5954, 0x4d5954, '', 0, 1);
INSERT INTO `oc_country` VALUES (138, 0x4d657869636f, 0x4d58, 0x4d4558, '', 0, 1);
INSERT INTO `oc_country` VALUES (139, 0x4d6963726f6e657369612c2046656465726174656420537461746573206f66, 0x464d, 0x46534d, '', 0, 1);
INSERT INTO `oc_country` VALUES (140, 0x4d6f6c646f76612c2052657075626c6963206f66, 0x4d44, 0x4d4441, '', 0, 1);
INSERT INTO `oc_country` VALUES (141, 0x4d6f6e61636f, 0x4d43, 0x4d434f, '', 0, 1);
INSERT INTO `oc_country` VALUES (142, 0x4d6f6e676f6c6961, 0x4d4e, 0x4d4e47, '', 0, 1);
INSERT INTO `oc_country` VALUES (143, 0x4d6f6e74736572726174, 0x4d53, 0x4d5352, '', 0, 1);
INSERT INTO `oc_country` VALUES (144, 0x4d6f726f63636f, 0x4d41, 0x4d4152, '', 0, 1);
INSERT INTO `oc_country` VALUES (145, 0x4d6f7a616d6269717565, 0x4d5a, 0x4d4f5a, '', 0, 1);
INSERT INTO `oc_country` VALUES (146, 0x4d79616e6d6172, 0x4d4d, 0x4d4d52, '', 0, 1);
INSERT INTO `oc_country` VALUES (147, 0x4e616d69626961, 0x4e41, 0x4e414d, '', 0, 1);
INSERT INTO `oc_country` VALUES (148, 0x4e61757275, 0x4e52, 0x4e5255, '', 0, 1);
INSERT INTO `oc_country` VALUES (149, 0x4e6570616c, 0x4e50, 0x4e504c, '', 0, 1);
INSERT INTO `oc_country` VALUES (150, 0x4e65746865726c616e6473, 0x4e4c, 0x4e4c44, '', 0, 1);
INSERT INTO `oc_country` VALUES (151, 0x4e65746865726c616e647320416e74696c6c6573, 0x414e, 0x414e54, '', 0, 1);
INSERT INTO `oc_country` VALUES (152, 0x4e65772043616c65646f6e6961, 0x4e43, 0x4e434c, '', 0, 1);
INSERT INTO `oc_country` VALUES (153, 0x4e6577205a65616c616e64, 0x4e5a, 0x4e5a4c, '', 0, 1);
INSERT INTO `oc_country` VALUES (154, 0x4e6963617261677561, 0x4e49, 0x4e4943, '', 0, 1);
INSERT INTO `oc_country` VALUES (155, 0x4e69676572, 0x4e45, 0x4e4552, '', 0, 1);
INSERT INTO `oc_country` VALUES (156, 0x4e696765726961, 0x4e47, 0x4e4741, '', 0, 1);
INSERT INTO `oc_country` VALUES (157, 0x4e697565, 0x4e55, 0x4e4955, '', 0, 1);
INSERT INTO `oc_country` VALUES (158, 0x4e6f72666f6c6b2049736c616e64, 0x4e46, 0x4e464b, '', 0, 1);
INSERT INTO `oc_country` VALUES (159, 0x4e6f72746865726e204d617269616e612049736c616e6473, 0x4d50, 0x4d4e50, '', 0, 1);
INSERT INTO `oc_country` VALUES (160, 0x4e6f72776179, 0x4e4f, 0x4e4f52, '', 0, 1);
INSERT INTO `oc_country` VALUES (161, 0x4f6d616e, 0x4f4d, 0x4f4d4e, '', 0, 1);
INSERT INTO `oc_country` VALUES (162, 0x50616b697374616e, 0x504b, 0x50414b, '', 0, 1);
INSERT INTO `oc_country` VALUES (163, 0x50616c6175, 0x5057, 0x504c57, '', 0, 1);
INSERT INTO `oc_country` VALUES (164, 0x50616e616d61, 0x5041, 0x50414e, '', 0, 1);
INSERT INTO `oc_country` VALUES (165, 0x5061707561204e6577204775696e6561, 0x5047, 0x504e47, '', 0, 1);
INSERT INTO `oc_country` VALUES (166, 0x5061726167756179, 0x5059, 0x505259, '', 0, 1);
INSERT INTO `oc_country` VALUES (167, 0x50657275, 0x5045, 0x504552, '', 0, 1);
INSERT INTO `oc_country` VALUES (168, 0x5068696c697070696e6573, 0x5048, 0x50484c, '', 0, 1);
INSERT INTO `oc_country` VALUES (169, 0x506974636169726e, 0x504e, 0x50434e, '', 0, 1);
INSERT INTO `oc_country` VALUES (170, 0x506f6c616e64, 0x504c, 0x504f4c, '', 0, 1);
INSERT INTO `oc_country` VALUES (171, 0x506f72747567616c, 0x5054, 0x505254, '', 0, 1);
INSERT INTO `oc_country` VALUES (172, 0x50756572746f205269636f, 0x5052, 0x505249, '', 0, 1);
INSERT INTO `oc_country` VALUES (173, 0x5161746172, 0x5141, 0x514154, '', 0, 1);
INSERT INTO `oc_country` VALUES (174, 0x5265756e696f6e, 0x5245, 0x524555, '', 0, 1);
INSERT INTO `oc_country` VALUES (175, 0x526f6d616e6961, 0x524f, 0x524f4d, '', 0, 1);
INSERT INTO `oc_country` VALUES (176, 0x5275737369616e2046656465726174696f6e, 0x5255, 0x525553, '', 0, 1);
INSERT INTO `oc_country` VALUES (177, 0x5277616e6461, 0x5257, 0x525741, '', 0, 1);
INSERT INTO `oc_country` VALUES (178, 0x5361696e74204b6974747320616e64204e65766973, 0x4b4e, 0x4b4e41, '', 0, 1);
INSERT INTO `oc_country` VALUES (179, 0x5361696e74204c75636961, 0x4c43, 0x4c4341, '', 0, 1);
INSERT INTO `oc_country` VALUES (180, 0x5361696e742056696e63656e7420616e6420746865204772656e6164696e6573, 0x5643, 0x564354, '', 0, 1);
INSERT INTO `oc_country` VALUES (181, 0x53616d6f61, 0x5753, 0x57534d, '', 0, 1);
INSERT INTO `oc_country` VALUES (182, 0x53616e204d6172696e6f, 0x534d, 0x534d52, '', 0, 1);
INSERT INTO `oc_country` VALUES (183, 0x53616f20546f6d6520616e64205072696e63697065, 0x5354, 0x535450, '', 0, 1);
INSERT INTO `oc_country` VALUES (184, 0x536175646920417261626961, 0x5341, 0x534155, '', 0, 1);
INSERT INTO `oc_country` VALUES (185, 0x53656e6567616c, 0x534e, 0x53454e, '', 0, 1);
INSERT INTO `oc_country` VALUES (186, 0x5365796368656c6c6573, 0x5343, 0x535943, '', 0, 1);
INSERT INTO `oc_country` VALUES (187, 0x536965727261204c656f6e65, 0x534c, 0x534c45, '', 0, 1);
INSERT INTO `oc_country` VALUES (188, 0x53696e6761706f7265, 0x5347, 0x534750, '', 0, 1);
INSERT INTO `oc_country` VALUES (189, 0x536c6f76616b2052657075626c6963, 0x534b, 0x53564b, 0x7b66697273746e616d657d207b6c6173746e616d657d0d0a7b636f6d70616e797d0d0a7b616464726573735f317d0d0a7b616464726573735f327d0d0a7b636974797d207b706f7374636f64657d0d0a7b7a6f6e657d0d0a7b636f756e7472797d, 0, 1);
INSERT INTO `oc_country` VALUES (190, 0x536c6f76656e6961, 0x5349, 0x53564e, '', 0, 1);
INSERT INTO `oc_country` VALUES (191, 0x536f6c6f6d6f6e2049736c616e6473, 0x5342, 0x534c42, '', 0, 1);
INSERT INTO `oc_country` VALUES (192, 0x536f6d616c6961, 0x534f, 0x534f4d, '', 0, 1);
INSERT INTO `oc_country` VALUES (193, 0x536f75746820416672696361, 0x5a41, 0x5a4146, '', 0, 1);
INSERT INTO `oc_country` VALUES (194, 0x536f7574682047656f726769612026616d703b20536f7574682053616e64776963682049736c616e6473, 0x4753, 0x534753, '', 0, 1);
INSERT INTO `oc_country` VALUES (195, 0x537061696e, 0x4553, 0x455350, '', 0, 1);
INSERT INTO `oc_country` VALUES (196, 0x537269204c616e6b61, 0x4c4b, 0x4c4b41, '', 0, 1);
INSERT INTO `oc_country` VALUES (197, 0x53742e2048656c656e61, 0x5348, 0x53484e, '', 0, 1);
INSERT INTO `oc_country` VALUES (198, 0x53742e2050696572726520616e64204d697175656c6f6e, 0x504d, 0x53504d, '', 0, 1);
INSERT INTO `oc_country` VALUES (199, 0x537564616e, 0x5344, 0x53444e, '', 0, 1);
INSERT INTO `oc_country` VALUES (200, 0x537572696e616d65, 0x5352, 0x535552, '', 0, 1);
INSERT INTO `oc_country` VALUES (201, 0x5376616c6261726420616e64204a616e204d6179656e2049736c616e6473, 0x534a, 0x534a4d, '', 0, 1);
INSERT INTO `oc_country` VALUES (202, 0x5377617a696c616e64, 0x535a, 0x53575a, '', 0, 1);
INSERT INTO `oc_country` VALUES (203, 0x53776564656e, 0x5345, 0x535745, '', 0, 1);
INSERT INTO `oc_country` VALUES (204, 0x537769747a65726c616e64, 0x4348, 0x434845, '', 0, 1);
INSERT INTO `oc_country` VALUES (205, 0x53797269616e20417261622052657075626c6963, 0x5359, 0x535952, '', 0, 1);
INSERT INTO `oc_country` VALUES (206, 0x54616977616e, 0x5457, 0x54574e, '', 0, 1);
INSERT INTO `oc_country` VALUES (207, 0x54616a696b697374616e, 0x544a, 0x544a4b, '', 0, 1);
INSERT INTO `oc_country` VALUES (208, 0x54616e7a616e69612c20556e697465642052657075626c6963206f66, 0x545a, 0x545a41, '', 0, 1);
INSERT INTO `oc_country` VALUES (209, 0x546861696c616e64, 0x5448, 0x544841, '', 0, 1);
INSERT INTO `oc_country` VALUES (210, 0x546f676f, 0x5447, 0x54474f, '', 0, 1);
INSERT INTO `oc_country` VALUES (211, 0x546f6b656c6175, 0x544b, 0x544b4c, '', 0, 1);
INSERT INTO `oc_country` VALUES (212, 0x546f6e6761, 0x544f, 0x544f4e, '', 0, 1);
INSERT INTO `oc_country` VALUES (213, 0x5472696e6964616420616e6420546f6261676f, 0x5454, 0x54544f, '', 0, 1);
INSERT INTO `oc_country` VALUES (214, 0x54756e69736961, 0x544e, 0x54554e, '', 0, 1);
INSERT INTO `oc_country` VALUES (215, 0x5475726b6579, 0x5452, 0x545552, '', 0, 1);
INSERT INTO `oc_country` VALUES (216, 0x5475726b6d656e697374616e, 0x544d, 0x544b4d, '', 0, 1);
INSERT INTO `oc_country` VALUES (217, 0x5475726b7320616e6420436169636f732049736c616e6473, 0x5443, 0x544341, '', 0, 1);
INSERT INTO `oc_country` VALUES (218, 0x547576616c75, 0x5456, 0x545556, '', 0, 1);
INSERT INTO `oc_country` VALUES (219, 0x5567616e6461, 0x5547, 0x554741, '', 0, 1);
INSERT INTO `oc_country` VALUES (220, 0x556b7261696e65, 0x5541, 0x554b52, '', 0, 1);
INSERT INTO `oc_country` VALUES (221, 0x556e69746564204172616220456d697261746573, 0x4145, 0x415245, '', 0, 1);
INSERT INTO `oc_country` VALUES (222, 0x556e69746564204b696e67646f6d, 0x4742, 0x474252, '', 1, 1);
INSERT INTO `oc_country` VALUES (223, 0x556e6974656420537461746573, 0x5553, 0x555341, 0x7b66697273746e616d657d207b6c6173746e616d657d0d0a7b636f6d70616e797d0d0a7b616464726573735f317d0d0a7b616464726573735f327d0d0a7b636974797d2c207b7a6f6e657d207b706f7374636f64657d0d0a7b636f756e7472797d, 0, 1);
INSERT INTO `oc_country` VALUES (224, 0x556e6974656420537461746573204d696e6f72204f75746c79696e672049736c616e6473, 0x554d, 0x554d49, '', 0, 1);
INSERT INTO `oc_country` VALUES (225, 0x55727567756179, 0x5559, 0x555259, '', 0, 1);
INSERT INTO `oc_country` VALUES (226, 0x557a62656b697374616e, 0x555a, 0x555a42, '', 0, 1);
INSERT INTO `oc_country` VALUES (227, 0x56616e75617475, 0x5655, 0x565554, '', 0, 1);
INSERT INTO `oc_country` VALUES (228, 0x5661746963616e20436974792053746174652028486f6c792053656529, 0x5641, 0x564154, '', 0, 1);
INSERT INTO `oc_country` VALUES (229, 0x56656e657a75656c61, 0x5645, 0x56454e, '', 0, 1);
INSERT INTO `oc_country` VALUES (230, 0x5669e1bb8774204e616d, 0x564e, 0x564e4d, '', 0, 1);
INSERT INTO `oc_country` VALUES (231, 0x56697267696e2049736c616e647320284272697469736829, 0x5647, 0x564742, '', 0, 1);
INSERT INTO `oc_country` VALUES (232, 0x56697267696e2049736c616e64732028552e532e29, 0x5649, 0x564952, '', 0, 1);
INSERT INTO `oc_country` VALUES (233, 0x57616c6c697320616e6420467574756e612049736c616e6473, 0x5746, 0x574c46, '', 0, 1);
INSERT INTO `oc_country` VALUES (234, 0x5765737465726e20536168617261, 0x4548, 0x455348, '', 0, 1);
INSERT INTO `oc_country` VALUES (235, 0x59656d656e, 0x5945, 0x59454d, '', 0, 1);
INSERT INTO `oc_country` VALUES (236, 0x5975676f736c61766961, 0x5955, 0x595547, '', 0, 1);
INSERT INTO `oc_country` VALUES (237, 0x44656d6f6372617469632052657075626c6963206f6620436f6e676f, 0x4344, 0x434f44, '', 0, 1);
INSERT INTO `oc_country` VALUES (238, 0x5a616d626961, 0x5a4d, 0x5a4d42, '', 0, 1);
INSERT INTO `oc_country` VALUES (239, 0x5a696d6261627765, 0x5a57, 0x5a5745, '', 0, 1);

-- --------------------------------------------------------

-- 
-- Table structure for table `oc_coupon`
-- 

DROP TABLE IF EXISTS `oc_coupon`;
CREATE TABLE `oc_coupon` (
  `coupon_id` int(11) NOT NULL auto_increment,
  `name` varchar(128) collate utf8_bin NOT NULL,
  `code` varchar(10) collate utf8_bin NOT NULL,
  `type` char(1) collate utf8_bin NOT NULL,
  `discount` decimal(15,4) NOT NULL,
  `logged` tinyint(1) NOT NULL,
  `shipping` tinyint(1) NOT NULL,
  `total` decimal(15,4) NOT NULL,
  `date_start` date NOT NULL default '0000-00-00',
  `date_end` date NOT NULL default '0000-00-00',
  `uses_total` int(11) NOT NULL,
  `uses_customer` varchar(11) collate utf8_bin NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL default '0000-00-00 00:00:00',
  PRIMARY KEY  (`coupon_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=7 ;

-- 
-- Dumping data for table `oc_coupon`
-- 

INSERT INTO `oc_coupon` VALUES (4, 0x2d31302520446973636f756e74, 0x32323232, 0x50, 10.0000, 0, 0, 0.0000, '2011-01-01', '2012-01-01', 10, 0x3130, 1, '2009-01-27 13:55:03');
INSERT INTO `oc_coupon` VALUES (5, 0x46726565205368697070696e67, 0x33333333, 0x50, 0.0000, 0, 1, 100.0000, '2009-03-01', '2009-08-31', 10, 0x3130, 1, '2009-03-14 21:13:53');
INSERT INTO `oc_coupon` VALUES (6, 0x2d31302e303020446973636f756e74, 0x31313131, 0x46, 10.0000, 0, 0, 10.0000, '1970-11-01', '2020-11-01', 100000, 0x3130303030, 1, '2009-03-14 21:15:18');

-- --------------------------------------------------------

-- 
-- Table structure for table `oc_coupon_history`
-- 

DROP TABLE IF EXISTS `oc_coupon_history`;
CREATE TABLE `oc_coupon_history` (
  `coupon_history_id` int(11) NOT NULL auto_increment,
  `coupon_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `amount` decimal(15,4) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY  (`coupon_history_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=1 ;

-- 
-- Dumping data for table `oc_coupon_history`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `oc_coupon_product`
-- 

DROP TABLE IF EXISTS `oc_coupon_product`;
CREATE TABLE `oc_coupon_product` (
  `coupon_product_id` int(11) NOT NULL auto_increment,
  `coupon_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  PRIMARY KEY  (`coupon_product_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=1 ;

-- 
-- Dumping data for table `oc_coupon_product`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `oc_currency`
-- 

DROP TABLE IF EXISTS `oc_currency`;
CREATE TABLE `oc_currency` (
  `currency_id` int(11) NOT NULL auto_increment,
  `title` varchar(32) collate utf8_bin NOT NULL default '',
  `code` varchar(3) collate utf8_bin NOT NULL default '',
  `symbol_left` varchar(12) collate utf8_bin NOT NULL,
  `symbol_right` varchar(12) collate utf8_bin NOT NULL,
  `decimal_place` char(1) collate utf8_bin NOT NULL,
  `value` float(15,8) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_modified` datetime NOT NULL default '0000-00-00 00:00:00',
  PRIMARY KEY  (`currency_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=4 ;

-- 
-- Dumping data for table `oc_currency`
-- 

INSERT INTO `oc_currency` VALUES (3, 0x564ec490, 0x766e64, '', 0x20766ec491, 0x30, 1.00000000, 1, '2012-05-24 23:56:21');

-- --------------------------------------------------------

-- 
-- Table structure for table `oc_customer`
-- 

DROP TABLE IF EXISTS `oc_customer`;
CREATE TABLE `oc_customer` (
  `customer_id` int(11) NOT NULL auto_increment,
  `store_id` int(11) NOT NULL default '0',
  `firstname` varchar(32) collate utf8_bin NOT NULL default '',
  `lastname` varchar(32) collate utf8_bin NOT NULL default '',
  `email` varchar(96) collate utf8_bin NOT NULL default '',
  `telephone` varchar(32) collate utf8_bin NOT NULL default '',
  `fax` varchar(32) collate utf8_bin NOT NULL default '',
  `password` varchar(40) collate utf8_bin NOT NULL default '',
  `cart` text collate utf8_bin,
  `wishlist` text collate utf8_bin,
  `newsletter` tinyint(1) NOT NULL default '0',
  `address_id` int(11) NOT NULL default '0',
  `customer_group_id` int(11) NOT NULL,
  `ip` varchar(15) collate utf8_bin NOT NULL default '0',
  `status` tinyint(1) NOT NULL,
  `approved` tinyint(1) NOT NULL,
  `token` varchar(255) collate utf8_bin NOT NULL,
  `date_added` datetime NOT NULL default '0000-00-00 00:00:00',
  PRIMARY KEY  (`customer_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=4 ;

-- 
-- Dumping data for table `oc_customer`
-- 

INSERT INTO `oc_customer` VALUES (1, 0, 0x34353435, 0x3435343534, 0x6c657468616e6874756e6770726f40676d61696c2e636f6d, 0x343534343435, 0x61646d696e, 0x6531306164633339343962613539616262653536653035376632306638383365, NULL, NULL, 1, 0, 0, 0x30, 1, 0, '', '2012-05-28 14:45:58');
INSERT INTO `oc_customer` VALUES (2, 0, 0x34353435, 0x3435343534, 0x74756e6740676d61696c2e636f6d, 0x343534343435, 0x61646d696e, 0x6531306164633339343962613539616262653536653035376632306638383365, NULL, NULL, 1, 0, 0, 0x30, 1, 0, '', '2012-05-28 14:46:10');
INSERT INTO `oc_customer` VALUES (3, 0, 0x3132313231323132, 0x31323132313231, 0x7472616e6740676d61696c2e636f6d, 0x30393839353637363236, 0x313233, 0x6531306164633339343962613539616262653536653035376632306638383365, 0x613a303a7b7d, 0x613a303a7b7d, 1, 1, 1, 0x3132372e302e302e31, 1, 0, '', '2012-05-28 14:48:21');

-- --------------------------------------------------------

-- 
-- Table structure for table `oc_customer_group`
-- 

DROP TABLE IF EXISTS `oc_customer_group`;
CREATE TABLE `oc_customer_group` (
  `customer_group_id` int(11) NOT NULL auto_increment,
  `approval` int(1) NOT NULL,
  `company_id_display` int(1) NOT NULL,
  `company_id_required` int(1) NOT NULL,
  `tax_id_display` int(1) NOT NULL,
  `tax_id_required` int(1) NOT NULL,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY  (`customer_group_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=2 ;

-- 
-- Dumping data for table `oc_customer_group`
-- 

INSERT INTO `oc_customer_group` VALUES (1, 0, 0, 0, 0, 0, 1);

-- --------------------------------------------------------

-- 
-- Table structure for table `oc_customer_group_description`
-- 

DROP TABLE IF EXISTS `oc_customer_group_description`;
CREATE TABLE `oc_customer_group_description` (
  `customer_group_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(32) collate utf8_bin NOT NULL,
  `description` text collate utf8_bin NOT NULL,
  PRIMARY KEY  (`customer_group_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- 
-- Dumping data for table `oc_customer_group_description`
-- 

INSERT INTO `oc_customer_group_description` VALUES (1, 1, 0x44656661756c74, 0x74657374);
INSERT INTO `oc_customer_group_description` VALUES (1, 2, 0x4b68c3a163682068c3a06e67, 0x4b68c3a163682068c3a06e67207468c6b0e1bb9d6e67);

-- --------------------------------------------------------

-- 
-- Table structure for table `oc_customer_ip`
-- 

DROP TABLE IF EXISTS `oc_customer_ip`;
CREATE TABLE `oc_customer_ip` (
  `customer_ip_id` int(11) NOT NULL auto_increment,
  `customer_id` int(11) NOT NULL,
  `ip` varchar(15) collate utf8_bin NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY  (`customer_ip_id`),
  KEY `ip` (`ip`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=2 ;

-- 
-- Dumping data for table `oc_customer_ip`
-- 

INSERT INTO `oc_customer_ip` VALUES (1, 3, 0x3132372e302e302e31, '2012-05-28 14:49:02');

-- --------------------------------------------------------

-- 
-- Table structure for table `oc_customer_ip_blacklist`
-- 

DROP TABLE IF EXISTS `oc_customer_ip_blacklist`;
CREATE TABLE `oc_customer_ip_blacklist` (
  `customer_ip_blacklist_id` int(11) NOT NULL auto_increment,
  `ip` varchar(15) collate utf8_bin NOT NULL,
  PRIMARY KEY  (`customer_ip_blacklist_id`),
  KEY `ip` (`ip`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=1 ;

-- 
-- Dumping data for table `oc_customer_ip_blacklist`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `oc_customer_reward`
-- 

DROP TABLE IF EXISTS `oc_customer_reward`;
CREATE TABLE `oc_customer_reward` (
  `customer_reward_id` int(11) NOT NULL auto_increment,
  `customer_id` int(11) NOT NULL default '0',
  `order_id` int(11) NOT NULL default '0',
  `description` text collate utf8_bin NOT NULL,
  `points` int(8) NOT NULL default '0',
  `date_added` datetime NOT NULL default '0000-00-00 00:00:00',
  PRIMARY KEY  (`customer_reward_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=1 ;

-- 
-- Dumping data for table `oc_customer_reward`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `oc_customer_transaction`
-- 

DROP TABLE IF EXISTS `oc_customer_transaction`;
CREATE TABLE `oc_customer_transaction` (
  `customer_transaction_id` int(11) NOT NULL auto_increment,
  `customer_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `description` text collate utf8_bin NOT NULL,
  `amount` decimal(15,4) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY  (`customer_transaction_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=4 ;

-- 
-- Dumping data for table `oc_customer_transaction`
-- 

INSERT INTO `oc_customer_transaction` VALUES (1, 3, 0, 0x74657374, 100000.0000, '2012-05-28 14:48:49');
INSERT INTO `oc_customer_transaction` VALUES (2, 3, 0, 0x3130, 10000000000.0000, '2012-05-28 14:49:37');
INSERT INTO `oc_customer_transaction` VALUES (3, 3, 3, 0x4d6120646f6e2068616e673a202333, -400005.0000, '2012-05-28 14:52:01');

-- --------------------------------------------------------

-- 
-- Table structure for table `oc_download`
-- 

DROP TABLE IF EXISTS `oc_download`;
CREATE TABLE `oc_download` (
  `download_id` int(11) NOT NULL auto_increment,
  `filename` varchar(128) collate utf8_bin NOT NULL default '',
  `mask` varchar(128) collate utf8_bin NOT NULL default '',
  `remaining` int(11) NOT NULL default '0',
  `date_added` datetime NOT NULL default '0000-00-00 00:00:00',
  PRIMARY KEY  (`download_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=3 ;

-- 
-- Dumping data for table `oc_download`
-- 

INSERT INTO `oc_download` VALUES (2, 0x74756e672e6a70672e3663393733326635663936633230313438353939623135633439303330666436, 0x74756e672e6a7067, 1, '2012-05-26 23:46:37');

-- --------------------------------------------------------

-- 
-- Table structure for table `oc_download_description`
-- 

DROP TABLE IF EXISTS `oc_download_description`;
CREATE TABLE `oc_download_description` (
  `download_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(64) collate utf8_bin NOT NULL default '',
  PRIMARY KEY  (`download_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- 
-- Dumping data for table `oc_download_description`
-- 

INSERT INTO `oc_download_description` VALUES (2, 2, 0x74756e67);

-- --------------------------------------------------------

-- 
-- Table structure for table `oc_extension`
-- 

DROP TABLE IF EXISTS `oc_extension`;
CREATE TABLE `oc_extension` (
  `extension_id` int(11) NOT NULL auto_increment,
  `type` varchar(32) collate utf8_bin NOT NULL,
  `code` varchar(32) collate utf8_bin NOT NULL,
  PRIMARY KEY  (`extension_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=459 ;

-- 
-- Dumping data for table `oc_extension`
-- 

INSERT INTO `oc_extension` VALUES (23, 0x7061796d656e74, 0x636f64);
INSERT INTO `oc_extension` VALUES (22, 0x746f74616c, 0x7368697070696e67);
INSERT INTO `oc_extension` VALUES (57, 0x746f74616c, 0x7375625f746f74616c);
INSERT INTO `oc_extension` VALUES (58, 0x746f74616c, 0x746178);
INSERT INTO `oc_extension` VALUES (59, 0x746f74616c, 0x746f74616c);
INSERT INTO `oc_extension` VALUES (390, 0x746f74616c, 0x637265646974);
INSERT INTO `oc_extension` VALUES (387, 0x7368697070696e67, 0x666c6174);
INSERT INTO `oc_extension` VALUES (349, 0x746f74616c, 0x68616e646c696e67);
INSERT INTO `oc_extension` VALUES (350, 0x746f74616c, 0x6c6f775f6f726465725f666565);
INSERT INTO `oc_extension` VALUES (389, 0x746f74616c, 0x636f75706f6e);
INSERT INTO `oc_extension` VALUES (413, 0x6d6f64756c65, 0x63617465676f7279);
INSERT INTO `oc_extension` VALUES (408, 0x6d6f64756c65, 0x6163636f756e74);
INSERT INTO `oc_extension` VALUES (393, 0x746f74616c, 0x726577617264);
INSERT INTO `oc_extension` VALUES (398, 0x746f74616c, 0x766f7563686572);
INSERT INTO `oc_extension` VALUES (407, 0x7061796d656e74, 0x667265655f636865636b6f7574);
INSERT INTO `oc_extension` VALUES (427, 0x6d6f64756c65, 0x6665617475726564);
INSERT INTO `oc_extension` VALUES (419, 0x6d6f64756c65, 0x736c69646573686f77);
INSERT INTO `oc_extension` VALUES (430, 0x6d6f64756c65, 0x6c6174657374);
INSERT INTO `oc_extension` VALUES (438, 0x6d6f64756c65, 0x636174);
INSERT INTO `oc_extension` VALUES (439, 0x6d6f64756c65, 0x746e745f7961686f6f);
INSERT INTO `oc_extension` VALUES (440, 0x6d6f64756c65, 0x696e666f726d6174696f6e);
INSERT INTO `oc_extension` VALUES (442, 0x6d6f64756c65, 0x746e745f77656c636f6d65);
INSERT INTO `oc_extension` VALUES (443, 0x6d6f64756c65, 0x746e745f70726f64756374636174);
INSERT INTO `oc_extension` VALUES (444, 0x6d6f64756c65, 0x62616e6e6572);
INSERT INTO `oc_extension` VALUES (445, 0x6d6f64756c65, 0x746e745f77656174686572);
INSERT INTO `oc_extension` VALUES (446, 0x6d6f64756c65, 0x746e745f72616e646f6d);
INSERT INTO `oc_extension` VALUES (447, 0x6d6f64756c65, 0x76697369746f72);
INSERT INTO `oc_extension` VALUES (448, 0x6d6f64756c65, 0x6265737473656c6c6572);
INSERT INTO `oc_extension` VALUES (450, 0x7368697070696e67, 0x66726565);
INSERT INTO `oc_extension` VALUES (451, 0x7061796d656e74, 0x62616e6b5f7472616e73666572);
INSERT INTO `oc_extension` VALUES (456, 0x6d6f64756c65, 0x6e6577736665617475726564);
INSERT INTO `oc_extension` VALUES (457, 0x6d6f64756c65, 0x6e6577736c6174657374);
INSERT INTO `oc_extension` VALUES (458, 0x6d6f64756c65, 0x746e745f6e657773636174);

-- --------------------------------------------------------

-- 
-- Table structure for table `oc_geo_zone`
-- 

DROP TABLE IF EXISTS `oc_geo_zone`;
CREATE TABLE `oc_geo_zone` (
  `geo_zone_id` int(11) NOT NULL auto_increment,
  `name` varchar(32) collate utf8_bin NOT NULL default '',
  `description` varchar(255) collate utf8_bin NOT NULL default '',
  `date_modified` datetime NOT NULL default '0000-00-00 00:00:00',
  `date_added` datetime NOT NULL default '0000-00-00 00:00:00',
  PRIMARY KEY  (`geo_zone_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=5 ;

-- 
-- Dumping data for table `oc_geo_zone`
-- 

INSERT INTO `oc_geo_zone` VALUES (3, 0x4e676fe1baa169207468c3a06e682048e1baa369205068c3b26e67, 0x4e676fe1baa169207468c3a06e682048e1baa369205068c3b26e67, '2012-05-25 00:13:52', '2009-01-06 23:26:25');
INSERT INTO `oc_geo_zone` VALUES (4, 0x4ee1bb9969207468c3a06e682048e1baa369205068c3b26e67, 0x4ee1bb9969207468c3a06e682048e1baa369205068c3b26e67, '2012-05-25 00:13:28', '2009-06-23 01:14:53');

-- --------------------------------------------------------

-- 
-- Table structure for table `oc_information`
-- 

DROP TABLE IF EXISTS `oc_information`;
CREATE TABLE `oc_information` (
  `information_id` int(11) NOT NULL auto_increment,
  `bottom` int(1) NOT NULL default '0',
  `sort_order` int(3) NOT NULL default '0',
  `status` tinyint(1) NOT NULL default '1',
  `top` int(1) NOT NULL,
  PRIMARY KEY  (`information_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=7 ;

-- 
-- Dumping data for table `oc_information`
-- 

INSERT INTO `oc_information` VALUES (3, 0, 3, 1, 0);
INSERT INTO `oc_information` VALUES (4, 0, 1, 1, 1);
INSERT INTO `oc_information` VALUES (5, 0, 4, 1, 0);
INSERT INTO `oc_information` VALUES (6, 0, 2, 1, 1);

-- --------------------------------------------------------

-- 
-- Table structure for table `oc_information_description`
-- 

DROP TABLE IF EXISTS `oc_information_description`;
CREATE TABLE `oc_information_description` (
  `information_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `title` varchar(64) collate utf8_bin NOT NULL default '',
  `description` text collate utf8_bin NOT NULL,
  PRIMARY KEY  (`information_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- 
-- Dumping data for table `oc_information_description`
-- 

INSERT INTO `oc_information_description` VALUES (4, 2, 0x4769e1bb9b6920746869e1bb8775, 0x266c743b702667743b0d0a094769e1bb9b6920746869e1bb8775266c743b2f702667743b0d0a);
INSERT INTO `oc_information_description` VALUES (5, 2, 0xc49069e1bb8175206b686fe1baa36e2076c3a020c49169e1bb8175206b69e1bb876e, 0x266c743b702667743b0d0a09c49069e1bb8175206b686fe1baa36e2076c3a020c49169e1bb8175206b69e1bb876e266c743b2f702667743b0d0a);
INSERT INTO `oc_information_description` VALUES (3, 2, 0x517579e1bb816e207269c3aa6e672074c6b0, 0x266c743b702667743b0d0a09517579e1bb816e207269c3aa6e672074c6b0266c743b2f702667743b0d0a);
INSERT INTO `oc_information_description` VALUES (6, 2, 0x547579e1bb836e2064e1bba56e67, 0x266c743b702667743b0d0a09547579e1bb836e2064e1bba56e67266c743b2f702667743b0d0a);

-- --------------------------------------------------------

-- 
-- Table structure for table `oc_information_to_layout`
-- 

DROP TABLE IF EXISTS `oc_information_to_layout`;
CREATE TABLE `oc_information_to_layout` (
  `information_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `layout_id` int(11) NOT NULL,
  PRIMARY KEY  (`information_id`,`store_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- 
-- Dumping data for table `oc_information_to_layout`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `oc_information_to_store`
-- 

DROP TABLE IF EXISTS `oc_information_to_store`;
CREATE TABLE `oc_information_to_store` (
  `information_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  PRIMARY KEY  (`information_id`,`store_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- 
-- Dumping data for table `oc_information_to_store`
-- 

INSERT INTO `oc_information_to_store` VALUES (3, 0);
INSERT INTO `oc_information_to_store` VALUES (4, 0);
INSERT INTO `oc_information_to_store` VALUES (5, 0);
INSERT INTO `oc_information_to_store` VALUES (6, 0);

-- --------------------------------------------------------

-- 
-- Table structure for table `oc_language`
-- 

DROP TABLE IF EXISTS `oc_language`;
CREATE TABLE `oc_language` (
  `language_id` int(11) NOT NULL auto_increment,
  `name` varchar(32) collate utf8_bin NOT NULL default '',
  `code` varchar(5) collate utf8_bin NOT NULL,
  `locale` varchar(255) collate utf8_bin NOT NULL,
  `image` varchar(64) collate utf8_bin NOT NULL,
  `directory` varchar(32) collate utf8_bin NOT NULL default '',
  `filename` varchar(64) collate utf8_bin NOT NULL default '',
  `sort_order` int(3) NOT NULL default '0',
  `status` tinyint(1) NOT NULL,
  PRIMARY KEY  (`language_id`),
  KEY `name` (`name`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=3 ;

-- 
-- Dumping data for table `oc_language`
-- 

INSERT INTO `oc_language` VALUES (2, 0x5669e1bb8774204e616d, 0x766e, 0x76695f564e2e5554462d382c76695f564e2c76692d766e2c766965746e616d657365, 0x766e2e706e67, 0x766965746e616d657365, 0x766965746e616d657365, 2, 1);

-- --------------------------------------------------------

-- 
-- Table structure for table `oc_layout`
-- 

DROP TABLE IF EXISTS `oc_layout`;
CREATE TABLE `oc_layout` (
  `layout_id` int(11) NOT NULL auto_increment,
  `name` varchar(64) collate utf8_bin NOT NULL,
  PRIMARY KEY  (`layout_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=15 ;

-- 
-- Dumping data for table `oc_layout`
-- 

INSERT INTO `oc_layout` VALUES (1, 0x5472616e67206368e1bba7);
INSERT INTO `oc_layout` VALUES (2, 0x436869207469e1babf742073e1baa36e207068e1baa96d);
INSERT INTO `oc_layout` VALUES (3, 0x44616e68206de1bba5632073e1baa36e207068e1baa96d);
INSERT INTO `oc_layout` VALUES (4, 0x4de1bab76320c491e1bb8b6e68);
INSERT INTO `oc_layout` VALUES (5, 0x4e68c3a02073e1baa36e207875e1baa574);
INSERT INTO `oc_layout` VALUES (6, 0x54c3a069206b686fe1baa36e);
INSERT INTO `oc_layout` VALUES (7, 0x5468616e6820746fc3a16e);
INSERT INTO `oc_layout` VALUES (8, 0x4c69c3aa6e2068e1bb87);
INSERT INTO `oc_layout` VALUES (9, 0x53c6a120c491e1bb93207472616e67);
INSERT INTO `oc_layout` VALUES (11, 0x5468c3b46e672074696e);
INSERT INTO `oc_layout` VALUES (12, 0x436869207469e1babf742074696e2074e1bba963);
INSERT INTO `oc_layout` VALUES (13, 0x44616e68206de1bba5632074696e2074e1bba963);

-- --------------------------------------------------------

-- 
-- Table structure for table `oc_layout_route`
-- 

DROP TABLE IF EXISTS `oc_layout_route`;
CREATE TABLE `oc_layout_route` (
  `layout_route_id` int(11) NOT NULL auto_increment,
  `layout_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `route` varchar(255) collate utf8_bin NOT NULL,
  PRIMARY KEY  (`layout_route_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=49 ;

-- 
-- Dumping data for table `oc_layout_route`
-- 

INSERT INTO `oc_layout_route` VALUES (34, 6, 0, 0x6163636f756e74);
INSERT INTO `oc_layout_route` VALUES (35, 3, 0, 0x70726f647563742f63617465676f7279);
INSERT INTO `oc_layout_route` VALUES (38, 1, 0, 0x636f6d6d6f6e2f686f6d65);
INSERT INTO `oc_layout_route` VALUES (46, 2, 0, 0x70726f647563742f70726f64756374);
INSERT INTO `oc_layout_route` VALUES (40, 11, 0, 0x696e666f726d6174696f6e2f696e666f726d6174696f6e);
INSERT INTO `oc_layout_route` VALUES (45, 5, 0, 0x70726f647563742f6d616e756661637475726572);
INSERT INTO `oc_layout_route` VALUES (37, 7, 0, 0x636865636b6f75742f);
INSERT INTO `oc_layout_route` VALUES (44, 8, 0, 0x696e666f726d6174696f6e2f636f6e74616374);
INSERT INTO `oc_layout_route` VALUES (48, 12, 0, 0x6e6577732f6e657773);
INSERT INTO `oc_layout_route` VALUES (36, 13, 0, 0x6e6577732f636174);
INSERT INTO `oc_layout_route` VALUES (47, 9, 0, 0x696e666f726d6174696f6e2f736974656d6170);

-- --------------------------------------------------------

-- 
-- Table structure for table `oc_length_class`
-- 

DROP TABLE IF EXISTS `oc_length_class`;
CREATE TABLE `oc_length_class` (
  `length_class_id` int(11) NOT NULL auto_increment,
  `value` decimal(15,8) NOT NULL,
  PRIMARY KEY  (`length_class_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=4 ;

-- 
-- Dumping data for table `oc_length_class`
-- 

INSERT INTO `oc_length_class` VALUES (1, 1.00000000);
INSERT INTO `oc_length_class` VALUES (2, 10.00000000);
INSERT INTO `oc_length_class` VALUES (3, 0.39370000);

-- --------------------------------------------------------

-- 
-- Table structure for table `oc_length_class_description`
-- 

DROP TABLE IF EXISTS `oc_length_class_description`;
CREATE TABLE `oc_length_class_description` (
  `length_class_id` int(11) NOT NULL auto_increment,
  `language_id` int(11) NOT NULL,
  `title` varchar(32) collate utf8_bin NOT NULL,
  `unit` varchar(4) collate utf8_bin NOT NULL,
  PRIMARY KEY  (`length_class_id`,`language_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=4 ;

-- 
-- Dumping data for table `oc_length_class_description`
-- 

INSERT INTO `oc_length_class_description` VALUES (1, 2, 0x43656e74696d65746572, 0x636d);
INSERT INTO `oc_length_class_description` VALUES (2, 2, 0x4d696c6c696d65746572, 0x6d6d);
INSERT INTO `oc_length_class_description` VALUES (3, 2, 0x496e6368, 0x696e);

-- --------------------------------------------------------

-- 
-- Table structure for table `oc_manufacturer`
-- 

DROP TABLE IF EXISTS `oc_manufacturer`;
CREATE TABLE `oc_manufacturer` (
  `manufacturer_id` int(11) NOT NULL auto_increment,
  `name` varchar(64) collate utf8_bin NOT NULL default '',
  `image` varchar(255) collate utf8_bin default NULL,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY  (`manufacturer_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=11 ;

-- 
-- Dumping data for table `oc_manufacturer`
-- 

INSERT INTO `oc_manufacturer` VALUES (5, 0x485443, 0x646174612f6874635f6c6f676f2e6a7067, 0);
INSERT INTO `oc_manufacturer` VALUES (6, 0x50616c6d, 0x646174612f70616c6d5f6c6f676f2e6a7067, 0);
INSERT INTO `oc_manufacturer` VALUES (7, 0x4865776c6574742d5061636b617264, 0x646174612f68705f6c6f676f2e6a7067, 0);
INSERT INTO `oc_manufacturer` VALUES (8, 0x4170706c65, 0x646174612f6170706c655f6c6f676f2e6a7067, 0);
INSERT INTO `oc_manufacturer` VALUES (9, 0x43616e6f6e, 0x646174612f63616e6f6e5f6c6f676f2e6a7067, 0);
INSERT INTO `oc_manufacturer` VALUES (10, 0x536f6e79, 0x646174612f736f6e795f6c6f676f2e6a7067, 0);

-- --------------------------------------------------------

-- 
-- Table structure for table `oc_manufacturer_to_store`
-- 

DROP TABLE IF EXISTS `oc_manufacturer_to_store`;
CREATE TABLE `oc_manufacturer_to_store` (
  `manufacturer_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  PRIMARY KEY  (`manufacturer_id`,`store_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- 
-- Dumping data for table `oc_manufacturer_to_store`
-- 

INSERT INTO `oc_manufacturer_to_store` VALUES (5, 0);
INSERT INTO `oc_manufacturer_to_store` VALUES (6, 0);
INSERT INTO `oc_manufacturer_to_store` VALUES (7, 0);
INSERT INTO `oc_manufacturer_to_store` VALUES (8, 0);
INSERT INTO `oc_manufacturer_to_store` VALUES (9, 0);
INSERT INTO `oc_manufacturer_to_store` VALUES (10, 0);

-- --------------------------------------------------------

-- 
-- Table structure for table `oc_news`
-- 

DROP TABLE IF EXISTS `oc_news`;
CREATE TABLE `oc_news` (
  `news_id` int(11) NOT NULL auto_increment,
  `image` varchar(255) collate utf8_bin default NULL,
  `date_available` date NOT NULL,
  `subtract` tinyint(1) NOT NULL default '1',
  `sort_order` int(11) NOT NULL default '0',
  `status` tinyint(1) NOT NULL default '0',
  `date_added` datetime NOT NULL default '0000-00-00 00:00:00',
  `date_modified` datetime NOT NULL default '0000-00-00 00:00:00',
  `viewed` int(5) NOT NULL default '0',
  PRIMARY KEY  (`news_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=56 ;

-- 
-- Dumping data for table `oc_news`
-- 

INSERT INTO `oc_news` VALUES (53, 0x646174612f486f6174756f692f32303034313231345f6b626230312e6a7067, '2012-05-24', 1, 1, 1, '2012-05-26 06:54:07', '2012-05-26 15:58:21', 72);
INSERT INTO `oc_news` VALUES (54, 0x646174612f486f6174756f692f48534e30312e6a7067, '2012-05-25', 1, 1, 1, '2012-05-26 15:53:24', '2012-05-28 15:50:34', 24);
INSERT INTO `oc_news` VALUES (55, 0x646174612f6c6f676f2e706e67, '2012-05-25', 1, 1, 1, '2012-05-26 16:17:17', '2012-06-04 08:36:27', 7);

-- --------------------------------------------------------

-- 
-- Table structure for table `oc_news_description`
-- 

DROP TABLE IF EXISTS `oc_news_description`;
CREATE TABLE `oc_news_description` (
  `news_id` int(11) NOT NULL auto_increment,
  `language_id` int(11) NOT NULL,
  `name` varchar(255) collate utf8_bin NOT NULL,
  `description` text collate utf8_bin NOT NULL,
  `meta_description` varchar(255) collate utf8_bin NOT NULL,
  `meta_keyword` varchar(255) collate utf8_bin NOT NULL,
  PRIMARY KEY  (`news_id`,`language_id`),
  KEY `name` (`name`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=56 ;

-- 
-- Dumping data for table `oc_news_description`
-- 

INSERT INTO `oc_news_description` VALUES (53, 2, 0x5068c3a174206869e1bb876e2064e1baa5752076e1babf74207572616e69206cc3a06d206769c3a0752063e1baa57020c491e1bb992063616f2068c6a16e2074e1baa169204972616e, 0x266c743b702667743b0d0a0926616d703b6e6273703b266c743b2f702667743b0d0a266c743b64697620636c6173733d2671756f743b666f6e3333206d74312671756f743b207374796c653d2671756f743b6d617267696e3a2035707820307078203070783b2070616464696e673a203070783b20666f6e742d66616d696c793a202754696d6573204e657720526f6d616e273b20666f6e742d73697a653a20313170743b20666f6e742d7765696768743a203730303b206c696e652d6865696768743a20313870783b20636f6c6f723a207267622839352c2039352c203935293b202671756f743b2667743b0d0a0943c3a163207468616e682073c3a174207669c3aa6e2068e1baa174206e68c3a26e204c69c3aa6e2068e1bba370207175e1bb916320c491c3a32074c3ac6d207468e1baa5792063c3a1632064e1baa575206869e1bb8775207572616e69206cc3a06d206769c3a07520e1bb9f2063e1baa57020c491e1bb99203237252074e1baa1692063c6a12073e1bb9f2068e1baa174206e68c3a26e20466f72646f2063e1bba761204972616e2e205068c3a174206869e1bb876e206ec3a0792063c3b3206e6768c4a9612072e1bab16e67204972616e20c491c3a3207469e1babf6e2067e1baa76e2068c6a16e2074e1bb9b69206e67c6b0e1bba16e67207572616e692063e1baa76e20746869e1babf7420c491e1bb83207472616e672062e1bb8b2063686f2074c3aa6e206ce1bbad612068e1baa174206e68c3a26e2e266c743b2f6469762667743b0d0a266c743b64697620636c6173733d2671756f743b666f6e3334206d7433206d723220666f6e34332671756f743b207374796c653d2671756f743b6d617267696e3a203135707820313070782031347078203070783b2070616464696e673a203070783b20666f6e742d66616d696c793a202754696d6573204e657720526f6d616e273b20666f6e742d73697a653a20313270743b206c696e652d6865696768743a20323070782021696d706f7274616e743b20636f6c6f723a2072676228302c20302c2030293b202671756f743b2667743b0d0a09266c743b646976207374796c653d2671756f743b6d617267696e3a203070783b2070616464696e673a203070783b202671756f743b2667743b0d0a090926616d703b6e6273703b266c743b2f6469762667743b0d0a09266c743b64697620616c69676e3d2671756f743b63656e7465722671756f743b207374796c653d2671756f743b6d617267696e3a203070783b2070616464696e673a203070783b202671756f743b2667743b0d0a0909266c743b696d67207372633d2671756f743b687474703a2f2f64616e747269342e76636d656469612e766e2f364451514a377957355150664736457a7547616c2f496d6167652f323031322f30352f345f61356461312e6a70672671756f743b207374796c653d2671756f743b6d617267696e3a203070783b2070616464696e673a203070783b202671756f743b202f2667743b266c743b2f6469762667743b0d0a09266c743b64697620616c69676e3d2671756f743b63656e7465722671756f743b207374796c653d2671756f743b6d617267696e3a203070783b2070616464696e673a203070783b202671756f743b2667743b0d0a0909266c743b7370616e207374796c653d2671756f743b6d617267696e3a203070783b2070616464696e673a203070783b20666f6e742d66616d696c793a205461686f6d613b20666f6e742d73697a653a20313070743b202671756f743b2667743b43c6a12073e1bb9f2068e1baa174206e68c3a26e20466f72646f206e68c3ac6e2074e1bbab2076e1bb872074696e682e266c743b2f7370616e2667743b266c743b2f6469762667743b0d0a09266c743b70207374796c653d2671756f743b6d617267696e3a2031347078203070783b2070616464696e673a203070783b20666f6e742d73697a653a20313270743b202671756f743b2667743b0d0a090942c3a16f2063c3a16f2063e1bba7612043c6a1207175616e206ec4836e67206cc6b0e1bba36e67206e677579c3aa6e2074e1bbad207175e1bb91632074e1babf202849414541292076e1bb812073e1bbb12074e1bb936e2074e1baa1692063e1bba7612063c3a1632064e1baa5752076e1babf74207572616e69206cc3a06d206769c3a0752063616f2068c6a16e206469e1bb856e207261206368e1bb89206de1bb9974206e67c3a07920736175206b6869204972616e2076c3a02063c3a1632063c6b0e1bb9d6e67207175e1bb91632074e1babf207468e1babf206769e1bb9b692074e1bb95206368e1bba9632063c3a163206375e1bb996320c491c3a06d207068c3a16e2076e1bb81206368c6b0c6a16e67207472c3ac6e682068e1baa174206e68c3a26e2063e1bba7612043e1bb996e6720686fc3a02048e1bb9369206769c3a16f2e266c743b2f702667743b0d0a09266c743b646976207374796c653d2671756f743b6d617267696e3a203070783b2070616464696e673a203070783b202671756f743b2667743b0d0a090953e1bbb12074e1bb936e2074e1baa1692063e1bba761207572616e69206cc3a06d206769c3a07520e1bb9f2063e1baa57020c491e1bb992032372520c491c3a320c491c6b0e1bba3632074c3ac6d207468e1baa5792074726f6e67206de1bb9974206375e1bb9963207068c3a26e2074c3ad63682076e1bb812063c3a163206de1baab75207468e1bbad206dc3b469207472c6b0e1bb9d6e6720c491c6b0e1bba363206ce1baa5792068e1bb9369207468c3a16e6720322074e1baa1692063c6a12073e1bb9f2068e1baa174206e68c3a26e20466f72646f2067e1baa76e207468c3a06e68207068e1bb9120516f6d2c206d69e1bb816e2062e1baaf63204972616e2e266c743b2f6469762667743b0d0a09266c743b646976207374796c653d2671756f743b6d617267696e3a203070783b2070616464696e673a203070783b202671756f743b2667743b0d0a090926616d703b6e6273703b266c743b2f6469762667743b0d0a09266c743b646976207374796c653d2671756f743b6d617267696e3a203070783b2070616464696e673a203070783b202671756f743b2667743b0d0a090954726f6e67206b686920c491c3b32c2054656872616e2063686f20686179206de1bba56320c491c3ad63682063e1bba7612063c6a12073e1bb9f20466f72646f206cc3a0206cc3a06d206769c3a075207572616e692063686f206de1bba56320c491c3ad63682064c3a26e2073e1bbb12074e1bb916920c49161206cc3a020e1bb9f206de1bba963203230252c2076c3a02073e1bb91206c69e1bb877520c4916f20c491e1baa163206de1bb9b69206e68e1baa5742063c3b3207468e1bb83206cc3a0206e67e1baab75206e6869c3aa6e2e266c743b2f6469762667743b0d0a09266c743b70207374796c653d2671756f743b6d617267696e3a2031347078203070783b2070616464696e673a203070783b20666f6e742d73697a653a20313270743b202671756f743b2667743b0d0a09095468656f2063c3a163206e68c3a0207068c3a26e2074c3ad63682c203237252063c3b320c491e1bb8320c491c6b061204972616e207469e1babf6e2067e1baa76e2068c6a16e2074e1bb9b69207669e1bb87632073e1baa36e207875e1baa574207572616e692063e1baa57020c491e1bb992076c5a9206b68c3ad2e266c743b2f702667743b0d0a09266c743b70207374796c653d2671756f743b6d617267696e3a2031347078203070783b2070616464696e673a203070783b20666f6e742d73697a653a20313270743b202671756f743b2667743b0d0a090942c3a16f2063c3a16f206de1bb9b69206e68e1baa5742063e1bba76120494145412063686f206269e1babf742063c3a163207175616e206368e1bba963204972616e206ec3b3692076e1bb9b692063c3a163206e68c3a020c491c3a06d207068c3a16e2072e1bab16e67207669e1bb87632073e1baa36e207875e1baa5742063c3a1632068e1baa174206e68c6b02076e1baad7920e2809c63c3b3207468e1bb832078e1baa3792072612076c3ac2063c3a163206cc3bd20646f206be1bbb920746875e1baad74206ee1bab16d206e676fc3a069206b69e1bb836d20736fc3a1742063e1bba761206cc3b2207068e1baa36e20e1bba96e67e2809d2e266c743b2f702667743b0d0a09266c743b70207374796c653d2671756f743b6d617267696e3a2031347078203070783b2070616464696e673a203070783b20666f6e742d73697a653a20313270743b202671756f743b2667743b0d0a09094972616e206b68e1bab36e6720c491e1bb8b6e68206368c6b0c6a16e67207472c3ac6e682068e1baa174206e68c3a26e206368e1bb89207068e1bba5632076e1bba5206de1bba56320c491c3ad636820686fc3a02062c3ac6e682c206e68c6b06e672063c3a163207175e1bb916320676961207068c6b0c6a16e672054c3a279206c6f206e67e1baa169204972616e20c491616e672074c3ac6d2063c3a16368206368e1babf2074e1baa16f2076c5a9206b68c3ad2068e1baa174206e68c3a26e2c2076e1bb916e2063e1baa76e207572616e69206cc3a06d206769c3a075206cc3aa6e2074e1bb9b69203930252e266c743b2f702667743b0d0a09266c743b646976207374796c653d2671756f743b6d617267696e3a203070783b2070616464696e673a203070783b202671756f743b2667743b0d0a09095361752063c3a163206375e1bb996320c491c3a06d207068c3a16e2063e1baa5702063616f2074e1baa16920426167686461642c206e67c6b0e1bb9d6920c491e1bba96e6720c491e1baa7752076e1bb81206368c3ad6e682073c3a1636820c491e1bb9169206e676fe1baa1692063e1bba7612045552c2062c3a020436174686572696e6520417368746f6e2c206ec3b36920e2809c6e68e1bbaf6e67206b68c3a163206269e1bb8774206ce1bb9b6ee2809d2076e1baab6e2063c3b26e2c206e68c6b06e67206de1bb99742073e1bb9120c49169e1bb836d206368756e6720c491c3a320c491c6b0e1bba3632074c3ac6d207468e1baa5792e266c743b2f6469762667743b0d0a09266c743b646976207374796c653d2671756f743b6d617267696e3a203070783b2070616464696e673a203070783b202671756f743b2667743b0d0a090926616d703b6e6273703b266c743b2f6469762667743b0d0a09266c743b64697620616c69676e3d2671756f743b63656e7465722671756f743b207374796c653d2671756f743b6d617267696e3a203070783b2070616464696e673a203070783b202671756f743b2667743b0d0a0909266c743b696d67207372633d2671756f743b687474703a2f2f64616e747269342e76636d656469612e766e2f364451514a377957355150664736457a7547616c2f496d6167652f323031322f30352f335f64623237622e6a70672671756f743b207374796c653d2671756f743b6d617267696e3a203070783b2070616464696e673a203070783b202671756f743b202f2667743b266c743b2f6469762667743b0d0a09266c743b64697620616c69676e3d2671756f743b63656e7465722671756f743b207374796c653d2671756f743b6d617267696e3a203070783b2070616464696e673a203070783b202671756f743b2667743b0d0a0909266c743b7370616e207374796c653d2671756f743b6d617267696e3a203070783b2070616464696e673a203070783b20666f6e742d66616d696c793a205461686f6d613b20666f6e742d73697a653a20313070743b202671756f743b2667743b43c3a163206e68c3a020c491c3a06d207068c3a16e207175e1bb91632074e1babf2074e1baa16920426167686461642c20497261712068c3b46d2032332f352e266c743b2f7370616e2667743b266c743b2f6469762667743b0d0a09266c743b70207374796c653d2671756f743b6d617267696e3a2031347078203070783b2070616464696e673a203070783b20666f6e742d73697a653a20313270743b202671756f743b2667743b0d0a090943c3a163206375e1bb996320c491c3a06d207068c3a16e207469e1babf70207468656f206769e1bbaf61204972616e2076c3a020362063c6b0e1bb9d6e67207175e1bb9163202d2067e1bb936d20416e682c204de1bbb92c205472756e67205175e1bb91632c204e67612c205068c3a1702076c3a020c490e1bba963202d2064e1bbb1206b69e1babf6e2073e1babd206469e1bb856e207261207468e1bba720c491c3b4204dc3a1747863c6a176612063e1bba761204e67612076c3a06f207468c3a16e672074e1bb9b692e266c743b2f702667743b0d0a09266c743b70207374796c653d2671756f743b6d617267696e3a2031347078203070783b2070616464696e673a203070783b20666f6e742d73697a653a20313270743b202671756f743b2667743b0d0a09094de1bba563207469c3aa752063e1bba761206e68c3b36d207175e1bb91632074e1babf2c20c491c6b0e1bba3632064e1baab6e20c491e1baa7752062e1bb9f692062c3a020417368746f6e2c2074c3ac6d206b69e1babf6d206de1bb99742074686fe1baa320746875e1baad6e2074e1bbab207068c3ad61204972616e206e68e1bab16d206b69e1bb816d206368e1babf206cc3a06d206769c3a075207572616e692076c3a02063686f207068c3a9702063c3a163207468c3a16e682073c3a174207669c3aa6e204c69c3aa6e2068e1bba370207175e1bb9163207468e1baa96d2074726120686fe1baa17420c491e1bb996e672068e1baa174206e68c3a26e2e266c743b2f702667743b0d0a09266c743b70207374796c653d2671756f743b6d617267696e3a2031347078203070783b2070616464696e673a203070783b20666f6e742d73697a653a20313270743b202671756f743b2667743b0d0a090948e1bb9369207468c3a16e67203131206ec4836d206e676fc3a1692c206de1bb99742062c3a16f2063c3a16f2063e1bba7612049414541206b68e1bab36e6720c491e1bb8b6e68204972616e20c491c3a320e2809c7469e1babf6e2068c3a06e682063c3a16320686fe1baa17420c491e1bb996e67206c69c3aa6e207175616e2074e1bb9b69207669e1bb8763207068c3a17420747269e1bb836e206de1bb997420746869e1babf742062e1bb8b2068e1baa174206e68c3a26ee2809d2e266c743b2f702667743b0d0a09266c743b70207374796c653d2671756f743b6d617267696e3a2031347078203070783b2070616464696e673a203070783b20666f6e742d73697a653a20313270743b202671756f743b2667743b0d0a090954726f6e672062c3a16f2063c3a16f206de1bb9b69206e68e1baa5742c20494145412074c3a169206b68e1bab36e6720c491e1bb8b6e682072e1bab16e672074e1bb95206368e1bba963206ec3a07920c491616e672074c3ac6d2063c3a16368207469e1babf702063e1baad6e2076e1bb9b692063c4836e2063e1bba9207175c3a26e2073e1bbb1205061726368696e2e266c743b2f702667743b0d0a09266c743b70207374796c653d2671756f743b6d617267696e3a2031347078203070783b2070616464696e673a203070783b20666f6e742d73697a653a20313270743b202671756f743b2667743b0d0a0909494541452063686f206269e1babf742c206be1bb832074e1bbab207468c3a16e67203131206ec4836d206e676fc3a1692c2074e1bb95206368e1bba963206ec3a07920c491c3a3206e68e1baad6e20c491c6b0e1bba3632063c3a163207468c3b46e672074696e206c69c3aa6e207175616e2074e1bb9b692063c3a1632076e1bba5207468e1bbad206368e1baa574206ee1bb952063616f206b68e1baa3206e6768692074e1baa16920c491c3b32c2063c3b3207468e1bb83206c69c3aa6e207175616e2074e1bb9b692063c3a16320c491e1baa77520c491e1baa16e2068e1baa174206e68c3a26e2e266c743b2f702667743b0d0a266c743b2f6469762667743b0d0a266c743b702667743b0d0a0926616d703b6e6273703b266c743b2f702667743b0d0a, 0x5068c3a174206869e1bb876e2064e1baa5752076e1babf74207572616e69206cc3a06d206769c3a0752063e1baa57020c491e1bb992063616f2068c6a16e2074e1baa169204972616e, 0x5068c3a174206869e1bb876e2064e1baa5752076e1babf74207572616e69206cc3a06d206769c3a0752063e1baa57020c491e1bb992063616f2068c6a16e2074e1baa169204972616e);
INSERT INTO `oc_news_description` VALUES (54, 2, 0x746573742074696e2032, 0x266c743b702667743b0d0a09746573742074696e203226616d703b6e6273703b746573742074696e203226616d703b6e6273703b746573742074696e203226616d703b6e6273703b746573742074696e203226616d703b6e6273703b746573742074696e203226616d703b6e6273703b266c743b2f702667743b0d0a, 0x746573742074696e203220746573742074696e203220746573742074696e203220, 0x746573742074696e203220746573742074696e203220746573742074696e203220);
INSERT INTO `oc_news_description` VALUES (55, 2, 0x746573742074696e2031, 0x266c743b702667743b0d0a09746573742074696e2031746573742074696e2031746573742074696e2031746573742074696e2031266c743b2f702667743b0d0a, 0x746573742074696e2031746573742074696e2031746573742074696e2031746573742074696e2031, 0x746573742074696e2031746573742074696e2031746573742074696e2031746573742074696e2031);

-- --------------------------------------------------------

-- 
-- Table structure for table `oc_news_image`
-- 

DROP TABLE IF EXISTS `oc_news_image`;
CREATE TABLE `oc_news_image` (
  `news_image_id` int(11) NOT NULL auto_increment,
  `news_id` int(11) NOT NULL,
  `image` varchar(255) collate utf8_bin default NULL,
  `sort_order` int(3) NOT NULL default '0',
  PRIMARY KEY  (`news_image_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=1 ;

-- 
-- Dumping data for table `oc_news_image`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `oc_news_related`
-- 

DROP TABLE IF EXISTS `oc_news_related`;
CREATE TABLE `oc_news_related` (
  `news_id` int(11) NOT NULL,
  `related_id` int(11) NOT NULL,
  PRIMARY KEY  (`news_id`,`related_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- 
-- Dumping data for table `oc_news_related`
-- 

INSERT INTO `oc_news_related` VALUES (53, 54);
INSERT INTO `oc_news_related` VALUES (53, 55);
INSERT INTO `oc_news_related` VALUES (54, 53);
INSERT INTO `oc_news_related` VALUES (54, 55);
INSERT INTO `oc_news_related` VALUES (55, 53);
INSERT INTO `oc_news_related` VALUES (55, 54);

-- --------------------------------------------------------

-- 
-- Table structure for table `oc_news_tag`
-- 

DROP TABLE IF EXISTS `oc_news_tag`;
CREATE TABLE `oc_news_tag` (
  `news_tag_id` int(11) NOT NULL auto_increment,
  `news_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `tag` varchar(32) collate utf8_bin NOT NULL,
  PRIMARY KEY  (`news_tag_id`),
  KEY `news_id` (`news_id`),
  KEY `language_id` (`language_id`),
  KEY `tag` (`tag`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=1 ;

-- 
-- Dumping data for table `oc_news_tag`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `oc_news_to_cat`
-- 

DROP TABLE IF EXISTS `oc_news_to_cat`;
CREATE TABLE `oc_news_to_cat` (
  `news_id` int(11) NOT NULL,
  `cat_id` int(11) NOT NULL,
  PRIMARY KEY  (`news_id`,`cat_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- 
-- Dumping data for table `oc_news_to_cat`
-- 

INSERT INTO `oc_news_to_cat` VALUES (53, 59);
INSERT INTO `oc_news_to_cat` VALUES (54, 59);
INSERT INTO `oc_news_to_cat` VALUES (55, 59);

-- --------------------------------------------------------

-- 
-- Table structure for table `oc_news_to_download`
-- 

DROP TABLE IF EXISTS `oc_news_to_download`;
CREATE TABLE `oc_news_to_download` (
  `news_id` int(11) NOT NULL,
  `download_id` int(11) NOT NULL,
  PRIMARY KEY  (`news_id`,`download_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- 
-- Dumping data for table `oc_news_to_download`
-- 

INSERT INTO `oc_news_to_download` VALUES (55, 2);

-- --------------------------------------------------------

-- 
-- Table structure for table `oc_news_to_layout`
-- 

DROP TABLE IF EXISTS `oc_news_to_layout`;
CREATE TABLE `oc_news_to_layout` (
  `news_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `layout_id` int(11) NOT NULL,
  PRIMARY KEY  (`news_id`,`store_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- 
-- Dumping data for table `oc_news_to_layout`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `oc_news_to_store`
-- 

DROP TABLE IF EXISTS `oc_news_to_store`;
CREATE TABLE `oc_news_to_store` (
  `news_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL default '0',
  PRIMARY KEY  (`news_id`,`store_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- 
-- Dumping data for table `oc_news_to_store`
-- 

INSERT INTO `oc_news_to_store` VALUES (53, 0);
INSERT INTO `oc_news_to_store` VALUES (54, 0);
INSERT INTO `oc_news_to_store` VALUES (55, 0);

-- --------------------------------------------------------

-- 
-- Table structure for table `oc_option`
-- 

DROP TABLE IF EXISTS `oc_option`;
CREATE TABLE `oc_option` (
  `option_id` int(11) NOT NULL auto_increment,
  `type` varchar(32) collate utf8_bin NOT NULL,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY  (`option_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=13 ;

-- 
-- Dumping data for table `oc_option`
-- 

INSERT INTO `oc_option` VALUES (1, 0x726164696f, 2);
INSERT INTO `oc_option` VALUES (2, 0x636865636b626f78, 3);
INSERT INTO `oc_option` VALUES (4, 0x74657874, 4);
INSERT INTO `oc_option` VALUES (5, 0x73656c656374, 1);
INSERT INTO `oc_option` VALUES (6, 0x7465787461726561, 5);
INSERT INTO `oc_option` VALUES (7, 0x66696c65, 6);
INSERT INTO `oc_option` VALUES (8, 0x64617465, 7);
INSERT INTO `oc_option` VALUES (9, 0x74696d65, 8);
INSERT INTO `oc_option` VALUES (10, 0x6461746574696d65, 9);
INSERT INTO `oc_option` VALUES (11, 0x73656c656374, 1);
INSERT INTO `oc_option` VALUES (12, 0x64617465, 1);

-- --------------------------------------------------------

-- 
-- Table structure for table `oc_option_description`
-- 

DROP TABLE IF EXISTS `oc_option_description`;
CREATE TABLE `oc_option_description` (
  `option_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(128) collate utf8_bin NOT NULL,
  PRIMARY KEY  (`option_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- 
-- Dumping data for table `oc_option_description`
-- 

INSERT INTO `oc_option_description` VALUES (1, 2, 0x526164696f);
INSERT INTO `oc_option_description` VALUES (2, 2, 0x436865636b626f78);
INSERT INTO `oc_option_description` VALUES (4, 2, 0x54657874);
INSERT INTO `oc_option_description` VALUES (6, 2, 0x5465787461726561);
INSERT INTO `oc_option_description` VALUES (8, 2, 0x44617465);
INSERT INTO `oc_option_description` VALUES (7, 2, 0x46696c65);
INSERT INTO `oc_option_description` VALUES (5, 2, 0x53656c656374);
INSERT INTO `oc_option_description` VALUES (9, 2, 0x54696d65);
INSERT INTO `oc_option_description` VALUES (10, 2, 0x446174652026616d703b2054696d65);
INSERT INTO `oc_option_description` VALUES (12, 2, 0x44656c69766572792044617465);
INSERT INTO `oc_option_description` VALUES (11, 2, 0x53697a65);

-- --------------------------------------------------------

-- 
-- Table structure for table `oc_option_value`
-- 

DROP TABLE IF EXISTS `oc_option_value`;
CREATE TABLE `oc_option_value` (
  `option_value_id` int(11) NOT NULL auto_increment,
  `option_id` int(11) NOT NULL,
  `image` varchar(255) collate utf8_bin NOT NULL,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY  (`option_value_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=49 ;

-- 
-- Dumping data for table `oc_option_value`
-- 

INSERT INTO `oc_option_value` VALUES (43, 1, '', 3);
INSERT INTO `oc_option_value` VALUES (32, 1, '', 1);
INSERT INTO `oc_option_value` VALUES (45, 2, '', 4);
INSERT INTO `oc_option_value` VALUES (44, 2, '', 3);
INSERT INTO `oc_option_value` VALUES (42, 5, '', 4);
INSERT INTO `oc_option_value` VALUES (41, 5, '', 3);
INSERT INTO `oc_option_value` VALUES (39, 5, '', 1);
INSERT INTO `oc_option_value` VALUES (40, 5, '', 2);
INSERT INTO `oc_option_value` VALUES (31, 1, '', 2);
INSERT INTO `oc_option_value` VALUES (23, 2, '', 1);
INSERT INTO `oc_option_value` VALUES (24, 2, '', 2);
INSERT INTO `oc_option_value` VALUES (46, 11, '', 1);
INSERT INTO `oc_option_value` VALUES (47, 11, '', 2);
INSERT INTO `oc_option_value` VALUES (48, 11, '', 3);

-- --------------------------------------------------------

-- 
-- Table structure for table `oc_option_value_description`
-- 

DROP TABLE IF EXISTS `oc_option_value_description`;
CREATE TABLE `oc_option_value_description` (
  `option_value_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `option_id` int(11) NOT NULL,
  `name` varchar(128) collate utf8_bin NOT NULL,
  PRIMARY KEY  (`option_value_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- 
-- Dumping data for table `oc_option_value_description`
-- 

INSERT INTO `oc_option_value_description` VALUES (43, 2, 1, 0x4c61726765);
INSERT INTO `oc_option_value_description` VALUES (32, 2, 1, 0x536d616c6c);
INSERT INTO `oc_option_value_description` VALUES (45, 2, 2, 0x436865636b626f782034);
INSERT INTO `oc_option_value_description` VALUES (44, 2, 2, 0x436865636b626f782033);
INSERT INTO `oc_option_value_description` VALUES (31, 2, 1, 0x4d656469756d);
INSERT INTO `oc_option_value_description` VALUES (42, 2, 5, 0x59656c6c6f77);
INSERT INTO `oc_option_value_description` VALUES (41, 2, 5, 0x477265656e);
INSERT INTO `oc_option_value_description` VALUES (39, 2, 5, 0x526564);
INSERT INTO `oc_option_value_description` VALUES (40, 2, 5, 0x426c7565);
INSERT INTO `oc_option_value_description` VALUES (23, 2, 2, 0x436865636b626f782031);
INSERT INTO `oc_option_value_description` VALUES (24, 2, 2, 0x436865636b626f782032);
INSERT INTO `oc_option_value_description` VALUES (48, 2, 11, 0x4c61726765);
INSERT INTO `oc_option_value_description` VALUES (47, 2, 11, 0x4d656469756d);
INSERT INTO `oc_option_value_description` VALUES (46, 2, 11, 0x536d616c6c);

-- --------------------------------------------------------

-- 
-- Table structure for table `oc_order`
-- 

DROP TABLE IF EXISTS `oc_order`;
CREATE TABLE `oc_order` (
  `order_id` int(11) NOT NULL auto_increment,
  `invoice_no` int(11) NOT NULL default '0',
  `invoice_prefix` varchar(26) collate utf8_bin NOT NULL,
  `store_id` int(11) NOT NULL default '0',
  `store_name` varchar(64) collate utf8_bin NOT NULL,
  `store_url` varchar(255) collate utf8_bin NOT NULL,
  `customer_id` int(11) NOT NULL default '0',
  `customer_group_id` int(11) NOT NULL default '0',
  `firstname` varchar(32) collate utf8_bin NOT NULL default '',
  `lastname` varchar(32) collate utf8_bin NOT NULL,
  `email` varchar(96) collate utf8_bin NOT NULL,
  `telephone` varchar(32) collate utf8_bin NOT NULL default '',
  `fax` varchar(32) collate utf8_bin NOT NULL default '',
  `payment_firstname` varchar(32) collate utf8_bin NOT NULL default '',
  `payment_lastname` varchar(32) collate utf8_bin NOT NULL default '',
  `payment_company` varchar(32) collate utf8_bin NOT NULL,
  `payment_company_id` varchar(32) collate utf8_bin NOT NULL,
  `payment_tax_id` varchar(32) collate utf8_bin NOT NULL,
  `payment_address_1` varchar(128) collate utf8_bin NOT NULL,
  `payment_address_2` varchar(128) collate utf8_bin NOT NULL,
  `payment_city` varchar(128) collate utf8_bin NOT NULL,
  `payment_postcode` varchar(10) collate utf8_bin NOT NULL default '',
  `payment_country` varchar(128) collate utf8_bin NOT NULL,
  `payment_country_id` int(11) NOT NULL,
  `payment_zone` varchar(128) collate utf8_bin NOT NULL,
  `payment_zone_id` int(11) NOT NULL,
  `payment_address_format` text collate utf8_bin NOT NULL,
  `payment_method` varchar(128) collate utf8_bin NOT NULL default '',
  `payment_code` varchar(128) collate utf8_bin NOT NULL,
  `shipping_firstname` varchar(32) collate utf8_bin NOT NULL,
  `shipping_lastname` varchar(32) collate utf8_bin NOT NULL default '',
  `shipping_company` varchar(32) collate utf8_bin NOT NULL,
  `shipping_address_1` varchar(128) collate utf8_bin NOT NULL,
  `shipping_address_2` varchar(128) collate utf8_bin NOT NULL,
  `shipping_city` varchar(128) collate utf8_bin NOT NULL,
  `shipping_postcode` varchar(10) collate utf8_bin NOT NULL default '',
  `shipping_country` varchar(128) collate utf8_bin NOT NULL,
  `shipping_country_id` int(11) NOT NULL,
  `shipping_zone` varchar(128) collate utf8_bin NOT NULL,
  `shipping_zone_id` int(11) NOT NULL,
  `shipping_address_format` text collate utf8_bin NOT NULL,
  `shipping_method` varchar(128) collate utf8_bin NOT NULL default '',
  `shipping_code` varchar(128) collate utf8_bin NOT NULL,
  `comment` text collate utf8_bin NOT NULL,
  `total` decimal(15,4) NOT NULL default '0.0000',
  `order_status_id` int(11) NOT NULL default '0',
  `affiliate_id` int(11) NOT NULL,
  `commission` decimal(15,4) NOT NULL,
  `language_id` int(11) NOT NULL,
  `currency_id` int(11) NOT NULL,
  `currency_code` varchar(3) collate utf8_bin NOT NULL,
  `currency_value` decimal(15,8) NOT NULL default '1.00000000',
  `ip` varchar(15) collate utf8_bin NOT NULL,
  `forwarded_ip` varchar(15) collate utf8_bin NOT NULL,
  `user_agent` varchar(255) collate utf8_bin NOT NULL,
  `accept_language` varchar(255) collate utf8_bin NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY  (`order_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=4 ;

-- 
-- Dumping data for table `oc_order`
-- 

INSERT INTO `oc_order` VALUES (1, 0, 0x494e562d323031312d3030, 0, 0x4f70656e63617274564e, 0x687474703a2f2f6c6f63616c686f73742f70726f2f, 0, 8, 0x74756e67, 0x74756e67, 0x74756e6740676d61696c2e636f6d, 0x30393839353637363236, '', 0x74756e67, 0x74756e67, 0x6e656e636572, '', '', 0x6861692070686f6e67, 0x6861692070686f6e67, 0x6861692070686f6e67, 0x6861692070686f6e67, 0x5669e1bb8774204e616d, 230, 0x48e1baa369205068c3b26e67, 3774, '', 0x546875207469e1bb816e206b6869206769616f2068c3a06e67, 0x636f64, 0x74756e67, 0x74756e67, 0x6e656e636572, 0x6861692070686f6e67, 0x6861692070686f6e67, 0x6861692070686f6e67, 0x6861692070686f6e67, 0x5669e1bb8774204e616d, 230, 0x48e1baa369205068c3b26e67, 3774, '', 0x5068c3ad2076e1baad6e2063687579e1bb836e2063e1bb9120c491e1bb8b6e68, 0x666c61742e666c6174, '', 350005.5000, 1, 0, 0.0000, 2, 3, 0x766e64, 1.00000000, 0x3132372e302e302e31, '', 0x4d6f7a696c6c612f352e30202857696e646f7773204e5420362e3129204170706c655765624b69742f3533362e3520284b48544d4c2c206c696b65204765636b6f29204368726f6d652f31392e302e313038342e3532205361666172692f3533362e35, 0x656e2d55532c656e3b713d302e382c76693b713d302e36, '2012-05-26 23:40:04', '2012-05-26 23:40:06');
INSERT INTO `oc_order` VALUES (2, 1, 0x494e562d323031312d3030, 0, 0x4f70656e63617274564e, 0x687474703a2f2f6f70656e636172742e766e2f646576656c6f702f, 0, 8, 0x5068c6b0c6a16e67, 0x42c3b969205875c3a26e, 0x6b656e7a616b69766e406c6976652e636f6d, 0x303933352e3736352e373937, '', 0x5068c6b0c6a16e67, 0x42c3b969205875c3a26e, '', '', '', 0x33333541204e677579e1bb856e205448e1bb8b204d696e68204b686169, '', 0x517579204e68c6a16e, 0x353931343134, 0x5669e1bb8774204e616d, 230, 0x42c3ac6e6820c490e1bb8b6e68, 3759, '', 0x43687579e1bb836e206b686fe1baa36e206e67c3a26e2068c3a06e67, 0x62616e6b5f7472616e73666572, '', '', '', '', '', '', '', '', 0, '', 0, '', '', '', '', 3300000.0000, 1, 0, 0.0000, 2, 3, 0x766e64, 1.00000000, 0x3131382e36382e3231362e3933, '', 0x4d6f7a696c6c612f352e30202857696e646f7773204e5420362e3129204170706c655765624b69742f3533362e3520284b48544d4c2c206c696b65204765636b6f29204368726f6d652f31392e302e313038342e3532205361666172692f3533362e35, 0x76692d564e2c76693b713d302e382c66722d46523b713d302e362c66723b713d302e342c656e2d55533b713d302e322c656e3b713d302e32, '2012-05-27 00:12:03', '2012-05-27 00:12:06');
INSERT INTO `oc_order` VALUES (3, 0, 0x494e562d323031312d3030, 0, 0x4f70656e63617274564e, 0x687474703a2f2f6c6f63616c686f73742f6f70656e313533312f, 3, 1, 0x3132313231323132, 0x31323132313231, 0x7472616e6740676d61696c2e636f6d, 0x30393839353637363236, 0x313233, 0x74756e67, 0x74756e67, 0x6e656e636572, 0x6e656e636572, 0x6e656e636572, 0x6861692070686f6e67, 0x6861692070686f6e67, 0x6861692070686f6e67, 0x3335303030, 0x5669e1bb8774204e616d, 230, 0x48e1baa369205068c3b26e67, 3774, '', 0x4d69e1bb856e207068c3ad, 0x667265655f636865636b6f7574, 0x74756e67, 0x74756e67, 0x6e656e636572, 0x6861692070686f6e67, 0x6861692070686f6e67, 0x6861692070686f6e67, 0x3335303030, 0x5669e1bb8774204e616d, 230, 0x48e1baa369205068c3b26e67, 3774, '', 0x5068c3ad2076e1baad6e2063687579e1bb836e2063e1bb9120c491e1bb8b6e68, 0x666c61742e666c6174, '', 0.0000, 1, 0, 0.0000, 2, 3, 0x766e64, 1.00000000, 0x3132372e302e302e31, '', 0x4d6f7a696c6c612f352e30202857696e646f7773204e5420352e3129204170706c655765624b69742f3533362e3520284b48544d4c2c206c696b65204765636b6f29204368726f6d652f31392e302e313038342e3436205361666172692f3533362e35, 0x656e2d55532c656e3b713d302e382c76693b713d302e36, '2012-05-28 14:51:48', '2012-05-28 14:52:01');

-- --------------------------------------------------------

-- 
-- Table structure for table `oc_order_download`
-- 

DROP TABLE IF EXISTS `oc_order_download`;
CREATE TABLE `oc_order_download` (
  `order_download_id` int(11) NOT NULL auto_increment,
  `order_id` int(11) NOT NULL,
  `order_product_id` int(11) NOT NULL,
  `name` varchar(64) collate utf8_bin NOT NULL default '',
  `filename` varchar(128) collate utf8_bin NOT NULL default '',
  `mask` varchar(128) collate utf8_bin NOT NULL default '',
  `remaining` int(3) NOT NULL default '0',
  PRIMARY KEY  (`order_download_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=1 ;

-- 
-- Dumping data for table `oc_order_download`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `oc_order_fraud`
-- 

DROP TABLE IF EXISTS `oc_order_fraud`;
CREATE TABLE `oc_order_fraud` (
  `order_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `country_match` varchar(3) collate utf8_bin NOT NULL,
  `country_code` varchar(2) collate utf8_bin NOT NULL,
  `high_risk_country` varchar(3) collate utf8_bin NOT NULL,
  `distance` int(11) NOT NULL,
  `ip_region` varchar(255) collate utf8_bin NOT NULL,
  `ip_city` varchar(255) collate utf8_bin NOT NULL,
  `ip_latitude` decimal(10,6) NOT NULL,
  `ip_longitude` decimal(10,6) NOT NULL,
  `ip_isp` varchar(255) collate utf8_bin NOT NULL,
  `ip_org` varchar(255) collate utf8_bin NOT NULL,
  `ip_asnum` int(11) NOT NULL,
  `ip_user_type` varchar(255) collate utf8_bin NOT NULL,
  `ip_country_confidence` varchar(3) collate utf8_bin NOT NULL,
  `ip_region_confidence` varchar(3) collate utf8_bin NOT NULL,
  `ip_city_confidence` varchar(3) collate utf8_bin NOT NULL,
  `ip_postal_confidence` varchar(3) collate utf8_bin NOT NULL,
  `ip_postal_code` varchar(10) collate utf8_bin NOT NULL,
  `ip_accuracy_radius` int(11) NOT NULL,
  `ip_net_speed_cell` varchar(255) collate utf8_bin NOT NULL,
  `ip_metro_code` int(3) NOT NULL,
  `ip_area_code` int(3) NOT NULL,
  `ip_time_zone` varchar(255) collate utf8_bin NOT NULL,
  `ip_region_name` varchar(255) collate utf8_bin NOT NULL,
  `ip_domain` varchar(255) collate utf8_bin NOT NULL,
  `ip_country_name` varchar(255) collate utf8_bin NOT NULL,
  `ip_continent_code` varchar(2) collate utf8_bin NOT NULL,
  `ip_corporate_proxy` varchar(3) collate utf8_bin NOT NULL,
  `anonymous_proxy` varchar(3) collate utf8_bin NOT NULL,
  `proxy_score` int(3) NOT NULL,
  `is_trans_proxy` varchar(3) collate utf8_bin NOT NULL,
  `free_mail` varchar(3) collate utf8_bin NOT NULL,
  `carder_email` varchar(3) collate utf8_bin NOT NULL,
  `high_risk_username` varchar(3) collate utf8_bin NOT NULL,
  `high_risk_password` varchar(3) collate utf8_bin NOT NULL,
  `bin_match` varchar(10) collate utf8_bin NOT NULL,
  `bin_country` varchar(2) collate utf8_bin NOT NULL,
  `bin_name_match` varchar(3) collate utf8_bin NOT NULL,
  `bin_name` varchar(255) collate utf8_bin NOT NULL,
  `bin_phone_match` varchar(3) collate utf8_bin NOT NULL,
  `bin_phone` varchar(32) collate utf8_bin NOT NULL,
  `customer_phone_in_billing_location` varchar(8) collate utf8_bin NOT NULL,
  `ship_forward` varchar(3) collate utf8_bin NOT NULL,
  `city_postal_match` varchar(3) collate utf8_bin NOT NULL,
  `ship_city_postal_match` varchar(3) collate utf8_bin NOT NULL,
  `score` decimal(10,5) NOT NULL,
  `explanation` text collate utf8_bin NOT NULL,
  `risk_score` decimal(10,5) NOT NULL,
  `queries_remaining` int(11) NOT NULL,
  `maxmind_id` varchar(8) collate utf8_bin NOT NULL,
  `error` text collate utf8_bin NOT NULL,
  `date_added` datetime NOT NULL default '0000-00-00 00:00:00',
  PRIMARY KEY  (`order_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- 
-- Dumping data for table `oc_order_fraud`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `oc_order_history`
-- 

DROP TABLE IF EXISTS `oc_order_history`;
CREATE TABLE `oc_order_history` (
  `order_history_id` int(11) NOT NULL auto_increment,
  `order_id` int(11) NOT NULL,
  `order_status_id` int(5) NOT NULL,
  `notify` tinyint(1) NOT NULL default '0',
  `comment` text collate utf8_bin NOT NULL,
  `date_added` datetime NOT NULL default '0000-00-00 00:00:00',
  PRIMARY KEY  (`order_history_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=4 ;

-- 
-- Dumping data for table `oc_order_history`
-- 

INSERT INTO `oc_order_history` VALUES (1, 1, 1, 1, '', '2012-05-26 23:40:06');
INSERT INTO `oc_order_history` VALUES (2, 2, 1, 1, 0x48c6b0e1bb9b6e672064e1baab6e2063687579e1bb836e206b686fe1baa36e206e67c3a26e2068c3a06e670a0a567569206cc3b26e672063687579e1bb836e2073e1bb91207469e1bb816e2063e1baa76e207468616e6820746fc3a16e2076c3a06f2074c3a069206b686fe1baa36e0d0a4cc3aa205468616e682054c3b96e672030303331303031323035363331200d0a4e67c3a26e2048c3a06e67205669e1bb8774436f6d62616e6b0a0a42e1baa16e2073e1babd206b68c3b46e67206e68e1baad6e20c491c6b0e1bba3632073e1baa36e207068e1baa96d2062e1baa16e2063686f20c491e1babf6e206b6869207468616e6820746fc3a16e20686fc3a06e2074e1baa5742e, '2012-05-27 00:12:06');
INSERT INTO `oc_order_history` VALUES (3, 3, 1, 1, '', '2012-05-28 14:52:01');

-- --------------------------------------------------------

-- 
-- Table structure for table `oc_order_misc`
-- 

DROP TABLE IF EXISTS `oc_order_misc`;
CREATE TABLE `oc_order_misc` (
  `order_id` int(11) NOT NULL,
  `key` varchar(64) collate utf8_bin NOT NULL,
  `value` text collate utf8_bin NOT NULL,
  PRIMARY KEY  (`order_id`,`key`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- 
-- Dumping data for table `oc_order_misc`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `oc_order_option`
-- 

DROP TABLE IF EXISTS `oc_order_option`;
CREATE TABLE `oc_order_option` (
  `order_option_id` int(11) NOT NULL auto_increment,
  `order_id` int(11) NOT NULL,
  `order_product_id` int(11) NOT NULL,
  `product_option_id` int(11) NOT NULL,
  `product_option_value_id` int(11) NOT NULL default '0',
  `name` varchar(255) collate utf8_bin NOT NULL,
  `value` text collate utf8_bin NOT NULL,
  `type` varchar(32) collate utf8_bin NOT NULL,
  PRIMARY KEY  (`order_option_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=1 ;

-- 
-- Dumping data for table `oc_order_option`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `oc_order_product`
-- 

DROP TABLE IF EXISTS `oc_order_product`;
CREATE TABLE `oc_order_product` (
  `order_product_id` int(11) NOT NULL auto_increment,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `name` varchar(255) collate utf8_bin NOT NULL,
  `model` varchar(24) collate utf8_bin NOT NULL,
  `quantity` int(4) NOT NULL,
  `price` decimal(15,4) NOT NULL default '0.0000',
  `total` decimal(15,4) NOT NULL default '0.0000',
  `tax` decimal(15,4) NOT NULL default '0.0000',
  `reward` int(8) NOT NULL,
  PRIMARY KEY  (`order_product_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=4 ;

-- 
-- Dumping data for table `oc_order_product`
-- 

INSERT INTO `oc_order_product` VALUES (1, 1, 54, 0x486f612063e1baa96d206368c6b0e1bb9b6e67, 0x5a5f2048434d, 1, 350000.0000, 350000.0000, 0.0000, 0);
INSERT INTO `oc_order_product` VALUES (2, 2, 75, 0x4c472050353030, 0x4c472050353030, 1, 3300000.0000, 3300000.0000, 0.0000, 0);
INSERT INTO `oc_order_product` VALUES (3, 3, 58, 0x486f612063e1baa96d206368c6b0e1bb9b6e6720, 0x5a5f20484343, 1, 400000.0000, 400000.0000, 0.0000, 0);

-- --------------------------------------------------------

-- 
-- Table structure for table `oc_order_status`
-- 

DROP TABLE IF EXISTS `oc_order_status`;
CREATE TABLE `oc_order_status` (
  `order_status_id` int(11) NOT NULL auto_increment,
  `language_id` int(11) NOT NULL,
  `name` varchar(32) collate utf8_bin NOT NULL,
  PRIMARY KEY  (`order_status_id`,`language_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=17 ;

-- 
-- Dumping data for table `oc_order_status`
-- 

INSERT INTO `oc_order_status` VALUES (2, 2, 0xc490616e672078e1bbad206cc3bd);
INSERT INTO `oc_order_status` VALUES (3, 2, 0xc490c3a32076e1baad6e2063687579e1bb836e);
INSERT INTO `oc_order_status` VALUES (7, 2, 0x48e1bba779206769616f2064e1bb8b6368);
INSERT INTO `oc_order_status` VALUES (5, 2, 0x4769616f2064e1bb8b636820686fc3a06e207468c3a06e68);
INSERT INTO `oc_order_status` VALUES (8, 2, 0x54e1bbab206368e1bb9169);
INSERT INTO `oc_order_status` VALUES (9, 2, 0x48e1bba779206e67c6b0e1bba363206ce1baa169);
INSERT INTO `oc_order_status` VALUES (10, 2, 0x4769616f2064e1bb8b6368206ce1bb9769);
INSERT INTO `oc_order_status` VALUES (11, 2, 0xc490c3a320686fc3a06e207472e1baa3);
INSERT INTO `oc_order_status` VALUES (12, 2, 0xc490e1baa36f206e67c6b0e1bba363);
INSERT INTO `oc_order_status` VALUES (13, 2, 0x5469e1bb816e20636869e1babf74206b68e1baa575);
INSERT INTO `oc_order_status` VALUES (1, 2, 0x4368e1bb9d2078e1bbad206cc3bd);
INSERT INTO `oc_order_status` VALUES (16, 2, 0x48e1bba7792062e1bb8f);
INSERT INTO `oc_order_status` VALUES (15, 2, 0x58e1bbad206cc3bd);
INSERT INTO `oc_order_status` VALUES (14, 2, 0x48e1babf742068e1baa16e);

-- --------------------------------------------------------

-- 
-- Table structure for table `oc_order_total`
-- 

DROP TABLE IF EXISTS `oc_order_total`;
CREATE TABLE `oc_order_total` (
  `order_total_id` int(10) NOT NULL auto_increment,
  `order_id` int(11) NOT NULL,
  `code` varchar(32) collate utf8_bin NOT NULL,
  `title` varchar(255) collate utf8_bin NOT NULL default '',
  `text` varchar(255) collate utf8_bin NOT NULL default '',
  `value` decimal(15,4) NOT NULL default '0.0000',
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY  (`order_total_id`),
  KEY `idx_orders_total_orders_id` (`order_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=11 ;

-- 
-- Dumping data for table `oc_order_total`
-- 

INSERT INTO `oc_order_total` VALUES (1, 1, 0x7375625f746f74616c, 0x5468c3a06e68207469e1bb816e3a, 0x3335302c30303020766ec491, 350000.0000, 1);
INSERT INTO `oc_order_total` VALUES (2, 1, 0x7368697070696e67, 0x5068c3ad2076e1baad6e2063687579e1bb836e2063e1bb9120c491e1bb8b6e68, 0x3520766ec491, 5.0000, 3);
INSERT INTO `oc_order_total` VALUES (3, 1, 0x746178, 0x4769c3a1207472e1bb8b206769612074c4836e67, 0x3120766ec491, 0.5000, 5);
INSERT INTO `oc_order_total` VALUES (4, 1, 0x746f74616c, 0x54e1bb956e672063e1bb996e67203a, 0x3335302c30303620766ec491, 350005.5000, 9);
INSERT INTO `oc_order_total` VALUES (5, 2, 0x7375625f746f74616c, 0x5468c3a06e68207469e1bb816e3a, 0x332c3330302c30303020766ec491, 3300000.0000, 1);
INSERT INTO `oc_order_total` VALUES (6, 2, 0x746f74616c, 0x54e1bb956e672063e1bb996e67203a, 0x332c3330302c30303020766ec491, 3300000.0000, 9);
INSERT INTO `oc_order_total` VALUES (7, 3, 0x7375625f746f74616c, 0x5468c3a06e68207469e1bb816e3a, 0x3430302c30303020766ec491, 400000.0000, 1);
INSERT INTO `oc_order_total` VALUES (8, 3, 0x7368697070696e67, 0x5068c3ad2076e1baad6e2063687579e1bb836e2063e1bb9120c491e1bb8b6e68, 0x3520766ec491, 5.0000, 3);
INSERT INTO `oc_order_total` VALUES (9, 3, 0x637265646974, 0x4e3f702074693f6e3a, 0x2d3430302c30303520766ec491, -400005.0000, 7);
INSERT INTO `oc_order_total` VALUES (10, 3, 0x746f74616c, 0x54e1bb956e672063e1bb996e67203a, 0x3020766ec491, 0.0000, 9);

-- --------------------------------------------------------

-- 
-- Table structure for table `oc_order_voucher`
-- 

DROP TABLE IF EXISTS `oc_order_voucher`;
CREATE TABLE `oc_order_voucher` (
  `order_voucher_id` int(11) NOT NULL auto_increment,
  `order_id` int(11) NOT NULL,
  `voucher_id` int(11) NOT NULL,
  `description` varchar(255) collate utf8_bin NOT NULL,
  `code` varchar(10) collate utf8_bin NOT NULL,
  `from_name` varchar(64) collate utf8_bin NOT NULL,
  `from_email` varchar(96) collate utf8_bin NOT NULL,
  `to_name` varchar(64) collate utf8_bin NOT NULL,
  `to_email` varchar(96) collate utf8_bin NOT NULL,
  `voucher_theme_id` int(11) NOT NULL,
  `message` text collate utf8_bin NOT NULL,
  `amount` decimal(15,4) NOT NULL,
  PRIMARY KEY  (`order_voucher_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=1 ;

-- 
-- Dumping data for table `oc_order_voucher`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `oc_product`
-- 

DROP TABLE IF EXISTS `oc_product`;
CREATE TABLE `oc_product` (
  `product_id` int(11) NOT NULL auto_increment,
  `model` varchar(64) collate utf8_bin NOT NULL,
  `sku` varchar(64) collate utf8_bin NOT NULL,
  `upc` varchar(12) collate utf8_bin NOT NULL,
  `location` varchar(128) collate utf8_bin NOT NULL,
  `quantity` int(4) NOT NULL default '0',
  `stock_status_id` int(11) NOT NULL,
  `image` varchar(255) collate utf8_bin default NULL,
  `manufacturer_id` int(11) NOT NULL,
  `shipping` tinyint(1) NOT NULL default '1',
  `price` decimal(15,4) NOT NULL default '0.0000',
  `points` int(8) NOT NULL default '0',
  `tax_class_id` int(11) NOT NULL,
  `date_available` date NOT NULL,
  `weight` decimal(15,8) NOT NULL default '0.00000000',
  `weight_class_id` int(11) NOT NULL default '0',
  `length` decimal(15,8) NOT NULL default '0.00000000',
  `width` decimal(15,8) NOT NULL default '0.00000000',
  `height` decimal(15,8) NOT NULL default '0.00000000',
  `length_class_id` int(11) NOT NULL default '0',
  `subtract` tinyint(1) NOT NULL default '1',
  `minimum` int(11) NOT NULL default '1',
  `sort_order` int(11) NOT NULL default '0',
  `status` tinyint(1) NOT NULL default '0',
  `date_added` datetime NOT NULL default '0000-00-00 00:00:00',
  `date_modified` datetime NOT NULL default '0000-00-00 00:00:00',
  `viewed` int(5) NOT NULL default '0',
  PRIMARY KEY  (`product_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=86 ;

-- 
-- Dumping data for table `oc_product`
-- 

INSERT INTO `oc_product` VALUES (50, 0x5a5f20504c3031, '', '', '', 1, 5, 0x646174612f486f6174756f692f32303034313231345f6b626230312e6a7067, 0, 1, 496000.0000, 0, 0, '2012-03-01', 0.00000000, 1, 0.00000000, 0.00000000, 0.00000000, 1, 1, 1, 1, 1, '2012-03-02 15:56:37', '2012-03-02 16:01:52', 0);
INSERT INTO `oc_product` VALUES (54, 0x5a5f2048434d, '', '', '', 0, 5, 0x646174612f486f6174756f692f63686f6e2d686f612e676966, 0, 1, 350000.0000, 0, 0, '2012-03-01', 0.00000000, 1, 0.00000000, 0.00000000, 0.00000000, 1, 1, 1, 1, 1, '2012-03-02 16:22:55', '0000-00-00 00:00:00', 37);
INSERT INTO `oc_product` VALUES (55, 0x5a5f204848, '', '', '', 1, 5, 0x646174612f486f6174756f692f686f6174756f692831292e6a7067, 0, 1, 490000.0000, 0, 0, '2012-03-01', 0.00000000, 1, 0.00000000, 0.00000000, 0.00000000, 1, 1, 1, 1, 1, '2012-03-02 16:38:23', '0000-00-00 00:00:00', 2);
INSERT INTO `oc_product` VALUES (56, 0x5a5f2048534e, '', '', '', 1, 5, 0x646174612f486f6174756f692f68736e32345f346532613665363232623763662d313630783132302e6a7067, 0, 1, 300000.0000, 0, 0, '2012-03-01', 0.00000000, 1, 0.00000000, 0.00000000, 0.00000000, 1, 1, 1, 1, 1, '2012-03-02 16:41:41', '0000-00-00 00:00:00', 1);
INSERT INTO `oc_product` VALUES (57, 0x5a5f20485459, '', '', '', 1, 5, 0x646174612f486f6174756f692f6874795f35305f346533313134343138613938632d313630783132302e6a7067, 0, 1, 350000.0000, 0, 0, '2012-03-01', 0.00000000, 1, 0.00000000, 0.00000000, 0.00000000, 1, 1, 1, 1, 1, '2012-03-02 16:43:29', '0000-00-00 00:00:00', 1);
INSERT INTO `oc_product` VALUES (58, 0x5a5f20484343, '', '', '', 0, 5, 0x646174612f486f6174756f692f696d616765732e6a706567, 0, 1, 400000.0000, 0, 0, '2012-03-01', 0.00000000, 1, 0.00000000, 0.00000000, 0.00000000, 1, 1, 1, 1, 1, '2012-03-02 16:49:18', '2012-06-04 15:14:20', 114);
INSERT INTO `oc_product` VALUES (59, 0x5a5f204854593032, '', '', '', 1, 5, 0x646174612f486f6174756f692f485454592d34325f3637342e6a7067, 0, 1, 350000.0000, 0, 0, '2012-03-01', 0.00000000, 1, 0.00000000, 0.00000000, 0.00000000, 1, 1, 1, 1, 1, '2012-03-02 16:57:03', '0000-00-00 00:00:00', 1);
INSERT INTO `oc_product` VALUES (61, 0x5a5f2048484e, '', '', '', 1, 5, 0x646174612f486f6174756f692f736d616c6c5f313234363436343236315f6e765f6a70672e6a7067, 0, 1, 250000.0000, 0, 0, '2012-03-01', 0.00000000, 1, 0.00000000, 0.00000000, 0.00000000, 1, 1, 1, 1, 1, '2012-03-02 17:36:18', '0000-00-00 00:00:00', 0);
INSERT INTO `oc_product` VALUES (62, 0x5a5f204854593036, '', '', '', 1, 5, 0x646174612f486f6174756f692f6863303236312e6a7067, 0, 1, 200000.0000, 0, 0, '2012-03-01', 0.00000000, 1, 0.00000000, 0.00000000, 0.00000000, 1, 1, 1, 1, 1, '2012-03-02 17:55:40', '0000-00-00 00:00:00', 0);
INSERT INTO `oc_product` VALUES (63, 0x4c415031, '', '', '', 100, 5, 0x646174612f6d617974696e682f312e6a7067, 0, 1, 15000000.0000, 0, 0, '2012-03-03', 0.00000000, 1, 0.00000000, 0.00000000, 0.00000000, 1, 1, 1, 1, 1, '2012-03-04 01:13:05', '2012-03-04 01:15:36', 0);
INSERT INTO `oc_product` VALUES (64, 0x5650432046323246582f42, '', '', 0x3132207468c3a16e67, 100, 5, 0x646174612f6d617974696e682f313233373437393337333639392e6a7067, 0, 0, 25000000.0000, 0, 0, '2012-03-05', 0.00000000, 1, 0.00000000, 0.00000000, 0.00000000, 1, 1, 1, 1, 1, '2012-03-06 01:14:11', '2012-06-02 09:44:20', 8);
INSERT INTO `oc_product` VALUES (65, 0x204850204737324236305553, '', '', 0x3132207468c3a16e67, 100, 5, 0x646174612f6d617974696e682f48502d506176696c696f6e2d6737322d62363075732d4c6170746f702d776974682d496e74656c2d436f72652d69332e6a7067, 0, 0, 20000000.0000, 0, 0, '2012-03-05', 0.00000000, 1, 0.00000000, 0.00000000, 0.00000000, 1, 1, 1, 1, 1, '2012-03-06 01:28:43', '2012-03-06 01:34:52', 1);
INSERT INTO `oc_product` VALUES (66, 0x416365722034373530, '', '', 0x3132207468c3a16e67, 100, 5, 0x646174612f6d617974696e682f6e6f7465626f6f6b2d616365722d6173706972652d37353630672d383335386737356d6e6b6b2d31372d332d6c65642d616d642d61382d333530306d2d3867622d37353067622d68643637343067322d732d3167622d6476642d72772d776966692d62742d63616d2d773768702d36346269742d5f693133303336382e617370782e6a706567, 0, 0, 10500000.0000, 0, 0, '2012-03-05', 0.00000000, 1, 0.00000000, 0.00000000, 0.00000000, 1, 1, 1, 1, 1, '2012-03-06 01:42:54', '0000-00-00 00:00:00', 0);
INSERT INTO `oc_product` VALUES (67, 0x546f73686962612043363430, '', '', 0x3132207468c3a16e67, 100, 5, 0x646174612f6d617974696e682f6c6170746f702d746f73686962612d633634302d31303533752d623934302e6a7067, 0, 0, 11000000.0000, 0, 0, '2012-03-05', 0.00000000, 1, 0.00000000, 0.00000000, 0.00000000, 1, 1, 1, 1, 1, '2012-03-06 02:06:13', '0000-00-00 00:00:00', 0);
INSERT INTO `oc_product` VALUES (68, 0x534f4e59205661696f2050323347, '', '', 0x3132207468c3a16e67, 100, 5, 0x646174612f6d617974696e682f736f6e795f7661696f5f703233675f7472616e675f77696e646f77735f78705f6c61726765333938375f315f5f35353238322e6a7067, 0, 0, 17500000.0000, 0, 0, '2012-03-05', 0.00000000, 1, 0.00000000, 0.00000000, 0.00000000, 1, 1, 1, 1, 1, '2012-03-06 02:20:01', '0000-00-00 00:00:00', 0);
INSERT INTO `oc_product` VALUES (69, 0x53616d73756e672049393130302047616c6178792053204949, '', '', 0x3132207468c3a16e67, 100, 5, 0x646174612f445444442f73616d73756e672d69393130302d67616c6178792d732d69692d313667622d626c61636b2e6a7067, 0, 0, 12300000.0000, 0, 0, '2012-03-05', 0.00000000, 1, 0.00000000, 0.00000000, 0.00000000, 1, 1, 1, 1, 1, '2012-03-06 02:31:52', '2012-03-06 02:41:35', 0);
INSERT INTO `oc_product` VALUES (70, 0x4e6f6b69612043352d3033, '', '', 0x3132207468c3a16e67, 100, 5, 0x646174612f445444442f4335202d2030332e6a7067, 0, 0, 4200000.0000, 0, 0, '2012-03-05', 0.00000000, 1, 0.00000000, 0.00000000, 0.00000000, 1, 1, 1, 1, 1, '2012-03-06 02:41:24', '0000-00-00 00:00:00', 2);
INSERT INTO `oc_product` VALUES (71, 0x4970686f6e65203453, '', '', 0x3132207468c3a16e67, 100, 5, 0x646174612f445444442f3736353337313537333833306970686f6e6520342e6a7067, 0, 0, 15000000.0000, 0, 0, '2012-03-05', 0.00000000, 1, 0.00000000, 0.00000000, 0.00000000, 1, 1, 1, 1, 1, '2012-03-06 02:54:34', '0000-00-00 00:00:00', 0);
INSERT INTO `oc_product` VALUES (72, 0x53616d73756e67205335323030, '', '', 0x3132207468c3a16e67, 100, 5, 0x646174612f445444442f6269675f31303638305f353230302d302e6a7067, 0, 0, 3500000.0000, 0, 0, '2012-03-05', 0.00000000, 1, 0.00000000, 0.00000000, 0.00000000, 1, 1, 1, 1, 1, '2012-03-06 03:02:32', '0000-00-00 00:00:00', 1);
INSERT INTO `oc_product` VALUES (73, 0x4e6f6b6961204e392d3030, '', '', 0x3132207468c3a16e67, 100, 5, 0x646174612f445444442f6e6f6b69612d6e392d6e6f6b69612d6e392d30302d6e6f6b69612d6e392d6c616e6b6b752d313667622d626c61636b2e6a7067, 0, 0, 8300000.0000, 0, 0, '2012-03-05', 0.00000000, 1, 0.00000000, 0.00000000, 0.00000000, 1, 1, 1, 1, 1, '2012-03-06 03:10:57', '0000-00-00 00:00:00', 0);
INSERT INTO `oc_product` VALUES (74, 0x4e6f6b696120453732, '', '', 0x3132207468c3a16e67, 100, 5, 0x646174612f445444442f6e6f6b69615f6537325f746f70617a5f62726f776e5f5f37313239305f5f39383433342e6a7067, 0, 0, 3500000.0000, 0, 0, '2012-03-05', 0.00000000, 1, 0.00000000, 0.00000000, 0.00000000, 1, 1, 1, 1, 1, '2012-03-06 03:15:11', '0000-00-00 00:00:00', 2);
INSERT INTO `oc_product` VALUES (75, 0x4c472050353030, '', '', 0x3132207468c3a16e67, 99, 5, 0x646174612f445444442f6c672d6f7074696d75736f6e6570686f746f735f622e6a7067, 0, 0, 4300000.0000, 0, 0, '2012-03-05', 0.00000000, 1, 0.00000000, 0.00000000, 0.00000000, 1, 1, 1, 1, 1, '2012-03-06 03:22:32', '2012-06-04 15:46:10', 10);
INSERT INTO `oc_product` VALUES (76, 0x4854432048443220, '', '', 0x3132207468c3a16e67, 100, 5, 0x646174612f445444442f4854432d4844322d666f722d542d4d6f62696c652e6a7067, 0, 0, 6600000.0000, 0, 0, '2012-03-05', 0.00000000, 1, 0.00000000, 0.00000000, 0.00000000, 1, 1, 1, 1, 1, '2012-03-06 03:34:48', '0000-00-00 00:00:00', 2);
INSERT INTO `oc_product` VALUES (77, 0x4e6f6b6961205832, '', '', 0x3132207468c3a16e67, 100, 5, 0x646174612f445444442f58322d30302e6a7067, 0, 0, 2200000.0000, 0, 0, '2012-03-05', 0.00000000, 1, 0.00000000, 0.00000000, 0.00000000, 1, 1, 1, 1, 1, '2012-03-06 03:42:18', '0000-00-00 00:00:00', 0);
INSERT INTO `oc_product` VALUES (78, 0x5665737420466f726576657220, '', '', '', 100, 5, 0x646174612f7175616e20616f2f616f2d766573742d6e752d666f72657665722d666f2d616f2d303131322e6a7067, 0, 0, 600000.0000, 0, 0, '2012-03-05', 0.00000000, 1, 0.00000000, 0.00000000, 0.00000000, 1, 1, 1, 1, 1, '2012-03-06 07:17:32', '2012-03-06 07:18:35', 0);
INSERT INTO `oc_product` VALUES (79, 0x204a65616e2053757269204a4e303031, '', '', '', 100, 5, 0x646174612f7175616e20616f2f6a6e3032342e6a7067, 0, 0, 250000.0000, 0, 0, '2012-03-05', 0.00000000, 1, 0.00000000, 0.00000000, 0.00000000, 1, 1, 1, 1, 1, '2012-03-06 07:26:14', '2012-03-06 07:27:51', 1);
INSERT INTO `oc_product` VALUES (80, 0x5141203031, '', '', '', 100, 5, 0x646174612f7175616e20616f2f343639375f31343532385f32313534383430323931355f4c2e6a7067, 0, 0, 600000.0000, 0, 0, '2012-03-05', 0.00000000, 1, 0.00000000, 0.00000000, 0.00000000, 1, 1, 1, 1, 1, '2012-03-06 07:44:47', '0000-00-00 00:00:00', 0);
INSERT INTO `oc_product` VALUES (81, 0x5141203032, '', '', '', 100, 5, 0x646174612f7175616e20616f2f313332323436313535395f2d6f2d732d6d692d6e616d2d626f64792d30382e6a7067, 0, 0, 250000.0000, 0, 0, '2012-03-05', 0.00000000, 1, 0.00000000, 0.00000000, 0.00000000, 1, 1, 1, 1, 1, '2012-03-06 07:55:22', '0000-00-00 00:00:00', 2);
INSERT INTO `oc_product` VALUES (82, 0x566179203031, '', '', '', 100, 5, 0x646174612f7175616e20616f2f7661792e6a7067, 0, 0, 200000.0000, 0, 0, '2012-03-05', 0.00000000, 1, 0.00000000, 0.00000000, 0.00000000, 1, 1, 1, 1, 1, '2012-03-06 07:59:40', '2012-03-10 10:07:05', 1);
INSERT INTO `oc_product` VALUES (83, 0x5141203033, '', '', '', 100, 5, 0x646174612f7175616e20616f2f626f2d7472652d656d2e6a7067, 0, 0, 300000.0000, 0, 0, '2012-03-05', 0.00000000, 1, 0.00000000, 0.00000000, 0.00000000, 1, 1, 1, 1, 1, '2012-03-06 08:03:38', '2012-03-10 10:07:56', 4);
INSERT INTO `oc_product` VALUES (84, 0x5141203035, '', '', '', 100, 5, 0x646174612f7175616e20616f2f56657374206e616d2e6a706567, 0, 0, 1500000.0000, 0, 0, '2012-03-05', 0.00000000, 1, 0.00000000, 0.00000000, 0.00000000, 1, 1, 1, 1, 1, '2012-03-06 08:09:21', '0000-00-00 00:00:00', 5);
INSERT INTO `oc_product` VALUES (85, 0x5141203036, '', '', '', 100, 5, 0x646174612f7175616e20616f2f6a6e3032342e6a7067, 0, 0, 200000.0000, 0, 0, '2012-03-05', 0.00000000, 1, 0.00000000, 0.00000000, 0.00000000, 1, 1, 1, 1, 1, '2012-03-06 08:14:06', '2012-03-10 10:09:19', 4);

-- --------------------------------------------------------

-- 
-- Table structure for table `oc_product_attribute`
-- 

DROP TABLE IF EXISTS `oc_product_attribute`;
CREATE TABLE `oc_product_attribute` (
  `product_id` int(11) NOT NULL,
  `attribute_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `text` text collate utf8_bin NOT NULL,
  PRIMARY KEY  (`product_id`,`attribute_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- 
-- Dumping data for table `oc_product_attribute`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `oc_product_description`
-- 

DROP TABLE IF EXISTS `oc_product_description`;
CREATE TABLE `oc_product_description` (
  `product_id` int(11) NOT NULL auto_increment,
  `language_id` int(11) NOT NULL,
  `name` varchar(255) collate utf8_bin NOT NULL,
  `description` text collate utf8_bin NOT NULL,
  `meta_description` varchar(255) collate utf8_bin NOT NULL,
  `meta_keyword` varchar(255) collate utf8_bin NOT NULL,
  PRIMARY KEY  (`product_id`,`language_id`),
  KEY `name` (`name`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=86 ;

-- 
-- Dumping data for table `oc_product_description`
-- 

INSERT INTO `oc_product_description` VALUES (50, 2, 0x4cc3a36e6720686f6120203031, '', '', '');
INSERT INTO `oc_product_description` VALUES (54, 2, 0x486f612063e1baa96d206368c6b0e1bb9b6e67, '', '', '');
INSERT INTO `oc_product_description` VALUES (55, 2, 0x486f612068e1bb936e6720c491e1bb8f, '', '', '');
INSERT INTO `oc_product_description` VALUES (56, 2, 0x486f612073696e68206e68e1baad7420, '', '', '');
INSERT INTO `oc_product_description` VALUES (57, 2, 0x486f612074c3ac6e682079c3aa7520, '', '', '');
INSERT INTO `oc_product_description` VALUES (58, 2, 0x486f612063e1baa96d206368c6b0e1bb9b6e6720, '', '', '');
INSERT INTO `oc_product_description` VALUES (59, 2, 0x486f612074c3ac6e682079c3aa75203032, '', '', '');
INSERT INTO `oc_product_description` VALUES (61, 2, 0x486f612068e1bb936e67206e68756e67, '', '', '');
INSERT INTO `oc_product_description` VALUES (62, 2, 0x486f612074c3ac6e682079c3aa75203036, '', '', '');
INSERT INTO `oc_product_description` VALUES (63, 2, 0x4c656e6f766f204734373020313031332028353933312d3130313329, 0x266c743b702667743b0d0a0926616d703b6e6273703b266c743b2f702667743b0d0a266c743b7461626c6520626f726465723d2671756f743b312671756f743b20626f72646572636f6c6f723d2671756f743b234343434343432671756f743b2063656c6c70616464696e673d2671756f743b352671756f743b2063656c6c73706163696e673d2671756f743b302671756f743b207374796c653d2671756f743b626f726465722d636f6c6c617073653a20636f6c6c617073653b20636f6c6f723a207267622835312c2035312c203531293b20666f6e742d66616d696c793a20417269616c2c2048656c7665746963612c2073616e732d73657269663b20746578742d616c69676e3a206c6566743b2077696474683a2037373970783b202671756f743b2667743b0d0a09266c743b74626f64792667743b0d0a0909266c743b74722667743b0d0a090909266c743b7464207374796c653d2671756f743b766572746963616c2d616c69676e3a20746f703b202671756f743b2076616c69676e3d2671756f743b746f702671756f743b2077696474683d2671756f743b31343070782671756f743b2667743b0d0a0909090948c3a36e672073e1baa36e207875e1baa574266c743b2f74642667743b0d0a090909266c743b7464207374796c653d2671756f743b766572746963616c2d616c69676e3a20746f703b202671756f743b2076616c69676e3d2671756f743b746f702671756f743b2667743b0d0a0909090949424d2d4c656e6f766f266c743b2f74642667743b0d0a0909266c743b2f74722667743b0d0a0909266c743b74722667743b0d0a090909266c743b7464207374796c653d2671756f743b766572746963616c2d616c69676e3a20746f703b202671756f743b2076616c69676e3d2671756f743b746f702671756f743b2077696474683d2671756f743b31343070782671756f743b2667743b0d0a090909094d6f64656c266c743b2f74642667743b0d0a090909266c743b7464207374796c653d2671756f743b766572746963616c2d616c69676e3a20746f703b202671756f743b2076616c69676e3d2671756f743b746f702671756f743b2667743b0d0a090909094c656e6f766f204734373020313031332028353933312d313031332029266c743b2f74642667743b0d0a0909266c743b2f74722667743b0d0a0909266c743b74722667743b0d0a090909266c743b7464207374796c653d2671756f743b766572746963616c2d616c69676e3a20746f703b202671756f743b2076616c69676e3d2671756f743b746f702671756f743b2077696474683d2671756f743b31343070782671756f743b2667743b0d0a0909090942e1bb992076692078e1bbad206cc3bd266c743b2f74642667743b0d0a090909266c743b7464207374796c653d2671756f743b766572746963616c2d616c69676e3a20746f703b202671756f743b2076616c69676e3d2671756f743b746f702671756f743b2667743b0d0a09090909496e74656c20436f72652069332d323333304d2028322e3247487a2f20334d4229266c743b2f74642667743b0d0a0909266c743b2f74722667743b0d0a0909266c743b74722667743b0d0a090909266c743b7464207374796c653d2671756f743b766572746963616c2d616c69676e3a20746f703b202671756f743b2076616c69676e3d2671756f743b746f702671756f743b2077696474683d2671756f743b31343070782671756f743b2667743b0d0a0909090942e1bb99206e68e1bb9b2052616d266c743b2f74642667743b0d0a090909266c743b7464207374796c653d2671756f743b766572746963616c2d616c69676e3a20746f703b202671756f743b2076616c69676e3d2671756f743b746f702671756f743b2667743b0d0a09090909324762266c743b2f74642667743b0d0a0909266c743b2f74722667743b0d0a0909266c743b74722667743b0d0a090909266c743b7464207374796c653d2671756f743b766572746963616c2d616c69676e3a20746f703b202671756f743b2076616c69676e3d2671756f743b746f702671756f743b2077696474683d2671756f743b31343070782671756f743b2667743b0d0a09090909e1bb9420c491c4a9612063e1bba96e67266c743b2f74642667743b0d0a090909266c743b7464207374796c653d2671756f743b766572746963616c2d616c69676e3a20746f703b202671756f743b2076616c69676e3d2671756f743b746f702671756f743b2667743b0d0a090909093530304762266c743b2f74642667743b0d0a0909266c743b2f74722667743b0d0a0909266c743b74722667743b0d0a090909266c743b7464207374796c653d2671756f743b766572746963616c2d616c69676e3a20746f703b202671756f743b2076616c69676e3d2671756f743b746f702671756f743b2077696474683d2671756f743b31343070782671756f743b2667743b0d0a090909094361726420c491e1bb9320686fe1baa1266c743b2f74642667743b0d0a090909266c743b7464207374796c653d2671756f743b766572746963616c2d616c69676e3a20746f703b202671756f743b2076616c69676e3d2671756f743b746f702671756f743b2667743b0d0a09090909496e74656c2048442033303030266c743b2f74642667743b0d0a0909266c743b2f74722667743b0d0a0909266c743b74722667743b0d0a090909266c743b7464207374796c653d2671756f743b766572746963616c2d616c69676e3a20746f703b202671756f743b2076616c69676e3d2671756f743b746f702671756f743b2077696474683d2671756f743b31343070782671756f743b2667743b0d0a09090909e1bb9420c491c4a961207175616e67266c743b2f74642667743b0d0a090909266c743b7464207374796c653d2671756f743b766572746963616c2d616c69676e3a20746f703b202671756f743b2076616c69676e3d2671756f743b746f702671756f743b2667743b0d0a090909094456442d5257266c743b2f74642667743b0d0a0909266c743b2f74722667743b0d0a0909266c743b74722667743b0d0a090909266c743b7464207374796c653d2671756f743b766572746963616c2d616c69676e3a20746f703b202671756f743b2076616c69676e3d2671756f743b746f702671756f743b2077696474683d2671756f743b31343070782671756f743b2667743b0d0a090909094dc3a06e2068c3ac6e68266c743b2f74642667743b0d0a090909266c743b7464207374796c653d2671756f743b766572746963616c2d616c69676e3a20746f703b202671756f743b2076616c69676e3d2671756f743b746f702671756f743b2667743b0d0a0909090931342671756f743b2057584741204c4544266c743b2f74642667743b0d0a0909266c743b2f74722667743b0d0a0909266c743b74722667743b0d0a090909266c743b7464207374796c653d2671756f743b766572746963616c2d616c69676e3a20746f703b202671756f743b2076616c69676e3d2671756f743b746f702671756f743b2077696474683d2671756f743b31343070782671756f743b2667743b0d0a0909090943616d657261266c743b2f74642667743b0d0a090909266c743b7464207374796c653d2671756f743b766572746963616c2d616c69676e3a20746f703b202671756f743b2076616c69676e3d2671756f743b746f702671756f743b2667743b0d0a0909090943c3b3266c743b2f74642667743b0d0a0909266c743b2f74722667743b0d0a0909266c743b74722667743b0d0a090909266c743b7464207374796c653d2671756f743b766572746963616c2d616c69676e3a20746f703b202671756f743b2076616c69676e3d2671756f743b746f702671756f743b2077696474683d2671756f743b31343070782671756f743b2667743b0d0a090909094361726420526561646572266c743b2f74642667743b0d0a090909266c743b7464207374796c653d2671756f743b766572746963616c2d616c69676e3a20746f703b202671756f743b2076616c69676e3d2671756f743b746f702671756f743b2667743b0d0a0909090943c3b3266c743b2f74642667743b0d0a0909266c743b2f74722667743b0d0a0909266c743b74722667743b0d0a090909266c743b7464207374796c653d2671756f743b766572746963616c2d616c69676e3a20746f703b202671756f743b2076616c69676e3d2671756f743b746f702671756f743b2077696474683d2671756f743b31343070782671756f743b2667743b0d0a0909090957696669266c743b2f74642667743b0d0a090909266c743b7464207374796c653d2671756f743b766572746963616c2d616c69676e3a20746f703b202671756f743b2076616c69676e3d2671756f743b746f702671756f743b2667743b0d0a090909093830322e313120622f672f6e266c743b2f74642667743b0d0a0909266c743b2f74722667743b0d0a0909266c743b74722667743b0d0a090909266c743b7464207374796c653d2671756f743b766572746963616c2d616c69676e3a20746f703b202671756f743b2076616c69676e3d2671756f743b746f702671756f743b2077696474683d2671756f743b31343070782671756f743b2667743b0d0a09090909426c7565746f6f7468266c743b2f74642667743b0d0a090909266c743b7464207374796c653d2671756f743b766572746963616c2d616c69676e3a20746f703b202671756f743b2076616c69676e3d2671756f743b746f702671756f743b2667743b0d0a0909090943c3b3266c743b2f74642667743b0d0a0909266c743b2f74722667743b0d0a0909266c743b74722667743b0d0a090909266c743b7464207374796c653d2671756f743b766572746963616c2d616c69676e3a20746f703b202671756f743b2076616c69676e3d2671756f743b746f702671756f743b2077696474683d2671756f743b31343070782671756f743b2667743b0d0a0909090948e1bb8720c49169e1bb81752068c3a06e68266c743b2f74642667743b0d0a090909266c743b7464207374796c653d2671756f743b766572746963616c2d616c69676e3a20746f703b202671756f743b2076616c69676e3d2671756f743b746f702671756f743b2667743b0d0a0909090946726565444f53266c743b2f74642667743b0d0a0909266c743b2f74722667743b0d0a0909266c743b74722667743b0d0a090909266c743b7464207374796c653d2671756f743b766572746963616c2d616c69676e3a20746f703b202671756f743b2076616c69676e3d2671756f743b746f702671756f743b2077696474683d2671756f743b31343070782671756f743b2667743b0d0a090909094b68e1bb9169206cc6b0e1bba36e67266c743b2f74642667743b0d0a090909266c743b7464207374796c653d2671756f743b766572746963616c2d616c69676e3a20746f703b202671756f743b2076616c69676e3d2671756f743b746f702671756f743b2667743b0d0a09090909322e326b67266c743b2f74642667743b0d0a0909266c743b2f74722667743b0d0a0909266c743b74722667743b0d0a090909266c743b7464207374796c653d2671756f743b766572746963616c2d616c69676e3a20746f703b202671756f743b2076616c69676e3d2671756f743b746f702671756f743b2077696474683d2671756f743b31343070782671756f743b2667743b0d0a0909090950696e266c743b2f74642667743b0d0a090909266c743b7464207374796c653d2671756f743b766572746963616c2d616c69676e3a20746f703b202671756f743b2076616c69676e3d2671756f743b746f702671756f743b2667743b0d0a09090909362063656c6c266c743b2f74642667743b0d0a0909266c743b2f74722667743b0d0a0909266c743b74722667743b0d0a090909266c743b7464207374796c653d2671756f743b766572746963616c2d616c69676e3a20746f703b202671756f743b2076616c69676e3d2671756f743b746f702671756f743b2077696474683d2671756f743b31343070782671756f743b2667743b0d0a090909095068e1bba5206b69e1bb876e266c743b2f74642667743b0d0a090909266c743b7464207374796c653d2671756f743b766572746963616c2d616c69676e3a20746f703b202671756f743b2076616c69676e3d2671756f743b746f702671756f743b2667743b0d0a09090909416461707465722c2074c3a069206c69e1bb87752c2073c3a163682c20c491c4a9612068c6b0e1bb9b6e672064e1baab6e20c49169206bc3a86d266c743b2f74642667743b0d0a0909266c743b2f74722667743b0d0a09266c743b2f74626f64792667743b0d0a266c743b2f7461626c652667743b0d0a266c743b702667743b0d0a0926616d703b6e6273703b266c743b2f702667743b0d0a, 0x4c656e6f766f204734373020313031332028353933312d3130313329, 0x4c656e6f766f204734373020313031332028353933312d3130313329);
INSERT INTO `oc_product_description` VALUES (64, 2, 0x204c6170746f70207661696f205650432046323246582f42, 0x266c743b756c2667743b0d0a09266c743b6c692667743b0d0a0909266c743b7370616e207374796c653d2671756f743b666f6e742d73697a653a20736d616c6c3b2671756f743b2667743b496e74656cc2ae20266c743b7374726f6e672667743b436f7265e284a269372d32363330514d266c743b2f7374726f6e672667743b20266c743b2f7370616e2667743b266c743b2f6c692667743b0d0a09266c743b6c692667743b0d0a0909266c743b7370616e207374796c653d2671756f743b666f6e742d73697a653a20736d616c6c3b2671756f743b2667743b322e3047487a266c743b2f7370616e2667743b266c743b2f6c692667743b0d0a09266c743b6c692667743b0d0a0909266c743b7370616e207374796c653d2671756f743b666f6e742d73697a653a20736d616c6c3b2671756f743b2667743b266c743b7374726f6e672667743b34266c743b2f7374726f6e672667743b4742204444523320266c743b2f7370616e2667743b266c743b2f6c692667743b0d0a09266c743b6c692667743b0d0a0909266c743b7370616e207374796c653d2671756f743b666f6e742d73697a653a20736d616c6c3b2671756f743b2667743b48444420266c743b7374726f6e672667743b353030266c743b2f7374726f6e672667743b47266c743b2f7370616e2667743b266c743b2f6c692667743b0d0a09266c743b6c692667743b0d0a0909266c743b7370616e207374796c653d2671756f743b666f6e742d73697a653a20736d616c6c3b2671756f743b2667743b445644c2b1522f5257266c743b7374726f6e672667743b20266c743b2f7374726f6e672667743b266c743b2f7370616e2667743b266c743b2f6c692667743b0d0a09266c743b6c692667743b0d0a0909266c743b7370616e207374796c653d2671756f743b666f6e742d73697a653a20736d616c6c3b2671756f743b2667743b56676120266c743b7374726f6e672667743b4e5649444941c2ae204765466f726365c2ae20475435323020283531324d4229266c743b2f7374726f6e672667743b266c743b2f7370616e2667743b266c743b2f6c692667743b0d0a09266c743b6c692667743b0d0a0909266c743b7370616e207374796c653d2671756f743b666f6e742d73697a653a20736d616c6c3b2671756f743b2667743b266c743b7374726f6e672667743b31362e34266c743b2f7374726f6e672667743b2671756f743b205769646573637265656e205641494f20446973706c617920266c743b7370616e207374796c653d2671756f743b636f6c6f723a20726762283235352c20302c2030293b2671756f743b2667743b2846756c6c20484431393230783130383029266c743b2f7370616e2667743b207265736f6c7574696f6e266c743b2f7370616e2667743b266c743b2f6c692667743b0d0a09266c743b6c692667743b0d0a0909266c743b7370616e207374796c653d2671756f743b666f6e742d73697a653a20736d616c6c3b2671756f743b2667743b4e6574776f726b20576972656c65737320266c743b2f7370616e2667743b266c743b2f6c692667743b0d0a09266c743b6c692667743b0d0a0909266c743b7370616e207374796c653d2671756f743b666f6e742d73697a653a20736d616c6c3b2671756f743b2667743b57656263616d20322e30266c743b2f7370616e2667743b266c743b2f6c692667743b0d0a09266c743b6c692667743b0d0a0909266c743b7370616e207374796c653d2671756f743b666f6e742d73697a653a20736d616c6c3b2671756f743b2667743b426c7565746f6f74682f4261747465727920362063656c6c20266c743b2f7370616e2667743b266c743b2f6c692667743b0d0a09266c743b6c692667743b0d0a0909266c743b7370616e207374796c653d2671756f743b666f6e742d73697a653a20736d616c6c3b2671756f743b2667743b57656967687420322c3935206b672c57696e646f77732037266c743b2f7370616e2667743b266c743b2f6c692667743b0d0a266c743b2f756c2667743b0d0a, '', '');
INSERT INTO `oc_product_description` VALUES (65, 2, 0x4c6170746f70204850204737324236305553, 0x266c743b756c2667743b0d0a09266c743b6c692667743b0d0a090957696e646f7773203720486f6d65205072656d69756d2036342d4269742045646974696f6e266c743b2f6c692667743b0d0a09266c743b6c692667743b0d0a090926616d703b6e6273703b496e74656c2069332d3337304d20322e3447487a20286475616c20636f726529266c743b2f6c692667743b0d0a09266c743b6c692667743b0d0a090934474220444452332052414d266c743b2f6c692667743b0d0a09266c743b6c692667743b0d0a090926616d703b6e6273703b31372e332671756f743b204c45442d6261636b6c697420312c363030207820393030207265736f6c7574696f6e266c743b2f6c692667743b0d0a09266c743b6c692667743b0d0a0909496e74656c20696e7465677261746564206772617068696373266c743b2f6c692667743b0d0a09266c743b6c692667743b0d0a090926616d703b6e6273703b35303020474220372c3230302052504d20484444266c743b2f6c692667743b0d0a09266c743b6c692667743b0d0a090926616d703b6e6273703b4c696768745363726962652044564420444c2f43442d5257204275726e657220436f6d626f266c743b2f6c692667743b0d0a09266c743b6c692667743b0d0a09093830322e3131622f672f6e266c743b2f6c692667743b0d0a09266c743b6c692667743b0d0a0909696e74656772617465642077656263616d2f6d6963266c743b2f6c692667743b0d0a09266c743b6c692667743b0d0a090926616d703b6e6273703b3520696e2031206361726420726561646572202853442c204d4d432c204d532e2e29266c743b2f6c692667743b0d0a09266c743b6c692667743b0d0a090926616d703b6e6273703b48444d4920506f7274266c743b2f6c692667743b0d0a09266c743b6c692667743b0d0a090926616d703b6e6273703b496e746567726174656420417564696f207769746820416c746563204c616e73696e6720537065616b657273266c743b2f6c692667743b0d0a09266c743b6c692667743b0d0a090926616d703b6e6273703b6c6170746f70207765696768743a20362e36206c6273266c743b2f6c692667743b0d0a266c743b2f756c2667743b0d0a, '', '');
INSERT INTO `oc_product_description` VALUES (66, 2, 0x4c6170746f7020416365722034373530, 0x266c743b756c20636c6173733d2671756f743b6974656d5f6c6973742671756f743b2667743b0d0a09266c743b6c692667743b0d0a09094350553a20496e74656c20436f726520693320323331304d2c20322e31302047487a266c743b2f6c692667743b0d0a09266c743b6c692667743b0d0a090942e1bb99206e68e1bb9b3a20444452332c20322047422e20c490c4a9612063e1bba96e673a20353030204742266c743b2f6c692667743b0d0a09266c743b6c692667743b0d0a09094dc3a06e2068c3ac6e683a20313420696e636820484420283133363620782037363820706978656c7329266c743b2f6c692667743b0d0a09266c743b6c692667743b0d0a0909c490e1bb932068e1bb8d613a20496e74656cc2ae204844204772617068696373203330303020496e74656772617465642c20323536204d42266c743b2f6c692667743b0d0a09266c743b6c692667743b0d0a0909c490c4a961207175616e673a20445644205375706572204d756c746920446f75626c65204c61796572266c743b2f6c692667743b0d0a09266c743b6c692667743b0d0a090948e1bb8720c49169e1bb81752068c3a06e683a204c696e75782e205472e1bb8d6e67206cc6b0e1bba36e673a20322c31206b67266c743b2f6c692667743b0d0a266c743b2f756c2667743b0d0a, '', '');
INSERT INTO `oc_product_description` VALUES (67, 2, 0x4c6170746f7020546f73686962612043363430, 0x266c743b756c2667743b0d0a09266c743b6c692667743b0d0a0909266c743b683120636c6173733d2671756f743b70617273656173696e5469746c65202671756f743b2667743b0d0a090909266c743b7370616e207374796c653d2671756f743b666f6e742d73697a653a20313270783b2671756f743b2667743b48e1bb8720c49169e1bb81752068c3a06e683a20504320646f73266c743b2f7370616e2667743b266c743b2f68312667743b0d0a09266c743b2f6c692667743b0d0a09266c743b6c692667743b0d0a0909266c743b683120636c6173733d2671756f743b70617273656173696e5469746c65202671756f743b2667743b0d0a090909266c743b7370616e207374796c653d2671756f743b666f6e742d73697a653a20313270783b2671756f743b2667743b26616d703b6e6273703b42e1bb992078e1bbad206cc3ad3a2043505520496e74656c20436f72652069332d3338304d2028322a322e35332047487a29266c743b2f7370616e2667743b266c743b2f68312667743b0d0a09266c743b2f6c692667743b0d0a09266c743b6c692667743b0d0a0909266c743b683120636c6173733d2671756f743b70617273656173696e5469746c65202671756f743b2667743b0d0a090909266c743b7370616e207374796c653d2671756f743b666f6e742d73697a653a20313270783b2671756f743b2667743b26616d703b6e6273703b42e1bb99206e68e1bb9b3a2052616d2032472044445233202d2031303636266c743b2f7370616e2667743b266c743b2f68312667743b0d0a09266c743b2f6c692667743b0d0a09266c743b6c692667743b0d0a0909266c743b683120636c6173733d2671756f743b70617273656173696e5469746c65202671756f743b2667743b0d0a090909266c743b7370616e207374796c653d2671756f743b666f6e742d73697a653a20313270783b2671756f743b2667743b26616d703b6e6273703be1bb9420c491c4a9612063e1bba96e673a204844442033323047422053415441266c743b2f7370616e2667743b266c743b2f68312667743b0d0a09266c743b2f6c692667743b0d0a09266c743b6c692667743b0d0a0909266c743b683120636c6173733d2671756f743b70617273656173696e5469746c65202671756f743b2667743b0d0a090909266c743b7370616e207374796c653d2671756f743b666f6e742d73697a653a20313270783b2671756f743b2667743b43617264206dc3a06e2068c3ac6e683a2056474120496e74656c204844204772617068696373266c743b2f7370616e2667743b266c743b2f68312667743b0d0a09266c743b2f6c692667743b0d0a09266c743b6c692667743b0d0a0909266c743b683120636c6173733d2671756f743b70617273656173696e5469746c65202671756f743b2667743b0d0a090909266c743b7370616e207374796c653d2671756f743b666f6e742d73697a653a20313270783b2671756f743b2667743b4dc3a06e2068c3ac6e683a20446973706c61792031342671756f743b204c4544204c434420776964652031363a39266c743b2f7370616e2667743b266c743b2f68312667743b0d0a09266c743b2f6c692667743b0d0a09266c743b6c692667743b0d0a0909266c743b683120636c6173733d2671756f743b70617273656173696e5469746c65202671756f743b2667743b0d0a090909266c743b7370616e207374796c653d2671756f743b666f6e742d73697a653a20313270783b2671756f743b2667743b26616d703b6e6273703be1bb9420c491c4a961207175616e673a204456445257266c743b2f7370616e2667743b266c743b2f68312667743b0d0a09266c743b2f6c692667743b0d0a09266c743b6c692667743b0d0a0909266c743b683120636c6173733d2671756f743b70617273656173696e5469746c65202671756f743b2667743b0d0a090909266c743b7370616e207374796c653d2671756f743b666f6e742d73697a653a20313270783b2671756f743b2667743b26616d703b6e6273703b57656263616d3a20596573266c743b2f7370616e2667743b266c743b2f68312667743b0d0a09266c743b2f6c692667743b0d0a09266c743b6c692667743b0d0a0909266c743b683120636c6173733d2671756f743b70617273656173696e5469746c65202671756f743b2667743b0d0a090909266c743b7370616e207374796c653d2671756f743b666f6e742d73697a653a20313270783b2671756f743b2667743b26616d703b6e6273703b426c7565746f6f74683a20596573266c743b2f7370616e2667743b266c743b2f68312667743b0d0a09266c743b2f6c692667743b0d0a09266c743b6c692667743b0d0a0909266c743b683120636c6173733d2671756f743b70617273656173696e5469746c65202671756f743b2667743b0d0a090909266c743b7370616e207374796c653d2671756f743b666f6e742d73697a653a20313270783b2671756f743b2667743b26616d703b6e6273703b4769616f207469e1babf703a20576972656c657373266c743b2f7370616e2667743b266c743b2f68312667743b0d0a09266c743b2f6c692667743b0d0a09266c743b6c692667743b0d0a0909266c743b683120636c6173733d2671756f743b70617273656173696e5469746c65202671756f743b2667743b0d0a090909266c743b7370616e207374796c653d2671756f743b666f6e742d73697a653a20313270783b2671756f743b2667743b26616d703b6e6273703b5472e1bb8d6e67206cc6b0e1bba36e673a20322e31326b67266c743b2f7370616e2667743b266c743b2f68312667743b0d0a09266c743b2f6c692667743b0d0a09266c743b6c692667743b0d0a0909266c743b683120636c6173733d2671756f743b70617273656173696e5469746c65202671756f743b2667743b0d0a090909266c743b7370616e207374796c653d2671756f743b666f6e742d73697a653a20313270783b2671756f743b2667743b26616d703b6e6273703b50696e3a20362063656c6c73266c743b2f7370616e2667743b266c743b2f68312667743b0d0a09266c743b2f6c692667743b0d0a266c743b2f756c2667743b0d0a, '', '');
INSERT INTO `oc_product_description` VALUES (68, 2, 0x4c6170746f7020534f4e59205661696f2050323347205472e1baaf6e67, 0x266c743b756c2667743b0d0a09266c743b6c692667743b0d0a0909496e74656c2041746f6d205a3533302028312e363047487a2c204653423533334d487a292f203531324b422043616368652f203147422052616d2f2038304742204844442f20564741266c743b2f6c692667743b0d0a09266c743b6c692667743b0d0a0909496e74656c20474d4135303020757020746f203736304d42207368617265642f382671756f743b2057696465202855575847413a203136303020782037363829266c743b2f6c692667743b0d0a09266c743b6c692667743b0d0a09094c4544204261636b6c69676874204c4344266c743b2f6c692667743b0d0a09266c743b6c692667743b0d0a090957656263616d4361726420726561646572266c743b2f6c692667743b0d0a09266c743b6c692667743b0d0a0909426c7565746f6f74682f57656967687420302c36326b67266c743b2f6c692667743b0d0a09266c743b6c692667743b0d0a0909576972656c657373204c414e2049454545203830322e3131612f622f672f6e266c743b2f6c692667743b0d0a266c743b2f756c2667743b0d0a, '', '');
INSERT INTO `oc_product_description` VALUES (69, 2, 0x53616d73756e672049393130302047616c6178792053204949203136474220426c61636b, 0x266c743b756c2667743b0d0a09266c743b6c692667743b0d0a09094dc3a06e2068c3ac6e68203a26616d703b6e6273703b26616d703b6e6273703b26616d703b6e6273703b2031364d206dc3a0752d537570657220414d4f4c454420506c757320546f75636873637265656e202843e1baa36d20e1bba96e6729266c743b2f6c692667743b0d0a09266c743b6c692667743b0d0a09094bc3ad6368207468c6b0e1bb9b63206dc3a06e2068c3ac6e68203a26616d703b6e6273703b26616d703b6e6273703b26616d703b6e6273703b20342e33696e6368266c743b2f6c692667743b0d0a09266c743b6c692667743b0d0a0909c490e1bb99207068c3a26e206769e1baa369206dc3a06e2068c3ac6e68203a26616d703b6e6273703b26616d703b6e6273703b26616d703b6e6273703b20343830207820383030706978656c73266c743b2f6c692667743b0d0a09266c743b6c692667743b0d0a090950696e203a26616d703b6e6273703b26616d703b6e6273703b26616d703b6e6273703b204c692d496f6e20313635306d4168266c743b2f6c692667743b0d0a09266c743b6c692667743b0d0a09095468e1bb9d69206769616e20c491c3a06d2074686fe1baa169203a26616d703b6e6273703b26616d703b6e6273703b26616d703b6e6273703b20382e356769e1bb9d266c743b2f6c692667743b0d0a09266c743b6c692667743b0d0a09095468e1bb9d69206769616e206368e1bb9d203a26616d703b6e6273703b26616d703b6e6273703b26616d703b6e6273703b203630306769e1bb9d266c743b2f6c692667743b0d0a09266c743b6c692667743b0d0a09095472e1bb8d6e67206cc6b0e1bba36e67203a26616d703b6e6273703b26616d703b6e6273703b26616d703b6e6273703b2031313667266c743b2f6c692667743b0d0a09266c743b6c692667743b0d0a09094bc3ad6368207468c6b0e1bb9b63203a26616d703b6e6273703b26616d703b6e6273703b26616d703b6e6273703b203132352e3320782036362e31207820382e35206d6d266c743b2f6c692667743b0d0a266c743b2f756c2667743b0d0a, '', '');
INSERT INTO `oc_product_description` VALUES (70, 2, 0x4e6f6b69612043352d3033, 0x266c743b756c2667743b0d0a09266c743b6c692667743b0d0a090948c3a36e672073e1baa36e207875e1baa574203a204e6f6b6961266c743b2f6c692667743b0d0a09266c743b6c692667743b0d0a090926616d703b6e6273703b4de1baa16e67203247203a2047534d20383530202f20393030202f2031383030202f2031393030266c743b2f6c692667743b0d0a09266c743b6c692667743b0d0a09094dc3a17920e1baa36e68203a2035204d502c2032353932d1853139343420706978656c732c20636865636b207175616c697479266c743b2f6c692667743b0d0a09266c743b6c692667743b0d0a090948e1bb8720c49169e1bb81752068c3a06e68203a2053796d6269616e204f532076392e342c205365726965732036302072656c2e2035266c743b2f6c692667743b0d0a09266c743b6c692667743b0d0a090926616d703b6e6273703b5468e1bb9d69206769616e2074686fe1baa169203a204cc3aa6e2074e1bb9b692031312068203330206d696e2028324729202f204cc3aa6e2074e1bb9b6920342068203330206d696e2028334729266c743b2f6c692667743b0d0a266c743b2f756c2667743b0d0a, '', '');
INSERT INTO `oc_product_description` VALUES (71, 2, 0x4970686f6e65203453, 0x266c743b756c2667743b0d0a09266c743b6c692667743b0d0a0909266c743b7374726f6e672667743b4dc3a06e2068c3ac6e68204c45442d6261636b6c6974204950532054465420313620747269e1bb8775206dc3a07520332e3520696e63686573266c743b2f7374726f6e672667743b266c743b2f6c692667743b0d0a09266c743b6c692667743b0d0a0909266c743b7374726f6e672667743b43e1baa36d20e1bba96e6720c49169e1bb876e2064756e6720c4916120c49169e1bb836d2c206de1bab774206bc3ad6e68206368e1bb916e67207472e1baa7792078c6b0e1bb9b63266c743b2f7374726f6e672667743b266c743b2f6c692667743b0d0a09266c743b6c692667743b0d0a0909266c743b7374726f6e672667743b4dc3a17920e1baa36e6820382e30204d502071756179207068696d204844203130383070266c743b2f7374726f6e672667743b266c743b2f6c692667743b0d0a09266c743b6c692667743b0d0a0909266c743b7374726f6e672667743b56692078e1bbad206cc3bd20686169206e68c3a26e203147487a2c204170706c6520413520636869707365742c2062e1bb99206e68e1bb9b2031364742266c743b2f7374726f6e672667743b266c743b2f6c692667743b0d0a09266c743b6c692667743b0d0a0909266c743b7374726f6e672667743b48e1bb97207472e1bba3206de1baa16e672078c3a32068e1bb99692c206c612062c3a06e2073e1bb912c20676f6f676c65206d617073266c743b2f7374726f6e672667743b266c743b2f6c692667743b0d0a09266c743b6c692667743b0d0a0909266c743b7374726f6e672667743b4c6fe1baa1692062e1bb8f207469e1babf6e6720e1bb936e2076e1bb9b69206d6963726f2063687579c3aa6e2064e1bba56e67266c743b2f7374726f6e672667743b266c743b2f6c692667743b0d0a09266c743b6c692667743b0d0a0909266c743b7374726f6e672667743bc490e1bb8b6e682076e1bb8b20746fc3a06e2063e1baa7752076e1bb9b6920412d475053266c743b2f7374726f6e672667743b266c743b2f6c692667743b0d0a09266c743b6c692667743b0d0a0909266c743b7374726f6e672667743b4be1babf74206ee1bb91692033472c20576966692c20454447452c20475052532074e1bb916320c491e1bb992063616f2e2e2e266c743b2f7374726f6e672667743b266c743b2f6c692667743b0d0a266c743b2f756c2667743b0d0a, '', '');
INSERT INTO `oc_product_description` VALUES (72, 2, 0x53616d73756e67205335323030, 0x266c743b756c2667743b0d0a09266c743b6c692667743b0d0a090948c3a36e672073e1baa36e207875e1baa574203a2053616d73756e67266c743b2f6c692667743b0d0a09266c743b6c692667743b0d0a09094ec4836d2073e1baa36e207875e1baa574203a2032303039266c743b2f6c692667743b0d0a09266c743b6c692667743b0d0a090926616d703b6e6273703b4de1baa16e67203247203a2047534d20383530202f20393030202f2031383030202f2031393030266c743b2f6c692667743b0d0a09266c743b6c692667743b0d0a090926616d703b6e6273703b4dc3a17920e1baa36e68203a20332e3135204d502c2032303438783135333620706978656c732c204c454420666c617368266c743b2f6c692667743b0d0a09266c743b6c692667743b0d0a090926616d703b6e6273703b5468e1bb9d69206769616e2074686fe1baa169203a204cc3aa6e2074e1bb9b6920352068266c743b2f6c692667743b0d0a266c743b2f756c2667743b0d0a, '', '');
INSERT INTO `oc_product_description` VALUES (73, 2, 0x4e6f6b6961204e392d3030, 0x266c743b64697620636c6173733d2671756f743b636f6e74656e742671756f743b207374796c653d2671756f743b6865696768743a6175746f2671756f743b2667743b0d0a09266c743b756c20636c6173733d2671756f743b70726f647563745f7465617365722671756f743b2667743b0d0a0909266c743b6c6920636c6173733d2671756f743b6e6f726d616c2671756f743b2667743b0d0a090909266c743b7370616e2667743b48c3a36e672073e1baa36e207875e1baa5743a266c743b2f7370616e2667743b20266c743b622667743b4e6f6b6961204e2d536572696573266c743b2f622667743b266c743b2f6c692667743b0d0a0909266c743b6c6920636c6173733d2671756f743b6e6f726d616c2671756f743b2667743b0d0a090909266c743b7370616e2667743b4b69e1bb83752064c3a16e673a266c743b2f7370616e2667743b20266c743b622667743b4b69e1bb8375207468e1bab36e67266c743b2f622667743b266c743b2f6c692667743b0d0a0909266c743b6c6920636c6173733d2671756f743b6e6f726d616c2671756f743b2667743b0d0a090909266c743b7370616e2667743b4dc3a06e2068c3ac6e683a266c743b2f7370616e2667743b20266c743b622667743b31364d206dc3a0752d414d4f4c454420546f75636873637265656e202843e1baa36d20e1bba96e6729266c743b2f622667743b266c743b2f6c692667743b0d0a0909266c743b6c6920636c6173733d2671756f743b6e6f726d616c2671756f743b2667743b0d0a090909266c743b7370616e2667743b4bc3ad6368207468c6b0e1bb9b63206dc3a06e2068c3ac6e683a266c743b2f7370616e2667743b20266c743b622667743b332e39696e6368266c743b2f622667743b266c743b2f6c692667743b0d0a0909266c743b6c6920636c6173733d2671756f743b6e6f726d616c20656e642671756f743b2667743b0d0a090909266c743b7370616e2667743b52414d3a266c743b2f7370616e2667743b20266c743b622667743b314742266c743b2f622667743b266c743b2f6c692667743b0d0a09266c743b2f756c2667743b0d0a266c743b2f6469762667743b0d0a266c743b702667743b0d0a0926616d703b6e6273703b266c743b2f702667743b0d0a, '', '');
INSERT INTO `oc_product_description` VALUES (74, 2, 0x4e6f6b696120453732, 0x266c743b64697620636c6173733d2671756f743b636f6e74656e742671756f743b207374796c653d2671756f743b6865696768743a6175746f2671756f743b2667743b0d0a09266c743b756c20636c6173733d2671756f743b70726f647563745f7465617365722671756f743b2667743b0d0a0909266c743b6c6920636c6173733d2671756f743b6e6f726d616c2671756f743b2667743b0d0a090909266c743b7370616e2667743b48c3a36e672073e1baa36e207875e1baa5743a266c743b2f7370616e2667743b20266c743b622667743b4e6f6b696120452d536572696573266c743b2f622667743b266c743b2f6c692667743b0d0a0909266c743b6c6920636c6173733d2671756f743b6e6f726d616c2671756f743b2667743b0d0a090909266c743b7370616e2667743b4b69e1bb83752064c3a16e673a266c743b2f7370616e2667743b20266c743b622667743b4b69e1bb8375207468e1bab36e67266c743b2f622667743b266c743b2f6c692667743b0d0a0909266c743b6c6920636c6173733d2671756f743b6e6f726d616c2671756f743b2667743b0d0a090909266c743b7370616e2667743b4dc3a06e2068c3ac6e683a266c743b2f7370616e2667743b20266c743b622667743b31364d206dc3a0752d544654266c743b2f622667743b266c743b2f6c692667743b0d0a0909266c743b6c6920636c6173733d2671756f743b6e6f726d616c2671756f743b2667743b0d0a090909266c743b7370616e2667743b4bc3ad6368207468c6b0e1bb9b63206dc3a06e2068c3ac6e683a266c743b2f7370616e2667743b20266c743b622667743b322e3336696e6368266c743b2f622667743b266c743b2f6c692667743b0d0a0909266c743b6c6920636c6173733d2671756f743b6e6f726d616c20656e642671756f743b2667743b0d0a090909266c743b7370616e2667743b52414d3a266c743b2f7370616e2667743b20266c743b622667743b3132384d42266c743b2f622667743b266c743b2f6c692667743b0d0a09266c743b2f756c2667743b0d0a266c743b2f6469762667743b0d0a266c743b702667743b0d0a0926616d703b6e6273703b266c743b2f702667743b0d0a, '', '');
INSERT INTO `oc_product_description` VALUES (75, 2, 0x4c472050353030, 0x266c743b64697620636c6173733d2671756f743b636f6e74656e742671756f743b207374796c653d2671756f743b6865696768743a6175746f2671756f743b2667743b0d0a09266c743b756c20636c6173733d2671756f743b70726f647563745f7465617365722671756f743b2667743b0d0a0909266c743b6c6920636c6173733d2671756f743b6e6f726d616c2671756f743b2667743b0d0a090909266c743b7370616e2667743b48c3a36e672073e1baa36e207875e1baa5743a266c743b2f7370616e2667743b20266c743b622667743b4c47266c743b2f622667743b266c743b2f6c692667743b0d0a0909266c743b6c6920636c6173733d2671756f743b6e6f726d616c2671756f743b2667743b0d0a090909266c743b7370616e2667743b4b69e1bb83752064c3a16e673a266c743b2f7370616e2667743b20266c743b622667743b4b69e1bb8375207468e1bab36e67266c743b2f622667743b266c743b2f6c692667743b0d0a0909266c743b6c6920636c6173733d2671756f743b6e6f726d616c2671756f743b2667743b0d0a090909266c743b7370616e2667743b4dc3a06e2068c3ac6e683a266c743b2f7370616e2667743b20266c743b622667743b3235364b206dc3a0752d54465420546f75636873637265656e202843e1baa36d20e1bba96e6729266c743b2f622667743b266c743b2f6c692667743b0d0a0909266c743b6c6920636c6173733d2671756f743b6e6f726d616c2671756f743b2667743b0d0a090909266c743b7370616e2667743b4bc3ad6368207468c6b0e1bb9b63206dc3a06e2068c3ac6e683a266c743b2f7370616e2667743b20266c743b622667743b332e32696e6368266c743b2f622667743b266c743b2f6c692667743b0d0a0909266c743b6c6920636c6173733d2671756f743b6e6f726d616c20656e642671756f743b2667743b0d0a090909266c743b7370616e2667743b52414d3a266c743b2f7370616e2667743b20266c743b622667743b3531324d42266c743b2f622667743b266c743b2f6c692667743b0d0a09266c743b2f756c2667743b0d0a266c743b2f6469762667743b0d0a266c743b702667743b0d0a0926616d703b6e6273703b266c743b2f702667743b0d0a, '', '');
INSERT INTO `oc_product_description` VALUES (76, 2, 0x4854432048443220, 0x266c743b64697620636c6173733d2671756f743b636f6e74656e742671756f743b207374796c653d2671756f743b6865696768743a6175746f2671756f743b2667743b0d0a09266c743b756c20636c6173733d2671756f743b70726f647563745f7465617365722671756f743b2667743b0d0a0909266c743b6c6920636c6173733d2671756f743b6e6f726d616c2671756f743b2667743b0d0a090909266c743b7370616e2667743b48c3a36e672073e1baa36e207875e1baa5743a266c743b2f7370616e2667743b20266c743b622667743b485443266c743b2f622667743b266c743b2f6c692667743b0d0a0909266c743b6c6920636c6173733d2671756f743b6e6f726d616c2671756f743b2667743b0d0a090909266c743b7370616e2667743b4b69e1bb83752064c3a16e673a266c743b2f7370616e2667743b20266c743b622667743b4b69e1bb8375207468e1bab36e67266c743b2f622667743b266c743b2f6c692667743b0d0a0909266c743b6c6920636c6173733d2671756f743b6e6f726d616c2671756f743b2667743b0d0a090909266c743b7370616e2667743b4dc3a06e2068c3ac6e683a266c743b2f7370616e2667743b20266c743b622667743b36354b206dc3a0752d54465420546f75636873637265656e202843e1baa36d20e1bba96e6729266c743b2f622667743b266c743b2f6c692667743b0d0a0909266c743b6c6920636c6173733d2671756f743b6e6f726d616c2671756f743b2667743b0d0a090909266c743b7370616e2667743b4bc3ad6368207468c6b0e1bb9b63206dc3a06e2068c3ac6e683a266c743b2f7370616e2667743b20266c743b622667743b342e33696e6368266c743b2f622667743b266c743b2f6c692667743b0d0a0909266c743b6c6920636c6173733d2671756f743b6e6f726d616c20656e642671756f743b2667743b0d0a090909266c743b7370616e2667743b52414d3a266c743b2f7370616e2667743b20266c743b622667743b3434384d42266c743b2f622667743b266c743b2f6c692667743b0d0a09266c743b2f756c2667743b0d0a266c743b2f6469762667743b0d0a266c743b702667743b0d0a0926616d703b6e6273703b266c743b2f702667743b0d0a, '', '');
INSERT INTO `oc_product_description` VALUES (77, 2, 0x4e6f6b6961205832, 0x266c743b64697620636c6173733d2671756f743b636f6e74656e742671756f743b207374796c653d2671756f743b6865696768743a6175746f2671756f743b2667743b0d0a09266c743b756c20636c6173733d2671756f743b70726f647563745f7465617365722671756f743b2667743b0d0a0909266c743b6c6920636c6173733d2671756f743b6e6f726d616c2671756f743b2667743b0d0a090909266c743b7370616e2667743b48c3a36e672073e1baa36e207875e1baa5743a266c743b2f7370616e2667743b20266c743b622667743b4e6f6b696120582d536572696573266c743b2f622667743b266c743b2f6c692667743b0d0a0909266c743b6c6920636c6173733d2671756f743b6e6f726d616c2671756f743b2667743b0d0a090909266c743b7370616e2667743b4b69e1bb83752064c3a16e673a266c743b2f7370616e2667743b20266c743b622667743b4b69e1bb8375207468e1bab36e67266c743b2f622667743b266c743b2f6c692667743b0d0a0909266c743b6c6920636c6173733d2671756f743b6e6f726d616c2671756f743b2667743b0d0a090909266c743b7370616e2667743b4dc3a06e2068c3ac6e683a266c743b2f7370616e2667743b20266c743b622667743b3235364b206dc3a0752d544654266c743b2f622667743b266c743b2f6c692667743b0d0a0909266c743b6c6920636c6173733d2671756f743b6e6f726d616c2671756f743b2667743b0d0a090909266c743b7370616e2667743b4bc3ad6368207468c6b0e1bb9b63206dc3a06e2068c3ac6e683a266c743b2f7370616e2667743b20266c743b622667743b322e32696e6368266c743b2f622667743b266c743b2f6c692667743b0d0a0909266c743b6c6920636c6173733d2671756f743b6e6f726d616c20656e642671756f743b2667743b0d0a090909266c743b7370616e2667743b53e1bb912073696d203a266c743b2f7370616e2667743b20266c743b622667743b312053696d202d202d266c743b2f622667743b266c743b2f6c692667743b0d0a09266c743b2f756c2667743b0d0a266c743b2f6469762667743b0d0a266c743b702667743b0d0a0926616d703b6e6273703b266c743b2f702667743b0d0a, '', '');
INSERT INTO `oc_product_description` VALUES (78, 2, 0xc3816f2056657374206ee1bbaf20, '', '', '');
INSERT INTO `oc_product_description` VALUES (79, 2, 0x5175e1baa76e206a65616e73206ee1bbaf2053757269204a4e303031, '', '', '');
INSERT INTO `oc_product_description` VALUES (80, 2, 0xc3816f206b686fc3a163206ee1bbaf20, '', '', '');
INSERT INTO `oc_product_description` VALUES (81, 2, 0xc3816f2073c6a1206d69206e616d20, '', '', '');
INSERT INTO `oc_product_description` VALUES (82, 2, 0x56c3a1792062c3a92067c3a16920, '', '', '');
INSERT INTO `oc_product_description` VALUES (83, 2, 0x42e1bb99207175e1baa76e20c3a16f207472e1babb20656d20, '', '', '');
INSERT INTO `oc_product_description` VALUES (84, 2, 0x42e1bb992056657374206e616d, '', '', '');
INSERT INTO `oc_product_description` VALUES (85, 2, 0xc3816f207468756e206ee1bbaf2064c3a0692074617920, '', '', '');

-- --------------------------------------------------------

-- 
-- Table structure for table `oc_product_discount`
-- 

DROP TABLE IF EXISTS `oc_product_discount`;
CREATE TABLE `oc_product_discount` (
  `product_discount_id` int(11) NOT NULL auto_increment,
  `product_id` int(11) NOT NULL,
  `customer_group_id` int(11) NOT NULL,
  `quantity` int(4) NOT NULL default '0',
  `priority` int(5) NOT NULL default '1',
  `price` decimal(15,4) NOT NULL default '0.0000',
  `date_start` date NOT NULL default '0000-00-00',
  `date_end` date NOT NULL default '0000-00-00',
  PRIMARY KEY  (`product_discount_id`),
  KEY `product_id` (`product_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=1 ;

-- 
-- Dumping data for table `oc_product_discount`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `oc_product_image`
-- 

DROP TABLE IF EXISTS `oc_product_image`;
CREATE TABLE `oc_product_image` (
  `product_image_id` int(11) NOT NULL auto_increment,
  `product_id` int(11) NOT NULL,
  `image` varchar(255) collate utf8_bin default NULL,
  `sort_order` int(3) NOT NULL default '0',
  PRIMARY KEY  (`product_image_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=1 ;

-- 
-- Dumping data for table `oc_product_image`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `oc_product_option`
-- 

DROP TABLE IF EXISTS `oc_product_option`;
CREATE TABLE `oc_product_option` (
  `product_option_id` int(11) NOT NULL auto_increment,
  `product_id` int(11) NOT NULL,
  `option_id` int(11) NOT NULL,
  `option_value` text collate utf8_bin NOT NULL,
  `required` tinyint(1) NOT NULL,
  PRIMARY KEY  (`product_option_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=2 ;

-- 
-- Dumping data for table `oc_product_option`
-- 

INSERT INTO `oc_product_option` VALUES (1, 64, 2, '', 1);

-- --------------------------------------------------------

-- 
-- Table structure for table `oc_product_option_value`
-- 

DROP TABLE IF EXISTS `oc_product_option_value`;
CREATE TABLE `oc_product_option_value` (
  `product_option_value_id` int(11) NOT NULL auto_increment,
  `product_option_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `option_id` int(11) NOT NULL,
  `option_value_id` int(11) NOT NULL,
  `quantity` int(3) NOT NULL,
  `subtract` tinyint(1) NOT NULL,
  `price` decimal(15,4) NOT NULL,
  `price_prefix` varchar(1) collate utf8_bin NOT NULL,
  `points` int(8) NOT NULL,
  `points_prefix` varchar(1) collate utf8_bin NOT NULL,
  `weight` decimal(15,8) NOT NULL,
  `weight_prefix` varchar(1) collate utf8_bin NOT NULL,
  PRIMARY KEY  (`product_option_value_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=2 ;

-- 
-- Dumping data for table `oc_product_option_value`
-- 

INSERT INTO `oc_product_option_value` VALUES (1, 1, 64, 2, 23, 1, 1, 0.0000, 0x2b, 0, 0x2b, 0.00000000, 0x2b);

-- --------------------------------------------------------

-- 
-- Table structure for table `oc_product_related`
-- 

DROP TABLE IF EXISTS `oc_product_related`;
CREATE TABLE `oc_product_related` (
  `product_id` int(11) NOT NULL,
  `related_id` int(11) NOT NULL,
  PRIMARY KEY  (`product_id`,`related_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- 
-- Dumping data for table `oc_product_related`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `oc_product_reward`
-- 

DROP TABLE IF EXISTS `oc_product_reward`;
CREATE TABLE `oc_product_reward` (
  `product_reward_id` int(11) NOT NULL auto_increment,
  `product_id` int(11) NOT NULL default '0',
  `customer_group_id` int(11) NOT NULL default '0',
  `points` int(8) NOT NULL default '0',
  PRIMARY KEY  (`product_reward_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=669 ;

-- 
-- Dumping data for table `oc_product_reward`
-- 

INSERT INTO `oc_product_reward` VALUES (580, 55, 6, 0);
INSERT INTO `oc_product_reward` VALUES (579, 55, 8, 0);
INSERT INTO `oc_product_reward` VALUES (584, 57, 6, 0);
INSERT INTO `oc_product_reward` VALUES (583, 57, 8, 0);
INSERT INTO `oc_product_reward` VALUES (592, 61, 6, 0);
INSERT INTO `oc_product_reward` VALUES (591, 61, 8, 0);
INSERT INTO `oc_product_reward` VALUES (588, 59, 6, 0);
INSERT INTO `oc_product_reward` VALUES (587, 59, 8, 0);
INSERT INTO `oc_product_reward` VALUES (663, 58, 1, 0);
INSERT INTO `oc_product_reward` VALUES (582, 56, 6, 0);
INSERT INTO `oc_product_reward` VALUES (581, 56, 8, 0);
INSERT INTO `oc_product_reward` VALUES (578, 54, 6, 0);
INSERT INTO `oc_product_reward` VALUES (577, 54, 8, 0);
INSERT INTO `oc_product_reward` VALUES (572, 50, 6, 0);
INSERT INTO `oc_product_reward` VALUES (571, 50, 8, 0);
INSERT INTO `oc_product_reward` VALUES (594, 62, 6, 0);
INSERT INTO `oc_product_reward` VALUES (593, 62, 8, 0);
INSERT INTO `oc_product_reward` VALUES (600, 63, 6, 0);
INSERT INTO `oc_product_reward` VALUES (599, 63, 8, 0);
INSERT INTO `oc_product_reward` VALUES (661, 64, 1, 0);
INSERT INTO `oc_product_reward` VALUES (606, 65, 6, 0);
INSERT INTO `oc_product_reward` VALUES (605, 65, 8, 0);
INSERT INTO `oc_product_reward` VALUES (607, 66, 8, 0);
INSERT INTO `oc_product_reward` VALUES (608, 66, 6, 0);
INSERT INTO `oc_product_reward` VALUES (609, 67, 8, 0);
INSERT INTO `oc_product_reward` VALUES (610, 67, 6, 0);
INSERT INTO `oc_product_reward` VALUES (611, 68, 8, 0);
INSERT INTO `oc_product_reward` VALUES (612, 68, 6, 0);
INSERT INTO `oc_product_reward` VALUES (618, 69, 6, 0);
INSERT INTO `oc_product_reward` VALUES (617, 69, 8, 0);
INSERT INTO `oc_product_reward` VALUES (615, 70, 8, 0);
INSERT INTO `oc_product_reward` VALUES (616, 70, 6, 0);
INSERT INTO `oc_product_reward` VALUES (619, 71, 8, 0);
INSERT INTO `oc_product_reward` VALUES (620, 71, 6, 0);
INSERT INTO `oc_product_reward` VALUES (621, 72, 8, 0);
INSERT INTO `oc_product_reward` VALUES (622, 72, 6, 0);
INSERT INTO `oc_product_reward` VALUES (623, 73, 8, 0);
INSERT INTO `oc_product_reward` VALUES (624, 73, 6, 0);
INSERT INTO `oc_product_reward` VALUES (625, 74, 8, 0);
INSERT INTO `oc_product_reward` VALUES (626, 74, 6, 0);
INSERT INTO `oc_product_reward` VALUES (668, 75, 1, 0);
INSERT INTO `oc_product_reward` VALUES (629, 76, 8, 0);
INSERT INTO `oc_product_reward` VALUES (630, 76, 6, 0);
INSERT INTO `oc_product_reward` VALUES (631, 77, 8, 0);
INSERT INTO `oc_product_reward` VALUES (632, 77, 6, 0);
INSERT INTO `oc_product_reward` VALUES (636, 78, 6, 0);
INSERT INTO `oc_product_reward` VALUES (635, 78, 8, 0);
INSERT INTO `oc_product_reward` VALUES (640, 79, 6, 0);
INSERT INTO `oc_product_reward` VALUES (639, 79, 8, 0);
INSERT INTO `oc_product_reward` VALUES (641, 80, 8, 0);
INSERT INTO `oc_product_reward` VALUES (642, 80, 6, 0);
INSERT INTO `oc_product_reward` VALUES (643, 81, 8, 0);
INSERT INTO `oc_product_reward` VALUES (644, 81, 6, 0);
INSERT INTO `oc_product_reward` VALUES (654, 82, 6, 0);
INSERT INTO `oc_product_reward` VALUES (653, 82, 8, 0);
INSERT INTO `oc_product_reward` VALUES (656, 83, 6, 0);
INSERT INTO `oc_product_reward` VALUES (655, 83, 8, 0);
INSERT INTO `oc_product_reward` VALUES (649, 84, 8, 0);
INSERT INTO `oc_product_reward` VALUES (650, 84, 6, 0);
INSERT INTO `oc_product_reward` VALUES (658, 85, 6, 0);
INSERT INTO `oc_product_reward` VALUES (657, 85, 8, 0);

-- --------------------------------------------------------

-- 
-- Table structure for table `oc_product_special`
-- 

DROP TABLE IF EXISTS `oc_product_special`;
CREATE TABLE `oc_product_special` (
  `product_special_id` int(11) NOT NULL auto_increment,
  `product_id` int(11) NOT NULL,
  `customer_group_id` int(11) NOT NULL,
  `priority` int(5) NOT NULL default '1',
  `price` decimal(15,4) NOT NULL default '0.0000',
  `date_start` date NOT NULL default '0000-00-00',
  `date_end` date NOT NULL default '0000-00-00',
  PRIMARY KEY  (`product_special_id`),
  KEY `product_id` (`product_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=1 ;

-- 
-- Dumping data for table `oc_product_special`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `oc_product_tag`
-- 

DROP TABLE IF EXISTS `oc_product_tag`;
CREATE TABLE `oc_product_tag` (
  `product_tag_id` int(11) NOT NULL auto_increment,
  `product_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `tag` varchar(32) collate utf8_bin NOT NULL,
  PRIMARY KEY  (`product_tag_id`),
  KEY `product_id` (`product_id`),
  KEY `language_id` (`language_id`),
  KEY `tag` (`tag`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=1 ;

-- 
-- Dumping data for table `oc_product_tag`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `oc_product_to_category`
-- 

DROP TABLE IF EXISTS `oc_product_to_category`;
CREATE TABLE `oc_product_to_category` (
  `product_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  PRIMARY KEY  (`product_id`,`category_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- 
-- Dumping data for table `oc_product_to_category`
-- 

INSERT INTO `oc_product_to_category` VALUES (50, 63);
INSERT INTO `oc_product_to_category` VALUES (54, 63);
INSERT INTO `oc_product_to_category` VALUES (55, 63);
INSERT INTO `oc_product_to_category` VALUES (56, 63);
INSERT INTO `oc_product_to_category` VALUES (57, 63);
INSERT INTO `oc_product_to_category` VALUES (58, 63);
INSERT INTO `oc_product_to_category` VALUES (59, 63);
INSERT INTO `oc_product_to_category` VALUES (61, 63);
INSERT INTO `oc_product_to_category` VALUES (62, 63);
INSERT INTO `oc_product_to_category` VALUES (63, 18);
INSERT INTO `oc_product_to_category` VALUES (63, 20);
INSERT INTO `oc_product_to_category` VALUES (64, 18);
INSERT INTO `oc_product_to_category` VALUES (64, 20);
INSERT INTO `oc_product_to_category` VALUES (65, 18);
INSERT INTO `oc_product_to_category` VALUES (65, 20);
INSERT INTO `oc_product_to_category` VALUES (66, 18);
INSERT INTO `oc_product_to_category` VALUES (66, 20);
INSERT INTO `oc_product_to_category` VALUES (67, 18);
INSERT INTO `oc_product_to_category` VALUES (67, 20);
INSERT INTO `oc_product_to_category` VALUES (68, 18);
INSERT INTO `oc_product_to_category` VALUES (68, 20);
INSERT INTO `oc_product_to_category` VALUES (69, 64);
INSERT INTO `oc_product_to_category` VALUES (70, 64);
INSERT INTO `oc_product_to_category` VALUES (71, 64);
INSERT INTO `oc_product_to_category` VALUES (72, 64);
INSERT INTO `oc_product_to_category` VALUES (73, 64);
INSERT INTO `oc_product_to_category` VALUES (74, 64);
INSERT INTO `oc_product_to_category` VALUES (75, 64);
INSERT INTO `oc_product_to_category` VALUES (76, 64);
INSERT INTO `oc_product_to_category` VALUES (77, 64);
INSERT INTO `oc_product_to_category` VALUES (78, 65);
INSERT INTO `oc_product_to_category` VALUES (79, 65);
INSERT INTO `oc_product_to_category` VALUES (80, 65);
INSERT INTO `oc_product_to_category` VALUES (81, 65);
INSERT INTO `oc_product_to_category` VALUES (82, 65);
INSERT INTO `oc_product_to_category` VALUES (83, 65);
INSERT INTO `oc_product_to_category` VALUES (84, 65);
INSERT INTO `oc_product_to_category` VALUES (85, 65);

-- --------------------------------------------------------

-- 
-- Table structure for table `oc_product_to_download`
-- 

DROP TABLE IF EXISTS `oc_product_to_download`;
CREATE TABLE `oc_product_to_download` (
  `product_id` int(11) NOT NULL,
  `download_id` int(11) NOT NULL,
  PRIMARY KEY  (`product_id`,`download_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- 
-- Dumping data for table `oc_product_to_download`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `oc_product_to_layout`
-- 

DROP TABLE IF EXISTS `oc_product_to_layout`;
CREATE TABLE `oc_product_to_layout` (
  `product_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `layout_id` int(11) NOT NULL,
  PRIMARY KEY  (`product_id`,`store_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- 
-- Dumping data for table `oc_product_to_layout`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `oc_product_to_store`
-- 

DROP TABLE IF EXISTS `oc_product_to_store`;
CREATE TABLE `oc_product_to_store` (
  `product_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL default '0',
  PRIMARY KEY  (`product_id`,`store_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- 
-- Dumping data for table `oc_product_to_store`
-- 

INSERT INTO `oc_product_to_store` VALUES (50, 0);
INSERT INTO `oc_product_to_store` VALUES (54, 0);
INSERT INTO `oc_product_to_store` VALUES (55, 0);
INSERT INTO `oc_product_to_store` VALUES (56, 0);
INSERT INTO `oc_product_to_store` VALUES (57, 0);
INSERT INTO `oc_product_to_store` VALUES (58, 0);
INSERT INTO `oc_product_to_store` VALUES (59, 0);
INSERT INTO `oc_product_to_store` VALUES (61, 0);
INSERT INTO `oc_product_to_store` VALUES (62, 0);
INSERT INTO `oc_product_to_store` VALUES (63, 0);
INSERT INTO `oc_product_to_store` VALUES (64, 0);
INSERT INTO `oc_product_to_store` VALUES (65, 0);
INSERT INTO `oc_product_to_store` VALUES (66, 0);
INSERT INTO `oc_product_to_store` VALUES (67, 0);
INSERT INTO `oc_product_to_store` VALUES (68, 0);
INSERT INTO `oc_product_to_store` VALUES (69, 0);
INSERT INTO `oc_product_to_store` VALUES (70, 0);
INSERT INTO `oc_product_to_store` VALUES (71, 0);
INSERT INTO `oc_product_to_store` VALUES (72, 0);
INSERT INTO `oc_product_to_store` VALUES (73, 0);
INSERT INTO `oc_product_to_store` VALUES (74, 0);
INSERT INTO `oc_product_to_store` VALUES (75, 0);
INSERT INTO `oc_product_to_store` VALUES (76, 0);
INSERT INTO `oc_product_to_store` VALUES (77, 0);
INSERT INTO `oc_product_to_store` VALUES (78, 0);
INSERT INTO `oc_product_to_store` VALUES (79, 0);
INSERT INTO `oc_product_to_store` VALUES (80, 0);
INSERT INTO `oc_product_to_store` VALUES (81, 0);
INSERT INTO `oc_product_to_store` VALUES (82, 0);
INSERT INTO `oc_product_to_store` VALUES (83, 0);
INSERT INTO `oc_product_to_store` VALUES (84, 0);
INSERT INTO `oc_product_to_store` VALUES (85, 0);

-- --------------------------------------------------------

-- 
-- Table structure for table `oc_return`
-- 

DROP TABLE IF EXISTS `oc_return`;
CREATE TABLE `oc_return` (
  `return_id` int(11) NOT NULL auto_increment,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `firstname` varchar(32) collate utf8_bin NOT NULL,
  `lastname` varchar(32) collate utf8_bin NOT NULL,
  `email` varchar(96) collate utf8_bin NOT NULL,
  `telephone` varchar(32) collate utf8_bin NOT NULL,
  `product` varchar(255) collate utf8_bin NOT NULL,
  `model` varchar(64) collate utf8_bin NOT NULL,
  `quantity` int(4) NOT NULL,
  `opened` tinyint(1) NOT NULL,
  `return_reason_id` int(11) NOT NULL,
  `return_action_id` int(11) NOT NULL,
  `return_status_id` int(11) NOT NULL,
  `comment` text collate utf8_bin,
  `date_ordered` date NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY  (`return_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=1 ;

-- 
-- Dumping data for table `oc_return`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `oc_return_action`
-- 

DROP TABLE IF EXISTS `oc_return_action`;
CREATE TABLE `oc_return_action` (
  `return_action_id` int(11) NOT NULL auto_increment,
  `language_id` int(11) NOT NULL default '0',
  `name` varchar(64) collate utf8_bin NOT NULL default '',
  PRIMARY KEY  (`return_action_id`,`language_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=4 ;

-- 
-- Dumping data for table `oc_return_action`
-- 

INSERT INTO `oc_return_action` VALUES (1, 2, 0x486fc3a06e207472e1baa3);
INSERT INTO `oc_return_action` VALUES (2, 2, 0x5068c3a1742068c3a06e682074c3ad6e2064e1bba56e67);
INSERT INTO `oc_return_action` VALUES (3, 2, 0x47e1bbad692062e1bb8b2074686179207468e1babf);

-- --------------------------------------------------------

-- 
-- Table structure for table `oc_return_history`
-- 

DROP TABLE IF EXISTS `oc_return_history`;
CREATE TABLE `oc_return_history` (
  `return_history_id` int(11) NOT NULL auto_increment,
  `return_id` int(11) NOT NULL,
  `return_status_id` int(11) NOT NULL,
  `notify` tinyint(1) NOT NULL,
  `comment` text collate utf8_bin NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY  (`return_history_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=1 ;

-- 
-- Dumping data for table `oc_return_history`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `oc_return_reason`
-- 

DROP TABLE IF EXISTS `oc_return_reason`;
CREATE TABLE `oc_return_reason` (
  `return_reason_id` int(11) NOT NULL auto_increment,
  `language_id` int(11) NOT NULL default '0',
  `name` varchar(128) collate utf8_bin NOT NULL default '',
  PRIMARY KEY  (`return_reason_id`,`language_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=6 ;

-- 
-- Dumping data for table `oc_return_reason`
-- 

INSERT INTO `oc_return_reason` VALUES (1, 2, 0x48c3a06e672062e1bb8b2068c6b02068e1baa169206b6869206e68e1baad6e20c491c6b0e1bba363);
INSERT INTO `oc_return_reason` VALUES (2, 2, 0x4e68e1baad6e207361692068c3a06e672068c3b361);
INSERT INTO `oc_return_reason` VALUES (3, 2, 0x4ce1bb976920c491c6a16e2068c3a06e67);
INSERT INTO `oc_return_reason` VALUES (4, 2, 0x48c3a06e672062e1bb8b206ce1bb97692c2028636869207469e1babf7429);
INSERT INTO `oc_return_reason` VALUES (5, 2, 0x4cc3bd20646f206b68c3a1632028636869207469e1babf7429);

-- --------------------------------------------------------

-- 
-- Table structure for table `oc_return_status`
-- 

DROP TABLE IF EXISTS `oc_return_status`;
CREATE TABLE `oc_return_status` (
  `return_status_id` int(11) NOT NULL auto_increment,
  `language_id` int(11) NOT NULL default '0',
  `name` varchar(32) collate utf8_bin NOT NULL default '',
  PRIMARY KEY  (`return_status_id`,`language_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=4 ;

-- 
-- Dumping data for table `oc_return_status`
-- 

INSERT INTO `oc_return_status` VALUES (1, 2, 0xc490616e67206368e1bb9d2078e1bbad206cc3bd);
INSERT INTO `oc_return_status` VALUES (3, 2, 0x486fc3a06e207468c3a06e68);
INSERT INTO `oc_return_status` VALUES (2, 2, 0xc490616e67206368e1bb9d2053e1baa36e207068e1baa96d);

-- --------------------------------------------------------

-- 
-- Table structure for table `oc_review`
-- 

DROP TABLE IF EXISTS `oc_review`;
CREATE TABLE `oc_review` (
  `review_id` int(11) NOT NULL auto_increment,
  `product_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `author` varchar(64) collate utf8_bin NOT NULL default '',
  `text` text collate utf8_bin NOT NULL,
  `rating` int(1) NOT NULL,
  `status` tinyint(1) NOT NULL default '0',
  `date_added` datetime NOT NULL default '0000-00-00 00:00:00',
  `date_modified` datetime NOT NULL default '0000-00-00 00:00:00',
  PRIMARY KEY  (`review_id`),
  KEY `product_id` (`product_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=1 ;

-- 
-- Dumping data for table `oc_review`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `oc_setting`
-- 

DROP TABLE IF EXISTS `oc_setting`;
CREATE TABLE `oc_setting` (
  `setting_id` int(11) NOT NULL auto_increment,
  `store_id` int(11) NOT NULL default '0',
  `group` varchar(32) collate utf8_bin NOT NULL,
  `key` varchar(64) collate utf8_bin NOT NULL default '',
  `value` text collate utf8_bin NOT NULL,
  `serialized` tinyint(1) NOT NULL,
  PRIMARY KEY  (`setting_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=27389 ;

-- 
-- Dumping data for table `oc_setting`
-- 

INSERT INTO `oc_setting` VALUES (9457, 0, 0x7368697070696e67, 0x7368697070696e675f736f72745f6f72646572, 0x33, 0);
INSERT INTO `oc_setting` VALUES (3453, 0, 0x7375625f746f74616c, 0x7375625f746f74616c5f736f72745f6f72646572, 0x31, 0);
INSERT INTO `oc_setting` VALUES (3452, 0, 0x7375625f746f74616c, 0x7375625f746f74616c5f737461747573, 0x31, 0);
INSERT INTO `oc_setting` VALUES (272, 0, 0x746178, 0x7461785f737461747573, 0x31, 0);
INSERT INTO `oc_setting` VALUES (16013, 0, 0x746f74616c, 0x746f74616c5f736f72745f6f72646572, 0x39, 0);
INSERT INTO `oc_setting` VALUES (16012, 0, 0x746f74616c, 0x746f74616c5f737461747573, 0x31, 0);
INSERT INTO `oc_setting` VALUES (273, 0, 0x746178, 0x7461785f736f72745f6f72646572, 0x35, 0);
INSERT INTO `oc_setting` VALUES (19411, 0, 0x667265655f636865636b6f7574, 0x667265655f636865636b6f75745f736f72745f6f72646572, 0x31, 0);
INSERT INTO `oc_setting` VALUES (20444, 0, 0x636f64, 0x636f645f736f72745f6f72646572, 0x35, 0);
INSERT INTO `oc_setting` VALUES (20440, 0, 0x636f64, 0x636f645f746f74616c, 0x302e3031, 0);
INSERT INTO `oc_setting` VALUES (20441, 0, 0x636f64, 0x636f645f6f726465725f7374617475735f6964, 0x31, 0);
INSERT INTO `oc_setting` VALUES (20442, 0, 0x636f64, 0x636f645f67656f5f7a6f6e655f6964, 0x30, 0);
INSERT INTO `oc_setting` VALUES (20443, 0, 0x636f64, 0x636f645f737461747573, 0x31, 0);
INSERT INTO `oc_setting` VALUES (9456, 0, 0x7368697070696e67, 0x7368697070696e675f737461747573, 0x31, 0);
INSERT INTO `oc_setting` VALUES (9455, 0, 0x7368697070696e67, 0x7368697070696e675f657374696d61746f72, 0x31, 0);
INSERT INTO `oc_setting` VALUES (13801, 0, 0x636f75706f6e, 0x636f75706f6e5f736f72745f6f72646572, 0x34, 0);
INSERT INTO `oc_setting` VALUES (13800, 0, 0x636f75706f6e, 0x636f75706f6e5f737461747573, 0x31, 0);
INSERT INTO `oc_setting` VALUES (27388, 0, 0x636f6e666967, 0x636f6e6669675f676f6f676c655f616e616c7974696373, '', 0);
INSERT INTO `oc_setting` VALUES (20422, 0, 0x666c6174, 0x666c61745f736f72745f6f72646572, 0x31, 0);
INSERT INTO `oc_setting` VALUES (20421, 0, 0x666c6174, 0x666c61745f737461747573, 0x31, 0);
INSERT INTO `oc_setting` VALUES (20420, 0, 0x666c6174, 0x666c61745f67656f5f7a6f6e655f6964, 0x30, 0);
INSERT INTO `oc_setting` VALUES (20419, 0, 0x666c6174, 0x666c61745f7461785f636c6173735f6964, 0x39, 0);
INSERT INTO `oc_setting` VALUES (20026, 0, 0x6361726f7573656c, 0x6361726f7573656c5f6d6f64756c65, 0x613a313a7b693a303b613a393a7b733a393a2262616e6e65725f6964223b733a313a2238223b733a353a226c696d6974223b733a313a2235223b733a363a227363726f6c6c223b733a313a2233223b733a353a227769647468223b733a323a223830223b733a363a22686569676874223b733a323a223830223b733a393a226c61796f75745f6964223b733a313a2231223b733a383a22706f736974696f6e223b733a31343a22636f6e74656e745f626f74746f6d223b733a363a22737461747573223b733a313a2231223b733a31303a22736f72745f6f72646572223b733a323a222d31223b7d7d, 1);
INSERT INTO `oc_setting` VALUES (24911, 0, 0x6665617475726564, 0x66656174757265645f70726f64756374, 0x35342c38352c36362c37362c3530, 0);
INSERT INTO `oc_setting` VALUES (24912, 0, 0x6665617475726564, 0x66656174757265645f6d6f64756c65, 0x613a313a7b693a303b613a373a7b733a353a226c696d6974223b733a313a2236223b733a31313a22696d6167655f7769647468223b733a323a223630223b733a31323a22696d6167655f686569676874223b733a323a223630223b733a393a226c61796f75745f6964223b733a313a2231223b733a383a22706f736974696f6e223b733a31313a22636f6c756d6e5f6c656674223b733a363a22737461747573223b733a313a2231223b733a31303a22736f72745f6f72646572223b733a313a2235223b7d7d, 1);
INSERT INTO `oc_setting` VALUES (20418, 0, 0x666c6174, 0x666c61745f636f7374, 0x352e3030, 0);
INSERT INTO `oc_setting` VALUES (9444, 0, 0x637265646974, 0x6372656469745f736f72745f6f72646572, 0x37, 0);
INSERT INTO `oc_setting` VALUES (9443, 0, 0x637265646974, 0x6372656469745f737461747573, 0x31, 0);
INSERT INTO `oc_setting` VALUES (27387, 0, 0x636f6e666967, 0x636f6e6669675f6572726f725f66696c656e616d65, 0x6572726f722e747874, 0);
INSERT INTO `oc_setting` VALUES (18432, 0, 0x726577617264, 0x7265776172645f736f72745f6f72646572, 0x32, 0);
INSERT INTO `oc_setting` VALUES (18431, 0, 0x726577617264, 0x7265776172645f737461747573, 0x31, 0);
INSERT INTO `oc_setting` VALUES (19721, 0, 0x616666696c69617465, 0x616666696c696174655f6d6f64756c65, 0x613a313a7b693a303b613a343a7b733a393a226c61796f75745f6964223b733a323a223130223b733a383a22706f736974696f6e223b733a31323a22636f6c756d6e5f7269676874223b733a363a22737461747573223b733a313a2231223b733a31303a22736f72745f6f72646572223b733a313a2231223b7d7d, 1);
INSERT INTO `oc_setting` VALUES (25194, 0, 0x63617465676f7279, 0x63617465676f72795f6d6f64756c65, 0x613a343a7b693a303b613a353a7b733a393a226c61796f75745f6964223b733a313a2233223b733a383a22706f736974696f6e223b733a31313a22636f6c756d6e5f6c656674223b733a353a22636f756e74223b733a313a2231223b733a363a22737461747573223b733a313a2231223b733a31303a22736f72745f6f72646572223b733a313a2231223b7d693a313b613a353a7b733a393a226c61796f75745f6964223b733a313a2232223b733a383a22706f736974696f6e223b733a31313a22636f6c756d6e5f6c656674223b733a353a22636f756e74223b733a313a2231223b733a363a22737461747573223b733a313a2231223b733a31303a22736f72745f6f72646572223b733a313a2231223b7d693a323b613a353a7b733a393a226c61796f75745f6964223b733a313a2231223b733a383a22706f736974696f6e223b733a31313a22636f6c756d6e5f6c656674223b733a353a22636f756e74223b733a313a2231223b733a363a22737461747573223b733a313a2231223b733a31303a22736f72745f6f72646572223b733a313a2231223b7d693a333b613a353a7b733a393a226c61796f75745f6964223b733a313a2234223b733a383a22706f736974696f6e223b733a31313a22636f6c756d6e5f6c656674223b733a353a22636f756e74223b733a313a2230223b733a363a22737461747573223b733a313a2231223b733a31303a22736f72745f6f72646572223b733a313a2231223b7d7d, 1);
INSERT INTO `oc_setting` VALUES (27386, 0, 0x636f6e666967, 0x636f6e6669675f6572726f725f6c6f67, 0x31, 0);
INSERT INTO `oc_setting` VALUES (19925, 0, 0x6163636f756e74, 0x6163636f756e745f6d6f64756c65, 0x613a313a7b693a303b613a343a7b733a393a226c61796f75745f6964223b733a313a2236223b733a383a22706f736974696f6e223b733a31323a22636f6c756d6e5f7269676874223b733a363a22737461747573223b733a313a2231223b733a31303a22736f72745f6f72646572223b733a313a2231223b7d7d, 1);
INSERT INTO `oc_setting` VALUES (27384, 0, 0x636f6e666967, 0x636f6e6669675f636f6d7072657373696f6e, 0x38, 0);
INSERT INTO `oc_setting` VALUES (16017, 0, 0x766f7563686572, 0x766f75636865725f736f72745f6f72646572, 0x38, 0);
INSERT INTO `oc_setting` VALUES (16016, 0, 0x766f7563686572, 0x766f75636865725f737461747573, 0x31, 0);
INSERT INTO `oc_setting` VALUES (27385, 0, 0x636f6e666967, 0x636f6e6669675f6572726f725f646973706c6179, 0x31, 0);
INSERT INTO `oc_setting` VALUES (19410, 0, 0x667265655f636865636b6f7574, 0x667265655f636865636b6f75745f737461747573, 0x31, 0);
INSERT INTO `oc_setting` VALUES (19409, 0, 0x667265655f636865636b6f7574, 0x667265655f636865636b6f75745f6f726465725f7374617475735f6964, 0x31, 0);
INSERT INTO `oc_setting` VALUES (27383, 0, 0x636f6e666967, 0x636f6e6669675f656e6372797074696f6e, 0x3132333435, 0);
INSERT INTO `oc_setting` VALUES (25193, 0, 0x736c69646573686f77, 0x736c69646573686f775f6d6f64756c65, 0x613a313a7b693a303b613a373a7b733a393a2262616e6e65725f6964223b733a313a2239223b733a353a227769647468223b733a333a22393830223b733a363a22686569676874223b733a333a22333432223b733a393a226c61796f75745f6964223b733a313a2231223b733a383a22706f736974696f6e223b733a31353a22636f6e74656e745f6d61696e746f70223b733a363a22737461747573223b733a313a2231223b733a31303a22736f72745f6f72646572223b733a313a2231223b7d7d, 1);
INSERT INTO `oc_setting` VALUES (25639, 0, 0x62616e6e6572, 0x62616e6e65725f6d6f64756c65, 0x613a333a7b693a303b613a373a7b733a393a2262616e6e65725f6964223b733a323a223130223b733a353a227769647468223b733a333a22313930223b733a363a22686569676874223b733a333a22313538223b733a393a226c61796f75745f6964223b733a313a2231223b733a383a22706f736974696f6e223b733a31313a22636f6c756d6e5f6c656674223b733a363a22737461747573223b733a313a2231223b733a31303a22736f72745f6f72646572223b733a313a2235223b7d693a313b613a373a7b733a393a2262616e6e65725f6964223b733a323a223130223b733a353a227769647468223b733a333a22313930223b733a363a22686569676874223b733a333a22313538223b733a393a226c61796f75745f6964223b733a313a2231223b733a383a22706f736974696f6e223b733a31323a22636f6c756d6e5f7269676874223b733a363a22737461747573223b733a313a2231223b733a31303a22736f72745f6f72646572223b733a313a2235223b7d693a323b613a373a7b733a393a2262616e6e65725f6964223b733a323a223130223b733a353a227769647468223b733a333a22313930223b733a363a22686569676874223b733a333a22313538223b733a393a226c61796f75745f6964223b733a313a2231223b733a383a22706f736974696f6e223b733a31323a22636f6c756d6e5f7269676874223b733a363a22737461747573223b733a313a2231223b733a31303a22736f72745f6f72646572223b733a323a223130223b7d7d, 1);
INSERT INTO `oc_setting` VALUES (27382, 0, 0x636f6e666967, 0x636f6e6669675f6d61696e74656e616e6365, 0x30, 0);
INSERT INTO `oc_setting` VALUES (27381, 0, 0x636f6e666967, 0x636f6e6669675f73656f5f75726c, 0x31, 0);
INSERT INTO `oc_setting` VALUES (27380, 0, 0x636f6e666967, 0x636f6e6669675f7573655f73736c, 0x30, 0);
INSERT INTO `oc_setting` VALUES (25641, 0, 0x76697369746f72, 0x76697369746f725f7468656d65, 0x53686f7070696e67, 0);
INSERT INTO `oc_setting` VALUES (25642, 0, 0x76697369746f72, 0x76697369746f725f6d6f64756c65, 0x613a313a7b693a303b613a343a7b733a393a226c61796f75745f6964223b733a313a2231223b733a383a22706f736974696f6e223b733a31313a22636f6c756d6e5f6c656674223b733a363a22737461747573223b733a313a2231223b733a31303a22736f72745f6f72646572223b733a323a223130223b7d7d, 1);
INSERT INTO `oc_setting` VALUES (24297, 0, 0x676f6f676c655f74616c6b, 0x676f6f676c655f74616c6b5f636f6465, 0x4c65205468616e682054756e67266c743b62722667743b0d0a4d6f62696c6520303930343236303036340d0a266c743b62722667743b5961686f6f206c657468616e6874756e6768703837, 0);
INSERT INTO `oc_setting` VALUES (24298, 0, 0x676f6f676c655f74616c6b, 0x676f6f676c655f74616c6b5f6d6f64756c65, 0x613a313a7b693a303b613a343a7b733a393a226c61796f75745f6964223b733a313a2231223b733a383a22706f736974696f6e223b733a31323a22636f6c756d6e5f7269676874223b733a363a22737461747573223b733a313a2231223b733a31303a22736f72745f6f72646572223b733a313a2231223b7d7d, 1);
INSERT INTO `oc_setting` VALUES (25644, 0, 0x6c6174657374, 0x6c61746573745f6d6f64756c65, 0x613a313a7b693a303b613a373a7b733a353a226c696d6974223b733a313a2235223b733a31313a22696d6167655f7769647468223b733a323a223630223b733a31323a22696d6167655f686569676874223b733a323a223630223b733a393a226c61796f75745f6964223b733a313a2231223b733a383a22706f736974696f6e223b733a31323a22636f6c756d6e5f7269676874223b733a363a22737461747573223b733a313a2231223b733a31303a22736f72745f6f72646572223b733a313a2232223b7d7d, 1);
INSERT INTO `oc_setting` VALUES (24432, 0, 0x6e657773, 0x6e6577735f6d6f64756c65, 0x613a333a7b693a313b613a383a7b733a353a226c696d6974223b733a313a2235223b733a353a22696d616765223b733a313a2231223b733a31313a22696d6167655f7769647468223b733a323a223730223b733a31323a22696d6167655f686569676874223b733a323a223730223b733a393a226c61796f75745f6964223b733a313a2231223b733a383a22706f736974696f6e223b733a31313a22636f6c756d6e5f6c656674223b733a363a22737461747573223b733a313a2231223b733a31303a22736f72745f6f72646572223b733a313a2233223b7d693a323b613a383a7b733a353a226c696d6974223b733a313a2235223b733a353a22696d616765223b733a313a2231223b733a31313a22696d6167655f7769647468223b733a323a223730223b733a31323a22696d6167655f686569676874223b733a323a223730223b733a393a226c61796f75745f6964223b733a323a223133223b733a383a22706f736974696f6e223b733a31313a22636f6c756d6e5f6c656674223b733a363a22737461747573223b733a313a2231223b733a31303a22736f72745f6f72646572223b733a313a2232223b7d693a333b613a383a7b733a353a226c696d6974223b733a313a2236223b733a353a22696d616765223b733a313a2231223b733a31313a22696d6167655f7769647468223b733a323a223730223b733a31323a22696d6167655f686569676874223b733a323a223730223b733a393a226c61796f75745f6964223b733a323a223132223b733a383a22706f736974696f6e223b733a31313a22636f6c756d6e5f6c656674223b733a363a22737461747573223b733a313a2231223b733a31303a22736f72745f6f72646572223b733a313a2232223b7d7d, 1);
INSERT INTO `oc_setting` VALUES (27379, 0, 0x636f6e666967, 0x62616f6b696d5f737461747573, 0x31, 0);
INSERT INTO `oc_setting` VALUES (27378, 0, 0x636f6e666967, 0x62616f6b696d5f63757272656e63795f6964, 0x33, 0);
INSERT INTO `oc_setting` VALUES (27377, 0, 0x636f6e666967, 0x62616f6b696d5f7265636569766572, 0x6c657468616e6874756e6770726f40676d61696c2e636f6d, 0);
INSERT INTO `oc_setting` VALUES (27376, 0, 0x636f6e666967, 0x62616f6b696d5f7365637572655f70617373, 0x61323533636363366437666431376161, 0);
INSERT INTO `oc_setting` VALUES (24428, 0, 0x63617465676f72796e657773, 0x63617465676f72796e6577735f6d6f64756c65, 0x613a333a7b693a303b613a343a7b733a393a226c61796f75745f6964223b733a313a2231223b733a383a22706f736974696f6e223b733a31313a22636f6c756d6e5f6c656674223b733a363a22737461747573223b733a313a2231223b733a31303a22736f72745f6f72646572223b733a313a2232223b7d693a313b613a343a7b733a393a226c61796f75745f6964223b733a323a223133223b733a383a22706f736974696f6e223b733a31313a22636f6c756d6e5f6c656674223b733a363a22737461747573223b733a313a2231223b733a31303a22736f72745f6f72646572223b733a313a2231223b7d693a323b613a343a7b733a393a226c61796f75745f6964223b733a323a223132223b733a383a22706f736974696f6e223b733a31313a22636f6c756d6e5f6c656674223b733a363a22737461747573223b733a313a2231223b733a31303a22736f72745f6f72646572223b733a313a2231223b7d7d, 1);
INSERT INTO `oc_setting` VALUES (27374, 0, 0x636f6e666967, 0x6e67616e6c756f6e675f737461747573, 0x31, 0);
INSERT INTO `oc_setting` VALUES (27375, 0, 0x636f6e666967, 0x62616f6b696d5f6d65726368616e745f736974655f636f6465, 0x33333734, 0);
INSERT INTO `oc_setting` VALUES (27373, 0, 0x636f6e666967, 0x6e67616e6c756f6e675f63757272656e63795f6964, 0x33, 0);
INSERT INTO `oc_setting` VALUES (27372, 0, 0x636f6e666967, 0x6e67616e6c756f6e675f7265636569766572, 0x6c657468616e6874756e6770726f40676d61696c2e636f6d, 0);
INSERT INTO `oc_setting` VALUES (27371, 0, 0x636f6e666967, 0x6e67616e6c756f6e675f7365637572655f70617373, 0x363534333231, 0);
INSERT INTO `oc_setting` VALUES (27370, 0, 0x636f6e666967, 0x6e67616e6c756f6e675f6d65726368616e745f736974655f636f6465, 0x3233333036, 0);
INSERT INTO `oc_setting` VALUES (27369, 0, 0x636f6e666967, 0x636f6e6669675f66726175645f7374617475735f6964, 0x37, 0);
INSERT INTO `oc_setting` VALUES (27368, 0, 0x636f6e666967, 0x636f6e6669675f66726175645f73636f7265, '', 0);
INSERT INTO `oc_setting` VALUES (27367, 0, 0x636f6e666967, 0x636f6e6669675f66726175645f6b6579, '', 0);
INSERT INTO `oc_setting` VALUES (27366, 0, 0x636f6e666967, 0x636f6e6669675f66726175645f646574656374696f6e, 0x30, 0);
INSERT INTO `oc_setting` VALUES (27365, 0, 0x636f6e666967, 0x636f6e6669675f616c6572745f656d61696c73, '', 0);
INSERT INTO `oc_setting` VALUES (27364, 0, 0x636f6e666967, 0x636f6e6669675f6163636f756e745f6d61696c, 0x30, 0);
INSERT INTO `oc_setting` VALUES (27363, 0, 0x636f6e666967, 0x636f6e6669675f616c6572745f6d61696c, 0x30, 0);
INSERT INTO `oc_setting` VALUES (27362, 0, 0x636f6e666967, 0x636f6e6669675f736d74705f74696d656f7574, 0x3130, 0);
INSERT INTO `oc_setting` VALUES (27361, 0, 0x636f6e666967, 0x636f6e6669675f736d74705f706f7274, 0x343635, 0);
INSERT INTO `oc_setting` VALUES (27360, 0, 0x636f6e666967, 0x636f6e6669675f736d74705f70617373776f7264, 0x74756e6734313431, 0);
INSERT INTO `oc_setting` VALUES (27359, 0, 0x636f6e666967, 0x636f6e6669675f736d74705f757365726e616d65, 0x686f74726f2e6e656e63657240676d61696c2e636f6d, 0);
INSERT INTO `oc_setting` VALUES (24886, 0, 0x636174, 0x6361745f6d6f64756c65, 0x613a333a7b693a303b613a353a7b733a393a226c61796f75745f6964223b733a313a2231223b733a383a22706f736974696f6e223b733a31313a22636f6c756d6e5f6c656674223b733a353a22636f756e74223b733a313a2230223b733a363a22737461747573223b733a313a2231223b733a31303a22736f72745f6f72646572223b733a313a2232223b7d693a313b613a353a7b733a393a226c61796f75745f6964223b733a323a223132223b733a383a22706f736974696f6e223b733a31323a22636f6c756d6e5f7269676874223b733a353a22636f756e74223b733a313a2230223b733a363a22737461747573223b733a313a2231223b733a31303a22736f72745f6f72646572223b733a313a2231223b7d693a323b613a353a7b733a393a226c61796f75745f6964223b733a323a223133223b733a383a22706f736974696f6e223b733a31323a22636f6c756d6e5f7269676874223b733a353a22636f756e74223b733a313a2230223b733a363a22737461747573223b733a313a2231223b733a31303a22736f72745f6f72646572223b733a313a2232223b7d7d, 1);
INSERT INTO `oc_setting` VALUES (25208, 0, 0x746e745f7961686f6f, 0x746e745f7961686f6f5f7961686f6f696435, '', 0);
INSERT INTO `oc_setting` VALUES (25207, 0, 0x746e745f7961686f6f, 0x746e745f7961686f6f5f696d61676534, '', 0);
INSERT INTO `oc_setting` VALUES (25206, 0, 0x746e745f7961686f6f, 0x746e745f7961686f6f5f6d6f62696c6534, '', 0);
INSERT INTO `oc_setting` VALUES (25205, 0, 0x746e745f7961686f6f, 0x746e745f7961686f6f5f7961686f6f696434, '', 0);
INSERT INTO `oc_setting` VALUES (25204, 0, 0x746e745f7961686f6f, 0x746e745f7961686f6f5f696d61676533, '', 0);
INSERT INTO `oc_setting` VALUES (25203, 0, 0x746e745f7961686f6f, 0x746e745f7961686f6f5f6d6f62696c6533, '', 0);
INSERT INTO `oc_setting` VALUES (25202, 0, 0x746e745f7961686f6f, 0x746e745f7961686f6f5f7961686f6f696433, '', 0);
INSERT INTO `oc_setting` VALUES (25201, 0, 0x746e745f7961686f6f, 0x746e745f7961686f6f5f696d61676532, 0x3134, 0);
INSERT INTO `oc_setting` VALUES (25200, 0, 0x746e745f7961686f6f, 0x746e745f7961686f6f5f6d6f62696c6532, 0x30393839353637363236, 0);
INSERT INTO `oc_setting` VALUES (25199, 0, 0x746e745f7961686f6f, 0x746e745f7961686f6f5f7961686f6f696432, 0x78756f6e67726f6e6730333231, 0);
INSERT INTO `oc_setting` VALUES (25198, 0, 0x746e745f7961686f6f, 0x746e745f7961686f6f5f696d61676531, 0x32, 0);
INSERT INTO `oc_setting` VALUES (25196, 0, 0x746e745f7961686f6f, 0x746e745f7961686f6f5f7961686f6f696431, 0x6475636b686f6931393837, 0);
INSERT INTO `oc_setting` VALUES (25197, 0, 0x746e745f7961686f6f, 0x746e745f7961686f6f5f6d6f62696c6531, 0x30393839353637363236, 0);
INSERT INTO `oc_setting` VALUES (24910, 0, 0x6665617475726564, 0x70726f64756374, '', 0);
INSERT INTO `oc_setting` VALUES (25195, 0, 0x696e666f726d6174696f6e, 0x696e666f726d6174696f6e5f6d6f64756c65, 0x613a323a7b693a303b613a343a7b733a393a226c61796f75745f6964223b733a313a2231223b733a383a22706f736974696f6e223b733a31313a22636f6c756d6e5f6c656674223b733a363a22737461747573223b733a313a2231223b733a31303a22736f72745f6f72646572223b733a313a2233223b7d693a313b613a343a7b733a393a226c61796f75745f6964223b733a313a2234223b733a383a22706f736974696f6e223b733a31313a22636f6c756d6e5f6c656674223b733a363a22737461747573223b733a313a2231223b733a31303a22736f72745f6f72646572223b733a313a2233223b7d7d, 1);
INSERT INTO `oc_setting` VALUES (27358, 0, 0x636f6e666967, 0x636f6e6669675f736d74705f686f7374, 0x73736c3a2f2f736d74702e676d61696c2e636f6d, 0);
INSERT INTO `oc_setting` VALUES (27357, 0, 0x636f6e666967, 0x636f6e6669675f6d61696c5f706172616d65746572, '', 0);
INSERT INTO `oc_setting` VALUES (27356, 0, 0x636f6e666967, 0x636f6e6669675f6d61696c5f70726f746f636f6c, 0x736d7470, 0);
INSERT INTO `oc_setting` VALUES (27355, 0, 0x636f6e666967, 0x636f6e6669675f696d6167655f6e6577735f686569676874, 0x313030, 0);
INSERT INTO `oc_setting` VALUES (27353, 0, 0x636f6e666967, 0x636f6e6669675f696d6167655f6361745f686569676874, 0x313030, 0);
INSERT INTO `oc_setting` VALUES (27354, 0, 0x636f6e666967, 0x636f6e6669675f696d6167655f6e6577735f7769647468, 0x313030, 0);
INSERT INTO `oc_setting` VALUES (27352, 0, 0x636f6e666967, 0x636f6e6669675f696d6167655f6361745f7769647468, 0x313030, 0);
INSERT INTO `oc_setting` VALUES (27351, 0, 0x636f6e666967, 0x636f6e6669675f696d6167655f636172745f686569676874, 0x3437, 0);
INSERT INTO `oc_setting` VALUES (27350, 0, 0x636f6e666967, 0x636f6e6669675f696d6167655f636172745f7769647468, 0x3437, 0);
INSERT INTO `oc_setting` VALUES (27349, 0, 0x636f6e666967, 0x636f6e6669675f696d6167655f776973686c6973745f686569676874, 0x3437, 0);
INSERT INTO `oc_setting` VALUES (25190, 0, 0x746e745f77656c636f6d65, 0x746e745f77656c636f6d655f6d6f64756c65, 0x613a313a7b693a313b613a363a7b733a353a227469746c65223b613a313a7b693a323b733a32373a225468c3b46e672062c3a16f2074e1bbab204f70656e63617274564e223b7d733a31313a226465736372697074696f6e223b613a313a7b693a323b733a3132383a22266c743b702667743b0d0a09506869c3aa6e2062e1baa36e207468c6b0c6a16e67206de1baa169206f70656e63617274564e207068c3a17420747269e1bb836e2062e1bb9f69204e656e6365722e636f6d206368c3ad6e68207468e1bba96320c491c6b0e1bba363207068c3a1742068c3a06e68266c743b2f702667743b0d0a223b7d733a393a226c61796f75745f6964223b733a313a2231223b733a383a22706f736974696f6e223b733a31313a22636f6e74656e745f746f70223b733a363a22737461747573223b733a313a2231223b733a31303a22736f72745f6f72646572223b733a313a2231223b7d7d, 1);
INSERT INTO `oc_setting` VALUES (25209, 0, 0x746e745f7961686f6f, 0x746e745f7961686f6f5f6d6f62696c6535, '', 0);
INSERT INTO `oc_setting` VALUES (25210, 0, 0x746e745f7961686f6f, 0x746e745f7961686f6f5f696d61676535, '', 0);
INSERT INTO `oc_setting` VALUES (25211, 0, 0x746e745f7961686f6f, 0x746e745f7961686f6f5f6d6f64756c65, 0x613a323a7b693a303b613a343a7b733a393a226c61796f75745f6964223b733a313a2231223b733a383a22706f736974696f6e223b733a31323a22636f6c756d6e5f7269676874223b733a363a22737461747573223b733a313a2231223b733a31303a22736f72745f6f72646572223b733a313a2230223b7d693a313b613a343a7b733a393a226c61796f75745f6964223b733a313a2234223b733a383a22706f736974696f6e223b733a31313a22636f6c756d6e5f6c656674223b733a363a22737461747573223b733a313a2231223b733a31303a22736f72745f6f72646572223b733a313a2232223b7d7d, 1);
INSERT INTO `oc_setting` VALUES (25307, 0, 0x746e745f70726f64756374636174, 0x746e745f70726f647563746361745f6d6f64756c65, 0x613a343a7b693a303b613a383a7b733a333a22636174223b733a323a223633223b733a353a226c696d6974223b733a313a2236223b733a31313a22696d6167655f7769647468223b733a333a22313230223b733a31323a22696d6167655f686569676874223b733a333a22313230223b733a393a226c61796f75745f6964223b733a313a2231223b733a383a22706f736974696f6e223b733a31313a22636f6e74656e745f746f70223b733a363a22737461747573223b733a313a2231223b733a31303a22736f72745f6f72646572223b733a313a2232223b7d693a313b613a383a7b733a333a22636174223b733a323a223635223b733a353a226c696d6974223b733a313a2236223b733a31313a22696d6167655f7769647468223b733a333a22313230223b733a31323a22696d6167655f686569676874223b733a333a22313230223b733a393a226c61796f75745f6964223b733a313a2231223b733a383a22706f736974696f6e223b733a31313a22636f6e74656e745f746f70223b733a363a22737461747573223b733a313a2231223b733a31303a22736f72745f6f72646572223b733a313a2233223b7d693a323b613a383a7b733a333a22636174223b733a323a223230223b733a353a226c696d6974223b733a313a2236223b733a31313a22696d6167655f7769647468223b733a333a22313230223b733a31323a22696d6167655f686569676874223b733a333a22313230223b733a393a226c61796f75745f6964223b733a313a2231223b733a383a22706f736974696f6e223b733a31313a22636f6e74656e745f746f70223b733a363a22737461747573223b733a313a2231223b733a31303a22736f72745f6f72646572223b733a313a2234223b7d693a333b613a383a7b733a333a22636174223b733a323a223634223b733a353a226c696d6974223b733a313a2236223b733a31313a22696d6167655f7769647468223b733a333a22313230223b733a31323a22696d6167655f686569676874223b733a333a22313230223b733a393a226c61796f75745f6964223b733a313a2231223b733a383a22706f736974696f6e223b733a31313a22636f6e74656e745f746f70223b733a363a22737461747573223b733a313a2231223b733a31303a22736f72745f6f72646572223b733a313a2235223b7d7d, 1);
INSERT INTO `oc_setting` VALUES (27346, 0, 0x636f6e666967, 0x636f6e6669675f696d6167655f636f6d706172655f7769647468, 0x3930, 0);
INSERT INTO `oc_setting` VALUES (27347, 0, 0x636f6e666967, 0x636f6e6669675f696d6167655f636f6d706172655f686569676874, 0x3930, 0);
INSERT INTO `oc_setting` VALUES (27348, 0, 0x636f6e666967, 0x636f6e6669675f696d6167655f776973686c6973745f7769647468, 0x3437, 0);
INSERT INTO `oc_setting` VALUES (25308, 0, 0x746e745f77656174686572, 0x746e745f776561746865725f636f6465, 0x68616970686f6e67, 0);
INSERT INTO `oc_setting` VALUES (25309, 0, 0x746e745f77656174686572, 0x746e745f776561746865725f6d6f64756c65, 0x613a313a7b693a303b613a343a7b733a393a226c61796f75745f6964223b733a313a2231223b733a383a22706f736974696f6e223b733a31323a22636f6c756d6e5f7269676874223b733a363a22737461747573223b733a313a2231223b733a31303a22736f72745f6f72646572223b733a313a2232223b7d7d, 1);
INSERT INTO `oc_setting` VALUES (25645, 0, 0x746e745f72616e646f6d, 0x746e745f72616e646f6d5f6d6f64756c65, 0x613a313a7b693a303b613a373a7b733a353a226c696d6974223b733a313a2235223b733a31313a22696d6167655f7769647468223b733a323a223630223b733a31323a22696d6167655f686569676874223b733a323a223630223b733a393a226c61796f75745f6964223b733a313a2231223b733a383a22706f736974696f6e223b733a31323a22636f6c756d6e5f7269676874223b733a363a22737461747573223b733a313a2231223b733a31303a22736f72745f6f72646572223b733a313a2235223b7d7d, 1);
INSERT INTO `oc_setting` VALUES (25640, 0, 0x76697369746f72, 0x76697369746f725f657870697265, 0x3630, 0);
INSERT INTO `oc_setting` VALUES (25324, 0, 0x6265737473656c6c6572, 0x6265737473656c6c65725f6d6f64756c65, 0x613a313a7b693a303b613a373a7b733a353a226c696d6974223b733a313a2235223b733a31313a22696d6167655f7769647468223b733a323a223630223b733a31323a22696d6167655f686569676874223b733a323a223630223b733a393a226c61796f75745f6964223b733a313a2231223b733a383a22706f736974696f6e223b733a31313a22636f6c756d6e5f6c656674223b733a363a22737461747573223b733a313a2231223b733a31303a22736f72745f6f72646572223b733a313a2234223b7d7d, 1);
INSERT INTO `oc_setting` VALUES (25325, 0, 0x66726565, 0x667265655f746f74616c, 0x31303030303030, 0);
INSERT INTO `oc_setting` VALUES (25326, 0, 0x66726565, 0x667265655f67656f5f7a6f6e655f6964, 0x30, 0);
INSERT INTO `oc_setting` VALUES (25327, 0, 0x66726565, 0x667265655f737461747573, 0x31, 0);
INSERT INTO `oc_setting` VALUES (25328, 0, 0x66726565, 0x667265655f736f72745f6f72646572, 0x31, 0);
INSERT INTO `oc_setting` VALUES (25329, 0, 0x62616e6b5f7472616e73666572, 0x62616e6b5f7472616e736665725f62616e6b5f32, 0x567569206cc3b26e672063687579e1bb836e2073e1bb91207469e1bb816e2063e1baa76e207468616e6820746fc3a16e2076c3a06f2074c3a069206b686fe1baa36e0d0a4cc3aa205468616e682054c3b96e672030303331303031323035363331200d0a4e67c3a26e2048c3a06e67205669e1bb8774436f6d62616e6b, 0);
INSERT INTO `oc_setting` VALUES (25330, 0, 0x62616e6b5f7472616e73666572, 0x62616e6b5f7472616e736665725f746f74616c, 0x313030303030, 0);
INSERT INTO `oc_setting` VALUES (25331, 0, 0x62616e6b5f7472616e73666572, 0x62616e6b5f7472616e736665725f6f726465725f7374617475735f6964, 0x31, 0);
INSERT INTO `oc_setting` VALUES (25332, 0, 0x62616e6b5f7472616e73666572, 0x62616e6b5f7472616e736665725f67656f5f7a6f6e655f6964, 0x30, 0);
INSERT INTO `oc_setting` VALUES (25333, 0, 0x62616e6b5f7472616e73666572, 0x62616e6b5f7472616e736665725f737461747573, 0x31, 0);
INSERT INTO `oc_setting` VALUES (25334, 0, 0x62616e6b5f7472616e73666572, 0x62616e6b5f7472616e736665725f736f72745f6f72646572, 0x33, 0);
INSERT INTO `oc_setting` VALUES (27344, 0, 0x636f6e666967, 0x636f6e6669675f696d6167655f72656c617465645f7769647468, 0x3830, 0);
INSERT INTO `oc_setting` VALUES (27345, 0, 0x636f6e666967, 0x636f6e6669675f696d6167655f72656c617465645f686569676874, 0x3830, 0);
INSERT INTO `oc_setting` VALUES (27343, 0, 0x636f6e666967, 0x636f6e6669675f696d6167655f6164646974696f6e616c5f686569676874, 0x3734, 0);
INSERT INTO `oc_setting` VALUES (27342, 0, 0x636f6e666967, 0x636f6e6669675f696d6167655f6164646974696f6e616c5f7769647468, 0x3734, 0);
INSERT INTO `oc_setting` VALUES (27341, 0, 0x636f6e666967, 0x636f6e6669675f696d6167655f70726f647563745f686569676874, 0x313230, 0);
INSERT INTO `oc_setting` VALUES (27340, 0, 0x636f6e666967, 0x636f6e6669675f696d6167655f70726f647563745f7769647468, 0x313230, 0);
INSERT INTO `oc_setting` VALUES (27339, 0, 0x636f6e666967, 0x636f6e6669675f696d6167655f706f7075705f686569676874, 0x353030, 0);
INSERT INTO `oc_setting` VALUES (27338, 0, 0x636f6e666967, 0x636f6e6669675f696d6167655f706f7075705f7769647468, 0x353030, 0);
INSERT INTO `oc_setting` VALUES (27337, 0, 0x636f6e666967, 0x636f6e6669675f696d6167655f7468756d625f686569676874, 0x323238, 0);
INSERT INTO `oc_setting` VALUES (27336, 0, 0x636f6e666967, 0x636f6e6669675f696d6167655f7468756d625f7769647468, 0x323238, 0);
INSERT INTO `oc_setting` VALUES (27335, 0, 0x636f6e666967, 0x636f6e6669675f696d6167655f63617465676f72795f686569676874, 0x3830, 0);
INSERT INTO `oc_setting` VALUES (27333, 0, 0x636f6e666967, 0x636f6e6669675f69636f6e, 0x646174612f636172742e706e67, 0);
INSERT INTO `oc_setting` VALUES (27334, 0, 0x636f6e666967, 0x636f6e6669675f696d6167655f63617465676f72795f7769647468, 0x3830, 0);
INSERT INTO `oc_setting` VALUES (27332, 0, 0x636f6e666967, 0x636f6e6669675f6c6f676f, 0x646174612f6c6f676f2e706e67, 0);
INSERT INTO `oc_setting` VALUES (27331, 0, 0x636f6e666967, 0x636f6e6669675f72657475726e5f7374617475735f6964, 0x32, 0);
INSERT INTO `oc_setting` VALUES (27329, 0, 0x636f6e666967, 0x636f6e6669675f616666696c696174655f6964, 0x34, 0);
INSERT INTO `oc_setting` VALUES (27330, 0, 0x636f6e666967, 0x636f6e6669675f636f6d6d697373696f6e, 0x35, 0);
INSERT INTO `oc_setting` VALUES (25541, 0, 0x6e6577736665617475726564, 0x6e657773, 0x70, 0);
INSERT INTO `oc_setting` VALUES (25542, 0, 0x6e6577736665617475726564, 0x6e65777366656174757265645f6e657773, 0x3533, 0);
INSERT INTO `oc_setting` VALUES (25543, 0, 0x6e6577736665617475726564, 0x6e65777366656174757265645f6d6f64756c65, 0x613a313a7b693a303b613a31303a7b733a353a226c696d6974223b733a313a2235223b733a31363a226c696d69746465736372697074696f6e223b733a333a22323030223b733a31313a22696d6167655f7769647468223b733a323a223830223b733a31323a22696d6167655f686569676874223b733a323a223830223b733a393a226c61796f75745f6964223b733a313a2231223b733a383a22706f736974696f6e223b733a31313a22636f6e74656e745f746f70223b733a31313a226465736372697074696f6e223b733a313a2231223b733a31313a22696d616765737461747573223b733a313a2231223b733a363a22737461747573223b733a313a2231223b733a31303a22736f72745f6f72646572223b733a313a2230223b7d7d, 1);
INSERT INTO `oc_setting` VALUES (27327, 0, 0x636f6e666967, 0x636f6e6669675f73746f636b5f636865636b6f7574, 0x30, 0);
INSERT INTO `oc_setting` VALUES (25638, 0, 0x6e6577736c6174657374, 0x6e6577736c61746573745f6d6f64756c65, 0x613a313a7b693a303b613a31303a7b733a353a226c696d6974223b733a313a2235223b733a31363a226c696d69746465736372697074696f6e223b733a333a22323030223b733a31313a22696d6167655f7769647468223b733a323a223830223b733a31323a22696d6167655f686569676874223b733a323a223830223b733a393a226c61796f75745f6964223b733a313a2231223b733a383a22706f736974696f6e223b733a31313a22636f6c756d6e5f6c656674223b733a31313a226465736372697074696f6e223b733a313a2231223b733a31313a22696d616765737461747573223b733a313a2231223b733a363a22737461747573223b733a313a2231223b733a31303a22736f72745f6f72646572223b733a313a2233223b7d7d, 1);
INSERT INTO `oc_setting` VALUES (25643, 0, 0x746e745f6e657773636174, 0x746e745f6e6577736361745f6d6f64756c65, 0x613a313a7b693a303b613a31313a7b733a333a22636174223b733a323a223539223b733a353a226c696d6974223b733a313a2235223b733a31363a226c696d69746465736372697074696f6e223b733a333a22323030223b733a31313a22696d6167655f7769647468223b733a323a223830223b733a31323a22696d6167655f686569676874223b733a323a223830223b733a393a226c61796f75745f6964223b733a313a2231223b733a383a22706f736974696f6e223b733a31323a22636f6c756d6e5f7269676874223b733a31313a226465736372697074696f6e223b733a313a2231223b733a31313a22696d616765737461747573223b733a313a2231223b733a363a22737461747573223b733a313a2231223b733a31303a22736f72745f6f72646572223b733a313a2232223b7d7d, 1);
INSERT INTO `oc_setting` VALUES (27328, 0, 0x636f6e666967, 0x636f6e6669675f73746f636b5f7374617475735f6964, 0x35, 0);
INSERT INTO `oc_setting` VALUES (27326, 0, 0x636f6e666967, 0x636f6e6669675f73746f636b5f7761726e696e67, 0x30, 0);
INSERT INTO `oc_setting` VALUES (27325, 0, 0x636f6e666967, 0x636f6e6669675f73746f636b5f646973706c6179, 0x30, 0);
INSERT INTO `oc_setting` VALUES (27324, 0, 0x636f6e666967, 0x636f6e6669675f636f6d706c6574655f7374617475735f6964, 0x35, 0);
INSERT INTO `oc_setting` VALUES (27323, 0, 0x636f6e666967, 0x636f6e6669675f6f726465725f7374617475735f6964, 0x31, 0);
INSERT INTO `oc_setting` VALUES (27322, 0, 0x636f6e666967, 0x636f6e6669675f696e766f6963655f707265666978, 0x494e562d323031312d3030, 0);
INSERT INTO `oc_setting` VALUES (27321, 0, 0x636f6e666967, 0x636f6e6669675f6f726465725f65646974, 0x313030, 0);
INSERT INTO `oc_setting` VALUES (27320, 0, 0x636f6e666967, 0x636f6e6669675f636865636b6f75745f6964, 0x35, 0);
INSERT INTO `oc_setting` VALUES (27319, 0, 0x636f6e666967, 0x636f6e6669675f67756573745f636865636b6f7574, 0x31, 0);
INSERT INTO `oc_setting` VALUES (27318, 0, 0x636f6e666967, 0x636f6e6669675f636172745f776569676874, 0x31, 0);
INSERT INTO `oc_setting` VALUES (27317, 0, 0x636f6e666967, 0x636f6e6669675f6163636f756e745f6964, 0x33, 0);
INSERT INTO `oc_setting` VALUES (27316, 0, 0x636f6e666967, 0x636f6e6669675f637573746f6d65725f7072696365, 0x30, 0);
INSERT INTO `oc_setting` VALUES (27315, 0, 0x636f6e666967, 0x636f6e6669675f637573746f6d65725f67726f75705f6964, 0x31, 0);
INSERT INTO `oc_setting` VALUES (27314, 0, 0x636f6e666967, 0x636f6e6669675f7461785f637573746f6d6572, 0x7368697070696e67, 0);
INSERT INTO `oc_setting` VALUES (27313, 0, 0x636f6e666967, 0x636f6e6669675f7461785f64656661756c74, 0x7368697070696e67, 0);
INSERT INTO `oc_setting` VALUES (27312, 0, 0x636f6e666967, 0x636f6e6669675f766174, 0x30, 0);
INSERT INTO `oc_setting` VALUES (27311, 0, 0x636f6e666967, 0x636f6e6669675f746178, 0x31, 0);
INSERT INTO `oc_setting` VALUES (27310, 0, 0x636f6e666967, 0x636f6e6669675f766f75636865725f6d6178, 0x31303030, 0);
INSERT INTO `oc_setting` VALUES (27309, 0, 0x636f6e666967, 0x636f6e6669675f766f75636865725f6d696e, 0x3130, 0);
INSERT INTO `oc_setting` VALUES (27308, 0, 0x636f6e666967, 0x636f6e6669675f75706c6f61645f616c6c6f776564, 0x6a70672c204a50472c206a7065672c206769662c20706e672c20747874, 0);
INSERT INTO `oc_setting` VALUES (27307, 0, 0x636f6e666967, 0x636f6e6669675f646f776e6c6f6164, 0x31, 0);
INSERT INTO `oc_setting` VALUES (27306, 0, 0x636f6e666967, 0x636f6e6669675f7265766965775f737461747573, 0x31, 0);
INSERT INTO `oc_setting` VALUES (27305, 0, 0x636f6e666967, 0x636f6e6669675f70726f647563745f636f756e74, 0x30, 0);
INSERT INTO `oc_setting` VALUES (27304, 0, 0x636f6e666967, 0x636f6e6669675f61646d696e5f6c696d6974, 0x3230, 0);
INSERT INTO `oc_setting` VALUES (27303, 0, 0x636f6e666967, 0x636f6e6669675f636174616c6f675f6c696d6974, 0x3135, 0);
INSERT INTO `oc_setting` VALUES (27302, 0, 0x636f6e666967, 0x636f6e6669675f7765696768745f636c6173735f6964, 0x31, 0);
INSERT INTO `oc_setting` VALUES (27301, 0, 0x636f6e666967, 0x636f6e6669675f6c656e6774685f636c6173735f6964, 0x31, 0);
INSERT INTO `oc_setting` VALUES (27300, 0, 0x636f6e666967, 0x636f6e6669675f63757272656e63795f6175746f, 0x30, 0);
INSERT INTO `oc_setting` VALUES (27299, 0, 0x636f6e666967, 0x636f6e6669675f63757272656e6379, 0x766e64, 0);
INSERT INTO `oc_setting` VALUES (27298, 0, 0x636f6e666967, 0x636f6e6669675f61646d696e5f6c616e6775616765, 0x766e, 0);
INSERT INTO `oc_setting` VALUES (27297, 0, 0x636f6e666967, 0x636f6e6669675f6c616e6775616765, 0x766e, 0);
INSERT INTO `oc_setting` VALUES (27296, 0, 0x636f6e666967, 0x636f6e6669675f7a6f6e655f6964, 0x33373734, 0);
INSERT INTO `oc_setting` VALUES (27295, 0, 0x636f6e666967, 0x636f6e6669675f636f756e7472795f6964, 0x323330, 0);
INSERT INTO `oc_setting` VALUES (27294, 0, 0x636f6e666967, 0x636f6e6669675f6c61796f75745f6964, 0x34, 0);
INSERT INTO `oc_setting` VALUES (27293, 0, 0x636f6e666967, 0x636f6e6669675f74656d706c617465, 0x64656661756c74, 0);
INSERT INTO `oc_setting` VALUES (27292, 0, 0x636f6e666967, 0x636f6e6669675f6d6574615f6465736372697074696f6e, 0x4f70656e63617274564e, 0);
INSERT INTO `oc_setting` VALUES (27291, 0, 0x636f6e666967, 0x636f6e6669675f7469746c65, 0x4f70656e63617274564e, 0);
INSERT INTO `oc_setting` VALUES (27290, 0, 0x636f6e666967, 0x636f6e6669675f666178, '', 0);
INSERT INTO `oc_setting` VALUES (27289, 0, 0x636f6e666967, 0x636f6e6669675f74656c6570686f6e65, 0x30393839353637363236, 0);
INSERT INTO `oc_setting` VALUES (27288, 0, 0x636f6e666967, 0x636f6e6669675f656d61696c, 0x636f6465722e6e656e63657240676d61696c2e636f6d, 0);
INSERT INTO `oc_setting` VALUES (27287, 0, 0x636f6e666967, 0x636f6e6669675f61646472657373, 0xc490e1bb8b61206368e1bb893a2053e1bb912034353720c490c3a0204ee1bab56e672c2048e1baa36920416e2c2048e1baa369205068c3b26e67, 0);
INSERT INTO `oc_setting` VALUES (27286, 0, 0x636f6e666967, 0x636f6e6669675f6f776e6572, 0x4f70656e63617274564e, 0);
INSERT INTO `oc_setting` VALUES (27285, 0, 0x636f6e666967, 0x636f6e6669675f6e616d65, 0x4f70656e63617274564e, 0);

-- --------------------------------------------------------

-- 
-- Table structure for table `oc_stock_status`
-- 

DROP TABLE IF EXISTS `oc_stock_status`;
CREATE TABLE `oc_stock_status` (
  `stock_status_id` int(11) NOT NULL auto_increment,
  `language_id` int(11) NOT NULL,
  `name` varchar(32) collate utf8_bin NOT NULL,
  PRIMARY KEY  (`stock_status_id`,`language_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=9 ;

-- 
-- Dumping data for table `oc_stock_status`
-- 

INSERT INTO `oc_stock_status` VALUES (7, 2, 0x43c3b26e2068c3a06e67);
INSERT INTO `oc_stock_status` VALUES (8, 2, 0xc490e1bab7742068c3a06e67207472c6b0e1bb9b63);
INSERT INTO `oc_stock_status` VALUES (5, 2, 0x48e1babf742068c3a06e67);
INSERT INTO `oc_stock_status` VALUES (6, 2, 0x32202d2033204e67c3a079);

-- --------------------------------------------------------

-- 
-- Table structure for table `oc_store`
-- 

DROP TABLE IF EXISTS `oc_store`;
CREATE TABLE `oc_store` (
  `store_id` int(11) NOT NULL auto_increment,
  `name` varchar(64) collate utf8_bin NOT NULL,
  `url` varchar(255) collate utf8_bin NOT NULL,
  `ssl` varchar(255) collate utf8_bin NOT NULL,
  PRIMARY KEY  (`store_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=1 ;

-- 
-- Dumping data for table `oc_store`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `oc_tax_class`
-- 

DROP TABLE IF EXISTS `oc_tax_class`;
CREATE TABLE `oc_tax_class` (
  `tax_class_id` int(11) NOT NULL auto_increment,
  `title` varchar(32) collate utf8_bin NOT NULL default '',
  `description` varchar(255) collate utf8_bin NOT NULL default '',
  `date_added` datetime NOT NULL default '0000-00-00 00:00:00',
  `date_modified` datetime NOT NULL default '0000-00-00 00:00:00',
  PRIMARY KEY  (`tax_class_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=10 ;

-- 
-- Dumping data for table `oc_tax_class`
-- 

INSERT INTO `oc_tax_class` VALUES (9, 0x4769c3a1207472e1bb8b206769612074c4836e67, 0x4769c3a1207472e1bb8b206769612074c4836e67, '2009-01-06 23:21:53', '2012-05-25 00:16:17');

-- --------------------------------------------------------

-- 
-- Table structure for table `oc_tax_rate`
-- 

DROP TABLE IF EXISTS `oc_tax_rate`;
CREATE TABLE `oc_tax_rate` (
  `tax_rate_id` int(11) NOT NULL auto_increment,
  `geo_zone_id` int(11) NOT NULL default '0',
  `name` varchar(32) collate utf8_bin NOT NULL,
  `rate` decimal(15,4) NOT NULL default '0.0000',
  `type` char(1) collate utf8_bin NOT NULL,
  `date_added` datetime NOT NULL default '0000-00-00 00:00:00',
  `date_modified` datetime NOT NULL default '0000-00-00 00:00:00',
  PRIMARY KEY  (`tax_rate_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=87 ;

-- 
-- Dumping data for table `oc_tax_rate`
-- 

INSERT INTO `oc_tax_rate` VALUES (86, 4, 0x4769c3a1207472e1bb8b206769612074c4836e67, 10.0000, 0x50, '2011-03-09 21:17:10', '2012-05-25 00:16:48');

-- --------------------------------------------------------

-- 
-- Table structure for table `oc_tax_rate_to_customer_group`
-- 

DROP TABLE IF EXISTS `oc_tax_rate_to_customer_group`;
CREATE TABLE `oc_tax_rate_to_customer_group` (
  `tax_rate_id` int(11) NOT NULL,
  `customer_group_id` int(11) NOT NULL,
  PRIMARY KEY  (`tax_rate_id`,`customer_group_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- 
-- Dumping data for table `oc_tax_rate_to_customer_group`
-- 

INSERT INTO `oc_tax_rate_to_customer_group` VALUES (86, 6);
INSERT INTO `oc_tax_rate_to_customer_group` VALUES (86, 8);

-- --------------------------------------------------------

-- 
-- Table structure for table `oc_tax_rule`
-- 

DROP TABLE IF EXISTS `oc_tax_rule`;
CREATE TABLE `oc_tax_rule` (
  `tax_rule_id` int(11) NOT NULL auto_increment,
  `tax_class_id` int(11) NOT NULL,
  `tax_rate_id` int(11) NOT NULL,
  `based` varchar(10) collate utf8_bin NOT NULL,
  `priority` int(5) NOT NULL default '1',
  PRIMARY KEY  (`tax_rule_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=131 ;

-- 
-- Dumping data for table `oc_tax_rule`
-- 

INSERT INTO `oc_tax_rule` VALUES (130, 9, 86, 0x7368697070696e67, 1);

-- --------------------------------------------------------

-- 
-- Table structure for table `oc_url_alias`
-- 

DROP TABLE IF EXISTS `oc_url_alias`;
CREATE TABLE `oc_url_alias` (
  `url_alias_id` int(11) NOT NULL auto_increment,
  `query` varchar(255) collate utf8_bin NOT NULL,
  `keyword` varchar(255) collate utf8_bin NOT NULL,
  PRIMARY KEY  (`url_alias_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=829 ;

-- 
-- Dumping data for table `oc_url_alias`
-- 

INSERT INTO `oc_url_alias` VALUES (704, 0x70726f647563745f69643d3438, 0x69706f645f636c6173736963);
INSERT INTO `oc_url_alias` VALUES (803, 0x63617465676f72795f69643d3230, 0x6465736b746f7073);
INSERT INTO `oc_url_alias` VALUES (503, 0x63617465676f72795f69643d3236, 0x7063);
INSERT INTO `oc_url_alias` VALUES (505, 0x63617465676f72795f69643d3237, 0x6d6163);
INSERT INTO `oc_url_alias` VALUES (730, 0x6d616e7566616374757265725f69643d38, 0x6170706c65);
INSERT INTO `oc_url_alias` VALUES (807, 0x696e666f726d6174696f6e5f69643d34, 0x67696f692d74686965752e68746d6c);
INSERT INTO `oc_url_alias` VALUES (768, 0x70726f647563745f69643d3432, 0x74657374);
INSERT INTO `oc_url_alias` VALUES (794, 0x63617465676f72795f69643d3334, 0x6d70332d706c6179657273);
INSERT INTO `oc_url_alias` VALUES (536, 0x63617465676f72795f69643d3336, 0x4e6f726d616c);
INSERT INTO `oc_url_alias` VALUES (778, 0x6e6577735f69643d3139, 0x7468652d6469656e2d74686f6169);
INSERT INTO `oc_url_alias` VALUES (775, 0x63617465676f72796e6577735f69643d39, 0x6e6577736c6574746572);
INSERT INTO `oc_url_alias` VALUES (780, 0x6e6577735f69643d3230, 0x31323231);
INSERT INTO `oc_url_alias` VALUES (781, 0x63617465676f72796e6577735f69643d3130, '');
INSERT INTO `oc_url_alias` VALUES (784, 0x6e6577735f69643d3231, 0x6d6f742d6261692d766965742d746875);
INSERT INTO `oc_url_alias` VALUES (785, 0x63617465676f72796e6577735f69643d3131, '');
INSERT INTO `oc_url_alias` VALUES (821, 0x6361745f69643d3539, 0x74696e2d636f6e672d7479);
INSERT INTO `oc_url_alias` VALUES (808, 0x696e666f726d6174696f6e5f69643d36, 0x747579656e2d64756e672e68746d6c);
INSERT INTO `oc_url_alias` VALUES (809, 0x696e666f726d6174696f6e5f69643d33, 0x717579656e2d7269656e672d74752e68746d6c);
INSERT INTO `oc_url_alias` VALUES (810, 0x696e666f726d6174696f6e5f69643d35, 0x646965752d6b686f616e2d76612d646965752d6b69656e2e68746d6c);
INSERT INTO `oc_url_alias` VALUES (815, 0x6e6577735f69643d3533, 0x323830392d706861742d6869656e2d6461752d7665742d7572616e692d6c616d2d676961752d6361702d646f2d63616f2d686f6e2d7461692d6972616e2e68746d6c);
INSERT INTO `oc_url_alias` VALUES (825, 0x6e6577735f69643d3534, 0x323931362d746573742d74696e2d322e68746d6c);
INSERT INTO `oc_url_alias` VALUES (826, 0x6e6577735f69643d3535, 0x333032352d746573742d74696e2d312e68746d6c);
INSERT INTO `oc_url_alias` VALUES (818, 0x6361745f69643d3630, 0x74696e2d78612d686f69);
INSERT INTO `oc_url_alias` VALUES (820, 0x6361745f69643d3631, 0x74696e2d76616e2d686f61);
INSERT INTO `oc_url_alias` VALUES (828, 0x70726f647563745f69643d3538, 0x333336342d686f612d63616d2d6368756f6e672e68746d6c);

-- --------------------------------------------------------

-- 
-- Table structure for table `oc_user`
-- 

DROP TABLE IF EXISTS `oc_user`;
CREATE TABLE `oc_user` (
  `user_id` int(11) NOT NULL auto_increment,
  `user_group_id` int(11) NOT NULL,
  `username` varchar(20) collate utf8_bin NOT NULL default '',
  `password` varchar(32) collate utf8_bin NOT NULL default '',
  `firstname` varchar(32) collate utf8_bin NOT NULL default '',
  `lastname` varchar(32) collate utf8_bin NOT NULL default '',
  `email` varchar(96) collate utf8_bin NOT NULL default '',
  `code` varchar(32) collate utf8_bin NOT NULL,
  `ip` varchar(15) collate utf8_bin NOT NULL default '',
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL default '0000-00-00 00:00:00',
  PRIMARY KEY  (`user_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=3 ;

-- 
-- Dumping data for table `oc_user`
-- 

-- --------------------------------------------------------

-- 
-- Table structure for table `oc_user_group`
-- 

DROP TABLE IF EXISTS `oc_user_group`;
CREATE TABLE `oc_user_group` (
  `user_group_id` int(11) NOT NULL auto_increment,
  `name` varchar(64) collate utf8_bin NOT NULL,
  `permission` text collate utf8_bin NOT NULL,
  PRIMARY KEY  (`user_group_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=11 ;

-- 
-- Dumping data for table `oc_user_group`
-- 

INSERT INTO `oc_user_group` VALUES (1, 0x5175e1baa36e207472e1bb8b2063616f206e68e1baa574, 0x613a323a7b733a363a22616363657373223b613a3133383a7b693a303b733a31373a22636174616c6f672f617474726962757465223b693a313b733a32333a22636174616c6f672f6174747269627574655f67726f7570223b693a323b733a31363a22636174616c6f672f63617465676f7279223b693a333b733a31363a22636174616c6f672f646f776e6c6f6164223b693a343b733a31393a22636174616c6f672f696e666f726d6174696f6e223b693a353b733a32303a22636174616c6f672f6d616e756661637475726572223b693a363b733a31343a22636174616c6f672f6f7074696f6e223b693a373b733a31353a22636174616c6f672f70726f64756374223b693a383b733a31343a22636174616c6f672f726576696577223b693a393b733a31383a22636f6d6d6f6e2f66696c656d616e61676572223b693a31303b733a31313a22636f6e74656e742f636174223b693a31313b733a31353a22636f6e74656e742f636f6d6d656e74223b693a31323b733a31323a22636f6e74656e742f6e657773223b693a31333b733a31333a2264657369676e2f62616e6e6572223b693a31343b733a31333a2264657369676e2f6c61796f7574223b693a31353b733a31343a22657874656e73696f6e2f66656564223b693a31363b733a31363a22657874656e73696f6e2f6d6f64756c65223b693a31373b733a31373a22657874656e73696f6e2f7061796d656e74223b693a31383b733a31383a22657874656e73696f6e2f7368697070696e67223b693a31393b733a31353a22657874656e73696f6e2f746f74616c223b693a32303b733a31363a22666565642f676f6f676c655f62617365223b693a32313b733a31393a22666565642f676f6f676c655f736974656d6170223b693a32323b733a32303a226c6f63616c69736174696f6e2f636f756e747279223b693a32333b733a32313a226c6f63616c69736174696f6e2f63757272656e6379223b693a32343b733a32313a226c6f63616c69736174696f6e2f67656f5f7a6f6e65223b693a32353b733a32313a226c6f63616c69736174696f6e2f6c616e6775616765223b693a32363b733a32353a226c6f63616c69736174696f6e2f6c656e6774685f636c617373223b693a32373b733a32353a226c6f63616c69736174696f6e2f6f726465725f737461747573223b693a32383b733a32363a226c6f63616c69736174696f6e2f72657475726e5f616374696f6e223b693a32393b733a32363a226c6f63616c69736174696f6e2f72657475726e5f726561736f6e223b693a33303b733a32363a226c6f63616c69736174696f6e2f72657475726e5f737461747573223b693a33313b733a32353a226c6f63616c69736174696f6e2f73746f636b5f737461747573223b693a33323b733a32323a226c6f63616c69736174696f6e2f7461785f636c617373223b693a33333b733a32313a226c6f63616c69736174696f6e2f7461785f72617465223b693a33343b733a32353a226c6f63616c69736174696f6e2f7765696768745f636c617373223b693a33353b733a31373a226c6f63616c69736174696f6e2f7a6f6e65223b693a33363b733a31343a226d6f64756c652f6163636f756e74223b693a33373b733a31373a226d6f64756c652f6265737473656c6c6572223b693a33383b733a31353a226d6f64756c652f63617465676f7279223b693a33393b733a31353a226d6f64756c652f6665617475726564223b693a34303b733a31383a226d6f64756c652f696e666f726d6174696f6e223b693a34313b733a31333a226d6f64756c652f6c6174657374223b693a34323b733a31363a226d6f64756c652f736c69646573686f77223b693a34333b733a31343a226d6f64756c652f7370656369616c223b693a34343b733a31363a226d6f64756c652f746e745f7961686f6f223b693a34353b733a31343a226d6f64756c652f77656c636f6d65223b693a34363b733a31333a226e6577732f63617465676f7279223b693a34373b733a31313a226e6577732f636f6e666967223b693a34383b733a393a226e6577732f6e657773223b693a34393b733a31363a227061796d656e742f616c657274706179223b693a35303b733a32343a227061796d656e742f617574686f72697a656e65745f61696d223b693a35313b733a32313a227061796d656e742f62616e6b5f7472616e73666572223b693a35323b733a31343a227061796d656e742f636865717565223b693a35333b733a31313a227061796d656e742f636f64223b693a35343b733a32313a227061796d656e742f667265655f636865636b6f7574223b693a35353b733a31343a227061796d656e742f6c6971706179223b693a35363b733a32303a227061796d656e742f6d6f6e6579626f6f6b657273223b693a35373b733a31343a227061796d656e742f6e6f63686578223b693a35383b733a31353a227061796d656e742f7061796d617465223b693a35393b733a31363a227061796d656e742f706179706f696e74223b693a36303b733a32363a227061796d656e742f70657270657475616c5f7061796d656e7473223b693a36313b733a31343a227061796d656e742f70705f70726f223b693a36323b733a31373a227061796d656e742f70705f70726f5f756b223b693a36333b733a31393a227061796d656e742f70705f7374616e64617264223b693a36343b733a31353a227061796d656e742f73616765706179223b693a36353b733a32323a227061796d656e742f736167657061795f646972656374223b693a36363b733a31383a227061796d656e742f736167657061795f7573223b693a36373b733a31393a227061796d656e742f74776f636865636b6f7574223b693a36383b733a32383a227061796d656e742f7765625f7061796d656e745f736f667477617265223b693a36393b733a31363a227061796d656e742f776f726c64706179223b693a37303b733a32373a227265706f72742f616666696c696174655f636f6d6d697373696f6e223b693a37313b733a32323a227265706f72742f637573746f6d65725f637265646974223b693a37323b733a32313a227265706f72742f637573746f6d65725f6f72646572223b693a37333b733a32323a227265706f72742f637573746f6d65725f726577617264223b693a37343b733a32343a227265706f72742f70726f647563745f707572636861736564223b693a37353b733a32313a227265706f72742f70726f647563745f766965776564223b693a37363b733a31383a227265706f72742f73616c655f636f75706f6e223b693a37373b733a31373a227265706f72742f73616c655f6f72646572223b693a37383b733a31383a227265706f72742f73616c655f72657475726e223b693a37393b733a32303a227265706f72742f73616c655f7368697070696e67223b693a38303b733a31353a227265706f72742f73616c655f746178223b693a38313b733a31343a2273616c652f616666696c69617465223b693a38323b733a31323a2273616c652f636f6e74616374223b693a38333b733a31313a2273616c652f636f75706f6e223b693a38343b733a31333a2273616c652f637573746f6d6572223b693a38353b733a32333a2273616c652f637573746f6d65725f626c61636b6c697374223b693a38363b733a31393a2273616c652f637573746f6d65725f67726f7570223b693a38373b733a31303a2273616c652f6f72646572223b693a38383b733a31313a2273616c652f72657475726e223b693a38393b733a31323a2273616c652f766f7563686572223b693a39303b733a31383a2273616c652f766f75636865725f7468656d65223b693a39313b733a31353a2273657474696e672f73657474696e67223b693a39323b733a31333a2273657474696e672f73746f7265223b693a39333b733a31373a227368697070696e672f636974796c696e6b223b693a39343b733a31333a227368697070696e672f666c6174223b693a39353b733a31333a227368697070696e672f66726565223b693a39363b733a31333a227368697070696e672f6974656d223b693a39373b733a32333a227368697070696e672f70617263656c666f7263655f3438223b693a39383b733a31353a227368697070696e672f7069636b7570223b693a39393b733a31393a227368697070696e672f726f79616c5f6d61696c223b693a3130303b733a31323a227368697070696e672f757073223b693a3130313b733a31333a227368697070696e672f75737073223b693a3130323b733a31353a227368697070696e672f776569676874223b693a3130333b733a31313a22746f6f6c2f6261636b7570223b693a3130343b733a31343a22746f6f6c2f6572726f725f6c6f67223b693a3130353b733a31323a22746f74616c2f636f75706f6e223b693a3130363b733a31323a22746f74616c2f637265646974223b693a3130373b733a31343a22746f74616c2f68616e646c696e67223b693a3130383b733a31393a22746f74616c2f6c6f775f6f726465725f666565223b693a3130393b733a31323a22746f74616c2f726577617264223b693a3131303b733a31343a22746f74616c2f7368697070696e67223b693a3131313b733a31353a22746f74616c2f7375625f746f74616c223b693a3131323b733a393a22746f74616c2f746178223b693a3131333b733a31313a22746f74616c2f746f74616c223b693a3131343b733a31333a22746f74616c2f766f7563686572223b693a3131353b733a393a22757365722f75736572223b693a3131363b733a32303a22757365722f757365725f7065726d697373696f6e223b693a3131373b733a31303a226d6f64756c652f636174223b693a3131383b733a31363a226d6f64756c652f746e745f7961686f6f223b693a3131393b733a31383a226d6f64756c652f696e666f726d6174696f6e223b693a3132303b733a31343a226d6f64756c652f77656c636f6d65223b693a3132313b733a31383a226d6f64756c652f746e745f77656c636f6d65223b693a3132323b733a32313a226d6f64756c652f746e745f70726f64756374636174223b693a3132333b733a31333a226d6f64756c652f62616e6e6572223b693a3132343b733a31383a226d6f64756c652f746e745f77656174686572223b693a3132353b733a31373a226d6f64756c652f746e745f72616e646f6d223b693a3132363b733a31343a226d6f64756c652f76697369746f72223b693a3132373b733a31373a226d6f64756c652f6265737473656c6c6572223b693a3132383b733a31343a226d6f64756c652f7370656369616c223b693a3132393b733a31333a227368697070696e672f66726565223b693a3133303b733a32313a227061796d656e742f62616e6b5f7472616e73666572223b693a3133313b733a31363a227061796d656e742f616c657274706179223b693a3133323b733a31383a227061796d656e742f70705f65787072657373223b693a3133333b733a31373a226d6f64756c652f6e6577736c6174657374223b693a3133343b733a31393a226d6f64756c652f6e6577736665617475726564223b693a3133353b733a31393a226d6f64756c652f6e6577736665617475726564223b693a3133363b733a31373a226d6f64756c652f6e6577736c6174657374223b693a3133373b733a31383a226d6f64756c652f746e745f6e657773636174223b7d733a363a226d6f64696679223b613a3133383a7b693a303b733a31373a22636174616c6f672f617474726962757465223b693a313b733a32333a22636174616c6f672f6174747269627574655f67726f7570223b693a323b733a31363a22636174616c6f672f63617465676f7279223b693a333b733a31363a22636174616c6f672f646f776e6c6f6164223b693a343b733a31393a22636174616c6f672f696e666f726d6174696f6e223b693a353b733a32303a22636174616c6f672f6d616e756661637475726572223b693a363b733a31343a22636174616c6f672f6f7074696f6e223b693a373b733a31353a22636174616c6f672f70726f64756374223b693a383b733a31343a22636174616c6f672f726576696577223b693a393b733a31383a22636f6d6d6f6e2f66696c656d616e61676572223b693a31303b733a31313a22636f6e74656e742f636174223b693a31313b733a31353a22636f6e74656e742f636f6d6d656e74223b693a31323b733a31323a22636f6e74656e742f6e657773223b693a31333b733a31333a2264657369676e2f62616e6e6572223b693a31343b733a31333a2264657369676e2f6c61796f7574223b693a31353b733a31343a22657874656e73696f6e2f66656564223b693a31363b733a31363a22657874656e73696f6e2f6d6f64756c65223b693a31373b733a31373a22657874656e73696f6e2f7061796d656e74223b693a31383b733a31383a22657874656e73696f6e2f7368697070696e67223b693a31393b733a31353a22657874656e73696f6e2f746f74616c223b693a32303b733a31363a22666565642f676f6f676c655f62617365223b693a32313b733a31393a22666565642f676f6f676c655f736974656d6170223b693a32323b733a32303a226c6f63616c69736174696f6e2f636f756e747279223b693a32333b733a32313a226c6f63616c69736174696f6e2f63757272656e6379223b693a32343b733a32313a226c6f63616c69736174696f6e2f67656f5f7a6f6e65223b693a32353b733a32313a226c6f63616c69736174696f6e2f6c616e6775616765223b693a32363b733a32353a226c6f63616c69736174696f6e2f6c656e6774685f636c617373223b693a32373b733a32353a226c6f63616c69736174696f6e2f6f726465725f737461747573223b693a32383b733a32363a226c6f63616c69736174696f6e2f72657475726e5f616374696f6e223b693a32393b733a32363a226c6f63616c69736174696f6e2f72657475726e5f726561736f6e223b693a33303b733a32363a226c6f63616c69736174696f6e2f72657475726e5f737461747573223b693a33313b733a32353a226c6f63616c69736174696f6e2f73746f636b5f737461747573223b693a33323b733a32323a226c6f63616c69736174696f6e2f7461785f636c617373223b693a33333b733a32313a226c6f63616c69736174696f6e2f7461785f72617465223b693a33343b733a32353a226c6f63616c69736174696f6e2f7765696768745f636c617373223b693a33353b733a31373a226c6f63616c69736174696f6e2f7a6f6e65223b693a33363b733a31343a226d6f64756c652f6163636f756e74223b693a33373b733a31373a226d6f64756c652f6265737473656c6c6572223b693a33383b733a31353a226d6f64756c652f63617465676f7279223b693a33393b733a31353a226d6f64756c652f6665617475726564223b693a34303b733a31383a226d6f64756c652f696e666f726d6174696f6e223b693a34313b733a31333a226d6f64756c652f6c6174657374223b693a34323b733a31363a226d6f64756c652f736c69646573686f77223b693a34333b733a31343a226d6f64756c652f7370656369616c223b693a34343b733a31363a226d6f64756c652f746e745f7961686f6f223b693a34353b733a31343a226d6f64756c652f77656c636f6d65223b693a34363b733a31333a226e6577732f63617465676f7279223b693a34373b733a31313a226e6577732f636f6e666967223b693a34383b733a393a226e6577732f6e657773223b693a34393b733a31363a227061796d656e742f616c657274706179223b693a35303b733a32343a227061796d656e742f617574686f72697a656e65745f61696d223b693a35313b733a32313a227061796d656e742f62616e6b5f7472616e73666572223b693a35323b733a31343a227061796d656e742f636865717565223b693a35333b733a31313a227061796d656e742f636f64223b693a35343b733a32313a227061796d656e742f667265655f636865636b6f7574223b693a35353b733a31343a227061796d656e742f6c6971706179223b693a35363b733a32303a227061796d656e742f6d6f6e6579626f6f6b657273223b693a35373b733a31343a227061796d656e742f6e6f63686578223b693a35383b733a31353a227061796d656e742f7061796d617465223b693a35393b733a31363a227061796d656e742f706179706f696e74223b693a36303b733a32363a227061796d656e742f70657270657475616c5f7061796d656e7473223b693a36313b733a31343a227061796d656e742f70705f70726f223b693a36323b733a31373a227061796d656e742f70705f70726f5f756b223b693a36333b733a31393a227061796d656e742f70705f7374616e64617264223b693a36343b733a31353a227061796d656e742f73616765706179223b693a36353b733a32323a227061796d656e742f736167657061795f646972656374223b693a36363b733a31383a227061796d656e742f736167657061795f7573223b693a36373b733a31393a227061796d656e742f74776f636865636b6f7574223b693a36383b733a32383a227061796d656e742f7765625f7061796d656e745f736f667477617265223b693a36393b733a31363a227061796d656e742f776f726c64706179223b693a37303b733a32373a227265706f72742f616666696c696174655f636f6d6d697373696f6e223b693a37313b733a32323a227265706f72742f637573746f6d65725f637265646974223b693a37323b733a32313a227265706f72742f637573746f6d65725f6f72646572223b693a37333b733a32323a227265706f72742f637573746f6d65725f726577617264223b693a37343b733a32343a227265706f72742f70726f647563745f707572636861736564223b693a37353b733a32313a227265706f72742f70726f647563745f766965776564223b693a37363b733a31383a227265706f72742f73616c655f636f75706f6e223b693a37373b733a31373a227265706f72742f73616c655f6f72646572223b693a37383b733a31383a227265706f72742f73616c655f72657475726e223b693a37393b733a32303a227265706f72742f73616c655f7368697070696e67223b693a38303b733a31353a227265706f72742f73616c655f746178223b693a38313b733a31343a2273616c652f616666696c69617465223b693a38323b733a31323a2273616c652f636f6e74616374223b693a38333b733a31313a2273616c652f636f75706f6e223b693a38343b733a31333a2273616c652f637573746f6d6572223b693a38353b733a32333a2273616c652f637573746f6d65725f626c61636b6c697374223b693a38363b733a31393a2273616c652f637573746f6d65725f67726f7570223b693a38373b733a31303a2273616c652f6f72646572223b693a38383b733a31313a2273616c652f72657475726e223b693a38393b733a31323a2273616c652f766f7563686572223b693a39303b733a31383a2273616c652f766f75636865725f7468656d65223b693a39313b733a31353a2273657474696e672f73657474696e67223b693a39323b733a31333a2273657474696e672f73746f7265223b693a39333b733a31373a227368697070696e672f636974796c696e6b223b693a39343b733a31333a227368697070696e672f666c6174223b693a39353b733a31333a227368697070696e672f66726565223b693a39363b733a31333a227368697070696e672f6974656d223b693a39373b733a32333a227368697070696e672f70617263656c666f7263655f3438223b693a39383b733a31353a227368697070696e672f7069636b7570223b693a39393b733a31393a227368697070696e672f726f79616c5f6d61696c223b693a3130303b733a31323a227368697070696e672f757073223b693a3130313b733a31333a227368697070696e672f75737073223b693a3130323b733a31353a227368697070696e672f776569676874223b693a3130333b733a31313a22746f6f6c2f6261636b7570223b693a3130343b733a31343a22746f6f6c2f6572726f725f6c6f67223b693a3130353b733a31323a22746f74616c2f636f75706f6e223b693a3130363b733a31323a22746f74616c2f637265646974223b693a3130373b733a31343a22746f74616c2f68616e646c696e67223b693a3130383b733a31393a22746f74616c2f6c6f775f6f726465725f666565223b693a3130393b733a31323a22746f74616c2f726577617264223b693a3131303b733a31343a22746f74616c2f7368697070696e67223b693a3131313b733a31353a22746f74616c2f7375625f746f74616c223b693a3131323b733a393a22746f74616c2f746178223b693a3131333b733a31313a22746f74616c2f746f74616c223b693a3131343b733a31333a22746f74616c2f766f7563686572223b693a3131353b733a393a22757365722f75736572223b693a3131363b733a32303a22757365722f757365725f7065726d697373696f6e223b693a3131373b733a31303a226d6f64756c652f636174223b693a3131383b733a31363a226d6f64756c652f746e745f7961686f6f223b693a3131393b733a31383a226d6f64756c652f696e666f726d6174696f6e223b693a3132303b733a31343a226d6f64756c652f77656c636f6d65223b693a3132313b733a31383a226d6f64756c652f746e745f77656c636f6d65223b693a3132323b733a32313a226d6f64756c652f746e745f70726f64756374636174223b693a3132333b733a31333a226d6f64756c652f62616e6e6572223b693a3132343b733a31383a226d6f64756c652f746e745f77656174686572223b693a3132353b733a31373a226d6f64756c652f746e745f72616e646f6d223b693a3132363b733a31343a226d6f64756c652f76697369746f72223b693a3132373b733a31373a226d6f64756c652f6265737473656c6c6572223b693a3132383b733a31343a226d6f64756c652f7370656369616c223b693a3132393b733a31333a227368697070696e672f66726565223b693a3133303b733a32313a227061796d656e742f62616e6b5f7472616e73666572223b693a3133313b733a31363a227061796d656e742f616c657274706179223b693a3133323b733a31383a227061796d656e742f70705f65787072657373223b693a3133333b733a31373a226d6f64756c652f6e6577736c6174657374223b693a3133343b733a31393a226d6f64756c652f6e6577736665617475726564223b693a3133353b733a31393a226d6f64756c652f6e6577736665617475726564223b693a3133363b733a31373a226d6f64756c652f6e6577736c6174657374223b693a3133373b733a31383a226d6f64756c652f746e745f6e657773636174223b7d7d);
INSERT INTO `oc_user_group` VALUES (10, 0x5175e1baa36e207472e1bb8b, 0x613a313a7b733a363a22616363657373223b613a3132303a7b693a303b733a31373a22636174616c6f672f617474726962757465223b693a313b733a32333a22636174616c6f672f6174747269627574655f67726f7570223b693a323b733a31363a22636174616c6f672f63617465676f7279223b693a333b733a31363a22636174616c6f672f646f776e6c6f6164223b693a343b733a31393a22636174616c6f672f696e666f726d6174696f6e223b693a353b733a32303a22636174616c6f672f6d616e756661637475726572223b693a363b733a31343a22636174616c6f672f6f7074696f6e223b693a373b733a31353a22636174616c6f672f70726f64756374223b693a383b733a31343a22636174616c6f672f726576696577223b693a393b733a31383a22636f6d6d6f6e2f66696c656d616e61676572223b693a31303b733a31313a22636f6e74656e742f636174223b693a31313b733a31353a22636f6e74656e742f636f6d6d656e74223b693a31323b733a31323a22636f6e74656e742f6e657773223b693a31333b733a31333a2264657369676e2f62616e6e6572223b693a31343b733a31333a2264657369676e2f6c61796f7574223b693a31353b733a31343a22657874656e73696f6e2f66656564223b693a31363b733a31363a22657874656e73696f6e2f6d6f64756c65223b693a31373b733a31373a22657874656e73696f6e2f7061796d656e74223b693a31383b733a31383a22657874656e73696f6e2f7368697070696e67223b693a31393b733a31353a22657874656e73696f6e2f746f74616c223b693a32303b733a31363a22666565642f676f6f676c655f62617365223b693a32313b733a31393a22666565642f676f6f676c655f736974656d6170223b693a32323b733a32303a226c6f63616c69736174696f6e2f636f756e747279223b693a32333b733a32313a226c6f63616c69736174696f6e2f63757272656e6379223b693a32343b733a32313a226c6f63616c69736174696f6e2f67656f5f7a6f6e65223b693a32353b733a32313a226c6f63616c69736174696f6e2f6c616e6775616765223b693a32363b733a32353a226c6f63616c69736174696f6e2f6c656e6774685f636c617373223b693a32373b733a32353a226c6f63616c69736174696f6e2f6f726465725f737461747573223b693a32383b733a32363a226c6f63616c69736174696f6e2f72657475726e5f616374696f6e223b693a32393b733a32363a226c6f63616c69736174696f6e2f72657475726e5f726561736f6e223b693a33303b733a32363a226c6f63616c69736174696f6e2f72657475726e5f737461747573223b693a33313b733a32353a226c6f63616c69736174696f6e2f73746f636b5f737461747573223b693a33323b733a32323a226c6f63616c69736174696f6e2f7461785f636c617373223b693a33333b733a32313a226c6f63616c69736174696f6e2f7461785f72617465223b693a33343b733a32353a226c6f63616c69736174696f6e2f7765696768745f636c617373223b693a33353b733a31373a226c6f63616c69736174696f6e2f7a6f6e65223b693a33363b733a31343a226d6f64756c652f6163636f756e74223b693a33373b733a31333a226d6f64756c652f62616e6e6572223b693a33383b733a31373a226d6f64756c652f6265737473656c6c6572223b693a33393b733a31303a226d6f64756c652f636174223b693a34303b733a31353a226d6f64756c652f63617465676f7279223b693a34313b733a31353a226d6f64756c652f6665617475726564223b693a34323b733a31383a226d6f64756c652f696e666f726d6174696f6e223b693a34333b733a31333a226d6f64756c652f6c6174657374223b693a34343b733a31363a226d6f64756c652f736c69646573686f77223b693a34353b733a31343a226d6f64756c652f7370656369616c223b693a34363b733a32313a226d6f64756c652f746e745f70726f64756374636174223b693a34373b733a31373a226d6f64756c652f746e745f72616e646f6d223b693a34383b733a31383a226d6f64756c652f746e745f77656174686572223b693a34393b733a31383a226d6f64756c652f746e745f77656c636f6d65223b693a35303b733a31363a226d6f64756c652f746e745f7961686f6f223b693a35313b733a31343a226d6f64756c652f76697369746f72223b693a35323b733a31363a227061796d656e742f616c657274706179223b693a35333b733a32343a227061796d656e742f617574686f72697a656e65745f61696d223b693a35343b733a32313a227061796d656e742f62616e6b5f7472616e73666572223b693a35353b733a31343a227061796d656e742f636865717565223b693a35363b733a31313a227061796d656e742f636f64223b693a35373b733a32313a227061796d656e742f667265655f636865636b6f7574223b693a35383b733a31343a227061796d656e742f6c6971706179223b693a35393b733a32303a227061796d656e742f6d6f6e6579626f6f6b657273223b693a36303b733a31343a227061796d656e742f6e6f63686578223b693a36313b733a31353a227061796d656e742f7061796d617465223b693a36323b733a31363a227061796d656e742f706179706f696e74223b693a36333b733a32363a227061796d656e742f70657270657475616c5f7061796d656e7473223b693a36343b733a31343a227061796d656e742f70705f70726f223b693a36353b733a31373a227061796d656e742f70705f70726f5f756b223b693a36363b733a31393a227061796d656e742f70705f7374616e64617264223b693a36373b733a31353a227061796d656e742f73616765706179223b693a36383b733a32323a227061796d656e742f736167657061795f646972656374223b693a36393b733a31383a227061796d656e742f736167657061795f7573223b693a37303b733a31393a227061796d656e742f74776f636865636b6f7574223b693a37313b733a32383a227061796d656e742f7765625f7061796d656e745f736f667477617265223b693a37323b733a31363a227061796d656e742f776f726c64706179223b693a37333b733a32373a227265706f72742f616666696c696174655f636f6d6d697373696f6e223b693a37343b733a32323a227265706f72742f637573746f6d65725f637265646974223b693a37353b733a32313a227265706f72742f637573746f6d65725f6f72646572223b693a37363b733a32323a227265706f72742f637573746f6d65725f726577617264223b693a37373b733a32343a227265706f72742f70726f647563745f707572636861736564223b693a37383b733a32313a227265706f72742f70726f647563745f766965776564223b693a37393b733a31383a227265706f72742f73616c655f636f75706f6e223b693a38303b733a31373a227265706f72742f73616c655f6f72646572223b693a38313b733a31383a227265706f72742f73616c655f72657475726e223b693a38323b733a32303a227265706f72742f73616c655f7368697070696e67223b693a38333b733a31353a227265706f72742f73616c655f746178223b693a38343b733a31343a2273616c652f616666696c69617465223b693a38353b733a31323a2273616c652f636f6e74616374223b693a38363b733a31313a2273616c652f636f75706f6e223b693a38373b733a31333a2273616c652f637573746f6d6572223b693a38383b733a32333a2273616c652f637573746f6d65725f626c61636b6c697374223b693a38393b733a31393a2273616c652f637573746f6d65725f67726f7570223b693a39303b733a31303a2273616c652f6f72646572223b693a39313b733a31313a2273616c652f72657475726e223b693a39323b733a31323a2273616c652f766f7563686572223b693a39333b733a31383a2273616c652f766f75636865725f7468656d65223b693a39343b733a31353a2273657474696e672f73657474696e67223b693a39353b733a31333a2273657474696e672f73746f7265223b693a39363b733a31373a227368697070696e672f636974796c696e6b223b693a39373b733a31333a227368697070696e672f666c6174223b693a39383b733a31333a227368697070696e672f66726565223b693a39393b733a31333a227368697070696e672f6974656d223b693a3130303b733a32333a227368697070696e672f70617263656c666f7263655f3438223b693a3130313b733a31353a227368697070696e672f7069636b7570223b693a3130323b733a31393a227368697070696e672f726f79616c5f6d61696c223b693a3130333b733a31323a227368697070696e672f757073223b693a3130343b733a31333a227368697070696e672f75737073223b693a3130353b733a31353a227368697070696e672f776569676874223b693a3130363b733a31313a22746f6f6c2f6261636b7570223b693a3130373b733a31343a22746f6f6c2f6572726f725f6c6f67223b693a3130383b733a31323a22746f74616c2f636f75706f6e223b693a3130393b733a31323a22746f74616c2f637265646974223b693a3131303b733a31343a22746f74616c2f68616e646c696e67223b693a3131313b733a31393a22746f74616c2f6c6f775f6f726465725f666565223b693a3131323b733a31323a22746f74616c2f726577617264223b693a3131333b733a31343a22746f74616c2f7368697070696e67223b693a3131343b733a31353a22746f74616c2f7375625f746f74616c223b693a3131353b733a393a22746f74616c2f746178223b693a3131363b733a31313a22746f74616c2f746f74616c223b693a3131373b733a31333a22746f74616c2f766f7563686572223b693a3131383b733a393a22757365722f75736572223b693a3131393b733a32303a22757365722f757365725f7065726d697373696f6e223b7d7d);

-- --------------------------------------------------------

-- 
-- Table structure for table `oc_voucher`
-- 

DROP TABLE IF EXISTS `oc_voucher`;
CREATE TABLE `oc_voucher` (
  `voucher_id` int(11) NOT NULL auto_increment,
  `order_id` int(11) NOT NULL,
  `code` varchar(10) collate utf8_bin NOT NULL,
  `from_name` varchar(64) collate utf8_bin NOT NULL,
  `from_email` varchar(96) collate utf8_bin NOT NULL,
  `to_name` varchar(64) collate utf8_bin NOT NULL,
  `to_email` varchar(96) collate utf8_bin NOT NULL,
  `voucher_theme_id` int(11) NOT NULL,
  `message` text collate utf8_bin NOT NULL,
  `amount` decimal(15,4) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL default '0000-00-00 00:00:00',
  PRIMARY KEY  (`voucher_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=1 ;

-- 
-- Dumping data for table `oc_voucher`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `oc_voucher_history`
-- 

DROP TABLE IF EXISTS `oc_voucher_history`;
CREATE TABLE `oc_voucher_history` (
  `voucher_history_id` int(11) NOT NULL auto_increment,
  `voucher_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `amount` decimal(15,4) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY  (`voucher_history_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=1 ;

-- 
-- Dumping data for table `oc_voucher_history`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `oc_voucher_theme`
-- 

DROP TABLE IF EXISTS `oc_voucher_theme`;
CREATE TABLE `oc_voucher_theme` (
  `voucher_theme_id` int(11) NOT NULL auto_increment,
  `image` varchar(255) collate utf8_bin NOT NULL,
  PRIMARY KEY  (`voucher_theme_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=9 ;

-- 
-- Dumping data for table `oc_voucher_theme`
-- 

INSERT INTO `oc_voucher_theme` VALUES (8, 0x646174612f63616e6f6e5f656f735f35645f322e6a7067);
INSERT INTO `oc_voucher_theme` VALUES (7, 0x646174612f676966742d766f75636865722d62697274686461792e6a7067);
INSERT INTO `oc_voucher_theme` VALUES (6, 0x646174612f6170706c655f6c6f676f2e6a7067);

-- --------------------------------------------------------

-- 
-- Table structure for table `oc_voucher_theme_description`
-- 

DROP TABLE IF EXISTS `oc_voucher_theme_description`;
CREATE TABLE `oc_voucher_theme_description` (
  `voucher_theme_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(32) collate utf8_bin NOT NULL,
  PRIMARY KEY  (`voucher_theme_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- 
-- Dumping data for table `oc_voucher_theme_description`
-- 

INSERT INTO `oc_voucher_theme_description` VALUES (6, 2, 0x4769c3a16e672073696e68);
INSERT INTO `oc_voucher_theme_description` VALUES (7, 2, 0x53696e68206e68e1baad74);
INSERT INTO `oc_voucher_theme_description` VALUES (8, 2, 0x4e6768e1bb89206ce1bb85);

-- --------------------------------------------------------

-- 
-- Table structure for table `oc_weight_class`
-- 

DROP TABLE IF EXISTS `oc_weight_class`;
CREATE TABLE `oc_weight_class` (
  `weight_class_id` int(11) NOT NULL auto_increment,
  `value` decimal(15,8) NOT NULL default '0.00000000',
  PRIMARY KEY  (`weight_class_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=7 ;

-- 
-- Dumping data for table `oc_weight_class`
-- 

INSERT INTO `oc_weight_class` VALUES (1, 1.00000000);
INSERT INTO `oc_weight_class` VALUES (2, 1000.00000000);
INSERT INTO `oc_weight_class` VALUES (5, 2.20460000);
INSERT INTO `oc_weight_class` VALUES (6, 35.27400000);

-- --------------------------------------------------------

-- 
-- Table structure for table `oc_weight_class_description`
-- 

DROP TABLE IF EXISTS `oc_weight_class_description`;
CREATE TABLE `oc_weight_class_description` (
  `weight_class_id` int(11) NOT NULL auto_increment,
  `language_id` int(11) NOT NULL,
  `title` varchar(32) collate utf8_bin NOT NULL,
  `unit` varchar(4) collate utf8_bin NOT NULL default '',
  PRIMARY KEY  (`weight_class_id`,`language_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=7 ;

-- 
-- Dumping data for table `oc_weight_class_description`
-- 

INSERT INTO `oc_weight_class_description` VALUES (1, 2, 0x4b696c6f6772616d, 0x6b67);
INSERT INTO `oc_weight_class_description` VALUES (2, 2, 0x4772616d, 0x67);
INSERT INTO `oc_weight_class_description` VALUES (5, 2, 0x506f756e6420, 0x6c62);
INSERT INTO `oc_weight_class_description` VALUES (6, 2, 0x4f756e6365, 0x6f7a);

-- --------------------------------------------------------

-- 
-- Table structure for table `oc_zone`
-- 

DROP TABLE IF EXISTS `oc_zone`;
CREATE TABLE `oc_zone` (
  `zone_id` int(11) NOT NULL auto_increment,
  `country_id` int(11) NOT NULL,
  `code` varchar(32) collate utf8_bin NOT NULL default '',
  `name` varchar(128) collate utf8_bin NOT NULL,
  `status` tinyint(1) NOT NULL default '1',
  PRIMARY KEY  (`zone_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=3999 ;

-- 
-- Dumping data for table `oc_zone`
-- 

INSERT INTO `oc_zone` VALUES (1, 1, 0x424453, 0x426164616b687368616e, 1);
INSERT INTO `oc_zone` VALUES (2, 1, 0x424447, 0x42616467686973, 1);
INSERT INTO `oc_zone` VALUES (3, 1, 0x42474c, 0x426167686c616e, 1);
INSERT INTO `oc_zone` VALUES (4, 1, 0x42414c, 0x42616c6b68, 1);
INSERT INTO `oc_zone` VALUES (5, 1, 0x42414d, 0x42616d69616e, 1);
INSERT INTO `oc_zone` VALUES (6, 1, 0x465241, 0x4661726168, 1);
INSERT INTO `oc_zone` VALUES (7, 1, 0x465942, 0x466172796162, 1);
INSERT INTO `oc_zone` VALUES (8, 1, 0x474841, 0x4768617a6e69, 1);
INSERT INTO `oc_zone` VALUES (9, 1, 0x47484f, 0x47686f7772, 1);
INSERT INTO `oc_zone` VALUES (10, 1, 0x48454c, 0x48656c6d616e64, 1);
INSERT INTO `oc_zone` VALUES (11, 1, 0x484552, 0x4865726174, 1);
INSERT INTO `oc_zone` VALUES (12, 1, 0x4a4f57, 0x4a6f777a6a616e, 1);
INSERT INTO `oc_zone` VALUES (13, 1, 0x4b4142, 0x4b6162756c, 1);
INSERT INTO `oc_zone` VALUES (14, 1, 0x4b414e, 0x4b616e6461686172, 1);
INSERT INTO `oc_zone` VALUES (15, 1, 0x4b4150, 0x4b6170697361, 1);
INSERT INTO `oc_zone` VALUES (16, 1, 0x4b484f, 0x4b686f7374, 1);
INSERT INTO `oc_zone` VALUES (17, 1, 0x4b4e52, 0x4b6f6e6172, 1);
INSERT INTO `oc_zone` VALUES (18, 1, 0x4b445a, 0x4b6f6e646f7a, 1);
INSERT INTO `oc_zone` VALUES (19, 1, 0x4c4147, 0x4c6167686d616e, 1);
INSERT INTO `oc_zone` VALUES (20, 1, 0x4c4f57, 0x4c6f77676172, 1);
INSERT INTO `oc_zone` VALUES (21, 1, 0x4e414e, 0x4e616e677261686172, 1);
INSERT INTO `oc_zone` VALUES (22, 1, 0x4e494d, 0x4e696d72757a, 1);
INSERT INTO `oc_zone` VALUES (23, 1, 0x4e5552, 0x4e7572657374616e, 1);
INSERT INTO `oc_zone` VALUES (24, 1, 0x4f5255, 0x4f72757a67616e, 1);
INSERT INTO `oc_zone` VALUES (25, 1, 0x504941, 0x50616b746961, 1);
INSERT INTO `oc_zone` VALUES (26, 1, 0x504b41, 0x50616b74696b61, 1);
INSERT INTO `oc_zone` VALUES (27, 1, 0x504152, 0x50617277616e, 1);
INSERT INTO `oc_zone` VALUES (28, 1, 0x53414d, 0x53616d616e67616e, 1);
INSERT INTO `oc_zone` VALUES (29, 1, 0x534152, 0x5361722d6520506f6c, 1);
INSERT INTO `oc_zone` VALUES (30, 1, 0x54414b, 0x54616b686172, 1);
INSERT INTO `oc_zone` VALUES (31, 1, 0x574152, 0x57617264616b, 1);
INSERT INTO `oc_zone` VALUES (32, 1, 0x5a4142, 0x5a61626f6c, 1);
INSERT INTO `oc_zone` VALUES (33, 2, 0x4252, 0x4265726174, 1);
INSERT INTO `oc_zone` VALUES (34, 2, 0x4255, 0x42756c71697a65, 1);
INSERT INTO `oc_zone` VALUES (35, 2, 0x444c, 0x44656c76696e65, 1);
INSERT INTO `oc_zone` VALUES (36, 2, 0x4456, 0x4465766f6c6c, 1);
INSERT INTO `oc_zone` VALUES (37, 2, 0x4449, 0x4469626572, 1);
INSERT INTO `oc_zone` VALUES (38, 2, 0x4452, 0x447572726573, 1);
INSERT INTO `oc_zone` VALUES (39, 2, 0x454c, 0x456c626173616e, 1);
INSERT INTO `oc_zone` VALUES (40, 2, 0x4552, 0x4b6f6c6f6e6a65, 1);
INSERT INTO `oc_zone` VALUES (41, 2, 0x4652, 0x46696572, 1);
INSERT INTO `oc_zone` VALUES (42, 2, 0x474a, 0x476a69726f6b6173746572, 1);
INSERT INTO `oc_zone` VALUES (43, 2, 0x4752, 0x4772616d7368, 1);
INSERT INTO `oc_zone` VALUES (44, 2, 0x4841, 0x486173, 1);
INSERT INTO `oc_zone` VALUES (45, 2, 0x4b41, 0x4b6176616a65, 1);
INSERT INTO `oc_zone` VALUES (46, 2, 0x4b42, 0x4b757262696e, 1);
INSERT INTO `oc_zone` VALUES (47, 2, 0x4b43, 0x4b75636f7665, 1);
INSERT INTO `oc_zone` VALUES (48, 2, 0x4b4f, 0x4b6f726365, 1);
INSERT INTO `oc_zone` VALUES (49, 2, 0x4b52, 0x4b72756a65, 1);
INSERT INTO `oc_zone` VALUES (50, 2, 0x4b55, 0x4b756b6573, 1);
INSERT INTO `oc_zone` VALUES (51, 2, 0x4c42, 0x4c696272617a6864, 1);
INSERT INTO `oc_zone` VALUES (52, 2, 0x4c45, 0x4c657a6865, 1);
INSERT INTO `oc_zone` VALUES (53, 2, 0x4c55, 0x4c7573686e6a65, 1);
INSERT INTO `oc_zone` VALUES (54, 2, 0x4d4d, 0x4d616c6573692065204d61646865, 1);
INSERT INTO `oc_zone` VALUES (55, 2, 0x4d4b, 0x4d616c6c616b6173746572, 1);
INSERT INTO `oc_zone` VALUES (56, 2, 0x4d54, 0x4d6174, 1);
INSERT INTO `oc_zone` VALUES (57, 2, 0x4d52, 0x4d697264697465, 1);
INSERT INTO `oc_zone` VALUES (58, 2, 0x5051, 0x506571696e, 1);
INSERT INTO `oc_zone` VALUES (59, 2, 0x5052, 0x5065726d6574, 1);
INSERT INTO `oc_zone` VALUES (60, 2, 0x5047, 0x506f677261646563, 1);
INSERT INTO `oc_zone` VALUES (61, 2, 0x5055, 0x50756b65, 1);
INSERT INTO `oc_zone` VALUES (62, 2, 0x5348, 0x53686b6f646572, 1);
INSERT INTO `oc_zone` VALUES (63, 2, 0x534b, 0x536b7261706172, 1);
INSERT INTO `oc_zone` VALUES (64, 2, 0x5352, 0x536172616e6465, 1);
INSERT INTO `oc_zone` VALUES (65, 2, 0x5445, 0x546570656c656e65, 1);
INSERT INTO `oc_zone` VALUES (66, 2, 0x5450, 0x54726f706f6a65, 1);
INSERT INTO `oc_zone` VALUES (67, 2, 0x5452, 0x546972616e65, 1);
INSERT INTO `oc_zone` VALUES (68, 2, 0x564c, 0x566c6f7265, 1);
INSERT INTO `oc_zone` VALUES (69, 3, 0x414452, 0x4164726172, 1);
INSERT INTO `oc_zone` VALUES (70, 3, 0x414445, 0x41696e204465666c61, 1);
INSERT INTO `oc_zone` VALUES (71, 3, 0x415445, 0x41696e2054656d6f756368656e74, 1);
INSERT INTO `oc_zone` VALUES (72, 3, 0x414c47, 0x416c676572, 1);
INSERT INTO `oc_zone` VALUES (73, 3, 0x414e4e, 0x416e6e616261, 1);
INSERT INTO `oc_zone` VALUES (74, 3, 0x424154, 0x4261746e61, 1);
INSERT INTO `oc_zone` VALUES (75, 3, 0x424543, 0x426563686172, 1);
INSERT INTO `oc_zone` VALUES (76, 3, 0x42454a, 0x42656a616961, 1);
INSERT INTO `oc_zone` VALUES (77, 3, 0x424953, 0x4269736b7261, 1);
INSERT INTO `oc_zone` VALUES (78, 3, 0x424c49, 0x426c696461, 1);
INSERT INTO `oc_zone` VALUES (79, 3, 0x424241, 0x426f72646a20426f7520417272657269646a, 1);
INSERT INTO `oc_zone` VALUES (80, 3, 0x424f41, 0x426f75697261, 1);
INSERT INTO `oc_zone` VALUES (81, 3, 0x424d44, 0x426f756d6572646573, 1);
INSERT INTO `oc_zone` VALUES (82, 3, 0x43484c, 0x43686c6566, 1);
INSERT INTO `oc_zone` VALUES (83, 3, 0x434f4e, 0x436f6e7374616e74696e65, 1);
INSERT INTO `oc_zone` VALUES (84, 3, 0x444a45, 0x446a656c6661, 1);
INSERT INTO `oc_zone` VALUES (85, 3, 0x454241, 0x456c20426179616468, 1);
INSERT INTO `oc_zone` VALUES (86, 3, 0x454f55, 0x456c204f756564, 1);
INSERT INTO `oc_zone` VALUES (87, 3, 0x455441, 0x456c2054617266, 1);
INSERT INTO `oc_zone` VALUES (88, 3, 0x474841, 0x4768617264616961, 1);
INSERT INTO `oc_zone` VALUES (89, 3, 0x475545, 0x4775656c6d61, 1);
INSERT INTO `oc_zone` VALUES (90, 3, 0x494c4c, 0x496c6c697a69, 1);
INSERT INTO `oc_zone` VALUES (91, 3, 0x4a494a, 0x4a696a656c, 1);
INSERT INTO `oc_zone` VALUES (92, 3, 0x4b4845, 0x4b68656e6368656c61, 1);
INSERT INTO `oc_zone` VALUES (93, 3, 0x4c4147, 0x4c6167686f756174, 1);
INSERT INTO `oc_zone` VALUES (94, 3, 0x4d5541, 0x4d7561736b6172, 1);
INSERT INTO `oc_zone` VALUES (95, 3, 0x4d4544, 0x4d65646561, 1);
INSERT INTO `oc_zone` VALUES (96, 3, 0x4d494c, 0x4d696c61, 1);
INSERT INTO `oc_zone` VALUES (97, 3, 0x4d4f53, 0x4d6f73746167616e656d, 1);
INSERT INTO `oc_zone` VALUES (98, 3, 0x4d5349, 0x4d2753696c61, 1);
INSERT INTO `oc_zone` VALUES (99, 3, 0x4e4141, 0x4e61616d61, 1);
INSERT INTO `oc_zone` VALUES (100, 3, 0x4f5241, 0x4f72616e, 1);
INSERT INTO `oc_zone` VALUES (101, 3, 0x4f5541, 0x4f756172676c61, 1);
INSERT INTO `oc_zone` VALUES (102, 3, 0x4f4542, 0x4f756d20656c2d426f7561676869, 1);
INSERT INTO `oc_zone` VALUES (103, 3, 0x52454c, 0x52656c697a616e65, 1);
INSERT INTO `oc_zone` VALUES (104, 3, 0x534149, 0x5361696461, 1);
INSERT INTO `oc_zone` VALUES (105, 3, 0x534554, 0x5365746966, 1);
INSERT INTO `oc_zone` VALUES (106, 3, 0x534241, 0x536964692042656c204162626573, 1);
INSERT INTO `oc_zone` VALUES (107, 3, 0x534b49, 0x536b696b6461, 1);
INSERT INTO `oc_zone` VALUES (108, 3, 0x534148, 0x536f756b204168726173, 1);
INSERT INTO `oc_zone` VALUES (109, 3, 0x54414d, 0x54616d616e67686173736574, 1);
INSERT INTO `oc_zone` VALUES (110, 3, 0x544542, 0x54656265737361, 1);
INSERT INTO `oc_zone` VALUES (111, 3, 0x544941, 0x546961726574, 1);
INSERT INTO `oc_zone` VALUES (112, 3, 0x54494e, 0x54696e646f7566, 1);
INSERT INTO `oc_zone` VALUES (113, 3, 0x544950, 0x546970617a61, 1);
INSERT INTO `oc_zone` VALUES (114, 3, 0x544953, 0x54697373656d73696c74, 1);
INSERT INTO `oc_zone` VALUES (115, 3, 0x544f55, 0x54697a69204f757a6f75, 1);
INSERT INTO `oc_zone` VALUES (116, 3, 0x544c45, 0x546c656d63656e, 1);
INSERT INTO `oc_zone` VALUES (117, 4, 0x45, 0x4561737465726e, 1);
INSERT INTO `oc_zone` VALUES (118, 4, 0x4d, 0x4d616e752761, 1);
INSERT INTO `oc_zone` VALUES (119, 4, 0x52, 0x526f73652049736c616e64, 1);
INSERT INTO `oc_zone` VALUES (120, 4, 0x53, 0x537761696e732049736c616e64, 1);
INSERT INTO `oc_zone` VALUES (121, 4, 0x57, 0x5765737465726e, 1);
INSERT INTO `oc_zone` VALUES (122, 5, 0x414c56, 0x416e646f727261206c612056656c6c61, 1);
INSERT INTO `oc_zone` VALUES (123, 5, 0x43414e, 0x43616e696c6c6f, 1);
INSERT INTO `oc_zone` VALUES (124, 5, 0x454e43, 0x456e63616d70, 1);
INSERT INTO `oc_zone` VALUES (125, 5, 0x455345, 0x457363616c6465732d456e676f7264616e79, 1);
INSERT INTO `oc_zone` VALUES (126, 5, 0x4c4d41, 0x4c61204d617373616e61, 1);
INSERT INTO `oc_zone` VALUES (127, 5, 0x4f5244, 0x4f7264696e6f, 1);
INSERT INTO `oc_zone` VALUES (128, 5, 0x534a4c, 0x53616e74204a756c6961206465204c6f726961, 1);
INSERT INTO `oc_zone` VALUES (129, 6, 0x42474f, 0x42656e676f, 1);
INSERT INTO `oc_zone` VALUES (130, 6, 0x424755, 0x42656e6775656c61, 1);
INSERT INTO `oc_zone` VALUES (131, 6, 0x424945, 0x426965, 1);
INSERT INTO `oc_zone` VALUES (132, 6, 0x434142, 0x436162696e6461, 1);
INSERT INTO `oc_zone` VALUES (133, 6, 0x434355, 0x4375616e646f2d437562616e676f, 1);
INSERT INTO `oc_zone` VALUES (134, 6, 0x434e4f, 0x4375616e7a61204e6f727465, 1);
INSERT INTO `oc_zone` VALUES (135, 6, 0x435553, 0x4375616e7a612053756c, 1);
INSERT INTO `oc_zone` VALUES (136, 6, 0x434e4e, 0x43756e656e65, 1);
INSERT INTO `oc_zone` VALUES (137, 6, 0x485541, 0x4875616d626f, 1);
INSERT INTO `oc_zone` VALUES (138, 6, 0x485549, 0x4875696c61, 1);
INSERT INTO `oc_zone` VALUES (139, 6, 0x4c5541, 0x4c75616e6461, 1);
INSERT INTO `oc_zone` VALUES (140, 6, 0x4c4e4f, 0x4c756e6461204e6f727465, 1);
INSERT INTO `oc_zone` VALUES (141, 6, 0x4c5355, 0x4c756e64612053756c, 1);
INSERT INTO `oc_zone` VALUES (142, 6, 0x4d414c, 0x4d616c616e6765, 1);
INSERT INTO `oc_zone` VALUES (143, 6, 0x4d4f58, 0x4d6f7869636f, 1);
INSERT INTO `oc_zone` VALUES (144, 6, 0x4e414d, 0x4e616d696265, 1);
INSERT INTO `oc_zone` VALUES (145, 6, 0x554947, 0x55696765, 1);
INSERT INTO `oc_zone` VALUES (146, 6, 0x5a4149, 0x5a61697265, 1);
INSERT INTO `oc_zone` VALUES (147, 9, 0x415347, 0x5361696e742047656f726765, 1);
INSERT INTO `oc_zone` VALUES (148, 9, 0x41534a, 0x5361696e74204a6f686e, 1);
INSERT INTO `oc_zone` VALUES (149, 9, 0x41534d, 0x5361696e74204d617279, 1);
INSERT INTO `oc_zone` VALUES (150, 9, 0x41534c, 0x5361696e74205061756c, 1);
INSERT INTO `oc_zone` VALUES (151, 9, 0x415352, 0x5361696e74205065746572, 1);
INSERT INTO `oc_zone` VALUES (152, 9, 0x415348, 0x5361696e74205068696c6970, 1);
INSERT INTO `oc_zone` VALUES (153, 9, 0x424152, 0x42617262756461, 1);
INSERT INTO `oc_zone` VALUES (154, 9, 0x524544, 0x5265646f6e6461, 1);
INSERT INTO `oc_zone` VALUES (155, 10, 0x414e, 0x416e7461727469646120652049736c61732064656c2041746c616e7469636f, 1);
INSERT INTO `oc_zone` VALUES (156, 10, 0x4241, 0x4275656e6f73204169726573, 1);
INSERT INTO `oc_zone` VALUES (157, 10, 0x4341, 0x436174616d61726361, 1);
INSERT INTO `oc_zone` VALUES (158, 10, 0x4348, 0x436861636f, 1);
INSERT INTO `oc_zone` VALUES (159, 10, 0x4355, 0x436875627574, 1);
INSERT INTO `oc_zone` VALUES (160, 10, 0x434f, 0x436f72646f6261, 1);
INSERT INTO `oc_zone` VALUES (161, 10, 0x4352, 0x436f727269656e746573, 1);
INSERT INTO `oc_zone` VALUES (162, 10, 0x4446, 0x446973747269746f204665646572616c, 1);
INSERT INTO `oc_zone` VALUES (163, 10, 0x4552, 0x456e7472652052696f73, 1);
INSERT INTO `oc_zone` VALUES (164, 10, 0x464f, 0x466f726d6f7361, 1);
INSERT INTO `oc_zone` VALUES (165, 10, 0x4a55, 0x4a756a7579, 1);
INSERT INTO `oc_zone` VALUES (166, 10, 0x4c50, 0x4c612050616d7061, 1);
INSERT INTO `oc_zone` VALUES (167, 10, 0x4c52, 0x4c612052696f6a61, 1);
INSERT INTO `oc_zone` VALUES (168, 10, 0x4d45, 0x4d656e646f7a61, 1);
INSERT INTO `oc_zone` VALUES (169, 10, 0x4d49, 0x4d6973696f6e6573, 1);
INSERT INTO `oc_zone` VALUES (170, 10, 0x4e45, 0x4e65757175656e, 1);
INSERT INTO `oc_zone` VALUES (171, 10, 0x524e, 0x52696f204e6567726f, 1);
INSERT INTO `oc_zone` VALUES (172, 10, 0x5341, 0x53616c7461, 1);
INSERT INTO `oc_zone` VALUES (173, 10, 0x534a, 0x53616e204a75616e, 1);
INSERT INTO `oc_zone` VALUES (174, 10, 0x534c, 0x53616e204c756973, 1);
INSERT INTO `oc_zone` VALUES (175, 10, 0x5343, 0x53616e7461204372757a, 1);
INSERT INTO `oc_zone` VALUES (176, 10, 0x5346, 0x53616e7461204665, 1);
INSERT INTO `oc_zone` VALUES (177, 10, 0x5344, 0x53616e746961676f2064656c2045737465726f, 1);
INSERT INTO `oc_zone` VALUES (178, 10, 0x5446, 0x5469657272612064656c20467565676f, 1);
INSERT INTO `oc_zone` VALUES (179, 10, 0x5455, 0x547563756d616e, 1);
INSERT INTO `oc_zone` VALUES (180, 11, 0x414754, 0x417261676174736f746e, 1);
INSERT INTO `oc_zone` VALUES (181, 11, 0x415252, 0x417261726174, 1);
INSERT INTO `oc_zone` VALUES (182, 11, 0x41524d, 0x41726d61766972, 1);
INSERT INTO `oc_zone` VALUES (183, 11, 0x474547, 0x4765676861726b27756e696b27, 1);
INSERT INTO `oc_zone` VALUES (184, 11, 0x4b4f54, 0x4b6f7461796b27, 1);
INSERT INTO `oc_zone` VALUES (185, 11, 0x4c4f52, 0x4c6f727269, 1);
INSERT INTO `oc_zone` VALUES (186, 11, 0x534849, 0x53686972616b, 1);
INSERT INTO `oc_zone` VALUES (187, 11, 0x535955, 0x5379756e696b27, 1);
INSERT INTO `oc_zone` VALUES (188, 11, 0x544156, 0x546176757368, 1);
INSERT INTO `oc_zone` VALUES (189, 11, 0x564159, 0x5661796f74732720447a6f72, 1);
INSERT INTO `oc_zone` VALUES (190, 11, 0x594552, 0x5965726576616e, 1);
INSERT INTO `oc_zone` VALUES (191, 13, 0x414354, 0x4175737472616c69616e204361706974616c205465727269746f7279, 1);
INSERT INTO `oc_zone` VALUES (192, 13, 0x4e5357, 0x4e657720536f7574682057616c6573, 1);
INSERT INTO `oc_zone` VALUES (193, 13, 0x4e54, 0x4e6f72746865726e205465727269746f7279, 1);
INSERT INTO `oc_zone` VALUES (194, 13, 0x514c44, 0x517565656e736c616e64, 1);
INSERT INTO `oc_zone` VALUES (195, 13, 0x5341, 0x536f757468204175737472616c6961, 1);
INSERT INTO `oc_zone` VALUES (196, 13, 0x544153, 0x5461736d616e6961, 1);
INSERT INTO `oc_zone` VALUES (197, 13, 0x564943, 0x566963746f726961, 1);
INSERT INTO `oc_zone` VALUES (198, 13, 0x5741, 0x5765737465726e204175737472616c6961, 1);
INSERT INTO `oc_zone` VALUES (199, 14, 0x425552, 0x42757267656e6c616e64, 1);
INSERT INTO `oc_zone` VALUES (200, 14, 0x4b4152, 0x4bc3a4726e74656e, 1);
INSERT INTO `oc_zone` VALUES (201, 14, 0x4e4f53, 0x4e6965646572266f756d6c3b737465727265696368, 1);
INSERT INTO `oc_zone` VALUES (202, 14, 0x4f4f53, 0x4f626572266f756d6c3b737465727265696368, 1);
INSERT INTO `oc_zone` VALUES (203, 14, 0x53414c, 0x53616c7a62757267, 1);
INSERT INTO `oc_zone` VALUES (204, 14, 0x535445, 0x5374656965726d61726b, 1);
INSERT INTO `oc_zone` VALUES (205, 14, 0x544952, 0x5469726f6c, 1);
INSERT INTO `oc_zone` VALUES (206, 14, 0x564f52, 0x566f7261726c62657267, 1);
INSERT INTO `oc_zone` VALUES (207, 14, 0x574945, 0x5769656e, 1);
INSERT INTO `oc_zone` VALUES (208, 15, 0x4142, 0x416c692042617972616d6c69, 1);
INSERT INTO `oc_zone` VALUES (209, 15, 0x414253, 0x41627365726f6e, 1);
INSERT INTO `oc_zone` VALUES (210, 15, 0x414743, 0x4167636162416469, 1);
INSERT INTO `oc_zone` VALUES (211, 15, 0x41474d, 0x416764616d, 1);
INSERT INTO `oc_zone` VALUES (212, 15, 0x414753, 0x4167646173, 1);
INSERT INTO `oc_zone` VALUES (213, 15, 0x414741, 0x41677374616661, 1);
INSERT INTO `oc_zone` VALUES (214, 15, 0x414755, 0x41677375, 1);
INSERT INTO `oc_zone` VALUES (215, 15, 0x415354, 0x417374617261, 1);
INSERT INTO `oc_zone` VALUES (216, 15, 0x4241, 0x42616b69, 1);
INSERT INTO `oc_zone` VALUES (217, 15, 0x424142, 0x426162416b, 1);
INSERT INTO `oc_zone` VALUES (218, 15, 0x42414c, 0x42616c616b416e, 1);
INSERT INTO `oc_zone` VALUES (219, 15, 0x424152, 0x4241726441, 1);
INSERT INTO `oc_zone` VALUES (220, 15, 0x424559, 0x4265796c6171616e, 1);
INSERT INTO `oc_zone` VALUES (221, 15, 0x42494c, 0x42696c617375766172, 1);
INSERT INTO `oc_zone` VALUES (222, 15, 0x434142, 0x436162726179696c, 1);
INSERT INTO `oc_zone` VALUES (223, 15, 0x43414c, 0x43616c696c61626162, 1);
INSERT INTO `oc_zone` VALUES (224, 15, 0x43554c, 0x43756c6661, 1);
INSERT INTO `oc_zone` VALUES (225, 15, 0x444153, 0x4461736b6173616e, 1);
INSERT INTO `oc_zone` VALUES (226, 15, 0x444156, 0x446176616369, 1);
INSERT INTO `oc_zone` VALUES (227, 15, 0x46555a, 0x46757a756c69, 1);
INSERT INTO `oc_zone` VALUES (228, 15, 0x4741, 0x47616e6361, 1);
INSERT INTO `oc_zone` VALUES (229, 15, 0x474144, 0x47616461626179, 1);
INSERT INTO `oc_zone` VALUES (230, 15, 0x474f52, 0x476f72616e626f79, 1);
INSERT INTO `oc_zone` VALUES (231, 15, 0x474f59, 0x476f79636179, 1);
INSERT INTO `oc_zone` VALUES (232, 15, 0x484143, 0x48616369716162756c, 1);
INSERT INTO `oc_zone` VALUES (233, 15, 0x494d49, 0x496d69736c69, 1);
INSERT INTO `oc_zone` VALUES (234, 15, 0x49534d, 0x49736d6179696c6c69, 1);
INSERT INTO `oc_zone` VALUES (235, 15, 0x4b414c, 0x4b616c6261636172, 1);
INSERT INTO `oc_zone` VALUES (236, 15, 0x4b5552, 0x4b757264616d6972, 1);
INSERT INTO `oc_zone` VALUES (237, 15, 0x4c41, 0x4c616e6b6172616e, 1);
INSERT INTO `oc_zone` VALUES (238, 15, 0x4c4143, 0x4c6163696e, 1);
INSERT INTO `oc_zone` VALUES (239, 15, 0x4c414e, 0x4c616e6b6172616e, 1);
INSERT INTO `oc_zone` VALUES (240, 15, 0x4c4552, 0x4c6572696b, 1);
INSERT INTO `oc_zone` VALUES (241, 15, 0x4d4153, 0x4d6173616c6c69, 1);
INSERT INTO `oc_zone` VALUES (242, 15, 0x4d49, 0x4d696e67616365766972, 1);
INSERT INTO `oc_zone` VALUES (243, 15, 0x4e41, 0x4e616674616c616e, 1);
INSERT INTO `oc_zone` VALUES (244, 15, 0x4e4546, 0x4e65667463616c61, 1);
INSERT INTO `oc_zone` VALUES (245, 15, 0x4f4755, 0x4f67757a, 1);
INSERT INTO `oc_zone` VALUES (246, 15, 0x4f5244, 0x4f726475626164, 1);
INSERT INTO `oc_zone` VALUES (247, 15, 0x514142, 0x516162616c61, 1);
INSERT INTO `oc_zone` VALUES (248, 15, 0x514158, 0x516178, 1);
INSERT INTO `oc_zone` VALUES (249, 15, 0x51415a, 0x51617a6178, 1);
INSERT INTO `oc_zone` VALUES (250, 15, 0x514f42, 0x516f62757374616e, 1);
INSERT INTO `oc_zone` VALUES (251, 15, 0x514241, 0x51756261, 1);
INSERT INTO `oc_zone` VALUES (252, 15, 0x514249, 0x51756261646c69, 1);
INSERT INTO `oc_zone` VALUES (253, 15, 0x515553, 0x5175736172, 1);
INSERT INTO `oc_zone` VALUES (254, 15, 0x5341, 0x53616b69, 1);
INSERT INTO `oc_zone` VALUES (255, 15, 0x534154, 0x536161746c69, 1);
INSERT INTO `oc_zone` VALUES (256, 15, 0x534142, 0x536162697261626164, 1);
INSERT INTO `oc_zone` VALUES (257, 15, 0x534144, 0x5361646172616b, 1);
INSERT INTO `oc_zone` VALUES (258, 15, 0x534148, 0x53616862757a, 1);
INSERT INTO `oc_zone` VALUES (259, 15, 0x53414b, 0x53616b69, 1);
INSERT INTO `oc_zone` VALUES (260, 15, 0x53414c, 0x53616c79616e, 1);
INSERT INTO `oc_zone` VALUES (261, 15, 0x534d, 0x53756d7161796974, 1);
INSERT INTO `oc_zone` VALUES (262, 15, 0x534d49, 0x53616d617869, 1);
INSERT INTO `oc_zone` VALUES (263, 15, 0x534b52, 0x53616d6b6972, 1);
INSERT INTO `oc_zone` VALUES (264, 15, 0x534d58, 0x53616d7578, 1);
INSERT INTO `oc_zone` VALUES (265, 15, 0x534152, 0x5361727572, 1);
INSERT INTO `oc_zone` VALUES (266, 15, 0x534959, 0x536979617a616e, 1);
INSERT INTO `oc_zone` VALUES (267, 15, 0x5353, 0x53757361, 1);
INSERT INTO `oc_zone` VALUES (268, 15, 0x535553, 0x53757361, 1);
INSERT INTO `oc_zone` VALUES (269, 15, 0x544152, 0x546172746172, 1);
INSERT INTO `oc_zone` VALUES (270, 15, 0x544f56, 0x546f76757a, 1);
INSERT INTO `oc_zone` VALUES (271, 15, 0x554341, 0x55636172, 1);
INSERT INTO `oc_zone` VALUES (272, 15, 0x5841, 0x58616e6b616e6469, 1);
INSERT INTO `oc_zone` VALUES (273, 15, 0x584143, 0x5861636d617a, 1);
INSERT INTO `oc_zone` VALUES (274, 15, 0x58414e, 0x58616e6c6172, 1);
INSERT INTO `oc_zone` VALUES (275, 15, 0x58495a, 0x58697a69, 1);
INSERT INTO `oc_zone` VALUES (276, 15, 0x584349, 0x586f63616c69, 1);
INSERT INTO `oc_zone` VALUES (277, 15, 0x585644, 0x586f636176616e64, 1);
INSERT INTO `oc_zone` VALUES (278, 15, 0x594152, 0x59617264696d6c69, 1);
INSERT INTO `oc_zone` VALUES (279, 15, 0x594556, 0x5965766c6178, 1);
INSERT INTO `oc_zone` VALUES (280, 15, 0x5a414e, 0x5a616e67696c616e, 1);
INSERT INTO `oc_zone` VALUES (281, 15, 0x5a4151, 0x5a61716174616c61, 1);
INSERT INTO `oc_zone` VALUES (282, 15, 0x5a4152, 0x5a6172646162, 1);
INSERT INTO `oc_zone` VALUES (283, 15, 0x4e58, 0x4e6178636976616e, 1);
INSERT INTO `oc_zone` VALUES (284, 16, 0x41434b, 0x41636b6c696e73, 1);
INSERT INTO `oc_zone` VALUES (285, 16, 0x424552, 0x42657272792049736c616e6473, 1);
INSERT INTO `oc_zone` VALUES (286, 16, 0x42494d, 0x42696d696e69, 1);
INSERT INTO `oc_zone` VALUES (287, 16, 0x424c4b, 0x426c61636b20506f696e74, 1);
INSERT INTO `oc_zone` VALUES (288, 16, 0x434154, 0x4361742049736c616e64, 1);
INSERT INTO `oc_zone` VALUES (289, 16, 0x434142, 0x43656e7472616c20416261636f, 1);
INSERT INTO `oc_zone` VALUES (290, 16, 0x43414e, 0x43656e7472616c20416e64726f73, 1);
INSERT INTO `oc_zone` VALUES (291, 16, 0x43454c, 0x43656e7472616c20456c65757468657261, 1);
INSERT INTO `oc_zone` VALUES (292, 16, 0x465245, 0x43697479206f662046726565706f7274, 1);
INSERT INTO `oc_zone` VALUES (293, 16, 0x43524f, 0x43726f6f6b65642049736c616e64, 1);
INSERT INTO `oc_zone` VALUES (294, 16, 0x454742, 0x45617374204772616e6420426168616d61, 1);
INSERT INTO `oc_zone` VALUES (295, 16, 0x455855, 0x4578756d61, 1);
INSERT INTO `oc_zone` VALUES (296, 16, 0x475244, 0x4772616e6420436179, 1);
INSERT INTO `oc_zone` VALUES (297, 16, 0x484152, 0x486172626f75722049736c616e64, 1);
INSERT INTO `oc_zone` VALUES (298, 16, 0x484f50, 0x486f706520546f776e, 1);
INSERT INTO `oc_zone` VALUES (299, 16, 0x494e41, 0x496e61677561, 1);
INSERT INTO `oc_zone` VALUES (300, 16, 0x4c4e47, 0x4c6f6e672049736c616e64, 1);
INSERT INTO `oc_zone` VALUES (301, 16, 0x4d414e, 0x4d616e67726f766520436179, 1);
INSERT INTO `oc_zone` VALUES (302, 16, 0x4d4159, 0x4d6179616775616e61, 1);
INSERT INTO `oc_zone` VALUES (303, 16, 0x4d4f4f, 0x4d6f6f726527732049736c616e64, 1);
INSERT INTO `oc_zone` VALUES (304, 16, 0x4e4142, 0x4e6f72746820416261636f, 1);
INSERT INTO `oc_zone` VALUES (305, 16, 0x4e414e, 0x4e6f72746820416e64726f73, 1);
INSERT INTO `oc_zone` VALUES (306, 16, 0x4e454c, 0x4e6f72746820456c65757468657261, 1);
INSERT INTO `oc_zone` VALUES (307, 16, 0x524147, 0x5261676765642049736c616e64, 1);
INSERT INTO `oc_zone` VALUES (308, 16, 0x52554d, 0x52756d20436179, 1);
INSERT INTO `oc_zone` VALUES (309, 16, 0x53414c, 0x53616e2053616c7661646f72, 1);
INSERT INTO `oc_zone` VALUES (310, 16, 0x534142, 0x536f75746820416261636f, 1);
INSERT INTO `oc_zone` VALUES (311, 16, 0x53414e, 0x536f75746820416e64726f73, 1);
INSERT INTO `oc_zone` VALUES (312, 16, 0x53454c, 0x536f75746820456c65757468657261, 1);
INSERT INTO `oc_zone` VALUES (313, 16, 0x535745, 0x5370616e6973682057656c6c73, 1);
INSERT INTO `oc_zone` VALUES (314, 16, 0x574742, 0x57657374204772616e6420426168616d61, 1);
INSERT INTO `oc_zone` VALUES (315, 17, 0x434150, 0x4361706974616c, 1);
INSERT INTO `oc_zone` VALUES (316, 17, 0x43454e, 0x43656e7472616c, 1);
INSERT INTO `oc_zone` VALUES (317, 17, 0x4d5548, 0x4d75686172726171, 1);
INSERT INTO `oc_zone` VALUES (318, 17, 0x4e4f52, 0x4e6f72746865726e, 1);
INSERT INTO `oc_zone` VALUES (319, 17, 0x534f55, 0x536f75746865726e, 1);
INSERT INTO `oc_zone` VALUES (320, 18, 0x424152, 0x4261726973616c, 1);
INSERT INTO `oc_zone` VALUES (321, 18, 0x434849, 0x436869747461676f6e67, 1);
INSERT INTO `oc_zone` VALUES (322, 18, 0x444841, 0x4468616b61, 1);
INSERT INTO `oc_zone` VALUES (323, 18, 0x4b4855, 0x4b68756c6e61, 1);
INSERT INTO `oc_zone` VALUES (324, 18, 0x52414a, 0x52616a7368616869, 1);
INSERT INTO `oc_zone` VALUES (325, 18, 0x53594c, 0x53796c686574, 1);
INSERT INTO `oc_zone` VALUES (326, 19, 0x4343, 0x43687269737420436875726368, 1);
INSERT INTO `oc_zone` VALUES (327, 19, 0x414e44, 0x5361696e7420416e64726577, 1);
INSERT INTO `oc_zone` VALUES (328, 19, 0x47454f, 0x5361696e742047656f726765, 1);
INSERT INTO `oc_zone` VALUES (329, 19, 0x4a414d, 0x5361696e74204a616d6573, 1);
INSERT INTO `oc_zone` VALUES (330, 19, 0x4a4f48, 0x5361696e74204a6f686e, 1);
INSERT INTO `oc_zone` VALUES (331, 19, 0x4a4f53, 0x5361696e74204a6f73657068, 1);
INSERT INTO `oc_zone` VALUES (332, 19, 0x4c5543, 0x5361696e74204c756379, 1);
INSERT INTO `oc_zone` VALUES (333, 19, 0x4d4943, 0x5361696e74204d69636861656c, 1);
INSERT INTO `oc_zone` VALUES (334, 19, 0x504554, 0x5361696e74205065746572, 1);
INSERT INTO `oc_zone` VALUES (335, 19, 0x504849, 0x5361696e74205068696c6970, 1);
INSERT INTO `oc_zone` VALUES (336, 19, 0x54484f, 0x5361696e742054686f6d6173, 1);
INSERT INTO `oc_zone` VALUES (337, 20, 0x4252, 0x4272657374736b6179612028427265737429, 1);
INSERT INTO `oc_zone` VALUES (338, 20, 0x484f, 0x486f6d79656c27736b6179612028486f6d79656c2729, 1);
INSERT INTO `oc_zone` VALUES (339, 20, 0x484d, 0x486f726164204d696e736b, 1);
INSERT INTO `oc_zone` VALUES (340, 20, 0x4852, 0x48726f647a79656e736b617961202848726f646e6129, 1);
INSERT INTO `oc_zone` VALUES (341, 20, 0x4d41, 0x4d6168696c796f77736b61796120284d6168696c796f7729, 1);
INSERT INTO `oc_zone` VALUES (342, 20, 0x4d49, 0x4d696e736b617961, 1);
INSERT INTO `oc_zone` VALUES (343, 20, 0x5649, 0x56697473796562736b617961202856697473796562736b29, 1);
INSERT INTO `oc_zone` VALUES (344, 21, 0x56414e, 0x416e7477657270656e, 1);
INSERT INTO `oc_zone` VALUES (345, 21, 0x574252, 0x42726162616e742057616c6c6f6e, 1);
INSERT INTO `oc_zone` VALUES (346, 21, 0x574854, 0x4861696e617574, 1);
INSERT INTO `oc_zone` VALUES (347, 21, 0x574c47, 0x4c69656765, 1);
INSERT INTO `oc_zone` VALUES (348, 21, 0x564c49, 0x4c696d62757267, 1);
INSERT INTO `oc_zone` VALUES (349, 21, 0x574c58, 0x4c7578656d626f757267, 1);
INSERT INTO `oc_zone` VALUES (350, 21, 0x574e41, 0x4e616d7572, 1);
INSERT INTO `oc_zone` VALUES (351, 21, 0x564f56, 0x4f6f73742d566c61616e646572656e, 1);
INSERT INTO `oc_zone` VALUES (352, 21, 0x564252, 0x566c61616d732042726162616e74, 1);
INSERT INTO `oc_zone` VALUES (353, 21, 0x565756, 0x576573742d566c61616e646572656e, 1);
INSERT INTO `oc_zone` VALUES (354, 22, 0x425a, 0x42656c697a65, 1);
INSERT INTO `oc_zone` VALUES (355, 22, 0x4359, 0x4361796f, 1);
INSERT INTO `oc_zone` VALUES (356, 22, 0x4352, 0x436f726f7a616c, 1);
INSERT INTO `oc_zone` VALUES (357, 22, 0x4f57, 0x4f72616e67652057616c6b, 1);
INSERT INTO `oc_zone` VALUES (358, 22, 0x5343, 0x5374616e6e20437265656b, 1);
INSERT INTO `oc_zone` VALUES (359, 22, 0x544f, 0x546f6c65646f, 1);
INSERT INTO `oc_zone` VALUES (360, 23, 0x414c, 0x416c69626f7269, 1);
INSERT INTO `oc_zone` VALUES (361, 23, 0x414b, 0x4174616b6f7261, 1);
INSERT INTO `oc_zone` VALUES (362, 23, 0x4151, 0x41746c616e7469717565, 1);
INSERT INTO `oc_zone` VALUES (363, 23, 0x424f, 0x426f72676f75, 1);
INSERT INTO `oc_zone` VALUES (364, 23, 0x434f, 0x436f6c6c696e6573, 1);
INSERT INTO `oc_zone` VALUES (365, 23, 0x444f, 0x446f6e6761, 1);
INSERT INTO `oc_zone` VALUES (366, 23, 0x4b4f, 0x4b6f7566666f, 1);
INSERT INTO `oc_zone` VALUES (367, 23, 0x4c49, 0x4c6974746f72616c, 1);
INSERT INTO `oc_zone` VALUES (368, 23, 0x4d4f, 0x4d6f6e6f, 1);
INSERT INTO `oc_zone` VALUES (369, 23, 0x4f55, 0x4f75656d65, 1);
INSERT INTO `oc_zone` VALUES (370, 23, 0x504c, 0x506c6174656175, 1);
INSERT INTO `oc_zone` VALUES (371, 23, 0x5a4f, 0x5a6f75, 1);
INSERT INTO `oc_zone` VALUES (372, 24, 0x4453, 0x4465766f6e7368697265, 1);
INSERT INTO `oc_zone` VALUES (373, 24, 0x4843, 0x48616d696c746f6e2043697479, 1);
INSERT INTO `oc_zone` VALUES (374, 24, 0x4841, 0x48616d696c746f6e, 1);
INSERT INTO `oc_zone` VALUES (375, 24, 0x5047, 0x5061676574, 1);
INSERT INTO `oc_zone` VALUES (376, 24, 0x5042, 0x50656d62726f6b65, 1);
INSERT INTO `oc_zone` VALUES (377, 24, 0x4743, 0x5361696e742047656f7267652043697479, 1);
INSERT INTO `oc_zone` VALUES (378, 24, 0x5347, 0x5361696e742047656f7267652773, 1);
INSERT INTO `oc_zone` VALUES (379, 24, 0x5341, 0x53616e647973, 1);
INSERT INTO `oc_zone` VALUES (380, 24, 0x534d, 0x536d6974682773, 1);
INSERT INTO `oc_zone` VALUES (381, 24, 0x5348, 0x536f757468616d70746f6e, 1);
INSERT INTO `oc_zone` VALUES (382, 24, 0x5741, 0x5761727769636b, 1);
INSERT INTO `oc_zone` VALUES (383, 25, 0x42554d, 0x42756d7468616e67, 1);
INSERT INTO `oc_zone` VALUES (384, 25, 0x434855, 0x4368756b6861, 1);
INSERT INTO `oc_zone` VALUES (385, 25, 0x444147, 0x446167616e61, 1);
INSERT INTO `oc_zone` VALUES (386, 25, 0x474153, 0x47617361, 1);
INSERT INTO `oc_zone` VALUES (387, 25, 0x484141, 0x486161, 1);
INSERT INTO `oc_zone` VALUES (388, 25, 0x4c4855, 0x4c68756e747365, 1);
INSERT INTO `oc_zone` VALUES (389, 25, 0x4d4f4e, 0x4d6f6e676172, 1);
INSERT INTO `oc_zone` VALUES (390, 25, 0x504152, 0x5061726f, 1);
INSERT INTO `oc_zone` VALUES (391, 25, 0x50454d, 0x50656d616761747368656c, 1);
INSERT INTO `oc_zone` VALUES (392, 25, 0x50554e, 0x50756e616b6861, 1);
INSERT INTO `oc_zone` VALUES (393, 25, 0x534a4f, 0x53616d64727570204a6f6e676b686172, 1);
INSERT INTO `oc_zone` VALUES (394, 25, 0x534154, 0x53616d747365, 1);
INSERT INTO `oc_zone` VALUES (395, 25, 0x534152, 0x53617270616e67, 1);
INSERT INTO `oc_zone` VALUES (396, 25, 0x544849, 0x5468696d706875, 1);
INSERT INTO `oc_zone` VALUES (397, 25, 0x545247, 0x54726173686967616e67, 1);
INSERT INTO `oc_zone` VALUES (398, 25, 0x545259, 0x54726173686979616e67737465, 1);
INSERT INTO `oc_zone` VALUES (399, 25, 0x54524f, 0x54726f6e677361, 1);
INSERT INTO `oc_zone` VALUES (400, 25, 0x545349, 0x54736972616e67, 1);
INSERT INTO `oc_zone` VALUES (401, 25, 0x575048, 0x57616e676475652050686f6472616e67, 1);
INSERT INTO `oc_zone` VALUES (402, 25, 0x5a4845, 0x5a68656d67616e67, 1);
INSERT INTO `oc_zone` VALUES (403, 26, 0x42454e, 0x42656e69, 1);
INSERT INTO `oc_zone` VALUES (404, 26, 0x434855, 0x43687571756973616361, 1);
INSERT INTO `oc_zone` VALUES (405, 26, 0x434f43, 0x436f63686162616d6261, 1);
INSERT INTO `oc_zone` VALUES (406, 26, 0x4c505a, 0x4c612050617a, 1);
INSERT INTO `oc_zone` VALUES (407, 26, 0x4f5255, 0x4f7275726f, 1);
INSERT INTO `oc_zone` VALUES (408, 26, 0x50414e, 0x50616e646f, 1);
INSERT INTO `oc_zone` VALUES (409, 26, 0x504f54, 0x506f746f7369, 1);
INSERT INTO `oc_zone` VALUES (410, 26, 0x53435a, 0x53616e7461204372757a, 1);
INSERT INTO `oc_zone` VALUES (411, 26, 0x544152, 0x546172696a61, 1);
INSERT INTO `oc_zone` VALUES (412, 27, 0x42524f, 0x4272636b6f206469737472696374, 1);
INSERT INTO `oc_zone` VALUES (413, 27, 0x465553, 0x556e736b6f2d53616e736b69204b616e746f6e, 1);
INSERT INTO `oc_zone` VALUES (414, 27, 0x46504f, 0x506f736176736b69204b616e746f6e, 1);
INSERT INTO `oc_zone` VALUES (415, 27, 0x465455, 0x54757a6c616e736b69204b616e746f6e, 1);
INSERT INTO `oc_zone` VALUES (416, 27, 0x465a45, 0x5a656e69636b6f2d446f626f6a736b69204b616e746f6e, 1);
INSERT INTO `oc_zone` VALUES (417, 27, 0x464250, 0x426f73616e736b6f706f6472696e6a736b69204b616e746f6e, 1);
INSERT INTO `oc_zone` VALUES (418, 27, 0x465342, 0x537265646e6a65626f73616e736b69204b616e746f6e, 1);
INSERT INTO `oc_zone` VALUES (419, 27, 0x46484e, 0x4865726365676f7661636b6f2d6e6572657476616e736b69204b616e746f6e, 1);
INSERT INTO `oc_zone` VALUES (420, 27, 0x465a48, 0x5a617061646e6f6865726365676f7661636b61205a7570616e696a61, 1);
INSERT INTO `oc_zone` VALUES (421, 27, 0x465341, 0x4b616e746f6e20536172616a65766f, 1);
INSERT INTO `oc_zone` VALUES (422, 27, 0x465a41, 0x5a617061646e6f626f73616e736b61, 1);
INSERT INTO `oc_zone` VALUES (423, 27, 0x53424c, 0x42616e6a61204c756b61, 1);
INSERT INTO `oc_zone` VALUES (424, 27, 0x53444f, 0x446f626f6a, 1);
INSERT INTO `oc_zone` VALUES (425, 27, 0x534249, 0x42696a656c6a696e61, 1);
INSERT INTO `oc_zone` VALUES (426, 27, 0x53564c, 0x566c6173656e696361, 1);
INSERT INTO `oc_zone` VALUES (427, 27, 0x535352, 0x536172616a65766f2d526f6d616e696a61206f7220536f6b6f6c6163, 1);
INSERT INTO `oc_zone` VALUES (428, 27, 0x53464f, 0x466f6361, 1);
INSERT INTO `oc_zone` VALUES (429, 27, 0x535452, 0x54726562696e6a65, 1);
INSERT INTO `oc_zone` VALUES (430, 28, 0x4345, 0x43656e7472616c, 1);
INSERT INTO `oc_zone` VALUES (431, 28, 0x4748, 0x4768616e7a69, 1);
INSERT INTO `oc_zone` VALUES (432, 28, 0x4b44, 0x4b67616c6167616469, 1);
INSERT INTO `oc_zone` VALUES (433, 28, 0x4b54, 0x4b6761746c656e67, 1);
INSERT INTO `oc_zone` VALUES (434, 28, 0x4b57, 0x4b77656e656e67, 1);
INSERT INTO `oc_zone` VALUES (435, 28, 0x4e47, 0x4e67616d696c616e64, 1);
INSERT INTO `oc_zone` VALUES (436, 28, 0x4e45, 0x4e6f7274682045617374, 1);
INSERT INTO `oc_zone` VALUES (437, 28, 0x4e57, 0x4e6f7274682057657374, 1);
INSERT INTO `oc_zone` VALUES (438, 28, 0x5345, 0x536f7574682045617374, 1);
INSERT INTO `oc_zone` VALUES (439, 28, 0x534f, 0x536f75746865726e, 1);
INSERT INTO `oc_zone` VALUES (440, 30, 0x4143, 0x41637265, 1);
INSERT INTO `oc_zone` VALUES (441, 30, 0x414c, 0x416c61676f6173, 1);
INSERT INTO `oc_zone` VALUES (442, 30, 0x4150, 0x416d617061, 1);
INSERT INTO `oc_zone` VALUES (443, 30, 0x414d, 0x416d617a6f6e6173, 1);
INSERT INTO `oc_zone` VALUES (444, 30, 0x4241, 0x4261686961, 1);
INSERT INTO `oc_zone` VALUES (445, 30, 0x4345, 0x4365617261, 1);
INSERT INTO `oc_zone` VALUES (446, 30, 0x4446, 0x446973747269746f204665646572616c, 1);
INSERT INTO `oc_zone` VALUES (447, 30, 0x4553, 0x457370697269746f2053616e746f, 1);
INSERT INTO `oc_zone` VALUES (448, 30, 0x474f, 0x476f696173, 1);
INSERT INTO `oc_zone` VALUES (449, 30, 0x4d41, 0x4d6172616e68616f, 1);
INSERT INTO `oc_zone` VALUES (450, 30, 0x4d54, 0x4d61746f2047726f73736f, 1);
INSERT INTO `oc_zone` VALUES (451, 30, 0x4d53, 0x4d61746f2047726f73736f20646f2053756c, 1);
INSERT INTO `oc_zone` VALUES (452, 30, 0x4d47, 0x4d696e617320476572616973, 1);
INSERT INTO `oc_zone` VALUES (453, 30, 0x5041, 0x50617261, 1);
INSERT INTO `oc_zone` VALUES (454, 30, 0x5042, 0x50617261696261, 1);
INSERT INTO `oc_zone` VALUES (455, 30, 0x5052, 0x506172616e61, 1);
INSERT INTO `oc_zone` VALUES (456, 30, 0x5045, 0x5065726e616d6275636f, 1);
INSERT INTO `oc_zone` VALUES (457, 30, 0x5049, 0x5069617569, 1);
INSERT INTO `oc_zone` VALUES (458, 30, 0x524a, 0x52696f206465204a616e6569726f, 1);
INSERT INTO `oc_zone` VALUES (459, 30, 0x524e, 0x52696f204772616e646520646f204e6f727465, 1);
INSERT INTO `oc_zone` VALUES (460, 30, 0x5253, 0x52696f204772616e646520646f2053756c, 1);
INSERT INTO `oc_zone` VALUES (461, 30, 0x524f, 0x526f6e646f6e6961, 1);
INSERT INTO `oc_zone` VALUES (462, 30, 0x5252, 0x526f7261696d61, 1);
INSERT INTO `oc_zone` VALUES (463, 30, 0x5343, 0x53616e7461204361746172696e61, 1);
INSERT INTO `oc_zone` VALUES (464, 30, 0x5350, 0x53616f205061756c6f, 1);
INSERT INTO `oc_zone` VALUES (465, 30, 0x5345, 0x53657267697065, 1);
INSERT INTO `oc_zone` VALUES (466, 30, 0x544f, 0x546f63616e74696e73, 1);
INSERT INTO `oc_zone` VALUES (467, 31, 0x5042, 0x5065726f732042616e686f73, 1);
INSERT INTO `oc_zone` VALUES (468, 31, 0x5349, 0x53616c6f6d6f6e2049736c616e6473, 1);
INSERT INTO `oc_zone` VALUES (469, 31, 0x4e49, 0x4e656c736f6e732049736c616e64, 1);
INSERT INTO `oc_zone` VALUES (470, 31, 0x5442, 0x54687265652042726f7468657273, 1);
INSERT INTO `oc_zone` VALUES (471, 31, 0x4541, 0x4561676c652049736c616e6473, 1);
INSERT INTO `oc_zone` VALUES (472, 31, 0x4449, 0x44616e6765722049736c616e64, 1);
INSERT INTO `oc_zone` VALUES (473, 31, 0x4547, 0x45676d6f6e742049736c616e6473, 1);
INSERT INTO `oc_zone` VALUES (474, 31, 0x4447, 0x446965676f20476172636961, 1);
INSERT INTO `oc_zone` VALUES (475, 32, 0x42454c, 0x42656c616974, 1);
INSERT INTO `oc_zone` VALUES (476, 32, 0x42524d, 0x4272756e656920616e64204d75617261, 1);
INSERT INTO `oc_zone` VALUES (477, 32, 0x54454d, 0x54656d6275726f6e67, 1);
INSERT INTO `oc_zone` VALUES (478, 32, 0x545554, 0x5475746f6e67, 1);
INSERT INTO `oc_zone` VALUES (479, 33, '', 0x426c61676f657667726164, 1);
INSERT INTO `oc_zone` VALUES (480, 33, '', 0x427572676173, 1);
INSERT INTO `oc_zone` VALUES (481, 33, '', 0x446f6272696368, 1);
INSERT INTO `oc_zone` VALUES (482, 33, '', 0x476162726f766f, 1);
INSERT INTO `oc_zone` VALUES (483, 33, '', 0x4861736b6f766f, 1);
INSERT INTO `oc_zone` VALUES (484, 33, '', 0x4b6172646a616c69, 1);
INSERT INTO `oc_zone` VALUES (485, 33, '', 0x4b79757374656e64696c, 1);
INSERT INTO `oc_zone` VALUES (486, 33, '', 0x4c6f76656368, 1);
INSERT INTO `oc_zone` VALUES (487, 33, '', 0x4d6f6e74616e61, 1);
INSERT INTO `oc_zone` VALUES (488, 33, '', 0x50617a6172646a696b, 1);
INSERT INTO `oc_zone` VALUES (489, 33, '', 0x5065726e696b, 1);
INSERT INTO `oc_zone` VALUES (490, 33, '', 0x506c6576656e, 1);
INSERT INTO `oc_zone` VALUES (491, 33, '', 0x506c6f76646976, 1);
INSERT INTO `oc_zone` VALUES (492, 33, '', 0x52617a67726164, 1);
INSERT INTO `oc_zone` VALUES (493, 33, '', 0x5368756d656e, 1);
INSERT INTO `oc_zone` VALUES (494, 33, '', 0x53696c6973747261, 1);
INSERT INTO `oc_zone` VALUES (495, 33, '', 0x536c6976656e, 1);
INSERT INTO `oc_zone` VALUES (496, 33, '', 0x536d6f6c79616e, 1);
INSERT INTO `oc_zone` VALUES (497, 33, '', 0x536f666961, 1);
INSERT INTO `oc_zone` VALUES (498, 33, '', 0x536f666961202d20746f776e, 1);
INSERT INTO `oc_zone` VALUES (499, 33, '', 0x5374617261205a61676f7261, 1);
INSERT INTO `oc_zone` VALUES (500, 33, '', 0x546172676f766973687465, 1);
INSERT INTO `oc_zone` VALUES (501, 33, '', 0x5661726e61, 1);
INSERT INTO `oc_zone` VALUES (502, 33, '', 0x56656c696b6f205461726e6f766f, 1);
INSERT INTO `oc_zone` VALUES (503, 33, '', 0x566964696e, 1);
INSERT INTO `oc_zone` VALUES (504, 33, '', 0x567261747a61, 1);
INSERT INTO `oc_zone` VALUES (505, 33, '', 0x59616d626f6c, 1);
INSERT INTO `oc_zone` VALUES (506, 34, 0x42414c, 0x42616c65, 1);
INSERT INTO `oc_zone` VALUES (507, 34, 0x42414d, 0x42616d, 1);
INSERT INTO `oc_zone` VALUES (508, 34, 0x42414e, 0x42616e7761, 1);
INSERT INTO `oc_zone` VALUES (509, 34, 0x42415a, 0x42617a656761, 1);
INSERT INTO `oc_zone` VALUES (510, 34, 0x424f52, 0x426f75676f7572696261, 1);
INSERT INTO `oc_zone` VALUES (511, 34, 0x424c47, 0x426f756c676f75, 1);
INSERT INTO `oc_zone` VALUES (512, 34, 0x424f4b, 0x426f756c6b69656d6465, 1);
INSERT INTO `oc_zone` VALUES (513, 34, 0x434f4d, 0x436f6d6f65, 1);
INSERT INTO `oc_zone` VALUES (514, 34, 0x47414e, 0x47616e7a6f7572676f75, 1);
INSERT INTO `oc_zone` VALUES (515, 34, 0x474e41, 0x476e61676e61, 1);
INSERT INTO `oc_zone` VALUES (516, 34, 0x474f55, 0x476f75726d61, 1);
INSERT INTO `oc_zone` VALUES (517, 34, 0x484f55, 0x486f756574, 1);
INSERT INTO `oc_zone` VALUES (518, 34, 0x494f41, 0x496f6261, 1);
INSERT INTO `oc_zone` VALUES (519, 34, 0x4b4144, 0x4b6164696f676f, 1);
INSERT INTO `oc_zone` VALUES (520, 34, 0x4b454e, 0x4b656e65646f75676f75, 1);
INSERT INTO `oc_zone` VALUES (521, 34, 0x4b4f44, 0x4b6f6d6f6e646a617269, 1);
INSERT INTO `oc_zone` VALUES (522, 34, 0x4b4f50, 0x4b6f6d7069656e6761, 1);
INSERT INTO `oc_zone` VALUES (523, 34, 0x4b4f53, 0x4b6f737369, 1);
INSERT INTO `oc_zone` VALUES (524, 34, 0x4b4f4c, 0x4b6f756c70656c6f676f, 1);
INSERT INTO `oc_zone` VALUES (525, 34, 0x4b4f54, 0x4b6f75726974656e6761, 1);
INSERT INTO `oc_zone` VALUES (526, 34, 0x4b4f57, 0x4b6f757277656f676f, 1);
INSERT INTO `oc_zone` VALUES (527, 34, 0x4c4552, 0x4c6572616261, 1);
INSERT INTO `oc_zone` VALUES (528, 34, 0x4c4f52, 0x4c6f726f756d, 1);
INSERT INTO `oc_zone` VALUES (529, 34, 0x4d4f55, 0x4d6f75686f756e, 1);
INSERT INTO `oc_zone` VALUES (530, 34, 0x4e4148, 0x4e61686f757269, 1);
INSERT INTO `oc_zone` VALUES (531, 34, 0x4e414d, 0x4e616d656e74656e6761, 1);
INSERT INTO `oc_zone` VALUES (532, 34, 0x4e4159, 0x4e6179616c61, 1);
INSERT INTO `oc_zone` VALUES (533, 34, 0x4e4f55, 0x4e6f756d6269656c, 1);
INSERT INTO `oc_zone` VALUES (534, 34, 0x4f5542, 0x4f7562726974656e6761, 1);
INSERT INTO `oc_zone` VALUES (535, 34, 0x4f5544, 0x4f7564616c616e, 1);
INSERT INTO `oc_zone` VALUES (536, 34, 0x504153, 0x506173736f7265, 1);
INSERT INTO `oc_zone` VALUES (537, 34, 0x504f4e, 0x506f6e69, 1);
INSERT INTO `oc_zone` VALUES (538, 34, 0x534147, 0x53616e67756965, 1);
INSERT INTO `oc_zone` VALUES (539, 34, 0x53414d, 0x53616e6d6174656e6761, 1);
INSERT INTO `oc_zone` VALUES (540, 34, 0x53454e, 0x53656e6f, 1);
INSERT INTO `oc_zone` VALUES (541, 34, 0x534953, 0x53697373696c69, 1);
INSERT INTO `oc_zone` VALUES (542, 34, 0x534f4d, 0x536f756d, 1);
INSERT INTO `oc_zone` VALUES (543, 34, 0x534f52, 0x536f75726f75, 1);
INSERT INTO `oc_zone` VALUES (544, 34, 0x544150, 0x5461706f61, 1);
INSERT INTO `oc_zone` VALUES (545, 34, 0x545559, 0x547579, 1);
INSERT INTO `oc_zone` VALUES (546, 34, 0x594147, 0x5961676861, 1);
INSERT INTO `oc_zone` VALUES (547, 34, 0x594154, 0x596174656e6761, 1);
INSERT INTO `oc_zone` VALUES (548, 34, 0x5a4952, 0x5a69726f, 1);
INSERT INTO `oc_zone` VALUES (549, 34, 0x5a4f44, 0x5a6f6e646f6d61, 1);
INSERT INTO `oc_zone` VALUES (550, 34, 0x5a4f57, 0x5a6f756e6477656f676f, 1);
INSERT INTO `oc_zone` VALUES (551, 35, 0x4242, 0x427562616e7a61, 1);
INSERT INTO `oc_zone` VALUES (552, 35, 0x424a, 0x42756a756d62757261, 1);
INSERT INTO `oc_zone` VALUES (553, 35, 0x4252, 0x427572757269, 1);
INSERT INTO `oc_zone` VALUES (554, 35, 0x4341, 0x43616e6b757a6f, 1);
INSERT INTO `oc_zone` VALUES (555, 35, 0x4349, 0x43696269746f6b65, 1);
INSERT INTO `oc_zone` VALUES (556, 35, 0x4749, 0x476974656761, 1);
INSERT INTO `oc_zone` VALUES (557, 35, 0x4b52, 0x4b6172757a69, 1);
INSERT INTO `oc_zone` VALUES (558, 35, 0x4b59, 0x4b6179616e7a61, 1);
INSERT INTO `oc_zone` VALUES (559, 35, 0x4b49, 0x4b6972756e646f, 1);
INSERT INTO `oc_zone` VALUES (560, 35, 0x4d41, 0x4d616b616d6261, 1);
INSERT INTO `oc_zone` VALUES (561, 35, 0x4d55, 0x4d7572616d767961, 1);
INSERT INTO `oc_zone` VALUES (562, 35, 0x4d59, 0x4d7579696e6761, 1);
INSERT INTO `oc_zone` VALUES (563, 35, 0x4d57, 0x4d7761726f, 1);
INSERT INTO `oc_zone` VALUES (564, 35, 0x4e47, 0x4e676f7a69, 1);
INSERT INTO `oc_zone` VALUES (565, 35, 0x5254, 0x527574616e61, 1);
INSERT INTO `oc_zone` VALUES (566, 35, 0x5259, 0x527579696769, 1);
INSERT INTO `oc_zone` VALUES (567, 36, 0x5050, 0x50686e6f6d2050656e68, 1);
INSERT INTO `oc_zone` VALUES (568, 36, 0x5053, 0x50726561682053656968616e7520284b6f6d706f6e6720536f6d206f7220536968616e6f756b76696c6c6529, 1);
INSERT INTO `oc_zone` VALUES (569, 36, 0x5041, 0x5061696c696e, 1);
INSERT INTO `oc_zone` VALUES (570, 36, 0x4b42, 0x4b6562, 1);
INSERT INTO `oc_zone` VALUES (571, 36, 0x424d, 0x42616e74656179204d65616e63686579, 1);
INSERT INTO `oc_zone` VALUES (572, 36, 0x4241, 0x42617474616d62616e67, 1);
INSERT INTO `oc_zone` VALUES (573, 36, 0x4b4d, 0x4b616d706f6e67204368616d, 1);
INSERT INTO `oc_zone` VALUES (574, 36, 0x4b4e, 0x4b616d706f6e67204368686e616e67, 1);
INSERT INTO `oc_zone` VALUES (575, 36, 0x4b55, 0x4b616d706f6e672053706575, 1);
INSERT INTO `oc_zone` VALUES (576, 36, 0x4b4f, 0x4b616d706f6e6720536f6d, 1);
INSERT INTO `oc_zone` VALUES (577, 36, 0x4b54, 0x4b616d706f6e672054686f6d, 1);
INSERT INTO `oc_zone` VALUES (578, 36, 0x4b50, 0x4b616d706f74, 1);
INSERT INTO `oc_zone` VALUES (579, 36, 0x4b4c, 0x4b616e64616c, 1);
INSERT INTO `oc_zone` VALUES (580, 36, 0x4b4b, 0x4b616f68204b6f6e67, 1);
INSERT INTO `oc_zone` VALUES (581, 36, 0x4b52, 0x4b7261746965, 1);
INSERT INTO `oc_zone` VALUES (582, 36, 0x4d4b, 0x4d6f6e64756c204b697269, 1);
INSERT INTO `oc_zone` VALUES (583, 36, 0x4f4d, 0x4f64646172204d65616e6368656179, 1);
INSERT INTO `oc_zone` VALUES (584, 36, 0x5055, 0x507572736174, 1);
INSERT INTO `oc_zone` VALUES (585, 36, 0x5052, 0x507265616820566968656172, 1);
INSERT INTO `oc_zone` VALUES (586, 36, 0x5047, 0x507265792056656e67, 1);
INSERT INTO `oc_zone` VALUES (587, 36, 0x524b, 0x526174616e616b204b697269, 1);
INSERT INTO `oc_zone` VALUES (588, 36, 0x5349, 0x5369656d72656170, 1);
INSERT INTO `oc_zone` VALUES (589, 36, 0x5354, 0x5374756e67205472656e67, 1);
INSERT INTO `oc_zone` VALUES (590, 36, 0x5352, 0x53766179205269656e67, 1);
INSERT INTO `oc_zone` VALUES (591, 36, 0x544b, 0x54616b656f, 1);
INSERT INTO `oc_zone` VALUES (592, 37, 0x414441, 0x4164616d61776120284164616d616f756129, 1);
INSERT INTO `oc_zone` VALUES (593, 37, 0x43454e, 0x43656e747265, 1);
INSERT INTO `oc_zone` VALUES (594, 37, 0x455354, 0x45617374202845737429, 1);
INSERT INTO `oc_zone` VALUES (595, 37, 0x45584e, 0x45787472656d65204e6f727468202845787472656d652d4e6f726429, 1);
INSERT INTO `oc_zone` VALUES (596, 37, 0x4c4954, 0x4c6974746f72616c, 1);
INSERT INTO `oc_zone` VALUES (597, 37, 0x4e4f52, 0x4e6f72746820284e6f726429, 1);
INSERT INTO `oc_zone` VALUES (598, 37, 0x4e4f54, 0x4e6f7274687765737420284e6f72642d4f7565737429, 1);
INSERT INTO `oc_zone` VALUES (599, 37, 0x4f5545, 0x5765737420284f7565737429, 1);
INSERT INTO `oc_zone` VALUES (600, 37, 0x535544, 0x536f757468202853756429, 1);
INSERT INTO `oc_zone` VALUES (601, 37, 0x534f55, 0x536f7574687765737420285375642d4f75657374292e, 1);
INSERT INTO `oc_zone` VALUES (602, 38, 0x4142, 0x416c6265727461, 1);
INSERT INTO `oc_zone` VALUES (603, 38, 0x4243, 0x4272697469736820436f6c756d626961, 1);
INSERT INTO `oc_zone` VALUES (604, 38, 0x4d42, 0x4d616e69746f6261, 1);
INSERT INTO `oc_zone` VALUES (605, 38, 0x4e42, 0x4e6577204272756e737769636b, 1);
INSERT INTO `oc_zone` VALUES (606, 38, 0x4e4c, 0x4e6577666f756e646c616e6420616e64204c61627261646f72, 1);
INSERT INTO `oc_zone` VALUES (607, 38, 0x4e54, 0x4e6f72746877657374205465727269746f72696573, 1);
INSERT INTO `oc_zone` VALUES (608, 38, 0x4e53, 0x4e6f76612053636f746961, 1);
INSERT INTO `oc_zone` VALUES (609, 38, 0x4e55, 0x4e756e61767574, 1);
INSERT INTO `oc_zone` VALUES (610, 38, 0x4f4e, 0x4f6e746172696f, 1);
INSERT INTO `oc_zone` VALUES (611, 38, 0x5045, 0x5072696e6365204564776172642049736c616e64, 1);
INSERT INTO `oc_zone` VALUES (612, 38, 0x5143, 0x5175266561637574653b626563, 1);
INSERT INTO `oc_zone` VALUES (613, 38, 0x534b, 0x5361736b617463686577616e, 1);
INSERT INTO `oc_zone` VALUES (614, 38, 0x5954, 0x59756b6f6e205465727269746f7279, 1);
INSERT INTO `oc_zone` VALUES (615, 39, 0x4256, 0x426f61205669737461, 1);
INSERT INTO `oc_zone` VALUES (616, 39, 0x4252, 0x4272617661, 1);
INSERT INTO `oc_zone` VALUES (617, 39, 0x4353, 0x43616c686574612064652053616f204d696775656c, 1);
INSERT INTO `oc_zone` VALUES (618, 39, 0x4d41, 0x4d61696f, 1);
INSERT INTO `oc_zone` VALUES (619, 39, 0x4d4f, 0x4d6f73746569726f73, 1);
INSERT INTO `oc_zone` VALUES (620, 39, 0x5041, 0x5061756c, 1);
INSERT INTO `oc_zone` VALUES (621, 39, 0x504e, 0x506f72746f204e6f766f, 1);
INSERT INTO `oc_zone` VALUES (622, 39, 0x5052, 0x5072616961, 1);
INSERT INTO `oc_zone` VALUES (623, 39, 0x5247, 0x52696265697261204772616e6465, 1);
INSERT INTO `oc_zone` VALUES (624, 39, 0x534c, 0x53616c, 1);
INSERT INTO `oc_zone` VALUES (625, 39, 0x4341, 0x53616e7461204361746172696e61, 1);
INSERT INTO `oc_zone` VALUES (626, 39, 0x4352, 0x53616e7461204372757a, 1);
INSERT INTO `oc_zone` VALUES (627, 39, 0x5344, 0x53616f20446f6d696e676f73, 1);
INSERT INTO `oc_zone` VALUES (628, 39, 0x5346, 0x53616f2046696c697065, 1);
INSERT INTO `oc_zone` VALUES (629, 39, 0x534e, 0x53616f204e69636f6c6175, 1);
INSERT INTO `oc_zone` VALUES (630, 39, 0x5356, 0x53616f20566963656e7465, 1);
INSERT INTO `oc_zone` VALUES (631, 39, 0x5441, 0x546172726166616c, 1);
INSERT INTO `oc_zone` VALUES (632, 40, 0x4352, 0x437265656b, 1);
INSERT INTO `oc_zone` VALUES (633, 40, 0x4541, 0x4561737465726e, 1);
INSERT INTO `oc_zone` VALUES (634, 40, 0x4d4c, 0x4d69646c616e64, 1);
INSERT INTO `oc_zone` VALUES (635, 40, 0x5354, 0x536f75746820546f776e, 1);
INSERT INTO `oc_zone` VALUES (636, 40, 0x5350, 0x53706f7420426179, 1);
INSERT INTO `oc_zone` VALUES (637, 40, 0x534b, 0x5374616b6520426179, 1);
INSERT INTO `oc_zone` VALUES (638, 40, 0x5744, 0x5765737420456e64, 1);
INSERT INTO `oc_zone` VALUES (639, 40, 0x574e, 0x5765737465726e, 1);
INSERT INTO `oc_zone` VALUES (640, 41, 0x424241, 0x42616d696e6775692d42616e676f72616e, 1);
INSERT INTO `oc_zone` VALUES (641, 41, 0x424b4f, 0x42617373652d4b6f74746f, 1);
INSERT INTO `oc_zone` VALUES (642, 41, 0x484b4f, 0x48617574652d4b6f74746f, 1);
INSERT INTO `oc_zone` VALUES (643, 41, 0x484d42, 0x486175742d4d626f6d6f75, 1);
INSERT INTO `oc_zone` VALUES (644, 41, 0x4b454d, 0x4b656d6f, 1);
INSERT INTO `oc_zone` VALUES (645, 41, 0x4c4f42, 0x4c6f62617965, 1);
INSERT INTO `oc_zone` VALUES (646, 41, 0x4d4b44, 0x4d616d626572652d4b616465c394, 1);
INSERT INTO `oc_zone` VALUES (647, 41, 0x4d424f, 0x4d626f6d6f75, 1);
INSERT INTO `oc_zone` VALUES (648, 41, 0x4e4d4d, 0x4e616e612d4d616d62657265, 1);
INSERT INTO `oc_zone` VALUES (649, 41, 0x4f4d50, 0x4f6d62656c6c612d4d27506f6b6f, 1);
INSERT INTO `oc_zone` VALUES (650, 41, 0x4f554b, 0x4f75616b61, 1);
INSERT INTO `oc_zone` VALUES (651, 41, 0x4f5548, 0x4f7568616d, 1);
INSERT INTO `oc_zone` VALUES (652, 41, 0x4f5045, 0x4f7568616d2d50656e6465, 1);
INSERT INTO `oc_zone` VALUES (653, 41, 0x56414b, 0x56616b616761, 1);
INSERT INTO `oc_zone` VALUES (654, 41, 0x4e4752, 0x4e616e612d47726562697a69, 1);
INSERT INTO `oc_zone` VALUES (655, 41, 0x534d42, 0x53616e6768612d4d6261657265, 1);
INSERT INTO `oc_zone` VALUES (656, 41, 0x42414e, 0x42616e677569, 1);
INSERT INTO `oc_zone` VALUES (657, 42, 0x4241, 0x4261746861, 1);
INSERT INTO `oc_zone` VALUES (658, 42, 0x4249, 0x42696c74696e65, 1);
INSERT INTO `oc_zone` VALUES (659, 42, 0x4245, 0x426f726b6f752d456e6e6564692d54696265737469, 1);
INSERT INTO `oc_zone` VALUES (660, 42, 0x4342, 0x43686172692d4261677569726d69, 1);
INSERT INTO `oc_zone` VALUES (661, 42, 0x4755, 0x4775657261, 1);
INSERT INTO `oc_zone` VALUES (662, 42, 0x4b41, 0x4b616e656d, 1);
INSERT INTO `oc_zone` VALUES (663, 42, 0x4c41, 0x4c6163, 1);
INSERT INTO `oc_zone` VALUES (664, 42, 0x4c43, 0x4c6f676f6e65204f63636964656e74616c, 1);
INSERT INTO `oc_zone` VALUES (665, 42, 0x4c52, 0x4c6f676f6e65204f7269656e74616c, 1);
INSERT INTO `oc_zone` VALUES (666, 42, 0x4d4b, 0x4d61796f2d4b65626269, 1);
INSERT INTO `oc_zone` VALUES (667, 42, 0x4d43, 0x4d6f79656e2d4368617269, 1);
INSERT INTO `oc_zone` VALUES (668, 42, 0x4f55, 0x4f756164646169, 1);
INSERT INTO `oc_zone` VALUES (669, 42, 0x5341, 0x53616c616d6174, 1);
INSERT INTO `oc_zone` VALUES (670, 42, 0x5441, 0x54616e646a696c65, 1);
INSERT INTO `oc_zone` VALUES (671, 43, 0x4149, 0x416973656e2064656c2047656e6572616c204361726c6f73204962616e657a, 1);
INSERT INTO `oc_zone` VALUES (672, 43, 0x414e, 0x416e746f66616761737461, 1);
INSERT INTO `oc_zone` VALUES (673, 43, 0x4152, 0x4172617563616e6961, 1);
INSERT INTO `oc_zone` VALUES (674, 43, 0x4154, 0x41746163616d61, 1);
INSERT INTO `oc_zone` VALUES (675, 43, 0x4249, 0x42696f2d42696f, 1);
INSERT INTO `oc_zone` VALUES (676, 43, 0x434f, 0x436f7175696d626f, 1);
INSERT INTO `oc_zone` VALUES (677, 43, 0x4c49, 0x4c696265727461646f722047656e6572616c204265726e6172646f204f274869, 1);
INSERT INTO `oc_zone` VALUES (678, 43, 0x4c4c, 0x4c6f73204c61676f73, 1);
INSERT INTO `oc_zone` VALUES (679, 43, 0x4d41, 0x4d6167616c6c616e65732079206465206c6120416e7461727469636120436869, 1);
INSERT INTO `oc_zone` VALUES (680, 43, 0x4d4c, 0x4d61756c65, 1);
INSERT INTO `oc_zone` VALUES (681, 43, 0x524d, 0x526567696f6e204d6574726f706f6c6974616e61, 1);
INSERT INTO `oc_zone` VALUES (682, 43, 0x5441, 0x5461726170616361, 1);
INSERT INTO `oc_zone` VALUES (683, 43, 0x5653, 0x56616c7061726169736f, 1);
INSERT INTO `oc_zone` VALUES (684, 44, 0x414e, 0x416e687569, 1);
INSERT INTO `oc_zone` VALUES (685, 44, 0x4245, 0x4265696a696e67, 1);
INSERT INTO `oc_zone` VALUES (686, 44, 0x4348, 0x43686f6e6771696e67, 1);
INSERT INTO `oc_zone` VALUES (687, 44, 0x4655, 0x46756a69616e, 1);
INSERT INTO `oc_zone` VALUES (688, 44, 0x4741, 0x47616e7375, 1);
INSERT INTO `oc_zone` VALUES (689, 44, 0x4755, 0x4775616e67646f6e67, 1);
INSERT INTO `oc_zone` VALUES (690, 44, 0x4758, 0x4775616e677869, 1);
INSERT INTO `oc_zone` VALUES (691, 44, 0x475a, 0x4775697a686f75, 1);
INSERT INTO `oc_zone` VALUES (692, 44, 0x4841, 0x4861696e616e, 1);
INSERT INTO `oc_zone` VALUES (693, 44, 0x4842, 0x4865626569, 1);
INSERT INTO `oc_zone` VALUES (694, 44, 0x484c, 0x4865696c6f6e676a69616e67, 1);
INSERT INTO `oc_zone` VALUES (695, 44, 0x4845, 0x48656e616e, 1);
INSERT INTO `oc_zone` VALUES (696, 44, 0x484b, 0x486f6e67204b6f6e67, 1);
INSERT INTO `oc_zone` VALUES (697, 44, 0x4855, 0x4875626569, 1);
INSERT INTO `oc_zone` VALUES (698, 44, 0x484e, 0x48756e616e, 1);
INSERT INTO `oc_zone` VALUES (699, 44, 0x494d, 0x496e6e6572204d6f6e676f6c6961, 1);
INSERT INTO `oc_zone` VALUES (700, 44, 0x4a49, 0x4a69616e677375, 1);
INSERT INTO `oc_zone` VALUES (701, 44, 0x4a58, 0x4a69616e677869, 1);
INSERT INTO `oc_zone` VALUES (702, 44, 0x4a4c, 0x4a696c696e, 1);
INSERT INTO `oc_zone` VALUES (703, 44, 0x4c49, 0x4c69616f6e696e67, 1);
INSERT INTO `oc_zone` VALUES (704, 44, 0x4d41, 0x4d61636175, 1);
INSERT INTO `oc_zone` VALUES (705, 44, 0x4e49, 0x4e696e67786961, 1);
INSERT INTO `oc_zone` VALUES (706, 44, 0x5348, 0x536861616e7869, 1);
INSERT INTO `oc_zone` VALUES (707, 44, 0x5341, 0x5368616e646f6e67, 1);
INSERT INTO `oc_zone` VALUES (708, 44, 0x5347, 0x5368616e67686169, 1);
INSERT INTO `oc_zone` VALUES (709, 44, 0x5358, 0x5368616e7869, 1);
INSERT INTO `oc_zone` VALUES (710, 44, 0x5349, 0x5369636875616e, 1);
INSERT INTO `oc_zone` VALUES (711, 44, 0x5449, 0x5469616e6a696e, 1);
INSERT INTO `oc_zone` VALUES (712, 44, 0x5849, 0x58696e6a69616e67, 1);
INSERT INTO `oc_zone` VALUES (713, 44, 0x5955, 0x59756e6e616e, 1);
INSERT INTO `oc_zone` VALUES (714, 44, 0x5a48, 0x5a68656a69616e67, 1);
INSERT INTO `oc_zone` VALUES (715, 46, 0x44, 0x446972656374696f6e2049736c616e64, 1);
INSERT INTO `oc_zone` VALUES (716, 46, 0x48, 0x486f6d652049736c616e64, 1);
INSERT INTO `oc_zone` VALUES (717, 46, 0x4f, 0x486f727362757267682049736c616e64, 1);
INSERT INTO `oc_zone` VALUES (718, 46, 0x53, 0x536f7574682049736c616e64, 1);
INSERT INTO `oc_zone` VALUES (719, 46, 0x57, 0x576573742049736c616e64, 1);
INSERT INTO `oc_zone` VALUES (720, 47, 0x414d5a, 0x416d617a6f6e6173, 1);
INSERT INTO `oc_zone` VALUES (721, 47, 0x414e54, 0x416e74696f71756961, 1);
INSERT INTO `oc_zone` VALUES (722, 47, 0x415241, 0x417261756361, 1);
INSERT INTO `oc_zone` VALUES (723, 47, 0x41544c, 0x41746c616e7469636f, 1);
INSERT INTO `oc_zone` VALUES (724, 47, 0x424443, 0x426f676f746120442e432e, 1);
INSERT INTO `oc_zone` VALUES (725, 47, 0x424f4c, 0x426f6c69766172, 1);
INSERT INTO `oc_zone` VALUES (726, 47, 0x424f59, 0x426f79616361, 1);
INSERT INTO `oc_zone` VALUES (727, 47, 0x43414c, 0x43616c646173, 1);
INSERT INTO `oc_zone` VALUES (728, 47, 0x434151, 0x43617175657461, 1);
INSERT INTO `oc_zone` VALUES (729, 47, 0x434153, 0x436173616e617265, 1);
INSERT INTO `oc_zone` VALUES (730, 47, 0x434155, 0x4361756361, 1);
INSERT INTO `oc_zone` VALUES (731, 47, 0x434553, 0x4365736172, 1);
INSERT INTO `oc_zone` VALUES (732, 47, 0x43484f, 0x43686f636f, 1);
INSERT INTO `oc_zone` VALUES (733, 47, 0x434f52, 0x436f72646f6261, 1);
INSERT INTO `oc_zone` VALUES (734, 47, 0x43414d, 0x43756e64696e616d61726361, 1);
INSERT INTO `oc_zone` VALUES (735, 47, 0x474e41, 0x477561696e6961, 1);
INSERT INTO `oc_zone` VALUES (736, 47, 0x474a52, 0x4775616a697261, 1);
INSERT INTO `oc_zone` VALUES (737, 47, 0x475652, 0x4775617669617265, 1);
INSERT INTO `oc_zone` VALUES (738, 47, 0x485549, 0x4875696c61, 1);
INSERT INTO `oc_zone` VALUES (739, 47, 0x4d4147, 0x4d616764616c656e61, 1);
INSERT INTO `oc_zone` VALUES (740, 47, 0x4d4554, 0x4d657461, 1);
INSERT INTO `oc_zone` VALUES (741, 47, 0x4e4152, 0x4e6172696e6f, 1);
INSERT INTO `oc_zone` VALUES (742, 47, 0x4e4453, 0x4e6f7274652064652053616e74616e646572, 1);
INSERT INTO `oc_zone` VALUES (743, 47, 0x505554, 0x507574756d61796f, 1);
INSERT INTO `oc_zone` VALUES (744, 47, 0x515549, 0x5175696e64696f, 1);
INSERT INTO `oc_zone` VALUES (745, 47, 0x524953, 0x5269736172616c6461, 1);
INSERT INTO `oc_zone` VALUES (746, 47, 0x534150, 0x53616e20416e6472657320792050726f766964656e636961, 1);
INSERT INTO `oc_zone` VALUES (747, 47, 0x53414e, 0x53616e74616e646572, 1);
INSERT INTO `oc_zone` VALUES (748, 47, 0x535543, 0x5375637265, 1);
INSERT INTO `oc_zone` VALUES (749, 47, 0x544f4c, 0x546f6c696d61, 1);
INSERT INTO `oc_zone` VALUES (750, 47, 0x564443, 0x56616c6c652064656c204361756361, 1);
INSERT INTO `oc_zone` VALUES (751, 47, 0x564155, 0x566175706573, 1);
INSERT INTO `oc_zone` VALUES (752, 47, 0x564943, 0x56696368616461, 1);
INSERT INTO `oc_zone` VALUES (753, 48, 0x47, 0x4772616e646520436f6d6f7265, 1);
INSERT INTO `oc_zone` VALUES (754, 48, 0x41, 0x416e6a6f75616e, 1);
INSERT INTO `oc_zone` VALUES (755, 48, 0x4d, 0x4d6f68656c69, 1);
INSERT INTO `oc_zone` VALUES (756, 49, 0x424f, 0x426f75656e7a61, 1);
INSERT INTO `oc_zone` VALUES (757, 49, 0x4252, 0x4272617a7a6176696c6c65, 1);
INSERT INTO `oc_zone` VALUES (758, 49, 0x4355, 0x43757665747465, 1);
INSERT INTO `oc_zone` VALUES (759, 49, 0x434f, 0x437576657474652d4f75657374, 1);
INSERT INTO `oc_zone` VALUES (760, 49, 0x4b4f, 0x4b6f75696c6f75, 1);
INSERT INTO `oc_zone` VALUES (761, 49, 0x4c45, 0x4c656b6f756d6f75, 1);
INSERT INTO `oc_zone` VALUES (762, 49, 0x4c49, 0x4c696b6f75616c61, 1);
INSERT INTO `oc_zone` VALUES (763, 49, 0x4e49, 0x4e69617269, 1);
INSERT INTO `oc_zone` VALUES (764, 49, 0x504c, 0x506c617465617578, 1);
INSERT INTO `oc_zone` VALUES (765, 49, 0x504f, 0x506f6f6c, 1);
INSERT INTO `oc_zone` VALUES (766, 49, 0x5341, 0x53616e676861, 1);
INSERT INTO `oc_zone` VALUES (767, 50, 0x5055, 0x50756b6170756b61, 1);
INSERT INTO `oc_zone` VALUES (768, 50, 0x524b, 0x52616b6168616e6761, 1);
INSERT INTO `oc_zone` VALUES (769, 50, 0x4d4b, 0x4d616e6968696b69, 1);
INSERT INTO `oc_zone` VALUES (770, 50, 0x5045, 0x50656e7268796e, 1);
INSERT INTO `oc_zone` VALUES (771, 50, 0x4e49, 0x4e61737361752049736c616e64, 1);
INSERT INTO `oc_zone` VALUES (772, 50, 0x5355, 0x537572776172726f77, 1);
INSERT INTO `oc_zone` VALUES (773, 50, 0x5041, 0x50616c6d657273746f6e, 1);
INSERT INTO `oc_zone` VALUES (774, 50, 0x4149, 0x4169747574616b69, 1);
INSERT INTO `oc_zone` VALUES (775, 50, 0x4d41, 0x4d616e756165, 1);
INSERT INTO `oc_zone` VALUES (776, 50, 0x5441, 0x54616b75746561, 1);
INSERT INTO `oc_zone` VALUES (777, 50, 0x4d54, 0x4d69746961726f, 1);
INSERT INTO `oc_zone` VALUES (778, 50, 0x4154, 0x41746975, 1);
INSERT INTO `oc_zone` VALUES (779, 50, 0x4d55, 0x4d61756b65, 1);
INSERT INTO `oc_zone` VALUES (780, 50, 0x5252, 0x5261726f746f6e6761, 1);
INSERT INTO `oc_zone` VALUES (781, 50, 0x4d47, 0x4d616e67616961, 1);
INSERT INTO `oc_zone` VALUES (782, 51, 0x414c, 0x416c616a75656c61, 1);
INSERT INTO `oc_zone` VALUES (783, 51, 0x4341, 0x4361727461676f, 1);
INSERT INTO `oc_zone` VALUES (784, 51, 0x4755, 0x4775616e616361737465, 1);
INSERT INTO `oc_zone` VALUES (785, 51, 0x4845, 0x48657265646961, 1);
INSERT INTO `oc_zone` VALUES (786, 51, 0x4c49, 0x4c696d6f6e, 1);
INSERT INTO `oc_zone` VALUES (787, 51, 0x5055, 0x50756e746172656e6173, 1);
INSERT INTO `oc_zone` VALUES (788, 51, 0x534a, 0x53616e204a6f7365, 1);
INSERT INTO `oc_zone` VALUES (789, 52, 0x414245, 0x4162656e676f75726f75, 1);
INSERT INTO `oc_zone` VALUES (790, 52, 0x414249, 0x416269646a616e, 1);
INSERT INTO `oc_zone` VALUES (791, 52, 0x41424f, 0x41626f6973736f, 1);
INSERT INTO `oc_zone` VALUES (792, 52, 0x414449, 0x416469616b65, 1);
INSERT INTO `oc_zone` VALUES (793, 52, 0x41445a, 0x41647a6f7065, 1);
INSERT INTO `oc_zone` VALUES (794, 52, 0x414742, 0x4167626f76696c6c65, 1);
INSERT INTO `oc_zone` VALUES (795, 52, 0x41474e, 0x41676e6962696c656b726f75, 1);
INSERT INTO `oc_zone` VALUES (796, 52, 0x414c45, 0x416c657065, 1);
INSERT INTO `oc_zone` VALUES (797, 52, 0x424f43, 0x426f63616e6461, 1);
INSERT INTO `oc_zone` VALUES (798, 52, 0x42414e, 0x42616e676f6c6f, 1);
INSERT INTO `oc_zone` VALUES (799, 52, 0x42454f, 0x42656f756d69, 1);
INSERT INTO `oc_zone` VALUES (800, 52, 0x424941, 0x4269616e6b6f756d61, 1);
INSERT INTO `oc_zone` VALUES (801, 52, 0x42444b, 0x426f6e646f756b6f75, 1);
INSERT INTO `oc_zone` VALUES (802, 52, 0x42474e, 0x426f6e676f75616e6f75, 1);
INSERT INTO `oc_zone` VALUES (803, 52, 0x42464c, 0x426f7561666c65, 1);
INSERT INTO `oc_zone` VALUES (804, 52, 0x424b45, 0x426f75616b65, 1);
INSERT INTO `oc_zone` VALUES (805, 52, 0x424e41, 0x426f756e61, 1);
INSERT INTO `oc_zone` VALUES (806, 52, 0x42444c, 0x426f756e6469616c69, 1);
INSERT INTO `oc_zone` VALUES (807, 52, 0x444b4c, 0x446162616b616c61, 1);
INSERT INTO `oc_zone` VALUES (808, 52, 0x444255, 0x4461626f75, 1);
INSERT INTO `oc_zone` VALUES (809, 52, 0x44414c, 0x44616c6f61, 1);
INSERT INTO `oc_zone` VALUES (810, 52, 0x44414e, 0x44616e616e65, 1);
INSERT INTO `oc_zone` VALUES (811, 52, 0x44414f, 0x44616f756b726f, 1);
INSERT INTO `oc_zone` VALUES (812, 52, 0x44494d, 0x44696d626f6b726f, 1);
INSERT INTO `oc_zone` VALUES (813, 52, 0x444956, 0x4469766f, 1);
INSERT INTO `oc_zone` VALUES (814, 52, 0x445545, 0x4475656b6f7565, 1);
INSERT INTO `oc_zone` VALUES (815, 52, 0x464552, 0x4665726b65737365646f75676f75, 1);
INSERT INTO `oc_zone` VALUES (816, 52, 0x474147, 0x4761676e6f61, 1);
INSERT INTO `oc_zone` VALUES (817, 52, 0x474241, 0x4772616e642d42617373616d, 1);
INSERT INTO `oc_zone` VALUES (818, 52, 0x474c41, 0x4772616e642d4c61686f75, 1);
INSERT INTO `oc_zone` VALUES (819, 52, 0x475549, 0x477569676c6f, 1);
INSERT INTO `oc_zone` VALUES (820, 52, 0x495353, 0x4973736961, 1);
INSERT INTO `oc_zone` VALUES (821, 52, 0x4a4143, 0x4a616371756576696c6c65, 1);
INSERT INTO `oc_zone` VALUES (822, 52, 0x4b4154, 0x4b6174696f6c61, 1);
INSERT INTO `oc_zone` VALUES (823, 52, 0x4b4f52, 0x4b6f72686f676f, 1);
INSERT INTO `oc_zone` VALUES (824, 52, 0x4c414b, 0x4c616b6f7461, 1);
INSERT INTO `oc_zone` VALUES (825, 52, 0x4d414e, 0x4d616e, 1);
INSERT INTO `oc_zone` VALUES (826, 52, 0x4d4b4e, 0x4d616e6b6f6e6f, 1);
INSERT INTO `oc_zone` VALUES (827, 52, 0x4d4241, 0x4d62616869616b726f, 1);
INSERT INTO `oc_zone` VALUES (828, 52, 0x4f4449, 0x4f6469656e6e65, 1);
INSERT INTO `oc_zone` VALUES (829, 52, 0x4f554d, 0x4f756d65, 1);
INSERT INTO `oc_zone` VALUES (830, 52, 0x53414b, 0x53616b6173736f75, 1);
INSERT INTO `oc_zone` VALUES (831, 52, 0x535045, 0x53616e2d506564726f, 1);
INSERT INTO `oc_zone` VALUES (832, 52, 0x534153, 0x53617373616e647261, 1);
INSERT INTO `oc_zone` VALUES (833, 52, 0x534547, 0x53656775656c61, 1);
INSERT INTO `oc_zone` VALUES (834, 52, 0x53494e, 0x53696e667261, 1);
INSERT INTO `oc_zone` VALUES (835, 52, 0x534f55, 0x536f75627265, 1);
INSERT INTO `oc_zone` VALUES (836, 52, 0x544142, 0x5461626f75, 1);
INSERT INTO `oc_zone` VALUES (837, 52, 0x54414e, 0x54616e6461, 1);
INSERT INTO `oc_zone` VALUES (838, 52, 0x544945, 0x546965626973736f75, 1);
INSERT INTO `oc_zone` VALUES (839, 52, 0x54494e, 0x54696e6772656c61, 1);
INSERT INTO `oc_zone` VALUES (840, 52, 0x544941, 0x5469617373616c65, 1);
INSERT INTO `oc_zone` VALUES (841, 52, 0x544241, 0x546f756261, 1);
INSERT INTO `oc_zone` VALUES (842, 52, 0x544c50, 0x546f756c65706c6575, 1);
INSERT INTO `oc_zone` VALUES (843, 52, 0x544d44, 0x546f756d6f6469, 1);
INSERT INTO `oc_zone` VALUES (844, 52, 0x564156, 0x5661766f7561, 1);
INSERT INTO `oc_zone` VALUES (845, 52, 0x59414d, 0x59616d6f7573736f756b726f, 1);
INSERT INTO `oc_zone` VALUES (846, 52, 0x5a5545, 0x5a75656e6f756c61, 1);
INSERT INTO `oc_zone` VALUES (847, 53, 0x4242, 0x426a656c6f7661722d42696c6f676f7261, 1);
INSERT INTO `oc_zone` VALUES (848, 53, 0x435a, 0x43697479206f66205a6167726562, 1);
INSERT INTO `oc_zone` VALUES (849, 53, 0x444e, 0x447562726f766e696b2d4e657265747661, 1);
INSERT INTO `oc_zone` VALUES (850, 53, 0x4953, 0x4973747261, 1);
INSERT INTO `oc_zone` VALUES (851, 53, 0x4b41, 0x4b61726c6f766163, 1);
INSERT INTO `oc_zone` VALUES (852, 53, 0x4b4b, 0x4b6f707269766e6963612d4b72697a65766369, 1);
INSERT INTO `oc_zone` VALUES (853, 53, 0x4b5a, 0x4b726170696e612d5a61676f726a65, 1);
INSERT INTO `oc_zone` VALUES (854, 53, 0x4c53, 0x4c696b612d53656e6a, 1);
INSERT INTO `oc_zone` VALUES (855, 53, 0x4d45, 0x4d6564696d75726a65, 1);
INSERT INTO `oc_zone` VALUES (856, 53, 0x4f42, 0x4f73696a656b2d426172616e6a61, 1);
INSERT INTO `oc_zone` VALUES (857, 53, 0x5053, 0x506f7a6567612d536c61766f6e6961, 1);
INSERT INTO `oc_zone` VALUES (858, 53, 0x5047, 0x5072696d6f726a652d476f72736b69204b6f746172, 1);
INSERT INTO `oc_zone` VALUES (859, 53, 0x5349, 0x536962656e696b, 1);
INSERT INTO `oc_zone` VALUES (860, 53, 0x534d, 0x536973616b2d4d6f736c6176696e61, 1);
INSERT INTO `oc_zone` VALUES (861, 53, 0x5342, 0x536c61766f6e736b692042726f642d506f736176696e61, 1);
INSERT INTO `oc_zone` VALUES (862, 53, 0x5344, 0x53706c69742d44616c6d61746961, 1);
INSERT INTO `oc_zone` VALUES (863, 53, 0x5641, 0x566172617a64696e, 1);
INSERT INTO `oc_zone` VALUES (864, 53, 0x5650, 0x5669726f7669746963612d506f64726176696e61, 1);
INSERT INTO `oc_zone` VALUES (865, 53, 0x5653, 0x56756b6f7661722d5372696a656d, 1);
INSERT INTO `oc_zone` VALUES (866, 53, 0x5a4b, 0x5a616461722d4b6e696e, 1);
INSERT INTO `oc_zone` VALUES (867, 53, 0x5a41, 0x5a6167726562, 1);
INSERT INTO `oc_zone` VALUES (868, 54, 0x4341, 0x43616d6167756579, 1);
INSERT INTO `oc_zone` VALUES (869, 54, 0x4344, 0x436965676f206465204176696c61, 1);
INSERT INTO `oc_zone` VALUES (870, 54, 0x4349, 0x4369656e667565676f73, 1);
INSERT INTO `oc_zone` VALUES (871, 54, 0x4348, 0x436975646164206465204c6120486162616e61, 1);
INSERT INTO `oc_zone` VALUES (872, 54, 0x4752, 0x4772616e6d61, 1);
INSERT INTO `oc_zone` VALUES (873, 54, 0x4755, 0x4775616e74616e616d6f, 1);
INSERT INTO `oc_zone` VALUES (874, 54, 0x484f, 0x486f6c6775696e, 1);
INSERT INTO `oc_zone` VALUES (875, 54, 0x494a, 0x49736c61206465206c61204a7576656e747564, 1);
INSERT INTO `oc_zone` VALUES (876, 54, 0x4c48, 0x4c6120486162616e61, 1);
INSERT INTO `oc_zone` VALUES (877, 54, 0x4c54, 0x4c61732054756e6173, 1);
INSERT INTO `oc_zone` VALUES (878, 54, 0x4d41, 0x4d6174616e7a6173, 1);
INSERT INTO `oc_zone` VALUES (879, 54, 0x5052, 0x50696e61722064656c2052696f, 1);
INSERT INTO `oc_zone` VALUES (880, 54, 0x5353, 0x53616e637469205370697269747573, 1);
INSERT INTO `oc_zone` VALUES (881, 54, 0x5343, 0x53616e746961676f2064652043756261, 1);
INSERT INTO `oc_zone` VALUES (882, 54, 0x5643, 0x56696c6c6120436c617261, 1);
INSERT INTO `oc_zone` VALUES (883, 55, 0x46, 0x46616d616775737461, 1);
INSERT INTO `oc_zone` VALUES (884, 55, 0x4b, 0x4b7972656e6961, 1);
INSERT INTO `oc_zone` VALUES (885, 55, 0x41, 0x4c61726e616361, 1);
INSERT INTO `oc_zone` VALUES (886, 55, 0x49, 0x4c696d6173736f6c, 1);
INSERT INTO `oc_zone` VALUES (887, 55, 0x4e, 0x4e69636f736961, 1);
INSERT INTO `oc_zone` VALUES (888, 55, 0x50, 0x506170686f73, 1);
INSERT INTO `oc_zone` VALUES (889, 56, 0x55, 0x55737465636b79, 1);
INSERT INTO `oc_zone` VALUES (890, 56, 0x43, 0x4a69686f6365736b79, 1);
INSERT INTO `oc_zone` VALUES (891, 56, 0x42, 0x4a69686f6d6f726176736b79, 1);
INSERT INTO `oc_zone` VALUES (892, 56, 0x4b, 0x4b61726c6f766172736b79, 1);
INSERT INTO `oc_zone` VALUES (893, 56, 0x48, 0x4b72616c6f76656872616465636b79, 1);
INSERT INTO `oc_zone` VALUES (894, 56, 0x4c, 0x4c6962657265636b79, 1);
INSERT INTO `oc_zone` VALUES (895, 56, 0x54, 0x4d6f726176736b6f736c657a736b79, 1);
INSERT INTO `oc_zone` VALUES (896, 56, 0x4d, 0x4f6c6f6d6f75636b79, 1);
INSERT INTO `oc_zone` VALUES (897, 56, 0x45, 0x50617264756269636b79, 1);
INSERT INTO `oc_zone` VALUES (898, 56, 0x50, 0x506c7a656e736b79, 1);
INSERT INTO `oc_zone` VALUES (899, 56, 0x41, 0x5072616861, 1);
INSERT INTO `oc_zone` VALUES (900, 56, 0x53, 0x53747265646f6365736b79, 1);
INSERT INTO `oc_zone` VALUES (901, 56, 0x4a, 0x5679736f63696e61, 1);
INSERT INTO `oc_zone` VALUES (902, 56, 0x5a, 0x5a6c696e736b79, 1);
INSERT INTO `oc_zone` VALUES (903, 57, 0x4152, 0x4172687573, 1);
INSERT INTO `oc_zone` VALUES (904, 57, 0x4248, 0x426f726e686f6c6d, 1);
INSERT INTO `oc_zone` VALUES (905, 57, 0x434f, 0x436f70656e686167656e, 1);
INSERT INTO `oc_zone` VALUES (906, 57, 0x464f, 0x4661726f652049736c616e6473, 1);
INSERT INTO `oc_zone` VALUES (907, 57, 0x4652, 0x467265646572696b73626f7267, 1);
INSERT INTO `oc_zone` VALUES (908, 57, 0x4659, 0x46796e, 1);
INSERT INTO `oc_zone` VALUES (909, 57, 0x4b4f, 0x4b6f62656e6861766e, 1);
INSERT INTO `oc_zone` VALUES (910, 57, 0x4e4f, 0x4e6f72646a796c6c616e64, 1);
INSERT INTO `oc_zone` VALUES (911, 57, 0x5249, 0x52696265, 1);
INSERT INTO `oc_zone` VALUES (912, 57, 0x524b, 0x52696e676b6f62696e67, 1);
INSERT INTO `oc_zone` VALUES (913, 57, 0x524f, 0x526f736b696c6465, 1);
INSERT INTO `oc_zone` VALUES (914, 57, 0x534f, 0x536f6e6465726a796c6c616e64, 1);
INSERT INTO `oc_zone` VALUES (915, 57, 0x5354, 0x53746f727374726f6d, 1);
INSERT INTO `oc_zone` VALUES (916, 57, 0x564b, 0x56656a6c65, 1);
INSERT INTO `oc_zone` VALUES (917, 57, 0x564a, 0x566573746a2661656c69673b6c6c616e64, 1);
INSERT INTO `oc_zone` VALUES (918, 57, 0x5642, 0x5669626f7267, 1);
INSERT INTO `oc_zone` VALUES (919, 58, 0x53, 0x27416c69205361626968, 1);
INSERT INTO `oc_zone` VALUES (920, 58, 0x4b, 0x44696b68696c, 1);
INSERT INTO `oc_zone` VALUES (921, 58, 0x4a, 0x446a69626f757469, 1);
INSERT INTO `oc_zone` VALUES (922, 58, 0x4f, 0x4f626f636b, 1);
INSERT INTO `oc_zone` VALUES (923, 58, 0x54, 0x5461646a6f757261, 1);
INSERT INTO `oc_zone` VALUES (924, 59, 0x414e44, 0x5361696e7420416e6472657720506172697368, 1);
INSERT INTO `oc_zone` VALUES (925, 59, 0x444156, 0x5361696e7420446176696420506172697368, 1);
INSERT INTO `oc_zone` VALUES (926, 59, 0x47454f, 0x5361696e742047656f72676520506172697368, 1);
INSERT INTO `oc_zone` VALUES (927, 59, 0x4a4f48, 0x5361696e74204a6f686e20506172697368, 1);
INSERT INTO `oc_zone` VALUES (928, 59, 0x4a4f53, 0x5361696e74204a6f7365706820506172697368, 1);
INSERT INTO `oc_zone` VALUES (929, 59, 0x4c554b, 0x5361696e74204c756b6520506172697368, 1);
INSERT INTO `oc_zone` VALUES (930, 59, 0x4d4152, 0x5361696e74204d61726b20506172697368, 1);
INSERT INTO `oc_zone` VALUES (931, 59, 0x504154, 0x5361696e74205061747269636b20506172697368, 1);
INSERT INTO `oc_zone` VALUES (932, 59, 0x504155, 0x5361696e74205061756c20506172697368, 1);
INSERT INTO `oc_zone` VALUES (933, 59, 0x504554, 0x5361696e7420506574657220506172697368, 1);
INSERT INTO `oc_zone` VALUES (934, 60, 0x444e, 0x446973747269746f204e6163696f6e616c, 1);
INSERT INTO `oc_zone` VALUES (935, 60, 0x415a, 0x417a7561, 1);
INSERT INTO `oc_zone` VALUES (936, 60, 0x4243, 0x42616f7275636f, 1);
INSERT INTO `oc_zone` VALUES (937, 60, 0x4248, 0x42617261686f6e61, 1);
INSERT INTO `oc_zone` VALUES (938, 60, 0x444a, 0x44616a61626f6e, 1);
INSERT INTO `oc_zone` VALUES (939, 60, 0x4455, 0x447561727465, 1);
INSERT INTO `oc_zone` VALUES (940, 60, 0x454c, 0x456c6961732050696e61, 1);
INSERT INTO `oc_zone` VALUES (941, 60, 0x5359, 0x456c20536579626f, 1);
INSERT INTO `oc_zone` VALUES (942, 60, 0x4554, 0x45737061696c6c6174, 1);
INSERT INTO `oc_zone` VALUES (943, 60, 0x484d, 0x4861746f204d61796f72, 1);
INSERT INTO `oc_zone` VALUES (944, 60, 0x494e, 0x496e646570656e64656e636961, 1);
INSERT INTO `oc_zone` VALUES (945, 60, 0x414c, 0x4c6120416c7461677261636961, 1);
INSERT INTO `oc_zone` VALUES (946, 60, 0x524f, 0x4c6120526f6d616e61, 1);
INSERT INTO `oc_zone` VALUES (947, 60, 0x5645, 0x4c612056656761, 1);
INSERT INTO `oc_zone` VALUES (948, 60, 0x4d54, 0x4d61726961205472696e696461642053616e6368657a, 1);
INSERT INTO `oc_zone` VALUES (949, 60, 0x4d4e, 0x4d6f6e73656e6f72204e6f75656c, 1);
INSERT INTO `oc_zone` VALUES (950, 60, 0x4d43, 0x4d6f6e746520437269737469, 1);
INSERT INTO `oc_zone` VALUES (951, 60, 0x4d50, 0x4d6f6e746520506c617461, 1);
INSERT INTO `oc_zone` VALUES (952, 60, 0x5044, 0x50656465726e616c6573, 1);
INSERT INTO `oc_zone` VALUES (953, 60, 0x5052, 0x50657261766961202842616e6929, 1);
INSERT INTO `oc_zone` VALUES (954, 60, 0x5050, 0x50756572746f20506c617461, 1);
INSERT INTO `oc_zone` VALUES (955, 60, 0x534c, 0x53616c6365646f, 1);
INSERT INTO `oc_zone` VALUES (956, 60, 0x534d, 0x53616d616e61, 1);
INSERT INTO `oc_zone` VALUES (957, 60, 0x5348, 0x53616e6368657a2052616d6972657a, 1);
INSERT INTO `oc_zone` VALUES (958, 60, 0x5343, 0x53616e2043726973746f62616c, 1);
INSERT INTO `oc_zone` VALUES (959, 60, 0x4a4f, 0x53616e204a6f7365206465204f636f61, 1);
INSERT INTO `oc_zone` VALUES (960, 60, 0x534a, 0x53616e204a75616e, 1);
INSERT INTO `oc_zone` VALUES (961, 60, 0x504d, 0x53616e20506564726f206465204d61636f726973, 1);
INSERT INTO `oc_zone` VALUES (962, 60, 0x5341, 0x53616e746961676f, 1);
INSERT INTO `oc_zone` VALUES (963, 60, 0x5354, 0x53616e746961676f20526f6472696775657a, 1);
INSERT INTO `oc_zone` VALUES (964, 60, 0x5344, 0x53616e746f20446f6d696e676f, 1);
INSERT INTO `oc_zone` VALUES (965, 60, 0x5641, 0x56616c7665726465, 1);
INSERT INTO `oc_zone` VALUES (966, 61, 0x414c, 0x41696c6575, 1);
INSERT INTO `oc_zone` VALUES (967, 61, 0x414e, 0x41696e61726f, 1);
INSERT INTO `oc_zone` VALUES (968, 61, 0x4241, 0x426175636175, 1);
INSERT INTO `oc_zone` VALUES (969, 61, 0x424f, 0x426f626f6e61726f, 1);
INSERT INTO `oc_zone` VALUES (970, 61, 0x434f, 0x436f7661204c696d61, 1);
INSERT INTO `oc_zone` VALUES (971, 61, 0x4449, 0x44696c69, 1);
INSERT INTO `oc_zone` VALUES (972, 61, 0x4552, 0x45726d657261, 1);
INSERT INTO `oc_zone` VALUES (973, 61, 0x4c41, 0x4c617574656d, 1);
INSERT INTO `oc_zone` VALUES (974, 61, 0x4c49, 0x4c697175696361, 1);
INSERT INTO `oc_zone` VALUES (975, 61, 0x4d54, 0x4d616e617475746f, 1);
INSERT INTO `oc_zone` VALUES (976, 61, 0x4d46, 0x4d616e7566616869, 1);
INSERT INTO `oc_zone` VALUES (977, 61, 0x4f45, 0x4f656375737369, 1);
INSERT INTO `oc_zone` VALUES (978, 61, 0x5649, 0x5669717565717565, 1);
INSERT INTO `oc_zone` VALUES (979, 62, 0x415a55, 0x417a756179, 1);
INSERT INTO `oc_zone` VALUES (980, 62, 0x424f4c, 0x426f6c69766172, 1);
INSERT INTO `oc_zone` VALUES (981, 62, 0x43414e, 0x4361266e74696c64653b6172, 1);
INSERT INTO `oc_zone` VALUES (982, 62, 0x434152, 0x436172636869, 1);
INSERT INTO `oc_zone` VALUES (983, 62, 0x434849, 0x4368696d626f72617a6f, 1);
INSERT INTO `oc_zone` VALUES (984, 62, 0x434f54, 0x436f746f70617869, 1);
INSERT INTO `oc_zone` VALUES (985, 62, 0x454f52, 0x456c204f726f, 1);
INSERT INTO `oc_zone` VALUES (986, 62, 0x45534d, 0x45736d6572616c646173, 1);
INSERT INTO `oc_zone` VALUES (987, 62, 0x475053, 0x47616c266161637574653b7061676f73, 1);
INSERT INTO `oc_zone` VALUES (988, 62, 0x475541, 0x477561796173, 1);
INSERT INTO `oc_zone` VALUES (989, 62, 0x494d42, 0x496d626162757261, 1);
INSERT INTO `oc_zone` VALUES (990, 62, 0x4c4f4a, 0x4c6f6a61, 1);
INSERT INTO `oc_zone` VALUES (991, 62, 0x4c524f, 0x4c6f732052696f73, 1);
INSERT INTO `oc_zone` VALUES (992, 62, 0x4d414e, 0x4d616e6162266961637574653b, 1);
INSERT INTO `oc_zone` VALUES (993, 62, 0x4d5341, 0x4d6f726f6e612053616e746961676f, 1);
INSERT INTO `oc_zone` VALUES (994, 62, 0x4e4150, 0x4e61706f, 1);
INSERT INTO `oc_zone` VALUES (995, 62, 0x4f5245, 0x4f72656c6c616e61, 1);
INSERT INTO `oc_zone` VALUES (996, 62, 0x504153, 0x50617374617a61, 1);
INSERT INTO `oc_zone` VALUES (997, 62, 0x504943, 0x50696368696e636861, 1);
INSERT INTO `oc_zone` VALUES (998, 62, 0x535543, 0x537563756d62266961637574653b6f73, 1);
INSERT INTO `oc_zone` VALUES (999, 62, 0x54554e, 0x54756e67757261687561, 1);
INSERT INTO `oc_zone` VALUES (1000, 62, 0x5a4348, 0x5a616d6f7261204368696e6368697065, 1);
INSERT INTO `oc_zone` VALUES (1001, 63, 0x444859, 0x41642044617161686c69796168, 1);
INSERT INTO `oc_zone` VALUES (1002, 63, 0x42414d, 0x416c204261687220616c2041686d6172, 1);
INSERT INTO `oc_zone` VALUES (1003, 63, 0x424859, 0x416c204275686179726168, 1);
INSERT INTO `oc_zone` VALUES (1004, 63, 0x46594d, 0x416c2046617979756d, 1);
INSERT INTO `oc_zone` VALUES (1005, 63, 0x474259, 0x416c20476861726269796168, 1);
INSERT INTO `oc_zone` VALUES (1006, 63, 0x494452, 0x416c2049736b616e64617269796168, 1);
INSERT INTO `oc_zone` VALUES (1007, 63, 0x494d4c, 0x416c2049736d6127696c69796168, 1);
INSERT INTO `oc_zone` VALUES (1008, 63, 0x4a5a48, 0x416c204a697a6168, 1);
INSERT INTO `oc_zone` VALUES (1009, 63, 0x4d4659, 0x416c204d696e756669796168, 1);
INSERT INTO `oc_zone` VALUES (1010, 63, 0x4d4e59, 0x416c204d696e7961, 1);
INSERT INTO `oc_zone` VALUES (1011, 63, 0x514852, 0x416c2051616869726168, 1);
INSERT INTO `oc_zone` VALUES (1012, 63, 0x514c59, 0x416c2051616c79756269796168, 1);
INSERT INTO `oc_zone` VALUES (1013, 63, 0x574a44, 0x416c205761646920616c204a61646964, 1);
INSERT INTO `oc_zone` VALUES (1014, 63, 0x534851, 0x41736820536861727169796168, 1);
INSERT INTO `oc_zone` VALUES (1015, 63, 0x535759, 0x417320537577617973, 1);
INSERT INTO `oc_zone` VALUES (1016, 63, 0x415357, 0x417377616e, 1);
INSERT INTO `oc_zone` VALUES (1017, 63, 0x415359, 0x4173797574, 1);
INSERT INTO `oc_zone` VALUES (1018, 63, 0x425357, 0x42616e6920537577617966, 1);
INSERT INTO `oc_zone` VALUES (1019, 63, 0x425344, 0x427572205361276964, 1);
INSERT INTO `oc_zone` VALUES (1020, 63, 0x444d59, 0x44756d796174, 1);
INSERT INTO `oc_zone` VALUES (1021, 63, 0x4a4e53, 0x4a616e75622053696e6127, 1);
INSERT INTO `oc_zone` VALUES (1022, 63, 0x4b5348, 0x4b6166722061736820536861796b68, 1);
INSERT INTO `oc_zone` VALUES (1023, 63, 0x4d4154, 0x4d6174727568, 1);
INSERT INTO `oc_zone` VALUES (1024, 63, 0x51494e, 0x51696e61, 1);
INSERT INTO `oc_zone` VALUES (1025, 63, 0x534853, 0x5368616d616c2053696e6127, 1);
INSERT INTO `oc_zone` VALUES (1026, 63, 0x535548, 0x537568616a, 1);
INSERT INTO `oc_zone` VALUES (1027, 64, 0x4148, 0x4168756163686170616e, 1);
INSERT INTO `oc_zone` VALUES (1028, 64, 0x4341, 0x436162616e6173, 1);
INSERT INTO `oc_zone` VALUES (1029, 64, 0x4348, 0x4368616c6174656e616e676f, 1);
INSERT INTO `oc_zone` VALUES (1030, 64, 0x4355, 0x4375736361746c616e, 1);
INSERT INTO `oc_zone` VALUES (1031, 64, 0x4c42, 0x4c61204c69626572746164, 1);
INSERT INTO `oc_zone` VALUES (1032, 64, 0x505a, 0x4c612050617a, 1);
INSERT INTO `oc_zone` VALUES (1033, 64, 0x554e, 0x4c6120556e696f6e, 1);
INSERT INTO `oc_zone` VALUES (1034, 64, 0x4d4f, 0x4d6f72617a616e, 1);
INSERT INTO `oc_zone` VALUES (1035, 64, 0x534d, 0x53616e204d696775656c, 1);
INSERT INTO `oc_zone` VALUES (1036, 64, 0x5353, 0x53616e2053616c7661646f72, 1);
INSERT INTO `oc_zone` VALUES (1037, 64, 0x5356, 0x53616e20566963656e7465, 1);
INSERT INTO `oc_zone` VALUES (1038, 64, 0x5341, 0x53616e746120416e61, 1);
INSERT INTO `oc_zone` VALUES (1039, 64, 0x534f, 0x536f6e736f6e617465, 1);
INSERT INTO `oc_zone` VALUES (1040, 64, 0x5553, 0x5573756c7574616e, 1);
INSERT INTO `oc_zone` VALUES (1041, 65, 0x414e, 0x50726f76696e63696120416e6e6f626f6e, 1);
INSERT INTO `oc_zone` VALUES (1042, 65, 0x424e, 0x50726f76696e6369612042696f6b6f204e6f727465, 1);
INSERT INTO `oc_zone` VALUES (1043, 65, 0x4253, 0x50726f76696e6369612042696f6b6f20537572, 1);
INSERT INTO `oc_zone` VALUES (1044, 65, 0x4353, 0x50726f76696e6369612043656e74726f20537572, 1);
INSERT INTO `oc_zone` VALUES (1045, 65, 0x4b4e, 0x50726f76696e636961204b69652d4e74656d, 1);
INSERT INTO `oc_zone` VALUES (1046, 65, 0x4c49, 0x50726f76696e636961204c69746f72616c, 1);
INSERT INTO `oc_zone` VALUES (1047, 65, 0x574e, 0x50726f76696e6369612057656c652d4e7a6173, 1);
INSERT INTO `oc_zone` VALUES (1048, 66, 0x4d41, 0x43656e7472616c20284d61656b656c29, 1);
INSERT INTO `oc_zone` VALUES (1049, 66, 0x4b45, 0x416e7365626120284b6572656e29, 1);
INSERT INTO `oc_zone` VALUES (1050, 66, 0x444b, 0x536f75746865726e2052656420536561202844656275622d4b6569682d426168726929, 1);
INSERT INTO `oc_zone` VALUES (1051, 66, 0x534b, 0x4e6f72746865726e2052656420536561202853656d69656e2d4b6569682d426168726929, 1);
INSERT INTO `oc_zone` VALUES (1052, 66, 0x4445, 0x536f75746865726e2028446562756229, 1);
INSERT INTO `oc_zone` VALUES (1053, 66, 0x4252, 0x476173682d4261726b612028426172656e747529, 1);
INSERT INTO `oc_zone` VALUES (1054, 67, 0x4841, 0x4861726a756d6161202854616c6c696e6e29, 1);
INSERT INTO `oc_zone` VALUES (1055, 67, 0x4849, 0x486969756d616120284b6172646c6129, 1);
INSERT INTO `oc_zone` VALUES (1056, 67, 0x4956, 0x4964612d566972756d616120284a6f68766929, 1);
INSERT INTO `oc_zone` VALUES (1057, 67, 0x4a41, 0x4a617276616d61612028506169646529, 1);
INSERT INTO `oc_zone` VALUES (1058, 67, 0x4a4f, 0x4a6f676576616d616120284a6f6765766129, 1);
INSERT INTO `oc_zone` VALUES (1059, 67, 0x4c56, 0x4c61616e652d566972756d6161202852616b7665726529, 1);
INSERT INTO `oc_zone` VALUES (1060, 67, 0x4c41, 0x4c61616e656d616120284861617073616c7529, 1);
INSERT INTO `oc_zone` VALUES (1061, 67, 0x5041, 0x5061726e756d616120285061726e7529, 1);
INSERT INTO `oc_zone` VALUES (1062, 67, 0x504f, 0x506f6c76616d61612028506f6c766129, 1);
INSERT INTO `oc_zone` VALUES (1063, 67, 0x5241, 0x5261706c616d616120285261706c6129, 1);
INSERT INTO `oc_zone` VALUES (1064, 67, 0x5341, 0x53616172656d616120284b756573736161726529, 1);
INSERT INTO `oc_zone` VALUES (1065, 67, 0x5441, 0x54617274756d61612028546172747529, 1);
INSERT INTO `oc_zone` VALUES (1066, 67, 0x5641, 0x56616c67616d6161202856616c676129, 1);
INSERT INTO `oc_zone` VALUES (1067, 67, 0x5649, 0x56696c6a616e64696d6161202856696c6a616e646929, 1);
INSERT INTO `oc_zone` VALUES (1068, 67, 0x564f, 0x566f72756d61612028566f727529, 1);
INSERT INTO `oc_zone` VALUES (1069, 68, 0x4146, 0x41666172, 1);
INSERT INTO `oc_zone` VALUES (1070, 68, 0x4148, 0x416d68617261, 1);
INSERT INTO `oc_zone` VALUES (1071, 68, 0x4247, 0x42656e697368616e67756c2d47756d617a, 1);
INSERT INTO `oc_zone` VALUES (1072, 68, 0x4742, 0x47616d62656c61, 1);
INSERT INTO `oc_zone` VALUES (1073, 68, 0x4852, 0x486172696169, 1);
INSERT INTO `oc_zone` VALUES (1074, 68, 0x4f52, 0x4f726f6d6961, 1);
INSERT INTO `oc_zone` VALUES (1075, 68, 0x534d, 0x536f6d616c69, 1);
INSERT INTO `oc_zone` VALUES (1076, 68, 0x534e, 0x536f75746865726e204e6174696f6e73202d204e6174696f6e616c697469657320616e642050656f706c657320526567696f6e, 1);
INSERT INTO `oc_zone` VALUES (1077, 68, 0x5447, 0x546967726179, 1);
INSERT INTO `oc_zone` VALUES (1078, 68, 0x4141, 0x4164646973204162616261, 1);
INSERT INTO `oc_zone` VALUES (1079, 68, 0x4444, 0x446972652044617761, 1);
INSERT INTO `oc_zone` VALUES (1080, 71, 0x43, 0x43656e7472616c204469766973696f6e, 1);
INSERT INTO `oc_zone` VALUES (1081, 71, 0x4e, 0x4e6f72746865726e204469766973696f6e, 1);
INSERT INTO `oc_zone` VALUES (1082, 71, 0x45, 0x4561737465726e204469766973696f6e, 1);
INSERT INTO `oc_zone` VALUES (1083, 71, 0x57, 0x5765737465726e204469766973696f6e, 1);
INSERT INTO `oc_zone` VALUES (1084, 71, 0x52, 0x526f74756d61, 1);
INSERT INTO `oc_zone` VALUES (1085, 72, 0x414c, 0x416876656e616e6d61616e204c61616e69, 1);
INSERT INTO `oc_zone` VALUES (1086, 72, 0x4553, 0x4574656c612d53756f6d656e204c61616e69, 1);
INSERT INTO `oc_zone` VALUES (1087, 72, 0x4953, 0x4974612d53756f6d656e204c61616e69, 1);
INSERT INTO `oc_zone` VALUES (1088, 72, 0x4c53, 0x4c616e73692d53756f6d656e204c61616e69, 1);
INSERT INTO `oc_zone` VALUES (1089, 72, 0x4c41, 0x4c6170696e204c616e616e69, 1);
INSERT INTO `oc_zone` VALUES (1090, 72, 0x4f55, 0x4f756c756e204c61616e69, 1);
INSERT INTO `oc_zone` VALUES (1091, 73, 0x414c, 0x416c73616365, 1);
INSERT INTO `oc_zone` VALUES (1092, 73, 0x4151, 0x417175697461696e65, 1);
INSERT INTO `oc_zone` VALUES (1093, 73, 0x4155, 0x4175766572676e65, 1);
INSERT INTO `oc_zone` VALUES (1094, 73, 0x4252, 0x4272697474616e79, 1);
INSERT INTO `oc_zone` VALUES (1095, 73, 0x4255, 0x42757267756e6479, 1);
INSERT INTO `oc_zone` VALUES (1096, 73, 0x4345, 0x43656e746572204c6f6972652056616c6c6579, 1);
INSERT INTO `oc_zone` VALUES (1097, 73, 0x4348, 0x4368616d7061676e65, 1);
INSERT INTO `oc_zone` VALUES (1098, 73, 0x434f, 0x436f727365, 1);
INSERT INTO `oc_zone` VALUES (1099, 73, 0x4652, 0x4672616e636520436f6d7465, 1);
INSERT INTO `oc_zone` VALUES (1100, 73, 0x4c41, 0x4c616e677565646f6320526f757373696c6c6f6e, 1);
INSERT INTO `oc_zone` VALUES (1101, 73, 0x4c49, 0x4c696d6f7573696e, 1);
INSERT INTO `oc_zone` VALUES (1102, 73, 0x4c4f, 0x4c6f727261696e65, 1);
INSERT INTO `oc_zone` VALUES (1103, 73, 0x4d49, 0x4d69646920507972656e656573, 1);
INSERT INTO `oc_zone` VALUES (1104, 73, 0x4e4f, 0x4e6f7264205061732064652043616c616973, 1);
INSERT INTO `oc_zone` VALUES (1105, 73, 0x4e52, 0x4e6f726d616e6479, 1);
INSERT INTO `oc_zone` VALUES (1106, 73, 0x5041, 0x5061726973202f20496c6c206465204672616e6365, 1);
INSERT INTO `oc_zone` VALUES (1107, 73, 0x5049, 0x5069636172646965, 1);
INSERT INTO `oc_zone` VALUES (1108, 73, 0x504f, 0x506f69746f752043686172656e7465, 1);
INSERT INTO `oc_zone` VALUES (1109, 73, 0x5052, 0x50726f76656e6365, 1);
INSERT INTO `oc_zone` VALUES (1110, 73, 0x5248, 0x52686f6e6520416c7073, 1);
INSERT INTO `oc_zone` VALUES (1111, 73, 0x5249, 0x52697669657261, 1);
INSERT INTO `oc_zone` VALUES (1112, 73, 0x5745, 0x5765737465726e204c6f6972652056616c6c6579, 1);
INSERT INTO `oc_zone` VALUES (1113, 74, 0x4574, 0x457472616e676572, 1);
INSERT INTO `oc_zone` VALUES (1114, 74, 0x3031, 0x41696e, 1);
INSERT INTO `oc_zone` VALUES (1115, 74, 0x3032, 0x4169736e65, 1);
INSERT INTO `oc_zone` VALUES (1116, 74, 0x3033, 0x416c6c696572, 1);
INSERT INTO `oc_zone` VALUES (1117, 74, 0x3034, 0x416c7065732064652048617574652050726f76656e6365, 1);
INSERT INTO `oc_zone` VALUES (1118, 74, 0x3035, 0x4861757465732d416c706573, 1);
INSERT INTO `oc_zone` VALUES (1119, 74, 0x3036, 0x416c706573204d61726974696d6573, 1);
INSERT INTO `oc_zone` VALUES (1120, 74, 0x3037, 0x417264266567726176653b636865, 1);
INSERT INTO `oc_zone` VALUES (1121, 74, 0x3038, 0x417264656e6e6573, 1);
INSERT INTO `oc_zone` VALUES (1122, 74, 0x3039, 0x417269266567726176653b6765, 1);
INSERT INTO `oc_zone` VALUES (1123, 74, 0x3130, 0x41756265, 1);
INSERT INTO `oc_zone` VALUES (1124, 74, 0x3131, 0x41756465, 1);
INSERT INTO `oc_zone` VALUES (1125, 74, 0x3132, 0x41766579726f6e, 1);
INSERT INTO `oc_zone` VALUES (1126, 74, 0x3133, 0x426f7563686573206475205268266f636972633b6e65, 1);
INSERT INTO `oc_zone` VALUES (1127, 74, 0x3134, 0x43616c7661646f73, 1);
INSERT INTO `oc_zone` VALUES (1128, 74, 0x3135, 0x43616e74616c, 1);
INSERT INTO `oc_zone` VALUES (1129, 74, 0x3136, 0x43686172656e7465, 1);
INSERT INTO `oc_zone` VALUES (1130, 74, 0x3137, 0x43686172656e7465204d61726974696d65, 1);
INSERT INTO `oc_zone` VALUES (1131, 74, 0x3138, 0x43686572, 1);
INSERT INTO `oc_zone` VALUES (1132, 74, 0x3139, 0x436f7272266567726176653b7a65, 1);
INSERT INTO `oc_zone` VALUES (1133, 74, 0x3241, 0x436f72736520647520537564, 1);
INSERT INTO `oc_zone` VALUES (1134, 74, 0x3242, 0x486175746520436f727365, 1);
INSERT INTO `oc_zone` VALUES (1135, 74, 0x3231, 0x43266f636972633b7465206426233033393b6f72, 1);
INSERT INTO `oc_zone` VALUES (1136, 74, 0x3232, 0x43266f636972633b746573206426233033393b41726d6f72, 1);
INSERT INTO `oc_zone` VALUES (1137, 74, 0x3233, 0x437265757365, 1);
INSERT INTO `oc_zone` VALUES (1138, 74, 0x3234, 0x446f72646f676e65, 1);
INSERT INTO `oc_zone` VALUES (1139, 74, 0x3235, 0x446f756273, 1);
INSERT INTO `oc_zone` VALUES (1140, 74, 0x3236, 0x4472266f636972633b6d65, 1);
INSERT INTO `oc_zone` VALUES (1141, 74, 0x3237, 0x45757265, 1);
INSERT INTO `oc_zone` VALUES (1142, 74, 0x3238, 0x45757265206574204c6f6972, 1);
INSERT INTO `oc_zone` VALUES (1143, 74, 0x3239, 0x46696e697374266567726176653b7265, 1);
INSERT INTO `oc_zone` VALUES (1144, 74, 0x3330, 0x47617264, 1);
INSERT INTO `oc_zone` VALUES (1145, 74, 0x3331, 0x4861757465204761726f6e6e65, 1);
INSERT INTO `oc_zone` VALUES (1146, 74, 0x3332, 0x47657273, 1);
INSERT INTO `oc_zone` VALUES (1147, 74, 0x3333, 0x4769726f6e6465, 1);
INSERT INTO `oc_zone` VALUES (1148, 74, 0x3334, 0x48266561637574653b7261756c74, 1);
INSERT INTO `oc_zone` VALUES (1149, 74, 0x3335, 0x496c6c652065742056696c61696e65, 1);
INSERT INTO `oc_zone` VALUES (1150, 74, 0x3336, 0x496e647265, 1);
INSERT INTO `oc_zone` VALUES (1151, 74, 0x3337, 0x496e647265206574204c6f697265, 1);
INSERT INTO `oc_zone` VALUES (1152, 74, 0x3338, 0x4973266561637574653b7265, 1);
INSERT INTO `oc_zone` VALUES (1153, 74, 0x3339, 0x4a757261, 1);
INSERT INTO `oc_zone` VALUES (1154, 74, 0x3430, 0x4c616e646573, 1);
INSERT INTO `oc_zone` VALUES (1155, 74, 0x3431, 0x4c6f69722065742043686572, 1);
INSERT INTO `oc_zone` VALUES (1156, 74, 0x3432, 0x4c6f697265, 1);
INSERT INTO `oc_zone` VALUES (1157, 74, 0x3433, 0x4861757465204c6f697265, 1);
INSERT INTO `oc_zone` VALUES (1158, 74, 0x3434, 0x4c6f6972652041746c616e7469717565, 1);
INSERT INTO `oc_zone` VALUES (1159, 74, 0x3435, 0x4c6f69726574, 1);
INSERT INTO `oc_zone` VALUES (1160, 74, 0x3436, 0x4c6f74, 1);
INSERT INTO `oc_zone` VALUES (1161, 74, 0x3437, 0x4c6f74206574204761726f6e6e65, 1);
INSERT INTO `oc_zone` VALUES (1162, 74, 0x3438, 0x4c6f7a266567726176653b7265, 1);
INSERT INTO `oc_zone` VALUES (1163, 74, 0x3439, 0x4d61696e65206574204c6f697265, 1);
INSERT INTO `oc_zone` VALUES (1164, 74, 0x3530, 0x4d616e636865, 1);
INSERT INTO `oc_zone` VALUES (1165, 74, 0x3531, 0x4d61726e65, 1);
INSERT INTO `oc_zone` VALUES (1166, 74, 0x3532, 0x4861757465204d61726e65, 1);
INSERT INTO `oc_zone` VALUES (1167, 74, 0x3533, 0x4d6179656e6e65, 1);
INSERT INTO `oc_zone` VALUES (1168, 74, 0x3534, 0x4d657572746865206574204d6f73656c6c65, 1);
INSERT INTO `oc_zone` VALUES (1169, 74, 0x3535, 0x4d65757365, 1);
INSERT INTO `oc_zone` VALUES (1170, 74, 0x3536, 0x4d6f72626968616e, 1);
INSERT INTO `oc_zone` VALUES (1171, 74, 0x3537, 0x4d6f73656c6c65, 1);
INSERT INTO `oc_zone` VALUES (1172, 74, 0x3538, 0x4e69266567726176653b767265, 1);
INSERT INTO `oc_zone` VALUES (1173, 74, 0x3539, 0x4e6f7264, 1);
INSERT INTO `oc_zone` VALUES (1174, 74, 0x3630, 0x4f697365, 1);
INSERT INTO `oc_zone` VALUES (1175, 74, 0x3631, 0x4f726e65, 1);
INSERT INTO `oc_zone` VALUES (1176, 74, 0x3632, 0x5061732064652043616c616973, 1);
INSERT INTO `oc_zone` VALUES (1177, 74, 0x3633, 0x5075792064652044266f636972633b6d65, 1);
INSERT INTO `oc_zone` VALUES (1178, 74, 0x3634, 0x507972266561637574653b6e266561637574653b65732041746c616e746971756573, 1);
INSERT INTO `oc_zone` VALUES (1179, 74, 0x3635, 0x48617574657320507972266561637574653b6e266561637574653b6573, 1);
INSERT INTO `oc_zone` VALUES (1180, 74, 0x3636, 0x507972266561637574653b6e266561637574653b6573204f7269656e74616c6573, 1);
INSERT INTO `oc_zone` VALUES (1181, 74, 0x3637, 0x426173205268696e, 1);
INSERT INTO `oc_zone` VALUES (1182, 74, 0x3638, 0x48617574205268696e, 1);
INSERT INTO `oc_zone` VALUES (1183, 74, 0x3639, 0x5268266f636972633b6e65, 1);
INSERT INTO `oc_zone` VALUES (1184, 74, 0x3730, 0x4861757465205361266f636972633b6e65, 1);
INSERT INTO `oc_zone` VALUES (1185, 74, 0x3731, 0x5361266f636972633b6e65206574204c6f697265, 1);
INSERT INTO `oc_zone` VALUES (1186, 74, 0x3732, 0x536172746865, 1);
INSERT INTO `oc_zone` VALUES (1187, 74, 0x3733, 0x5361766f6965, 1);
INSERT INTO `oc_zone` VALUES (1188, 74, 0x3734, 0x4861757465205361766f6965, 1);
INSERT INTO `oc_zone` VALUES (1189, 74, 0x3735, 0x5061726973, 1);
INSERT INTO `oc_zone` VALUES (1190, 74, 0x3736, 0x5365696e65204d61726974696d65, 1);
INSERT INTO `oc_zone` VALUES (1191, 74, 0x3737, 0x5365696e65206574204d61726e65, 1);
INSERT INTO `oc_zone` VALUES (1192, 74, 0x3738, 0x5976656c696e6573, 1);
INSERT INTO `oc_zone` VALUES (1193, 74, 0x3739, 0x446575782053266567726176653b76726573, 1);
INSERT INTO `oc_zone` VALUES (1194, 74, 0x3830, 0x536f6d6d65, 1);
INSERT INTO `oc_zone` VALUES (1195, 74, 0x3831, 0x5461726e, 1);
INSERT INTO `oc_zone` VALUES (1196, 74, 0x3832, 0x5461726e206574204761726f6e6e65, 1);
INSERT INTO `oc_zone` VALUES (1197, 74, 0x3833, 0x566172, 1);
INSERT INTO `oc_zone` VALUES (1198, 74, 0x3834, 0x566175636c757365, 1);
INSERT INTO `oc_zone` VALUES (1199, 74, 0x3835, 0x56656e64266561637574653b65, 1);
INSERT INTO `oc_zone` VALUES (1200, 74, 0x3836, 0x5669656e6e65, 1);
INSERT INTO `oc_zone` VALUES (1201, 74, 0x3837, 0x4861757465205669656e6e65, 1);
INSERT INTO `oc_zone` VALUES (1202, 74, 0x3838, 0x566f73676573, 1);
INSERT INTO `oc_zone` VALUES (1203, 74, 0x3839, 0x596f6e6e65, 1);
INSERT INTO `oc_zone` VALUES (1204, 74, 0x3930, 0x5465727269746f6972652064652042656c666f7274, 1);
INSERT INTO `oc_zone` VALUES (1205, 74, 0x3931, 0x4573736f6e6e65, 1);
INSERT INTO `oc_zone` VALUES (1206, 74, 0x3932, 0x4861757473206465205365696e65, 1);
INSERT INTO `oc_zone` VALUES (1207, 74, 0x3933, 0x5365696e652053742d44656e6973, 1);
INSERT INTO `oc_zone` VALUES (1208, 74, 0x3934, 0x56616c206465204d61726e65, 1);
INSERT INTO `oc_zone` VALUES (1209, 74, 0x3935, 0x56616c2064274f697365, 1);
INSERT INTO `oc_zone` VALUES (1210, 76, 0x4d, 0x417263686970656c20646573204d6172717569736573, 1);
INSERT INTO `oc_zone` VALUES (1211, 76, 0x54, 0x417263686970656c20646573205475616d6f7475, 1);
INSERT INTO `oc_zone` VALUES (1212, 76, 0x49, 0x417263686970656c2064657320547562756169, 1);
INSERT INTO `oc_zone` VALUES (1213, 76, 0x56, 0x496c65732064752056656e74, 1);
INSERT INTO `oc_zone` VALUES (1214, 76, 0x53, 0x496c657320536f75732d6c652d56656e74, 1);
INSERT INTO `oc_zone` VALUES (1215, 77, 0x43, 0x496c65732043726f7a6574, 1);
INSERT INTO `oc_zone` VALUES (1216, 77, 0x4b, 0x496c6573204b65726775656c656e, 1);
INSERT INTO `oc_zone` VALUES (1217, 77, 0x41, 0x496c6520416d7374657264616d, 1);
INSERT INTO `oc_zone` VALUES (1218, 77, 0x50, 0x496c65205361696e742d5061756c, 1);
INSERT INTO `oc_zone` VALUES (1219, 77, 0x44, 0x4164656c6965204c616e64, 1);
INSERT INTO `oc_zone` VALUES (1220, 78, 0x4553, 0x4573747561697265, 1);
INSERT INTO `oc_zone` VALUES (1221, 78, 0x484f, 0x486175742d4f676f6f7565, 1);
INSERT INTO `oc_zone` VALUES (1222, 78, 0x4d4f, 0x4d6f79656e2d4f676f6f7565, 1);
INSERT INTO `oc_zone` VALUES (1223, 78, 0x4e47, 0x4e676f756e6965, 1);
INSERT INTO `oc_zone` VALUES (1224, 78, 0x4e59, 0x4e79616e6761, 1);
INSERT INTO `oc_zone` VALUES (1225, 78, 0x4f49, 0x4f676f6f75652d4976696e646f, 1);
INSERT INTO `oc_zone` VALUES (1226, 78, 0x4f4c, 0x4f676f6f75652d4c6f6c6f, 1);
INSERT INTO `oc_zone` VALUES (1227, 78, 0x4f4d, 0x4f676f6f75652d4d61726974696d65, 1);
INSERT INTO `oc_zone` VALUES (1228, 78, 0x574e, 0x576f6c65752d4e74656d, 1);
INSERT INTO `oc_zone` VALUES (1229, 79, 0x424a, 0x42616e6a756c, 1);
INSERT INTO `oc_zone` VALUES (1230, 79, 0x4253, 0x4261737365, 1);
INSERT INTO `oc_zone` VALUES (1231, 79, 0x4252, 0x4272696b616d61, 1);
INSERT INTO `oc_zone` VALUES (1232, 79, 0x4a41, 0x4a616e6a616e6762757265, 1);
INSERT INTO `oc_zone` VALUES (1233, 79, 0x4b41, 0x4b616e6966656e67, 1);
INSERT INTO `oc_zone` VALUES (1234, 79, 0x4b45, 0x4b65726577616e, 1);
INSERT INTO `oc_zone` VALUES (1235, 79, 0x4b55, 0x4b756e74617572, 1);
INSERT INTO `oc_zone` VALUES (1236, 79, 0x4d41, 0x4d616e73616b6f6e6b6f, 1);
INSERT INTO `oc_zone` VALUES (1237, 79, 0x4c52, 0x4c6f776572205269766572, 1);
INSERT INTO `oc_zone` VALUES (1238, 79, 0x4352, 0x43656e7472616c205269766572, 1);
INSERT INTO `oc_zone` VALUES (1239, 79, 0x4e42, 0x4e6f7274682042616e6b, 1);
INSERT INTO `oc_zone` VALUES (1240, 79, 0x5552, 0x5570706572205269766572, 1);
INSERT INTO `oc_zone` VALUES (1241, 79, 0x5745, 0x5765737465726e, 1);
INSERT INTO `oc_zone` VALUES (1242, 80, 0x4142, 0x41626b68617a6961, 1);
INSERT INTO `oc_zone` VALUES (1243, 80, 0x414a, 0x416a61726961, 1);
INSERT INTO `oc_zone` VALUES (1244, 80, 0x5442, 0x5462696c697369, 1);
INSERT INTO `oc_zone` VALUES (1245, 80, 0x4755, 0x4775726961, 1);
INSERT INTO `oc_zone` VALUES (1246, 80, 0x494d, 0x496d6572657469, 1);
INSERT INTO `oc_zone` VALUES (1247, 80, 0x4b41, 0x4b616b68657469, 1);
INSERT INTO `oc_zone` VALUES (1248, 80, 0x4b4b, 0x4b76656d6f204b6172746c69, 1);
INSERT INTO `oc_zone` VALUES (1249, 80, 0x4d4d, 0x4d74736b686574612d4d7469616e657469, 1);
INSERT INTO `oc_zone` VALUES (1250, 80, 0x524c, 0x5261636861204c6563686b68756d6920616e64204b76656d6f205376616e6574, 1);
INSERT INTO `oc_zone` VALUES (1251, 80, 0x535a, 0x53616d656772656c6f2d5a656d6f205376616e657469, 1);
INSERT INTO `oc_zone` VALUES (1252, 80, 0x534a, 0x53616d74736b68652d4a6176616b68657469, 1);
INSERT INTO `oc_zone` VALUES (1253, 80, 0x534b, 0x5368696461204b6172746c69, 1);
INSERT INTO `oc_zone` VALUES (1254, 81, 0x424157, 0x426164656e2d572675756d6c3b727474656d62657267, 1);
INSERT INTO `oc_zone` VALUES (1255, 81, 0x424159, 0x42617965726e, 1);
INSERT INTO `oc_zone` VALUES (1256, 81, 0x424552, 0x4265726c696e, 1);
INSERT INTO `oc_zone` VALUES (1257, 81, 0x425247, 0x4272616e64656e62757267, 1);
INSERT INTO `oc_zone` VALUES (1258, 81, 0x425245, 0x4272656d656e, 1);
INSERT INTO `oc_zone` VALUES (1259, 81, 0x48414d, 0x48616d62757267, 1);
INSERT INTO `oc_zone` VALUES (1260, 81, 0x484553, 0x48657373656e, 1);
INSERT INTO `oc_zone` VALUES (1261, 81, 0x4d4543, 0x4d65636b6c656e627572672d566f72706f6d6d65726e, 1);
INSERT INTO `oc_zone` VALUES (1262, 81, 0x4e4453, 0x4e69656465727361636873656e, 1);
INSERT INTO `oc_zone` VALUES (1263, 81, 0x4e5257, 0x4e6f7264726865696e2d5765737466616c656e, 1);
INSERT INTO `oc_zone` VALUES (1264, 81, 0x524845, 0x526865696e6c616e642d5066616c7a, 1);
INSERT INTO `oc_zone` VALUES (1265, 81, 0x534152, 0x536161726c616e64, 1);
INSERT INTO `oc_zone` VALUES (1266, 81, 0x534153, 0x5361636873656e, 1);
INSERT INTO `oc_zone` VALUES (1267, 81, 0x534143, 0x5361636873656e2d416e68616c74, 1);
INSERT INTO `oc_zone` VALUES (1268, 81, 0x53434e, 0x5363686c65737769672d486f6c737465696e, 1);
INSERT INTO `oc_zone` VALUES (1269, 81, 0x544845, 0x54682675756d6c3b72696e67656e, 1);
INSERT INTO `oc_zone` VALUES (1270, 82, 0x4153, 0x417368616e746920526567696f6e, 1);
INSERT INTO `oc_zone` VALUES (1271, 82, 0x4241, 0x42726f6e672d416861666f20526567696f6e, 1);
INSERT INTO `oc_zone` VALUES (1272, 82, 0x4345, 0x43656e7472616c20526567696f6e, 1);
INSERT INTO `oc_zone` VALUES (1273, 82, 0x4541, 0x4561737465726e20526567696f6e, 1);
INSERT INTO `oc_zone` VALUES (1274, 82, 0x4741, 0x4772656174657220416363726120526567696f6e, 1);
INSERT INTO `oc_zone` VALUES (1275, 82, 0x4e4f, 0x4e6f72746865726e20526567696f6e, 1);
INSERT INTO `oc_zone` VALUES (1276, 82, 0x5545, 0x5570706572204561737420526567696f6e, 1);
INSERT INTO `oc_zone` VALUES (1277, 82, 0x5557, 0x5570706572205765737420526567696f6e, 1);
INSERT INTO `oc_zone` VALUES (1278, 82, 0x564f, 0x566f6c746120526567696f6e, 1);
INSERT INTO `oc_zone` VALUES (1279, 82, 0x5745, 0x5765737465726e20526567696f6e, 1);
INSERT INTO `oc_zone` VALUES (1280, 84, 0x4154, 0x417474696361, 1);
INSERT INTO `oc_zone` VALUES (1281, 84, 0x434e, 0x43656e7472616c20477265656365, 1);
INSERT INTO `oc_zone` VALUES (1282, 84, 0x434d, 0x43656e7472616c204d616365646f6e6961, 1);
INSERT INTO `oc_zone` VALUES (1283, 84, 0x4352, 0x4372657465, 1);
INSERT INTO `oc_zone` VALUES (1284, 84, 0x454d, 0x45617374204d616365646f6e696120616e6420546872616365, 1);
INSERT INTO `oc_zone` VALUES (1285, 84, 0x4550, 0x457069727573, 1);
INSERT INTO `oc_zone` VALUES (1286, 84, 0x4949, 0x496f6e69616e2049736c616e6473, 1);
INSERT INTO `oc_zone` VALUES (1287, 84, 0x4e41, 0x4e6f7274682041656765616e, 1);
INSERT INTO `oc_zone` VALUES (1288, 84, 0x5050, 0x50656c6f706f6e6e65736f73, 1);
INSERT INTO `oc_zone` VALUES (1289, 84, 0x5341, 0x536f7574682041656765616e, 1);
INSERT INTO `oc_zone` VALUES (1290, 84, 0x5448, 0x5468657373616c79, 1);
INSERT INTO `oc_zone` VALUES (1291, 84, 0x5747, 0x5765737420477265656365, 1);
INSERT INTO `oc_zone` VALUES (1292, 84, 0x574d, 0x57657374204d616365646f6e6961, 1);
INSERT INTO `oc_zone` VALUES (1293, 85, 0x41, 0x4176616e6e6161, 1);
INSERT INTO `oc_zone` VALUES (1294, 85, 0x54, 0x54756e75, 1);
INSERT INTO `oc_zone` VALUES (1295, 85, 0x4b, 0x4b69746161, 1);
INSERT INTO `oc_zone` VALUES (1296, 86, 0x41, 0x5361696e7420416e64726577, 1);
INSERT INTO `oc_zone` VALUES (1297, 86, 0x44, 0x5361696e74204461766964, 1);
INSERT INTO `oc_zone` VALUES (1298, 86, 0x47, 0x5361696e742047656f726765, 1);
INSERT INTO `oc_zone` VALUES (1299, 86, 0x4a, 0x5361696e74204a6f686e, 1);
INSERT INTO `oc_zone` VALUES (1300, 86, 0x4d, 0x5361696e74204d61726b, 1);
INSERT INTO `oc_zone` VALUES (1301, 86, 0x50, 0x5361696e74205061747269636b, 1);
INSERT INTO `oc_zone` VALUES (1302, 86, 0x43, 0x436172726961636f75, 1);
INSERT INTO `oc_zone` VALUES (1303, 86, 0x51, 0x5065746974204d617274696e69717565, 1);
INSERT INTO `oc_zone` VALUES (1304, 89, 0x4156, 0x416c7461205665726170617a, 1);
INSERT INTO `oc_zone` VALUES (1305, 89, 0x4256, 0x42616a61205665726170617a, 1);
INSERT INTO `oc_zone` VALUES (1306, 89, 0x434d, 0x4368696d616c74656e616e676f, 1);
INSERT INTO `oc_zone` VALUES (1307, 89, 0x4351, 0x4368697175696d756c61, 1);
INSERT INTO `oc_zone` VALUES (1308, 89, 0x5045, 0x456c20506574656e, 1);
INSERT INTO `oc_zone` VALUES (1309, 89, 0x5052, 0x456c2050726f677265736f, 1);
INSERT INTO `oc_zone` VALUES (1310, 89, 0x5143, 0x456c20517569636865, 1);
INSERT INTO `oc_zone` VALUES (1311, 89, 0x4553, 0x45736375696e746c61, 1);
INSERT INTO `oc_zone` VALUES (1312, 89, 0x4755, 0x47756174656d616c61, 1);
INSERT INTO `oc_zone` VALUES (1313, 89, 0x4855, 0x48756568756574656e616e676f, 1);
INSERT INTO `oc_zone` VALUES (1314, 89, 0x495a, 0x497a6162616c, 1);
INSERT INTO `oc_zone` VALUES (1315, 89, 0x4a41, 0x4a616c617061, 1);
INSERT INTO `oc_zone` VALUES (1316, 89, 0x4a55, 0x4a757469617061, 1);
INSERT INTO `oc_zone` VALUES (1317, 89, 0x515a, 0x517565747a616c74656e616e676f, 1);
INSERT INTO `oc_zone` VALUES (1318, 89, 0x5245, 0x526574616c68756c6575, 1);
INSERT INTO `oc_zone` VALUES (1319, 89, 0x5354, 0x53616361746570657175657a, 1);
INSERT INTO `oc_zone` VALUES (1320, 89, 0x534d, 0x53616e204d6172636f73, 1);
INSERT INTO `oc_zone` VALUES (1321, 89, 0x5352, 0x53616e746120526f7361, 1);
INSERT INTO `oc_zone` VALUES (1322, 89, 0x534f, 0x536f6c6f6c61, 1);
INSERT INTO `oc_zone` VALUES (1323, 89, 0x5355, 0x5375636869746570657175657a, 1);
INSERT INTO `oc_zone` VALUES (1324, 89, 0x544f, 0x546f746f6e69636170616e, 1);
INSERT INTO `oc_zone` VALUES (1325, 89, 0x5a41, 0x5a6163617061, 1);
INSERT INTO `oc_zone` VALUES (1326, 90, 0x434e4b, 0x436f6e616b7279, 1);
INSERT INTO `oc_zone` VALUES (1327, 90, 0x42594c, 0x4265796c61, 1);
INSERT INTO `oc_zone` VALUES (1328, 90, 0x424641, 0x426f666661, 1);
INSERT INTO `oc_zone` VALUES (1329, 90, 0x424f4b, 0x426f6b65, 1);
INSERT INTO `oc_zone` VALUES (1330, 90, 0x434f59, 0x436f796168, 1);
INSERT INTO `oc_zone` VALUES (1331, 90, 0x44424c, 0x4461626f6c61, 1);
INSERT INTO `oc_zone` VALUES (1332, 90, 0x444c42, 0x44616c616261, 1);
INSERT INTO `oc_zone` VALUES (1333, 90, 0x444752, 0x44696e67756972617965, 1);
INSERT INTO `oc_zone` VALUES (1334, 90, 0x444252, 0x44756272656b61, 1);
INSERT INTO `oc_zone` VALUES (1335, 90, 0x46524e, 0x466172616e6168, 1);
INSERT INTO `oc_zone` VALUES (1336, 90, 0x465243, 0x466f7265636172696168, 1);
INSERT INTO `oc_zone` VALUES (1337, 90, 0x465249, 0x46726961, 1);
INSERT INTO `oc_zone` VALUES (1338, 90, 0x47414f, 0x47616f75616c, 1);
INSERT INTO `oc_zone` VALUES (1339, 90, 0x474344, 0x477565636b65646f75, 1);
INSERT INTO `oc_zone` VALUES (1340, 90, 0x4b4e4b, 0x4b616e6b616e, 1);
INSERT INTO `oc_zone` VALUES (1341, 90, 0x4b524e, 0x4b65726f75616e65, 1);
INSERT INTO `oc_zone` VALUES (1342, 90, 0x4b4e44, 0x4b696e646961, 1);
INSERT INTO `oc_zone` VALUES (1343, 90, 0x4b5344, 0x4b69737369646f75676f75, 1);
INSERT INTO `oc_zone` VALUES (1344, 90, 0x4b4241, 0x4b6f75626961, 1);
INSERT INTO `oc_zone` VALUES (1345, 90, 0x4b4441, 0x4b6f756e64617261, 1);
INSERT INTO `oc_zone` VALUES (1346, 90, 0x4b5241, 0x4b6f75726f75737361, 1);
INSERT INTO `oc_zone` VALUES (1347, 90, 0x4c4142, 0x4c616265, 1);
INSERT INTO `oc_zone` VALUES (1348, 90, 0x4c4c4d, 0x4c656c6f756d61, 1);
INSERT INTO `oc_zone` VALUES (1349, 90, 0x4c4f4c, 0x4c6f6c61, 1);
INSERT INTO `oc_zone` VALUES (1350, 90, 0x4d4354, 0x4d6163656e7461, 1);
INSERT INTO `oc_zone` VALUES (1351, 90, 0x4d414c, 0x4d616c69, 1);
INSERT INTO `oc_zone` VALUES (1352, 90, 0x4d414d, 0x4d616d6f75, 1);
INSERT INTO `oc_zone` VALUES (1353, 90, 0x4d414e, 0x4d616e6469616e61, 1);
INSERT INTO `oc_zone` VALUES (1354, 90, 0x4e5a52, 0x4e7a6572656b6f7265, 1);
INSERT INTO `oc_zone` VALUES (1355, 90, 0x504954, 0x50697461, 1);
INSERT INTO `oc_zone` VALUES (1356, 90, 0x534947, 0x53696775697269, 1);
INSERT INTO `oc_zone` VALUES (1357, 90, 0x544c4d, 0x54656c696d656c65, 1);
INSERT INTO `oc_zone` VALUES (1358, 90, 0x544f47, 0x546f75677565, 1);
INSERT INTO `oc_zone` VALUES (1359, 90, 0x594f4d, 0x596f6d6f75, 1);
INSERT INTO `oc_zone` VALUES (1360, 91, 0x4246, 0x42616661746120526567696f6e, 1);
INSERT INTO `oc_zone` VALUES (1361, 91, 0x4242, 0x42696f6d626f20526567696f6e, 1);
INSERT INTO `oc_zone` VALUES (1362, 91, 0x4253, 0x42697373617520526567696f6e, 1);
INSERT INTO `oc_zone` VALUES (1363, 91, 0x424c, 0x426f6c616d6120526567696f6e, 1);
INSERT INTO `oc_zone` VALUES (1364, 91, 0x4341, 0x43616368657520526567696f6e, 1);
INSERT INTO `oc_zone` VALUES (1365, 91, 0x4741, 0x4761627520526567696f6e, 1);
INSERT INTO `oc_zone` VALUES (1366, 91, 0x4f49, 0x4f696f20526567696f6e, 1);
INSERT INTO `oc_zone` VALUES (1367, 91, 0x5155, 0x5175696e61726120526567696f6e, 1);
INSERT INTO `oc_zone` VALUES (1368, 91, 0x544f, 0x546f6d62616c6920526567696f6e, 1);
INSERT INTO `oc_zone` VALUES (1369, 92, 0x4257, 0x426172696d612d5761696e69, 1);
INSERT INTO `oc_zone` VALUES (1370, 92, 0x434d, 0x437579756e692d4d617a6172756e69, 1);
INSERT INTO `oc_zone` VALUES (1371, 92, 0x444d, 0x44656d65726172612d4d616861696361, 1);
INSERT INTO `oc_zone` VALUES (1372, 92, 0x4543, 0x4561737420426572626963652d436f72656e74796e65, 1);
INSERT INTO `oc_zone` VALUES (1373, 92, 0x4557, 0x45737365717569626f2049736c616e64732d576573742044656d6572617261, 1);
INSERT INTO `oc_zone` VALUES (1374, 92, 0x4d42, 0x4d6168616963612d42657262696365, 1);
INSERT INTO `oc_zone` VALUES (1375, 92, 0x504d, 0x506f6d65726f6f6e2d537570656e61616d, 1);
INSERT INTO `oc_zone` VALUES (1376, 92, 0x5049, 0x506f7461726f2d5369706172756e69, 1);
INSERT INTO `oc_zone` VALUES (1377, 92, 0x5544, 0x55707065722044656d65726172612d42657262696365, 1);
INSERT INTO `oc_zone` VALUES (1378, 92, 0x5554, 0x55707065722054616b7574752d55707065722045737365717569626f, 1);
INSERT INTO `oc_zone` VALUES (1379, 93, 0x4152, 0x41727469626f6e697465, 1);
INSERT INTO `oc_zone` VALUES (1380, 93, 0x4345, 0x43656e747265, 1);
INSERT INTO `oc_zone` VALUES (1381, 93, 0x4741, 0x4772616e6427416e7365, 1);
INSERT INTO `oc_zone` VALUES (1382, 93, 0x4e44, 0x4e6f7264, 1);
INSERT INTO `oc_zone` VALUES (1383, 93, 0x4e45, 0x4e6f72642d457374, 1);
INSERT INTO `oc_zone` VALUES (1384, 93, 0x4e4f, 0x4e6f72642d4f75657374, 1);
INSERT INTO `oc_zone` VALUES (1385, 93, 0x4f55, 0x4f75657374, 1);
INSERT INTO `oc_zone` VALUES (1386, 93, 0x5344, 0x537564, 1);
INSERT INTO `oc_zone` VALUES (1387, 93, 0x5345, 0x5375642d457374, 1);
INSERT INTO `oc_zone` VALUES (1388, 94, 0x46, 0x466c61742049736c616e64, 1);
INSERT INTO `oc_zone` VALUES (1389, 94, 0x4d, 0x4d63446f6e616c642049736c616e64, 1);
INSERT INTO `oc_zone` VALUES (1390, 94, 0x53, 0x536861672049736c616e64, 1);
INSERT INTO `oc_zone` VALUES (1391, 94, 0x48, 0x48656172642049736c616e64, 1);
INSERT INTO `oc_zone` VALUES (1392, 95, 0x4154, 0x41746c616e74696461, 1);
INSERT INTO `oc_zone` VALUES (1393, 95, 0x4348, 0x43686f6c7574656361, 1);
INSERT INTO `oc_zone` VALUES (1394, 95, 0x434c, 0x436f6c6f6e, 1);
INSERT INTO `oc_zone` VALUES (1395, 95, 0x434d, 0x436f6d617961677561, 1);
INSERT INTO `oc_zone` VALUES (1396, 95, 0x4350, 0x436f70616e, 1);
INSERT INTO `oc_zone` VALUES (1397, 95, 0x4352, 0x436f72746573, 1);
INSERT INTO `oc_zone` VALUES (1398, 95, 0x5041, 0x456c205061726169736f, 1);
INSERT INTO `oc_zone` VALUES (1399, 95, 0x464d, 0x4672616e636973636f204d6f72617a616e, 1);
INSERT INTO `oc_zone` VALUES (1400, 95, 0x4744, 0x4772616369617320612044696f73, 1);
INSERT INTO `oc_zone` VALUES (1401, 95, 0x494e, 0x496e746962756361, 1);
INSERT INTO `oc_zone` VALUES (1402, 95, 0x4942, 0x49736c6173206465206c6120426168696120284261792049736c616e647329, 1);
INSERT INTO `oc_zone` VALUES (1403, 95, 0x505a, 0x4c612050617a, 1);
INSERT INTO `oc_zone` VALUES (1404, 95, 0x4c45, 0x4c656d70697261, 1);
INSERT INTO `oc_zone` VALUES (1405, 95, 0x4f43, 0x4f636f74657065717565, 1);
INSERT INTO `oc_zone` VALUES (1406, 95, 0x4f4c, 0x4f6c616e63686f, 1);
INSERT INTO `oc_zone` VALUES (1407, 95, 0x5342, 0x53616e74612042617262617261, 1);
INSERT INTO `oc_zone` VALUES (1408, 95, 0x5641, 0x56616c6c65, 1);
INSERT INTO `oc_zone` VALUES (1409, 95, 0x594f, 0x596f726f, 1);
INSERT INTO `oc_zone` VALUES (1410, 96, 0x484357, 0x43656e7472616c20616e64205765737465726e20486f6e67204b6f6e672049736c616e64, 1);
INSERT INTO `oc_zone` VALUES (1411, 96, 0x484541, 0x4561737465726e20486f6e67204b6f6e672049736c616e64, 1);
INSERT INTO `oc_zone` VALUES (1412, 96, 0x48534f, 0x536f75746865726e20486f6e67204b6f6e672049736c616e64, 1);
INSERT INTO `oc_zone` VALUES (1413, 96, 0x485743, 0x57616e204368616920486f6e67204b6f6e672049736c616e64, 1);
INSERT INTO `oc_zone` VALUES (1414, 96, 0x4b4b43, 0x4b6f776c6f6f6e2043697479204b6f776c6f6f6e, 1);
INSERT INTO `oc_zone` VALUES (1415, 96, 0x4b4b54, 0x4b77756e20546f6e67204b6f776c6f6f6e, 1);
INSERT INTO `oc_zone` VALUES (1416, 96, 0x4b5353, 0x5368616d205368756920506f204b6f776c6f6f6e, 1);
INSERT INTO `oc_zone` VALUES (1417, 96, 0x4b5754, 0x576f6e67205461692053696e204b6f776c6f6f6e, 1);
INSERT INTO `oc_zone` VALUES (1418, 96, 0x4b5954, 0x596175205473696d204d6f6e67204b6f776c6f6f6e, 1);
INSERT INTO `oc_zone` VALUES (1419, 96, 0x4e4953, 0x49736c616e6473204e6577205465727269746f72696573, 1);
INSERT INTO `oc_zone` VALUES (1420, 96, 0x4e4b54, 0x4b776169205473696e67204e6577205465727269746f72696573, 1);
INSERT INTO `oc_zone` VALUES (1421, 96, 0x4e4e4f, 0x4e6f727468204e6577205465727269746f72696573, 1);
INSERT INTO `oc_zone` VALUES (1422, 96, 0x4e534b, 0x536169204b756e67204e6577205465727269746f72696573, 1);
INSERT INTO `oc_zone` VALUES (1423, 96, 0x4e5354, 0x5368612054696e204e6577205465727269746f72696573, 1);
INSERT INTO `oc_zone` VALUES (1424, 96, 0x4e5450, 0x54616920506f204e6577205465727269746f72696573, 1);
INSERT INTO `oc_zone` VALUES (1425, 96, 0x4e5457, 0x547375656e2057616e204e6577205465727269746f72696573, 1);
INSERT INTO `oc_zone` VALUES (1426, 96, 0x4e544d, 0x5475656e204d756e204e6577205465727269746f72696573, 1);
INSERT INTO `oc_zone` VALUES (1427, 96, 0x4e594c, 0x5975656e204c6f6e67204e6577205465727269746f72696573, 1);
INSERT INTO `oc_zone` VALUES (1428, 97, 0x424b, 0x426163732d4b69736b756e, 1);
INSERT INTO `oc_zone` VALUES (1429, 97, 0x4241, 0x426172616e7961, 1);
INSERT INTO `oc_zone` VALUES (1430, 97, 0x4245, 0x42656b6573, 1);
INSERT INTO `oc_zone` VALUES (1431, 97, 0x4253, 0x42656b65736373616261, 1);
INSERT INTO `oc_zone` VALUES (1432, 97, 0x425a, 0x426f72736f642d416261756a2d5a656d706c656e, 1);
INSERT INTO `oc_zone` VALUES (1433, 97, 0x4255, 0x4275646170657374, 1);
INSERT INTO `oc_zone` VALUES (1434, 97, 0x4353, 0x43736f6e67726164, 1);
INSERT INTO `oc_zone` VALUES (1435, 97, 0x4445, 0x446562726563656e, 1);
INSERT INTO `oc_zone` VALUES (1436, 97, 0x4455, 0x44756e61756a7661726f73, 1);
INSERT INTO `oc_zone` VALUES (1437, 97, 0x4547, 0x45676572, 1);
INSERT INTO `oc_zone` VALUES (1438, 97, 0x4645, 0x46656a6572, 1);
INSERT INTO `oc_zone` VALUES (1439, 97, 0x4759, 0x47796f72, 1);
INSERT INTO `oc_zone` VALUES (1440, 97, 0x474d, 0x47796f722d4d6f736f6e2d536f70726f6e, 1);
INSERT INTO `oc_zone` VALUES (1441, 97, 0x4842, 0x48616a64752d4269686172, 1);
INSERT INTO `oc_zone` VALUES (1442, 97, 0x4845, 0x4865766573, 1);
INSERT INTO `oc_zone` VALUES (1443, 97, 0x484f, 0x486f646d657a6f766173617268656c79, 1);
INSERT INTO `oc_zone` VALUES (1444, 97, 0x4a4e, 0x4a61737a2d4e6167796b756e2d537a6f6c6e6f6b, 1);
INSERT INTO `oc_zone` VALUES (1445, 97, 0x4b41, 0x4b61706f73766172, 1);
INSERT INTO `oc_zone` VALUES (1446, 97, 0x4b45, 0x4b6563736b656d6574, 1);
INSERT INTO `oc_zone` VALUES (1447, 97, 0x4b4f, 0x4b6f6d61726f6d2d45737a746572676f6d, 1);
INSERT INTO `oc_zone` VALUES (1448, 97, 0x4d49, 0x4d69736b6f6c63, 1);
INSERT INTO `oc_zone` VALUES (1449, 97, 0x4e41, 0x4e6167796b616e697a7361, 1);
INSERT INTO `oc_zone` VALUES (1450, 97, 0x4e4f, 0x4e6f67726164, 1);
INSERT INTO `oc_zone` VALUES (1451, 97, 0x4e59, 0x4e79697265677968617a61, 1);
INSERT INTO `oc_zone` VALUES (1452, 97, 0x5045, 0x50656373, 1);
INSERT INTO `oc_zone` VALUES (1453, 97, 0x5053, 0x50657374, 1);
INSERT INTO `oc_zone` VALUES (1454, 97, 0x534f, 0x536f6d6f6779, 1);
INSERT INTO `oc_zone` VALUES (1455, 97, 0x5350, 0x536f70726f6e, 1);
INSERT INTO `oc_zone` VALUES (1456, 97, 0x5353, 0x537a61626f6c63732d537a61746d61722d4265726567, 1);
INSERT INTO `oc_zone` VALUES (1457, 97, 0x535a, 0x537a65676564, 1);
INSERT INTO `oc_zone` VALUES (1458, 97, 0x5345, 0x537a656b65736665686572766172, 1);
INSERT INTO `oc_zone` VALUES (1459, 97, 0x534c, 0x537a6f6c6e6f6b, 1);
INSERT INTO `oc_zone` VALUES (1460, 97, 0x534d, 0x537a6f6d62617468656c79, 1);
INSERT INTO `oc_zone` VALUES (1461, 97, 0x5441, 0x5461746162616e7961, 1);
INSERT INTO `oc_zone` VALUES (1462, 97, 0x544f, 0x546f6c6e61, 1);
INSERT INTO `oc_zone` VALUES (1463, 97, 0x5641, 0x566173, 1);
INSERT INTO `oc_zone` VALUES (1464, 97, 0x5645, 0x5665737a7072656d, 1);
INSERT INTO `oc_zone` VALUES (1465, 97, 0x5a41, 0x5a616c61, 1);
INSERT INTO `oc_zone` VALUES (1466, 97, 0x5a5a, 0x5a616c6165676572737a6567, 1);
INSERT INTO `oc_zone` VALUES (1467, 98, 0x414c, 0x4175737475726c616e64, 1);
INSERT INTO `oc_zone` VALUES (1468, 98, 0x4846, 0x486f66756f626f72676172737661656f69, 1);
INSERT INTO `oc_zone` VALUES (1469, 98, 0x4e45, 0x4e6f726f75726c616e6420657973747261, 1);
INSERT INTO `oc_zone` VALUES (1470, 98, 0x4e56, 0x4e6f726f75726c616e6420766573747261, 1);
INSERT INTO `oc_zone` VALUES (1471, 98, 0x534c, 0x53756f75726c616e64, 1);
INSERT INTO `oc_zone` VALUES (1472, 98, 0x534e, 0x53756f75726e6573, 1);
INSERT INTO `oc_zone` VALUES (1473, 98, 0x5646, 0x566573746669726f6972, 1);
INSERT INTO `oc_zone` VALUES (1474, 98, 0x564c, 0x5665737475726c616e64, 1);
INSERT INTO `oc_zone` VALUES (1475, 99, 0x414e, 0x416e64616d616e20616e64204e69636f6261722049736c616e6473, 1);
INSERT INTO `oc_zone` VALUES (1476, 99, 0x4150, 0x416e646872612050726164657368, 1);
INSERT INTO `oc_zone` VALUES (1477, 99, 0x4152, 0x4172756e616368616c2050726164657368, 1);
INSERT INTO `oc_zone` VALUES (1478, 99, 0x4153, 0x417373616d, 1);
INSERT INTO `oc_zone` VALUES (1479, 99, 0x4249, 0x4269686172, 1);
INSERT INTO `oc_zone` VALUES (1480, 99, 0x4348, 0x4368616e646967617268, 1);
INSERT INTO `oc_zone` VALUES (1481, 99, 0x4441, 0x446164726120616e64204e6167617220486176656c69, 1);
INSERT INTO `oc_zone` VALUES (1482, 99, 0x444d, 0x44616d616e20616e6420446975, 1);
INSERT INTO `oc_zone` VALUES (1483, 99, 0x4445, 0x44656c6869, 1);
INSERT INTO `oc_zone` VALUES (1484, 99, 0x474f, 0x476f61, 1);
INSERT INTO `oc_zone` VALUES (1485, 99, 0x4755, 0x47756a61726174, 1);
INSERT INTO `oc_zone` VALUES (1486, 99, 0x4841, 0x48617279616e61, 1);
INSERT INTO `oc_zone` VALUES (1487, 99, 0x4850, 0x48696d616368616c2050726164657368, 1);
INSERT INTO `oc_zone` VALUES (1488, 99, 0x4a41, 0x4a616d6d7520616e64204b6173686d6972, 1);
INSERT INTO `oc_zone` VALUES (1489, 99, 0x4b41, 0x4b61726e6174616b61, 1);
INSERT INTO `oc_zone` VALUES (1490, 99, 0x4b45, 0x4b6572616c61, 1);
INSERT INTO `oc_zone` VALUES (1491, 99, 0x4c49, 0x4c616b73686164776565702049736c616e6473, 1);
INSERT INTO `oc_zone` VALUES (1492, 99, 0x4d50, 0x4d61646879612050726164657368, 1);
INSERT INTO `oc_zone` VALUES (1493, 99, 0x4d41, 0x4d61686172617368747261, 1);
INSERT INTO `oc_zone` VALUES (1494, 99, 0x4d4e, 0x4d616e69707572, 1);
INSERT INTO `oc_zone` VALUES (1495, 99, 0x4d45, 0x4d656768616c617961, 1);
INSERT INTO `oc_zone` VALUES (1496, 99, 0x4d49, 0x4d697a6f72616d, 1);
INSERT INTO `oc_zone` VALUES (1497, 99, 0x4e41, 0x4e6167616c616e64, 1);
INSERT INTO `oc_zone` VALUES (1498, 99, 0x4f52, 0x4f7269737361, 1);
INSERT INTO `oc_zone` VALUES (1499, 99, 0x504f, 0x506f6e6469636865727279, 1);
INSERT INTO `oc_zone` VALUES (1500, 99, 0x5055, 0x50756e6a6162, 1);
INSERT INTO `oc_zone` VALUES (1501, 99, 0x5241, 0x52616a61737468616e, 1);
INSERT INTO `oc_zone` VALUES (1502, 99, 0x5349, 0x53696b6b696d, 1);
INSERT INTO `oc_zone` VALUES (1503, 99, 0x544e, 0x54616d696c204e616475, 1);
INSERT INTO `oc_zone` VALUES (1504, 99, 0x5452, 0x54726970757261, 1);
INSERT INTO `oc_zone` VALUES (1505, 99, 0x5550, 0x55747461722050726164657368, 1);
INSERT INTO `oc_zone` VALUES (1506, 99, 0x5742, 0x576573742042656e67616c, 1);
INSERT INTO `oc_zone` VALUES (1507, 100, 0x4143, 0x41636568, 1);
INSERT INTO `oc_zone` VALUES (1508, 100, 0x4241, 0x42616c69, 1);
INSERT INTO `oc_zone` VALUES (1509, 100, 0x4254, 0x42616e74656e, 1);
INSERT INTO `oc_zone` VALUES (1510, 100, 0x4245, 0x42656e676b756c75, 1);
INSERT INTO `oc_zone` VALUES (1511, 100, 0x4244, 0x426f4465546142656b, 1);
INSERT INTO `oc_zone` VALUES (1512, 100, 0x474f, 0x476f726f6e74616c6f, 1);
INSERT INTO `oc_zone` VALUES (1513, 100, 0x4a4b, 0x4a616b617274612052617961, 1);
INSERT INTO `oc_zone` VALUES (1514, 100, 0x4a41, 0x4a616d6269, 1);
INSERT INTO `oc_zone` VALUES (1515, 100, 0x4a42, 0x4a617761204261726174, 1);
INSERT INTO `oc_zone` VALUES (1516, 100, 0x4a54, 0x4a6177612054656e676168, 1);
INSERT INTO `oc_zone` VALUES (1517, 100, 0x4a49, 0x4a6177612054696d7572, 1);
INSERT INTO `oc_zone` VALUES (1518, 100, 0x4b42, 0x4b616c696d616e74616e204261726174, 1);
INSERT INTO `oc_zone` VALUES (1519, 100, 0x4b53, 0x4b616c696d616e74616e2053656c6174616e, 1);
INSERT INTO `oc_zone` VALUES (1520, 100, 0x4b54, 0x4b616c696d616e74616e2054656e676168, 1);
INSERT INTO `oc_zone` VALUES (1521, 100, 0x4b49, 0x4b616c696d616e74616e2054696d7572, 1);
INSERT INTO `oc_zone` VALUES (1522, 100, 0x4242, 0x4b6570756c6175616e2042616e676b612042656c6974756e67, 1);
INSERT INTO `oc_zone` VALUES (1523, 100, 0x4c41, 0x4c616d70756e67, 1);
INSERT INTO `oc_zone` VALUES (1524, 100, 0x4d41, 0x4d616c756b75, 1);
INSERT INTO `oc_zone` VALUES (1525, 100, 0x4d55, 0x4d616c756b75205574617261, 1);
INSERT INTO `oc_zone` VALUES (1526, 100, 0x4e42, 0x4e7573612054656e6767617261204261726174, 1);
INSERT INTO `oc_zone` VALUES (1527, 100, 0x4e54, 0x4e7573612054656e67676172612054696d7572, 1);
INSERT INTO `oc_zone` VALUES (1528, 100, 0x5041, 0x5061707561, 1);
INSERT INTO `oc_zone` VALUES (1529, 100, 0x5249, 0x52696175, 1);
INSERT INTO `oc_zone` VALUES (1530, 100, 0x534e, 0x53756c61776573692053656c6174616e, 1);
INSERT INTO `oc_zone` VALUES (1531, 100, 0x5354, 0x53756c61776573692054656e676168, 1);
INSERT INTO `oc_zone` VALUES (1532, 100, 0x5347, 0x53756c61776573692054656e6767617261, 1);
INSERT INTO `oc_zone` VALUES (1533, 100, 0x5341, 0x53756c6177657369205574617261, 1);
INSERT INTO `oc_zone` VALUES (1534, 100, 0x5342, 0x53756d6174657261204261726174, 1);
INSERT INTO `oc_zone` VALUES (1535, 100, 0x5353, 0x53756d61746572612053656c6174616e, 1);
INSERT INTO `oc_zone` VALUES (1536, 100, 0x5355, 0x53756d6174657261205574617261, 1);
INSERT INTO `oc_zone` VALUES (1537, 100, 0x594f, 0x596f6779616b61727461, 1);
INSERT INTO `oc_zone` VALUES (1538, 101, 0x544548, 0x54656872616e, 1);
INSERT INTO `oc_zone` VALUES (1539, 101, 0x514f4d, 0x516f6d, 1);
INSERT INTO `oc_zone` VALUES (1540, 101, 0x4d4b5a, 0x4d61726b617a69, 1);
INSERT INTO `oc_zone` VALUES (1541, 101, 0x51415a, 0x51617a76696e, 1);
INSERT INTO `oc_zone` VALUES (1542, 101, 0x47494c, 0x47696c616e, 1);
INSERT INTO `oc_zone` VALUES (1543, 101, 0x415244, 0x4172646162696c, 1);
INSERT INTO `oc_zone` VALUES (1544, 101, 0x5a414e, 0x5a616e6a616e, 1);
INSERT INTO `oc_zone` VALUES (1545, 101, 0x45415a, 0x4561737420417a61726261696a616e, 1);
INSERT INTO `oc_zone` VALUES (1546, 101, 0x57455a, 0x5765737420417a61726261696a616e, 1);
INSERT INTO `oc_zone` VALUES (1547, 101, 0x4b5244, 0x4b757264697374616e, 1);
INSERT INTO `oc_zone` VALUES (1548, 101, 0x484d44, 0x48616d6164616e, 1);
INSERT INTO `oc_zone` VALUES (1549, 101, 0x4b524d, 0x4b65726d616e73686168, 1);
INSERT INTO `oc_zone` VALUES (1550, 101, 0x494c4d, 0x496c616d, 1);
INSERT INTO `oc_zone` VALUES (1551, 101, 0x4c5253, 0x4c6f72657374616e, 1);
INSERT INTO `oc_zone` VALUES (1552, 101, 0x4b5a54, 0x4b68757a657374616e, 1);
INSERT INTO `oc_zone` VALUES (1553, 101, 0x434d42, 0x436861686172204d616861616c20616e642042616b687469617269, 1);
INSERT INTO `oc_zone` VALUES (1554, 101, 0x4b4241, 0x4b6f686b696c7579656820616e642042757965722041686d6164, 1);
INSERT INTO `oc_zone` VALUES (1555, 101, 0x425348, 0x42757368656872, 1);
INSERT INTO `oc_zone` VALUES (1556, 101, 0x464152, 0x46617273, 1);
INSERT INTO `oc_zone` VALUES (1557, 101, 0x48524d, 0x486f726d6f7a67616e, 1);
INSERT INTO `oc_zone` VALUES (1558, 101, 0x53424c, 0x53697374616e20616e642042616c756368697374616e, 1);
INSERT INTO `oc_zone` VALUES (1559, 101, 0x4b5242, 0x4b65726d616e, 1);
INSERT INTO `oc_zone` VALUES (1560, 101, 0x595a44, 0x59617a64, 1);
INSERT INTO `oc_zone` VALUES (1561, 101, 0x454648, 0x4573666168616e, 1);
INSERT INTO `oc_zone` VALUES (1562, 101, 0x534d4e, 0x53656d6e616e, 1);
INSERT INTO `oc_zone` VALUES (1563, 101, 0x4d5a44, 0x4d617a616e646172616e, 1);
INSERT INTO `oc_zone` VALUES (1564, 101, 0x474c53, 0x476f6c657374616e, 1);
INSERT INTO `oc_zone` VALUES (1565, 101, 0x4e4b48, 0x4e6f727468204b686f726173616e, 1);
INSERT INTO `oc_zone` VALUES (1566, 101, 0x524b48, 0x52617a617669204b686f726173616e, 1);
INSERT INTO `oc_zone` VALUES (1567, 101, 0x534b48, 0x536f757468204b686f726173616e, 1);
INSERT INTO `oc_zone` VALUES (1568, 102, 0x4244, 0x42616768646164, 1);
INSERT INTO `oc_zone` VALUES (1569, 102, 0x5344, 0x53616c61682061642044696e, 1);
INSERT INTO `oc_zone` VALUES (1570, 102, 0x4459, 0x446979616c61, 1);
INSERT INTO `oc_zone` VALUES (1571, 102, 0x5753, 0x5761736974, 1);
INSERT INTO `oc_zone` VALUES (1572, 102, 0x4d59, 0x4d617973616e, 1);
INSERT INTO `oc_zone` VALUES (1573, 102, 0x4241, 0x416c20426173726168, 1);
INSERT INTO `oc_zone` VALUES (1574, 102, 0x4451, 0x44686920516172, 1);
INSERT INTO `oc_zone` VALUES (1575, 102, 0x4d55, 0x416c204d757468616e6e61, 1);
INSERT INTO `oc_zone` VALUES (1576, 102, 0x5141, 0x416c205161646973796168, 1);
INSERT INTO `oc_zone` VALUES (1577, 102, 0x4242, 0x426162696c, 1);
INSERT INTO `oc_zone` VALUES (1578, 102, 0x4b42, 0x416c204b617262616c61, 1);
INSERT INTO `oc_zone` VALUES (1579, 102, 0x4e4a, 0x416e204e616a6166, 1);
INSERT INTO `oc_zone` VALUES (1580, 102, 0x4142, 0x416c20416e626172, 1);
INSERT INTO `oc_zone` VALUES (1581, 102, 0x4e4e, 0x4e696e617761, 1);
INSERT INTO `oc_zone` VALUES (1582, 102, 0x4448, 0x446168756b, 1);
INSERT INTO `oc_zone` VALUES (1583, 102, 0x414c, 0x417262696c, 1);
INSERT INTO `oc_zone` VALUES (1584, 102, 0x544d, 0x4174205461276d696d, 1);
INSERT INTO `oc_zone` VALUES (1585, 102, 0x534c, 0x41732053756c61796d616e69796168, 1);
INSERT INTO `oc_zone` VALUES (1586, 103, 0x4341, 0x4361726c6f77, 1);
INSERT INTO `oc_zone` VALUES (1587, 103, 0x4356, 0x436176616e, 1);
INSERT INTO `oc_zone` VALUES (1588, 103, 0x434c, 0x436c617265, 1);
INSERT INTO `oc_zone` VALUES (1589, 103, 0x434f, 0x436f726b, 1);
INSERT INTO `oc_zone` VALUES (1590, 103, 0x444f, 0x446f6e6567616c, 1);
INSERT INTO `oc_zone` VALUES (1591, 103, 0x4455, 0x4475626c696e, 1);
INSERT INTO `oc_zone` VALUES (1592, 103, 0x4741, 0x47616c776179, 1);
INSERT INTO `oc_zone` VALUES (1593, 103, 0x4b45, 0x4b65727279, 1);
INSERT INTO `oc_zone` VALUES (1594, 103, 0x4b49, 0x4b696c64617265, 1);
INSERT INTO `oc_zone` VALUES (1595, 103, 0x4b4c, 0x4b696c6b656e6e79, 1);
INSERT INTO `oc_zone` VALUES (1596, 103, 0x4c41, 0x4c616f6973, 1);
INSERT INTO `oc_zone` VALUES (1597, 103, 0x4c45, 0x4c65697472696d, 1);
INSERT INTO `oc_zone` VALUES (1598, 103, 0x4c49, 0x4c696d657269636b, 1);
INSERT INTO `oc_zone` VALUES (1599, 103, 0x4c4f, 0x4c6f6e67666f7264, 1);
INSERT INTO `oc_zone` VALUES (1600, 103, 0x4c55, 0x4c6f757468, 1);
INSERT INTO `oc_zone` VALUES (1601, 103, 0x4d41, 0x4d61796f, 1);
INSERT INTO `oc_zone` VALUES (1602, 103, 0x4d45, 0x4d65617468, 1);
INSERT INTO `oc_zone` VALUES (1603, 103, 0x4d4f, 0x4d6f6e616768616e, 1);
INSERT INTO `oc_zone` VALUES (1604, 103, 0x4f46, 0x4f6666616c79, 1);
INSERT INTO `oc_zone` VALUES (1605, 103, 0x524f, 0x526f73636f6d6d6f6e, 1);
INSERT INTO `oc_zone` VALUES (1606, 103, 0x534c, 0x536c69676f, 1);
INSERT INTO `oc_zone` VALUES (1607, 103, 0x5449, 0x546970706572617279, 1);
INSERT INTO `oc_zone` VALUES (1608, 103, 0x5741, 0x5761746572666f7264, 1);
INSERT INTO `oc_zone` VALUES (1609, 103, 0x5745, 0x576573746d65617468, 1);
INSERT INTO `oc_zone` VALUES (1610, 103, 0x5758, 0x576578666f7264, 1);
INSERT INTO `oc_zone` VALUES (1611, 103, 0x5749, 0x5769636b6c6f77, 1);
INSERT INTO `oc_zone` VALUES (1612, 104, 0x4253, 0x4265276572205368657661, 1);
INSERT INTO `oc_zone` VALUES (1613, 104, 0x4248, 0x42696b6127617420486179617264656e, 1);
INSERT INTO `oc_zone` VALUES (1614, 104, 0x4541, 0x45696c617420616e64204172617661, 1);
INSERT INTO `oc_zone` VALUES (1615, 104, 0x4741, 0x47616c696c, 1);
INSERT INTO `oc_zone` VALUES (1616, 104, 0x4841, 0x4861696661, 1);
INSERT INTO `oc_zone` VALUES (1617, 104, 0x4a4d, 0x4a6568756461204d6f756e7461696e73, 1);
INSERT INTO `oc_zone` VALUES (1618, 104, 0x4a45, 0x4a65727573616c656d, 1);
INSERT INTO `oc_zone` VALUES (1619, 104, 0x4e45, 0x4e65676576, 1);
INSERT INTO `oc_zone` VALUES (1620, 104, 0x5345, 0x53656d61726961, 1);
INSERT INTO `oc_zone` VALUES (1621, 104, 0x5348, 0x536861726f6e, 1);
INSERT INTO `oc_zone` VALUES (1622, 104, 0x5441, 0x54656c20417669762028476f73682044616e29, 1);
INSERT INTO `oc_zone` VALUES (3860, 105, 0x434c, 0x43616c74616e69737365747461, 1);
INSERT INTO `oc_zone` VALUES (3842, 105, 0x4147, 0x4167726967656e746f, 1);
INSERT INTO `oc_zone` VALUES (3843, 105, 0x414c, 0x416c657373616e64726961, 1);
INSERT INTO `oc_zone` VALUES (3844, 105, 0x414e, 0x416e636f6e61, 1);
INSERT INTO `oc_zone` VALUES (3845, 105, 0x414f, 0x416f737461, 1);
INSERT INTO `oc_zone` VALUES (3846, 105, 0x4152, 0x4172657a7a6f, 1);
INSERT INTO `oc_zone` VALUES (3847, 105, 0x4150, 0x4173636f6c6920506963656e6f, 1);
INSERT INTO `oc_zone` VALUES (3848, 105, 0x4154, 0x41737469, 1);
INSERT INTO `oc_zone` VALUES (3849, 105, 0x4156, 0x4176656c6c696e6f, 1);
INSERT INTO `oc_zone` VALUES (3850, 105, 0x4241, 0x42617269, 1);
INSERT INTO `oc_zone` VALUES (3851, 105, 0x424c, 0x42656c6c756e6f, 1);
INSERT INTO `oc_zone` VALUES (3852, 105, 0x424e, 0x42656e6576656e746f, 1);
INSERT INTO `oc_zone` VALUES (3853, 105, 0x4247, 0x42657267616d6f, 1);
INSERT INTO `oc_zone` VALUES (3854, 105, 0x4249, 0x4269656c6c61, 1);
INSERT INTO `oc_zone` VALUES (3855, 105, 0x424f, 0x426f6c6f676e61, 1);
INSERT INTO `oc_zone` VALUES (3856, 105, 0x425a, 0x426f6c7a616e6f, 1);
INSERT INTO `oc_zone` VALUES (3857, 105, 0x4253, 0x42726573636961, 1);
INSERT INTO `oc_zone` VALUES (3858, 105, 0x4252, 0x4272696e64697369, 1);
INSERT INTO `oc_zone` VALUES (3859, 105, 0x4341, 0x4361676c69617269, 1);
INSERT INTO `oc_zone` VALUES (1643, 106, 0x434c41, 0x436c6172656e646f6e20506172697368, 1);
INSERT INTO `oc_zone` VALUES (1644, 106, 0x48414e, 0x48616e6f76657220506172697368, 1);
INSERT INTO `oc_zone` VALUES (1645, 106, 0x4b494e, 0x4b696e6773746f6e20506172697368, 1);
INSERT INTO `oc_zone` VALUES (1646, 106, 0x4d414e, 0x4d616e6368657374657220506172697368, 1);
INSERT INTO `oc_zone` VALUES (1647, 106, 0x504f52, 0x506f72746c616e6420506172697368, 1);
INSERT INTO `oc_zone` VALUES (1648, 106, 0x414e44, 0x5361696e7420416e6472657720506172697368, 1);
INSERT INTO `oc_zone` VALUES (1649, 106, 0x414e4e, 0x5361696e7420416e6e20506172697368, 1);
INSERT INTO `oc_zone` VALUES (1650, 106, 0x434154, 0x5361696e7420436174686572696e6520506172697368, 1);
INSERT INTO `oc_zone` VALUES (1651, 106, 0x454c49, 0x5361696e7420456c697a616265746820506172697368, 1);
INSERT INTO `oc_zone` VALUES (1652, 106, 0x4a414d, 0x5361696e74204a616d657320506172697368, 1);
INSERT INTO `oc_zone` VALUES (1653, 106, 0x4d4152, 0x5361696e74204d61727920506172697368, 1);
INSERT INTO `oc_zone` VALUES (1654, 106, 0x54484f, 0x5361696e742054686f6d617320506172697368, 1);
INSERT INTO `oc_zone` VALUES (1655, 106, 0x54524c, 0x5472656c61776e7920506172697368, 1);
INSERT INTO `oc_zone` VALUES (1656, 106, 0x574d4c, 0x576573746d6f72656c616e6420506172697368, 1);
INSERT INTO `oc_zone` VALUES (1657, 107, 0x4149, 0x4169636869, 1);
INSERT INTO `oc_zone` VALUES (1658, 107, 0x414b, 0x416b697461, 1);
INSERT INTO `oc_zone` VALUES (1659, 107, 0x414f, 0x416f6d6f7269, 1);
INSERT INTO `oc_zone` VALUES (1660, 107, 0x4348, 0x4368696261, 1);
INSERT INTO `oc_zone` VALUES (1661, 107, 0x4548, 0x4568696d65, 1);
INSERT INTO `oc_zone` VALUES (1662, 107, 0x464b, 0x46756b7569, 1);
INSERT INTO `oc_zone` VALUES (1663, 107, 0x4655, 0x46756b756f6b61, 1);
INSERT INTO `oc_zone` VALUES (1664, 107, 0x4653, 0x46756b757368696d61, 1);
INSERT INTO `oc_zone` VALUES (1665, 107, 0x4749, 0x47696675, 1);
INSERT INTO `oc_zone` VALUES (1666, 107, 0x4755, 0x47756d6d61, 1);
INSERT INTO `oc_zone` VALUES (1667, 107, 0x4849, 0x4869726f7368696d61, 1);
INSERT INTO `oc_zone` VALUES (1668, 107, 0x484f, 0x486f6b6b6169646f, 1);
INSERT INTO `oc_zone` VALUES (1669, 107, 0x4859, 0x48796f676f, 1);
INSERT INTO `oc_zone` VALUES (1670, 107, 0x4942, 0x49626172616b69, 1);
INSERT INTO `oc_zone` VALUES (1671, 107, 0x4953, 0x497368696b617761, 1);
INSERT INTO `oc_zone` VALUES (1672, 107, 0x4957, 0x4977617465, 1);
INSERT INTO `oc_zone` VALUES (1673, 107, 0x4b41, 0x4b6167617761, 1);
INSERT INTO `oc_zone` VALUES (1674, 107, 0x4b47, 0x4b61676f7368696d61, 1);
INSERT INTO `oc_zone` VALUES (1675, 107, 0x4b4e, 0x4b616e6167617761, 1);
INSERT INTO `oc_zone` VALUES (1676, 107, 0x4b4f, 0x4b6f636869, 1);
INSERT INTO `oc_zone` VALUES (1677, 107, 0x4b55, 0x4b756d616d6f746f, 1);
INSERT INTO `oc_zone` VALUES (1678, 107, 0x4b59, 0x4b796f746f, 1);
INSERT INTO `oc_zone` VALUES (1679, 107, 0x4d49, 0x4d6965, 1);
INSERT INTO `oc_zone` VALUES (1680, 107, 0x4d59, 0x4d6979616769, 1);
INSERT INTO `oc_zone` VALUES (1681, 107, 0x4d5a, 0x4d6979617a616b69, 1);
INSERT INTO `oc_zone` VALUES (1682, 107, 0x4e41, 0x4e6167616e6f, 1);
INSERT INTO `oc_zone` VALUES (1683, 107, 0x4e47, 0x4e61676173616b69, 1);
INSERT INTO `oc_zone` VALUES (1684, 107, 0x4e52, 0x4e617261, 1);
INSERT INTO `oc_zone` VALUES (1685, 107, 0x4e49, 0x4e696967617461, 1);
INSERT INTO `oc_zone` VALUES (1686, 107, 0x4f49, 0x4f697461, 1);
INSERT INTO `oc_zone` VALUES (1687, 107, 0x4f4b, 0x4f6b6179616d61, 1);
INSERT INTO `oc_zone` VALUES (1688, 107, 0x4f4e, 0x4f6b696e617761, 1);
INSERT INTO `oc_zone` VALUES (1689, 107, 0x4f53, 0x4f73616b61, 1);
INSERT INTO `oc_zone` VALUES (1690, 107, 0x5341, 0x53616761, 1);
INSERT INTO `oc_zone` VALUES (1691, 107, 0x5349, 0x53616974616d61, 1);
INSERT INTO `oc_zone` VALUES (1692, 107, 0x5348, 0x5368696761, 1);
INSERT INTO `oc_zone` VALUES (1693, 107, 0x534d, 0x5368696d616e65, 1);
INSERT INTO `oc_zone` VALUES (1694, 107, 0x535a, 0x5368697a756f6b61, 1);
INSERT INTO `oc_zone` VALUES (1695, 107, 0x544f, 0x546f6368696769, 1);
INSERT INTO `oc_zone` VALUES (1696, 107, 0x5453, 0x546f6b757368696d61, 1);
INSERT INTO `oc_zone` VALUES (1697, 107, 0x544b, 0x546f6b796f, 1);
INSERT INTO `oc_zone` VALUES (1698, 107, 0x5454, 0x546f74746f7269, 1);
INSERT INTO `oc_zone` VALUES (1699, 107, 0x5459, 0x546f79616d61, 1);
INSERT INTO `oc_zone` VALUES (1700, 107, 0x5741, 0x57616b6179616d61, 1);
INSERT INTO `oc_zone` VALUES (1701, 107, 0x5941, 0x59616d6167617461, 1);
INSERT INTO `oc_zone` VALUES (1702, 107, 0x594d, 0x59616d616775636869, 1);
INSERT INTO `oc_zone` VALUES (1703, 107, 0x594e, 0x59616d616e61736869, 1);
INSERT INTO `oc_zone` VALUES (1704, 108, 0x414d, 0x27416d6d616e, 1);
INSERT INTO `oc_zone` VALUES (1705, 108, 0x414a, 0x416a6c756e, 1);
INSERT INTO `oc_zone` VALUES (1706, 108, 0x4141, 0x416c2027417161626168, 1);
INSERT INTO `oc_zone` VALUES (1707, 108, 0x4142, 0x416c2042616c716127, 1);
INSERT INTO `oc_zone` VALUES (1708, 108, 0x414b, 0x416c204b6172616b, 1);
INSERT INTO `oc_zone` VALUES (1709, 108, 0x414c, 0x416c204d6166726171, 1);
INSERT INTO `oc_zone` VALUES (1710, 108, 0x4154, 0x417420546166696c6168, 1);
INSERT INTO `oc_zone` VALUES (1711, 108, 0x415a, 0x417a205a6172716127, 1);
INSERT INTO `oc_zone` VALUES (1712, 108, 0x4952, 0x4972626964, 1);
INSERT INTO `oc_zone` VALUES (1713, 108, 0x4a41, 0x4a6172617368, 1);
INSERT INTO `oc_zone` VALUES (1714, 108, 0x4d41, 0x4d6127616e, 1);
INSERT INTO `oc_zone` VALUES (1715, 108, 0x4d44, 0x4d6164616261, 1);
INSERT INTO `oc_zone` VALUES (1716, 109, 0x414c, 0x416c6d617479, 1);
INSERT INTO `oc_zone` VALUES (1717, 109, 0x4143, 0x416c6d6174792043697479, 1);
INSERT INTO `oc_zone` VALUES (1718, 109, 0x414d, 0x41716d6f6c61, 1);
INSERT INTO `oc_zone` VALUES (1719, 109, 0x4151, 0x4171746f6265, 1);
INSERT INTO `oc_zone` VALUES (1720, 109, 0x4153, 0x417374616e612043697479, 1);
INSERT INTO `oc_zone` VALUES (1721, 109, 0x4154, 0x417479726175, 1);
INSERT INTO `oc_zone` VALUES (1722, 109, 0x4241, 0x42617479732051617a61717374616e, 1);
INSERT INTO `oc_zone` VALUES (1723, 109, 0x4259, 0x426179716f6e6779722043697479, 1);
INSERT INTO `oc_zone` VALUES (1724, 109, 0x4d41, 0x4d616e6767687973746175, 1);
INSERT INTO `oc_zone` VALUES (1725, 109, 0x4f4e, 0x4f6e6774757374696b2051617a61717374616e, 1);
INSERT INTO `oc_zone` VALUES (1726, 109, 0x5041, 0x5061766c6f646172, 1);
INSERT INTO `oc_zone` VALUES (1727, 109, 0x5141, 0x516172616768616e6479, 1);
INSERT INTO `oc_zone` VALUES (1728, 109, 0x514f, 0x516f7374616e6179, 1);
INSERT INTO `oc_zone` VALUES (1729, 109, 0x5159, 0x51797a796c6f726461, 1);
INSERT INTO `oc_zone` VALUES (1730, 109, 0x5348, 0x536879676879732051617a61717374616e, 1);
INSERT INTO `oc_zone` VALUES (1731, 109, 0x534f, 0x536f6c74757374696b2051617a61717374616e, 1);
INSERT INTO `oc_zone` VALUES (1732, 109, 0x5a48, 0x5a68616d62796c, 1);
INSERT INTO `oc_zone` VALUES (1733, 110, 0x4345, 0x43656e7472616c, 1);
INSERT INTO `oc_zone` VALUES (1734, 110, 0x434f, 0x436f617374, 1);
INSERT INTO `oc_zone` VALUES (1735, 110, 0x4541, 0x4561737465726e, 1);
INSERT INTO `oc_zone` VALUES (1736, 110, 0x4e41, 0x4e6169726f62692041726561, 1);
INSERT INTO `oc_zone` VALUES (1737, 110, 0x4e45, 0x4e6f727468204561737465726e, 1);
INSERT INTO `oc_zone` VALUES (1738, 110, 0x4e59, 0x4e79616e7a61, 1);
INSERT INTO `oc_zone` VALUES (1739, 110, 0x5256, 0x526966742056616c6c6579, 1);
INSERT INTO `oc_zone` VALUES (1740, 110, 0x5745, 0x5765737465726e, 1);
INSERT INTO `oc_zone` VALUES (1741, 111, 0x4147, 0x41626169616e67, 1);
INSERT INTO `oc_zone` VALUES (1742, 111, 0x414d, 0x4162656d616d61, 1);
INSERT INTO `oc_zone` VALUES (1743, 111, 0x414b, 0x4172616e756b61, 1);
INSERT INTO `oc_zone` VALUES (1744, 111, 0x414f, 0x41726f726165, 1);
INSERT INTO `oc_zone` VALUES (1745, 111, 0x4241, 0x42616e616261, 1);
INSERT INTO `oc_zone` VALUES (1746, 111, 0x4245, 0x42657275, 1);
INSERT INTO `oc_zone` VALUES (1747, 111, 0x6254, 0x42757461726974617269, 1);
INSERT INTO `oc_zone` VALUES (1748, 111, 0x4b41, 0x4b616e746f6e, 1);
INSERT INTO `oc_zone` VALUES (1749, 111, 0x4b52, 0x4b69726974696d617469, 1);
INSERT INTO `oc_zone` VALUES (1750, 111, 0x4b55, 0x4b75726961, 1);
INSERT INTO `oc_zone` VALUES (1751, 111, 0x4d49, 0x4d6169616e61, 1);
INSERT INTO `oc_zone` VALUES (1752, 111, 0x4d4e, 0x4d616b696e, 1);
INSERT INTO `oc_zone` VALUES (1753, 111, 0x4d45, 0x4d6172616b6569, 1);
INSERT INTO `oc_zone` VALUES (1754, 111, 0x4e49, 0x4e696b756e6175, 1);
INSERT INTO `oc_zone` VALUES (1755, 111, 0x4e4f, 0x4e6f6e6f757469, 1);
INSERT INTO `oc_zone` VALUES (1756, 111, 0x4f4e, 0x4f6e6f746f61, 1);
INSERT INTO `oc_zone` VALUES (1757, 111, 0x5454, 0x546162697465756561, 1);
INSERT INTO `oc_zone` VALUES (1758, 111, 0x5452, 0x54616275616572616e, 1);
INSERT INTO `oc_zone` VALUES (1759, 111, 0x544d, 0x54616d616e61, 1);
INSERT INTO `oc_zone` VALUES (1760, 111, 0x5457, 0x546172617761, 1);
INSERT INTO `oc_zone` VALUES (1761, 111, 0x5445, 0x54657261696e61, 1);
INSERT INTO `oc_zone` VALUES (1762, 112, 0x434841, 0x43686167616e672d646f, 1);
INSERT INTO `oc_zone` VALUES (1763, 112, 0x484142, 0x48616d67796f6e672d62756b746f, 1);
INSERT INTO `oc_zone` VALUES (1764, 112, 0x48414e, 0x48616d67796f6e672d6e616d646f, 1);
INSERT INTO `oc_zone` VALUES (1765, 112, 0x485742, 0x4877616e676861652d62756b746f, 1);
INSERT INTO `oc_zone` VALUES (1766, 112, 0x48574e, 0x4877616e676861652d6e616d646f, 1);
INSERT INTO `oc_zone` VALUES (1767, 112, 0x4b414e, 0x4b616e67776f6e2d646f, 1);
INSERT INTO `oc_zone` VALUES (1768, 112, 0x505942, 0x5027796f6e67616e2d62756b746f, 1);
INSERT INTO `oc_zone` VALUES (1769, 112, 0x50594e, 0x5027796f6e67616e2d6e616d646f, 1);
INSERT INTO `oc_zone` VALUES (1770, 112, 0x59414e, 0x5279616e6767616e672d646f202859616e6767616e672d646f29, 1);
INSERT INTO `oc_zone` VALUES (1771, 112, 0x4e414a, 0x5261736f6e204469726563746c7920476f7665726e65642043697479, 1);
INSERT INTO `oc_zone` VALUES (1772, 112, 0x50594f, 0x5027796f6e6779616e67205370656369616c2043697479, 1);
INSERT INTO `oc_zone` VALUES (1773, 113, 0x434f, 0x436827756e676368276f6e672d62756b746f, 1);
INSERT INTO `oc_zone` VALUES (1774, 113, 0x4348, 0x436827756e676368276f6e672d6e616d646f, 1);
INSERT INTO `oc_zone` VALUES (1775, 113, 0x4344, 0x4368656a752d646f, 1);
INSERT INTO `oc_zone` VALUES (1776, 113, 0x4342, 0x43686f6c6c612d62756b746f, 1);
INSERT INTO `oc_zone` VALUES (1777, 113, 0x434e, 0x43686f6c6c612d6e616d646f, 1);
INSERT INTO `oc_zone` VALUES (1778, 113, 0x4947, 0x496e6368276f6e2d6777616e67796f6b7369, 1);
INSERT INTO `oc_zone` VALUES (1779, 113, 0x4b41, 0x4b616e67776f6e2d646f, 1);
INSERT INTO `oc_zone` VALUES (1780, 113, 0x4b47, 0x4b77616e676a752d6777616e67796f6b7369, 1);
INSERT INTO `oc_zone` VALUES (1781, 113, 0x4b44, 0x4b796f6e6767692d646f, 1);
INSERT INTO `oc_zone` VALUES (1782, 113, 0x4b42, 0x4b796f6e6773616e672d62756b746f, 1);
INSERT INTO `oc_zone` VALUES (1783, 113, 0x4b4e, 0x4b796f6e6773616e672d6e616d646f, 1);
INSERT INTO `oc_zone` VALUES (1784, 113, 0x5047, 0x507573616e2d6777616e67796f6b7369, 1);
INSERT INTO `oc_zone` VALUES (1785, 113, 0x534f, 0x536f756c2d7427756b70796f6c7369, 1);
INSERT INTO `oc_zone` VALUES (1786, 113, 0x5441, 0x54616567752d6777616e67796f6b7369, 1);
INSERT INTO `oc_zone` VALUES (1787, 113, 0x5447, 0x5461656a6f6e2d6777616e67796f6b7369, 1);
INSERT INTO `oc_zone` VALUES (1788, 114, 0x414c, 0x416c20274173696d6168, 1);
INSERT INTO `oc_zone` VALUES (1789, 114, 0x4141, 0x416c2041686d616469, 1);
INSERT INTO `oc_zone` VALUES (1790, 114, 0x4146, 0x416c2046617277616e69796168, 1);
INSERT INTO `oc_zone` VALUES (1791, 114, 0x414a, 0x416c204a6168726127, 1);
INSERT INTO `oc_zone` VALUES (1792, 114, 0x4841, 0x486177616c6c69, 1);
INSERT INTO `oc_zone` VALUES (1793, 115, 0x4742, 0x426973686b656b, 1);
INSERT INTO `oc_zone` VALUES (1794, 115, 0x42, 0x4261746b656e, 1);
INSERT INTO `oc_zone` VALUES (1795, 115, 0x43, 0x436875, 1);
INSERT INTO `oc_zone` VALUES (1796, 115, 0x4a, 0x4a616c616c2d41626164, 1);
INSERT INTO `oc_zone` VALUES (1797, 115, 0x4e, 0x4e6172796e, 1);
INSERT INTO `oc_zone` VALUES (1798, 115, 0x4f, 0x4f7368, 1);
INSERT INTO `oc_zone` VALUES (1799, 115, 0x54, 0x54616c6173, 1);
INSERT INTO `oc_zone` VALUES (1800, 115, 0x59, 0x5973796b2d4b6f6c, 1);
INSERT INTO `oc_zone` VALUES (1801, 116, 0x5654, 0x5669656e7469616e65, 1);
INSERT INTO `oc_zone` VALUES (1802, 116, 0x4154, 0x417474617075, 1);
INSERT INTO `oc_zone` VALUES (1803, 116, 0x424b, 0x426f6b656f, 1);
INSERT INTO `oc_zone` VALUES (1804, 116, 0x424c, 0x426f6c696b68616d786169, 1);
INSERT INTO `oc_zone` VALUES (1805, 116, 0x4348, 0x4368616d706173616b, 1);
INSERT INTO `oc_zone` VALUES (1806, 116, 0x484f, 0x486f75617068616e, 1);
INSERT INTO `oc_zone` VALUES (1807, 116, 0x4b48, 0x4b68616d6d6f75616e, 1);
INSERT INTO `oc_zone` VALUES (1808, 116, 0x4c4d, 0x4c6f75616e67204e616d746861, 1);
INSERT INTO `oc_zone` VALUES (1809, 116, 0x4c50, 0x4c6f75616e6770686162616e67, 1);
INSERT INTO `oc_zone` VALUES (1810, 116, 0x4f55, 0x4f75646f6d786169, 1);
INSERT INTO `oc_zone` VALUES (1811, 116, 0x5048, 0x50686f6e6773616c69, 1);
INSERT INTO `oc_zone` VALUES (1812, 116, 0x534c, 0x53616c6176616e, 1);
INSERT INTO `oc_zone` VALUES (1813, 116, 0x5356, 0x536176616e6e616b686574, 1);
INSERT INTO `oc_zone` VALUES (1814, 116, 0x5649, 0x5669656e7469616e65, 1);
INSERT INTO `oc_zone` VALUES (1815, 116, 0x5841, 0x586169676e61626f756c69, 1);
INSERT INTO `oc_zone` VALUES (1816, 116, 0x5845, 0x58656b6f6e67, 1);
INSERT INTO `oc_zone` VALUES (1817, 116, 0x5849, 0x5869616e676b686f616e67, 1);
INSERT INTO `oc_zone` VALUES (1818, 116, 0x584e, 0x586169736f6d626f756e, 1);
INSERT INTO `oc_zone` VALUES (1819, 117, 0x41495a, 0x41697a6b7261756b6c65732052616a6f6e73, 1);
INSERT INTO `oc_zone` VALUES (1820, 117, 0x414c55, 0x416c756b736e65732052616a6f6e73, 1);
INSERT INTO `oc_zone` VALUES (1821, 117, 0x42414c, 0x42616c76752052616a6f6e73, 1);
INSERT INTO `oc_zone` VALUES (1822, 117, 0x424155, 0x426175736b61732052616a6f6e73, 1);
INSERT INTO `oc_zone` VALUES (1823, 117, 0x434553, 0x436573752052616a6f6e73, 1);
INSERT INTO `oc_zone` VALUES (1824, 117, 0x444752, 0x44617567617670696c732052616a6f6e73, 1);
INSERT INTO `oc_zone` VALUES (1825, 117, 0x444f42, 0x446f62656c65732052616a6f6e73, 1);
INSERT INTO `oc_zone` VALUES (1826, 117, 0x47554c, 0x47756c62656e65732052616a6f6e73, 1);
INSERT INTO `oc_zone` VALUES (1827, 117, 0x4a454b, 0x4a656b616270696c732052616a6f6e73, 1);
INSERT INTO `oc_zone` VALUES (1828, 117, 0x4a4752, 0x4a656c67617661732052616a6f6e73, 1);
INSERT INTO `oc_zone` VALUES (1829, 117, 0x4b5241, 0x4b7261736c617661732052616a6f6e73, 1);
INSERT INTO `oc_zone` VALUES (1830, 117, 0x4b554c, 0x4b756c64696761732052616a6f6e73, 1);
INSERT INTO `oc_zone` VALUES (1831, 117, 0x4c5052, 0x4c696570616a61732052616a6f6e73, 1);
INSERT INTO `oc_zone` VALUES (1832, 117, 0x4c494d, 0x4c696d62617a752052616a6f6e73, 1);
INSERT INTO `oc_zone` VALUES (1833, 117, 0x4c5544, 0x4c75647a61732052616a6f6e73, 1);
INSERT INTO `oc_zone` VALUES (1834, 117, 0x4d4144, 0x4d61646f6e61732052616a6f6e73, 1);
INSERT INTO `oc_zone` VALUES (1835, 117, 0x4f4752, 0x4f677265732052616a6f6e73, 1);
INSERT INTO `oc_zone` VALUES (1836, 117, 0x505245, 0x507265696c752052616a6f6e73, 1);
INSERT INTO `oc_zone` VALUES (1837, 117, 0x525a52, 0x52657a656b6e65732052616a6f6e73, 1);
INSERT INTO `oc_zone` VALUES (1838, 117, 0x524752, 0x52696761732052616a6f6e73, 1);
INSERT INTO `oc_zone` VALUES (1839, 117, 0x53414c, 0x53616c6475732052616a6f6e73, 1);
INSERT INTO `oc_zone` VALUES (1840, 117, 0x54414c, 0x54616c73752052616a6f6e73, 1);
INSERT INTO `oc_zone` VALUES (1841, 117, 0x54554b, 0x54756b756d612052616a6f6e73, 1);
INSERT INTO `oc_zone` VALUES (1842, 117, 0x564c4b, 0x56616c6b61732052616a6f6e73, 1);
INSERT INTO `oc_zone` VALUES (1843, 117, 0x564c4d, 0x56616c6d69657261732052616a6f6e73, 1);
INSERT INTO `oc_zone` VALUES (1844, 117, 0x565352, 0x56656e747370696c732052616a6f6e73, 1);
INSERT INTO `oc_zone` VALUES (1845, 117, 0x444756, 0x44617567617670696c73, 1);
INSERT INTO `oc_zone` VALUES (1846, 117, 0x4a4756, 0x4a656c67617661, 1);
INSERT INTO `oc_zone` VALUES (1847, 117, 0x4a5552, 0x4a75726d616c61, 1);
INSERT INTO `oc_zone` VALUES (1848, 117, 0x4c504b, 0x4c696570616a61, 1);
INSERT INTO `oc_zone` VALUES (1849, 117, 0x525a4b, 0x52657a656b6e65, 1);
INSERT INTO `oc_zone` VALUES (1850, 117, 0x524741, 0x52696761, 1);
INSERT INTO `oc_zone` VALUES (1851, 117, 0x56534c, 0x56656e747370696c73, 1);
INSERT INTO `oc_zone` VALUES (1852, 119, 0x4245, 0x4265726561, 1);
INSERT INTO `oc_zone` VALUES (1853, 119, 0x4242, 0x42757468612d4275746865, 1);
INSERT INTO `oc_zone` VALUES (1854, 119, 0x4c45, 0x4c6572696265, 1);
INSERT INTO `oc_zone` VALUES (1855, 119, 0x4d46, 0x4d61666574656e67, 1);
INSERT INTO `oc_zone` VALUES (1856, 119, 0x4d53, 0x4d6173657275, 1);
INSERT INTO `oc_zone` VALUES (1857, 119, 0x4d48, 0x4d6f68616c65277320486f656b, 1);
INSERT INTO `oc_zone` VALUES (1858, 119, 0x4d4b, 0x4d6f6b686f746c6f6e67, 1);
INSERT INTO `oc_zone` VALUES (1859, 119, 0x514e, 0x51616368612773204e656b, 1);
INSERT INTO `oc_zone` VALUES (1860, 119, 0x5154, 0x51757468696e67, 1);
INSERT INTO `oc_zone` VALUES (1861, 119, 0x5454, 0x54686162612d5473656b61, 1);
INSERT INTO `oc_zone` VALUES (1862, 120, 0x4249, 0x426f6d69, 1);
INSERT INTO `oc_zone` VALUES (1863, 120, 0x4247, 0x426f6e67, 1);
INSERT INTO `oc_zone` VALUES (1864, 120, 0x4742, 0x4772616e64204261737361, 1);
INSERT INTO `oc_zone` VALUES (1865, 120, 0x434d, 0x4772616e642043617065204d6f756e74, 1);
INSERT INTO `oc_zone` VALUES (1866, 120, 0x4747, 0x4772616e64204765646568, 1);
INSERT INTO `oc_zone` VALUES (1867, 120, 0x474b, 0x4772616e64204b7275, 1);
INSERT INTO `oc_zone` VALUES (1868, 120, 0x4c4f, 0x4c6f6661, 1);
INSERT INTO `oc_zone` VALUES (1869, 120, 0x4d47, 0x4d617267696269, 1);
INSERT INTO `oc_zone` VALUES (1870, 120, 0x4d4c, 0x4d6172796c616e64, 1);
INSERT INTO `oc_zone` VALUES (1871, 120, 0x4d53, 0x4d6f6e747365727261646f, 1);
INSERT INTO `oc_zone` VALUES (1872, 120, 0x4e42, 0x4e696d6261, 1);
INSERT INTO `oc_zone` VALUES (1873, 120, 0x5243, 0x52697665722043657373, 1);
INSERT INTO `oc_zone` VALUES (1874, 120, 0x534e, 0x53696e6f65, 1);
INSERT INTO `oc_zone` VALUES (1875, 121, 0x414a, 0x416a646162697961, 1);
INSERT INTO `oc_zone` VALUES (1876, 121, 0x415a, 0x416c2027417a697a69796168, 1);
INSERT INTO `oc_zone` VALUES (1877, 121, 0x4641, 0x416c204661746968, 1);
INSERT INTO `oc_zone` VALUES (1878, 121, 0x4a41, 0x416c204a6162616c20616c20416b68646172, 1);
INSERT INTO `oc_zone` VALUES (1879, 121, 0x4a55, 0x416c204a7566726168, 1);
INSERT INTO `oc_zone` VALUES (1880, 121, 0x4b48, 0x416c204b68756d73, 1);
INSERT INTO `oc_zone` VALUES (1881, 121, 0x4b55, 0x416c204b7566726168, 1);
INSERT INTO `oc_zone` VALUES (1882, 121, 0x4e4b, 0x416e204e7571617420616c204b68616d73, 1);
INSERT INTO `oc_zone` VALUES (1883, 121, 0x4153, 0x41736820536861746927, 1);
INSERT INTO `oc_zone` VALUES (1884, 121, 0x4157, 0x417762617269, 1);
INSERT INTO `oc_zone` VALUES (1885, 121, 0x5a41, 0x417a205a617769796168, 1);
INSERT INTO `oc_zone` VALUES (1886, 121, 0x4241, 0x42616e6768617a69, 1);
INSERT INTO `oc_zone` VALUES (1887, 121, 0x4441, 0x4461726e6168, 1);
INSERT INTO `oc_zone` VALUES (1888, 121, 0x4744, 0x47686164616d6973, 1);
INSERT INTO `oc_zone` VALUES (1889, 121, 0x4759, 0x4768617279616e, 1);
INSERT INTO `oc_zone` VALUES (1890, 121, 0x4d49, 0x4d69737261746168, 1);
INSERT INTO `oc_zone` VALUES (1891, 121, 0x4d5a, 0x4d75727a7571, 1);
INSERT INTO `oc_zone` VALUES (1892, 121, 0x5342, 0x5361626861, 1);
INSERT INTO `oc_zone` VALUES (1893, 121, 0x5357, 0x53617766616a6a696e, 1);
INSERT INTO `oc_zone` VALUES (1894, 121, 0x5355, 0x53757274, 1);
INSERT INTO `oc_zone` VALUES (1895, 121, 0x544c, 0x5461726162756c75732028547269706f6c6929, 1);
INSERT INTO `oc_zone` VALUES (1896, 121, 0x5448, 0x54617268756e6168, 1);
INSERT INTO `oc_zone` VALUES (1897, 121, 0x5455, 0x547562727571, 1);
INSERT INTO `oc_zone` VALUES (1898, 121, 0x5941, 0x59616672616e, 1);
INSERT INTO `oc_zone` VALUES (1899, 121, 0x5a4c, 0x5a6c6974616e, 1);
INSERT INTO `oc_zone` VALUES (1900, 122, 0x56, 0x566164757a, 1);
INSERT INTO `oc_zone` VALUES (1901, 122, 0x41, 0x53636861616e, 1);
INSERT INTO `oc_zone` VALUES (1902, 122, 0x42, 0x42616c7a657273, 1);
INSERT INTO `oc_zone` VALUES (1903, 122, 0x4e, 0x5472696573656e, 1);
INSERT INTO `oc_zone` VALUES (1904, 122, 0x45, 0x45736368656e, 1);
INSERT INTO `oc_zone` VALUES (1905, 122, 0x4d, 0x4d617572656e, 1);
INSERT INTO `oc_zone` VALUES (1906, 122, 0x54, 0x5472696573656e62657267, 1);
INSERT INTO `oc_zone` VALUES (1907, 122, 0x52, 0x52756767656c6c, 1);
INSERT INTO `oc_zone` VALUES (1908, 122, 0x47, 0x47616d7072696e, 1);
INSERT INTO `oc_zone` VALUES (1909, 122, 0x4c, 0x536368656c6c656e62657267, 1);
INSERT INTO `oc_zone` VALUES (1910, 122, 0x50, 0x506c616e6b656e, 1);
INSERT INTO `oc_zone` VALUES (1911, 123, 0x414c, 0x416c79747573, 1);
INSERT INTO `oc_zone` VALUES (1912, 123, 0x4b41, 0x4b61756e6173, 1);
INSERT INTO `oc_zone` VALUES (1913, 123, 0x4b4c, 0x4b6c616970656461, 1);
INSERT INTO `oc_zone` VALUES (1914, 123, 0x4d41, 0x4d6172696a616d706f6c65, 1);
INSERT INTO `oc_zone` VALUES (1915, 123, 0x5041, 0x50616e6576657a7973, 1);
INSERT INTO `oc_zone` VALUES (1916, 123, 0x5349, 0x536961756c696169, 1);
INSERT INTO `oc_zone` VALUES (1917, 123, 0x5441, 0x54617572616765, 1);
INSERT INTO `oc_zone` VALUES (1918, 123, 0x5445, 0x54656c73696169, 1);
INSERT INTO `oc_zone` VALUES (1919, 123, 0x5554, 0x5574656e61, 1);
INSERT INTO `oc_zone` VALUES (1920, 123, 0x5649, 0x56696c6e697573, 1);
INSERT INTO `oc_zone` VALUES (1921, 124, 0x4444, 0x4469656b69726368, 1);
INSERT INTO `oc_zone` VALUES (1922, 124, 0x4443, 0x436c657276617578, 1);
INSERT INTO `oc_zone` VALUES (1923, 124, 0x4452, 0x526564616e6765, 1);
INSERT INTO `oc_zone` VALUES (1924, 124, 0x4456, 0x5669616e64656e, 1);
INSERT INTO `oc_zone` VALUES (1925, 124, 0x4457, 0x57696c747a, 1);
INSERT INTO `oc_zone` VALUES (1926, 124, 0x4747, 0x47726576656e6d6163686572, 1);
INSERT INTO `oc_zone` VALUES (1927, 124, 0x4745, 0x4563687465726e616368, 1);
INSERT INTO `oc_zone` VALUES (1928, 124, 0x4752, 0x52656d696368, 1);
INSERT INTO `oc_zone` VALUES (1929, 124, 0x4c4c, 0x4c7578656d626f757267, 1);
INSERT INTO `oc_zone` VALUES (1930, 124, 0x4c43, 0x436170656c6c656e, 1);
INSERT INTO `oc_zone` VALUES (1931, 124, 0x4c45, 0x457363682d7375722d416c7a65747465, 1);
INSERT INTO `oc_zone` VALUES (1932, 124, 0x4c4d, 0x4d6572736368, 1);
INSERT INTO `oc_zone` VALUES (1933, 125, 0x4f4c46, 0x4f7572204c61647920466174696d6120506172697368, 1);
INSERT INTO `oc_zone` VALUES (1934, 125, 0x414e54, 0x53742e20416e74686f6e7920506172697368, 1);
INSERT INTO `oc_zone` VALUES (1935, 125, 0x4c415a, 0x53742e204c617a6172757320506172697368, 1);
INSERT INTO `oc_zone` VALUES (1936, 125, 0x434154, 0x43617468656472616c20506172697368, 1);
INSERT INTO `oc_zone` VALUES (1937, 125, 0x4c4157, 0x53742e204c617772656e636520506172697368, 1);
INSERT INTO `oc_zone` VALUES (1938, 127, 0x414e, 0x416e74616e616e617269766f, 1);
INSERT INTO `oc_zone` VALUES (1939, 127, 0x4153, 0x416e74736972616e616e61, 1);
INSERT INTO `oc_zone` VALUES (1940, 127, 0x464e, 0x4669616e6172616e74736f61, 1);
INSERT INTO `oc_zone` VALUES (1941, 127, 0x4d4a, 0x4d6168616a616e6761, 1);
INSERT INTO `oc_zone` VALUES (1942, 127, 0x544d, 0x546f616d6173696e61, 1);
INSERT INTO `oc_zone` VALUES (1943, 127, 0x544c, 0x546f6c69617261, 1);
INSERT INTO `oc_zone` VALUES (1944, 128, 0x424c4b, 0x42616c616b61, 1);
INSERT INTO `oc_zone` VALUES (1945, 128, 0x424c54, 0x426c616e74797265, 1);
INSERT INTO `oc_zone` VALUES (1946, 128, 0x434b57, 0x4368696b77617761, 1);
INSERT INTO `oc_zone` VALUES (1947, 128, 0x435244, 0x4368697261647a756c75, 1);
INSERT INTO `oc_zone` VALUES (1948, 128, 0x435450, 0x43686974697061, 1);
INSERT INTO `oc_zone` VALUES (1949, 128, 0x44445a, 0x4465647a61, 1);
INSERT INTO `oc_zone` VALUES (1950, 128, 0x445741, 0x446f7761, 1);
INSERT INTO `oc_zone` VALUES (1951, 128, 0x4b5247, 0x4b61726f6e6761, 1);
INSERT INTO `oc_zone` VALUES (1952, 128, 0x4b5347, 0x4b6173756e6775, 1);
INSERT INTO `oc_zone` VALUES (1953, 128, 0x4c4b4d, 0x4c696b6f6d61, 1);
INSERT INTO `oc_zone` VALUES (1954, 128, 0x4c4c47, 0x4c696c6f6e677765, 1);
INSERT INTO `oc_zone` VALUES (1955, 128, 0x4d4347, 0x4d616368696e6761, 1);
INSERT INTO `oc_zone` VALUES (1956, 128, 0x4d4743, 0x4d616e676f636869, 1);
INSERT INTO `oc_zone` VALUES (1957, 128, 0x4d4348, 0x4d6368696e6a69, 1);
INSERT INTO `oc_zone` VALUES (1958, 128, 0x4d4c4a, 0x4d756c616e6a65, 1);
INSERT INTO `oc_zone` VALUES (1959, 128, 0x4d575a, 0x4d77616e7a61, 1);
INSERT INTO `oc_zone` VALUES (1960, 128, 0x4d5a4d, 0x4d7a696d6261, 1);
INSERT INTO `oc_zone` VALUES (1961, 128, 0x4e5455, 0x4e7463686575, 1);
INSERT INTO `oc_zone` VALUES (1962, 128, 0x4e4b42, 0x4e6b6861746120426179, 1);
INSERT INTO `oc_zone` VALUES (1963, 128, 0x4e4b48, 0x4e6b686f74616b6f7461, 1);
INSERT INTO `oc_zone` VALUES (1964, 128, 0x4e534a, 0x4e73616e6a65, 1);
INSERT INTO `oc_zone` VALUES (1965, 128, 0x4e5449, 0x4e746368697369, 1);
INSERT INTO `oc_zone` VALUES (1966, 128, 0x50484c, 0x5068616c6f6d6265, 1);
INSERT INTO `oc_zone` VALUES (1967, 128, 0x524d50, 0x52756d706869, 1);
INSERT INTO `oc_zone` VALUES (1968, 128, 0x534c4d, 0x53616c696d61, 1);
INSERT INTO `oc_zone` VALUES (1969, 128, 0x544859, 0x5468796f6c6f, 1);
INSERT INTO `oc_zone` VALUES (1970, 128, 0x5a4241, 0x5a6f6d6261, 1);
INSERT INTO `oc_zone` VALUES (1971, 129, 0x4a4f, 0x4a6f686f72, 1);
INSERT INTO `oc_zone` VALUES (1972, 129, 0x4b45, 0x4b65646168, 1);
INSERT INTO `oc_zone` VALUES (1973, 129, 0x4b4c, 0x4b656c616e74616e, 1);
INSERT INTO `oc_zone` VALUES (1974, 129, 0x4c41, 0x4c616275616e, 1);
INSERT INTO `oc_zone` VALUES (1975, 129, 0x4d45, 0x4d656c616b61, 1);
INSERT INTO `oc_zone` VALUES (1976, 129, 0x4e53, 0x4e65676572692053656d62696c616e, 1);
INSERT INTO `oc_zone` VALUES (1977, 129, 0x5041, 0x506168616e67, 1);
INSERT INTO `oc_zone` VALUES (1978, 129, 0x5045, 0x506572616b, 1);
INSERT INTO `oc_zone` VALUES (1979, 129, 0x5052, 0x5065726c6973, 1);
INSERT INTO `oc_zone` VALUES (1980, 129, 0x5050, 0x50756c61752050696e616e67, 1);
INSERT INTO `oc_zone` VALUES (1981, 129, 0x5341, 0x5361626168, 1);
INSERT INTO `oc_zone` VALUES (1982, 129, 0x5352, 0x5361726177616b, 1);
INSERT INTO `oc_zone` VALUES (1983, 129, 0x5345, 0x53656c616e676f72, 1);
INSERT INTO `oc_zone` VALUES (1984, 129, 0x5445, 0x546572656e6767616e75, 1);
INSERT INTO `oc_zone` VALUES (1985, 129, 0x5750, 0x57696c617961682050657273656b757475616e, 1);
INSERT INTO `oc_zone` VALUES (1986, 130, 0x544855, 0x5468696c616468756e6d6174686920557468757275, 1);
INSERT INTO `oc_zone` VALUES (1987, 130, 0x544844, 0x5468696c616468756e6d61746869204468656b756e75, 1);
INSERT INTO `oc_zone` VALUES (1988, 130, 0x4d4c55, 0x4d696c616468756e6d6164756c7520557468757275, 1);
INSERT INTO `oc_zone` VALUES (1989, 130, 0x4d4c44, 0x4d696c616468756e6d6164756c75204468656b756e75, 1);
INSERT INTO `oc_zone` VALUES (1990, 130, 0x4d4155, 0x4d61616c686f736d6164756c7520557468757275, 1);
INSERT INTO `oc_zone` VALUES (1991, 130, 0x4d4144, 0x4d61616c686f736d6164756c75204468656b756e75, 1);
INSERT INTO `oc_zone` VALUES (1992, 130, 0x464141, 0x46616164686970706f6c6875, 1);
INSERT INTO `oc_zone` VALUES (1993, 130, 0x4d4141, 0x4d616c652041746f6c6c, 1);
INSERT INTO `oc_zone` VALUES (1994, 130, 0x414155, 0x4172692041746f6c6c20557468757275, 1);
INSERT INTO `oc_zone` VALUES (1995, 130, 0x414144, 0x4172692041746f6c6c204468656b6e75, 1);
INSERT INTO `oc_zone` VALUES (1996, 130, 0x464541, 0x46656c696468652041746f6c6c, 1);
INSERT INTO `oc_zone` VALUES (1997, 130, 0x4d5541, 0x4d756c616b752041746f6c6c, 1);
INSERT INTO `oc_zone` VALUES (1998, 130, 0x4e4155, 0x4e696c616e6468652041746f6c6c20557468757275, 1);
INSERT INTO `oc_zone` VALUES (1999, 130, 0x4e4144, 0x4e696c616e6468652041746f6c6c204468656b756e75, 1);
INSERT INTO `oc_zone` VALUES (2000, 130, 0x4b4c48, 0x4b6f6c68756d6164756c75, 1);
INSERT INTO `oc_zone` VALUES (2001, 130, 0x484448, 0x486164686468756e6d61746869, 1);
INSERT INTO `oc_zone` VALUES (2002, 130, 0x484155, 0x487576616468752041746f6c6c20557468757275, 1);
INSERT INTO `oc_zone` VALUES (2003, 130, 0x484144, 0x487576616468752041746f6c6c204468656b756e75, 1);
INSERT INTO `oc_zone` VALUES (2004, 130, 0x464d55, 0x467561204d756c616b75, 1);
INSERT INTO `oc_zone` VALUES (2005, 130, 0x414444, 0x41646475, 1);
INSERT INTO `oc_zone` VALUES (2006, 131, 0x4741, 0x47616f, 1);
INSERT INTO `oc_zone` VALUES (2007, 131, 0x4b59, 0x4b61796573, 1);
INSERT INTO `oc_zone` VALUES (2008, 131, 0x4b44, 0x4b6964616c, 1);
INSERT INTO `oc_zone` VALUES (2009, 131, 0x4b4c, 0x4b6f756c696b6f726f, 1);
INSERT INTO `oc_zone` VALUES (2010, 131, 0x4d50, 0x4d6f707469, 1);
INSERT INTO `oc_zone` VALUES (2011, 131, 0x5347, 0x5365676f75, 1);
INSERT INTO `oc_zone` VALUES (2012, 131, 0x534b, 0x53696b6173736f, 1);
INSERT INTO `oc_zone` VALUES (2013, 131, 0x5442, 0x546f6d626f7563746f75, 1);
INSERT INTO `oc_zone` VALUES (2014, 131, 0x4344, 0x42616d616b6f204361706974616c204469737472696374, 1);
INSERT INTO `oc_zone` VALUES (2015, 132, 0x415454, 0x417474617264, 1);
INSERT INTO `oc_zone` VALUES (2016, 132, 0x42414c, 0x42616c7a616e, 1);
INSERT INTO `oc_zone` VALUES (2017, 132, 0x424755, 0x4269726775, 1);
INSERT INTO `oc_zone` VALUES (2018, 132, 0x424b4b, 0x4269726b69726b617261, 1);
INSERT INTO `oc_zone` VALUES (2019, 132, 0x42525a, 0x4269727a656262756761, 1);
INSERT INTO `oc_zone` VALUES (2020, 132, 0x424f52, 0x426f726d6c61, 1);
INSERT INTO `oc_zone` VALUES (2021, 132, 0x44494e, 0x44696e676c69, 1);
INSERT INTO `oc_zone` VALUES (2022, 132, 0x464755, 0x4667757261, 1);
INSERT INTO `oc_zone` VALUES (2023, 132, 0x464c4f, 0x466c6f7269616e61, 1);
INSERT INTO `oc_zone` VALUES (2024, 132, 0x47444a, 0x4775646a61, 1);
INSERT INTO `oc_zone` VALUES (2025, 132, 0x475a52, 0x477a697261, 1);
INSERT INTO `oc_zone` VALUES (2026, 132, 0x475247, 0x476172677572, 1);
INSERT INTO `oc_zone` VALUES (2027, 132, 0x475851, 0x4761786171, 1);
INSERT INTO `oc_zone` VALUES (2028, 132, 0x484d52, 0x48616d72756e, 1);
INSERT INTO `oc_zone` VALUES (2029, 132, 0x494b4c, 0x496b6c696e, 1);
INSERT INTO `oc_zone` VALUES (2030, 132, 0x49534c, 0x49736c61, 1);
INSERT INTO `oc_zone` VALUES (2031, 132, 0x4b4c4b, 0x4b616c6b617261, 1);
INSERT INTO `oc_zone` VALUES (2032, 132, 0x4b524b, 0x4b69726b6f70, 1);
INSERT INTO `oc_zone` VALUES (2033, 132, 0x4c494a, 0x4c696a61, 1);
INSERT INTO `oc_zone` VALUES (2034, 132, 0x4c5551, 0x4c757161, 1);
INSERT INTO `oc_zone` VALUES (2035, 132, 0x4d5253, 0x4d61727361, 1);
INSERT INTO `oc_zone` VALUES (2036, 132, 0x4d4b4c, 0x4d61727361736b616c61, 1);
INSERT INTO `oc_zone` VALUES (2037, 132, 0x4d584c, 0x4d61727361786c6f6b6b, 1);
INSERT INTO `oc_zone` VALUES (2038, 132, 0x4d444e, 0x4d64696e61, 1);
INSERT INTO `oc_zone` VALUES (2039, 132, 0x4d454c, 0x4d656c6c696561, 1);
INSERT INTO `oc_zone` VALUES (2040, 132, 0x4d4752, 0x4d67617272, 1);
INSERT INTO `oc_zone` VALUES (2041, 132, 0x4d5354, 0x4d6f737461, 1);
INSERT INTO `oc_zone` VALUES (2042, 132, 0x4d5141, 0x4d7161626261, 1);
INSERT INTO `oc_zone` VALUES (2043, 132, 0x4d5349, 0x4d73696461, 1);
INSERT INTO `oc_zone` VALUES (2044, 132, 0x4d5446, 0x4d7461726661, 1);
INSERT INTO `oc_zone` VALUES (2045, 132, 0x4e4158, 0x4e6178786172, 1);
INSERT INTO `oc_zone` VALUES (2046, 132, 0x50414f, 0x50616f6c61, 1);
INSERT INTO `oc_zone` VALUES (2047, 132, 0x50454d, 0x50656d62726f6b65, 1);
INSERT INTO `oc_zone` VALUES (2048, 132, 0x504945, 0x5069657461, 1);
INSERT INTO `oc_zone` VALUES (2049, 132, 0x514f52, 0x516f726d69, 1);
INSERT INTO `oc_zone` VALUES (2050, 132, 0x515245, 0x5172656e6469, 1);
INSERT INTO `oc_zone` VALUES (2051, 132, 0x524142, 0x5261626174, 1);
INSERT INTO `oc_zone` VALUES (2052, 132, 0x534146, 0x53616669, 1);
INSERT INTO `oc_zone` VALUES (2053, 132, 0x534749, 0x53616e2047696c6a616e, 1);
INSERT INTO `oc_zone` VALUES (2054, 132, 0x534c55, 0x53616e7461204c7563696a61, 1);
INSERT INTO `oc_zone` VALUES (2055, 132, 0x535042, 0x53616e205061776c20696c2d4261686172, 1);
INSERT INTO `oc_zone` VALUES (2056, 132, 0x534757, 0x53616e204777616e6e, 1);
INSERT INTO `oc_zone` VALUES (2057, 132, 0x535645, 0x53616e74612056656e657261, 1);
INSERT INTO `oc_zone` VALUES (2058, 132, 0x534947, 0x5369676769657769, 1);
INSERT INTO `oc_zone` VALUES (2059, 132, 0x534c4d, 0x536c69656d61, 1);
INSERT INTO `oc_zone` VALUES (2060, 132, 0x535751, 0x537769657169, 1);
INSERT INTO `oc_zone` VALUES (2061, 132, 0x545842, 0x5461205862696578, 1);
INSERT INTO `oc_zone` VALUES (2062, 132, 0x545258, 0x5461727869656e, 1);
INSERT INTO `oc_zone` VALUES (2063, 132, 0x564c54, 0x56616c6c65747461, 1);
INSERT INTO `oc_zone` VALUES (2064, 132, 0x58474a, 0x5867616a7261, 1);
INSERT INTO `oc_zone` VALUES (2065, 132, 0x5a4252, 0x5a6162626172, 1);
INSERT INTO `oc_zone` VALUES (2066, 132, 0x5a4247, 0x5a6562627567, 1);
INSERT INTO `oc_zone` VALUES (2067, 132, 0x5a4a54, 0x5a656a74756e, 1);
INSERT INTO `oc_zone` VALUES (2068, 132, 0x5a5251, 0x5a757272696571, 1);
INSERT INTO `oc_zone` VALUES (2069, 132, 0x464e54, 0x466f6e74616e61, 1);
INSERT INTO `oc_zone` VALUES (2070, 132, 0x47484a, 0x4768616a6e7369656c656d, 1);
INSERT INTO `oc_zone` VALUES (2071, 132, 0x474852, 0x4768617262, 1);
INSERT INTO `oc_zone` VALUES (2072, 132, 0x474853, 0x476861737269, 1);
INSERT INTO `oc_zone` VALUES (2073, 132, 0x4b5243, 0x4b657263656d, 1);
INSERT INTO `oc_zone` VALUES (2074, 132, 0x4d554e, 0x4d756e786172, 1);
INSERT INTO `oc_zone` VALUES (2075, 132, 0x4e4144, 0x4e61647572, 1);
INSERT INTO `oc_zone` VALUES (2076, 132, 0x51414c, 0x51616c61, 1);
INSERT INTO `oc_zone` VALUES (2077, 132, 0x564943, 0x566963746f726961, 1);
INSERT INTO `oc_zone` VALUES (2078, 132, 0x534c41, 0x53616e204c617772656e7a, 1);
INSERT INTO `oc_zone` VALUES (2079, 132, 0x534e54, 0x53616e6e6174, 1);
INSERT INTO `oc_zone` VALUES (2080, 132, 0x5a4147, 0x5861677261, 1);
INSERT INTO `oc_zone` VALUES (2081, 132, 0x584557, 0x5865776b696a61, 1);
INSERT INTO `oc_zone` VALUES (2082, 132, 0x5a4542, 0x5a6562627567, 1);
INSERT INTO `oc_zone` VALUES (2083, 133, 0x414c47, 0x41696c696e67696e6165, 1);
INSERT INTO `oc_zone` VALUES (2084, 133, 0x414c4c, 0x41696c696e676c61706c6170, 1);
INSERT INTO `oc_zone` VALUES (2085, 133, 0x414c4b, 0x41696c756b, 1);
INSERT INTO `oc_zone` VALUES (2086, 133, 0x41524e, 0x41726e6f, 1);
INSERT INTO `oc_zone` VALUES (2087, 133, 0x415552, 0x417572, 1);
INSERT INTO `oc_zone` VALUES (2088, 133, 0x424b52, 0x42696b6172, 1);
INSERT INTO `oc_zone` VALUES (2089, 133, 0x424b4e, 0x42696b696e69, 1);
INSERT INTO `oc_zone` VALUES (2090, 133, 0x424b4b, 0x426f6b616b, 1);
INSERT INTO `oc_zone` VALUES (2091, 133, 0x45424e, 0x45626f6e, 1);
INSERT INTO `oc_zone` VALUES (2092, 133, 0x454e54, 0x456e65776574616b, 1);
INSERT INTO `oc_zone` VALUES (2093, 133, 0x454b42, 0x4572696b7562, 1);
INSERT INTO `oc_zone` VALUES (2094, 133, 0x4a4254, 0x4a61626174, 1);
INSERT INTO `oc_zone` VALUES (2095, 133, 0x4a4c54, 0x4a616c756974, 1);
INSERT INTO `oc_zone` VALUES (2096, 133, 0x4a454d, 0x4a656d6f, 1);
INSERT INTO `oc_zone` VALUES (2097, 133, 0x4b494c, 0x4b696c69, 1);
INSERT INTO `oc_zone` VALUES (2098, 133, 0x4b574a, 0x4b77616a616c65696e, 1);
INSERT INTO `oc_zone` VALUES (2099, 133, 0x4c4145, 0x4c6165, 1);
INSERT INTO `oc_zone` VALUES (2100, 133, 0x4c4942, 0x4c6962, 1);
INSERT INTO `oc_zone` VALUES (2101, 133, 0x4c4b50, 0x4c696b696570, 1);
INSERT INTO `oc_zone` VALUES (2102, 133, 0x4d4a52, 0x4d616a75726f, 1);
INSERT INTO `oc_zone` VALUES (2103, 133, 0x4d4c50, 0x4d616c6f656c6170, 1);
INSERT INTO `oc_zone` VALUES (2104, 133, 0x4d4a54, 0x4d656a6974, 1);
INSERT INTO `oc_zone` VALUES (2105, 133, 0x4d494c, 0x4d696c69, 1);
INSERT INTO `oc_zone` VALUES (2106, 133, 0x4e4d4b, 0x4e616d6f72696b, 1);
INSERT INTO `oc_zone` VALUES (2107, 133, 0x4e414d, 0x4e616d75, 1);
INSERT INTO `oc_zone` VALUES (2108, 133, 0x52474c, 0x526f6e67656c6170, 1);
INSERT INTO `oc_zone` VALUES (2109, 133, 0x52474b, 0x526f6e6772696b, 1);
INSERT INTO `oc_zone` VALUES (2110, 133, 0x544f4b, 0x546f6b65, 1);
INSERT INTO `oc_zone` VALUES (2111, 133, 0x554a41, 0x556a6165, 1);
INSERT INTO `oc_zone` VALUES (2112, 133, 0x554a4c, 0x556a656c616e67, 1);
INSERT INTO `oc_zone` VALUES (2113, 133, 0x55544b, 0x55746972696b, 1);
INSERT INTO `oc_zone` VALUES (2114, 133, 0x575448, 0x576f74686f, 1);
INSERT INTO `oc_zone` VALUES (2115, 133, 0x57544a, 0x576f746a65, 1);
INSERT INTO `oc_zone` VALUES (2116, 135, 0x4144, 0x4164726172, 1);
INSERT INTO `oc_zone` VALUES (2117, 135, 0x4153, 0x417373616261, 1);
INSERT INTO `oc_zone` VALUES (2118, 135, 0x4252, 0x4272616b6e61, 1);
INSERT INTO `oc_zone` VALUES (2119, 135, 0x444e, 0x44616b686c6574204e6f7561646869626f75, 1);
INSERT INTO `oc_zone` VALUES (2120, 135, 0x474f, 0x476f72676f6c, 1);
INSERT INTO `oc_zone` VALUES (2121, 135, 0x474d, 0x47756964696d616b61, 1);
INSERT INTO `oc_zone` VALUES (2122, 135, 0x4843, 0x486f6468204563682043686172677569, 1);
INSERT INTO `oc_zone` VALUES (2123, 135, 0x4847, 0x486f646820456c20476861726269, 1);
INSERT INTO `oc_zone` VALUES (2124, 135, 0x494e, 0x496e6368697269, 1);
INSERT INTO `oc_zone` VALUES (2125, 135, 0x5441, 0x546167616e74, 1);
INSERT INTO `oc_zone` VALUES (2126, 135, 0x545a, 0x5469726973205a656d6d6f7572, 1);
INSERT INTO `oc_zone` VALUES (2127, 135, 0x5452, 0x547261727a61, 1);
INSERT INTO `oc_zone` VALUES (2128, 135, 0x4e4f, 0x4e6f75616b63686f7474, 1);
INSERT INTO `oc_zone` VALUES (2129, 136, 0x4252, 0x426561752042617373696e2d526f73652048696c6c, 1);
INSERT INTO `oc_zone` VALUES (2130, 136, 0x4355, 0x4375726570697065, 1);
INSERT INTO `oc_zone` VALUES (2131, 136, 0x5055, 0x506f7274204c6f756973, 1);
INSERT INTO `oc_zone` VALUES (2132, 136, 0x5142, 0x51756174726520426f726e6573, 1);
INSERT INTO `oc_zone` VALUES (2133, 136, 0x5650, 0x5661636f61732d50686f656e6978, 1);
INSERT INTO `oc_zone` VALUES (2134, 136, 0x4147, 0x4167616c6567612049736c616e6473, 1);
INSERT INTO `oc_zone` VALUES (2135, 136, 0x4343, 0x4361726761646f7320436172616a6f732053686f616c7320285361696e74204272616e646f6e2049736c616e647329, 1);
INSERT INTO `oc_zone` VALUES (2136, 136, 0x524f, 0x526f64726967756573, 1);
INSERT INTO `oc_zone` VALUES (2137, 136, 0x424c, 0x426c61636b205269766572, 1);
INSERT INTO `oc_zone` VALUES (2138, 136, 0x464c, 0x466c616371, 1);
INSERT INTO `oc_zone` VALUES (2139, 136, 0x4750, 0x4772616e6420506f7274, 1);
INSERT INTO `oc_zone` VALUES (2140, 136, 0x4d4f, 0x4d6f6b61, 1);
INSERT INTO `oc_zone` VALUES (2141, 136, 0x5041, 0x50616d706c656d6f7573736573, 1);
INSERT INTO `oc_zone` VALUES (2142, 136, 0x5057, 0x506c61696e65732057696c68656d73, 1);
INSERT INTO `oc_zone` VALUES (2143, 136, 0x504c, 0x506f7274204c6f756973, 1);
INSERT INTO `oc_zone` VALUES (2144, 136, 0x5252, 0x526976696572652064752052656d70617274, 1);
INSERT INTO `oc_zone` VALUES (2145, 136, 0x5341, 0x536176616e6e65, 1);
INSERT INTO `oc_zone` VALUES (2146, 138, 0x424e, 0x42616a612043616c69666f726e6961204e6f727465, 1);
INSERT INTO `oc_zone` VALUES (2147, 138, 0x4253, 0x42616a612043616c69666f726e696120537572, 1);
INSERT INTO `oc_zone` VALUES (2148, 138, 0x4341, 0x43616d7065636865, 1);
INSERT INTO `oc_zone` VALUES (2149, 138, 0x4349, 0x43686961706173, 1);
INSERT INTO `oc_zone` VALUES (2150, 138, 0x4348, 0x436869687561687561, 1);
INSERT INTO `oc_zone` VALUES (2151, 138, 0x435a, 0x436f616875696c61206465205a617261676f7a61, 1);
INSERT INTO `oc_zone` VALUES (2152, 138, 0x434c, 0x436f6c696d61, 1);
INSERT INTO `oc_zone` VALUES (2153, 138, 0x4446, 0x446973747269746f204665646572616c, 1);
INSERT INTO `oc_zone` VALUES (2154, 138, 0x4455, 0x447572616e676f, 1);
INSERT INTO `oc_zone` VALUES (2155, 138, 0x4741, 0x4775616e616a7561746f, 1);
INSERT INTO `oc_zone` VALUES (2156, 138, 0x4745, 0x477565727265726f, 1);
INSERT INTO `oc_zone` VALUES (2157, 138, 0x4849, 0x486964616c676f, 1);
INSERT INTO `oc_zone` VALUES (2158, 138, 0x4a41, 0x4a616c6973636f, 1);
INSERT INTO `oc_zone` VALUES (2159, 138, 0x4d45, 0x4d657869636f, 1);
INSERT INTO `oc_zone` VALUES (2160, 138, 0x4d49, 0x4d6963686f6163616e206465204f63616d706f, 1);
INSERT INTO `oc_zone` VALUES (2161, 138, 0x4d4f, 0x4d6f72656c6f73, 1);
INSERT INTO `oc_zone` VALUES (2162, 138, 0x4e41, 0x4e617961726974, 1);
INSERT INTO `oc_zone` VALUES (2163, 138, 0x4e4c, 0x4e7565766f204c656f6e, 1);
INSERT INTO `oc_zone` VALUES (2164, 138, 0x4f41, 0x4f6178616361, 1);
INSERT INTO `oc_zone` VALUES (2165, 138, 0x5055, 0x507565626c61, 1);
INSERT INTO `oc_zone` VALUES (2166, 138, 0x5141, 0x51756572657461726f2064652041727465616761, 1);
INSERT INTO `oc_zone` VALUES (2167, 138, 0x5152, 0x5175696e74616e6120526f6f, 1);
INSERT INTO `oc_zone` VALUES (2168, 138, 0x5341, 0x53616e204c75697320506f746f7369, 1);
INSERT INTO `oc_zone` VALUES (2169, 138, 0x5349, 0x53696e616c6f61, 1);
INSERT INTO `oc_zone` VALUES (2170, 138, 0x534f, 0x536f6e6f7261, 1);
INSERT INTO `oc_zone` VALUES (2171, 138, 0x5442, 0x5461626173636f, 1);
INSERT INTO `oc_zone` VALUES (2172, 138, 0x544d, 0x54616d61756c69706173, 1);
INSERT INTO `oc_zone` VALUES (2173, 138, 0x544c, 0x546c617863616c61, 1);
INSERT INTO `oc_zone` VALUES (2174, 138, 0x5645, 0x566572616372757a2d4c6c617665, 1);
INSERT INTO `oc_zone` VALUES (2175, 138, 0x5955, 0x5975636174616e, 1);
INSERT INTO `oc_zone` VALUES (2176, 138, 0x5a41, 0x5a6163617465636173, 1);
INSERT INTO `oc_zone` VALUES (2177, 139, 0x43, 0x436875756b, 1);
INSERT INTO `oc_zone` VALUES (2178, 139, 0x4b, 0x4b6f73726165, 1);
INSERT INTO `oc_zone` VALUES (2179, 139, 0x50, 0x506f686e706569, 1);
INSERT INTO `oc_zone` VALUES (2180, 139, 0x59, 0x596170, 1);
INSERT INTO `oc_zone` VALUES (2181, 140, 0x4741, 0x47616761757a6961, 1);
INSERT INTO `oc_zone` VALUES (2182, 140, 0x4355, 0x43686973696e6175, 1);
INSERT INTO `oc_zone` VALUES (2183, 140, 0x4241, 0x42616c7469, 1);
INSERT INTO `oc_zone` VALUES (2184, 140, 0x4341, 0x436168756c, 1);
INSERT INTO `oc_zone` VALUES (2185, 140, 0x4544, 0x4564696e6574, 1);
INSERT INTO `oc_zone` VALUES (2186, 140, 0x4c41, 0x4c617075736e61, 1);
INSERT INTO `oc_zone` VALUES (2187, 140, 0x4f52, 0x4f72686569, 1);
INSERT INTO `oc_zone` VALUES (2188, 140, 0x534f, 0x536f726f6361, 1);
INSERT INTO `oc_zone` VALUES (2189, 140, 0x5449, 0x54696768696e61, 1);
INSERT INTO `oc_zone` VALUES (2190, 140, 0x554e, 0x556e6768656e69, 1);
INSERT INTO `oc_zone` VALUES (2191, 140, 0x534e, 0x5374e2809a6e6761204e69737472756c7569, 1);
INSERT INTO `oc_zone` VALUES (2192, 141, 0x4656, 0x466f6e74766965696c6c65, 1);
INSERT INTO `oc_zone` VALUES (2193, 141, 0x4c43, 0x4c6120436f6e64616d696e65, 1);
INSERT INTO `oc_zone` VALUES (2194, 141, 0x4d56, 0x4d6f6e61636f2d56696c6c65, 1);
INSERT INTO `oc_zone` VALUES (2195, 141, 0x4d43, 0x4d6f6e74652d4361726c6f, 1);
INSERT INTO `oc_zone` VALUES (2196, 142, 0x31, 0x556c616e626161746172, 1);
INSERT INTO `oc_zone` VALUES (2197, 142, 0x303335, 0x4f72686f6e, 1);
INSERT INTO `oc_zone` VALUES (2198, 142, 0x303337, 0x44617268616e2075756c, 1);
INSERT INTO `oc_zone` VALUES (2199, 142, 0x303339, 0x48656e746979, 1);
INSERT INTO `oc_zone` VALUES (2200, 142, 0x303431, 0x486f7673676f6c, 1);
INSERT INTO `oc_zone` VALUES (2201, 142, 0x303433, 0x486f7664, 1);
INSERT INTO `oc_zone` VALUES (2202, 142, 0x303436, 0x557673, 1);
INSERT INTO `oc_zone` VALUES (2203, 142, 0x303437, 0x546f76, 1);
INSERT INTO `oc_zone` VALUES (2204, 142, 0x303439, 0x53656c656e6765, 1);
INSERT INTO `oc_zone` VALUES (2205, 142, 0x303531, 0x537568626161746172, 1);
INSERT INTO `oc_zone` VALUES (2206, 142, 0x303533, 0x4f6d6e6f676f7669, 1);
INSERT INTO `oc_zone` VALUES (2207, 142, 0x303535, 0x4f766f7268616e676179, 1);
INSERT INTO `oc_zone` VALUES (2208, 142, 0x303537, 0x447a617668616e, 1);
INSERT INTO `oc_zone` VALUES (2209, 142, 0x303539, 0x44756e64676f764c, 1);
INSERT INTO `oc_zone` VALUES (2210, 142, 0x303631, 0x446f726e6f64, 1);
INSERT INTO `oc_zone` VALUES (2211, 142, 0x303633, 0x446f726e6f676f76, 1);
INSERT INTO `oc_zone` VALUES (2212, 142, 0x303634, 0x476f76692d53756d626572, 1);
INSERT INTO `oc_zone` VALUES (2213, 142, 0x303635, 0x476f76692d416c746179, 1);
INSERT INTO `oc_zone` VALUES (2214, 142, 0x303637, 0x42756c67616e, 1);
INSERT INTO `oc_zone` VALUES (2215, 142, 0x303639, 0x426179616e686f6e676f72, 1);
INSERT INTO `oc_zone` VALUES (2216, 142, 0x303731, 0x426179616e2d4f6c676979, 1);
INSERT INTO `oc_zone` VALUES (2217, 142, 0x303733, 0x417268616e676179, 1);
INSERT INTO `oc_zone` VALUES (2218, 143, 0x41, 0x5361696e7420416e74686f6e79, 1);
INSERT INTO `oc_zone` VALUES (2219, 143, 0x47, 0x5361696e742047656f72676573, 1);
INSERT INTO `oc_zone` VALUES (2220, 143, 0x50, 0x5361696e74205065746572, 1);
INSERT INTO `oc_zone` VALUES (2221, 144, 0x414744, 0x416761646972, 1);
INSERT INTO `oc_zone` VALUES (2222, 144, 0x484f43, 0x416c20486f6365696d61, 1);
INSERT INTO `oc_zone` VALUES (2223, 144, 0x415a49, 0x417a696c616c, 1);
INSERT INTO `oc_zone` VALUES (2224, 144, 0x424d45, 0x42656e69204d656c6c616c, 1);
INSERT INTO `oc_zone` VALUES (2225, 144, 0x42534c, 0x42656e20536c696d616e65, 1);
INSERT INTO `oc_zone` VALUES (2226, 144, 0x424c4d, 0x426f756c656d616e65, 1);
INSERT INTO `oc_zone` VALUES (2227, 144, 0x43424c, 0x43617361626c616e6361, 1);
INSERT INTO `oc_zone` VALUES (2228, 144, 0x434841, 0x4368616f75656e, 1);
INSERT INTO `oc_zone` VALUES (2229, 144, 0x454a41, 0x456c204a6164696461, 1);
INSERT INTO `oc_zone` VALUES (2230, 144, 0x454b53, 0x456c204b656c6161206465732053726167686e61, 1);
INSERT INTO `oc_zone` VALUES (2231, 144, 0x455241, 0x4572205261636869646961, 1);
INSERT INTO `oc_zone` VALUES (2232, 144, 0x455353, 0x457373616f75697261, 1);
INSERT INTO `oc_zone` VALUES (2233, 144, 0x464553, 0x466573, 1);
INSERT INTO `oc_zone` VALUES (2234, 144, 0x464947, 0x466967756967, 1);
INSERT INTO `oc_zone` VALUES (2235, 144, 0x474c4d, 0x4775656c6d696d, 1);
INSERT INTO `oc_zone` VALUES (2236, 144, 0x494652, 0x496672616e65, 1);
INSERT INTO `oc_zone` VALUES (2237, 144, 0x4b454e, 0x4b656e69747261, 1);
INSERT INTO `oc_zone` VALUES (2238, 144, 0x4b484d, 0x4b68656d6973736574, 1);
INSERT INTO `oc_zone` VALUES (2239, 144, 0x4b484e, 0x4b68656e69667261, 1);
INSERT INTO `oc_zone` VALUES (2240, 144, 0x4b484f, 0x4b686f757269626761, 1);
INSERT INTO `oc_zone` VALUES (2241, 144, 0x4c594e, 0x4c6161796f756e65, 1);
INSERT INTO `oc_zone` VALUES (2242, 144, 0x4c4152, 0x4c617261636865, 1);
INSERT INTO `oc_zone` VALUES (2243, 144, 0x4d524b, 0x4d617272616b656368, 1);
INSERT INTO `oc_zone` VALUES (2244, 144, 0x4d4b4e, 0x4d656b6e6573, 1);
INSERT INTO `oc_zone` VALUES (2245, 144, 0x4e4144, 0x4e61646f72, 1);
INSERT INTO `oc_zone` VALUES (2246, 144, 0x4f525a, 0x4f7561727a617a617465, 1);
INSERT INTO `oc_zone` VALUES (2247, 144, 0x4f554a, 0x4f756a6461, 1);
INSERT INTO `oc_zone` VALUES (2248, 144, 0x525341, 0x52616261742d53616c65, 1);
INSERT INTO `oc_zone` VALUES (2249, 144, 0x534146, 0x53616669, 1);
INSERT INTO `oc_zone` VALUES (2250, 144, 0x534554, 0x536574746174, 1);
INSERT INTO `oc_zone` VALUES (2251, 144, 0x534b41, 0x53696469204b6163656d, 1);
INSERT INTO `oc_zone` VALUES (2252, 144, 0x544752, 0x54616e67696572, 1);
INSERT INTO `oc_zone` VALUES (2253, 144, 0x54414e, 0x54616e2d54616e, 1);
INSERT INTO `oc_zone` VALUES (2254, 144, 0x54414f, 0x54616f756e617465, 1);
INSERT INTO `oc_zone` VALUES (2255, 144, 0x545244, 0x5461726f7564616e6e74, 1);
INSERT INTO `oc_zone` VALUES (2256, 144, 0x544154, 0x54617461, 1);
INSERT INTO `oc_zone` VALUES (2257, 144, 0x54415a, 0x54617a61, 1);
INSERT INTO `oc_zone` VALUES (2258, 144, 0x544554, 0x5465746f75616e, 1);
INSERT INTO `oc_zone` VALUES (2259, 144, 0x54495a, 0x54697a6e6974, 1);
INSERT INTO `oc_zone` VALUES (2260, 144, 0x41444b, 0x41642044616b686c61, 1);
INSERT INTO `oc_zone` VALUES (2261, 144, 0x424a44, 0x426f756a646f7572, 1);
INSERT INTO `oc_zone` VALUES (2262, 144, 0x45534d, 0x457320536d617261, 1);
INSERT INTO `oc_zone` VALUES (2263, 145, 0x4344, 0x4361626f2044656c6761646f, 1);
INSERT INTO `oc_zone` VALUES (2264, 145, 0x475a, 0x47617a61, 1);
INSERT INTO `oc_zone` VALUES (2265, 145, 0x494e, 0x496e68616d62616e65, 1);
INSERT INTO `oc_zone` VALUES (2266, 145, 0x4d4e, 0x4d616e696361, 1);
INSERT INTO `oc_zone` VALUES (2267, 145, 0x4d43, 0x4d617075746f20286369747929, 1);
INSERT INTO `oc_zone` VALUES (2268, 145, 0x4d50, 0x4d617075746f, 1);
INSERT INTO `oc_zone` VALUES (2269, 145, 0x4e41, 0x4e616d70756c61, 1);
INSERT INTO `oc_zone` VALUES (2270, 145, 0x4e49, 0x4e6961737361, 1);
INSERT INTO `oc_zone` VALUES (2271, 145, 0x534f, 0x536f66616c61, 1);
INSERT INTO `oc_zone` VALUES (2272, 145, 0x5445, 0x54657465, 1);
INSERT INTO `oc_zone` VALUES (2273, 145, 0x5a41, 0x5a616d62657a6961, 1);
INSERT INTO `oc_zone` VALUES (2274, 146, 0x4159, 0x41796579617277616479, 1);
INSERT INTO `oc_zone` VALUES (2275, 146, 0x4247, 0x4261676f, 1);
INSERT INTO `oc_zone` VALUES (2276, 146, 0x4d47, 0x4d6167776179, 1);
INSERT INTO `oc_zone` VALUES (2277, 146, 0x4d44, 0x4d616e64616c6179, 1);
INSERT INTO `oc_zone` VALUES (2278, 146, 0x5347, 0x53616761696e67, 1);
INSERT INTO `oc_zone` VALUES (2279, 146, 0x544e, 0x54616e696e746861727969, 1);
INSERT INTO `oc_zone` VALUES (2280, 146, 0x5947, 0x59616e676f6e, 1);
INSERT INTO `oc_zone` VALUES (2281, 146, 0x4348, 0x4368696e205374617465, 1);
INSERT INTO `oc_zone` VALUES (2282, 146, 0x4b43, 0x4b616368696e205374617465, 1);
INSERT INTO `oc_zone` VALUES (2283, 146, 0x4b48, 0x4b61796168205374617465, 1);
INSERT INTO `oc_zone` VALUES (2284, 146, 0x4b4e, 0x4b6179696e205374617465, 1);
INSERT INTO `oc_zone` VALUES (2285, 146, 0x4d4e, 0x4d6f6e205374617465, 1);
INSERT INTO `oc_zone` VALUES (2286, 146, 0x524b, 0x52616b68696e65205374617465, 1);
INSERT INTO `oc_zone` VALUES (2287, 146, 0x5348, 0x5368616e205374617465, 1);
INSERT INTO `oc_zone` VALUES (2288, 147, 0x4341, 0x43617072697669, 1);
INSERT INTO `oc_zone` VALUES (2289, 147, 0x4552, 0x45726f6e676f, 1);
INSERT INTO `oc_zone` VALUES (2290, 147, 0x4841, 0x486172646170, 1);
INSERT INTO `oc_zone` VALUES (2291, 147, 0x4b52, 0x4b61726173, 1);
INSERT INTO `oc_zone` VALUES (2292, 147, 0x4b56, 0x4b6176616e676f, 1);
INSERT INTO `oc_zone` VALUES (2293, 147, 0x4b48, 0x4b686f6d6173, 1);
INSERT INTO `oc_zone` VALUES (2294, 147, 0x4b55, 0x4b756e656e65, 1);
INSERT INTO `oc_zone` VALUES (2295, 147, 0x4f57, 0x4f68616e6777656e61, 1);
INSERT INTO `oc_zone` VALUES (2296, 147, 0x4f4b, 0x4f6d6168656b65, 1);
INSERT INTO `oc_zone` VALUES (2297, 147, 0x4f54, 0x4f6d7573617469, 1);
INSERT INTO `oc_zone` VALUES (2298, 147, 0x4f4e, 0x4f7368616e61, 1);
INSERT INTO `oc_zone` VALUES (2299, 147, 0x4f4f, 0x4f7368696b6f746f, 1);
INSERT INTO `oc_zone` VALUES (2300, 147, 0x4f4a, 0x4f746a6f7a6f6e646a757061, 1);
INSERT INTO `oc_zone` VALUES (2301, 148, 0x414f, 0x4169776f, 1);
INSERT INTO `oc_zone` VALUES (2302, 148, 0x4141, 0x416e61626172, 1);
INSERT INTO `oc_zone` VALUES (2303, 148, 0x4154, 0x416e6574616e, 1);
INSERT INTO `oc_zone` VALUES (2304, 148, 0x4149, 0x416e6962617265, 1);
INSERT INTO `oc_zone` VALUES (2305, 148, 0x4241, 0x4261697469, 1);
INSERT INTO `oc_zone` VALUES (2306, 148, 0x424f, 0x426f65, 1);
INSERT INTO `oc_zone` VALUES (2307, 148, 0x4255, 0x4275616461, 1);
INSERT INTO `oc_zone` VALUES (2308, 148, 0x4445, 0x44656e69676f6d6f6475, 1);
INSERT INTO `oc_zone` VALUES (2309, 148, 0x4557, 0x457761, 1);
INSERT INTO `oc_zone` VALUES (2310, 148, 0x494a, 0x496a7577, 1);
INSERT INTO `oc_zone` VALUES (2311, 148, 0x4d45, 0x4d656e656e67, 1);
INSERT INTO `oc_zone` VALUES (2312, 148, 0x4e49, 0x4e69626f6b, 1);
INSERT INTO `oc_zone` VALUES (2313, 148, 0x5541, 0x5561626f65, 1);
INSERT INTO `oc_zone` VALUES (2314, 148, 0x5941, 0x596172656e, 1);
INSERT INTO `oc_zone` VALUES (2315, 149, 0x4241, 0x4261676d617469, 1);
INSERT INTO `oc_zone` VALUES (2316, 149, 0x4248, 0x4268657269, 1);
INSERT INTO `oc_zone` VALUES (2317, 149, 0x4448, 0x44686177616c6167697269, 1);
INSERT INTO `oc_zone` VALUES (2318, 149, 0x4741, 0x47616e64616b69, 1);
INSERT INTO `oc_zone` VALUES (2319, 149, 0x4a41, 0x4a616e616b707572, 1);
INSERT INTO `oc_zone` VALUES (2320, 149, 0x4b41, 0x4b61726e616c69, 1);
INSERT INTO `oc_zone` VALUES (2321, 149, 0x4b4f, 0x4b6f7369, 1);
INSERT INTO `oc_zone` VALUES (2322, 149, 0x4c55, 0x4c756d62696e69, 1);
INSERT INTO `oc_zone` VALUES (2323, 149, 0x4d41, 0x4d6168616b616c69, 1);
INSERT INTO `oc_zone` VALUES (2324, 149, 0x4d45, 0x4d65636869, 1);
INSERT INTO `oc_zone` VALUES (2325, 149, 0x4e41, 0x4e61726179616e69, 1);
INSERT INTO `oc_zone` VALUES (2326, 149, 0x5241, 0x5261707469, 1);
INSERT INTO `oc_zone` VALUES (2327, 149, 0x5341, 0x53616761726d61746861, 1);
INSERT INTO `oc_zone` VALUES (2328, 149, 0x5345, 0x53657469, 1);
INSERT INTO `oc_zone` VALUES (2329, 150, 0x4452, 0x4472656e746865, 1);
INSERT INTO `oc_zone` VALUES (2330, 150, 0x464c, 0x466c65766f6c616e64, 1);
INSERT INTO `oc_zone` VALUES (2331, 150, 0x4652, 0x46726965736c616e64, 1);
INSERT INTO `oc_zone` VALUES (2332, 150, 0x4745, 0x47656c6465726c616e64, 1);
INSERT INTO `oc_zone` VALUES (2333, 150, 0x4752, 0x47726f6e696e67656e, 1);
INSERT INTO `oc_zone` VALUES (2334, 150, 0x4c49, 0x4c696d62757267, 1);
INSERT INTO `oc_zone` VALUES (2335, 150, 0x4e42, 0x4e6f6f72642042726162616e74, 1);
INSERT INTO `oc_zone` VALUES (2336, 150, 0x4e48, 0x4e6f6f726420486f6c6c616e64, 1);
INSERT INTO `oc_zone` VALUES (2337, 150, 0x4f56, 0x4f766572696a7373656c, 1);
INSERT INTO `oc_zone` VALUES (2338, 150, 0x5554, 0x55747265636874, 1);
INSERT INTO `oc_zone` VALUES (2339, 150, 0x5a45, 0x5a65656c616e64, 1);
INSERT INTO `oc_zone` VALUES (2340, 150, 0x5a48, 0x5a75696420486f6c6c616e64, 1);
INSERT INTO `oc_zone` VALUES (2341, 152, 0x4c, 0x496c6573204c6f7961757465, 1);
INSERT INTO `oc_zone` VALUES (2342, 152, 0x4e, 0x4e6f7264, 1);
INSERT INTO `oc_zone` VALUES (2343, 152, 0x53, 0x537564, 1);
INSERT INTO `oc_zone` VALUES (2344, 153, 0x41554b, 0x4175636b6c616e64, 1);
INSERT INTO `oc_zone` VALUES (2345, 153, 0x424f50, 0x426179206f6620506c656e7479, 1);
INSERT INTO `oc_zone` VALUES (2346, 153, 0x43414e, 0x43616e74657262757279, 1);
INSERT INTO `oc_zone` VALUES (2347, 153, 0x434f52, 0x436f726f6d616e64656c, 1);
INSERT INTO `oc_zone` VALUES (2348, 153, 0x474953, 0x476973626f726e65, 1);
INSERT INTO `oc_zone` VALUES (2349, 153, 0x46494f, 0x46696f72646c616e64, 1);
INSERT INTO `oc_zone` VALUES (2350, 153, 0x484b42, 0x4861776b65277320426179, 1);
INSERT INTO `oc_zone` VALUES (2351, 153, 0x4d4248, 0x4d61726c626f726f756768, 1);
INSERT INTO `oc_zone` VALUES (2352, 153, 0x4d5754, 0x4d616e61776174752d57616e67616e7569, 1);
INSERT INTO `oc_zone` VALUES (2353, 153, 0x4d434d, 0x4d7420436f6f6b2d4d61636b656e7a6965, 1);
INSERT INTO `oc_zone` VALUES (2354, 153, 0x4e534e, 0x4e656c736f6e, 1);
INSERT INTO `oc_zone` VALUES (2355, 153, 0x4e544c, 0x4e6f7274686c616e64, 1);
INSERT INTO `oc_zone` VALUES (2356, 153, 0x4f5441, 0x4f7461676f, 1);
INSERT INTO `oc_zone` VALUES (2357, 153, 0x53544c, 0x536f7574686c616e64, 1);
INSERT INTO `oc_zone` VALUES (2358, 153, 0x544b49, 0x546172616e616b69, 1);
INSERT INTO `oc_zone` VALUES (2359, 153, 0x57474e, 0x57656c6c696e67746f6e, 1);
INSERT INTO `oc_zone` VALUES (2360, 153, 0x574b4f, 0x5761696b61746f, 1);
INSERT INTO `oc_zone` VALUES (2361, 153, 0x574149, 0x5761697270726172617061, 1);
INSERT INTO `oc_zone` VALUES (2362, 153, 0x575443, 0x5765737420436f617374, 1);
INSERT INTO `oc_zone` VALUES (2363, 154, 0x414e, 0x41746c616e7469636f204e6f727465, 1);
INSERT INTO `oc_zone` VALUES (2364, 154, 0x4153, 0x41746c616e7469636f20537572, 1);
INSERT INTO `oc_zone` VALUES (2365, 154, 0x424f, 0x426f61636f, 1);
INSERT INTO `oc_zone` VALUES (2366, 154, 0x4341, 0x436172617a6f, 1);
INSERT INTO `oc_zone` VALUES (2367, 154, 0x4349, 0x4368696e616e64656761, 1);
INSERT INTO `oc_zone` VALUES (2368, 154, 0x434f, 0x43686f6e74616c6573, 1);
INSERT INTO `oc_zone` VALUES (2369, 154, 0x4553, 0x457374656c69, 1);
INSERT INTO `oc_zone` VALUES (2370, 154, 0x4752, 0x4772616e616461, 1);
INSERT INTO `oc_zone` VALUES (2371, 154, 0x4a49, 0x4a696e6f74656761, 1);
INSERT INTO `oc_zone` VALUES (2372, 154, 0x4c45, 0x4c656f6e, 1);
INSERT INTO `oc_zone` VALUES (2373, 154, 0x4d44, 0x4d616472697a, 1);
INSERT INTO `oc_zone` VALUES (2374, 154, 0x4d4e, 0x4d616e61677561, 1);
INSERT INTO `oc_zone` VALUES (2375, 154, 0x4d53, 0x4d6173617961, 1);
INSERT INTO `oc_zone` VALUES (2376, 154, 0x4d54, 0x4d61746167616c7061, 1);
INSERT INTO `oc_zone` VALUES (2377, 154, 0x4e53, 0x4e7565766f205365676f766961, 1);
INSERT INTO `oc_zone` VALUES (2378, 154, 0x5253, 0x52696f2053616e204a75616e, 1);
INSERT INTO `oc_zone` VALUES (2379, 154, 0x5249, 0x5269766173, 1);
INSERT INTO `oc_zone` VALUES (2380, 155, 0x4147, 0x41676164657a, 1);
INSERT INTO `oc_zone` VALUES (2381, 155, 0x4446, 0x4469666661, 1);
INSERT INTO `oc_zone` VALUES (2382, 155, 0x4453, 0x446f73736f, 1);
INSERT INTO `oc_zone` VALUES (2383, 155, 0x4d41, 0x4d6172616469, 1);
INSERT INTO `oc_zone` VALUES (2384, 155, 0x4e4d, 0x4e69616d6579, 1);
INSERT INTO `oc_zone` VALUES (2385, 155, 0x5448, 0x5461686f7561, 1);
INSERT INTO `oc_zone` VALUES (2386, 155, 0x544c, 0x54696c6c6162657269, 1);
INSERT INTO `oc_zone` VALUES (2387, 155, 0x5a44, 0x5a696e646572, 1);
INSERT INTO `oc_zone` VALUES (2388, 156, 0x4142, 0x41626961, 1);
INSERT INTO `oc_zone` VALUES (2389, 156, 0x4354, 0x4162756a61204665646572616c204361706974616c205465727269746f7279, 1);
INSERT INTO `oc_zone` VALUES (2390, 156, 0x4144, 0x4164616d617761, 1);
INSERT INTO `oc_zone` VALUES (2391, 156, 0x414b, 0x416b77612049626f6d, 1);
INSERT INTO `oc_zone` VALUES (2392, 156, 0x414e, 0x416e616d627261, 1);
INSERT INTO `oc_zone` VALUES (2393, 156, 0x4243, 0x426175636869, 1);
INSERT INTO `oc_zone` VALUES (2394, 156, 0x4259, 0x426179656c7361, 1);
INSERT INTO `oc_zone` VALUES (2395, 156, 0x424e, 0x42656e7565, 1);
INSERT INTO `oc_zone` VALUES (2396, 156, 0x424f, 0x426f726e6f, 1);
INSERT INTO `oc_zone` VALUES (2397, 156, 0x4352, 0x43726f7373205269766572, 1);
INSERT INTO `oc_zone` VALUES (2398, 156, 0x4445, 0x44656c7461, 1);
INSERT INTO `oc_zone` VALUES (2399, 156, 0x4542, 0x45626f6e7969, 1);
INSERT INTO `oc_zone` VALUES (2400, 156, 0x4544, 0x45646f, 1);
INSERT INTO `oc_zone` VALUES (2401, 156, 0x454b, 0x456b697469, 1);
INSERT INTO `oc_zone` VALUES (2402, 156, 0x454e, 0x456e756775, 1);
INSERT INTO `oc_zone` VALUES (2403, 156, 0x474f, 0x476f6d6265, 1);
INSERT INTO `oc_zone` VALUES (2404, 156, 0x494d, 0x496d6f, 1);
INSERT INTO `oc_zone` VALUES (2405, 156, 0x4a49, 0x4a6967617761, 1);
INSERT INTO `oc_zone` VALUES (2406, 156, 0x4b44, 0x4b6164756e61, 1);
INSERT INTO `oc_zone` VALUES (2407, 156, 0x4b4e, 0x4b616e6f, 1);
INSERT INTO `oc_zone` VALUES (2408, 156, 0x4b54, 0x4b617473696e61, 1);
INSERT INTO `oc_zone` VALUES (2409, 156, 0x4b45, 0x4b65626269, 1);
INSERT INTO `oc_zone` VALUES (2410, 156, 0x4b4f, 0x4b6f6769, 1);
INSERT INTO `oc_zone` VALUES (2411, 156, 0x4b57, 0x4b77617261, 1);
INSERT INTO `oc_zone` VALUES (2412, 156, 0x4c41, 0x4c61676f73, 1);
INSERT INTO `oc_zone` VALUES (2413, 156, 0x4e41, 0x4e6173736172617761, 1);
INSERT INTO `oc_zone` VALUES (2414, 156, 0x4e49, 0x4e69676572, 1);
INSERT INTO `oc_zone` VALUES (2415, 156, 0x4f47, 0x4f67756e, 1);
INSERT INTO `oc_zone` VALUES (2416, 156, 0x4f4e47, 0x4f6e646f, 1);
INSERT INTO `oc_zone` VALUES (2417, 156, 0x4f53, 0x4f73756e, 1);
INSERT INTO `oc_zone` VALUES (2418, 156, 0x4f59, 0x4f796f, 1);
INSERT INTO `oc_zone` VALUES (2419, 156, 0x504c, 0x506c6174656175, 1);
INSERT INTO `oc_zone` VALUES (2420, 156, 0x5249, 0x526976657273, 1);
INSERT INTO `oc_zone` VALUES (2421, 156, 0x534f, 0x536f6b6f746f, 1);
INSERT INTO `oc_zone` VALUES (2422, 156, 0x5441, 0x546172616261, 1);
INSERT INTO `oc_zone` VALUES (2423, 156, 0x594f, 0x596f6265, 1);
INSERT INTO `oc_zone` VALUES (2424, 156, 0x5a41, 0x5a616d66617261, 1);
INSERT INTO `oc_zone` VALUES (2425, 159, 0x4e, 0x4e6f72746865726e2049736c616e6473, 1);
INSERT INTO `oc_zone` VALUES (2426, 159, 0x52, 0x526f7461, 1);
INSERT INTO `oc_zone` VALUES (2427, 159, 0x53, 0x53616970616e, 1);
INSERT INTO `oc_zone` VALUES (2428, 159, 0x54, 0x54696e69616e, 1);
INSERT INTO `oc_zone` VALUES (2429, 160, 0x414b, 0x416b657273687573, 1);
INSERT INTO `oc_zone` VALUES (2430, 160, 0x4141, 0x417573742d4167646572, 1);
INSERT INTO `oc_zone` VALUES (2431, 160, 0x4255, 0x4275736b65727564, 1);
INSERT INTO `oc_zone` VALUES (2432, 160, 0x464d, 0x46696e6e6d61726b, 1);
INSERT INTO `oc_zone` VALUES (2433, 160, 0x484d, 0x4865646d61726b, 1);
INSERT INTO `oc_zone` VALUES (2434, 160, 0x484c, 0x486f7264616c616e64, 1);
INSERT INTO `oc_zone` VALUES (2435, 160, 0x4d52, 0x4d6f7265206f6720526f6d64616c, 1);
INSERT INTO `oc_zone` VALUES (2436, 160, 0x4e54, 0x4e6f72642d54726f6e64656c6167, 1);
INSERT INTO `oc_zone` VALUES (2437, 160, 0x4e4c, 0x4e6f72646c616e64, 1);
INSERT INTO `oc_zone` VALUES (2438, 160, 0x4f46, 0x4f7374666f6c64, 1);
INSERT INTO `oc_zone` VALUES (2439, 160, 0x4f50, 0x4f70706c616e64, 1);
INSERT INTO `oc_zone` VALUES (2440, 160, 0x4f4c, 0x4f736c6f, 1);
INSERT INTO `oc_zone` VALUES (2441, 160, 0x524c, 0x526f67616c616e64, 1);
INSERT INTO `oc_zone` VALUES (2442, 160, 0x5354, 0x536f722d54726f6e64656c6167, 1);
INSERT INTO `oc_zone` VALUES (2443, 160, 0x534a, 0x536f676e206f6720466a6f7264616e65, 1);
INSERT INTO `oc_zone` VALUES (2444, 160, 0x5356, 0x5376616c62617264, 1);
INSERT INTO `oc_zone` VALUES (2445, 160, 0x544d, 0x54656c656d61726b, 1);
INSERT INTO `oc_zone` VALUES (2446, 160, 0x5452, 0x54726f6d73, 1);
INSERT INTO `oc_zone` VALUES (2447, 160, 0x5641, 0x566573742d4167646572, 1);
INSERT INTO `oc_zone` VALUES (2448, 160, 0x5646, 0x56657374666f6c64, 1);
INSERT INTO `oc_zone` VALUES (2449, 161, 0x4441, 0x41642044616b68696c69796168, 1);
INSERT INTO `oc_zone` VALUES (2450, 161, 0x4241, 0x416c20426174696e6168, 1);
INSERT INTO `oc_zone` VALUES (2451, 161, 0x5755, 0x416c205775737461, 1);
INSERT INTO `oc_zone` VALUES (2452, 161, 0x5348, 0x41736820536861727169796168, 1);
INSERT INTO `oc_zone` VALUES (2453, 161, 0x5a41, 0x417a205a616869726168, 1);
INSERT INTO `oc_zone` VALUES (2454, 161, 0x4d41, 0x4d6173716174, 1);
INSERT INTO `oc_zone` VALUES (2455, 161, 0x4d55, 0x4d7573616e64616d, 1);
INSERT INTO `oc_zone` VALUES (2456, 161, 0x5a55, 0x5a75666172, 1);
INSERT INTO `oc_zone` VALUES (2457, 162, 0x42, 0x42616c6f6368697374616e, 1);
INSERT INTO `oc_zone` VALUES (2458, 162, 0x54, 0x4665646572616c6c792041646d696e697374657265642054726962616c204172656173, 1);
INSERT INTO `oc_zone` VALUES (2459, 162, 0x49, 0x49736c616d61626164204361706974616c205465727269746f7279, 1);
INSERT INTO `oc_zone` VALUES (2460, 162, 0x4e, 0x4e6f7274682d576573742046726f6e74696572, 1);
INSERT INTO `oc_zone` VALUES (2461, 162, 0x50, 0x50756e6a6162, 1);
INSERT INTO `oc_zone` VALUES (2462, 162, 0x53, 0x53696e6468, 1);
INSERT INTO `oc_zone` VALUES (2463, 163, 0x414d, 0x41696d656c69696b, 1);
INSERT INTO `oc_zone` VALUES (2464, 163, 0x4152, 0x4169726169, 1);
INSERT INTO `oc_zone` VALUES (2465, 163, 0x414e, 0x416e67617572, 1);
INSERT INTO `oc_zone` VALUES (2466, 163, 0x4841, 0x4861746f686f626569, 1);
INSERT INTO `oc_zone` VALUES (2467, 163, 0x4b41, 0x4b6179616e67656c, 1);
INSERT INTO `oc_zone` VALUES (2468, 163, 0x4b4f, 0x4b6f726f72, 1);
INSERT INTO `oc_zone` VALUES (2469, 163, 0x4d45, 0x4d656c656b656f6b, 1);
INSERT INTO `oc_zone` VALUES (2470, 163, 0x4e41, 0x4e67617261617264, 1);
INSERT INTO `oc_zone` VALUES (2471, 163, 0x4e47, 0x4e6761726368656c6f6e67, 1);
INSERT INTO `oc_zone` VALUES (2472, 163, 0x4e44, 0x4e676172646d6175, 1);
INSERT INTO `oc_zone` VALUES (2473, 163, 0x4e54, 0x4e67617470616e67, 1);
INSERT INTO `oc_zone` VALUES (2474, 163, 0x4e43, 0x4e67636865736172, 1);
INSERT INTO `oc_zone` VALUES (2475, 163, 0x4e52, 0x4e676572656d6c656e677569, 1);
INSERT INTO `oc_zone` VALUES (2476, 163, 0x4e57, 0x4e676977616c, 1);
INSERT INTO `oc_zone` VALUES (2477, 163, 0x5045, 0x50656c656c6975, 1);
INSERT INTO `oc_zone` VALUES (2478, 163, 0x534f, 0x536f6e736f726f6c, 1);
INSERT INTO `oc_zone` VALUES (2479, 164, 0x4254, 0x426f6361732064656c20546f726f, 1);
INSERT INTO `oc_zone` VALUES (2480, 164, 0x4348, 0x4368697269717569, 1);
INSERT INTO `oc_zone` VALUES (2481, 164, 0x4343, 0x436f636c65, 1);
INSERT INTO `oc_zone` VALUES (2482, 164, 0x434c, 0x436f6c6f6e, 1);
INSERT INTO `oc_zone` VALUES (2483, 164, 0x4441, 0x44617269656e, 1);
INSERT INTO `oc_zone` VALUES (2484, 164, 0x4845, 0x48657272657261, 1);
INSERT INTO `oc_zone` VALUES (2485, 164, 0x4c53, 0x4c6f732053616e746f73, 1);
INSERT INTO `oc_zone` VALUES (2486, 164, 0x5041, 0x50616e616d61, 1);
INSERT INTO `oc_zone` VALUES (2487, 164, 0x5342, 0x53616e20426c6173, 1);
INSERT INTO `oc_zone` VALUES (2488, 164, 0x5647, 0x5665726167756173, 1);
INSERT INTO `oc_zone` VALUES (2489, 165, 0x4256, 0x426f756761696e76696c6c65, 1);
INSERT INTO `oc_zone` VALUES (2490, 165, 0x4345, 0x43656e7472616c, 1);
INSERT INTO `oc_zone` VALUES (2491, 165, 0x4348, 0x4368696d6275, 1);
INSERT INTO `oc_zone` VALUES (2492, 165, 0x4548, 0x4561737465726e20486967686c616e6473, 1);
INSERT INTO `oc_zone` VALUES (2493, 165, 0x4542, 0x45617374204e6577204272697461696e, 1);
INSERT INTO `oc_zone` VALUES (2494, 165, 0x4553, 0x4561737420536570696b, 1);
INSERT INTO `oc_zone` VALUES (2495, 165, 0x454e, 0x456e6761, 1);
INSERT INTO `oc_zone` VALUES (2496, 165, 0x4755, 0x47756c66, 1);
INSERT INTO `oc_zone` VALUES (2497, 165, 0x4d44, 0x4d6164616e67, 1);
INSERT INTO `oc_zone` VALUES (2498, 165, 0x4d4e, 0x4d616e7573, 1);
INSERT INTO `oc_zone` VALUES (2499, 165, 0x4d42, 0x4d696c6e6520426179, 1);
INSERT INTO `oc_zone` VALUES (2500, 165, 0x4d52, 0x4d6f726f6265, 1);
INSERT INTO `oc_zone` VALUES (2501, 165, 0x4e43, 0x4e6174696f6e616c204361706974616c, 1);
INSERT INTO `oc_zone` VALUES (2502, 165, 0x4e49, 0x4e6577204972656c616e64, 1);
INSERT INTO `oc_zone` VALUES (2503, 165, 0x4e4f, 0x4e6f72746865726e, 1);
INSERT INTO `oc_zone` VALUES (2504, 165, 0x5341, 0x53616e6461756e, 1);
INSERT INTO `oc_zone` VALUES (2505, 165, 0x5348, 0x536f75746865726e20486967686c616e6473, 1);
INSERT INTO `oc_zone` VALUES (2506, 165, 0x5745, 0x5765737465726e, 1);
INSERT INTO `oc_zone` VALUES (2507, 165, 0x5748, 0x5765737465726e20486967686c616e6473, 1);
INSERT INTO `oc_zone` VALUES (2508, 165, 0x5742, 0x57657374204e6577204272697461696e, 1);
INSERT INTO `oc_zone` VALUES (2509, 166, 0x4147, 0x416c746f205061726167756179, 1);
INSERT INTO `oc_zone` VALUES (2510, 166, 0x414e, 0x416c746f20506172616e61, 1);
INSERT INTO `oc_zone` VALUES (2511, 166, 0x414d, 0x416d616d626179, 1);
INSERT INTO `oc_zone` VALUES (2512, 166, 0x4153, 0x4173756e63696f6e, 1);
INSERT INTO `oc_zone` VALUES (2513, 166, 0x424f, 0x426f717565726f6e, 1);
INSERT INTO `oc_zone` VALUES (2514, 166, 0x4347, 0x4361616775617a75, 1);
INSERT INTO `oc_zone` VALUES (2515, 166, 0x435a, 0x4361617a617061, 1);
INSERT INTO `oc_zone` VALUES (2516, 166, 0x434e, 0x43616e696e64657975, 1);
INSERT INTO `oc_zone` VALUES (2517, 166, 0x4345, 0x43656e7472616c, 1);
INSERT INTO `oc_zone` VALUES (2518, 166, 0x4343, 0x436f6e63657063696f6e, 1);
INSERT INTO `oc_zone` VALUES (2519, 166, 0x4344, 0x436f7264696c6c657261, 1);
INSERT INTO `oc_zone` VALUES (2520, 166, 0x4755, 0x477561697261, 1);
INSERT INTO `oc_zone` VALUES (2521, 166, 0x4954, 0x497461707561, 1);
INSERT INTO `oc_zone` VALUES (2522, 166, 0x4d49, 0x4d6973696f6e6573, 1);
INSERT INTO `oc_zone` VALUES (2523, 166, 0x4e45, 0x4e65656d62756375, 1);
INSERT INTO `oc_zone` VALUES (2524, 166, 0x5041, 0x506172616775617269, 1);
INSERT INTO `oc_zone` VALUES (2525, 166, 0x5048, 0x507265736964656e7465204861796573, 1);
INSERT INTO `oc_zone` VALUES (2526, 166, 0x5350, 0x53616e20506564726f, 1);
INSERT INTO `oc_zone` VALUES (2527, 167, 0x414d, 0x416d617a6f6e6173, 1);
INSERT INTO `oc_zone` VALUES (2528, 167, 0x414e, 0x416e63617368, 1);
INSERT INTO `oc_zone` VALUES (2529, 167, 0x4150, 0x41707572696d6163, 1);
INSERT INTO `oc_zone` VALUES (2530, 167, 0x4152, 0x4172657175697061, 1);
INSERT INTO `oc_zone` VALUES (2531, 167, 0x4159, 0x417961637563686f, 1);
INSERT INTO `oc_zone` VALUES (2532, 167, 0x434a, 0x43616a616d61726361, 1);
INSERT INTO `oc_zone` VALUES (2533, 167, 0x434c, 0x43616c6c616f, 1);
INSERT INTO `oc_zone` VALUES (2534, 167, 0x4355, 0x437573636f, 1);
INSERT INTO `oc_zone` VALUES (2535, 167, 0x4856, 0x4875616e636176656c696361, 1);
INSERT INTO `oc_zone` VALUES (2536, 167, 0x484f, 0x4875616e75636f, 1);
INSERT INTO `oc_zone` VALUES (2537, 167, 0x4943, 0x496361, 1);
INSERT INTO `oc_zone` VALUES (2538, 167, 0x4a55, 0x4a756e696e, 1);
INSERT INTO `oc_zone` VALUES (2539, 167, 0x4c44, 0x4c61204c69626572746164, 1);
INSERT INTO `oc_zone` VALUES (2540, 167, 0x4c59, 0x4c616d62617965717565, 1);
INSERT INTO `oc_zone` VALUES (2541, 167, 0x4c49, 0x4c696d61, 1);
INSERT INTO `oc_zone` VALUES (2542, 167, 0x4c4f, 0x4c6f7265746f, 1);
INSERT INTO `oc_zone` VALUES (2543, 167, 0x4d44, 0x4d616472652064652044696f73, 1);
INSERT INTO `oc_zone` VALUES (2544, 167, 0x4d4f, 0x4d6f717565677561, 1);
INSERT INTO `oc_zone` VALUES (2545, 167, 0x5041, 0x506173636f, 1);
INSERT INTO `oc_zone` VALUES (2546, 167, 0x5049, 0x5069757261, 1);
INSERT INTO `oc_zone` VALUES (2547, 167, 0x5055, 0x50756e6f, 1);
INSERT INTO `oc_zone` VALUES (2548, 167, 0x534d, 0x53616e204d617274696e, 1);
INSERT INTO `oc_zone` VALUES (2549, 167, 0x5441, 0x5461636e61, 1);
INSERT INTO `oc_zone` VALUES (2550, 167, 0x5455, 0x54756d626573, 1);
INSERT INTO `oc_zone` VALUES (2551, 167, 0x5543, 0x55636179616c69, 1);
INSERT INTO `oc_zone` VALUES (2552, 168, 0x414252, 0x41627261, 1);
INSERT INTO `oc_zone` VALUES (2553, 168, 0x414e4f, 0x41677573616e2064656c204e6f727465, 1);
INSERT INTO `oc_zone` VALUES (2554, 168, 0x415355, 0x41677573616e2064656c20537572, 1);
INSERT INTO `oc_zone` VALUES (2555, 168, 0x414b4c, 0x416b6c616e, 1);
INSERT INTO `oc_zone` VALUES (2556, 168, 0x414c42, 0x416c626179, 1);
INSERT INTO `oc_zone` VALUES (2557, 168, 0x414e54, 0x416e7469717565, 1);
INSERT INTO `oc_zone` VALUES (2558, 168, 0x415059, 0x41706179616f, 1);
INSERT INTO `oc_zone` VALUES (2559, 168, 0x415552, 0x4175726f7261, 1);
INSERT INTO `oc_zone` VALUES (2560, 168, 0x424153, 0x426173696c616e, 1);
INSERT INTO `oc_zone` VALUES (2561, 168, 0x425441, 0x42617461616e, 1);
INSERT INTO `oc_zone` VALUES (2562, 168, 0x425445, 0x426174616e6573, 1);
INSERT INTO `oc_zone` VALUES (2563, 168, 0x425447, 0x426174616e676173, 1);
INSERT INTO `oc_zone` VALUES (2564, 168, 0x424c52, 0x42696c6972616e, 1);
INSERT INTO `oc_zone` VALUES (2565, 168, 0x42454e, 0x42656e67756574, 1);
INSERT INTO `oc_zone` VALUES (2566, 168, 0x424f4c, 0x426f686f6c, 1);
INSERT INTO `oc_zone` VALUES (2567, 168, 0x42554b, 0x42756b69646e6f6e, 1);
INSERT INTO `oc_zone` VALUES (2568, 168, 0x42554c, 0x42756c6163616e, 1);
INSERT INTO `oc_zone` VALUES (2569, 168, 0x434147, 0x4361676179616e, 1);
INSERT INTO `oc_zone` VALUES (2570, 168, 0x434e4f, 0x43616d6172696e6573204e6f727465, 1);
INSERT INTO `oc_zone` VALUES (2571, 168, 0x435355, 0x43616d6172696e657320537572, 1);
INSERT INTO `oc_zone` VALUES (2572, 168, 0x43414d, 0x43616d696775696e, 1);
INSERT INTO `oc_zone` VALUES (2573, 168, 0x434150, 0x436170697a, 1);
INSERT INTO `oc_zone` VALUES (2574, 168, 0x434154, 0x436174616e6475616e6573, 1);
INSERT INTO `oc_zone` VALUES (2575, 168, 0x434156, 0x436176697465, 1);
INSERT INTO `oc_zone` VALUES (2576, 168, 0x434542, 0x43656275, 1);
INSERT INTO `oc_zone` VALUES (2577, 168, 0x434d50, 0x436f6d706f7374656c61, 1);
INSERT INTO `oc_zone` VALUES (2578, 168, 0x444e4f, 0x446176616f2064656c204e6f727465, 1);
INSERT INTO `oc_zone` VALUES (2579, 168, 0x445355, 0x446176616f2064656c20537572, 1);
INSERT INTO `oc_zone` VALUES (2580, 168, 0x444f52, 0x446176616f204f7269656e74616c, 1);
INSERT INTO `oc_zone` VALUES (2581, 168, 0x455341, 0x4561737465726e2053616d6172, 1);
INSERT INTO `oc_zone` VALUES (2582, 168, 0x475549, 0x4775696d61726173, 1);
INSERT INTO `oc_zone` VALUES (2583, 168, 0x494655, 0x49667567616f, 1);
INSERT INTO `oc_zone` VALUES (2584, 168, 0x494e4f, 0x496c6f636f73204e6f727465, 1);
INSERT INTO `oc_zone` VALUES (2585, 168, 0x495355, 0x496c6f636f7320537572, 1);
INSERT INTO `oc_zone` VALUES (2586, 168, 0x494c4f, 0x496c6f696c6f, 1);
INSERT INTO `oc_zone` VALUES (2587, 168, 0x495341, 0x49736162656c61, 1);
INSERT INTO `oc_zone` VALUES (2588, 168, 0x4b414c, 0x4b616c696e6761, 1);
INSERT INTO `oc_zone` VALUES (2589, 168, 0x4c4147, 0x4c6167756e61, 1);
INSERT INTO `oc_zone` VALUES (2590, 168, 0x4c4e4f, 0x4c616e616f2064656c204e6f727465, 1);
INSERT INTO `oc_zone` VALUES (2591, 168, 0x4c5355, 0x4c616e616f2064656c20537572, 1);
INSERT INTO `oc_zone` VALUES (2592, 168, 0x554e49, 0x4c6120556e696f6e, 1);
INSERT INTO `oc_zone` VALUES (2593, 168, 0x4c4559, 0x4c65797465, 1);
INSERT INTO `oc_zone` VALUES (2594, 168, 0x4d4147, 0x4d616775696e64616e616f, 1);
INSERT INTO `oc_zone` VALUES (2595, 168, 0x4d524e, 0x4d6172696e6475717565, 1);
INSERT INTO `oc_zone` VALUES (2596, 168, 0x4d5342, 0x4d617362617465, 1);
INSERT INTO `oc_zone` VALUES (2597, 168, 0x4d4943, 0x4d696e646f726f204f63636964656e74616c, 1);
INSERT INTO `oc_zone` VALUES (2598, 168, 0x4d4952, 0x4d696e646f726f204f7269656e74616c, 1);
INSERT INTO `oc_zone` VALUES (2599, 168, 0x4d5343, 0x4d6973616d6973204f63636964656e74616c, 1);
INSERT INTO `oc_zone` VALUES (2600, 168, 0x4d4f52, 0x4d6973616d6973204f7269656e74616c, 1);
INSERT INTO `oc_zone` VALUES (2601, 168, 0x4d4f50, 0x4d6f756e7461696e, 1);
INSERT INTO `oc_zone` VALUES (2602, 168, 0x4e4f43, 0x4e6567726f73204f63636964656e74616c, 1);
INSERT INTO `oc_zone` VALUES (2603, 168, 0x4e4f52, 0x4e6567726f73204f7269656e74616c, 1);
INSERT INTO `oc_zone` VALUES (2604, 168, 0x4e4354, 0x4e6f72746820436f74616261746f, 1);
INSERT INTO `oc_zone` VALUES (2605, 168, 0x4e534d, 0x4e6f72746865726e2053616d6172, 1);
INSERT INTO `oc_zone` VALUES (2606, 168, 0x4e4543, 0x4e75657661204563696a61, 1);
INSERT INTO `oc_zone` VALUES (2607, 168, 0x4e565a, 0x4e756576612056697a63617961, 1);
INSERT INTO `oc_zone` VALUES (2608, 168, 0x504c57, 0x50616c6177616e, 1);
INSERT INTO `oc_zone` VALUES (2609, 168, 0x504d50, 0x50616d70616e6761, 1);
INSERT INTO `oc_zone` VALUES (2610, 168, 0x504e47, 0x50616e676173696e616e, 1);
INSERT INTO `oc_zone` VALUES (2611, 168, 0x515a4e, 0x5175657a6f6e, 1);
INSERT INTO `oc_zone` VALUES (2612, 168, 0x51524e, 0x51756972696e6f, 1);
INSERT INTO `oc_zone` VALUES (2613, 168, 0x52495a, 0x52697a616c, 1);
INSERT INTO `oc_zone` VALUES (2614, 168, 0x524f4d, 0x526f6d626c6f6e, 1);
INSERT INTO `oc_zone` VALUES (2615, 168, 0x534d52, 0x53616d6172, 1);
INSERT INTO `oc_zone` VALUES (2616, 168, 0x535247, 0x536172616e67616e69, 1);
INSERT INTO `oc_zone` VALUES (2617, 168, 0x53514a, 0x53697175696a6f72, 1);
INSERT INTO `oc_zone` VALUES (2618, 168, 0x535253, 0x536f72736f676f6e, 1);
INSERT INTO `oc_zone` VALUES (2619, 168, 0x53434f, 0x536f75746820436f74616261746f, 1);
INSERT INTO `oc_zone` VALUES (2620, 168, 0x534c45, 0x536f75746865726e204c65797465, 1);
INSERT INTO `oc_zone` VALUES (2621, 168, 0x534b55, 0x53756c74616e204b756461726174, 1);
INSERT INTO `oc_zone` VALUES (2622, 168, 0x534c55, 0x53756c75, 1);
INSERT INTO `oc_zone` VALUES (2623, 168, 0x534e4f, 0x5375726967616f2064656c204e6f727465, 1);
INSERT INTO `oc_zone` VALUES (2624, 168, 0x535355, 0x5375726967616f2064656c20537572, 1);
INSERT INTO `oc_zone` VALUES (2625, 168, 0x544152, 0x5461726c6163, 1);
INSERT INTO `oc_zone` VALUES (2626, 168, 0x544157, 0x546177692d54617769, 1);
INSERT INTO `oc_zone` VALUES (2627, 168, 0x5a424c, 0x5a616d62616c6573, 1);
INSERT INTO `oc_zone` VALUES (2628, 168, 0x5a4e4f, 0x5a616d626f616e67612064656c204e6f727465, 1);
INSERT INTO `oc_zone` VALUES (2629, 168, 0x5a5355, 0x5a616d626f616e67612064656c20537572, 1);
INSERT INTO `oc_zone` VALUES (2630, 168, 0x5a5349, 0x5a616d626f616e67612053696275676179, 1);
INSERT INTO `oc_zone` VALUES (2631, 170, 0x444f, 0x446f6c6e6f736c61736b6965, 1);
INSERT INTO `oc_zone` VALUES (2632, 170, 0x4b50, 0x4b756a6177736b6f2d506f6d6f72736b6965, 1);
INSERT INTO `oc_zone` VALUES (2633, 170, 0x4c4f, 0x4c6f647a6b6965, 1);
INSERT INTO `oc_zone` VALUES (2634, 170, 0x4c4c, 0x4c7562656c736b6965, 1);
INSERT INTO `oc_zone` VALUES (2635, 170, 0x4c55, 0x4c756275736b6965, 1);
INSERT INTO `oc_zone` VALUES (2636, 170, 0x4d4c, 0x4d616c6f706f6c736b6965, 1);
INSERT INTO `oc_zone` VALUES (2637, 170, 0x4d5a, 0x4d617a6f776965636b6965, 1);
INSERT INTO `oc_zone` VALUES (2638, 170, 0x4f50, 0x4f706f6c736b6965, 1);
INSERT INTO `oc_zone` VALUES (2639, 170, 0x5050, 0x506f646b61727061636b6965, 1);
INSERT INTO `oc_zone` VALUES (2640, 170, 0x504c, 0x506f646c61736b6965, 1);
INSERT INTO `oc_zone` VALUES (2641, 170, 0x504d, 0x506f6d6f72736b6965, 1);
INSERT INTO `oc_zone` VALUES (2642, 170, 0x534c, 0x536c61736b6965, 1);
INSERT INTO `oc_zone` VALUES (2643, 170, 0x5357, 0x53776965746f6b727a79736b6965, 1);
INSERT INTO `oc_zone` VALUES (2644, 170, 0x574d, 0x5761726d696e736b6f2d4d617a7572736b6965, 1);
INSERT INTO `oc_zone` VALUES (2645, 170, 0x5750, 0x5769656c6b6f706f6c736b6965, 1);
INSERT INTO `oc_zone` VALUES (2646, 170, 0x5a41, 0x5a6163686f646e696f706f6d6f72736b6965, 1);
INSERT INTO `oc_zone` VALUES (2647, 198, 0x50, 0x5361696e7420506965727265, 1);
INSERT INTO `oc_zone` VALUES (2648, 198, 0x4d, 0x4d697175656c6f6e, 1);
INSERT INTO `oc_zone` VALUES (2649, 171, 0x4143, 0x412663636564696c3b6f726573, 1);
INSERT INTO `oc_zone` VALUES (2650, 171, 0x4156, 0x41766569726f, 1);
INSERT INTO `oc_zone` VALUES (2651, 171, 0x4245, 0x42656a61, 1);
INSERT INTO `oc_zone` VALUES (2652, 171, 0x4252, 0x4272616761, 1);
INSERT INTO `oc_zone` VALUES (2653, 171, 0x4241, 0x42726167616e2663636564696c3b61, 1);
INSERT INTO `oc_zone` VALUES (2654, 171, 0x4342, 0x43617374656c6f204272616e636f, 1);
INSERT INTO `oc_zone` VALUES (2655, 171, 0x434f, 0x436f696d627261, 1);
INSERT INTO `oc_zone` VALUES (2656, 171, 0x4556, 0x264561637574653b766f7261, 1);
INSERT INTO `oc_zone` VALUES (2657, 171, 0x4641, 0x4661726f, 1);
INSERT INTO `oc_zone` VALUES (2658, 171, 0x4755, 0x477561726461, 1);
INSERT INTO `oc_zone` VALUES (2659, 171, 0x4c45, 0x4c6569726961, 1);
INSERT INTO `oc_zone` VALUES (2660, 171, 0x4c49, 0x4c6973626f61, 1);
INSERT INTO `oc_zone` VALUES (2661, 171, 0x4d45, 0x4d616465697261, 1);
INSERT INTO `oc_zone` VALUES (2662, 171, 0x504f, 0x506f7274616c65677265, 1);
INSERT INTO `oc_zone` VALUES (2663, 171, 0x5052, 0x506f72746f, 1);
INSERT INTO `oc_zone` VALUES (2664, 171, 0x5341, 0x53616e746172266561637574653b6d, 1);
INSERT INTO `oc_zone` VALUES (2665, 171, 0x5345, 0x536574267561637574653b62616c, 1);
INSERT INTO `oc_zone` VALUES (2666, 171, 0x5643, 0x5669616e6120646f2043617374656c6f, 1);
INSERT INTO `oc_zone` VALUES (2667, 171, 0x5652, 0x56696c61205265616c, 1);
INSERT INTO `oc_zone` VALUES (2668, 171, 0x5649, 0x5669736575, 1);
INSERT INTO `oc_zone` VALUES (2669, 173, 0x4457, 0x416420446177686168, 1);
INSERT INTO `oc_zone` VALUES (2670, 173, 0x4757, 0x416c204768757761797269796168, 1);
INSERT INTO `oc_zone` VALUES (2671, 173, 0x4a4d, 0x416c204a756d61796c69796168, 1);
INSERT INTO `oc_zone` VALUES (2672, 173, 0x4b52, 0x416c204b68617772, 1);
INSERT INTO `oc_zone` VALUES (2673, 173, 0x574b, 0x416c2057616b726168, 1);
INSERT INTO `oc_zone` VALUES (2674, 173, 0x524e, 0x41722052617979616e, 1);
INSERT INTO `oc_zone` VALUES (2675, 173, 0x4a42, 0x4a61726179616e20616c20426174696e6168, 1);
INSERT INTO `oc_zone` VALUES (2676, 173, 0x4d53, 0x4d6164696e617420617368205368616d616c, 1);
INSERT INTO `oc_zone` VALUES (2677, 173, 0x5544, 0x556d6d205361276964, 1);
INSERT INTO `oc_zone` VALUES (2678, 173, 0x554c, 0x556d6d2053616c616c, 1);
INSERT INTO `oc_zone` VALUES (2679, 175, 0x4142, 0x416c6261, 1);
INSERT INTO `oc_zone` VALUES (2680, 175, 0x4152, 0x41726164, 1);
INSERT INTO `oc_zone` VALUES (2681, 175, 0x4147, 0x4172676573, 1);
INSERT INTO `oc_zone` VALUES (2682, 175, 0x4243, 0x4261636175, 1);
INSERT INTO `oc_zone` VALUES (2683, 175, 0x4248, 0x4269686f72, 1);
INSERT INTO `oc_zone` VALUES (2684, 175, 0x424e, 0x42697374726974612d4e6173617564, 1);
INSERT INTO `oc_zone` VALUES (2685, 175, 0x4254, 0x426f746f73616e69, 1);
INSERT INTO `oc_zone` VALUES (2686, 175, 0x4256, 0x427261736f76, 1);
INSERT INTO `oc_zone` VALUES (2687, 175, 0x4252, 0x427261696c61, 1);
INSERT INTO `oc_zone` VALUES (2688, 175, 0x42, 0x427563757265737469, 1);
INSERT INTO `oc_zone` VALUES (2689, 175, 0x425a, 0x42757a6175, 1);
INSERT INTO `oc_zone` VALUES (2690, 175, 0x4353, 0x43617261732d5365766572696e, 1);
INSERT INTO `oc_zone` VALUES (2691, 175, 0x434c, 0x43616c6172617369, 1);
INSERT INTO `oc_zone` VALUES (2692, 175, 0x434a, 0x436c756a, 1);
INSERT INTO `oc_zone` VALUES (2693, 175, 0x4354, 0x436f6e7374616e7461, 1);
INSERT INTO `oc_zone` VALUES (2694, 175, 0x4356, 0x436f7661736e61, 1);
INSERT INTO `oc_zone` VALUES (2695, 175, 0x4442, 0x44696d626f76697461, 1);
INSERT INTO `oc_zone` VALUES (2696, 175, 0x444a, 0x446f6c6a, 1);
INSERT INTO `oc_zone` VALUES (2697, 175, 0x474c, 0x47616c617469, 1);
INSERT INTO `oc_zone` VALUES (2698, 175, 0x4752, 0x47697572676975, 1);
INSERT INTO `oc_zone` VALUES (2699, 175, 0x474a, 0x476f726a, 1);
INSERT INTO `oc_zone` VALUES (2700, 175, 0x4852, 0x4861726768697461, 1);
INSERT INTO `oc_zone` VALUES (2701, 175, 0x4844, 0x48756e65646f617261, 1);
INSERT INTO `oc_zone` VALUES (2702, 175, 0x494c, 0x49616c6f6d697461, 1);
INSERT INTO `oc_zone` VALUES (2703, 175, 0x4953, 0x49617369, 1);
INSERT INTO `oc_zone` VALUES (2704, 175, 0x4946, 0x496c666f76, 1);
INSERT INTO `oc_zone` VALUES (2705, 175, 0x4d4d, 0x4d6172616d75726573, 1);
INSERT INTO `oc_zone` VALUES (2706, 175, 0x4d48, 0x4d65686564696e7469, 1);
INSERT INTO `oc_zone` VALUES (2707, 175, 0x4d53, 0x4d75726573, 1);
INSERT INTO `oc_zone` VALUES (2708, 175, 0x4e54, 0x4e65616d74, 1);
INSERT INTO `oc_zone` VALUES (2709, 175, 0x4f54, 0x4f6c74, 1);
INSERT INTO `oc_zone` VALUES (2710, 175, 0x5048, 0x507261686f7661, 1);
INSERT INTO `oc_zone` VALUES (2711, 175, 0x534d, 0x536174752d4d617265, 1);
INSERT INTO `oc_zone` VALUES (2712, 175, 0x534a, 0x53616c616a, 1);
INSERT INTO `oc_zone` VALUES (2713, 175, 0x5342, 0x5369626975, 1);
INSERT INTO `oc_zone` VALUES (2714, 175, 0x5356, 0x53756365617661, 1);
INSERT INTO `oc_zone` VALUES (2715, 175, 0x5452, 0x54656c656f726d616e, 1);
INSERT INTO `oc_zone` VALUES (2716, 175, 0x544d, 0x54696d6973, 1);
INSERT INTO `oc_zone` VALUES (2717, 175, 0x544c, 0x54756c636561, 1);
INSERT INTO `oc_zone` VALUES (2718, 175, 0x5653, 0x5661736c7569, 1);
INSERT INTO `oc_zone` VALUES (2719, 175, 0x564c, 0x56616c636561, 1);
INSERT INTO `oc_zone` VALUES (2720, 175, 0x564e, 0x5672616e636561, 1);
INSERT INTO `oc_zone` VALUES (2721, 176, 0x4142, 0x4162616b616e, 1);
INSERT INTO `oc_zone` VALUES (2722, 176, 0x4147, 0x4167696e736b6f7965, 1);
INSERT INTO `oc_zone` VALUES (2723, 176, 0x414e, 0x416e61647972, 1);
INSERT INTO `oc_zone` VALUES (2724, 176, 0x4152, 0x41726b6168616e67656c736b, 1);
INSERT INTO `oc_zone` VALUES (2725, 176, 0x4153, 0x41737472616b68616e, 1);
INSERT INTO `oc_zone` VALUES (2726, 176, 0x4241, 0x4261726e61756c, 1);
INSERT INTO `oc_zone` VALUES (2727, 176, 0x4245, 0x42656c676f726f64, 1);
INSERT INTO `oc_zone` VALUES (2728, 176, 0x4249, 0x4269726f6269647a68616e, 1);
INSERT INTO `oc_zone` VALUES (2729, 176, 0x424c, 0x426c61676f766573686368656e736b, 1);
INSERT INTO `oc_zone` VALUES (2730, 176, 0x4252, 0x427279616e736b, 1);
INSERT INTO `oc_zone` VALUES (2731, 176, 0x4348, 0x436865626f6b73617279, 1);
INSERT INTO `oc_zone` VALUES (2732, 176, 0x434c, 0x4368656c796162696e736b, 1);
INSERT INTO `oc_zone` VALUES (2733, 176, 0x4352, 0x436865726b6573736b, 1);
INSERT INTO `oc_zone` VALUES (2734, 176, 0x4349, 0x4368697461, 1);
INSERT INTO `oc_zone` VALUES (2735, 176, 0x4455, 0x447564696e6b61, 1);
INSERT INTO `oc_zone` VALUES (2736, 176, 0x454c, 0x456c69737461, 1);
INSERT INTO `oc_zone` VALUES (2737, 176, 0x474f, 0x476f6d6f2d416c746179736b, 1);
INSERT INTO `oc_zone` VALUES (2738, 176, 0x4741, 0x476f726e6f2d416c746179736b, 1);
INSERT INTO `oc_zone` VALUES (2739, 176, 0x4752, 0x47726f7a6e7979, 1);
INSERT INTO `oc_zone` VALUES (2740, 176, 0x4952, 0x49726b7574736b, 1);
INSERT INTO `oc_zone` VALUES (2741, 176, 0x4956, 0x4976616e6f766f, 1);
INSERT INTO `oc_zone` VALUES (2742, 176, 0x495a, 0x497a686576736b, 1);
INSERT INTO `oc_zone` VALUES (2743, 176, 0x4b41, 0x4b616c696e6967726164, 1);
INSERT INTO `oc_zone` VALUES (2744, 176, 0x4b4c, 0x4b616c756761, 1);
INSERT INTO `oc_zone` VALUES (2745, 176, 0x4b53, 0x4b61736e6f646172, 1);
INSERT INTO `oc_zone` VALUES (2746, 176, 0x4b5a, 0x4b617a616e, 1);
INSERT INTO `oc_zone` VALUES (2747, 176, 0x4b45, 0x4b656d65726f766f, 1);
INSERT INTO `oc_zone` VALUES (2748, 176, 0x4b48, 0x4b68616261726f76736b, 1);
INSERT INTO `oc_zone` VALUES (2749, 176, 0x4b4d, 0x4b68616e74792d4d616e736979736b, 1);
INSERT INTO `oc_zone` VALUES (2750, 176, 0x4b4f, 0x4b6f7374726f6d61, 1);
INSERT INTO `oc_zone` VALUES (2751, 176, 0x4b52, 0x4b7261736e6f646172, 1);
INSERT INTO `oc_zone` VALUES (2752, 176, 0x4b4e, 0x4b7261736e6f796172736b, 1);
INSERT INTO `oc_zone` VALUES (2753, 176, 0x4b55, 0x4b7564796d6b6172, 1);
INSERT INTO `oc_zone` VALUES (2754, 176, 0x4b47, 0x4b757267616e, 1);
INSERT INTO `oc_zone` VALUES (2755, 176, 0x4b4b, 0x4b7572736b, 1);
INSERT INTO `oc_zone` VALUES (2756, 176, 0x4b59, 0x4b797a796c, 1);
INSERT INTO `oc_zone` VALUES (2757, 176, 0x4c49, 0x4c69706574736b, 1);
INSERT INTO `oc_zone` VALUES (2758, 176, 0x4d41, 0x4d61676164616e, 1);
INSERT INTO `oc_zone` VALUES (2759, 176, 0x4d4b, 0x4d616b686163686b616c61, 1);
INSERT INTO `oc_zone` VALUES (2760, 176, 0x4d59, 0x4d61796b6f70, 1);
INSERT INTO `oc_zone` VALUES (2761, 176, 0x4d4f, 0x4d6f73636f77, 1);
INSERT INTO `oc_zone` VALUES (2762, 176, 0x4d55, 0x4d75726d616e736b, 1);
INSERT INTO `oc_zone` VALUES (2763, 176, 0x4e41, 0x4e616c6368696b, 1);
INSERT INTO `oc_zone` VALUES (2764, 176, 0x4e52, 0x4e617279616e204d6172, 1);
INSERT INTO `oc_zone` VALUES (2765, 176, 0x4e5a, 0x4e617a72616e, 1);
INSERT INTO `oc_zone` VALUES (2766, 176, 0x4e49, 0x4e697a686e6979204e6f76676f726f64, 1);
INSERT INTO `oc_zone` VALUES (2767, 176, 0x4e4f, 0x4e6f76676f726f64, 1);
INSERT INTO `oc_zone` VALUES (2768, 176, 0x4e56, 0x4e6f766f7369626972736b, 1);
INSERT INTO `oc_zone` VALUES (2769, 176, 0x4f4d, 0x4f6d736b, 1);
INSERT INTO `oc_zone` VALUES (2770, 176, 0x4f52, 0x4f72656c, 1);
INSERT INTO `oc_zone` VALUES (2771, 176, 0x4f45, 0x4f72656e62757267, 1);
INSERT INTO `oc_zone` VALUES (2772, 176, 0x5041, 0x50616c616e61, 1);
INSERT INTO `oc_zone` VALUES (2773, 176, 0x5045, 0x50656e7a61, 1);
INSERT INTO `oc_zone` VALUES (2774, 176, 0x5052, 0x5065726d, 1);
INSERT INTO `oc_zone` VALUES (2775, 176, 0x504b, 0x506574726f7061766c6f76736b2d4b616d63686174736b6979, 1);
INSERT INTO `oc_zone` VALUES (2776, 176, 0x5054, 0x506574726f7a61766f64736b, 1);
INSERT INTO `oc_zone` VALUES (2777, 176, 0x5053, 0x50736b6f76, 1);
INSERT INTO `oc_zone` VALUES (2778, 176, 0x524f, 0x526f73746f762d6e612d446f6e75, 1);
INSERT INTO `oc_zone` VALUES (2779, 176, 0x5259, 0x5279617a616e, 1);
INSERT INTO `oc_zone` VALUES (2780, 176, 0x534c, 0x53616c656b68617264, 1);
INSERT INTO `oc_zone` VALUES (2781, 176, 0x5341, 0x53616d617261, 1);
INSERT INTO `oc_zone` VALUES (2782, 176, 0x5352, 0x536172616e736b, 1);
INSERT INTO `oc_zone` VALUES (2783, 176, 0x5356, 0x53617261746f76, 1);
INSERT INTO `oc_zone` VALUES (2784, 176, 0x534d, 0x536d6f6c656e736b, 1);
INSERT INTO `oc_zone` VALUES (2785, 176, 0x5350, 0x53742e2050657465727362757267, 1);
INSERT INTO `oc_zone` VALUES (2786, 176, 0x5354, 0x53746176726f706f6c, 1);
INSERT INTO `oc_zone` VALUES (2787, 176, 0x5359, 0x53796b7479766b6172, 1);
INSERT INTO `oc_zone` VALUES (2788, 176, 0x5441, 0x54616d626f76, 1);
INSERT INTO `oc_zone` VALUES (2789, 176, 0x544f, 0x546f6d736b, 1);
INSERT INTO `oc_zone` VALUES (2790, 176, 0x5455, 0x54756c61, 1);
INSERT INTO `oc_zone` VALUES (2791, 176, 0x5452, 0x54757261, 1);
INSERT INTO `oc_zone` VALUES (2792, 176, 0x5456, 0x54766572, 1);
INSERT INTO `oc_zone` VALUES (2793, 176, 0x5459, 0x5479756d656e, 1);
INSERT INTO `oc_zone` VALUES (2794, 176, 0x5546, 0x556661, 1);
INSERT INTO `oc_zone` VALUES (2795, 176, 0x554c, 0x556c2779616e6f76736b, 1);
INSERT INTO `oc_zone` VALUES (2796, 176, 0x5555, 0x556c616e2d556465, 1);
INSERT INTO `oc_zone` VALUES (2797, 176, 0x5553, 0x557374272d4f7264796e736b6979, 1);
INSERT INTO `oc_zone` VALUES (2798, 176, 0x564c, 0x566c6164696b61766b617a, 1);
INSERT INTO `oc_zone` VALUES (2799, 176, 0x5641, 0x566c6164696d6972, 1);
INSERT INTO `oc_zone` VALUES (2800, 176, 0x5656, 0x566c616469766f73746f6b, 1);
INSERT INTO `oc_zone` VALUES (2801, 176, 0x5647, 0x566f6c676f67726164, 1);
INSERT INTO `oc_zone` VALUES (2802, 176, 0x5644, 0x566f6c6f676461, 1);
INSERT INTO `oc_zone` VALUES (2803, 176, 0x564f, 0x566f726f6e657a68, 1);
INSERT INTO `oc_zone` VALUES (2804, 176, 0x5659, 0x567961746b61, 1);
INSERT INTO `oc_zone` VALUES (2805, 176, 0x5941, 0x59616b7574736b, 1);
INSERT INTO `oc_zone` VALUES (2806, 176, 0x5952, 0x5961726f736c61766c, 1);
INSERT INTO `oc_zone` VALUES (2807, 176, 0x5945, 0x59656b61746572696e62757267, 1);
INSERT INTO `oc_zone` VALUES (2808, 176, 0x594f, 0x596f73686b61722d4f6c61, 1);
INSERT INTO `oc_zone` VALUES (2809, 177, 0x4255, 0x427574617265, 1);
INSERT INTO `oc_zone` VALUES (2810, 177, 0x4259, 0x4279756d6261, 1);
INSERT INTO `oc_zone` VALUES (2811, 177, 0x4359, 0x4379616e67756775, 1);
INSERT INTO `oc_zone` VALUES (2812, 177, 0x474b, 0x47696b6f6e676f726f, 1);
INSERT INTO `oc_zone` VALUES (2813, 177, 0x4753, 0x476973656e7969, 1);
INSERT INTO `oc_zone` VALUES (2814, 177, 0x4754, 0x4769746172616d61, 1);
INSERT INTO `oc_zone` VALUES (2815, 177, 0x4b47, 0x4b6962756e676f, 1);
INSERT INTO `oc_zone` VALUES (2816, 177, 0x4b59, 0x4b6962757965, 1);
INSERT INTO `oc_zone` VALUES (2817, 177, 0x4b52, 0x4b6967616c6920527572616c65, 1);
INSERT INTO `oc_zone` VALUES (2818, 177, 0x4b56, 0x4b6967616c692d76696c6c65, 1);
INSERT INTO `oc_zone` VALUES (2819, 177, 0x5255, 0x527568656e67657269, 1);
INSERT INTO `oc_zone` VALUES (2820, 177, 0x554d, 0x556d7574617261, 1);
INSERT INTO `oc_zone` VALUES (2821, 178, 0x43434e, 0x43687269737420436875726368204e6963686f6c6120546f776e, 1);
INSERT INTO `oc_zone` VALUES (2822, 178, 0x534153, 0x5361696e7420416e6e652053616e647920506f696e74, 1);
INSERT INTO `oc_zone` VALUES (2823, 178, 0x534742, 0x5361696e742047656f7267652042617373657465727265, 1);
INSERT INTO `oc_zone` VALUES (2824, 178, 0x534747, 0x5361696e742047656f7267652047696e6765726c616e64, 1);
INSERT INTO `oc_zone` VALUES (2825, 178, 0x534a57, 0x5361696e74204a616d65732057696e6477617264, 1);
INSERT INTO `oc_zone` VALUES (2826, 178, 0x534a43, 0x5361696e74204a6f686e2043617065737465727265, 1);
INSERT INTO `oc_zone` VALUES (2827, 178, 0x534a46, 0x5361696e74204a6f686e2046696774726565, 1);
INSERT INTO `oc_zone` VALUES (2828, 178, 0x534d43, 0x5361696e74204d617279204361796f6e, 1);
INSERT INTO `oc_zone` VALUES (2829, 178, 0x434150, 0x5361696e74205061756c2043617065737465727265, 1);
INSERT INTO `oc_zone` VALUES (2830, 178, 0x434841, 0x5361696e74205061756c20436861726c6573746f776e, 1);
INSERT INTO `oc_zone` VALUES (2831, 178, 0x535042, 0x5361696e742050657465722042617373657465727265, 1);
INSERT INTO `oc_zone` VALUES (2832, 178, 0x53544c, 0x5361696e742054686f6d6173204c6f776c616e64, 1);
INSERT INTO `oc_zone` VALUES (2833, 178, 0x53544d, 0x5361696e742054686f6d6173204d6964646c652049736c616e64, 1);
INSERT INTO `oc_zone` VALUES (2834, 178, 0x545050, 0x5472696e6974792050616c6d6574746f20506f696e74, 1);
INSERT INTO `oc_zone` VALUES (2835, 179, 0x4152, 0x416e73652d6c612d52617965, 1);
INSERT INTO `oc_zone` VALUES (2836, 179, 0x4341, 0x4361737472696573, 1);
INSERT INTO `oc_zone` VALUES (2837, 179, 0x4348, 0x43686f697365756c, 1);
INSERT INTO `oc_zone` VALUES (2838, 179, 0x4441, 0x4461757068696e, 1);
INSERT INTO `oc_zone` VALUES (2839, 179, 0x4445, 0x44656e6e657279, 1);
INSERT INTO `oc_zone` VALUES (2840, 179, 0x4749, 0x47726f732d49736c6574, 1);
INSERT INTO `oc_zone` VALUES (2841, 179, 0x4c41, 0x4c61626f726965, 1);
INSERT INTO `oc_zone` VALUES (2842, 179, 0x4d49, 0x4d69636f7564, 1);
INSERT INTO `oc_zone` VALUES (2843, 179, 0x5052, 0x507261736c696e, 1);
INSERT INTO `oc_zone` VALUES (2844, 179, 0x534f, 0x536f75667269657265, 1);
INSERT INTO `oc_zone` VALUES (2845, 179, 0x5646, 0x56696575782d466f7274, 1);
INSERT INTO `oc_zone` VALUES (2846, 180, 0x43, 0x436861726c6f747465, 1);
INSERT INTO `oc_zone` VALUES (2847, 180, 0x52, 0x4772656e6164696e6573, 1);
INSERT INTO `oc_zone` VALUES (2848, 180, 0x41, 0x5361696e7420416e64726577, 1);
INSERT INTO `oc_zone` VALUES (2849, 180, 0x44, 0x5361696e74204461766964, 1);
INSERT INTO `oc_zone` VALUES (2850, 180, 0x47, 0x5361696e742047656f726765, 1);
INSERT INTO `oc_zone` VALUES (2851, 180, 0x50, 0x5361696e74205061747269636b, 1);
INSERT INTO `oc_zone` VALUES (2852, 181, 0x414e, 0x4127616e61, 1);
INSERT INTO `oc_zone` VALUES (2853, 181, 0x4149, 0x416967612d692d6c652d546169, 1);
INSERT INTO `oc_zone` VALUES (2854, 181, 0x4154, 0x41747561, 1);
INSERT INTO `oc_zone` VALUES (2855, 181, 0x4641, 0x4661276173616c656c65616761, 1);
INSERT INTO `oc_zone` VALUES (2856, 181, 0x4745, 0x4761676127656d61756761, 1);
INSERT INTO `oc_zone` VALUES (2857, 181, 0x4746, 0x4761676169666f6d61756761, 1);
INSERT INTO `oc_zone` VALUES (2858, 181, 0x5041, 0x50616c61756c69, 1);
INSERT INTO `oc_zone` VALUES (2859, 181, 0x5341, 0x5361747570612769746561, 1);
INSERT INTO `oc_zone` VALUES (2860, 181, 0x5455, 0x5475616d6173616761, 1);
INSERT INTO `oc_zone` VALUES (2861, 181, 0x5646, 0x566127612d6f2d466f6e6f7469, 1);
INSERT INTO `oc_zone` VALUES (2862, 181, 0x5653, 0x566169736967616e6f, 1);
INSERT INTO `oc_zone` VALUES (2863, 182, 0x4143, 0x416371756176697661, 1);
INSERT INTO `oc_zone` VALUES (2864, 182, 0x424d, 0x426f72676f204d616767696f7265, 1);
INSERT INTO `oc_zone` VALUES (2865, 182, 0x4348, 0x4368696573616e756f7661, 1);
INSERT INTO `oc_zone` VALUES (2866, 182, 0x444f, 0x446f6d61676e616e6f, 1);
INSERT INTO `oc_zone` VALUES (2867, 182, 0x4641, 0x46616574616e6f, 1);
INSERT INTO `oc_zone` VALUES (2868, 182, 0x4649, 0x46696f72656e74696e6f, 1);
INSERT INTO `oc_zone` VALUES (2869, 182, 0x4d4f, 0x4d6f6e74656769617264696e6f, 1);
INSERT INTO `oc_zone` VALUES (2870, 182, 0x534d, 0x43697474612064692053616e204d6172696e6f, 1);
INSERT INTO `oc_zone` VALUES (2871, 182, 0x5345, 0x536572726176616c6c65, 1);
INSERT INTO `oc_zone` VALUES (2872, 183, 0x53, 0x53616f20546f6d65, 1);
INSERT INTO `oc_zone` VALUES (2873, 183, 0x50, 0x5072696e63697065, 1);
INSERT INTO `oc_zone` VALUES (2874, 184, 0x4248, 0x416c204261686168, 1);
INSERT INTO `oc_zone` VALUES (2875, 184, 0x4853, 0x416c20487564756420617368205368616d616c69796168, 1);
INSERT INTO `oc_zone` VALUES (2876, 184, 0x4a46, 0x416c204a617766, 1);
INSERT INTO `oc_zone` VALUES (2877, 184, 0x4d44, 0x416c204d6164696e6168, 1);
INSERT INTO `oc_zone` VALUES (2878, 184, 0x5153, 0x416c20516173696d, 1);
INSERT INTO `oc_zone` VALUES (2879, 184, 0x5244, 0x4172205269796164, 1);
INSERT INTO `oc_zone` VALUES (2880, 184, 0x4151, 0x4173682053686172716979616820284561737465726e29, 1);
INSERT INTO `oc_zone` VALUES (2881, 184, 0x4153, 0x2741736972, 1);
INSERT INTO `oc_zone` VALUES (2882, 184, 0x484c, 0x486127696c, 1);
INSERT INTO `oc_zone` VALUES (2883, 184, 0x4a5a, 0x4a697a616e, 1);
INSERT INTO `oc_zone` VALUES (2884, 184, 0x4d4c, 0x4d616b6b6168, 1);
INSERT INTO `oc_zone` VALUES (2885, 184, 0x4e52, 0x4e616a72616e, 1);
INSERT INTO `oc_zone` VALUES (2886, 184, 0x5442, 0x546162756b, 1);
INSERT INTO `oc_zone` VALUES (2887, 185, 0x4441, 0x44616b6172, 1);
INSERT INTO `oc_zone` VALUES (2888, 185, 0x4449, 0x44696f757262656c, 1);
INSERT INTO `oc_zone` VALUES (2889, 185, 0x4641, 0x46617469636b, 1);
INSERT INTO `oc_zone` VALUES (2890, 185, 0x4b41, 0x4b616f6c61636b, 1);
INSERT INTO `oc_zone` VALUES (2891, 185, 0x4b4f, 0x4b6f6c6461, 1);
INSERT INTO `oc_zone` VALUES (2892, 185, 0x4c4f, 0x4c6f756761, 1);
INSERT INTO `oc_zone` VALUES (2893, 185, 0x4d41, 0x4d6174616d, 1);
INSERT INTO `oc_zone` VALUES (2894, 185, 0x534c, 0x5361696e742d4c6f756973, 1);
INSERT INTO `oc_zone` VALUES (2895, 185, 0x5441, 0x54616d6261636f756e6461, 1);
INSERT INTO `oc_zone` VALUES (2896, 185, 0x5448, 0x5468696573, 1);
INSERT INTO `oc_zone` VALUES (2897, 185, 0x5a49, 0x5a696775696e63686f72, 1);
INSERT INTO `oc_zone` VALUES (2898, 186, 0x4150, 0x416e7365206175782050696e73, 1);
INSERT INTO `oc_zone` VALUES (2899, 186, 0x4142, 0x416e736520426f696c656175, 1);
INSERT INTO `oc_zone` VALUES (2900, 186, 0x4145, 0x416e73652045746f696c65, 1);
INSERT INTO `oc_zone` VALUES (2901, 186, 0x414c, 0x416e7365204c6f756973, 1);
INSERT INTO `oc_zone` VALUES (2902, 186, 0x4152, 0x416e736520526f79616c65, 1);
INSERT INTO `oc_zone` VALUES (2903, 186, 0x424c, 0x42616965204c617a617265, 1);
INSERT INTO `oc_zone` VALUES (2904, 186, 0x4253, 0x42616965205361696e746520416e6e65, 1);
INSERT INTO `oc_zone` VALUES (2905, 186, 0x4256, 0x426561752056616c6c6f6e, 1);
INSERT INTO `oc_zone` VALUES (2906, 186, 0x4241, 0x42656c20416972, 1);
INSERT INTO `oc_zone` VALUES (2907, 186, 0x424f, 0x42656c204f6d627265, 1);
INSERT INTO `oc_zone` VALUES (2908, 186, 0x4341, 0x43617363616465, 1);
INSERT INTO `oc_zone` VALUES (2909, 186, 0x474c, 0x476c61636973, 1);
INSERT INTO `oc_zone` VALUES (2910, 186, 0x474d, 0x4772616e642720416e736520286f6e204d61686529, 1);
INSERT INTO `oc_zone` VALUES (2911, 186, 0x4750, 0x4772616e642720416e736520286f6e20507261736c696e29, 1);
INSERT INTO `oc_zone` VALUES (2912, 186, 0x4447, 0x4c61204469677565, 1);
INSERT INTO `oc_zone` VALUES (2913, 186, 0x5241, 0x4c61205269766965726520416e676c61697365, 1);
INSERT INTO `oc_zone` VALUES (2914, 186, 0x4d42, 0x4d6f6e7420427578746f6e, 1);
INSERT INTO `oc_zone` VALUES (2915, 186, 0x4d46, 0x4d6f6e7420466c65757269, 1);
INSERT INTO `oc_zone` VALUES (2916, 186, 0x504c, 0x506c616973616e6365, 1);
INSERT INTO `oc_zone` VALUES (2917, 186, 0x5052, 0x506f696e7465204c6120527565, 1);
INSERT INTO `oc_zone` VALUES (2918, 186, 0x5047, 0x506f727420476c617564, 1);
INSERT INTO `oc_zone` VALUES (2919, 186, 0x534c, 0x5361696e74204c6f756973, 1);
INSERT INTO `oc_zone` VALUES (2920, 186, 0x5441, 0x54616b616d616b61, 1);
INSERT INTO `oc_zone` VALUES (2921, 187, 0x45, 0x4561737465726e, 1);
INSERT INTO `oc_zone` VALUES (2922, 187, 0x4e, 0x4e6f72746865726e, 1);
INSERT INTO `oc_zone` VALUES (2923, 187, 0x53, 0x536f75746865726e, 1);
INSERT INTO `oc_zone` VALUES (2924, 187, 0x57, 0x5765737465726e, 1);
INSERT INTO `oc_zone` VALUES (2925, 189, 0x4241, 0x42616e736b6f627973747269636bc3bd, 1);
INSERT INTO `oc_zone` VALUES (2926, 189, 0x4252, 0x4272617469736c6176736bc3bd, 1);
INSERT INTO `oc_zone` VALUES (2927, 189, 0x4b4f, 0x4b6fc5a169636bc3bd, 1);
INSERT INTO `oc_zone` VALUES (2928, 189, 0x4e49, 0x4e69747269616e736b79, 1);
INSERT INTO `oc_zone` VALUES (2929, 189, 0x5052, 0x507265c5a16f76736bc3bd, 1);
INSERT INTO `oc_zone` VALUES (2930, 189, 0x5443, 0x5472656ec48d69616e736b79, 1);
INSERT INTO `oc_zone` VALUES (2931, 189, 0x5456, 0x54726e6176736bc3bd, 1);
INSERT INTO `oc_zone` VALUES (2932, 189, 0x5a49, 0xc5bd696c696e736bc3bd, 1);
INSERT INTO `oc_zone` VALUES (2933, 191, 0x4345, 0x43656e7472616c, 1);
INSERT INTO `oc_zone` VALUES (2934, 191, 0x4348, 0x43686f697365756c, 1);
INSERT INTO `oc_zone` VALUES (2935, 191, 0x4743, 0x47756164616c63616e616c, 1);
INSERT INTO `oc_zone` VALUES (2936, 191, 0x484f, 0x486f6e69617261, 1);
INSERT INTO `oc_zone` VALUES (2937, 191, 0x4953, 0x49736162656c, 1);
INSERT INTO `oc_zone` VALUES (2938, 191, 0x4d4b, 0x4d616b697261, 1);
INSERT INTO `oc_zone` VALUES (2939, 191, 0x4d4c, 0x4d616c61697461, 1);
INSERT INTO `oc_zone` VALUES (2940, 191, 0x5242, 0x52656e6e656c6c20616e642042656c6c6f6e61, 1);
INSERT INTO `oc_zone` VALUES (2941, 191, 0x544d, 0x54656d6f7475, 1);
INSERT INTO `oc_zone` VALUES (2942, 191, 0x5745, 0x5765737465726e, 1);
INSERT INTO `oc_zone` VALUES (2943, 192, 0x4157, 0x417764616c, 1);
INSERT INTO `oc_zone` VALUES (2944, 192, 0x424b, 0x42616b6f6f6c, 1);
INSERT INTO `oc_zone` VALUES (2945, 192, 0x424e, 0x42616e6161646972, 1);
INSERT INTO `oc_zone` VALUES (2946, 192, 0x4252, 0x42617269, 1);
INSERT INTO `oc_zone` VALUES (2947, 192, 0x4259, 0x426179, 1);
INSERT INTO `oc_zone` VALUES (2948, 192, 0x4741, 0x47616c677564757564, 1);
INSERT INTO `oc_zone` VALUES (2949, 192, 0x4745, 0x4765646f, 1);
INSERT INTO `oc_zone` VALUES (2950, 192, 0x4849, 0x4869697261616e, 1);
INSERT INTO `oc_zone` VALUES (2951, 192, 0x4a44, 0x4a756262616461204468657865, 1);
INSERT INTO `oc_zone` VALUES (2952, 192, 0x4a48, 0x4a75626261646120486f6f7365, 1);
INSERT INTO `oc_zone` VALUES (2953, 192, 0x4d55, 0x4d75647567, 1);
INSERT INTO `oc_zone` VALUES (2954, 192, 0x4e55, 0x4e756761616c, 1);
INSERT INTO `oc_zone` VALUES (2955, 192, 0x5341, 0x53616e616167, 1);
INSERT INTO `oc_zone` VALUES (2956, 192, 0x5344, 0x5368616265656c6c616861204468657865, 1);
INSERT INTO `oc_zone` VALUES (2957, 192, 0x5348, 0x5368616265656c6c61686120486f6f7365, 1);
INSERT INTO `oc_zone` VALUES (2958, 192, 0x534c, 0x536f6f6c, 1);
INSERT INTO `oc_zone` VALUES (2959, 192, 0x544f, 0x546f676468656572, 1);
INSERT INTO `oc_zone` VALUES (2960, 192, 0x5747, 0x576f716f6f79692047616c62656564, 1);
INSERT INTO `oc_zone` VALUES (2961, 193, 0x4543, 0x4561737465726e2043617065, 1);
INSERT INTO `oc_zone` VALUES (2962, 193, 0x4653, 0x46726565205374617465, 1);
INSERT INTO `oc_zone` VALUES (2963, 193, 0x4754, 0x47617574656e67, 1);
INSERT INTO `oc_zone` VALUES (2964, 193, 0x4b4e, 0x4b77615a756c752d4e6174616c, 1);
INSERT INTO `oc_zone` VALUES (2965, 193, 0x4c50, 0x4c696d706f706f, 1);
INSERT INTO `oc_zone` VALUES (2966, 193, 0x4d50, 0x4d70756d616c616e6761, 1);
INSERT INTO `oc_zone` VALUES (2967, 193, 0x4e57, 0x4e6f7274682057657374, 1);
INSERT INTO `oc_zone` VALUES (2968, 193, 0x4e43, 0x4e6f72746865726e2043617065, 1);
INSERT INTO `oc_zone` VALUES (2969, 193, 0x5743, 0x5765737465726e2043617065, 1);
INSERT INTO `oc_zone` VALUES (2970, 195, 0x4341, 0x4c6120436f7275266e74696c64653b61, 1);
INSERT INTO `oc_zone` VALUES (2971, 195, 0x414c, 0x264161637574653b6c617661, 1);
INSERT INTO `oc_zone` VALUES (2972, 195, 0x4142, 0x416c626163657465, 1);
INSERT INTO `oc_zone` VALUES (2973, 195, 0x4143, 0x416c6963616e7465, 1);
INSERT INTO `oc_zone` VALUES (2974, 195, 0x414d, 0x416c6d65726961, 1);
INSERT INTO `oc_zone` VALUES (2975, 195, 0x4153, 0x4173747572696173, 1);
INSERT INTO `oc_zone` VALUES (2976, 195, 0x4156, 0x264161637574653b76696c61, 1);
INSERT INTO `oc_zone` VALUES (2977, 195, 0x424a, 0x426164616a6f7a, 1);
INSERT INTO `oc_zone` VALUES (2978, 195, 0x4942, 0x42616c6561726573, 1);
INSERT INTO `oc_zone` VALUES (2979, 195, 0x4241, 0x42617263656c6f6e61, 1);
INSERT INTO `oc_zone` VALUES (2980, 195, 0x4255, 0x427572676f73, 1);
INSERT INTO `oc_zone` VALUES (2981, 195, 0x4343, 0x43266161637574653b6365726573, 1);
INSERT INTO `oc_zone` VALUES (2982, 195, 0x435a, 0x43266161637574653b64697a, 1);
INSERT INTO `oc_zone` VALUES (2983, 195, 0x4354, 0x43616e746162726961, 1);
INSERT INTO `oc_zone` VALUES (2984, 195, 0x434c, 0x43617374656c6c266f61637574653b6e, 1);
INSERT INTO `oc_zone` VALUES (2985, 195, 0x4345, 0x4365757461, 1);
INSERT INTO `oc_zone` VALUES (2986, 195, 0x4352, 0x436975646164205265616c, 1);
INSERT INTO `oc_zone` VALUES (2987, 195, 0x4344, 0x43266f61637574653b72646f6261, 1);
INSERT INTO `oc_zone` VALUES (2988, 195, 0x4355, 0x4375656e6361, 1);
INSERT INTO `oc_zone` VALUES (2989, 195, 0x4749, 0x4769726f6e61, 1);
INSERT INTO `oc_zone` VALUES (2990, 195, 0x4744, 0x4772616e616461, 1);
INSERT INTO `oc_zone` VALUES (2991, 195, 0x474a, 0x47756164616c616a617261, 1);
INSERT INTO `oc_zone` VALUES (2992, 195, 0x4750, 0x47756970267561637574653b7a636f61, 1);
INSERT INTO `oc_zone` VALUES (2993, 195, 0x484c, 0x4875656c7661, 1);
INSERT INTO `oc_zone` VALUES (2994, 195, 0x4853, 0x487565736361, 1);
INSERT INTO `oc_zone` VALUES (2995, 195, 0x4a4e, 0x4a61266561637574653b6e, 1);
INSERT INTO `oc_zone` VALUES (2996, 195, 0x524a, 0x4c612052696f6a61, 1);
INSERT INTO `oc_zone` VALUES (2997, 195, 0x504d, 0x4c61732050616c6d6173, 1);
INSERT INTO `oc_zone` VALUES (2998, 195, 0x4c45, 0x4c656f6e, 1);
INSERT INTO `oc_zone` VALUES (2999, 195, 0x4c4c, 0x4c6c65696461, 1);
INSERT INTO `oc_zone` VALUES (3000, 195, 0x4c47, 0x4c75676f, 1);
INSERT INTO `oc_zone` VALUES (3001, 195, 0x4d44, 0x4d6164726964, 1);
INSERT INTO `oc_zone` VALUES (3002, 195, 0x4d41, 0x4d616c616761, 1);
INSERT INTO `oc_zone` VALUES (3003, 195, 0x4d4c, 0x4d656c696c6c61, 1);
INSERT INTO `oc_zone` VALUES (3004, 195, 0x4d55, 0x4d7572636961, 1);
INSERT INTO `oc_zone` VALUES (3005, 195, 0x4e56, 0x4e617661727261, 1);
INSERT INTO `oc_zone` VALUES (3006, 195, 0x4f55, 0x4f7572656e7365, 1);
INSERT INTO `oc_zone` VALUES (3007, 195, 0x504c, 0x50616c656e636961, 1);
INSERT INTO `oc_zone` VALUES (3008, 195, 0x504f, 0x506f6e74657665647261, 1);
INSERT INTO `oc_zone` VALUES (3009, 195, 0x534c, 0x53616c616d616e6361, 1);
INSERT INTO `oc_zone` VALUES (3010, 195, 0x5343, 0x53616e7461204372757a2064652054656e6572696665, 1);
INSERT INTO `oc_zone` VALUES (3011, 195, 0x5347, 0x5365676f766961, 1);
INSERT INTO `oc_zone` VALUES (3012, 195, 0x5356, 0x536576696c6c61, 1);
INSERT INTO `oc_zone` VALUES (3013, 195, 0x534f, 0x536f726961, 1);
INSERT INTO `oc_zone` VALUES (3014, 195, 0x5441, 0x5461727261676f6e61, 1);
INSERT INTO `oc_zone` VALUES (3015, 195, 0x5445, 0x54657275656c, 1);
INSERT INTO `oc_zone` VALUES (3016, 195, 0x544f, 0x546f6c65646f, 1);
INSERT INTO `oc_zone` VALUES (3017, 195, 0x5643, 0x56616c656e636961, 1);
INSERT INTO `oc_zone` VALUES (3018, 195, 0x5644, 0x56616c6c61646f6c6964, 1);
INSERT INTO `oc_zone` VALUES (3019, 195, 0x565a, 0x56697a63617961, 1);
INSERT INTO `oc_zone` VALUES (3020, 195, 0x5a4d, 0x5a616d6f7261, 1);
INSERT INTO `oc_zone` VALUES (3021, 195, 0x5a52, 0x5a617261676f7a61, 1);
INSERT INTO `oc_zone` VALUES (3022, 196, 0x4345, 0x43656e7472616c, 1);
INSERT INTO `oc_zone` VALUES (3023, 196, 0x4541, 0x4561737465726e, 1);
INSERT INTO `oc_zone` VALUES (3024, 196, 0x4e43, 0x4e6f7274682043656e7472616c, 1);
INSERT INTO `oc_zone` VALUES (3025, 196, 0x4e4f, 0x4e6f72746865726e, 1);
INSERT INTO `oc_zone` VALUES (3026, 196, 0x4e57, 0x4e6f727468205765737465726e, 1);
INSERT INTO `oc_zone` VALUES (3027, 196, 0x5341, 0x53616261726167616d757761, 1);
INSERT INTO `oc_zone` VALUES (3028, 196, 0x534f, 0x536f75746865726e, 1);
INSERT INTO `oc_zone` VALUES (3029, 196, 0x5556, 0x557661, 1);
INSERT INTO `oc_zone` VALUES (3030, 196, 0x5745, 0x5765737465726e, 1);
INSERT INTO `oc_zone` VALUES (3031, 197, 0x41, 0x417363656e73696f6e, 1);
INSERT INTO `oc_zone` VALUES (3032, 197, 0x53, 0x5361696e742048656c656e61, 1);
INSERT INTO `oc_zone` VALUES (3033, 197, 0x54, 0x5472697374616e2064612043756e6861, 1);
INSERT INTO `oc_zone` VALUES (3034, 199, 0x414e4c, 0x4127616c6920616e204e696c, 1);
INSERT INTO `oc_zone` VALUES (3035, 199, 0x42414d, 0x416c204261687220616c2041686d6172, 1);
INSERT INTO `oc_zone` VALUES (3036, 199, 0x425254, 0x416c204275686179726174, 1);
INSERT INTO `oc_zone` VALUES (3037, 199, 0x4a5a52, 0x416c204a617a69726168, 1);
INSERT INTO `oc_zone` VALUES (3038, 199, 0x4b5254, 0x416c204b68617274756d, 1);
INSERT INTO `oc_zone` VALUES (3039, 199, 0x514452, 0x416c2051616461726966, 1);
INSERT INTO `oc_zone` VALUES (3040, 199, 0x574448, 0x416c20576168646168, 1);
INSERT INTO `oc_zone` VALUES (3041, 199, 0x414e42, 0x416e204e696c20616c204162796164, 1);
INSERT INTO `oc_zone` VALUES (3042, 199, 0x414e5a, 0x416e204e696c20616c20417a726171, 1);
INSERT INTO `oc_zone` VALUES (3043, 199, 0x415348, 0x417368205368616d616c69796168, 1);
INSERT INTO `oc_zone` VALUES (3044, 199, 0x424a41, 0x4261687220616c204a6162616c, 1);
INSERT INTO `oc_zone` VALUES (3045, 199, 0x474953, 0x476861726220616c204973746977612769796168, 1);
INSERT INTO `oc_zone` VALUES (3046, 199, 0x474247, 0x4768617262204261687220616c204768617a616c, 1);
INSERT INTO `oc_zone` VALUES (3047, 199, 0x474441, 0x476861726220446172667572, 1);
INSERT INTO `oc_zone` VALUES (3048, 199, 0x474b55, 0x4768617262204b7572647566616e, 1);
INSERT INTO `oc_zone` VALUES (3049, 199, 0x4a4441, 0x4a616e756220446172667572, 1);
INSERT INTO `oc_zone` VALUES (3050, 199, 0x4a4b55, 0x4a616e7562204b7572647566616e, 1);
INSERT INTO `oc_zone` VALUES (3051, 199, 0x4a514c, 0x4a756e71616c69, 1);
INSERT INTO `oc_zone` VALUES (3052, 199, 0x4b534c, 0x4b617373616c61, 1);
INSERT INTO `oc_zone` VALUES (3053, 199, 0x4e4e4c, 0x4e61687220616e204e696c, 1);
INSERT INTO `oc_zone` VALUES (3054, 199, 0x534247, 0x5368616d616c204261687220616c204768617a616c, 1);
INSERT INTO `oc_zone` VALUES (3055, 199, 0x534441, 0x5368616d616c20446172667572, 1);
INSERT INTO `oc_zone` VALUES (3056, 199, 0x534b55, 0x5368616d616c204b7572647566616e, 1);
INSERT INTO `oc_zone` VALUES (3057, 199, 0x534953, 0x536861727120616c204973746977612769796168, 1);
INSERT INTO `oc_zone` VALUES (3058, 199, 0x534e52, 0x53696e6e6172, 1);
INSERT INTO `oc_zone` VALUES (3059, 199, 0x575242, 0x5761726162, 1);
INSERT INTO `oc_zone` VALUES (3060, 200, 0x4252, 0x42726f6b6f706f6e646f, 1);
INSERT INTO `oc_zone` VALUES (3061, 200, 0x434d, 0x436f6d6d6577696a6e65, 1);
INSERT INTO `oc_zone` VALUES (3062, 200, 0x4352, 0x436f726f6e6965, 1);
INSERT INTO `oc_zone` VALUES (3063, 200, 0x4d41, 0x4d61726f77696a6e65, 1);
INSERT INTO `oc_zone` VALUES (3064, 200, 0x4e49, 0x4e69636b65726965, 1);
INSERT INTO `oc_zone` VALUES (3065, 200, 0x5041, 0x50617261, 1);
INSERT INTO `oc_zone` VALUES (3066, 200, 0x504d, 0x506172616d617269626f, 1);
INSERT INTO `oc_zone` VALUES (3067, 200, 0x5341, 0x536172616d61636361, 1);
INSERT INTO `oc_zone` VALUES (3068, 200, 0x5349, 0x536970616c6977696e69, 1);
INSERT INTO `oc_zone` VALUES (3069, 200, 0x5741, 0x57616e696361, 1);
INSERT INTO `oc_zone` VALUES (3070, 202, 0x48, 0x48686f68686f, 1);
INSERT INTO `oc_zone` VALUES (3071, 202, 0x4c, 0x4c75626f6d626f, 1);
INSERT INTO `oc_zone` VALUES (3072, 202, 0x4d, 0x4d616e7a696e69, 1);
INSERT INTO `oc_zone` VALUES (3073, 202, 0x53, 0x5368697368656c77656e69, 1);
INSERT INTO `oc_zone` VALUES (3074, 203, 0x4b, 0x426c656b696e6765, 1);
INSERT INTO `oc_zone` VALUES (3075, 203, 0x57, 0x44616c616d61, 1);
INSERT INTO `oc_zone` VALUES (3076, 203, 0x58, 0x472661756d6c3b766c65626f7267, 1);
INSERT INTO `oc_zone` VALUES (3077, 203, 0x49, 0x476f746c616e64, 1);
INSERT INTO `oc_zone` VALUES (3078, 203, 0x4e, 0x48616c6c616e64, 1);
INSERT INTO `oc_zone` VALUES (3079, 203, 0x5a, 0x4a2661756d6c3b6d746c616e64, 1);
INSERT INTO `oc_zone` VALUES (3080, 203, 0x46, 0x4a266f756d6c3b6e6b266f756d6c3b70696e67, 1);
INSERT INTO `oc_zone` VALUES (3081, 203, 0x48, 0x4b616c6d6172, 1);
INSERT INTO `oc_zone` VALUES (3082, 203, 0x47, 0x4b726f6e6f62657267, 1);
INSERT INTO `oc_zone` VALUES (3083, 203, 0x4244, 0x4e6f7272626f7474656e, 1);
INSERT INTO `oc_zone` VALUES (3084, 203, 0x54, 0x264f756d6c3b726562726f, 1);
INSERT INTO `oc_zone` VALUES (3085, 203, 0x45, 0x264f756d6c3b7374657267266f756d6c3b746c616e64, 1);
INSERT INTO `oc_zone` VALUES (3086, 203, 0x4d, 0x536b266172696e673b6e65, 1);
INSERT INTO `oc_zone` VALUES (3087, 203, 0x44, 0x53266f756d6c3b6465726d616e6c616e64, 1);
INSERT INTO `oc_zone` VALUES (3088, 203, 0x4142, 0x53746f636b686f6c6d, 1);
INSERT INTO `oc_zone` VALUES (3089, 203, 0x43, 0x55707073616c61, 1);
INSERT INTO `oc_zone` VALUES (3090, 203, 0x53, 0x562661756d6c3b726d6c616e64, 1);
INSERT INTO `oc_zone` VALUES (3091, 203, 0x4143, 0x562661756d6c3b73746572626f7474656e, 1);
INSERT INTO `oc_zone` VALUES (3092, 203, 0x59, 0x562661756d6c3b737465726e6f72726c616e64, 1);
INSERT INTO `oc_zone` VALUES (3093, 203, 0x55, 0x562661756d6c3b73746d616e6c616e64, 1);
INSERT INTO `oc_zone` VALUES (3094, 203, 0x4f, 0x562661756d6c3b737472612047266f756d6c3b74616c616e64, 1);
INSERT INTO `oc_zone` VALUES (3095, 204, 0x4147, 0x416172676175, 1);
INSERT INTO `oc_zone` VALUES (3096, 204, 0x4152, 0x417070656e7a656c6c2041757373657272686f64656e, 1);
INSERT INTO `oc_zone` VALUES (3097, 204, 0x4149, 0x417070656e7a656c6c20496e6e657272686f64656e, 1);
INSERT INTO `oc_zone` VALUES (3098, 204, 0x4253, 0x426173656c2d5374616474, 1);
INSERT INTO `oc_zone` VALUES (3099, 204, 0x424c, 0x426173656c2d4c616e64736368616674, 1);
INSERT INTO `oc_zone` VALUES (3100, 204, 0x4245, 0x4265726e, 1);
INSERT INTO `oc_zone` VALUES (3101, 204, 0x4652, 0x467269626f757267, 1);
INSERT INTO `oc_zone` VALUES (3102, 204, 0x4745, 0x47656e266567726176653b7665, 1);
INSERT INTO `oc_zone` VALUES (3103, 204, 0x474c, 0x476c61727573, 1);
INSERT INTO `oc_zone` VALUES (3104, 204, 0x4752, 0x47726175622675756d6c3b6e64656e, 1);
INSERT INTO `oc_zone` VALUES (3105, 204, 0x4a55, 0x4a757261, 1);
INSERT INTO `oc_zone` VALUES (3106, 204, 0x4c55, 0x4c757a65726e, 1);
INSERT INTO `oc_zone` VALUES (3107, 204, 0x4e45, 0x4e657563682661636972633b74656c, 1);
INSERT INTO `oc_zone` VALUES (3108, 204, 0x4e57, 0x4e696477616c64, 1);
INSERT INTO `oc_zone` VALUES (3109, 204, 0x4f57, 0x4f6277616c64, 1);
INSERT INTO `oc_zone` VALUES (3110, 204, 0x5347, 0x53742e2047616c6c656e, 1);
INSERT INTO `oc_zone` VALUES (3111, 204, 0x5348, 0x53636861666668617573656e, 1);
INSERT INTO `oc_zone` VALUES (3112, 204, 0x535a, 0x53636877797a, 1);
INSERT INTO `oc_zone` VALUES (3113, 204, 0x534f, 0x536f6c6f746875726e, 1);
INSERT INTO `oc_zone` VALUES (3114, 204, 0x5447, 0x54687572676175, 1);
INSERT INTO `oc_zone` VALUES (3115, 204, 0x5449, 0x546963696e6f, 1);
INSERT INTO `oc_zone` VALUES (3116, 204, 0x5552, 0x557269, 1);
INSERT INTO `oc_zone` VALUES (3117, 204, 0x5653, 0x56616c616973, 1);
INSERT INTO `oc_zone` VALUES (3118, 204, 0x5644, 0x56617564, 1);
INSERT INTO `oc_zone` VALUES (3119, 204, 0x5a47, 0x5a7567, 1);
INSERT INTO `oc_zone` VALUES (3120, 204, 0x5a48, 0x5a2675756d6c3b72696368, 1);
INSERT INTO `oc_zone` VALUES (3121, 205, 0x4841, 0x416c20486173616b6168, 1);
INSERT INTO `oc_zone` VALUES (3122, 205, 0x4c41, 0x416c204c616468697169796168, 1);
INSERT INTO `oc_zone` VALUES (3123, 205, 0x5155, 0x416c2051756e61797469726168, 1);
INSERT INTO `oc_zone` VALUES (3124, 205, 0x5251, 0x417220526171716168, 1);
INSERT INTO `oc_zone` VALUES (3125, 205, 0x5355, 0x41732053757761796461, 1);
INSERT INTO `oc_zone` VALUES (3126, 205, 0x4441, 0x44617261, 1);
INSERT INTO `oc_zone` VALUES (3127, 205, 0x445a, 0x4461797220617a205a617772, 1);
INSERT INTO `oc_zone` VALUES (3128, 205, 0x4449, 0x44696d61736871, 1);
INSERT INTO `oc_zone` VALUES (3129, 205, 0x484c, 0x48616c6162, 1);
INSERT INTO `oc_zone` VALUES (3130, 205, 0x484d, 0x48616d6168, 1);
INSERT INTO `oc_zone` VALUES (3131, 205, 0x4849, 0x48696d73, 1);
INSERT INTO `oc_zone` VALUES (3132, 205, 0x4944, 0x49646c6962, 1);
INSERT INTO `oc_zone` VALUES (3133, 205, 0x5244, 0x5269662044696d61736871, 1);
INSERT INTO `oc_zone` VALUES (3134, 205, 0x5441, 0x546172747573, 1);
INSERT INTO `oc_zone` VALUES (3135, 206, 0x4348, 0x4368616e672d687561, 1);
INSERT INTO `oc_zone` VALUES (3136, 206, 0x4349, 0x436869612d69, 1);
INSERT INTO `oc_zone` VALUES (3137, 206, 0x4853, 0x4873696e2d636875, 1);
INSERT INTO `oc_zone` VALUES (3138, 206, 0x484c, 0x4875612d6c69656e, 1);
INSERT INTO `oc_zone` VALUES (3139, 206, 0x494c, 0x492d6c616e, 1);
INSERT INTO `oc_zone` VALUES (3140, 206, 0x4b48, 0x4b616f2d687369756e6720636f756e7479, 1);
INSERT INTO `oc_zone` VALUES (3141, 206, 0x4b4d, 0x4b696e2d6d656e, 1);
INSERT INTO `oc_zone` VALUES (3142, 206, 0x4c43, 0x4c69656e2d636869616e67, 1);
INSERT INTO `oc_zone` VALUES (3143, 206, 0x4d4c, 0x4d69616f2d6c69, 1);
INSERT INTO `oc_zone` VALUES (3144, 206, 0x4e54, 0x4e616e2d74276f75, 1);
INSERT INTO `oc_zone` VALUES (3145, 206, 0x5048, 0x5027656e672d6875, 1);
INSERT INTO `oc_zone` VALUES (3146, 206, 0x5054, 0x5027696e672d74756e67, 1);
INSERT INTO `oc_zone` VALUES (3147, 206, 0x5447, 0x542761692d6368756e67, 1);
INSERT INTO `oc_zone` VALUES (3148, 206, 0x5441, 0x542761692d6e616e, 1);
INSERT INTO `oc_zone` VALUES (3149, 206, 0x5450, 0x542761692d70656920636f756e7479, 1);
INSERT INTO `oc_zone` VALUES (3150, 206, 0x5454, 0x542761692d74756e67, 1);
INSERT INTO `oc_zone` VALUES (3151, 206, 0x5459, 0x5427616f2d7975616e, 1);
INSERT INTO `oc_zone` VALUES (3152, 206, 0x594c, 0x59756e2d6c696e, 1);
INSERT INTO `oc_zone` VALUES (3153, 206, 0x4343, 0x436869612d692063697479, 1);
INSERT INTO `oc_zone` VALUES (3154, 206, 0x434c, 0x4368692d6c756e67, 1);
INSERT INTO `oc_zone` VALUES (3155, 206, 0x4843, 0x4873696e2d636875, 1);
INSERT INTO `oc_zone` VALUES (3156, 206, 0x5448, 0x542761692d6368756e67, 1);
INSERT INTO `oc_zone` VALUES (3157, 206, 0x544e, 0x542761692d6e616e, 1);
INSERT INTO `oc_zone` VALUES (3158, 206, 0x4b43, 0x4b616f2d687369756e672063697479, 1);
INSERT INTO `oc_zone` VALUES (3159, 206, 0x5443, 0x542761692d7065692063697479, 1);
INSERT INTO `oc_zone` VALUES (3160, 207, 0x4742, 0x476f726e6f2d426164616b687374616e, 1);
INSERT INTO `oc_zone` VALUES (3161, 207, 0x4b54, 0x4b6861746c6f6e, 1);
INSERT INTO `oc_zone` VALUES (3162, 207, 0x5355, 0x5375676864, 1);
INSERT INTO `oc_zone` VALUES (3163, 208, 0x4152, 0x417275736861, 1);
INSERT INTO `oc_zone` VALUES (3164, 208, 0x4453, 0x4461722065732053616c61616d, 1);
INSERT INTO `oc_zone` VALUES (3165, 208, 0x444f, 0x446f646f6d61, 1);
INSERT INTO `oc_zone` VALUES (3166, 208, 0x4952, 0x4972696e6761, 1);
INSERT INTO `oc_zone` VALUES (3167, 208, 0x4b41, 0x4b6167657261, 1);
INSERT INTO `oc_zone` VALUES (3168, 208, 0x4b49, 0x4b69676f6d61, 1);
INSERT INTO `oc_zone` VALUES (3169, 208, 0x4b4a, 0x4b696c696d616e6a61726f, 1);
INSERT INTO `oc_zone` VALUES (3170, 208, 0x4c4e, 0x4c696e6469, 1);
INSERT INTO `oc_zone` VALUES (3171, 208, 0x4d59, 0x4d616e79617261, 1);
INSERT INTO `oc_zone` VALUES (3172, 208, 0x4d52, 0x4d617261, 1);
INSERT INTO `oc_zone` VALUES (3173, 208, 0x4d42, 0x4d62657961, 1);
INSERT INTO `oc_zone` VALUES (3174, 208, 0x4d4f, 0x4d6f726f676f726f, 1);
INSERT INTO `oc_zone` VALUES (3175, 208, 0x4d54, 0x4d7477617261, 1);
INSERT INTO `oc_zone` VALUES (3176, 208, 0x4d57, 0x4d77616e7a61, 1);
INSERT INTO `oc_zone` VALUES (3177, 208, 0x504e, 0x50656d6261204e6f727468, 1);
INSERT INTO `oc_zone` VALUES (3178, 208, 0x5053, 0x50656d626120536f757468, 1);
INSERT INTO `oc_zone` VALUES (3179, 208, 0x5057, 0x5077616e69, 1);
INSERT INTO `oc_zone` VALUES (3180, 208, 0x524b, 0x52756b7761, 1);
INSERT INTO `oc_zone` VALUES (3181, 208, 0x5256, 0x527576756d61, 1);
INSERT INTO `oc_zone` VALUES (3182, 208, 0x5348, 0x5368696e79616e6761, 1);
INSERT INTO `oc_zone` VALUES (3183, 208, 0x5349, 0x53696e67696461, 1);
INSERT INTO `oc_zone` VALUES (3184, 208, 0x5442, 0x5461626f7261, 1);
INSERT INTO `oc_zone` VALUES (3185, 208, 0x544e, 0x54616e6761, 1);
INSERT INTO `oc_zone` VALUES (3186, 208, 0x5a43, 0x5a616e7a696261722043656e7472616c2f536f757468, 1);
INSERT INTO `oc_zone` VALUES (3187, 208, 0x5a4e, 0x5a616e7a69626172204e6f727468, 1);
INSERT INTO `oc_zone` VALUES (3188, 208, 0x5a55, 0x5a616e7a6962617220557262616e2f57657374, 1);
INSERT INTO `oc_zone` VALUES (3189, 209, 0x416d6e617420436861726f656e, 0x416d6e617420436861726f656e, 1);
INSERT INTO `oc_zone` VALUES (3190, 209, 0x416e672054686f6e67, 0x416e672054686f6e67, 1);
INSERT INTO `oc_zone` VALUES (3191, 209, 0x417975747468617961, 0x417975747468617961, 1);
INSERT INTO `oc_zone` VALUES (3192, 209, 0x42616e676b6f6b, 0x42616e676b6f6b, 1);
INSERT INTO `oc_zone` VALUES (3193, 209, 0x4275726972616d, 0x4275726972616d, 1);
INSERT INTO `oc_zone` VALUES (3194, 209, 0x43686163686f656e6773616f, 0x43686163686f656e6773616f, 1);
INSERT INTO `oc_zone` VALUES (3195, 209, 0x43686169204e6174, 0x43686169204e6174, 1);
INSERT INTO `oc_zone` VALUES (3196, 209, 0x4368616979617068756d, 0x4368616979617068756d, 1);
INSERT INTO `oc_zone` VALUES (3197, 209, 0x4368616e74686162757269, 0x4368616e74686162757269, 1);
INSERT INTO `oc_zone` VALUES (3198, 209, 0x436869616e67204d6169, 0x436869616e67204d6169, 1);
INSERT INTO `oc_zone` VALUES (3199, 209, 0x436869616e6720526169, 0x436869616e6720526169, 1);
INSERT INTO `oc_zone` VALUES (3200, 209, 0x43686f6e2042757269, 0x43686f6e2042757269, 1);
INSERT INTO `oc_zone` VALUES (3201, 209, 0x4368756d70686f6e, 0x4368756d70686f6e, 1);
INSERT INTO `oc_zone` VALUES (3202, 209, 0x4b616c6173696e, 0x4b616c6173696e, 1);
INSERT INTO `oc_zone` VALUES (3203, 209, 0x4b616d706861656e672050686574, 0x4b616d706861656e672050686574, 1);
INSERT INTO `oc_zone` VALUES (3204, 209, 0x4b616e6368616e6162757269, 0x4b616e6368616e6162757269, 1);
INSERT INTO `oc_zone` VALUES (3205, 209, 0x4b686f6e204b61656e, 0x4b686f6e204b61656e, 1);
INSERT INTO `oc_zone` VALUES (3206, 209, 0x4b72616269, 0x4b72616269, 1);
INSERT INTO `oc_zone` VALUES (3207, 209, 0x4c616d70616e67, 0x4c616d70616e67, 1);
INSERT INTO `oc_zone` VALUES (3208, 209, 0x4c616d7068756e, 0x4c616d7068756e, 1);
INSERT INTO `oc_zone` VALUES (3209, 209, 0x4c6f6569, 0x4c6f6569, 1);
INSERT INTO `oc_zone` VALUES (3210, 209, 0x4c6f702042757269, 0x4c6f702042757269, 1);
INSERT INTO `oc_zone` VALUES (3211, 209, 0x4d616520486f6e6720536f6e, 0x4d616520486f6e6720536f6e, 1);
INSERT INTO `oc_zone` VALUES (3212, 209, 0x4d61686120536172616b68616d, 0x4d61686120536172616b68616d, 1);
INSERT INTO `oc_zone` VALUES (3213, 209, 0x4d756b646168616e, 0x4d756b646168616e, 1);
INSERT INTO `oc_zone` VALUES (3214, 209, 0x4e616b686f6e204e61796f6b, 0x4e616b686f6e204e61796f6b, 1);
INSERT INTO `oc_zone` VALUES (3215, 209, 0x4e616b686f6e20506174686f6d, 0x4e616b686f6e20506174686f6d, 1);
INSERT INTO `oc_zone` VALUES (3216, 209, 0x4e616b686f6e205068616e6f6d, 0x4e616b686f6e205068616e6f6d, 1);
INSERT INTO `oc_zone` VALUES (3217, 209, 0x4e616b686f6e2052617463686173696d61, 0x4e616b686f6e2052617463686173696d61, 1);
INSERT INTO `oc_zone` VALUES (3218, 209, 0x4e616b686f6e20536177616e, 0x4e616b686f6e20536177616e, 1);
INSERT INTO `oc_zone` VALUES (3219, 209, 0x4e616b686f6e205369205468616d6d61726174, 0x4e616b686f6e205369205468616d6d61726174, 1);
INSERT INTO `oc_zone` VALUES (3220, 209, 0x4e616e, 0x4e616e, 1);
INSERT INTO `oc_zone` VALUES (3221, 209, 0x4e617261746869776174, 0x4e617261746869776174, 1);
INSERT INTO `oc_zone` VALUES (3222, 209, 0x4e6f6e6720427561204c616d706875, 0x4e6f6e6720427561204c616d706875, 1);
INSERT INTO `oc_zone` VALUES (3223, 209, 0x4e6f6e67204b686169, 0x4e6f6e67204b686169, 1);
INSERT INTO `oc_zone` VALUES (3224, 209, 0x4e6f6e74686162757269, 0x4e6f6e74686162757269, 1);
INSERT INTO `oc_zone` VALUES (3225, 209, 0x50617468756d205468616e69, 0x50617468756d205468616e69, 1);
INSERT INTO `oc_zone` VALUES (3226, 209, 0x50617474616e69, 0x50617474616e69, 1);
INSERT INTO `oc_zone` VALUES (3227, 209, 0x5068616e676e6761, 0x5068616e676e6761, 1);
INSERT INTO `oc_zone` VALUES (3228, 209, 0x506861747468616c756e67, 0x506861747468616c756e67, 1);
INSERT INTO `oc_zone` VALUES (3229, 209, 0x50686179616f, 0x50686179616f, 1);
INSERT INTO `oc_zone` VALUES (3230, 209, 0x5068657463686162756e, 0x5068657463686162756e, 1);
INSERT INTO `oc_zone` VALUES (3231, 209, 0x5068657463686162757269, 0x5068657463686162757269, 1);
INSERT INTO `oc_zone` VALUES (3232, 209, 0x50686963686974, 0x50686963686974, 1);
INSERT INTO `oc_zone` VALUES (3233, 209, 0x5068697473616e756c6f6b, 0x5068697473616e756c6f6b, 1);
INSERT INTO `oc_zone` VALUES (3234, 209, 0x5068726165, 0x5068726165, 1);
INSERT INTO `oc_zone` VALUES (3235, 209, 0x5068756b6574, 0x5068756b6574, 1);
INSERT INTO `oc_zone` VALUES (3236, 209, 0x5072616368696e2042757269, 0x5072616368696e2042757269, 1);
INSERT INTO `oc_zone` VALUES (3237, 209, 0x5072616368756170204b68697269204b68616e, 0x5072616368756170204b68697269204b68616e, 1);
INSERT INTO `oc_zone` VALUES (3238, 209, 0x52616e6f6e67, 0x52616e6f6e67, 1);
INSERT INTO `oc_zone` VALUES (3239, 209, 0x52617463686162757269, 0x52617463686162757269, 1);
INSERT INTO `oc_zone` VALUES (3240, 209, 0x5261796f6e67, 0x5261796f6e67, 1);
INSERT INTO `oc_zone` VALUES (3241, 209, 0x526f69204574, 0x526f69204574, 1);
INSERT INTO `oc_zone` VALUES (3242, 209, 0x5361204b61656f, 0x5361204b61656f, 1);
INSERT INTO `oc_zone` VALUES (3243, 209, 0x53616b6f6e204e616b686f6e, 0x53616b6f6e204e616b686f6e, 1);
INSERT INTO `oc_zone` VALUES (3244, 209, 0x53616d7574205072616b616e, 0x53616d7574205072616b616e, 1);
INSERT INTO `oc_zone` VALUES (3245, 209, 0x53616d75742053616b686f6e, 0x53616d75742053616b686f6e, 1);
INSERT INTO `oc_zone` VALUES (3246, 209, 0x53616d757420536f6e676b6872616d, 0x53616d757420536f6e676b6872616d, 1);
INSERT INTO `oc_zone` VALUES (3247, 209, 0x536172612042757269, 0x536172612042757269, 1);
INSERT INTO `oc_zone` VALUES (3248, 209, 0x536174756e, 0x536174756e, 1);
INSERT INTO `oc_zone` VALUES (3249, 209, 0x53696e672042757269, 0x53696e672042757269, 1);
INSERT INTO `oc_zone` VALUES (3250, 209, 0x536973616b6574, 0x536973616b6574, 1);
INSERT INTO `oc_zone` VALUES (3251, 209, 0x536f6e676b686c61, 0x536f6e676b686c61, 1);
INSERT INTO `oc_zone` VALUES (3252, 209, 0x53756b686f74686169, 0x53756b686f74686169, 1);
INSERT INTO `oc_zone` VALUES (3253, 209, 0x53757068616e2042757269, 0x53757068616e2042757269, 1);
INSERT INTO `oc_zone` VALUES (3254, 209, 0x5375726174205468616e69, 0x5375726174205468616e69, 1);
INSERT INTO `oc_zone` VALUES (3255, 209, 0x537572696e, 0x537572696e, 1);
INSERT INTO `oc_zone` VALUES (3256, 209, 0x54616b, 0x54616b, 1);
INSERT INTO `oc_zone` VALUES (3257, 209, 0x5472616e67, 0x5472616e67, 1);
INSERT INTO `oc_zone` VALUES (3258, 209, 0x54726174, 0x54726174, 1);
INSERT INTO `oc_zone` VALUES (3259, 209, 0x55626f6e205261746368617468616e69, 0x55626f6e205261746368617468616e69, 1);
INSERT INTO `oc_zone` VALUES (3260, 209, 0x55646f6e205468616e69, 0x55646f6e205468616e69, 1);
INSERT INTO `oc_zone` VALUES (3261, 209, 0x5574686169205468616e69, 0x5574686169205468616e69, 1);
INSERT INTO `oc_zone` VALUES (3262, 209, 0x557474617261646974, 0x557474617261646974, 1);
INSERT INTO `oc_zone` VALUES (3263, 209, 0x59616c61, 0x59616c61, 1);
INSERT INTO `oc_zone` VALUES (3264, 209, 0x5961736f74686f6e, 0x5961736f74686f6e, 1);
INSERT INTO `oc_zone` VALUES (3265, 210, 0x4b, 0x4b617261, 1);
INSERT INTO `oc_zone` VALUES (3266, 210, 0x50, 0x506c617465617578, 1);
INSERT INTO `oc_zone` VALUES (3267, 210, 0x53, 0x536176616e6573, 1);
INSERT INTO `oc_zone` VALUES (3268, 210, 0x43, 0x43656e7472616c65, 1);
INSERT INTO `oc_zone` VALUES (3269, 210, 0x4d, 0x4d61726974696d65, 1);
INSERT INTO `oc_zone` VALUES (3270, 211, 0x41, 0x4174616675, 1);
INSERT INTO `oc_zone` VALUES (3271, 211, 0x46, 0x46616b616f666f, 1);
INSERT INTO `oc_zone` VALUES (3272, 211, 0x4e, 0x4e756b756e6f6e75, 1);
INSERT INTO `oc_zone` VALUES (3273, 212, 0x48, 0x48612761706169, 1);
INSERT INTO `oc_zone` VALUES (3274, 212, 0x54, 0x546f6e676174617075, 1);
INSERT INTO `oc_zone` VALUES (3275, 212, 0x56, 0x566176612775, 1);
INSERT INTO `oc_zone` VALUES (3276, 213, 0x4354, 0x436f7576612f5461626171756974652f54616c7061726f, 1);
INSERT INTO `oc_zone` VALUES (3277, 213, 0x444d, 0x446965676f204d617274696e, 1);
INSERT INTO `oc_zone` VALUES (3278, 213, 0x4d52, 0x4d617961726f2f52696f20436c61726f, 1);
INSERT INTO `oc_zone` VALUES (3279, 213, 0x5044, 0x50656e616c2f44656265, 1);
INSERT INTO `oc_zone` VALUES (3280, 213, 0x5054, 0x5072696e63657320546f776e, 1);
INSERT INTO `oc_zone` VALUES (3281, 213, 0x5347, 0x53616e677265204772616e6465, 1);
INSERT INTO `oc_zone` VALUES (3282, 213, 0x534c, 0x53616e204a75616e2f4c6176656e74696c6c65, 1);
INSERT INTO `oc_zone` VALUES (3283, 213, 0x5349, 0x53697061726961, 1);
INSERT INTO `oc_zone` VALUES (3284, 213, 0x5450, 0x54756e6170756e612f50696172636f, 1);
INSERT INTO `oc_zone` VALUES (3285, 213, 0x5053, 0x506f7274206f6620537061696e, 1);
INSERT INTO `oc_zone` VALUES (3286, 213, 0x5346, 0x53616e204665726e616e646f, 1);
INSERT INTO `oc_zone` VALUES (3287, 213, 0x4152, 0x4172696d61, 1);
INSERT INTO `oc_zone` VALUES (3288, 213, 0x5046, 0x506f696e7420466f7274696e, 1);
INSERT INTO `oc_zone` VALUES (3289, 213, 0x4348, 0x4368616775616e6173, 1);
INSERT INTO `oc_zone` VALUES (3290, 213, 0x544f, 0x546f6261676f, 1);
INSERT INTO `oc_zone` VALUES (3291, 214, 0x4152, 0x417269616e61, 1);
INSERT INTO `oc_zone` VALUES (3292, 214, 0x424a, 0x42656a61, 1);
INSERT INTO `oc_zone` VALUES (3293, 214, 0x4241, 0x42656e2041726f7573, 1);
INSERT INTO `oc_zone` VALUES (3294, 214, 0x4249, 0x42697a65727465, 1);
INSERT INTO `oc_zone` VALUES (3295, 214, 0x4742, 0x4761626573, 1);
INSERT INTO `oc_zone` VALUES (3296, 214, 0x4746, 0x4761667361, 1);
INSERT INTO `oc_zone` VALUES (3297, 214, 0x4a45, 0x4a656e646f756261, 1);
INSERT INTO `oc_zone` VALUES (3298, 214, 0x4b52, 0x4b6169726f75616e, 1);
INSERT INTO `oc_zone` VALUES (3299, 214, 0x4b53, 0x4b6173736572696e65, 1);
INSERT INTO `oc_zone` VALUES (3300, 214, 0x4b42, 0x4b6562696c69, 1);
INSERT INTO `oc_zone` VALUES (3301, 214, 0x4b46, 0x4b6566, 1);
INSERT INTO `oc_zone` VALUES (3302, 214, 0x4d48, 0x4d6168646961, 1);
INSERT INTO `oc_zone` VALUES (3303, 214, 0x4d4e, 0x4d616e6f756261, 1);
INSERT INTO `oc_zone` VALUES (3304, 214, 0x4d45, 0x4d6564656e696e65, 1);
INSERT INTO `oc_zone` VALUES (3305, 214, 0x4d4f, 0x4d6f6e6173746972, 1);
INSERT INTO `oc_zone` VALUES (3306, 214, 0x4e41, 0x4e616265756c, 1);
INSERT INTO `oc_zone` VALUES (3307, 214, 0x5346, 0x53666178, 1);
INSERT INTO `oc_zone` VALUES (3308, 214, 0x5344, 0x53696469, 1);
INSERT INTO `oc_zone` VALUES (3309, 214, 0x534c, 0x53696c69616e61, 1);
INSERT INTO `oc_zone` VALUES (3310, 214, 0x534f, 0x536f75737365, 1);
INSERT INTO `oc_zone` VALUES (3311, 214, 0x5441, 0x546174616f75696e65, 1);
INSERT INTO `oc_zone` VALUES (3312, 214, 0x544f, 0x546f7a657572, 1);
INSERT INTO `oc_zone` VALUES (3313, 214, 0x5455, 0x54756e6973, 1);
INSERT INTO `oc_zone` VALUES (3314, 214, 0x5a41, 0x5a6167686f75616e, 1);
INSERT INTO `oc_zone` VALUES (3315, 215, 0x414441, 0x4164616e61, 1);
INSERT INTO `oc_zone` VALUES (3316, 215, 0x414449, 0x41646979616d616e, 1);
INSERT INTO `oc_zone` VALUES (3317, 215, 0x414659, 0x4166796f6e6b6172616869736172, 1);
INSERT INTO `oc_zone` VALUES (3318, 215, 0x414752, 0x41677269, 1);
INSERT INTO `oc_zone` VALUES (3319, 215, 0x414b53, 0x416b7361726179, 1);
INSERT INTO `oc_zone` VALUES (3320, 215, 0x414d41, 0x416d61737961, 1);
INSERT INTO `oc_zone` VALUES (3321, 215, 0x414e4b, 0x416e6b617261, 1);
INSERT INTO `oc_zone` VALUES (3322, 215, 0x414e54, 0x416e74616c7961, 1);
INSERT INTO `oc_zone` VALUES (3323, 215, 0x415244, 0x4172646168616e, 1);
INSERT INTO `oc_zone` VALUES (3324, 215, 0x415254, 0x41727476696e, 1);
INSERT INTO `oc_zone` VALUES (3325, 215, 0x415949, 0x417964696e, 1);
INSERT INTO `oc_zone` VALUES (3326, 215, 0x42414c, 0x42616c696b65736972, 1);
INSERT INTO `oc_zone` VALUES (3327, 215, 0x424152, 0x42617274696e, 1);
INSERT INTO `oc_zone` VALUES (3328, 215, 0x424154, 0x4261746d616e, 1);
INSERT INTO `oc_zone` VALUES (3329, 215, 0x424159, 0x42617962757274, 1);
INSERT INTO `oc_zone` VALUES (3330, 215, 0x42494c, 0x42696c6563696b, 1);
INSERT INTO `oc_zone` VALUES (3331, 215, 0x42494e, 0x42696e676f6c, 1);
INSERT INTO `oc_zone` VALUES (3332, 215, 0x424954, 0x4269746c6973, 1);
INSERT INTO `oc_zone` VALUES (3333, 215, 0x424f4c, 0x426f6c75, 1);
INSERT INTO `oc_zone` VALUES (3334, 215, 0x425244, 0x427572647572, 1);
INSERT INTO `oc_zone` VALUES (3335, 215, 0x425253, 0x4275727361, 1);
INSERT INTO `oc_zone` VALUES (3336, 215, 0x434b4c, 0x43616e616b6b616c65, 1);
INSERT INTO `oc_zone` VALUES (3337, 215, 0x434b52, 0x43616e6b697269, 1);
INSERT INTO `oc_zone` VALUES (3338, 215, 0x434f52, 0x436f72756d, 1);
INSERT INTO `oc_zone` VALUES (3339, 215, 0x44454e, 0x44656e697a6c69, 1);
INSERT INTO `oc_zone` VALUES (3340, 215, 0x444959, 0x446979617262616b6972, 1);
INSERT INTO `oc_zone` VALUES (3341, 215, 0x44555a, 0x44757a6365, 1);
INSERT INTO `oc_zone` VALUES (3342, 215, 0x454449, 0x456469726e65, 1);
INSERT INTO `oc_zone` VALUES (3343, 215, 0x454c41, 0x456c617a6967, 1);
INSERT INTO `oc_zone` VALUES (3344, 215, 0x455a43, 0x45727a696e63616e, 1);
INSERT INTO `oc_zone` VALUES (3345, 215, 0x455a52, 0x45727a7572756d, 1);
INSERT INTO `oc_zone` VALUES (3346, 215, 0x45534b, 0x45736b697365686972, 1);
INSERT INTO `oc_zone` VALUES (3347, 215, 0x47415a, 0x47617a69616e746570, 1);
INSERT INTO `oc_zone` VALUES (3348, 215, 0x474952, 0x4769726573756e, 1);
INSERT INTO `oc_zone` VALUES (3349, 215, 0x474d53, 0x47756d757368616e65, 1);
INSERT INTO `oc_zone` VALUES (3350, 215, 0x484b52, 0x48616b6b617269, 1);
INSERT INTO `oc_zone` VALUES (3351, 215, 0x485459, 0x4861746179, 1);
INSERT INTO `oc_zone` VALUES (3352, 215, 0x494744, 0x4967646972, 1);
INSERT INTO `oc_zone` VALUES (3353, 215, 0x495350, 0x49737061727461, 1);
INSERT INTO `oc_zone` VALUES (3354, 215, 0x495354, 0x497374616e62756c, 1);
INSERT INTO `oc_zone` VALUES (3355, 215, 0x495a4d, 0x497a6d6972, 1);
INSERT INTO `oc_zone` VALUES (3356, 215, 0x4b4148, 0x4b616872616d616e6d61726173, 1);
INSERT INTO `oc_zone` VALUES (3357, 215, 0x4b5242, 0x4b61726162756b, 1);
INSERT INTO `oc_zone` VALUES (3358, 215, 0x4b524d, 0x4b6172616d616e, 1);
INSERT INTO `oc_zone` VALUES (3359, 215, 0x4b5253, 0x4b617273, 1);
INSERT INTO `oc_zone` VALUES (3360, 215, 0x4b4153, 0x4b617374616d6f6e75, 1);
INSERT INTO `oc_zone` VALUES (3361, 215, 0x4b4159, 0x4b617973657269, 1);
INSERT INTO `oc_zone` VALUES (3362, 215, 0x4b4c53, 0x4b696c6973, 1);
INSERT INTO `oc_zone` VALUES (3363, 215, 0x4b524b, 0x4b6972696b6b616c65, 1);
INSERT INTO `oc_zone` VALUES (3364, 215, 0x4b4c52, 0x4b69726b6c6172656c69, 1);
INSERT INTO `oc_zone` VALUES (3365, 215, 0x4b5248, 0x4b69727365686972, 1);
INSERT INTO `oc_zone` VALUES (3366, 215, 0x4b4f43, 0x4b6f6361656c69, 1);
INSERT INTO `oc_zone` VALUES (3367, 215, 0x4b4f4e, 0x4b6f6e7961, 1);
INSERT INTO `oc_zone` VALUES (3368, 215, 0x4b5554, 0x4b757461687961, 1);
INSERT INTO `oc_zone` VALUES (3369, 215, 0x4d414c, 0x4d616c61747961, 1);
INSERT INTO `oc_zone` VALUES (3370, 215, 0x4d414e, 0x4d616e697361, 1);
INSERT INTO `oc_zone` VALUES (3371, 215, 0x4d4152, 0x4d617264696e, 1);
INSERT INTO `oc_zone` VALUES (3372, 215, 0x4d4552, 0x4d657273696e, 1);
INSERT INTO `oc_zone` VALUES (3373, 215, 0x4d5547, 0x4d75676c61, 1);
INSERT INTO `oc_zone` VALUES (3374, 215, 0x4d5553, 0x4d7573, 1);
INSERT INTO `oc_zone` VALUES (3375, 215, 0x4e4556, 0x4e65767365686972, 1);
INSERT INTO `oc_zone` VALUES (3376, 215, 0x4e4947, 0x4e69676465, 1);
INSERT INTO `oc_zone` VALUES (3377, 215, 0x4f5244, 0x4f726475, 1);
INSERT INTO `oc_zone` VALUES (3378, 215, 0x4f534d, 0x4f736d616e697965, 1);
INSERT INTO `oc_zone` VALUES (3379, 215, 0x52495a, 0x52697a65, 1);
INSERT INTO `oc_zone` VALUES (3380, 215, 0x53414b, 0x53616b61727961, 1);
INSERT INTO `oc_zone` VALUES (3381, 215, 0x53414d, 0x53616d73756e, 1);
INSERT INTO `oc_zone` VALUES (3382, 215, 0x53414e, 0x53616e6c6975726661, 1);
INSERT INTO `oc_zone` VALUES (3383, 215, 0x534949, 0x5369697274, 1);
INSERT INTO `oc_zone` VALUES (3384, 215, 0x53494e, 0x53696e6f70, 1);
INSERT INTO `oc_zone` VALUES (3385, 215, 0x534952, 0x5369726e616b, 1);
INSERT INTO `oc_zone` VALUES (3386, 215, 0x534956, 0x5369766173, 1);
INSERT INTO `oc_zone` VALUES (3387, 215, 0x54454c, 0x54656b6972646167, 1);
INSERT INTO `oc_zone` VALUES (3388, 215, 0x544f4b, 0x546f6b6174, 1);
INSERT INTO `oc_zone` VALUES (3389, 215, 0x545241, 0x547261627a6f6e, 1);
INSERT INTO `oc_zone` VALUES (3390, 215, 0x54554e, 0x54756e63656c69, 1);
INSERT INTO `oc_zone` VALUES (3391, 215, 0x55534b, 0x5573616b, 1);
INSERT INTO `oc_zone` VALUES (3392, 215, 0x56414e, 0x56616e, 1);
INSERT INTO `oc_zone` VALUES (3393, 215, 0x59414c, 0x59616c6f7661, 1);
INSERT INTO `oc_zone` VALUES (3394, 215, 0x594f5a, 0x596f7a676174, 1);
INSERT INTO `oc_zone` VALUES (3395, 215, 0x5a4f4e, 0x5a6f6e67756c64616b, 1);
INSERT INTO `oc_zone` VALUES (3396, 216, 0x41, 0x4168616c2057656c6179617479, 1);
INSERT INTO `oc_zone` VALUES (3397, 216, 0x42, 0x42616c6b616e2057656c6179617479, 1);
INSERT INTO `oc_zone` VALUES (3398, 216, 0x44, 0x44617368686f77757a2057656c6179617479, 1);
INSERT INTO `oc_zone` VALUES (3399, 216, 0x4c, 0x4c656261702057656c6179617479, 1);
INSERT INTO `oc_zone` VALUES (3400, 216, 0x4d, 0x4d6172792057656c6179617479, 1);
INSERT INTO `oc_zone` VALUES (3401, 217, 0x4143, 0x416d626572677269732043617973, 1);
INSERT INTO `oc_zone` VALUES (3402, 217, 0x4443, 0x44656c6c697320436179, 1);
INSERT INTO `oc_zone` VALUES (3403, 217, 0x4643, 0x4672656e636820436179, 1);
INSERT INTO `oc_zone` VALUES (3404, 217, 0x4c57, 0x4c6974746c6520576174657220436179, 1);
INSERT INTO `oc_zone` VALUES (3405, 217, 0x5243, 0x506172726f7420436179, 1);
INSERT INTO `oc_zone` VALUES (3406, 217, 0x504e, 0x50696e6520436179, 1);
INSERT INTO `oc_zone` VALUES (3407, 217, 0x534c, 0x53616c7420436179, 1);
INSERT INTO `oc_zone` VALUES (3408, 217, 0x4754, 0x4772616e64205475726b, 1);
INSERT INTO `oc_zone` VALUES (3409, 217, 0x5343, 0x536f75746820436169636f73, 1);
INSERT INTO `oc_zone` VALUES (3410, 217, 0x4543, 0x4561737420436169636f73, 1);
INSERT INTO `oc_zone` VALUES (3411, 217, 0x4d43, 0x4d6964646c6520436169636f73, 1);
INSERT INTO `oc_zone` VALUES (3412, 217, 0x4e43, 0x4e6f72746820436169636f73, 1);
INSERT INTO `oc_zone` VALUES (3413, 217, 0x5052, 0x50726f766964656e6369616c6573, 1);
INSERT INTO `oc_zone` VALUES (3414, 217, 0x5743, 0x5765737420436169636f73, 1);
INSERT INTO `oc_zone` VALUES (3415, 218, 0x4e4d47, 0x4e616e756d616e6761, 1);
INSERT INTO `oc_zone` VALUES (3416, 218, 0x4e4c4b, 0x4e69756c616b697461, 1);
INSERT INTO `oc_zone` VALUES (3417, 218, 0x4e544f, 0x4e697574616f, 1);
INSERT INTO `oc_zone` VALUES (3418, 218, 0x46554e, 0x46756e6166757469, 1);
INSERT INTO `oc_zone` VALUES (3419, 218, 0x4e4d45, 0x4e616e756d6561, 1);
INSERT INTO `oc_zone` VALUES (3420, 218, 0x4e5549, 0x4e7569, 1);
INSERT INTO `oc_zone` VALUES (3421, 218, 0x4e4654, 0x4e756b756665746175, 1);
INSERT INTO `oc_zone` VALUES (3422, 218, 0x4e4c4c, 0x4e756b756c61656c6165, 1);
INSERT INTO `oc_zone` VALUES (3423, 218, 0x564149, 0x56616974757075, 1);
INSERT INTO `oc_zone` VALUES (3424, 219, 0x4b414c, 0x4b616c616e67616c61, 1);
INSERT INTO `oc_zone` VALUES (3425, 219, 0x4b4d50, 0x4b616d70616c61, 1);
INSERT INTO `oc_zone` VALUES (3426, 219, 0x4b4159, 0x4b6179756e6761, 1);
INSERT INTO `oc_zone` VALUES (3427, 219, 0x4b4942, 0x4b69626f6761, 1);
INSERT INTO `oc_zone` VALUES (3428, 219, 0x4c5557, 0x4c757765726f, 1);
INSERT INTO `oc_zone` VALUES (3429, 219, 0x4d4153, 0x4d6173616b61, 1);
INSERT INTO `oc_zone` VALUES (3430, 219, 0x4d5049, 0x4d70696769, 1);
INSERT INTO `oc_zone` VALUES (3431, 219, 0x4d5542, 0x4d7562656e6465, 1);
INSERT INTO `oc_zone` VALUES (3432, 219, 0x4d554b, 0x4d756b6f6e6f, 1);
INSERT INTO `oc_zone` VALUES (3433, 219, 0x4e4b53, 0x4e616b61736f6e676f6c61, 1);
INSERT INTO `oc_zone` VALUES (3434, 219, 0x52414b, 0x52616b6169, 1);
INSERT INTO `oc_zone` VALUES (3435, 219, 0x53454d, 0x53656d626162756c65, 1);
INSERT INTO `oc_zone` VALUES (3436, 219, 0x57414b, 0x57616b69736f, 1);
INSERT INTO `oc_zone` VALUES (3437, 219, 0x425547, 0x427567697269, 1);
INSERT INTO `oc_zone` VALUES (3438, 219, 0x425553, 0x4275736961, 1);
INSERT INTO `oc_zone` VALUES (3439, 219, 0x494741, 0x4967616e6761, 1);
INSERT INTO `oc_zone` VALUES (3440, 219, 0x4a494e, 0x4a696e6a61, 1);
INSERT INTO `oc_zone` VALUES (3441, 219, 0x4b4142, 0x4b61626572616d6169646f, 1);
INSERT INTO `oc_zone` VALUES (3442, 219, 0x4b4d4c, 0x4b616d756c69, 1);
INSERT INTO `oc_zone` VALUES (3443, 219, 0x4b5043, 0x4b617063686f727761, 1);
INSERT INTO `oc_zone` VALUES (3444, 219, 0x4b544b, 0x4b6174616b7769, 1);
INSERT INTO `oc_zone` VALUES (3445, 219, 0x4b554d, 0x4b756d69, 1);
INSERT INTO `oc_zone` VALUES (3446, 219, 0x4d4159, 0x4d6179756765, 1);
INSERT INTO `oc_zone` VALUES (3447, 219, 0x4d4241, 0x4d62616c65, 1);
INSERT INTO `oc_zone` VALUES (3448, 219, 0x50414c, 0x50616c6c697361, 1);
INSERT INTO `oc_zone` VALUES (3449, 219, 0x534952, 0x5369726f6e6b6f, 1);
INSERT INTO `oc_zone` VALUES (3450, 219, 0x534f52, 0x536f726f7469, 1);
INSERT INTO `oc_zone` VALUES (3451, 219, 0x544f52, 0x546f726f726f, 1);
INSERT INTO `oc_zone` VALUES (3452, 219, 0x41444a, 0x41646a756d616e69, 1);
INSERT INTO `oc_zone` VALUES (3453, 219, 0x415043, 0x41706163, 1);
INSERT INTO `oc_zone` VALUES (3454, 219, 0x415255, 0x41727561, 1);
INSERT INTO `oc_zone` VALUES (3455, 219, 0x47554c, 0x47756c75, 1);
INSERT INTO `oc_zone` VALUES (3456, 219, 0x4b4954, 0x4b697467756d, 1);
INSERT INTO `oc_zone` VALUES (3457, 219, 0x4b4f54, 0x4b6f7469646f, 1);
INSERT INTO `oc_zone` VALUES (3458, 219, 0x4c4952, 0x4c697261, 1);
INSERT INTO `oc_zone` VALUES (3459, 219, 0x4d5254, 0x4d6f726f746f, 1);
INSERT INTO `oc_zone` VALUES (3460, 219, 0x4d4f59, 0x4d6f796f, 1);
INSERT INTO `oc_zone` VALUES (3461, 219, 0x4e414b, 0x4e616b61706972697069726974, 1);
INSERT INTO `oc_zone` VALUES (3462, 219, 0x4e4542, 0x4e65626269, 1);
INSERT INTO `oc_zone` VALUES (3463, 219, 0x504144, 0x5061646572, 1);
INSERT INTO `oc_zone` VALUES (3464, 219, 0x59554d, 0x59756d6265, 1);
INSERT INTO `oc_zone` VALUES (3465, 219, 0x42554e, 0x42756e6469627567796f, 1);
INSERT INTO `oc_zone` VALUES (3466, 219, 0x425348, 0x42757368656e7969, 1);
INSERT INTO `oc_zone` VALUES (3467, 219, 0x484f49, 0x486f696d61, 1);
INSERT INTO `oc_zone` VALUES (3468, 219, 0x4b424c, 0x4b6162616c65, 1);
INSERT INTO `oc_zone` VALUES (3469, 219, 0x4b4152, 0x4b616261726f6c65, 1);
INSERT INTO `oc_zone` VALUES (3470, 219, 0x4b414d, 0x4b616d77656e6765, 1);
INSERT INTO `oc_zone` VALUES (3471, 219, 0x4b414e, 0x4b616e756e6775, 1);
INSERT INTO `oc_zone` VALUES (3472, 219, 0x4b4153, 0x4b6173657365, 1);
INSERT INTO `oc_zone` VALUES (3473, 219, 0x4b4241, 0x4b696261616c65, 1);
INSERT INTO `oc_zone` VALUES (3474, 219, 0x4b4953, 0x4b69736f726f, 1);
INSERT INTO `oc_zone` VALUES (3475, 219, 0x4b5945, 0x4b79656e6a6f6a6f, 1);
INSERT INTO `oc_zone` VALUES (3476, 219, 0x4d534e, 0x4d6173696e6469, 1);
INSERT INTO `oc_zone` VALUES (3477, 219, 0x4d4252, 0x4d626172617261, 1);
INSERT INTO `oc_zone` VALUES (3478, 219, 0x4e5455, 0x4e74756e67616d6f, 1);
INSERT INTO `oc_zone` VALUES (3479, 219, 0x52554b, 0x52756b756e67697269, 1);
INSERT INTO `oc_zone` VALUES (3480, 220, 0x434b, 0x436865726b617379, 1);
INSERT INTO `oc_zone` VALUES (3481, 220, 0x4348, 0x436865726e69686976, 1);
INSERT INTO `oc_zone` VALUES (3482, 220, 0x4356, 0x436865726e6976747369, 1);
INSERT INTO `oc_zone` VALUES (3483, 220, 0x4352, 0x4372696d6561, 1);
INSERT INTO `oc_zone` VALUES (3484, 220, 0x444e, 0x446e6970726f706574726f7673276b, 1);
INSERT INTO `oc_zone` VALUES (3485, 220, 0x444f, 0x446f6e657473276b, 1);
INSERT INTO `oc_zone` VALUES (3486, 220, 0x4956, 0x4976616e6f2d4672616e6b697673276b, 1);
INSERT INTO `oc_zone` VALUES (3487, 220, 0x4b4c, 0x4b6861726b6976204b686572736f6e, 1);
INSERT INTO `oc_zone` VALUES (3488, 220, 0x4b4d, 0x4b686d656c276e797473276b7979, 1);
INSERT INTO `oc_zone` VALUES (3489, 220, 0x4b52, 0x4b69726f766f68726164, 1);
INSERT INTO `oc_zone` VALUES (3490, 220, 0x4b56, 0x4b696576, 1);
INSERT INTO `oc_zone` VALUES (3491, 220, 0x4b59, 0x4b79796976, 1);
INSERT INTO `oc_zone` VALUES (3492, 220, 0x4c55, 0x4c7568616e73276b, 1);
INSERT INTO `oc_zone` VALUES (3493, 220, 0x4c56, 0x4c27766976, 1);
INSERT INTO `oc_zone` VALUES (3494, 220, 0x4d59, 0x4d796b6f6c61796976, 1);
INSERT INTO `oc_zone` VALUES (3495, 220, 0x4f44, 0x4f64657361, 1);
INSERT INTO `oc_zone` VALUES (3496, 220, 0x504f, 0x506f6c74617661, 1);
INSERT INTO `oc_zone` VALUES (3497, 220, 0x5249, 0x5269766e65, 1);
INSERT INTO `oc_zone` VALUES (3498, 220, 0x5345, 0x5365766173746f706f6c, 1);
INSERT INTO `oc_zone` VALUES (3499, 220, 0x5355, 0x53756d79, 1);
INSERT INTO `oc_zone` VALUES (3500, 220, 0x5445, 0x5465726e6f70696c27, 1);
INSERT INTO `oc_zone` VALUES (3501, 220, 0x5649, 0x56696e6e7974737961, 1);
INSERT INTO `oc_zone` VALUES (3502, 220, 0x564f, 0x566f6c796e27, 1);
INSERT INTO `oc_zone` VALUES (3503, 220, 0x5a4b, 0x5a616b6172706174747961, 1);
INSERT INTO `oc_zone` VALUES (3504, 220, 0x5a41, 0x5a61706f72697a687a687961, 1);
INSERT INTO `oc_zone` VALUES (3505, 220, 0x5a48, 0x5a6879746f6d7972, 1);
INSERT INTO `oc_zone` VALUES (3506, 221, 0x415a, 0x416275205a616279, 1);
INSERT INTO `oc_zone` VALUES (3507, 221, 0x414a, 0x27416a6d616e, 1);
INSERT INTO `oc_zone` VALUES (3508, 221, 0x4655, 0x416c2046756a6179726168, 1);
INSERT INTO `oc_zone` VALUES (3509, 221, 0x5348, 0x417368205368617269716168, 1);
INSERT INTO `oc_zone` VALUES (3510, 221, 0x4455, 0x447562617979, 1);
INSERT INTO `oc_zone` VALUES (3511, 221, 0x524b, 0x5227617320616c204b6861796d6168, 1);
INSERT INTO `oc_zone` VALUES (3512, 221, 0x5551, 0x556d6d20616c205161797761796e, 1);
INSERT INTO `oc_zone` VALUES (3513, 222, 0x41424e, 0x416265726465656e, 1);
INSERT INTO `oc_zone` VALUES (3514, 222, 0x41424e53, 0x416265726465656e7368697265, 1);
INSERT INTO `oc_zone` VALUES (3515, 222, 0x414e47, 0x416e676c65736579, 1);
INSERT INTO `oc_zone` VALUES (3516, 222, 0x414753, 0x416e677573, 1);
INSERT INTO `oc_zone` VALUES (3517, 222, 0x415259, 0x417267796c6c20616e642042757465, 1);
INSERT INTO `oc_zone` VALUES (3518, 222, 0x42454453, 0x426564666f72647368697265, 1);
INSERT INTO `oc_zone` VALUES (3519, 222, 0x4245524b53, 0x4265726b7368697265, 1);
INSERT INTO `oc_zone` VALUES (3520, 222, 0x424c41, 0x426c61656e6175204777656e74, 1);
INSERT INTO `oc_zone` VALUES (3521, 222, 0x425249, 0x4272696467656e64, 1);
INSERT INTO `oc_zone` VALUES (3522, 222, 0x4253544c, 0x42726973746f6c, 1);
INSERT INTO `oc_zone` VALUES (3523, 222, 0x4255434b53, 0x4275636b696e6768616d7368697265, 1);
INSERT INTO `oc_zone` VALUES (3524, 222, 0x434145, 0x436165727068696c6c79, 1);
INSERT INTO `oc_zone` VALUES (3525, 222, 0x43414d4253, 0x43616d6272696467657368697265, 1);
INSERT INTO `oc_zone` VALUES (3526, 222, 0x434446, 0x43617264696666, 1);
INSERT INTO `oc_zone` VALUES (3527, 222, 0x4341524d, 0x4361726d61727468656e7368697265, 1);
INSERT INTO `oc_zone` VALUES (3528, 222, 0x4344474e, 0x43657265646967696f6e, 1);
INSERT INTO `oc_zone` VALUES (3529, 222, 0x43484553, 0x4368657368697265, 1);
INSERT INTO `oc_zone` VALUES (3530, 222, 0x434c41434b, 0x436c61636b6d616e6e616e7368697265, 1);
INSERT INTO `oc_zone` VALUES (3531, 222, 0x434f4e, 0x436f6e7779, 1);
INSERT INTO `oc_zone` VALUES (3532, 222, 0x434f524e, 0x436f726e77616c6c, 1);
INSERT INTO `oc_zone` VALUES (3533, 222, 0x444e4247, 0x44656e626967687368697265, 1);
INSERT INTO `oc_zone` VALUES (3534, 222, 0x4445524259, 0x44657262797368697265, 1);
INSERT INTO `oc_zone` VALUES (3535, 222, 0x44564e, 0x4465766f6e, 1);
INSERT INTO `oc_zone` VALUES (3536, 222, 0x444f52, 0x446f72736574, 1);
INSERT INTO `oc_zone` VALUES (3537, 222, 0x44474c, 0x44756d667269657320616e642047616c6c6f776179, 1);
INSERT INTO `oc_zone` VALUES (3538, 222, 0x44554e44, 0x44756e646565, 1);
INSERT INTO `oc_zone` VALUES (3539, 222, 0x44484d, 0x44757268616d, 1);
INSERT INTO `oc_zone` VALUES (3540, 222, 0x41525945, 0x45617374204179727368697265, 1);
INSERT INTO `oc_zone` VALUES (3541, 222, 0x44554e4245, 0x456173742044756e626172746f6e7368697265, 1);
INSERT INTO `oc_zone` VALUES (3542, 222, 0x4c4f5445, 0x45617374204c6f746869616e, 1);
INSERT INTO `oc_zone` VALUES (3543, 222, 0x52454e45, 0x456173742052656e667265777368697265, 1);
INSERT INTO `oc_zone` VALUES (3544, 222, 0x45525953, 0x4561737420526964696e67206f6620596f726b7368697265, 1);
INSERT INTO `oc_zone` VALUES (3545, 222, 0x535845, 0x4561737420537573736578, 1);
INSERT INTO `oc_zone` VALUES (3546, 222, 0x4544494e, 0x4564696e6275726768, 1);
INSERT INTO `oc_zone` VALUES (3547, 222, 0x455358, 0x4573736578, 1);
INSERT INTO `oc_zone` VALUES (3548, 222, 0x46414c4b, 0x46616c6b69726b, 1);
INSERT INTO `oc_zone` VALUES (3549, 222, 0x464645, 0x46696665, 1);
INSERT INTO `oc_zone` VALUES (3550, 222, 0x464c494e54, 0x466c696e747368697265, 1);
INSERT INTO `oc_zone` VALUES (3551, 222, 0x474c4153, 0x476c6173676f77, 1);
INSERT INTO `oc_zone` VALUES (3552, 222, 0x474c4f53, 0x476c6f756365737465727368697265, 1);
INSERT INTO `oc_zone` VALUES (3553, 222, 0x4c444e, 0x47726561746572204c6f6e646f6e, 1);
INSERT INTO `oc_zone` VALUES (3554, 222, 0x4d4348, 0x47726561746572204d616e63686573746572, 1);
INSERT INTO `oc_zone` VALUES (3555, 222, 0x474444, 0x4777796e656464, 1);
INSERT INTO `oc_zone` VALUES (3556, 222, 0x48414e5453, 0x48616d707368697265, 1);
INSERT INTO `oc_zone` VALUES (3557, 222, 0x485752, 0x48657265666f72647368697265, 1);
INSERT INTO `oc_zone` VALUES (3558, 222, 0x4845525453, 0x48657274666f72647368697265, 1);
INSERT INTO `oc_zone` VALUES (3559, 222, 0x484c44, 0x486967686c616e6473, 1);
INSERT INTO `oc_zone` VALUES (3560, 222, 0x49564552, 0x496e766572636c796465, 1);
INSERT INTO `oc_zone` VALUES (3561, 222, 0x494f57, 0x49736c65206f66205769676874, 1);
INSERT INTO `oc_zone` VALUES (3562, 222, 0x4b4e54, 0x4b656e74, 1);
INSERT INTO `oc_zone` VALUES (3563, 222, 0x4c414e4353, 0x4c616e63617368697265, 1);
INSERT INTO `oc_zone` VALUES (3564, 222, 0x4c45494353, 0x4c65696365737465727368697265, 1);
INSERT INTO `oc_zone` VALUES (3565, 222, 0x4c494e4353, 0x4c696e636f6c6e7368697265, 1);
INSERT INTO `oc_zone` VALUES (3566, 222, 0x4d5359, 0x4d657273657973696465, 1);
INSERT INTO `oc_zone` VALUES (3567, 222, 0x4d455254, 0x4d6572746879722054796466696c, 1);
INSERT INTO `oc_zone` VALUES (3568, 222, 0x4d4c4f54, 0x4d69646c6f746869616e, 1);
INSERT INTO `oc_zone` VALUES (3569, 222, 0x4d4d4f555448, 0x4d6f6e6d6f7574687368697265, 1);
INSERT INTO `oc_zone` VALUES (3570, 222, 0x4d4f524159, 0x4d6f726179, 1);
INSERT INTO `oc_zone` VALUES (3571, 222, 0x4e505254414c, 0x4e6561746820506f72742054616c626f74, 1);
INSERT INTO `oc_zone` VALUES (3572, 222, 0x4e45575054, 0x4e6577706f7274, 1);
INSERT INTO `oc_zone` VALUES (3573, 222, 0x4e4f52, 0x4e6f72666f6c6b, 1);
INSERT INTO `oc_zone` VALUES (3574, 222, 0x4152594e, 0x4e6f727468204179727368697265, 1);
INSERT INTO `oc_zone` VALUES (3575, 222, 0x4c414e4e, 0x4e6f727468204c616e61726b7368697265, 1);
INSERT INTO `oc_zone` VALUES (3576, 222, 0x59534e, 0x4e6f72746820596f726b7368697265, 1);
INSERT INTO `oc_zone` VALUES (3577, 222, 0x4e484d, 0x4e6f727468616d70746f6e7368697265, 1);
INSERT INTO `oc_zone` VALUES (3578, 222, 0x4e4c44, 0x4e6f727468756d6265726c616e64, 1);
INSERT INTO `oc_zone` VALUES (3579, 222, 0x4e4f54, 0x4e6f7474696e6768616d7368697265, 1);
INSERT INTO `oc_zone` VALUES (3580, 222, 0x4f524b, 0x4f726b6e65792049736c616e6473, 1);
INSERT INTO `oc_zone` VALUES (3581, 222, 0x4f4645, 0x4f78666f72647368697265, 1);
INSERT INTO `oc_zone` VALUES (3582, 222, 0x50454d, 0x50656d62726f6b657368697265, 1);
INSERT INTO `oc_zone` VALUES (3583, 222, 0x5045525448, 0x506572746820616e64204b696e726f7373, 1);
INSERT INTO `oc_zone` VALUES (3584, 222, 0x505753, 0x506f777973, 1);
INSERT INTO `oc_zone` VALUES (3585, 222, 0x52454e, 0x52656e667265777368697265, 1);
INSERT INTO `oc_zone` VALUES (3586, 222, 0x52484f4e, 0x52686f6e6464612043796e6f6e2054616666, 1);
INSERT INTO `oc_zone` VALUES (3587, 222, 0x525554, 0x5275746c616e64, 1);
INSERT INTO `oc_zone` VALUES (3588, 222, 0x424f52, 0x53636f747469736820426f7264657273, 1);
INSERT INTO `oc_zone` VALUES (3589, 222, 0x53484554, 0x536865746c616e642049736c616e6473, 1);
INSERT INTO `oc_zone` VALUES (3590, 222, 0x535045, 0x5368726f707368697265, 1);
INSERT INTO `oc_zone` VALUES (3591, 222, 0x534f4d, 0x536f6d6572736574, 1);
INSERT INTO `oc_zone` VALUES (3592, 222, 0x41525953, 0x536f757468204179727368697265, 1);
INSERT INTO `oc_zone` VALUES (3593, 222, 0x4c414e53, 0x536f757468204c616e61726b7368697265, 1);
INSERT INTO `oc_zone` VALUES (3594, 222, 0x595353, 0x536f75746820596f726b7368697265, 1);
INSERT INTO `oc_zone` VALUES (3595, 222, 0x534644, 0x53746166666f72647368697265, 1);
INSERT INTO `oc_zone` VALUES (3596, 222, 0x53544952, 0x537469726c696e67, 1);
INSERT INTO `oc_zone` VALUES (3597, 222, 0x53464b, 0x537566666f6c6b, 1);
INSERT INTO `oc_zone` VALUES (3598, 222, 0x535259, 0x537572726579, 1);
INSERT INTO `oc_zone` VALUES (3599, 222, 0x5357414e, 0x5377616e736561, 1);
INSERT INTO `oc_zone` VALUES (3600, 222, 0x544f5246, 0x546f726661656e, 1);
INSERT INTO `oc_zone` VALUES (3601, 222, 0x545752, 0x54796e6520616e642057656172, 1);
INSERT INTO `oc_zone` VALUES (3602, 222, 0x56474c414d, 0x56616c65206f6620476c616d6f7267616e, 1);
INSERT INTO `oc_zone` VALUES (3603, 222, 0x5741524b53, 0x5761727769636b7368697265, 1);
INSERT INTO `oc_zone` VALUES (3604, 222, 0x5744554e, 0x576573742044756e626172746f6e7368697265, 1);
INSERT INTO `oc_zone` VALUES (3605, 222, 0x574c4f54, 0x57657374204c6f746869616e, 1);
INSERT INTO `oc_zone` VALUES (3606, 222, 0x574d44, 0x57657374204d69646c616e6473, 1);
INSERT INTO `oc_zone` VALUES (3607, 222, 0x535857, 0x5765737420537573736578, 1);
INSERT INTO `oc_zone` VALUES (3608, 222, 0x595357, 0x5765737420596f726b7368697265, 1);
INSERT INTO `oc_zone` VALUES (3609, 222, 0x57494c, 0x5765737465726e2049736c6573, 1);
INSERT INTO `oc_zone` VALUES (3610, 222, 0x574c54, 0x57696c747368697265, 1);
INSERT INTO `oc_zone` VALUES (3611, 222, 0x574f524353, 0x576f726365737465727368697265, 1);
INSERT INTO `oc_zone` VALUES (3612, 222, 0x575258, 0x5772657868616d, 1);
INSERT INTO `oc_zone` VALUES (3613, 223, 0x414c, 0x416c6162616d61, 1);
INSERT INTO `oc_zone` VALUES (3614, 223, 0x414b, 0x416c61736b61, 1);
INSERT INTO `oc_zone` VALUES (3615, 223, 0x4153, 0x416d65726963616e2053616d6f61, 1);
INSERT INTO `oc_zone` VALUES (3616, 223, 0x415a, 0x4172697a6f6e61, 1);
INSERT INTO `oc_zone` VALUES (3617, 223, 0x4152, 0x41726b616e736173, 1);
INSERT INTO `oc_zone` VALUES (3618, 223, 0x4146, 0x41726d656420466f7263657320416672696361, 1);
INSERT INTO `oc_zone` VALUES (3619, 223, 0x4141, 0x41726d656420466f7263657320416d657269636173, 1);
INSERT INTO `oc_zone` VALUES (3620, 223, 0x4143, 0x41726d656420466f726365732043616e616461, 1);
INSERT INTO `oc_zone` VALUES (3621, 223, 0x4145, 0x41726d656420466f72636573204575726f7065, 1);
INSERT INTO `oc_zone` VALUES (3622, 223, 0x414d, 0x41726d656420466f72636573204d6964646c652045617374, 1);
INSERT INTO `oc_zone` VALUES (3623, 223, 0x4150, 0x41726d656420466f726365732050616369666963, 1);
INSERT INTO `oc_zone` VALUES (3624, 223, 0x4341, 0x43616c69666f726e6961, 1);
INSERT INTO `oc_zone` VALUES (3625, 223, 0x434f, 0x436f6c6f7261646f, 1);
INSERT INTO `oc_zone` VALUES (3626, 223, 0x4354, 0x436f6e6e65637469637574, 1);
INSERT INTO `oc_zone` VALUES (3627, 223, 0x4445, 0x44656c6177617265, 1);
INSERT INTO `oc_zone` VALUES (3628, 223, 0x4443, 0x4469737472696374206f6620436f6c756d626961, 1);
INSERT INTO `oc_zone` VALUES (3629, 223, 0x464d, 0x46656465726174656420537461746573204f66204d6963726f6e65736961, 1);
INSERT INTO `oc_zone` VALUES (3630, 223, 0x464c, 0x466c6f72696461, 1);
INSERT INTO `oc_zone` VALUES (3631, 223, 0x4741, 0x47656f72676961, 1);
INSERT INTO `oc_zone` VALUES (3632, 223, 0x4755, 0x4775616d, 1);
INSERT INTO `oc_zone` VALUES (3633, 223, 0x4849, 0x486177616969, 1);
INSERT INTO `oc_zone` VALUES (3634, 223, 0x4944, 0x496461686f, 1);
INSERT INTO `oc_zone` VALUES (3635, 223, 0x494c, 0x496c6c696e6f6973, 1);
INSERT INTO `oc_zone` VALUES (3636, 223, 0x494e, 0x496e6469616e61, 1);
INSERT INTO `oc_zone` VALUES (3637, 223, 0x4941, 0x496f7761, 1);
INSERT INTO `oc_zone` VALUES (3638, 223, 0x4b53, 0x4b616e736173, 1);
INSERT INTO `oc_zone` VALUES (3639, 223, 0x4b59, 0x4b656e7475636b79, 1);
INSERT INTO `oc_zone` VALUES (3640, 223, 0x4c41, 0x4c6f75697369616e61, 1);
INSERT INTO `oc_zone` VALUES (3641, 223, 0x4d45, 0x4d61696e65, 1);
INSERT INTO `oc_zone` VALUES (3642, 223, 0x4d48, 0x4d61727368616c6c2049736c616e6473, 1);
INSERT INTO `oc_zone` VALUES (3643, 223, 0x4d44, 0x4d6172796c616e64, 1);
INSERT INTO `oc_zone` VALUES (3644, 223, 0x4d41, 0x4d617373616368757365747473, 1);
INSERT INTO `oc_zone` VALUES (3645, 223, 0x4d49, 0x4d6963686967616e, 1);
INSERT INTO `oc_zone` VALUES (3646, 223, 0x4d4e, 0x4d696e6e65736f7461, 1);
INSERT INTO `oc_zone` VALUES (3647, 223, 0x4d53, 0x4d69737369737369707069, 1);
INSERT INTO `oc_zone` VALUES (3648, 223, 0x4d4f, 0x4d6973736f757269, 1);
INSERT INTO `oc_zone` VALUES (3649, 223, 0x4d54, 0x4d6f6e74616e61, 1);
INSERT INTO `oc_zone` VALUES (3650, 223, 0x4e45, 0x4e65627261736b61, 1);
INSERT INTO `oc_zone` VALUES (3651, 223, 0x4e56, 0x4e6576616461, 1);
INSERT INTO `oc_zone` VALUES (3652, 223, 0x4e48, 0x4e65772048616d707368697265, 1);
INSERT INTO `oc_zone` VALUES (3653, 223, 0x4e4a, 0x4e6577204a6572736579, 1);
INSERT INTO `oc_zone` VALUES (3654, 223, 0x4e4d, 0x4e6577204d657869636f, 1);
INSERT INTO `oc_zone` VALUES (3655, 223, 0x4e59, 0x4e657720596f726b, 1);
INSERT INTO `oc_zone` VALUES (3656, 223, 0x4e43, 0x4e6f727468204361726f6c696e61, 1);
INSERT INTO `oc_zone` VALUES (3657, 223, 0x4e44, 0x4e6f7274682044616b6f7461, 1);
INSERT INTO `oc_zone` VALUES (3658, 223, 0x4d50, 0x4e6f72746865726e204d617269616e612049736c616e6473, 1);
INSERT INTO `oc_zone` VALUES (3659, 223, 0x4f48, 0x4f68696f, 1);
INSERT INTO `oc_zone` VALUES (3660, 223, 0x4f4b, 0x4f6b6c61686f6d61, 1);
INSERT INTO `oc_zone` VALUES (3661, 223, 0x4f52, 0x4f7265676f6e, 1);
INSERT INTO `oc_zone` VALUES (3662, 223, 0x5057, 0x50616c6175, 1);
INSERT INTO `oc_zone` VALUES (3663, 223, 0x5041, 0x50656e6e73796c76616e6961, 1);
INSERT INTO `oc_zone` VALUES (3664, 223, 0x5052, 0x50756572746f205269636f, 1);
INSERT INTO `oc_zone` VALUES (3665, 223, 0x5249, 0x52686f64652049736c616e64, 1);
INSERT INTO `oc_zone` VALUES (3666, 223, 0x5343, 0x536f757468204361726f6c696e61, 1);
INSERT INTO `oc_zone` VALUES (3667, 223, 0x5344, 0x536f7574682044616b6f7461, 1);
INSERT INTO `oc_zone` VALUES (3668, 223, 0x544e, 0x54656e6e6573736565, 1);
INSERT INTO `oc_zone` VALUES (3669, 223, 0x5458, 0x5465786173, 1);
INSERT INTO `oc_zone` VALUES (3670, 223, 0x5554, 0x55746168, 1);
INSERT INTO `oc_zone` VALUES (3671, 223, 0x5654, 0x5665726d6f6e74, 1);
INSERT INTO `oc_zone` VALUES (3672, 223, 0x5649, 0x56697267696e2049736c616e6473, 1);
INSERT INTO `oc_zone` VALUES (3673, 223, 0x5641, 0x56697267696e6961, 1);
INSERT INTO `oc_zone` VALUES (3674, 223, 0x5741, 0x57617368696e67746f6e, 1);
INSERT INTO `oc_zone` VALUES (3675, 223, 0x5756, 0x576573742056697267696e6961, 1);
INSERT INTO `oc_zone` VALUES (3676, 223, 0x5749, 0x576973636f6e73696e, 1);
INSERT INTO `oc_zone` VALUES (3677, 223, 0x5759, 0x57796f6d696e67, 1);
INSERT INTO `oc_zone` VALUES (3678, 224, 0x4249, 0x42616b65722049736c616e64, 1);
INSERT INTO `oc_zone` VALUES (3679, 224, 0x4849, 0x486f776c616e642049736c616e64, 1);
INSERT INTO `oc_zone` VALUES (3680, 224, 0x4a49, 0x4a61727669732049736c616e64, 1);
INSERT INTO `oc_zone` VALUES (3681, 224, 0x4a41, 0x4a6f686e73746f6e2041746f6c6c, 1);
INSERT INTO `oc_zone` VALUES (3682, 224, 0x4b52, 0x4b696e676d616e2052656566, 1);
INSERT INTO `oc_zone` VALUES (3683, 224, 0x4d41, 0x4d69647761792041746f6c6c, 1);
INSERT INTO `oc_zone` VALUES (3684, 224, 0x4e49, 0x4e6176617373612049736c616e64, 1);
INSERT INTO `oc_zone` VALUES (3685, 224, 0x5041, 0x50616c6d7972612041746f6c6c, 1);
INSERT INTO `oc_zone` VALUES (3686, 224, 0x5749, 0x57616b652049736c616e64, 1);
INSERT INTO `oc_zone` VALUES (3687, 225, 0x4152, 0x41727469676173, 1);
INSERT INTO `oc_zone` VALUES (3688, 225, 0x4341, 0x43616e656c6f6e6573, 1);
INSERT INTO `oc_zone` VALUES (3689, 225, 0x434c, 0x436572726f204c6172676f, 1);
INSERT INTO `oc_zone` VALUES (3690, 225, 0x434f, 0x436f6c6f6e6961, 1);
INSERT INTO `oc_zone` VALUES (3691, 225, 0x4455, 0x447572617a6e6f, 1);
INSERT INTO `oc_zone` VALUES (3692, 225, 0x4653, 0x466c6f726573, 1);
INSERT INTO `oc_zone` VALUES (3693, 225, 0x4641, 0x466c6f72696461, 1);
INSERT INTO `oc_zone` VALUES (3694, 225, 0x4c41, 0x4c6176616c6c656a61, 1);
INSERT INTO `oc_zone` VALUES (3695, 225, 0x4d41, 0x4d616c646f6e61646f, 1);
INSERT INTO `oc_zone` VALUES (3696, 225, 0x4d4f, 0x4d6f6e7465766964656f, 1);
INSERT INTO `oc_zone` VALUES (3697, 225, 0x5041, 0x50617973616e6475, 1);
INSERT INTO `oc_zone` VALUES (3698, 225, 0x524e, 0x52696f204e6567726f, 1);
INSERT INTO `oc_zone` VALUES (3699, 225, 0x5256, 0x526976657261, 1);
INSERT INTO `oc_zone` VALUES (3700, 225, 0x524f, 0x526f636861, 1);
INSERT INTO `oc_zone` VALUES (3701, 225, 0x534c, 0x53616c746f, 1);
INSERT INTO `oc_zone` VALUES (3702, 225, 0x534a, 0x53616e204a6f7365, 1);
INSERT INTO `oc_zone` VALUES (3703, 225, 0x534f, 0x536f7269616e6f, 1);
INSERT INTO `oc_zone` VALUES (3704, 225, 0x5441, 0x546163756172656d626f, 1);
INSERT INTO `oc_zone` VALUES (3705, 225, 0x5454, 0x547265696e746120792054726573, 1);
INSERT INTO `oc_zone` VALUES (3706, 226, 0x414e, 0x416e64696a6f6e, 1);
INSERT INTO `oc_zone` VALUES (3707, 226, 0x4255, 0x4275786f726f, 1);
INSERT INTO `oc_zone` VALUES (3708, 226, 0x4641, 0x46617267276f6e61, 1);
INSERT INTO `oc_zone` VALUES (3709, 226, 0x4a49, 0x4a697a7a6178, 1);
INSERT INTO `oc_zone` VALUES (3710, 226, 0x4e47, 0x4e616d616e67616e, 1);
INSERT INTO `oc_zone` VALUES (3711, 226, 0x4e57, 0x4e61766f6979, 1);
INSERT INTO `oc_zone` VALUES (3712, 226, 0x5141, 0x516173687161646172796f, 1);
INSERT INTO `oc_zone` VALUES (3713, 226, 0x5152, 0x516f726171616c706f67276973746f6e2052657075626c696b617369, 1);
INSERT INTO `oc_zone` VALUES (3714, 226, 0x5341, 0x53616d617271616e64, 1);
INSERT INTO `oc_zone` VALUES (3715, 226, 0x5349, 0x536972646172796f, 1);
INSERT INTO `oc_zone` VALUES (3716, 226, 0x5355, 0x537572786f6e646172796f, 1);
INSERT INTO `oc_zone` VALUES (3717, 226, 0x544b, 0x546f73686b656e742043697479, 1);
INSERT INTO `oc_zone` VALUES (3718, 226, 0x544f, 0x546f73686b656e7420526567696f6e, 1);
INSERT INTO `oc_zone` VALUES (3719, 226, 0x584f, 0x586f72617a6d, 1);
INSERT INTO `oc_zone` VALUES (3720, 227, 0x4d41, 0x4d616c616d7061, 1);
INSERT INTO `oc_zone` VALUES (3721, 227, 0x5045, 0x50656e616d61, 1);
INSERT INTO `oc_zone` VALUES (3722, 227, 0x5341, 0x53616e6d61, 1);
INSERT INTO `oc_zone` VALUES (3723, 227, 0x5348, 0x5368656661, 1);
INSERT INTO `oc_zone` VALUES (3724, 227, 0x5441, 0x5461666561, 1);
INSERT INTO `oc_zone` VALUES (3725, 227, 0x544f, 0x546f726261, 1);
INSERT INTO `oc_zone` VALUES (3726, 229, 0x414d, 0x416d617a6f6e6173, 1);
INSERT INTO `oc_zone` VALUES (3727, 229, 0x414e, 0x416e7a6f617465677569, 1);
INSERT INTO `oc_zone` VALUES (3728, 229, 0x4150, 0x4170757265, 1);
INSERT INTO `oc_zone` VALUES (3729, 229, 0x4152, 0x417261677561, 1);
INSERT INTO `oc_zone` VALUES (3730, 229, 0x4241, 0x426172696e6173, 1);
INSERT INTO `oc_zone` VALUES (3731, 229, 0x424f, 0x426f6c69766172, 1);
INSERT INTO `oc_zone` VALUES (3732, 229, 0x4341, 0x43617261626f626f, 1);
INSERT INTO `oc_zone` VALUES (3733, 229, 0x434f, 0x436f6a65646573, 1);
INSERT INTO `oc_zone` VALUES (3734, 229, 0x4441, 0x44656c746120416d616375726f, 1);
INSERT INTO `oc_zone` VALUES (3735, 229, 0x4446, 0x446570656e64656e63696173204665646572616c6573, 1);
INSERT INTO `oc_zone` VALUES (3736, 229, 0x4449, 0x446973747269746f204665646572616c, 1);
INSERT INTO `oc_zone` VALUES (3737, 229, 0x4641, 0x46616c636f6e, 1);
INSERT INTO `oc_zone` VALUES (3738, 229, 0x4755, 0x4775617269636f, 1);
INSERT INTO `oc_zone` VALUES (3739, 229, 0x4c41, 0x4c617261, 1);
INSERT INTO `oc_zone` VALUES (3740, 229, 0x4d45, 0x4d6572696461, 1);
INSERT INTO `oc_zone` VALUES (3741, 229, 0x4d49, 0x4d6972616e6461, 1);
INSERT INTO `oc_zone` VALUES (3742, 229, 0x4d4f, 0x4d6f6e61676173, 1);
INSERT INTO `oc_zone` VALUES (3743, 229, 0x4e45, 0x4e756576612045737061727461, 1);
INSERT INTO `oc_zone` VALUES (3744, 229, 0x504f, 0x506f7274756775657361, 1);
INSERT INTO `oc_zone` VALUES (3745, 229, 0x5355, 0x5375637265, 1);
INSERT INTO `oc_zone` VALUES (3746, 229, 0x5441, 0x54616368697261, 1);
INSERT INTO `oc_zone` VALUES (3747, 229, 0x5452, 0x5472756a696c6c6f, 1);
INSERT INTO `oc_zone` VALUES (3748, 229, 0x5641, 0x566172676173, 1);
INSERT INTO `oc_zone` VALUES (3749, 229, 0x5941, 0x59617261637579, 1);
INSERT INTO `oc_zone` VALUES (3750, 229, 0x5a55, 0x5a756c6961, 1);
INSERT INTO `oc_zone` VALUES (3751, 230, 0x4147, 0x416e204769616e67, 1);
INSERT INTO `oc_zone` VALUES (3752, 230, 0x4252, 0x42c3a02052e1bb8b612056c5a96e672054c3a075, 1);
INSERT INTO `oc_zone` VALUES (3753, 230, 0x424c, 0x42e1baa163204c69c3aa75, 1);
INSERT INTO `oc_zone` VALUES (3754, 230, 0x4243, 0x42e1baaf632043e1baa16e, 1);
INSERT INTO `oc_zone` VALUES (3755, 230, 0x4247, 0x42e1baaf63204769616e67, 1);
INSERT INTO `oc_zone` VALUES (3756, 230, 0x424e, 0x42e1baaf63204e696e68, 1);
INSERT INTO `oc_zone` VALUES (3757, 230, 0x4254, 0x42e1babf6e20547265, 1);
INSERT INTO `oc_zone` VALUES (3758, 230, 0x4244, 0x42c3ac6e682044c6b0c6a16e67, 1);
INSERT INTO `oc_zone` VALUES (3759, 230, 0x424b, 0x42c3ac6e6820c490e1bb8b6e68, 1);
INSERT INTO `oc_zone` VALUES (3760, 230, 0x4250, 0x42c3ac6e68205068c6b0e1bb9b63, 1);
INSERT INTO `oc_zone` VALUES (3761, 230, 0x4254, 0x42c3ac6e6820546875e1baad6e, 1);
INSERT INTO `oc_zone` VALUES (3762, 230, 0x434d, 0x43c3a0204d6175, 1);
INSERT INTO `oc_zone` VALUES (3763, 230, 0x4342, 0x43616f2042e1bab16e67, 1);
INSERT INTO `oc_zone` VALUES (3764, 230, 0x4354, 0x43e1baa76e205468c6a1, 1);
INSERT INTO `oc_zone` VALUES (3765, 230, 0x444e, 0xc490c3a0204ee1bab56e67, 1);
INSERT INTO `oc_zone` VALUES (3766, 230, 0x444c, 0xc490e1baaf6b204ce1baaf6b, 1);
INSERT INTO `oc_zone` VALUES (3767, 230, 0x444e, 0xc490e1bb936e67204e6169, 1);
INSERT INTO `oc_zone` VALUES (3768, 230, 0x4454, 0xc490e1bb936e67205468c3a170, 1);
INSERT INTO `oc_zone` VALUES (3769, 230, 0x474c, 0x476961204c6169, 1);
INSERT INTO `oc_zone` VALUES (3770, 230, 0x4847, 0x48c3a0204769616e67, 1);
INSERT INTO `oc_zone` VALUES (3771, 230, 0x4841, 0x48c3a0204e616d, 1);
INSERT INTO `oc_zone` VALUES (3772, 230, 0x484e, 0x48c3a0204ee1bb9969, 1);
INSERT INTO `oc_zone` VALUES (3773, 230, 0x4854, 0x48c3a02054c4a96e68, 1);
INSERT INTO `oc_zone` VALUES (3774, 230, 0x4850, 0x48e1baa369205068c3b26e67, 1);
INSERT INTO `oc_zone` VALUES (3775, 230, 0x4844, 0x48e1baa3692044c6b0c6a16e67, 1);
INSERT INTO `oc_zone` VALUES (3776, 230, 0x4842, 0x48c3b2612042c3ac6e68, 1);
INSERT INTO `oc_zone` VALUES (3777, 230, 0x4859, 0x48c6b06e672059c3aa6e, 1);
INSERT INTO `oc_zone` VALUES (3778, 230, 0x484d, 0x48e1bb93204368c3ad204d696e68, 1);
INSERT INTO `oc_zone` VALUES (3779, 230, 0x4b48, 0x4b68c3a16e682048c3b261, 1);
INSERT INTO `oc_zone` VALUES (3780, 230, 0x4b47, 0x4b69c3aa6e204769616e67, 1);
INSERT INTO `oc_zone` VALUES (3781, 230, 0x4b54, 0x4b6f6e2054756d, 1);
INSERT INTO `oc_zone` VALUES (3782, 230, 0x4c43, 0x4c6169204368c3a275, 1);
INSERT INTO `oc_zone` VALUES (3783, 232, 0x43, 0x5361696e742043726f6978, 1);
INSERT INTO `oc_zone` VALUES (3784, 232, 0x4a, 0x5361696e74204a6f686e, 1);
INSERT INTO `oc_zone` VALUES (3785, 232, 0x54, 0x5361696e742054686f6d6173, 1);
INSERT INTO `oc_zone` VALUES (3786, 233, 0x41, 0x416c6f, 1);
INSERT INTO `oc_zone` VALUES (3787, 233, 0x53, 0x536967617665, 1);
INSERT INTO `oc_zone` VALUES (3788, 233, 0x57, 0x57616c6c6973, 1);
INSERT INTO `oc_zone` VALUES (3789, 235, 0x4142, 0x416279616e, 1);
INSERT INTO `oc_zone` VALUES (3790, 235, 0x4144, 0x4164616e, 1);
INSERT INTO `oc_zone` VALUES (3791, 235, 0x414d, 0x416d72616e, 1);
INSERT INTO `oc_zone` VALUES (3792, 235, 0x4241, 0x416c204261796461, 1);
INSERT INTO `oc_zone` VALUES (3793, 235, 0x4441, 0x41642044616c69, 1);
INSERT INTO `oc_zone` VALUES (3794, 235, 0x4448, 0x4468616d6172, 1);
INSERT INTO `oc_zone` VALUES (3795, 235, 0x4844, 0x48616472616d617774, 1);
INSERT INTO `oc_zone` VALUES (3796, 235, 0x484a, 0x48616a6a6168, 1);
INSERT INTO `oc_zone` VALUES (3797, 235, 0x4855, 0x416c204875646179646168, 1);
INSERT INTO `oc_zone` VALUES (3798, 235, 0x4942, 0x496262, 1);
INSERT INTO `oc_zone` VALUES (3799, 235, 0x4a41, 0x416c204a617766, 1);
INSERT INTO `oc_zone` VALUES (3800, 235, 0x4c41, 0x4c6168696a, 1);
INSERT INTO `oc_zone` VALUES (3801, 235, 0x4d41, 0x4d6127726962, 1);
INSERT INTO `oc_zone` VALUES (3802, 235, 0x4d52, 0x416c204d6168726168, 1);
INSERT INTO `oc_zone` VALUES (3803, 235, 0x4d57, 0x416c204d6168776974, 1);
INSERT INTO `oc_zone` VALUES (3804, 235, 0x5344, 0x536127646168, 1);
INSERT INTO `oc_zone` VALUES (3805, 235, 0x534e, 0x53616e2761, 1);
INSERT INTO `oc_zone` VALUES (3806, 235, 0x5348, 0x53686162776168, 1);
INSERT INTO `oc_zone` VALUES (3807, 235, 0x5441, 0x546127697a7a, 1);
INSERT INTO `oc_zone` VALUES (3808, 236, 0x4b4f53, 0x4b6f736f766f, 1);
INSERT INTO `oc_zone` VALUES (3809, 236, 0x4d4f4e, 0x4d6f6e74656e6567726f, 1);
INSERT INTO `oc_zone` VALUES (3810, 236, 0x534552, 0x536572626961, 1);
INSERT INTO `oc_zone` VALUES (3811, 236, 0x564f4a, 0x566f6a766f64696e61, 1);
INSERT INTO `oc_zone` VALUES (3812, 237, 0x4243, 0x4261732d436f6e676f, 1);
INSERT INTO `oc_zone` VALUES (3813, 237, 0x424e, 0x42616e64756e6475, 1);
INSERT INTO `oc_zone` VALUES (3814, 237, 0x4551, 0x4571756174657572, 1);
INSERT INTO `oc_zone` VALUES (3815, 237, 0x4b41, 0x4b6174616e6761, 1);
INSERT INTO `oc_zone` VALUES (3816, 237, 0x4b45, 0x4b617361692d4f7269656e74616c, 1);
INSERT INTO `oc_zone` VALUES (3817, 237, 0x4b4e, 0x4b696e7368617361, 1);
INSERT INTO `oc_zone` VALUES (3818, 237, 0x4b57, 0x4b617361692d4f63636964656e74616c, 1);
INSERT INTO `oc_zone` VALUES (3819, 237, 0x4d41, 0x4d616e69656d61, 1);
INSERT INTO `oc_zone` VALUES (3820, 237, 0x4e4b, 0x4e6f72642d4b697675, 1);
INSERT INTO `oc_zone` VALUES (3821, 237, 0x4f52, 0x4f7269656e74616c65, 1);
INSERT INTO `oc_zone` VALUES (3822, 237, 0x534b, 0x5375642d4b697675, 1);
INSERT INTO `oc_zone` VALUES (3823, 238, 0x4345, 0x43656e7472616c, 1);
INSERT INTO `oc_zone` VALUES (3824, 238, 0x4342, 0x436f7070657262656c74, 1);
INSERT INTO `oc_zone` VALUES (3825, 238, 0x4541, 0x4561737465726e, 1);
INSERT INTO `oc_zone` VALUES (3826, 238, 0x4c50, 0x4c756170756c61, 1);
INSERT INTO `oc_zone` VALUES (3827, 238, 0x4c4b, 0x4c7573616b61, 1);
INSERT INTO `oc_zone` VALUES (3828, 238, 0x4e4f, 0x4e6f72746865726e, 1);
INSERT INTO `oc_zone` VALUES (3829, 238, 0x4e57, 0x4e6f7274682d5765737465726e, 1);
INSERT INTO `oc_zone` VALUES (3830, 238, 0x534f, 0x536f75746865726e, 1);
INSERT INTO `oc_zone` VALUES (3831, 238, 0x5745, 0x5765737465726e, 1);
INSERT INTO `oc_zone` VALUES (3832, 239, 0x4255, 0x42756c617761796f, 1);
INSERT INTO `oc_zone` VALUES (3833, 239, 0x4841, 0x486172617265, 1);
INSERT INTO `oc_zone` VALUES (3834, 239, 0x4d4c, 0x4d616e6963616c616e64, 1);
INSERT INTO `oc_zone` VALUES (3835, 239, 0x4d43, 0x4d6173686f6e616c616e642043656e7472616c, 1);
INSERT INTO `oc_zone` VALUES (3836, 239, 0x4d45, 0x4d6173686f6e616c616e642045617374, 1);
INSERT INTO `oc_zone` VALUES (3837, 239, 0x4d57, 0x4d6173686f6e616c616e642057657374, 1);
INSERT INTO `oc_zone` VALUES (3838, 239, 0x4d56, 0x4d617376696e676f, 1);
INSERT INTO `oc_zone` VALUES (3839, 239, 0x4d4e, 0x4d61746162656c656c616e64204e6f727468, 1);
INSERT INTO `oc_zone` VALUES (3840, 239, 0x4d53, 0x4d61746162656c656c616e6420536f757468, 1);
INSERT INTO `oc_zone` VALUES (3841, 239, 0x4d44, 0x4d69646c616e6473, 1);
INSERT INTO `oc_zone` VALUES (3861, 105, 0x4342, 0x43616d706f626173736f, 1);
INSERT INTO `oc_zone` VALUES (3862, 105, 0x4349, 0x436172626f6e69612d49676c6573696173, 1);
INSERT INTO `oc_zone` VALUES (3863, 105, 0x4345, 0x43617365727461, 1);
INSERT INTO `oc_zone` VALUES (3864, 105, 0x4354, 0x436174616e6961, 1);
INSERT INTO `oc_zone` VALUES (3865, 105, 0x435a, 0x436174616e7a61726f, 1);
INSERT INTO `oc_zone` VALUES (3866, 105, 0x4348, 0x436869657469, 1);
INSERT INTO `oc_zone` VALUES (3867, 105, 0x434f, 0x436f6d6f, 1);
INSERT INTO `oc_zone` VALUES (3868, 105, 0x4353, 0x436f73656e7a61, 1);
INSERT INTO `oc_zone` VALUES (3869, 105, 0x4352, 0x4372656d6f6e61, 1);
INSERT INTO `oc_zone` VALUES (3870, 105, 0x4b52, 0x43726f746f6e65, 1);
INSERT INTO `oc_zone` VALUES (3871, 105, 0x434e, 0x43756e656f, 1);
INSERT INTO `oc_zone` VALUES (3872, 105, 0x454e, 0x456e6e61, 1);
INSERT INTO `oc_zone` VALUES (3873, 105, 0x4645, 0x46657272617261, 1);
INSERT INTO `oc_zone` VALUES (3874, 105, 0x4649, 0x466972656e7a65, 1);
INSERT INTO `oc_zone` VALUES (3875, 105, 0x4647, 0x466f67676961, 1);
INSERT INTO `oc_zone` VALUES (3876, 105, 0x4643, 0x466f726c692d436573656e61, 1);
INSERT INTO `oc_zone` VALUES (3877, 105, 0x4652, 0x46726f73696e6f6e65, 1);
INSERT INTO `oc_zone` VALUES (3878, 105, 0x4745, 0x47656e6f7661, 1);
INSERT INTO `oc_zone` VALUES (3879, 105, 0x474f, 0x476f72697a6961, 1);
INSERT INTO `oc_zone` VALUES (3880, 105, 0x4752, 0x47726f737365746f, 1);
INSERT INTO `oc_zone` VALUES (3881, 105, 0x494d, 0x496d7065726961, 1);
INSERT INTO `oc_zone` VALUES (3882, 105, 0x4953, 0x497365726e6961, 1);
INSERT INTO `oc_zone` VALUES (3883, 105, 0x4151, 0x4c262333393b417175696c61, 1);
INSERT INTO `oc_zone` VALUES (3884, 105, 0x5350, 0x4c61205370657a6961, 1);
INSERT INTO `oc_zone` VALUES (3885, 105, 0x4c54, 0x4c6174696e61, 1);
INSERT INTO `oc_zone` VALUES (3886, 105, 0x4c45, 0x4c65636365, 1);
INSERT INTO `oc_zone` VALUES (3887, 105, 0x4c43, 0x4c6563636f, 1);
INSERT INTO `oc_zone` VALUES (3888, 105, 0x4c49, 0x4c69766f726e6f, 1);
INSERT INTO `oc_zone` VALUES (3889, 105, 0x4c4f, 0x4c6f6469, 1);
INSERT INTO `oc_zone` VALUES (3890, 105, 0x4c55, 0x4c75636361, 1);
INSERT INTO `oc_zone` VALUES (3891, 105, 0x4d43, 0x4d61636572617461, 1);
INSERT INTO `oc_zone` VALUES (3892, 105, 0x4d4e, 0x4d616e746f7661, 1);
INSERT INTO `oc_zone` VALUES (3893, 105, 0x4d53, 0x4d617373612d43617272617261, 1);
INSERT INTO `oc_zone` VALUES (3894, 105, 0x4d54, 0x4d6174657261, 1);
INSERT INTO `oc_zone` VALUES (3895, 105, 0x5653, 0x4d6564696f2043616d706964616e6f, 1);
INSERT INTO `oc_zone` VALUES (3896, 105, 0x4d45, 0x4d657373696e61, 1);
INSERT INTO `oc_zone` VALUES (3897, 105, 0x4d49, 0x4d696c616e6f, 1);
INSERT INTO `oc_zone` VALUES (3898, 105, 0x4d4f, 0x4d6f64656e61, 1);
INSERT INTO `oc_zone` VALUES (3899, 105, 0x4e41, 0x4e61706f6c69, 1);
INSERT INTO `oc_zone` VALUES (3900, 105, 0x4e4f, 0x4e6f76617261, 1);
INSERT INTO `oc_zone` VALUES (3901, 105, 0x4e55, 0x4e756f726f, 1);
INSERT INTO `oc_zone` VALUES (3902, 105, 0x4f47, 0x4f676c696173747261, 1);
INSERT INTO `oc_zone` VALUES (3903, 105, 0x4f54, 0x4f6c6269612d54656d70696f, 1);
INSERT INTO `oc_zone` VALUES (3904, 105, 0x4f52, 0x4f72697374616e6f, 1);
INSERT INTO `oc_zone` VALUES (3905, 105, 0x5044, 0x5061646f7661, 1);
INSERT INTO `oc_zone` VALUES (3906, 105, 0x5041, 0x50616c65726d6f, 1);
INSERT INTO `oc_zone` VALUES (3907, 105, 0x5052, 0x5061726d61, 1);
INSERT INTO `oc_zone` VALUES (3908, 105, 0x5056, 0x5061766961, 1);
INSERT INTO `oc_zone` VALUES (3909, 105, 0x5047, 0x50657275676961, 1);
INSERT INTO `oc_zone` VALUES (3910, 105, 0x5055, 0x50657361726f206520557262696e6f, 1);
INSERT INTO `oc_zone` VALUES (3911, 105, 0x5045, 0x50657363617261, 1);
INSERT INTO `oc_zone` VALUES (3912, 105, 0x5043, 0x50696163656e7a61, 1);
INSERT INTO `oc_zone` VALUES (3913, 105, 0x5049, 0x50697361, 1);
INSERT INTO `oc_zone` VALUES (3914, 105, 0x5054, 0x506973746f6961, 1);
INSERT INTO `oc_zone` VALUES (3915, 105, 0x504e, 0x506f7264656e6f6e65, 1);
INSERT INTO `oc_zone` VALUES (3916, 105, 0x505a, 0x506f74656e7a61, 1);
INSERT INTO `oc_zone` VALUES (3917, 105, 0x504f, 0x507261746f, 1);
INSERT INTO `oc_zone` VALUES (3918, 105, 0x5247, 0x526167757361, 1);
INSERT INTO `oc_zone` VALUES (3919, 105, 0x5241, 0x526176656e6e61, 1);
INSERT INTO `oc_zone` VALUES (3920, 105, 0x5243, 0x52656767696f2043616c6162726961, 1);
INSERT INTO `oc_zone` VALUES (3921, 105, 0x5245, 0x52656767696f20456d696c6961, 1);
INSERT INTO `oc_zone` VALUES (3922, 105, 0x5249, 0x5269657469, 1);
INSERT INTO `oc_zone` VALUES (3923, 105, 0x524e, 0x52696d696e69, 1);
INSERT INTO `oc_zone` VALUES (3924, 105, 0x524d, 0x526f6d61, 1);
INSERT INTO `oc_zone` VALUES (3925, 105, 0x524f, 0x526f7669676f, 1);
INSERT INTO `oc_zone` VALUES (3926, 105, 0x5341, 0x53616c65726e6f, 1);
INSERT INTO `oc_zone` VALUES (3927, 105, 0x5353, 0x53617373617269, 1);
INSERT INTO `oc_zone` VALUES (3928, 105, 0x5356, 0x5361766f6e61, 1);
INSERT INTO `oc_zone` VALUES (3929, 105, 0x5349, 0x5369656e61, 1);
INSERT INTO `oc_zone` VALUES (3930, 105, 0x5352, 0x5369726163757361, 1);
INSERT INTO `oc_zone` VALUES (3931, 105, 0x534f, 0x536f6e6472696f, 1);
INSERT INTO `oc_zone` VALUES (3932, 105, 0x5441, 0x546172616e746f, 1);
INSERT INTO `oc_zone` VALUES (3933, 105, 0x5445, 0x546572616d6f, 1);
INSERT INTO `oc_zone` VALUES (3934, 105, 0x5452, 0x5465726e69, 1);
INSERT INTO `oc_zone` VALUES (3935, 105, 0x544f, 0x546f72696e6f, 1);
INSERT INTO `oc_zone` VALUES (3936, 105, 0x5450, 0x54726170616e69, 1);
INSERT INTO `oc_zone` VALUES (3937, 105, 0x544e, 0x5472656e746f, 1);
INSERT INTO `oc_zone` VALUES (3938, 105, 0x5456, 0x5472657669736f, 1);
INSERT INTO `oc_zone` VALUES (3939, 105, 0x5453, 0x54726965737465, 1);
INSERT INTO `oc_zone` VALUES (3940, 105, 0x5544, 0x5564696e65, 1);
INSERT INTO `oc_zone` VALUES (3941, 105, 0x5641, 0x566172657365, 1);
INSERT INTO `oc_zone` VALUES (3942, 105, 0x5645, 0x56656e657a6961, 1);
INSERT INTO `oc_zone` VALUES (3943, 105, 0x5642, 0x56657262616e6f2d437573696f2d4f73736f6c61, 1);
INSERT INTO `oc_zone` VALUES (3944, 105, 0x5643, 0x56657263656c6c69, 1);
INSERT INTO `oc_zone` VALUES (3945, 105, 0x5652, 0x5665726f6e61, 1);
INSERT INTO `oc_zone` VALUES (3946, 105, 0x5656, 0x5669626f2056616c656e746961, 1);
INSERT INTO `oc_zone` VALUES (3947, 105, 0x5649, 0x566963656e7a61, 1);
INSERT INTO `oc_zone` VALUES (3948, 105, 0x5654, 0x5669746572626f, 1);
INSERT INTO `oc_zone` VALUES (3949, 222, 0x414e54, 0x436f756e747920416e7472696d, 1);
INSERT INTO `oc_zone` VALUES (3950, 222, 0x41524d, 0x436f756e74792041726d616768, 1);
INSERT INTO `oc_zone` VALUES (3951, 222, 0x444f57, 0x436f756e747920446f776e, 1);
INSERT INTO `oc_zone` VALUES (3952, 222, 0x464552, 0x436f756e7479204665726d616e616768, 1);
INSERT INTO `oc_zone` VALUES (3953, 222, 0x4c4459, 0x436f756e7479204c6f6e646f6e6465727279, 1);
INSERT INTO `oc_zone` VALUES (3954, 222, 0x545952, 0x436f756e7479205479726f6e65, 1);
INSERT INTO `oc_zone` VALUES (3955, 222, 0x434d41, 0x43756d62726961, 1);
INSERT INTO `oc_zone` VALUES (3956, 190, 0x31, 0x506f6d7572736b61, 1);
INSERT INTO `oc_zone` VALUES (3957, 190, 0x32, 0x506f64726176736b61, 1);
INSERT INTO `oc_zone` VALUES (3958, 190, 0x33, 0x4b6f726fc5a16b61, 1);
INSERT INTO `oc_zone` VALUES (3959, 190, 0x34, 0x536176696e6a736b61, 1);
INSERT INTO `oc_zone` VALUES (3960, 190, 0x35, 0x5a61736176736b61, 1);
INSERT INTO `oc_zone` VALUES (3961, 190, 0x36, 0x53706f646e6a65706f736176736b61, 1);
INSERT INTO `oc_zone` VALUES (3962, 190, 0x37, 0x4a75676f767a686f646e6120536c6f76656e696a61, 1);
INSERT INTO `oc_zone` VALUES (3963, 190, 0x38, 0x4f737265646e6a65736c6f76656e736b61, 1);
INSERT INTO `oc_zone` VALUES (3964, 190, 0x39, 0x476f72656e6a736b61, 1);
INSERT INTO `oc_zone` VALUES (3965, 190, 0x3130, 0x4e6f7472616e6a736b6f2d6b7261c5a16b61, 1);
INSERT INTO `oc_zone` VALUES (3966, 190, 0x3131, 0x476f7269c5a16b61, 1);
INSERT INTO `oc_zone` VALUES (3967, 190, 0x3132, 0x4f62616c6e6f2d6b7261c5a16b61, 1);
INSERT INTO `oc_zone` VALUES (3968, 230, 0x4c53, 0x4ce1baa16e672053c6a16e, 1);
INSERT INTO `oc_zone` VALUES (3969, 230, 0x4c4b, 0x4cc3a06f20436169, 1);
INSERT INTO `oc_zone` VALUES (3970, 230, 0x4c44, 0x4cc3a26d20c490e1bb936e67, 1);
INSERT INTO `oc_zone` VALUES (3971, 230, 0x4c41, 0x4c6f6e6720416e, 1);
INSERT INTO `oc_zone` VALUES (3972, 230, 0x4e44, 0x4e616d20c490e1bb8b6e68, 1);
INSERT INTO `oc_zone` VALUES (3973, 230, 0x4e41, 0x4e6768e1bb8720416e, 1);
INSERT INTO `oc_zone` VALUES (3974, 230, 0x4e42, 0x4e696e682042c3ac6e68, 1);
INSERT INTO `oc_zone` VALUES (3975, 230, 0x4e54, 0x4e696e6820546875e1baad6e, 1);
INSERT INTO `oc_zone` VALUES (3976, 230, 0x5054, 0x5068c3ba205468e1bb8d, 1);
INSERT INTO `oc_zone` VALUES (3977, 230, 0x5059, 0x5068c3ba2059c3aa6e, 1);
INSERT INTO `oc_zone` VALUES (3978, 230, 0x5142, 0x5175e1baa36e672042c3ac6e68, 1);
INSERT INTO `oc_zone` VALUES (3979, 230, 0x514e, 0x5175e1baa36e67204e616d, 1);
INSERT INTO `oc_zone` VALUES (3980, 230, 0x4b4e, 0x5175e1baa36e67204e67c3a369, 1);
INSERT INTO `oc_zone` VALUES (3981, 230, 0x5148, 0x5175e1baa36e67204e696e68, 1);
INSERT INTO `oc_zone` VALUES (3982, 230, 0x5154, 0x5175e1baa36e67205472e1bb8b, 1);
INSERT INTO `oc_zone` VALUES (3983, 230, 0x5354, 0x53c3b363205472c4836e67, 1);
INSERT INTO `oc_zone` VALUES (3984, 230, 0x534c, 0x53c6a16e204c61, 1);
INSERT INTO `oc_zone` VALUES (3985, 230, 0x544e, 0x54c3a279204e696e68, 1);
INSERT INTO `oc_zone` VALUES (3986, 230, 0x5442, 0x5468c3a1692042c3ac6e68, 1);
INSERT INTO `oc_zone` VALUES (3987, 230, 0x5447, 0x5468c3a169204e677579c3aa6e, 1);
INSERT INTO `oc_zone` VALUES (3988, 230, 0x5448, 0x5468616e682048c3b361, 1);
INSERT INTO `oc_zone` VALUES (3989, 230, 0x5454, 0x5468e1bbab6120546869c3aa6e204875e1babf, 1);
INSERT INTO `oc_zone` VALUES (3990, 230, 0x5452, 0x5469e1bb816e204769616e67, 1);
INSERT INTO `oc_zone` VALUES (3991, 230, 0x5456, 0x5472c3a02056696e68, 1);
INSERT INTO `oc_zone` VALUES (3992, 230, 0x5451, 0x547579c3aa6e205175616e67, 1);
INSERT INTO `oc_zone` VALUES (3993, 230, 0x564c, 0x56c4a96e68204c6f6e67, 1);
INSERT INTO `oc_zone` VALUES (3994, 230, 0x5650, 0x56c4a96e68205068c3ba63, 1);
INSERT INTO `oc_zone` VALUES (3995, 230, 0x5942, 0x59c3aa6e2042c3a169, 1);
INSERT INTO `oc_zone` VALUES (3996, 230, 0x4442, 0xc49069e1bb876e204269c3aa6e, 1);
INSERT INTO `oc_zone` VALUES (3997, 230, 0x4852, 0x48e1baad75204769616e67, 1);
INSERT INTO `oc_zone` VALUES (3998, 230, 0x4b4c, 0xc490e1baaf6b204ec3b46e67, 1);

-- --------------------------------------------------------

-- 
-- Table structure for table `oc_zone_to_geo_zone`
-- 

DROP TABLE IF EXISTS `oc_zone_to_geo_zone`;
CREATE TABLE `oc_zone_to_geo_zone` (
  `zone_to_geo_zone_id` int(11) NOT NULL auto_increment,
  `country_id` int(11) NOT NULL,
  `zone_id` int(11) NOT NULL default '0',
  `geo_zone_id` int(11) NOT NULL,
  `date_added` datetime NOT NULL default '0000-00-00 00:00:00',
  `date_modified` datetime NOT NULL default '0000-00-00 00:00:00',
  PRIMARY KEY  (`zone_to_geo_zone_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=68 ;

-- 
-- Dumping data for table `oc_zone_to_geo_zone`
-- 

INSERT INTO `oc_zone_to_geo_zone` VALUES (67, 230, 3774, 3, '2012-05-25 00:13:52', '0000-00-00 00:00:00');
INSERT INTO `oc_zone_to_geo_zone` VALUES (66, 230, 3774, 4, '2012-05-25 00:13:28', '0000-00-00 00:00:00');
