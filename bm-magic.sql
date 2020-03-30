-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 30, 2020 at 06:03 PM
-- Server version: 10.1.34-MariaDB
-- PHP Version: 7.2.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bm-magic`
--

-- --------------------------------------------------------

--
-- Table structure for table `blogs`
--

CREATE TABLE `blogs` (
  `id` int(10) UNSIGNED NOT NULL,
  `blog_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `blog_slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `blog_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `is_active` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blogs`
--

INSERT INTO `blogs` (`id`, `blog_title`, `blog_slug`, `blog_image`, `description`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'Perspiciatis unde omnis iste natus error voluptatem', 'perspiciatis-unde-omnis-iste-natus-error-voluptatem', 'blogs/blog_1.jpeg', '<p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni.</p>\r\n\r\n                            <b>Assumenda</b>\r\n                            <p>At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat.</p>\r\n\r\n                            <p>Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem.</p>\r\n\r\n                            <ul class=\"ul-no-padding about-ul mb-3\">\r\n                                <li>Commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.Commodo ligula eget dolor. Aenean massa. Port sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.</li>\r\n                                <li>Dum sociis natoque penatibus et magnis dis parturient montes</li>\r\n                                <li>Nascetur ridiculus mus, Nulla consequat massa quis enim, Cum sociis natoque penatibus et magnis dis parturient montes</li>\r\n                                <li>Commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.Commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.</li>\r\n                                <li>Nascetur ridiculus mus, Nulla consequat massa quis enim  </li>\r\n                                <li>Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus, Nulla consequat massa quis enim </li>\r\n                                <li>Consectetuer adipiscing elit. Aenean commodo ligula eget dolor</li>\r\n                                \r\n                            </ul>\r\n\r\n                            <b>Doloremque</b>\r\n                            <p>Doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit.</p>\r\n\r\n                            <b>Lorem</b>\r\n                            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum</p>', 1, '2019-01-16 05:46:11', '2020-03-30 09:48:42');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon_class` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `icon_class`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'Development', 'development', 'fa-chart-line', 1, '2020-03-30 09:48:42', '2020-03-30 09:48:42'),
(2, 'Business', 'business', 'fa-business-time', 1, '2020-03-30 09:48:42', '2020-03-30 09:48:42'),
(3, 'IT & Software', 'IT-software', 'fa-laptop', 1, '2020-03-30 09:48:42', '2020-03-30 09:48:42'),
(4, 'Marketing', 'marketing', 'fa-funnel-dollar', 1, '2020-03-30 09:48:42', '2020-03-30 09:48:42'),
(5, 'Lifestyle', 'lifestyle', 'fa-heartbeat', 1, '2020-03-30 09:48:42', '2020-03-30 09:48:42'),
(6, 'Photography', 'photography', 'fa-camera-retro', 1, '2020-03-30 09:48:42', '2020-03-30 09:48:42'),
(7, 'Health & Fitness', 'health-fitness', 'fa-medkit', 1, '2020-03-30 09:48:42', '2020-03-30 09:48:42'),
(8, 'Teacher Training', 'teacher-training', 'fa-chalkboard-teacher', 1, '2020-03-30 09:48:42', '2020-03-30 09:48:42'),
(9, 'Music', 'music', 'fa-music', 1, '2020-03-30 09:48:42', '2020-03-30 09:48:42'),
(10, 'Academics', 'academics', 'fa-user-graduate', 1, '2020-03-30 09:48:42', '2020-03-30 09:48:42');

-- --------------------------------------------------------

--
-- Table structure for table `courses`
--

CREATE TABLE `courses` (
  `id` int(10) UNSIGNED NOT NULL,
  `instructor_id` int(10) UNSIGNED NOT NULL,
  `category_id` int(10) UNSIGNED NOT NULL,
  `instruction_level_id` int(10) UNSIGNED NOT NULL,
  `course_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `course_slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `keywords` text COLLATE utf8mb4_unicode_ci,
  `overview` text COLLATE utf8mb4_unicode_ci,
  `course_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `thumb_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `course_video` int(10) UNSIGNED DEFAULT NULL,
  `duration` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` decimal(8,2) DEFAULT NULL,
  `strike_out_price` decimal(8,2) DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `courses`
--

INSERT INTO `courses` (`id`, `instructor_id`, `category_id`, `instruction_level_id`, `course_title`, `course_slug`, `keywords`, `overview`, `course_image`, `thumb_image`, `course_video`, `duration`, `price`, `strike_out_price`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 9, 9, 4, 'Photography - Become a Better Photographer', 'photography-become-a-better-photographer', 'Health,History,Coding,GK,Technology,Future,Space,IQ,IT & Software', '<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using , making it look like readable English.</p>\r\n                   <p>There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don`t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn`t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable.</p>', 'course/1/1.jpg', 'course/1/thumb_1.jpg', NULL, '2 days', '0.00', '159.00', 1, '2020-03-30 09:48:42', '2020-03-30 09:48:42');

-- --------------------------------------------------------

--
-- Table structure for table `course_files`
--

CREATE TABLE `course_files` (
  `id` int(11) NOT NULL,
  `file_name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `file_title` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `file_type` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `file_extension` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `file_size` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `duration` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file_tag` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `uploader_id` int(11) NOT NULL,
  `processed` int(11) NOT NULL DEFAULT '1' COMMENT '0-not processed,1-processed',
  `created_at` int(11) NOT NULL,
  `updated_at` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `course_files`
--

INSERT INTO `course_files` (`id`, `file_name`, `file_title`, `file_type`, `file_extension`, `file_size`, `duration`, `file_tag`, `uploader_id`, `processed`, `created_at`, `updated_at`) VALUES
(1, 'sample-15568160485135', 'samplemp3', 'mp3', 'mp3', '4113874', '00:02:49', 'curriculum', 1, 1, 1556816050, 1556816050),
(2, 'sample_15568166868011', 'sample.pdf', 'pdf', 'pdf', '164061', '11', 'curriculum', 1, 1, 1556816686, 1556816686),
(3, 'sample_15568167745496', 'sample.pdf', 'pdf', 'pdf', '164061', '11', 'curriculum_resource', 1, 1, 1556816774, 1556816774),
(4, 'http://www.google.com', 'Google Site', 'link', 'link', '', NULL, 'curriculum_resource_link', 1, 1, 1556816825, 1556816825),
(5, 'http://www.facebook.com', 'Facebook Resource', 'link', 'link', '', NULL, 'curriculum_resource_link', 1, 1, 1556816856, 1556816856);

-- --------------------------------------------------------

--
-- Table structure for table `course_progress`
--

CREATE TABLE `course_progress` (
  `progress_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `course_id` int(11) NOT NULL,
  `lecture_id` int(11) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '0' COMMENT '0-incomplete,1-complete',
  `created_at` datetime NOT NULL,
  `modified_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `course_ratings`
--

CREATE TABLE `course_ratings` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `course_id` int(10) UNSIGNED NOT NULL,
  `rating` decimal(8,1) NOT NULL,
  `comments` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `course_taken`
--

CREATE TABLE `course_taken` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `course_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `course_taken`
--

INSERT INTO `course_taken` (`id`, `user_id`, `course_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, '2020-03-30 09:48:42', '2020-03-30 09:48:42');

-- --------------------------------------------------------

--
-- Table structure for table `course_videos`
--

CREATE TABLE `course_videos` (
  `id` int(11) NOT NULL,
  `video_title` text COLLATE utf8mb4_unicode_ci,
  `video_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `video_type` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `duration` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_name` text COLLATE utf8mb4_unicode_ci,
  `video_tag` text COLLATE utf8mb4_unicode_ci,
  `uploader_id` int(11) DEFAULT NULL,
  `course_id` int(11) DEFAULT NULL,
  `processed` int(11) NOT NULL DEFAULT '1' COMMENT '0-not processed,1-processed',
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `course_videos`
--

INSERT INTO `course_videos` (`id`, `video_title`, `video_name`, `video_type`, `duration`, `image_name`, `video_tag`, `uploader_id`, `course_id`, `processed`, `created_at`, `updated_at`) VALUES
(1, 'raw_1556815948_sample-15568159421897', 'sample.mp4', 'mp4', '00:02:24', 'sample-15568159421897.jpg', 'curriculum', 1, 1, 1, 1556816856, 1556816856);

-- --------------------------------------------------------

--
-- Table structure for table `credits`
--

CREATE TABLE `credits` (
  `id` int(10) UNSIGNED NOT NULL,
  `transaction_id` int(10) UNSIGNED NOT NULL,
  `instructor_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `course_id` int(10) UNSIGNED NOT NULL,
  `credit` decimal(10,2) DEFAULT NULL,
  `credits_for` int(11) DEFAULT NULL COMMENT '1-course_cost,2-course_commission',
  `is_admin` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `credits`
--

INSERT INTO `credits` (`id`, `transaction_id`, `instructor_id`, `user_id`, `course_id`, `credit`, `credits_for`, `is_admin`, `created_at`, `updated_at`) VALUES
(1, 1, 0, 1, 1, '0.00', 2, 1, '2020-03-30 09:48:42', '2020-03-30 09:48:42');

-- --------------------------------------------------------

--
-- Table structure for table `curriculum_lectures_quiz`
--

CREATE TABLE `curriculum_lectures_quiz` (
  `lecture_quiz_id` int(11) NOT NULL,
  `section_id` int(11) DEFAULT NULL,
  `type` int(11) DEFAULT NULL,
  `title` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `contenttext` text COLLATE utf8mb4_unicode_ci,
  `media` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `media_type` int(11) DEFAULT NULL COMMENT '0-video,1-audio,2-document,3-text',
  `sort_order` int(11) DEFAULT NULL,
  `publish` int(11) NOT NULL DEFAULT '0',
  `resources` text COLLATE utf8mb4_unicode_ci,
  `createdOn` datetime NOT NULL,
  `updatedOn` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `curriculum_lectures_quiz`
--

INSERT INTO `curriculum_lectures_quiz` (`lecture_quiz_id`, `section_id`, `type`, `title`, `description`, `contenttext`, `media`, `media_type`, `sort_order`, `publish`, `resources`, `createdOn`, `updatedOn`) VALUES
(1, 1, NULL, 'Installing a text editor', '<p>There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don`t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn`t anything embarrassing hidden in the middle of text.</p>', '', '1', 0, 1, 1, '[3]', '2020-03-30 15:18:42', '2020-03-30 15:18:42'),
(2, 1, NULL, 'Adding real content', '<p>If you are going to use a passage of Lorem Ipsum, you need to be sure there isn`t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet.</p>', '', '1', 1, 2, 1, '[3]', '2020-03-30 15:18:42', '2020-03-30 15:18:42'),
(3, 1, NULL, 'Creating our index page', '<p>All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable.</p>', '', '2', 2, 3, 1, '[4]', '2020-03-30 15:18:42', '2020-03-30 15:18:42'),
(4, 1, NULL, 'Customizing the vendors', '<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using content, making it look like readable English.</p>', '<p>The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using content, making it look like readable English.</p><p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using content, making it look like readable English.</p><p>There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don`t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn`t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable.</p>', NULL, 3, 4, 1, '[5]', '2020-03-30 15:18:42', '2020-03-30 15:18:42'),
(5, 2, NULL, 'Installing a text editor', '<p>There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don`t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn`t anything embarrassing hidden in the middle of text.</p>', '', '1', 0, 1, 1, '[3]', '2020-03-30 15:18:42', '2020-03-30 15:18:42'),
(6, 2, NULL, 'Adding real content', '<p>If you are going to use a passage of Lorem Ipsum, you need to be sure there isn`t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet.</p>', '', '1', 1, 2, 1, '[3]', '2020-03-30 15:18:42', '2020-03-30 15:18:42'),
(7, 2, NULL, 'Creating our index page', '<p>All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable.</p>', '', '2', 2, 3, 1, '[4]', '2020-03-30 15:18:42', '2020-03-30 15:18:42'),
(8, 2, NULL, 'Customizing the vendors', '<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using content, making it look like readable English.</p>', '<p>The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using content, making it look like readable English.</p><p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using content, making it look like readable English.</p><p>There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don`t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn`t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable.</p>', NULL, 3, 4, 1, '[5]', '2020-03-30 15:18:42', '2020-03-30 15:18:42'),
(9, 3, NULL, 'Installing a text editor', '<p>There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don`t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn`t anything embarrassing hidden in the middle of text.</p>', '', '1', 0, 1, 1, '[3]', '2020-03-30 15:18:42', '2020-03-30 15:18:42'),
(10, 3, NULL, 'Adding real content', '<p>If you are going to use a passage of Lorem Ipsum, you need to be sure there isn`t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet.</p>', '', '1', 1, 2, 1, '[3]', '2020-03-30 15:18:42', '2020-03-30 15:18:42'),
(11, 3, NULL, 'Creating our index page', '<p>All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable.</p>', '', '2', 2, 3, 1, '[4]', '2020-03-30 15:18:42', '2020-03-30 15:18:42'),
(12, 3, NULL, 'Customizing the vendors', '<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using content, making it look like readable English.</p>', '<p>The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using content, making it look like readable English.</p><p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using content, making it look like readable English.</p><p>There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don`t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn`t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable.</p>', NULL, 3, 4, 1, '[5]', '2020-03-30 15:18:42', '2020-03-30 15:18:42'),
(13, 4, NULL, 'Installing a text editor', '<p>There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don`t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn`t anything embarrassing hidden in the middle of text.</p>', '', '1', 0, 1, 1, '[3]', '2020-03-30 15:18:42', '2020-03-30 15:18:42'),
(14, 4, NULL, 'Adding real content', '<p>If you are going to use a passage of Lorem Ipsum, you need to be sure there isn`t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet.</p>', '', '1', 1, 2, 1, '[3]', '2020-03-30 15:18:42', '2020-03-30 15:18:42'),
(15, 4, NULL, 'Creating our index page', '<p>All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable.</p>', '', '2', 2, 3, 1, '[4]', '2020-03-30 15:18:42', '2020-03-30 15:18:42'),
(16, 4, NULL, 'Customizing the vendors', '<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using content, making it look like readable English.</p>', '<p>The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using content, making it look like readable English.</p><p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using content, making it look like readable English.</p><p>There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don`t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn`t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable.</p>', NULL, 3, 4, 1, '[5]', '2020-03-30 15:18:42', '2020-03-30 15:18:42'),
(17, 5, NULL, 'Installing a text editor', '<p>There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don`t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn`t anything embarrassing hidden in the middle of text.</p>', '', '1', 0, 1, 1, '[3]', '2020-03-30 15:18:42', '2020-03-30 15:18:42'),
(18, 5, NULL, 'Adding real content', '<p>If you are going to use a passage of Lorem Ipsum, you need to be sure there isn`t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet.</p>', '', '1', 1, 2, 1, '[3]', '2020-03-30 15:18:42', '2020-03-30 15:18:42'),
(19, 5, NULL, 'Creating our index page', '<p>All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable.</p>', '', '2', 2, 3, 1, '[4]', '2020-03-30 15:18:42', '2020-03-30 15:18:42'),
(20, 5, NULL, 'Customizing the vendors', '<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using content, making it look like readable English.</p>', '<p>The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using content, making it look like readable English.</p><p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using content, making it look like readable English.</p><p>There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don`t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn`t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable.</p>', NULL, 3, 4, 1, '[5]', '2020-03-30 15:18:42', '2020-03-30 15:18:42'),
(21, 6, NULL, 'Installing a text editor', '<p>There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don`t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn`t anything embarrassing hidden in the middle of text.</p>', '', '1', 0, 1, 1, '[3]', '2020-03-30 15:18:42', '2020-03-30 15:18:42'),
(22, 6, NULL, 'Adding real content', '<p>If you are going to use a passage of Lorem Ipsum, you need to be sure there isn`t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet.</p>', '', '1', 1, 2, 1, '[3]', '2020-03-30 15:18:42', '2020-03-30 15:18:42'),
(23, 6, NULL, 'Creating our index page', '<p>All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable.</p>', '', '2', 2, 3, 1, '[4]', '2020-03-30 15:18:42', '2020-03-30 15:18:42'),
(24, 6, NULL, 'Customizing the vendors', '<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using content, making it look like readable English.</p>', '<p>The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using content, making it look like readable English.</p><p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using content, making it look like readable English.</p><p>There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don`t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn`t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable.</p>', NULL, 3, 4, 1, '[5]', '2020-03-30 15:18:42', '2020-03-30 15:18:42');

-- --------------------------------------------------------

--
-- Table structure for table `curriculum_sections`
--

CREATE TABLE `curriculum_sections` (
  `section_id` int(11) NOT NULL,
  `course_id` int(11) DEFAULT NULL,
  `title` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sort_order` int(11) DEFAULT NULL,
  `createdOn` datetime NOT NULL,
  `updatedOn` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `curriculum_sections`
--

INSERT INTO `curriculum_sections` (`section_id`, `course_id`, `title`, `sort_order`, `createdOn`, `updatedOn`) VALUES
(1, 1, 'Introduction', 0, '2020-03-30 15:18:42', '2020-03-30 15:18:42'),
(2, 1, 'Neque porro quisquam', 1, '2020-03-30 15:18:42', '2020-03-30 15:18:42'),
(3, 1, 'Dignissimos ducimus qui blanditiis praesentium', 2, '2020-03-30 15:18:42', '2020-03-30 15:18:42'),
(4, 1, 'Maxime placeat facere possimus', 3, '2020-03-30 15:18:42', '2020-03-30 15:18:42'),
(5, 1, 'Molestias excepturi sint occaecati cupiditate', 4, '2020-03-30 15:18:42', '2020-03-30 15:18:42'),
(6, 1, 'Reprehenderit qui in ea voluptate velit esse', 5, '2020-03-30 15:18:42', '2020-03-30 15:18:42');

-- --------------------------------------------------------

--
-- Table structure for table `instruction_levels`
--

CREATE TABLE `instruction_levels` (
  `id` int(10) UNSIGNED NOT NULL,
  `level` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `instruction_levels`
--

INSERT INTO `instruction_levels` (`id`, `level`) VALUES
(1, 'Introductory'),
(2, 'Intermediate'),
(3, 'Advanced'),
(4, 'Comprehensive');

-- --------------------------------------------------------

--
-- Table structure for table `instructors`
--

CREATE TABLE `instructors` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `first_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `instructor_slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact_email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `telephone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `paypal_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_facebook` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link_linkedin` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link_twitter` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link_googleplus` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `biography` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `instructor_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `total_credits` decimal(10,2) NOT NULL DEFAULT '0.00',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `instructors`
--

INSERT INTO `instructors` (`id`, `user_id`, `first_name`, `last_name`, `instructor_slug`, `contact_email`, `telephone`, `mobile`, `paypal_id`, `link_facebook`, `link_linkedin`, `link_twitter`, `link_googleplus`, `biography`, `instructor_image`, `total_credits`, `created_at`, `updated_at`) VALUES
(1, 3, 'Angela', 'Yu', 'angela-yu', 'instructor@ulearn.com', '+61 (800) 123-54323', '+61 800-1233-8766', 'instructor@ulearn.com', NULL, NULL, NULL, NULL, '<p>Aenean commodo ligula eget dolor. Aenean massa. Sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim. Donec pede justo, fringilla vel, aliquet nec, vulputate eget, arcu. In enim justo, eta rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis. Lorem ipsum dolor sit amet,Aenean commodo ligula eget dolor. Aenean massa. Sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.</p><p>Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim. Donec pede justo, fringilla vel, aliquet nec, vulputate eget, arcu. In enim justo, eta rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis. Lorem ipsum dolor sit amet,Aenean commodo ligula eget dolor. Aenean massa. Sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.</p>', 'instructor/1/angela.jpg', '0.00', '2020-03-30 09:48:42', '2020-03-30 09:48:42');

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
(1, '2019_02_18_062028_create_categories_table', 1),
(2, '2019_02_18_062028_create_course_files_table', 1),
(3, '2019_02_18_062028_create_course_videos_table', 1),
(4, '2019_02_18_062028_create_courses_table', 1),
(5, '2019_02_18_062028_create_curriculum_lectures_quiz_table', 1),
(6, '2019_02_18_062028_create_curriculum_sections_table', 1),
(7, '2019_02_18_062028_create_instruction_levels_table', 1),
(8, '2019_02_18_062028_create_password_resets_table', 1),
(9, '2019_02_18_062028_create_role_user_table', 1),
(10, '2019_02_18_062028_create_roles_table', 1),
(11, '2019_02_18_062028_create_users_table', 1),
(12, '2019_02_22_063348_create_instructors_table', 1),
(13, '2019_02_22_151526_create_payments_table', 1),
(14, '2019_03_02_084257_create_course_ratings', 1),
(15, '2019_03_03_072224_create_blogs_table', 1),
(16, '2019_03_04_141453_create_options_table', 1),
(17, '2019_03_08_072337_create_withdraw_requests_table', 1),
(18, '2019_04_07_145907_create_course_progress', 1);

-- --------------------------------------------------------

--
-- Table structure for table `options`
--

CREATE TABLE `options` (
  `id` int(10) UNSIGNED NOT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `option_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `option_value` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `options`
--

INSERT INTO `options` (`id`, `code`, `option_key`, `option_value`) VALUES
(1, 'pageHome', 'banner_title', 'Learn courses online'),
(2, 'pageHome', 'banner_text', 'Learn every topic. On time. Everytime.'),
(3, 'pageHome', 'instructor_text', 'We have more than 3,250 skilled & professional Instructors'),
(4, 'pageHome', 'learn_block_title', 'Learn every topic, everytime.'),
(5, 'pageHome', 'learn_block_text', '\r\n            Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit.'),
(6, 'pageAbout', 'content', '<article class=\"container\">\r\n            <div class=\"row\">\r\n                <div class=\"col-12\">\r\n                   <h5 class=\"mt-3 underline-heading\">OUR MISSION IS SIMPLE</h5>\r\n                   <p>Cobem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim. Donec pede justo, fringilla dolor sit amet, consectetuer adipiscing elit. </p>\r\n                   <p> Aenean commodo ligula eget dolor. Aenean massa. Sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim. Donec pede justo, fringilla vel, aliquet nec, vulputate eget, arcu. In enim justo, eta rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis. Lorem ipsum dolor sit amet,Aenean commodo ligula eget dolor. Aenean massa. Sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim. Donec pede justo, fringilla vel, aliquet nec, vulputate eget, arcu. In enim justo, eta rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis. Lorem ipsum dolor sit amet,</p>\r\n\r\n                   <ul class=\"ul-no-padding about-ul\">\r\n                        <li>Commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.Commodo ligula eget dolor. Aenean massa. Port sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.</li>\r\n                        <li>Dum sociis natoque penatibus et magnis dis parturient montes</li>\r\n                        <li>Nascetur ridiculus mus, Nulla consequat massa quis enim, Cum sociis natoque penatibus et magnis dis parturient montes</li>\r\n                        <li>Commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.Commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.</li>\r\n                        <li>Nascetur ridiculus mus, Nulla consequat massa quis enim  </li>\r\n                        <li>Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus, Nulla consequat massa quis enim </li>\r\n                        <li>Consectetuer adipiscing elit. Aenean commodo ligula eget dolor</li>\r\n                        \r\n                    </ul>\r\n                </div>\r\n            </div>\r\n        </article><article class=\"count-block jumbotron\">\r\n        <div class=\"container\">\r\n            <div class=\"row\">\r\n                <div class=\"col-xl-3 col-lg-3 col-md-6 col-sm-6 col-6\">\r\n                    <h3 class=\"underline-heading\">150</h3>\r\n                    <h6>COUNTRIES REACHED</h6>\r\n                </div>\r\n                <div class=\"col-xl-3 col-lg-3 col-md-6 col-sm-6 col-6\">\r\n                    <h3 class=\"underline-heading\">850</h3>\r\n                    <h6>COUNTRIES REACHED</h6>\r\n                </div>\r\n                <div class=\"col-xl-3 col-lg-3 col-md-6 col-sm-6 col-6\">\r\n                    <h3 class=\"underline-heading\">38300</h3>\r\n                    <h6>PASSED GRADUATES</h6>\r\n                </div>\r\n                <div class=\"col-xl-3 col-lg-3 col-md-6 col-sm-6 col-6\">\r\n                    <h3 class=\"underline-heading\">3400</h3>\r\n                    <h6>COURSES PUBLISHED</h6>\r\n                </div>\r\n            </div>\r\n        </div>\r\n    </article><article class=\"about-features-block\">\r\n    <div class=\"container\">\r\n        <div class=\"row\">\r\n            <div class=\"col-12 text-center seperator-head mt-3\">\r\n                <h3>Why choose Ulearn</h3>\r\n                <p class=\"mt-3\">Cum doctus civibus efficiantur in imperdiet deterruisset.</p>\r\n            </div>\r\n        </div>\r\n                        <div class=\"row mt-4 mb-5\">\r\n                                <div class=\"col-xl-3 col-lg-4 col-md-6 col-sm-6\">\r\n                <div class=\"feature-box mx-auto text-center\">\r\n                    <main>\r\n                        <i class=\"fas fa-file-signature\"></i>\r\n                        <div class=\"col-md-12\">\r\n                            <h6 class=\"instructor-title\">Hi-Tech Learning </h6>\r\n                            <p>Aenean massa. Sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. </p>\r\n                        </div>\r\n                    </main>\r\n                </div>\r\n            </div>\r\n                            <div class=\"col-xl-3 col-lg-4 col-md-6 col-sm-6\">\r\n                <div class=\"feature-box mx-auto text-center\">\r\n                    <main>\r\n                        <i class=\"fas fa-users-cog\"></i>\r\n                        <div class=\"col-md-12\">\r\n                            <h6 class=\"instructor-title\">Course Discussion </h6>\r\n                            <p>Aenean massa. Sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. </p>\r\n                        </div>\r\n                    </main>\r\n                </div>\r\n            </div>\r\n                            <div class=\"col-xl-3 col-lg-4 col-md-6 col-sm-6\">\r\n                <div class=\"feature-box mx-auto text-center\">\r\n                    <main>\r\n                        <i class=\"fas fa-shield-alt\"></i>\r\n                        <div class=\"col-md-12\">\r\n                            <h6 class=\"instructor-title\">Website Security </h6>\r\n                            <p>Aenean massa. Sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. </p>\r\n                        </div>\r\n                    </main>\r\n                </div>\r\n            </div>\r\n                            <div class=\"col-xl-3 col-lg-4 col-md-6 col-sm-6\">\r\n                <div class=\"feature-box mx-auto text-center\">\r\n                    <main>\r\n                        <i class=\"fas fa-chalkboard-teacher\"></i>\r\n                        <div class=\"col-md-12\">\r\n                            <h6 class=\"instructor-title\">Qualified teachers </h6>\r\n                            <p>Aenean massa. Sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. </p>\r\n                        </div>\r\n                    </main>\r\n                </div>\r\n            </div>\r\n                            <div class=\"col-xl-3 col-lg-4 col-md-6 col-sm-6\">\r\n                <div class=\"feature-box mx-auto text-center\">\r\n                    <main>\r\n                        <i class=\"fas fa-building\"></i>\r\n                        <div class=\"col-md-12\">\r\n                            <h6 class=\"instructor-title\">Equiped class rooms </h6>\r\n                            <p>Aenean massa. Sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. </p>\r\n                        </div>\r\n                    </main>\r\n                </div>\r\n            </div>\r\n                            <div class=\"col-xl-3 col-lg-4 col-md-6 col-sm-6\">\r\n                <div class=\"feature-box mx-auto text-center\">\r\n                    <main>\r\n                        <i class=\"fas fa-digital-tachograph\"></i>\r\n                        <div class=\"col-md-12\">\r\n                            <h6 class=\"instructor-title\">Advanced teaching </h6>\r\n                            <p>Aenean massa. Sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. </p>\r\n                        </div>\r\n                    </main>\r\n                </div>\r\n            </div>\r\n                            <div class=\"col-xl-3 col-lg-4 col-md-6 col-sm-6\">\r\n                <div class=\"feature-box mx-auto text-center\">\r\n                    <main>\r\n                        <i class=\"fas fa-puzzle-piece\"></i>\r\n                        <div class=\"col-md-12\">\r\n                            <h6 class=\"instructor-title\">Adavanced study plans </h6>\r\n                            <p>Aenean massa. Sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. </p>\r\n                        </div>\r\n                    </main>\r\n                </div>\r\n            </div>\r\n                            <div class=\"col-xl-3 col-lg-4 col-md-6 col-sm-6\">\r\n                <div class=\"feature-box mx-auto text-center\">\r\n                    <main>\r\n                        <i class=\"fas fa-bullseye\"></i>\r\n                        <div class=\"col-md-12\">\r\n                            <h6 class=\"instructor-title\">Focus on target </h6>\r\n                            <p>Aenean massa. Sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. </p>\r\n                        </div>\r\n                    </main>\r\n                </div>\r\n            </div>\r\n                            <div class=\"col-xl-3 col-lg-4 col-md-6 col-sm-6\">\r\n                <div class=\"feature-box mx-auto text-center\">\r\n                    <main>\r\n                        <i class=\"fas fa-thumbs-up\"></i>\r\n                        <div class=\"col-md-12\">\r\n                            <h6 class=\"instructor-title\">Focus on success </h6>\r\n                            <p>Aenean massa. Sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. </p>\r\n                        </div>\r\n                    </main>\r\n                </div>\r\n            </div>\r\n                            <div class=\"col-xl-3 col-lg-4 col-md-6 col-sm-6\">\r\n                <div class=\"feature-box mx-auto text-center\">\r\n                    <main>\r\n                        <i class=\"fas fa-tablet-alt\"></i>\r\n                        <div class=\"col-md-12\">\r\n                            <h6 class=\"instructor-title\">Responsive Design </h6>\r\n                            <p>Aenean massa. Sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. </p>\r\n                        </div>\r\n                    </main>\r\n                </div>\r\n            </div>\r\n                            <div class=\"col-xl-3 col-lg-4 col-md-6 col-sm-6\">\r\n                <div class=\"feature-box mx-auto text-center\">\r\n                    <main>\r\n                        <i class=\"fas fa-credit-card\"></i>\r\n                        <div class=\"col-md-12\">\r\n                            <h6 class=\"instructor-title\">Payment Gateways </h6>\r\n                            <p>Aenean massa. Sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. </p>\r\n                        </div>\r\n                    </main>\r\n                </div>\r\n            </div>\r\n                            <div class=\"col-xl-3 col-lg-4 col-md-6 col-sm-6\">\r\n                <div class=\"feature-box mx-auto text-center\">\r\n                    <main>\r\n                        <i class=\"fas fa-search-plus\"></i>\r\n                        <div class=\"col-md-12\">\r\n                            <h6 class=\"instructor-title\">SEO Friendly </h6>\r\n                            <p>Aenean massa. Sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. </p>\r\n                        </div>\r\n                    </main>\r\n                </div>\r\n            </div>\r\n                        </div>\r\n    </div>\r\n</article>'),
(7, 'pageContact', 'telephone', '+61 (800) 123-54323'),
(8, 'pageContact', 'email', 'XYZ@example.com'),
(9, 'pageContact', 'address', '8432 Newyork United States'),
(10, 'pageContact', 'map', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3022.940622898076!2d-74.00543578509465!3d40.74133204375838!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x89c259bf14f1f51f%3A0xcc1b5ab35bd75df0!2sGoogle!5e0!3m2!1sen!2sin!4v1542693598934\" width=\"100%\" height=\"100%\" frameborder=\"0\" style=\"border:0\" allowfullscreen></iframe>'),
(11, 'settingGeneral', 'application_name', 'Believe Master Magic'),
(12, 'settingGeneral', 'meta_key', 'Magicians Online'),
(13, 'settingGeneral', 'meta_description', 'Learn every topic. On time. Every time.'),
(14, 'settingGeneral', 'admin_commission', '20'),
(15, 'settingGeneral', 'admin_email', 'admin@ulearn.com'),
(16, 'settingGeneral', 'minimum_withdraw', '100'),
(17, 'settingGeneral', 'header_logo', 'config/logo png white big.png'),
(18, 'settingGeneral', 'fav_icon', 'config/favicon.png'),
(19, 'settingGeneral', 'footer_logo', 'config/logo png white big(1).png'),
(20, 'settingPayment', 'username', ''),
(21, 'settingPayment', 'password', ''),
(22, 'settingPayment', 'signature', ''),
(23, 'settingPayment', 'test_mode', '1'),
(24, 'settingPayment', 'is_active', '1'),
(25, 'settingEmail', 'smtp_host', NULL),
(26, 'settingEmail', 'smtp_port', NULL),
(27, 'settingEmail', 'smtp_secure', NULL),
(28, 'settingEmail', 'smtp_username', NULL),
(29, 'settingEmail', 'smtp_password', NULL),
(30, 'settingGeneral', 'old_header_logo', 'config/logo.png'),
(31, 'settingGeneral', 'old_footer_logo', 'config/logo_footer.png'),
(32, 'settingGeneral', 'old_fav_icon', 'config/favicon.png');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `description`, `created_at`, `updated_at`) VALUES
(1, 'student', 'Student to learn course', '2020-03-30 09:48:41', '2020-03-30 09:48:41'),
(2, 'instructor', 'Instructor to manage course', '2020-03-30 09:48:41', '2020-03-30 09:48:41'),
(3, 'admin', 'Admin to manage the site', '2020-03-30 09:48:41', '2020-03-30 09:48:41');

-- --------------------------------------------------------

--
-- Table structure for table `role_user`
--

CREATE TABLE `role_user` (
  `id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_user`
--

INSERT INTO `role_user` (`id`, `role_id`, `user_id`) VALUES
(1, 1, 1),
(2, 3, 2),
(3, 1, 3),
(4, 2, 3);

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `course_id` int(10) UNSIGNED NOT NULL,
  `amount` decimal(10,2) DEFAULT NULL,
  `status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_method` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_details` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `transactions`
--

INSERT INTO `transactions` (`id`, `user_id`, `course_id`, `amount`, `status`, `payment_method`, `order_details`, `created_at`, `updated_at`) VALUES
(1, 1, 1, '0.00', 'completed', 'paypal_express_checkout', '{\"TOKEN\":\"success\",\"status\":\"succeeded\",\"Timestamp\":1561787415,\"ACK\":\"Success\"}', '2020-03-30 09:48:42', '2020-03-30 09:48:42');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `first_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `password`, `is_active`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Osman', 'Kanu', 'student@ulearn.com', '$2y$10$FwQh79ScObhOCOR34NvfIuem0lLvI8Uf/3/5GUrPTW9Y2nfjUShUO', 1, NULL, '2020-03-30 09:48:42', '2020-03-30 09:48:42'),
(2, 'Admin', 'A', 'admin@ulearn.com', '$2y$10$nuQyUmHmuFVMJRg2wIzgvu4sdgjiVYhNOghftqU628sxNqAOR5xum', 1, 'E2jVZVuzNRhCMDXsZ41LNBs0RtwI71b6619L1emLO5lWhUiCaGb6N9twfdwx', '2020-03-30 09:48:42', '2020-03-30 09:48:42'),
(3, 'Angela', 'Yu', 'instructor@ulearn.com', '$2y$10$rEAwlKAxq/xu4S4idwrOxeHOQOVyTA4U/j0Dz3AxSW9MhCn9L5Pva', 1, NULL, '2020-03-30 09:48:42', '2020-03-30 09:48:42');

-- --------------------------------------------------------

--
-- Table structure for table `withdraw_requests`
--

CREATE TABLE `withdraw_requests` (
  `id` int(10) UNSIGNED NOT NULL,
  `instructor_id` int(11) NOT NULL,
  `paypal_id` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` decimal(10,2) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '0' COMMENT '0-pending,1-processed',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `course_files`
--
ALTER TABLE `course_files`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `course_progress`
--
ALTER TABLE `course_progress`
  ADD PRIMARY KEY (`progress_id`);

--
-- Indexes for table `course_ratings`
--
ALTER TABLE `course_ratings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `course_taken`
--
ALTER TABLE `course_taken`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `course_videos`
--
ALTER TABLE `course_videos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `credits`
--
ALTER TABLE `credits`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `curriculum_lectures_quiz`
--
ALTER TABLE `curriculum_lectures_quiz`
  ADD PRIMARY KEY (`lecture_quiz_id`);

--
-- Indexes for table `curriculum_sections`
--
ALTER TABLE `curriculum_sections`
  ADD PRIMARY KEY (`section_id`);

--
-- Indexes for table `instruction_levels`
--
ALTER TABLE `instruction_levels`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `instructors`
--
ALTER TABLE `instructors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `options`
--
ALTER TABLE `options`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `role_user`
--
ALTER TABLE `role_user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `withdraw_requests`
--
ALTER TABLE `withdraw_requests`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `blogs`
--
ALTER TABLE `blogs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `courses`
--
ALTER TABLE `courses`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `course_files`
--
ALTER TABLE `course_files`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `course_progress`
--
ALTER TABLE `course_progress`
  MODIFY `progress_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `course_ratings`
--
ALTER TABLE `course_ratings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `course_taken`
--
ALTER TABLE `course_taken`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `course_videos`
--
ALTER TABLE `course_videos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `credits`
--
ALTER TABLE `credits`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `curriculum_lectures_quiz`
--
ALTER TABLE `curriculum_lectures_quiz`
  MODIFY `lecture_quiz_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `curriculum_sections`
--
ALTER TABLE `curriculum_sections`
  MODIFY `section_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `instruction_levels`
--
ALTER TABLE `instruction_levels`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `instructors`
--
ALTER TABLE `instructors`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `options`
--
ALTER TABLE `options`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `role_user`
--
ALTER TABLE `role_user`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `withdraw_requests`
--
ALTER TABLE `withdraw_requests`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
