-- phpMyAdmin SQL Dump
-- version 4.9.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Nov 17, 2020 at 05:10 PM
-- Server version: 5.7.26
-- PHP Version: 7.4.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `flex_home`
--

-- --------------------------------------------------------

--
-- Table structure for table `activations`
--

CREATE TABLE `activations` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `code` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `completed` tinyint(1) NOT NULL DEFAULT '0',
  `completed_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `activations`
--

INSERT INTO `activations` (`id`, `user_id`, `code`, `completed`, `completed_at`, `created_at`, `updated_at`) VALUES
(1, 1, 'JVEVccHIalHLwIL41uMnOJDfC0p59ohS', 1, '2019-11-15 04:53:30', '2019-11-15 04:53:30', '2019-11-15 04:53:30');

-- --------------------------------------------------------

--
-- Table structure for table `audit_histories`
--

CREATE TABLE `audit_histories` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `module` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `request` text COLLATE utf8mb4_unicode_ci,
  `action` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `ip_address` varchar(39) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reference_user` int(10) UNSIGNED NOT NULL,
  `reference_id` int(10) UNSIGNED NOT NULL,
  `reference_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `audit_histories`
--

INSERT INTO `audit_histories` (`id`, `user_id`, `module`, `request`, `action`, `user_agent`, `ip_address`, `reference_user`, `reference_id`, `reference_name`, `type`, `created_at`, `updated_at`) VALUES
(1, 1, 'to the system', NULL, 'logged in', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 11_0_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '::1', 0, 1, 'System Admin', 'info', '2020-11-16 08:53:10', '2020-11-16 08:53:10'),
(2, 1, 'to the system', NULL, 'logged in', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 11_0_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '::1', 0, 1, 'System Admin', 'info', '2020-11-16 08:55:51', '2020-11-16 08:55:51'),
(3, 1, 'to the system', NULL, 'logged in', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 11_0_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '::1', 0, 1, 'System Admin', 'info', '2020-11-16 20:23:40', '2020-11-16 20:23:40'),
(4, 1, 'to the system', NULL, 'logged in', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 11_0_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '::1', 0, 1, 'System Admin', 'info', '2020-11-17 02:25:15', '2020-11-17 02:25:15');

-- --------------------------------------------------------

--
-- Table structure for table `careers`
--

CREATE TABLE `careers` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `location` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `salary` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `careers`
--

INSERT INTO `careers` (`id`, `name`, `location`, `salary`, `content`, `status`, `created_at`, `updated_at`, `description`) VALUES
(1, 'Sales Manager (Up to 2600$)', 'Ho Chi Minh, Viet Nam', '1300$ - 2600$', '<p><span style=\"font-size:16px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\"><strong>BENEFITS FOR YOU</strong></span></span></p>\r\n\r\n<p><span style=\"font-size:14px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\">- Applicants receive a salary from 1300 USD to 2600 USD<br />\r\n- Fully enjoy the regimes according to Vietnam&#39;s Labor Law: Social insurance, health insurance, unemployment insurance<br />\r\n- Trained to improve expertise and capacity in suitable positions.</span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style=\"font-size:16px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\"><strong>JOB DESCRIPTION</strong></span></span></p>\r\n\r\n<p><span style=\"font-size:14px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\">- Coordinate with the Investment Department in organizing the collection, analysis, evaluation of market information and submitting proposals for planning the project&#39;s products and investment cooperation plans (if any);<br />\r\n- Acting as a focal point of exploitation and trading with customers, managing trading floors and distributors;<br />\r\n- Checking and approving the selection of sales units, management units for exploitation, operation and investment cooperation;<br />\r\n- Leading the negotiation and management of contracts with customers, sales units, management of exploitation, operation and investment cooperation;<br />\r\n- Prepare and submit a price approval for the sale, lease, and cooperation prices of all real estate projects;<br />\r\n- Develop sales plans, sales policies, support and promotions;<br />\r\n- Coordinate with member companies (Project Management Board) to collect and hand over product records (technical documents, red books, sales contracts ...) to hand over customers;<br />\r\n- Deploy customer support activities;</span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style=\"font-size:16px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\"><strong>JOB REQUIREMENTS</strong></span></span></p>\r\n\r\n<p><span style=\"font-size:14px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\">- Preferred age: 30-35<br />\r\n- University degree in Business Administration, Economics, or related industries.<br />\r\n- Over 03 years of experience in assuming the position of Real Estate Business City<br />\r\n- Priority with a certificate of real estate broker, certificate of real estate trading floor management<br />\r\n- Good planning, operating, and control skills<br />\r\n- Good communication, negotiation and problem-solving skills</span></span></p>', 'published', '2019-11-30 19:43:10', '2019-11-30 19:46:53', NULL),
(2, 'Trưởng Phòng Kinh Doanh ( Lương lên tới 60tr)', 'Ho Chi Minh, Viet Nam', '30,000,000 VND-60,000,000 VND', '<p><span style=\"font-size:16px;\"><strong><span style=\"font-family:Arial,Helvetica,sans-serif;\">C&Aacute;C PH&Uacute;C LỢI D&Agrave;NH CHO BẠN</span></strong></span></p>\r\n\r\n<p><span style=\"font-size:14px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\">- Ứng vi&ecirc;n được hưởng mức lương từ 30.000.000 VND đến 60.000.000 VND</span></span></p>\r\n\r\n<p><span style=\"font-size:14px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\">- Được hưởng đầy đủ c&aacute;c chế độ theo Luật lao động Việt Nam: BHXH, BHYT, BHTN</span></span></p>\r\n\r\n<p><span style=\"font-size:14px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\">- Được đ&agrave;o tạo n&acirc;ng cao chuy&ecirc;n m&ocirc;n, năng lực tại c&aacute;c vị tr&iacute; ph&ugrave; hợp</span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style=\"font-size:16px;\"><strong><span style=\"font-family:Arial,Helvetica,sans-serif;\">M&Ocirc; TẢ C&Ocirc;NG VIỆC</span></strong></span></p>\r\n\r\n<p><span style=\"font-size:14px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\">- Phối hợp với ph&ograve;ng Đầu tư tổ chức thu thập, ph&acirc;n t&iacute;ch, đ&aacute;nh gi&aacute; th&ocirc;ng tin thị trường v&agrave; tr&igrave;nh đề xuất hoạch định c&aacute;c sản phẩm của dự &aacute;n, c&aacute;c phương &aacute;n hợp t&aacute;c đầu tư (nếu c&oacute;);<br />\r\n- Đầu mối khai th&aacute;c v&agrave; giao dịch với kh&aacute;ch h&agrave;ng, quản l&yacute; c&aacute;c s&agrave;n giao dịch, c&aacute;c nh&agrave; ph&acirc;n phối b&aacute;n h&agrave;ng;<br />\r\n- Kiểm tra, tr&igrave;nh duyệt lựa chọn c&aacute;c đơn vị b&aacute;n h&agrave;ng, đơn vị quản l&yacute; khai th&aacute;c, vận h&agrave;nh v&agrave; hợp t&aacute;c đầu tư;<br />\r\n- Chủ tr&igrave; đ&agrave;m ph&aacute;n v&agrave; quản l&yacute; c&aacute;c hợp đồng với kh&aacute;ch h&agrave;ng, c&aacute;c đơn vị b&aacute;n h&agrave;ng, quản l&yacute; khai th&aacute;c, vận h&agrave;nh v&agrave; hợp t&aacute;c đầu tư;<br />\r\n- Lập, tr&igrave;nh duyệt gi&aacute; b&aacute;n, gi&aacute; thu&ecirc;, gi&aacute; hợp t&aacute;c c&aacute;c sản phẩm của to&agrave;n bộ c&aacute;c dự &aacute;n bất động sản;<br />\r\n- X&acirc;y dựng kế hoạch b&aacute;n h&agrave;ng, ch&iacute;nh s&aacute;ch b&aacute;n h&agrave;ng, hỗ trợ v&agrave; khuyến mại;<br />\r\n- Phối hợp với c&ocirc;ng ty th&agrave;nh vi&ecirc;n (Ban quản l&yacute; dự &aacute;n) tập hợp v&agrave; b&agrave;n giao hồ sơ sản phẩm (hồ sơ kỹ thuật, sổ đỏ, hợp đồng mua b&aacute;n&hellip;) b&agrave;n giao kh&aacute;ch h&agrave;ng;<br />\r\n- Triển khai c&aacute;c hoạt động hỗ trợ kh&aacute;ch h&agrave;ng;</span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style=\"font-size:16px;\"><strong><span style=\"font-family:Arial,Helvetica,sans-serif;\">Y&Ecirc;U CẦU C&Ocirc;NG VIỆC</span></strong></span></p>\r\n\r\n<p><span style=\"font-size:14px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\">- Độ tuổi ưu ti&ecirc;n: 30-35<br />\r\n- Tốt nghiệp Đại học c&aacute;c ng&agrave;nh Quản trị kinh doanh, Kinh tế, hoặc c&aacute;c ng&agrave;nh nghề c&oacute; li&ecirc;n quan.<br />\r\n- Tr&ecirc;n 03 năm kinh nghiệm đảm nhận vị tr&iacute; TP kinh doanh Bất Động Sản<br />\r\n- Ưu ti&ecirc;n c&oacute; chứng chỉ m&ocirc;i giới BĐS, chứng chỉ quản l&yacute; s&agrave;n GD BĐS<br />\r\n- Kỹ năng lập kế hoạch, điều h&agrave;nh, v&agrave; kiểm so&aacute;t c&ocirc;ng việc tốt<br />\r\n- Kỹ năng giao tiếp, đ&agrave;m ph&aacute;n, giải quyết vấn đề tốt</span></span></p>', 'published', '2019-11-30 19:49:07', '2019-11-30 19:49:29', NULL),
(3, 'Senior Real Estate Consultant', 'Ho Chi Minh, Viet Nam', 'From 1500$', '<p><span style=\"font-size:16px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\"><strong>BENEFITS FOR YOU</strong></span></span></p>\r\n\r\n<p><span style=\"font-size:14px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\">- Basic salary 500$&nbsp;/ month.<br />\r\n- Access to diverse sources of goods and opportunities from reputable investors.<br />\r\n- Retrospective salary policy up to 2400$-7000$&nbsp;/ year.<br />\r\n- Commission of 22-50% and a commission 1000$ / successful transaction in the month.<br />\r\n- Effective bonus 0.6-3% of annual revenue.<br />\r\n- A place to build your personal brand in a standard and different way.<br />\r\n- Attend seminars on real estate every 6 months.<br />\r\n- Participate in the course on negotiation skills (Win - Win), language of sales (Language of Sales), customer mind marketing (SOI), customer conversion from social networks (Go Social)<br />\r\n- Unlimited promotion opportunities.<br />\r\n- Working with professional space and modern open office design.<br />\r\n- Welfare policy, domestic and foreign tourism ...<br />\r\n- Decentralized, democratic, financial transparency, considering brokerage is a business partner.<br />\r\n- Environmentally friendly, is the place where brokers are connected with regular activities</span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style=\"font-size:16px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\"><strong>JOB DESCRIPTION</strong></span></span></p>\r\n\r\n<p><span style=\"font-size:14px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\">- Quantity: 30 employees<br />\r\n- Find and exploit potential customers for real estate products valued from 2000 USD / m2 in the high-end and luxury segment;<br />\r\n- Deploying activities to find customers, coordinate with teams to realize sales targets<br />\r\n- Advise customers on information related to products and projects of the Company;</span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style=\"font-size:16px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\"><strong>JOB REQUIREMENTS</strong></span></span></p>\r\n\r\n<p><span style=\"font-size:14px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\">- Graduating from college or higher<br />\r\n- Good appearance, male height from 1.68m, female from 1.58m. Age from 22-35 years old<br />\r\n- Priority to candidates who know foreign languages ​​and have 1 year or more experience in the field of real estate, banking and finance.<br />\r\n- Have financial goals, work and life.<br />\r\n- Desire to achieve big goals.<br />\r\n- Diligent, persistent, honest.</span></span></p>', 'published', '2019-11-30 19:52:42', '2019-11-30 20:48:25', NULL),
(4, 'Chuyên Viên Tư Vấn Bất Động Sản Cao Cấp', 'Ho Chi Minh, Viet Nam', 'Từ 30,000,000 VND', '<p><span style=\"font-size:16px;\"><strong><span style=\"font-family:Arial,Helvetica,sans-serif;\">C&Aacute;C PH&Uacute;C LỢI D&Agrave;NH CHO BẠN</span></strong></span></p>\r\n\r\n<p><span style=\"font-size:14px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\">- Lương cơ bản 10 triệu/th&aacute;ng.<br />\r\n- Tiếp cận nguồn h&agrave;ng đa dạng v&agrave; cơ hội từ c&aacute;c chủ đầu tư uy t&iacute;n.<br />\r\n- Ch&iacute;nh s&aacute;ch hồi tố lương l&ecirc;n đến 48-144 triệu/năm.<br />\r\n- Hoa hồng 22-50% v&agrave; được tạm ứng hoa hồng 20 triệu/ giao dịch th&agrave;nh c&ocirc;ng trong th&aacute;ng.<br />\r\n- Thưởng hiệu quả 0.6-3% doanh thu năm.<br />\r\n- Nơi x&acirc;y dựng thương hiệu c&aacute; nh&acirc;n một c&aacute;ch chuẩn mực v&agrave; kh&aacute;c biệt.<br />\r\n- Được tham dự c&aacute;c chuy&ecirc;n đề về bất động sản 6 th&aacute;ng 1 lần.<br />\r\n- Được tham dự kh&oacute;a học về kỹ năng đ&agrave;m ph&aacute;n (Win - Win), ng&ocirc;n ngữ b&aacute;n h&agrave;ng (Language of Sales), marketing chiếm t&acirc;m tr&iacute; kh&aacute;ch h&agrave;ng (SOI), chuyển đổi kh&aacute;ch h&agrave;ng từ mạng x&atilde; hội (Go Social)<br />\r\n- Cơ hội thăng tiến kh&ocirc;ng giới hạn.<br />\r\n- Được l&agrave;m việc với kh&ocirc;ng gian chuy&ecirc;n nghiệp v&agrave; thiết kế văn ph&ograve;ng mở hiện đại.<br />\r\n- Ch&iacute;nh s&aacute;ch ph&uacute;c lợi, du lịch trong v&agrave; ngo&agrave;i nước...<br />\r\n- Ph&acirc;n quyền, d&acirc;n chủ, minh bạch t&agrave;i ch&iacute;nh, xem m&ocirc;i giới l&agrave; đối t&aacute;c kinh doanh.<br />\r\n- M&ocirc;i trường th&acirc;n thiện, l&agrave; nơi kết nối m&ocirc;i giới với c&aacute;c hoạt động được tổ chức thường xuy&ecirc;n</span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style=\"font-size:16px;\"><strong><span style=\"font-family:Arial,Helvetica,sans-serif;\">M&Ocirc; TẢ C&Ocirc;NG VIỆC</span></strong></span></p>\r\n\r\n<p><span style=\"font-size:14px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\">- Số lượng: 30 nh&acirc;n vi&ecirc;n<br />\r\n- T&igrave;m kiếm v&agrave; khai th&aacute;c nguồn kh&aacute;ch h&agrave;ng tiềm năng cho c&aacute;c sản phẩm bất động sản c&oacute; gi&aacute; trị từ 2000 USD/m2 thuộc ph&acirc;n kh&uacute;c cao cấp, hạng sang ;<br />\r\n- Triển khai c&aacute;c hoạt động t&igrave;m kiếm kh&aacute;ch h&agrave;ng, phối hợp với đội nh&oacute;m để thực hiện chỉ ti&ecirc;u doanh số<br />\r\n- Tư vấn cho kh&aacute;ch h&agrave;ng c&aacute;c th&ocirc;ng tin li&ecirc;n quan đến sản phẩm, dự &aacute;n của C&ocirc;ng ty;</span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style=\"font-size:16px;\"><strong><span style=\"font-family:Arial,Helvetica,sans-serif;\">Y&Ecirc;U CẦU C&Ocirc;NG VIỆC</span></strong></span></p>\r\n\r\n<p><span style=\"font-size:14px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\">- Tốt nghiệp Cao đẳng trở l&ecirc;n<br />\r\n- Ngoại h&igrave;nh ưu nh&igrave;n, nam cao từ 1,68m, nữ từ 1,58m. Độ tuổi từ 22- 35 tuổi<br />\r\n- Ưu ti&ecirc;n ứng vi&ecirc;n biết ngoại ngữ v&agrave; c&oacute; kinh nghiệm 1 năm trở l&ecirc;n trong lĩnh vực BĐS, ng&acirc;n h&agrave;ng, t&agrave;i ch&iacute;nh.<br />\r\n- C&oacute; mục ti&ecirc;u về t&agrave;i ch&iacute;nh, c&ocirc;ng việc v&agrave; cuộc sống.<br />\r\n- Kh&aacute;t khao đạt được c&aacute;c mục ti&ecirc;u lớn.<br />\r\n- Si&ecirc;ng năng, ki&ecirc;n tr&igrave;, trung thực.</span></span></p>', 'published', '2019-11-30 19:56:50', '2019-11-30 19:56:50', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `author_id` int(11) NOT NULL,
  `author_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Botble\\ACL\\Models\\User',
  `icon` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` tinyint(4) NOT NULL DEFAULT '0',
  `is_featured` tinyint(4) NOT NULL DEFAULT '0',
  `is_default` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `parent_id`, `description`, `status`, `author_id`, `author_type`, `icon`, `order`, `is_featured`, `is_default`, `created_at`, `updated_at`) VALUES
(1, 'News', 0, NULL, 'published', 1, 'Botble\\ACL\\Models\\User', NULL, 0, 0, 1, '2019-11-18 02:33:35', '2019-11-18 02:33:35'),
(2, 'House architecture', 0, NULL, 'published', 1, 'Botble\\ACL\\Models\\User', NULL, 0, 0, 0, '2019-11-21 07:49:25', '2019-11-21 07:49:25'),
(3, 'Kiến trúc nhà', 0, NULL, 'published', 1, 'Botble\\ACL\\Models\\User', NULL, 0, 0, 0, '2019-11-21 07:49:35', '2019-11-21 07:49:35'),
(4, 'House design', 0, NULL, 'published', 1, 'Botble\\ACL\\Models\\User', NULL, 0, 0, 0, '2019-11-21 07:50:02', '2019-11-21 07:50:02'),
(5, 'Thiết kế nhà', 0, NULL, 'published', 1, 'Botble\\ACL\\Models\\User', NULL, 0, 0, 0, '2019-11-21 07:50:17', '2019-11-21 07:50:17'),
(6, 'Building materials', 0, NULL, 'published', 1, 'Botble\\ACL\\Models\\User', NULL, 0, 0, 0, '2019-11-21 07:50:36', '2019-11-21 07:50:36'),
(7, 'Vật liệu xây dựng', 0, NULL, 'published', 1, 'Botble\\ACL\\Models\\User', NULL, 0, 0, 0, '2019-11-21 07:50:58', '2019-11-21 07:50:58'),
(8, 'Tin tức', 0, NULL, 'published', 1, 'Botble\\ACL\\Models\\User', NULL, 0, 0, 1, '2019-11-22 01:26:08', '2019-11-22 01:26:08');

-- --------------------------------------------------------

--
-- Table structure for table `cities`
--

CREATE TABLE `cities` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `state_id` int(10) UNSIGNED NOT NULL,
  `country_id` int(10) UNSIGNED NOT NULL,
  `order` tinyint(4) NOT NULL DEFAULT '0',
  `is_default` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `is_featured` tinyint(4) NOT NULL DEFAULT '0',
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `slug` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `record_id` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cities`
--

INSERT INTO `cities` (`id`, `name`, `state_id`, `country_id`, `order`, `is_default`, `is_featured`, `image`, `status`, `created_at`, `updated_at`, `slug`, `record_id`) VALUES
(1, 'Alhambra', 1, 1, 0, 0, 1, 'cities/los-angeles-winter-2016.jpg', 'published', '2019-11-18 08:18:42', '2019-12-03 05:55:52', 'alhambra', NULL),
(2, 'Oakland', 1, 1, 0, 0, 1, 'cities/oaklandnightskylineandlakemerritt.jpg', 'published', '2019-11-18 08:23:14', '2019-12-03 05:55:52', 'oakland', NULL),
(3, 'Bakersfield', 1, 1, 0, 0, 1, 'cities/2009-0726-ca-bakersfield-truxtontower.jpg', 'published', '2019-11-18 08:26:54', '2019-12-03 05:55:52', 'bakersfield', NULL),
(4, 'Anaheim', 1, 1, 0, 0, 1, 'cities/castillo-de-disneyland.jpg', 'published', '2019-11-18 08:27:57', '2019-12-03 05:55:52', 'anaheim', NULL),
(5, 'San Francisco', 1, 1, 0, 0, 1, 'cities/goldengatebridge-001.jpg', 'published', '2019-11-18 08:29:18', '2019-12-03 05:55:52', 'san-francisco', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subject` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'unread',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `contact_replies`
--

CREATE TABLE `contact_replies` (
  `id` int(10) UNSIGNED NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nationality` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` tinyint(4) NOT NULL DEFAULT '0',
  `is_default` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`id`, `name`, `nationality`, `order`, `is_default`, `status`, `created_at`, `updated_at`) VALUES
(1, 'United States', 'United States of America', 0, 0, 'published', '2019-11-18 08:17:29', '2019-11-18 08:17:29');

-- --------------------------------------------------------

--
-- Table structure for table `dashboard_widgets`
--

CREATE TABLE `dashboard_widgets` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `dashboard_widgets`
--

INSERT INTO `dashboard_widgets` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'widget_total_pages', '2019-11-15 04:57:40', '2019-11-15 04:57:40'),
(2, 'widget_total_users', '2019-11-15 04:57:40', '2019-11-15 04:57:40'),
(3, 'widget_total_plugins', '2019-11-15 04:57:40', '2019-11-15 04:57:40'),
(4, 'widget_total_themes', '2019-11-15 04:57:40', '2019-11-15 04:57:40'),
(5, 'widget_audit_logs', '2019-11-15 18:54:50', '2019-11-15 18:54:50'),
(6, 'widget_posts_recent', '2019-11-15 18:54:50', '2019-11-15 18:54:50'),
(7, 'widget_analytics_general', '2019-11-15 18:54:50', '2019-11-15 18:54:50'),
(8, 'widget_analytics_page', '2019-11-15 18:54:50', '2019-11-15 18:54:50'),
(9, 'widget_analytics_browser', '2019-11-15 18:54:50', '2019-11-15 18:54:50'),
(10, 'widget_analytics_referrer', '2019-11-15 18:54:50', '2019-11-15 18:54:50');

-- --------------------------------------------------------

--
-- Table structure for table `dashboard_widget_settings`
--

CREATE TABLE `dashboard_widget_settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `settings` text COLLATE utf8mb4_unicode_ci,
  `user_id` int(10) UNSIGNED NOT NULL,
  `widget_id` int(10) UNSIGNED NOT NULL,
  `order` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `status` tinyint(3) UNSIGNED NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `dashboard_widget_settings`
--

INSERT INTO `dashboard_widget_settings` (`id`, `settings`, `user_id`, `widget_id`, `order`, `status`, `created_at`, `updated_at`) VALUES
(1, NULL, 1, 7, 0, 1, '2019-11-26 02:40:58', '2019-11-26 02:40:58'),
(2, NULL, 1, 5, 1, 1, '2019-11-26 02:40:58', '2019-11-26 02:40:58'),
(3, NULL, 1, 6, 2, 1, '2019-11-26 02:40:58', '2019-11-26 02:40:58'),
(4, NULL, 1, 8, 3, 1, '2019-11-26 02:40:58', '2019-11-26 02:40:58'),
(5, NULL, 1, 9, 4, 1, '2019-11-26 02:40:58', '2019-11-26 02:40:58'),
(6, NULL, 1, 10, 5, 1, '2019-11-26 02:40:58', '2019-11-26 02:40:58');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `languages`
--

CREATE TABLE `languages` (
  `lang_id` int(10) UNSIGNED NOT NULL,
  `lang_name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lang_locale` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lang_flag` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lang_is_default` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `lang_order` int(11) NOT NULL DEFAULT '0',
  `lang_is_rtl` tinyint(3) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `languages`
--

INSERT INTO `languages` (`lang_id`, `lang_name`, `lang_locale`, `lang_code`, `lang_flag`, `lang_is_default`, `lang_order`, `lang_is_rtl`) VALUES
(1, 'English', 'en', 'en_US', 'us', 1, 0, 0),
(2, 'Tiếng Việt', 'vi', 'vi', 'vn', 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `language_meta`
--

CREATE TABLE `language_meta` (
  `lang_meta_id` int(10) UNSIGNED NOT NULL,
  `reference_id` int(10) UNSIGNED NOT NULL,
  `lang_meta_code` text COLLATE utf8mb4_unicode_ci,
  `reference_type` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lang_meta_origin` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `language_meta`
--

INSERT INTO `language_meta` (`lang_meta_id`, `reference_id`, `lang_meta_code`, `reference_type`, `lang_meta_origin`) VALUES
(1, 1, 'en_US', 'Botble\\Menu\\Models\\Menu', 'f4aa9bde35b1d7b76352e7e5c2c3ca80'),
(2, 1, 'en_US', 'Botble\\Menu\\Models\\MenuLocation', '2693a0f0f30c2ce0c81c6be1848ed9f4'),
(3, 1, 'en_US', 'Botble\\RealEstate\\Models\\Property', '404601a719bd38c609172d77df408ba1'),
(4, 2, 'en_US', 'Botble\\RealEstate\\Models\\Property', '9fd22570b6527cea3f74256bc5beeade'),
(5, 3, 'en_US', 'Botble\\RealEstate\\Models\\Property', '657ce80dc667a53aed03ea05f3977ff0'),
(6, 4, 'en_US', 'Botble\\RealEstate\\Models\\Property', '6be7679ead5366a6369167210fd247a0'),
(7, 1, 'en_US', 'Botble\\RealEstate\\Models\\PropertyFeature', '13cf1f003e0c62806dd7ad26f048b91d'),
(8, 2, 'en_US', 'Botble\\RealEstate\\Models\\PropertyFeature', 'f2356c699c6653bffaff97dd9387717d'),
(9, 2, 'en_US', 'Botble\\Menu\\Models\\Menu', '5d8a56b085c4f94d3c8db73096f6416d'),
(10, 3, 'en_US', 'Botble\\Menu\\Models\\Menu', '9ef3ae68a76b55f21341702858cde96d'),
(11, 4, 'en_US', 'Botble\\Menu\\Models\\Menu', '02268c4d47391e16005cedec858fb570'),
(12, 3, 'en_US', 'Botble\\RealEstate\\Models\\PropertyFeature', 'e8c67bae0a5f47fa54a4a76a875daf3f'),
(13, 4, 'en_US', 'Botble\\RealEstate\\Models\\PropertyFeature', 'd57fa54aad5abc3f0caec4fb0e4e0907'),
(14, 5, 'en_US', 'Botble\\RealEstate\\Models\\PropertyFeature', '2d253e85c0394609682b9dbe77705bdb'),
(15, 1, 'en_US', 'Botble\\RealEstate\\Models\\Project', '56e4bdd055bc0b01d9fdc5efdbee6166'),
(16, 5, 'en_US', 'Botble\\RealEstate\\Models\\Property', 'ac45379b9b6134531a834400a7d9175c'),
(17, 6, 'en_US', 'Botble\\RealEstate\\Models\\PropertyFeature', '150d1429049e27e62396ed759719ada4'),
(18, 7, 'en_US', 'Botble\\RealEstate\\Models\\PropertyFeature', 'a7dd32dd31e9b85768892b17c4b6283b'),
(19, 8, 'en_US', 'Botble\\RealEstate\\Models\\PropertyFeature', 'bc3b21d633995dfaaa528eeb34b804ca'),
(20, 6, 'en_US', 'Botble\\RealEstate\\Models\\Property', '976a11dca6f828f42ef579a8b3671b56'),
(21, 7, 'en_US', 'Botble\\RealEstate\\Models\\Property', '141e080b1eff418e2977b5efdbfe799a'),
(22, 1, 'en_US', 'Botble\\RealEstate\\Models\\Investor', 'b55b725e9ba113942275849272e2969b'),
(23, 2, 'en_US', 'Botble\\RealEstate\\Models\\Investor', '8b391f8d425ee376f0378860cbc205ae'),
(24, 3, 'en_US', 'Botble\\RealEstate\\Models\\Investor', 'c9199634afef0d21b9ed76f0438c1d92'),
(25, 4, 'en_US', 'Botble\\RealEstate\\Models\\Investor', 'ae7c96e8601ae6be06b85cb1b035498d'),
(26, 5, 'en_US', 'Botble\\RealEstate\\Models\\Investor', '12f47dc443a0c4c9ed8dd3f48e43ef24'),
(27, 6, 'en_US', 'Botble\\RealEstate\\Models\\Investor', '35466099783edd979365b6d42380217a'),
(28, 7, 'en_US', 'Botble\\RealEstate\\Models\\Investor', '0f2d227a5e8b165455e69574d168d628'),
(29, 8, 'en_US', 'Botble\\RealEstate\\Models\\Investor', '9c7f8c61383d7ea76f817fcd2224363f'),
(30, 9, 'en_US', 'Botble\\RealEstate\\Models\\Investor', 'a714f38063f2a21302b72ca0c9ebf69d'),
(31, 10, 'en_US', 'Botble\\RealEstate\\Models\\Investor', '3752c23672cc11767202d85776490354'),
(32, 11, 'en_US', 'Botble\\RealEstate\\Models\\Investor', '33ba5096310a9bb0d2cbed1ebab2f00e'),
(33, 12, 'en_US', 'Botble\\RealEstate\\Models\\Investor', 'b9df16fdbc60e5d1d446560fa55780ad'),
(34, 13, 'en_US', 'Botble\\RealEstate\\Models\\Investor', 'aa340b8dd1304e49d7b6e3be7bb939cb'),
(35, 14, 'en_US', 'Botble\\RealEstate\\Models\\Investor', '0dc7c295282a2e338f97f9ac56d3e707'),
(36, 15, 'en_US', 'Botble\\RealEstate\\Models\\Investor', '7e37f52d065e2ac7f71cec27528ff1a7'),
(37, 2, 'en_US', 'Botble\\RealEstate\\Models\\Project', 'b8c605675ac073dd9d5b3572087a2445'),
(38, 8, 'en_US', 'Botble\\RealEstate\\Models\\Property', 'ccf2b58508febe22dae3fe588d1f7f36'),
(39, 9, 'en_US', 'Botble\\RealEstate\\Models\\Property', '18e0c764a6457fa1677a1710cc219337'),
(40, 10, 'en_US', 'Botble\\RealEstate\\Models\\Property', '2c9217b2ce21882234bfaf9222893fc9'),
(41, 11, 'en_US', 'Botble\\RealEstate\\Models\\Property', 'dad4f25ae76974a87d59084f82dae01b'),
(42, 1, 'en_US', 'Botble\\Blog\\Models\\Category', '8804d947c9dfc67caa38c6d758c533fb'),
(43, 12, 'en_US', 'Botble\\RealEstate\\Models\\Property', '4be0c322dda4d57a9ae43c4bb5b7b608'),
(44, 1, 'en_US', 'Botble\\Blog\\Models\\Post', '3034c8b36dad04a9618bdcdc69180371'),
(45, 1, 'en_US', 'Botble\\Blog\\Models\\Tag', 'cb81f9780b7fcdcb490a2dc412bf2dc8'),
(46, 2, 'en_US', 'Botble\\Blog\\Models\\Post', '6fd6f18d826fcd7ac743126287d55207'),
(47, 2, 'en_US', 'Botble\\Blog\\Models\\Tag', 'b1f1b44f1eb59e622269e868a16d4ead'),
(48, 3, 'en_US', 'Botble\\Blog\\Models\\Post', 'ec03adaaea66669a5e1bfaed629064e7'),
(49, 4, 'en_US', 'Botble\\Blog\\Models\\Post', '918b57465f9da91a7af4d3a35aa8f696'),
(50, 3, 'en_US', 'Botble\\Blog\\Models\\Tag', '3facfab60703e4bb17ce679a63d04d6e'),
(51, 3, 'en_US', 'Botble\\RealEstate\\Models\\Project', '1631e995fd3df41119f30d9608085dae'),
(52, 4, 'en_US', 'Botble\\RealEstate\\Models\\Project', 'e6f78da435a49ddb8497a027537ad6f5'),
(53, 5, 'en_US', 'Botble\\RealEstate\\Models\\Project', 'e10e38c14cc5ba56f403049c9f003285'),
(54, 6, 'en_US', 'Botble\\RealEstate\\Models\\Project', '0f0ae4af74e088ea71a1456a71084118'),
(55, 13, 'en_US', 'Botble\\RealEstate\\Models\\Property', 'cb46b75d51f5b9ca4f7ea650ae885169'),
(56, 14, 'en_US', 'Botble\\RealEstate\\Models\\Property', '702833126d23884c8fa5f965b7fa3870'),
(57, 15, 'en_US', 'Botble\\RealEstate\\Models\\Property', '73a8f9e2401b54cca959e1a0a5fb9c9e'),
(58, 16, 'en_US', 'Botble\\RealEstate\\Models\\Property', '4aba3c5a608665c657affb7c59fce1e5'),
(59, 17, 'en_US', 'Botble\\RealEstate\\Models\\Property', '417317c4e6d4e390e19b87986cc52aa0'),
(60, 1, 'en_US', 'Botble\\Location\\Models\\Country', 'd3ec07a0e1406ee80d3d859777b7b403'),
(61, 1, 'en_US', 'Botble\\Location\\Models\\State', 'f8416c3653b14061d905348dad9577c6'),
(62, 1, 'en_US', 'Botble\\Location\\Models\\City', 'df3764fba83146dcf2a3dae1d4abffa8'),
(63, 2, 'en_US', 'Botble\\Location\\Models\\City', '61291cff6bb4da3bd0aaba956100e568'),
(64, 3, 'en_US', 'Botble\\Location\\Models\\City', '0da803b1790ee6927eb6c477a3a500f5'),
(65, 4, 'en_US', 'Botble\\Location\\Models\\City', '89e6959f3cb7f50f9b864818156fea61'),
(66, 5, 'en_US', 'Botble\\Location\\Models\\City', '63f5769d3fdefb7c291ab281762685c1'),
(67, 8, 'en_US', 'Botble\\RealEstate\\Models\\Feature', 'c09bc25d9cac53fcd354de939c7f8fae'),
(68, 7, 'en_US', 'Botble\\RealEstate\\Models\\Feature', 'd1b060fd0e6aa2e4f835e5c2f8bf90b9'),
(69, 6, 'en_US', 'Botble\\RealEstate\\Models\\Feature', '537595c55d88eb72832a869fd9527c9d'),
(70, 5, 'en_US', 'Botble\\RealEstate\\Models\\Feature', 'b2ca2731181c95b88a0e07086d249e9b'),
(71, 4, 'en_US', 'Botble\\RealEstate\\Models\\Feature', 'f16c14be9c2c35b834804c4aaf532e4d'),
(72, 3, 'en_US', 'Botble\\RealEstate\\Models\\Feature', '627860eba0af8ba4ca8c5e3dba813e76'),
(73, 2, 'en_US', 'Botble\\RealEstate\\Models\\Feature', '4daead6cb916d9ee6d0abf535757c12d'),
(74, 1, 'en_US', 'Botble\\RealEstate\\Models\\Feature', '945456922bc6901572ccfeaf1754647c'),
(75, 9, 'vi', 'Botble\\RealEstate\\Models\\Feature', 'c09bc25d9cac53fcd354de939c7f8fae'),
(76, 10, 'vi', 'Botble\\RealEstate\\Models\\Feature', 'd1b060fd0e6aa2e4f835e5c2f8bf90b9'),
(77, 11, 'vi', 'Botble\\RealEstate\\Models\\Feature', '537595c55d88eb72832a869fd9527c9d'),
(78, 12, 'vi', 'Botble\\RealEstate\\Models\\Feature', 'b2ca2731181c95b88a0e07086d249e9b'),
(79, 13, 'vi', 'Botble\\RealEstate\\Models\\Feature', 'f16c14be9c2c35b834804c4aaf532e4d'),
(80, 14, 'vi', 'Botble\\RealEstate\\Models\\Feature', '627860eba0af8ba4ca8c5e3dba813e76'),
(81, 15, 'vi', 'Botble\\RealEstate\\Models\\Feature', '4daead6cb916d9ee6d0abf535757c12d'),
(82, 16, 'vi', 'Botble\\RealEstate\\Models\\Feature', '945456922bc6901572ccfeaf1754647c'),
(83, 16, 'vi', 'Botble\\RealEstate\\Models\\Investor', '7e37f52d065e2ac7f71cec27528ff1a7'),
(84, 17, 'vi', 'Botble\\RealEstate\\Models\\Investor', '0dc7c295282a2e338f97f9ac56d3e707'),
(85, 18, 'vi', 'Botble\\RealEstate\\Models\\Investor', 'aa340b8dd1304e49d7b6e3be7bb939cb'),
(86, 19, 'vi', 'Botble\\RealEstate\\Models\\Investor', 'b9df16fdbc60e5d1d446560fa55780ad'),
(87, 20, 'vi', 'Botble\\RealEstate\\Models\\Investor', '33ba5096310a9bb0d2cbed1ebab2f00e'),
(88, 21, 'vi', 'Botble\\RealEstate\\Models\\Investor', '3752c23672cc11767202d85776490354'),
(89, 22, 'vi', 'Botble\\RealEstate\\Models\\Investor', 'a714f38063f2a21302b72ca0c9ebf69d'),
(90, 23, 'vi', 'Botble\\RealEstate\\Models\\Investor', '9c7f8c61383d7ea76f817fcd2224363f'),
(91, 24, 'vi', 'Botble\\RealEstate\\Models\\Investor', '0f2d227a5e8b165455e69574d168d628'),
(92, 25, 'vi', 'Botble\\RealEstate\\Models\\Investor', '35466099783edd979365b6d42380217a'),
(93, 26, 'vi', 'Botble\\RealEstate\\Models\\Investor', '12f47dc443a0c4c9ed8dd3f48e43ef24'),
(94, 27, 'vi', 'Botble\\RealEstate\\Models\\Investor', 'ae7c96e8601ae6be06b85cb1b035498d'),
(96, 29, 'vi', 'Botble\\RealEstate\\Models\\Investor', 'c9199634afef0d21b9ed76f0438c1d92'),
(97, 30, 'vi', 'Botble\\RealEstate\\Models\\Investor', '8b391f8d425ee376f0378860cbc205ae'),
(98, 31, 'vi', 'Botble\\RealEstate\\Models\\Investor', 'b55b725e9ba113942275849272e2969b'),
(99, 7, 'vi', 'Botble\\RealEstate\\Models\\Project', '56e4bdd055bc0b01d9fdc5efdbee6166'),
(100, 8, 'vi', 'Botble\\RealEstate\\Models\\Project', 'b8c605675ac073dd9d5b3572087a2445'),
(101, 9, 'vi', 'Botble\\RealEstate\\Models\\Project', '1631e995fd3df41119f30d9608085dae'),
(102, 10, 'vi', 'Botble\\RealEstate\\Models\\Project', 'e6f78da435a49ddb8497a027537ad6f5'),
(103, 11, 'vi', 'Botble\\RealEstate\\Models\\Project', 'e10e38c14cc5ba56f403049c9f003285'),
(104, 12, 'vi', 'Botble\\RealEstate\\Models\\Project', '0f0ae4af74e088ea71a1456a71084118'),
(105, 18, 'vi', 'Botble\\RealEstate\\Models\\Property', '404601a719bd38c609172d77df408ba1'),
(106, 19, 'vi', 'Botble\\RealEstate\\Models\\Property', '9fd22570b6527cea3f74256bc5beeade'),
(107, 20, 'vi', 'Botble\\RealEstate\\Models\\Property', '657ce80dc667a53aed03ea05f3977ff0'),
(108, 21, 'vi', 'Botble\\RealEstate\\Models\\Property', '6be7679ead5366a6369167210fd247a0'),
(109, 22, 'vi', 'Botble\\RealEstate\\Models\\Property', 'ac45379b9b6134531a834400a7d9175c'),
(110, 5, 'vi', 'Botble\\Menu\\Models\\Menu', 'f4aa9bde35b1d7b76352e7e5c2c3ca80'),
(111, 2, 'vi', 'Botble\\Menu\\Models\\MenuLocation', '51e696e421b5d5de625179afb41967fc'),
(112, 6, 'vi', 'Botble\\Menu\\Models\\Menu', '5d8a56b085c4f94d3c8db73096f6416d'),
(113, 23, 'vi', 'Botble\\RealEstate\\Models\\Property', '976a11dca6f828f42ef579a8b3671b56'),
(114, 24, 'vi', 'Botble\\RealEstate\\Models\\Property', '141e080b1eff418e2977b5efdbfe799a'),
(115, 25, 'vi', 'Botble\\RealEstate\\Models\\Property', 'ccf2b58508febe22dae3fe588d1f7f36'),
(116, 26, 'vi', 'Botble\\RealEstate\\Models\\Property', '18e0c764a6457fa1677a1710cc219337'),
(117, 7, 'vi', 'Botble\\Menu\\Models\\Menu', '9ef3ae68a76b55f21341702858cde96d'),
(118, 27, 'vi', 'Botble\\RealEstate\\Models\\Property', '2c9217b2ce21882234bfaf9222893fc9'),
(119, 8, 'vi', 'Botble\\Menu\\Models\\Menu', '02268c4d47391e16005cedec858fb570'),
(120, 1, 'en_US', 'Botble\\Page\\Models\\Page', 'b0c9589fd4add19cbbb052ecfd6b22ac'),
(121, 2, 'vi', 'Botble\\Page\\Models\\Page', 'b0c9589fd4add19cbbb052ecfd6b22ac'),
(122, 2, 'en_US', 'Botble\\Blog\\Models\\Category', '6675f12d6ce53d9ed753a54bca8d67b0'),
(123, 3, 'vi', 'Botble\\Blog\\Models\\Category', '6675f12d6ce53d9ed753a54bca8d67b0'),
(124, 4, 'en_US', 'Botble\\Blog\\Models\\Category', '745e79e10f12a0f66d19ae3b4dad987a'),
(125, 5, 'vi', 'Botble\\Blog\\Models\\Category', '745e79e10f12a0f66d19ae3b4dad987a'),
(126, 6, 'en_US', 'Botble\\Blog\\Models\\Category', 'f1ba0f3404bb5b827cfaa552a6894c0f'),
(127, 7, 'vi', 'Botble\\Blog\\Models\\Category', 'f1ba0f3404bb5b827cfaa552a6894c0f'),
(128, 28, 'vi', 'Botble\\RealEstate\\Models\\Property', 'dad4f25ae76974a87d59084f82dae01b'),
(129, 29, 'vi', 'Botble\\RealEstate\\Models\\Property', '4be0c322dda4d57a9ae43c4bb5b7b608'),
(130, 30, 'vi', 'Botble\\RealEstate\\Models\\Property', 'cb46b75d51f5b9ca4f7ea650ae885169'),
(131, 31, 'vi', 'Botble\\RealEstate\\Models\\Property', '702833126d23884c8fa5f965b7fa3870'),
(132, 32, 'vi', 'Botble\\RealEstate\\Models\\Property', '73a8f9e2401b54cca959e1a0a5fb9c9e'),
(133, 33, 'vi', 'Botble\\RealEstate\\Models\\Property', '4aba3c5a608665c657affb7c59fce1e5'),
(134, 34, 'vi', 'Botble\\RealEstate\\Models\\Property', '417317c4e6d4e390e19b87986cc52aa0'),
(135, 8, 'vi', 'Botble\\Blog\\Models\\Category', '8804d947c9dfc67caa38c6d758c533fb'),
(136, 5, 'vi', 'Botble\\Blog\\Models\\Post', '3034c8b36dad04a9618bdcdc69180371'),
(137, 6, 'vi', 'Botble\\Blog\\Models\\Post', '6fd6f18d826fcd7ac743126287d55207'),
(138, 7, 'vi', 'Botble\\Blog\\Models\\Post', 'ec03adaaea66669a5e1bfaed629064e7'),
(139, 8, 'vi', 'Botble\\Blog\\Models\\Post', '918b57465f9da91a7af4d3a35aa8f696'),
(140, 3, 'en_US', 'Botble\\Page\\Models\\Page', 'b0fd736165ed7ee99d46f54f6878103d'),
(141, 4, 'vi', 'Botble\\Page\\Models\\Page', 'b0fd736165ed7ee99d46f54f6878103d'),
(142, 5, 'en_US', 'Botble\\Page\\Models\\Page', '00133dbb94d755c78edcb99d7483bb01'),
(143, 6, 'vi', 'Botble\\Page\\Models\\Page', '00133dbb94d755c78edcb99d7483bb01'),
(144, 1, 'en_US', 'Botble\\Career\\Models\\Career', '09e2cc1ea05bd7c9dd60cfd54725975c'),
(145, 2, 'vi', 'Botble\\Career\\Models\\Career', '09e2cc1ea05bd7c9dd60cfd54725975c'),
(146, 3, 'en_US', 'Botble\\Career\\Models\\Career', 'dcd6eb9e2a31b96825a0c519101c098e'),
(147, 4, 'vi', 'Botble\\Career\\Models\\Career', 'dcd6eb9e2a31b96825a0c519101c098e'),
(160, 7, 'en_US', 'Botble\\Page\\Models\\Page', '2c54372023bcf47345cba6cd97643d79'),
(161, 1, 'en_US', 'Botble\\RealEstate\\Models\\Facility', '4c9e7a0ee9344da781f8f10481e0335b'),
(162, 2, 'en_US', 'Botble\\RealEstate\\Models\\Facility', '3dd78243e38a8bc41c7e8cd908af82d7'),
(163, 3, 'en_US', 'Botble\\RealEstate\\Models\\Facility', '1c2ee66999173592cc8569b72e004387'),
(164, 4, 'en_US', 'Botble\\RealEstate\\Models\\Facility', '202f330c763b2c793965c07fbca0ebc8'),
(165, 5, 'en_US', 'Botble\\RealEstate\\Models\\Facility', 'f21d7f6838d1ac489dd07bdd2152d089'),
(166, 6, 'en_US', 'Botble\\RealEstate\\Models\\Facility', '213f9bb1d92be72bf70a1f989d93cbcf'),
(167, 7, 'en_US', 'Botble\\RealEstate\\Models\\Facility', '83a092c92af08ffca16e3b0f2c7aebeb'),
(168, 8, 'en_US', 'Botble\\RealEstate\\Models\\Facility', '21a48678967dcbd7d28d6111de0b8add'),
(169, 9, 'en_US', 'Botble\\RealEstate\\Models\\Facility', 'd542823ce99de761331bf698fefa39ee'),
(170, 10, 'en_US', 'Botble\\RealEstate\\Models\\Facility', '693daebf15c3b74b003ce432cdb214de'),
(171, 11, 'en_US', 'Botble\\RealEstate\\Models\\Facility', '8cd328ddcbadeb5d8e3f7e166e06ee65'),
(178, 1, 'en_US', 'Botble\\RealEstate\\Models\\Category', '138321682c9dcd9ad40c64ffc3d43fd4'),
(179, 2, 'en_US', 'Botble\\RealEstate\\Models\\Category', '3ac8572ecdec1b085ecfd26d41de6a5a'),
(180, 3, 'en_US', 'Botble\\RealEstate\\Models\\Category', 'b688843f4609db9434c54d3758e653dd'),
(181, 4, 'en_US', 'Botble\\RealEstate\\Models\\Category', 'a6c9bd40029cac97e7f2ec7f5ecd7fe1'),
(182, 5, 'en_US', 'Botble\\RealEstate\\Models\\Category', 'd97958c6ca7ed6357f15b4b3de9289cc'),
(183, 6, 'en_US', 'Botble\\RealEstate\\Models\\Category', '0e93921c453b70656202b234208bd6d5');

-- --------------------------------------------------------

--
-- Table structure for table `media_files`
--

CREATE TABLE `media_files` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `folder_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `mime_type` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `size` int(11) NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `media_files`
--

INSERT INTO `media_files` (`id`, `user_id`, `name`, `folder_id`, `mime_type`, `size`, `url`, `options`, `created_at`, `updated_at`, `deleted_at`) VALUES
(2, 1, 'logo-white', 2, 'image/png', 1998, 'general/logo-white.png', '[]', '2019-11-16 02:02:04', '2019-11-16 02:02:04', NULL),
(3, 1, 'logo', 2, 'image/png', 4501, 'general/logo.png', '[]', '2019-11-16 02:25:38', '2019-11-16 02:25:38', NULL),
(7, 1, '421834935dbc9ef3aaa42', 3, 'image/png', 538188, 'properties/421834935dbc9ef3aaa42.png', '[]', '2019-11-17 20:24:48', '2019-11-17 20:24:48', NULL),
(8, 1, '1', 3, 'image/jpeg', 80373, 'properties/1.jpg', '[]', '2019-11-17 20:36:13', '2019-11-17 20:36:13', NULL),
(9, 1, '3', 3, 'image/jpeg', 70442, 'properties/3.jpg', '[]', '2019-11-17 20:36:54', '2019-11-17 20:36:54', NULL),
(10, 1, '2', 3, 'image/jpeg', 93464, 'properties/2.jpg', '[]', '2019-11-17 20:37:42', '2019-11-17 20:37:42', NULL),
(11, 1, '4', 3, 'image/jpeg', 96537, 'properties/4.jpg', '[]', '2019-11-17 20:38:05', '2019-11-17 20:38:05', NULL),
(12, 1, '21', 3, 'image/jpeg', 85475, 'properties/21.jpeg', '[]', '2019-11-17 20:51:42', '2019-11-17 20:51:42', NULL),
(13, 1, '23', 3, 'image/jpeg', 111948, 'properties/23.jpeg', '[]', '2019-11-17 20:52:11', '2019-11-17 20:52:11', NULL),
(14, 1, '22', 3, 'image/png', 713091, 'properties/22.png', '[]', '2019-11-17 20:52:20', '2019-11-17 20:52:20', NULL),
(15, 1, '24', 3, 'image/jpeg', 69034, 'properties/24.jpeg', '[]', '2019-11-17 20:52:27', '2019-11-17 20:52:27', NULL),
(16, 1, '311', 3, 'image/jpeg', 22270, 'properties/311.jpg', '[]', '2019-11-17 21:07:12', '2019-11-17 21:07:12', NULL),
(17, 1, '35', 3, 'image/jpeg', 24653, 'properties/35.jpg', '[]', '2019-11-17 21:07:21', '2019-11-17 21:07:21', NULL),
(18, 1, '34', 3, 'image/jpeg', 19947, 'properties/34.jpg', '[]', '2019-11-17 21:07:30', '2019-11-17 21:07:30', NULL),
(19, 1, '33', 3, 'image/jpeg', 21031, 'properties/33.jpg', '[]', '2019-11-17 21:07:39', '2019-11-17 21:07:39', NULL),
(20, 1, '32', 3, 'image/jpeg', 18100, 'properties/32.jpg', '[]', '2019-11-17 21:07:47', '2019-11-17 21:07:47', NULL),
(21, 1, '31', 3, 'image/jpeg', 33300, 'properties/31.jpg', '[]', '2019-11-17 21:07:56', '2019-11-17 21:07:56', NULL),
(22, 1, '411', 3, 'image/jpeg', 29035, 'properties/411.jpg', '[]', '2019-11-17 21:16:56', '2019-11-17 21:16:56', NULL),
(23, 1, '42', 3, 'image/jpeg', 24790, 'properties/42.jpg', '[]', '2019-11-17 21:17:03', '2019-11-17 21:17:03', NULL),
(24, 1, '43', 3, 'image/jpeg', 20920, 'properties/43.jpg', '[]', '2019-11-17 21:17:08', '2019-11-17 21:17:08', NULL),
(25, 1, '44', 3, 'image/jpeg', 17781, 'properties/44.jpg', '[]', '2019-11-17 21:17:13', '2019-11-17 21:17:13', NULL),
(26, 1, '1', 4, 'image/jpeg', 750839, 'projects/1.jpg', '[]', '2019-11-18 00:37:18', '2019-11-18 00:37:18', NULL),
(27, 1, '2', 4, 'image/jpeg', 431985, 'projects/2.jpg', '[]', '2019-11-18 00:37:31', '2019-11-18 00:37:31', NULL),
(28, 1, '3', 4, 'image/jpeg', 450933, 'projects/3.jpg', '[]', '2019-11-18 00:37:35', '2019-11-18 00:37:35', NULL),
(29, 1, '5', 4, 'image/jpeg', 206027, 'projects/5.jpg', '[]', '2019-11-18 00:37:42', '2019-11-18 00:37:42', NULL),
(30, 1, 'wp1a', 3, 'image/jpeg', 168494, 'properties/wp1a.jpg', '[]', '2019-11-18 00:45:27', '2019-11-18 00:45:27', NULL),
(31, 1, '4-1', 3, 'image/jpeg', 433537, 'properties/4-1.jpg', '[]', '2019-11-18 00:45:40', '2019-11-18 00:45:40', NULL),
(32, 1, '3-1', 3, 'image/jpeg', 450933, 'properties/3-1.jpg', '[]', '2019-11-18 00:45:41', '2019-11-18 00:45:41', NULL),
(33, 1, '2-1', 3, 'image/jpeg', 431985, 'properties/2-1.jpg', '[]', '2019-11-18 00:45:44', '2019-11-18 00:45:44', NULL),
(34, 1, '8', 3, 'image/jpeg', 542999, 'properties/8.jpg', '[]', '2019-11-18 00:52:31', '2019-11-18 00:52:31', NULL),
(35, 1, '7', 3, 'image/jpeg', 464807, 'properties/7.jpg', '[]', '2019-11-18 00:52:41', '2019-11-18 00:52:41', NULL),
(36, 1, '5', 3, 'image/jpeg', 206027, 'properties/5.jpg', '[]', '2019-11-18 00:52:56', '2019-11-18 00:52:56', NULL),
(37, 1, '1-1', 3, 'image/jpeg', 750839, 'properties/1-1.jpg', '[]', '2019-11-18 00:53:13', '2019-11-18 00:53:13', NULL),
(38, 1, 'a3', 3, 'image/jpeg', 182143, 'properties/a3.jpg', '[]', '2019-11-18 01:04:57', '2019-11-18 01:04:57', NULL),
(39, 1, 'a4', 3, 'image/jpeg', 79498, 'properties/a4.jpg', '[]', '2019-11-18 01:05:07', '2019-11-18 01:05:07', NULL),
(40, 1, 'a2', 3, 'image/jpeg', 79585, 'properties/a2.jpg', '[]', '2019-11-18 01:05:15', '2019-11-18 01:05:15', NULL),
(41, 1, 'a1', 3, 'image/jpeg', 104460, 'properties/a1.jpg', '[]', '2019-11-18 01:05:16', '2019-11-18 01:05:16', NULL),
(42, 1, 'b5', 3, 'image/jpeg', 69849, 'properties/b5.jpg', '[]', '2019-11-18 01:10:39', '2019-11-18 01:10:39', NULL),
(43, 1, 'b6', 3, 'image/jpeg', 104434, 'properties/b6.jpg', '[]', '2019-11-18 01:10:48', '2019-11-18 01:10:48', NULL),
(44, 1, 'b4', 3, 'image/jpeg', 101182, 'properties/b4.jpg', '[]', '2019-11-18 01:10:54', '2019-11-18 01:10:54', NULL),
(45, 1, 'b1', 3, 'image/jpeg', 169643, 'properties/b1.jpg', '[]', '2019-11-18 01:11:02', '2019-11-18 01:11:02', NULL),
(46, 1, 'b2', 3, 'image/jpeg', 92903, 'properties/b2.jpg', '[]', '2019-11-18 01:11:28', '2019-11-18 01:11:28', NULL),
(47, 1, '21', 4, 'image/jpeg', 173885, 'projects/21.jpg', '[]', '2019-11-18 01:27:07', '2019-11-18 01:27:07', NULL),
(48, 1, '26', 4, 'image/jpeg', 121747, 'projects/26.jpg', '[]', '2019-11-18 01:27:20', '2019-11-18 01:27:20', NULL),
(49, 1, '22', 4, 'image/jpeg', 94488, 'projects/22.jpg', '[]', '2019-11-18 01:27:20', '2019-11-18 01:27:20', NULL),
(50, 1, '25', 4, 'image/jpeg', 138699, 'projects/25.jpg', '[]', '2019-11-18 01:27:21', '2019-11-18 01:27:21', NULL),
(51, 1, '24', 4, 'image/jpeg', 96624, 'projects/24.jpg', '[]', '2019-11-18 01:27:22', '2019-11-18 01:27:22', NULL),
(52, 1, '23', 4, 'image/jpeg', 90740, 'projects/23.jpg', '[]', '2019-11-18 01:27:22', '2019-11-18 01:27:22', NULL),
(53, 1, 'p2', 3, 'image/jpeg', 427643, 'properties/p2.jpg', '[]', '2019-11-18 01:48:09', '2019-11-18 01:48:09', NULL),
(54, 1, 'p1', 3, 'image/jpeg', 198758, 'properties/p1.jpg', '[]', '2019-11-18 01:48:24', '2019-11-18 01:48:24', NULL),
(55, 1, '24-1', 3, 'image/jpeg', 96624, 'properties/24-1.jpg', '[]', '2019-11-18 01:48:25', '2019-11-18 01:48:25', NULL),
(56, 1, '22-1', 3, 'image/jpeg', 94488, 'properties/22-1.jpg', '[]', '2019-11-18 01:48:26', '2019-11-18 01:48:26', NULL),
(57, 1, '79', 3, 'image/jpeg', 128490, 'properties/79.jpg', '[]', '2019-11-18 02:01:14', '2019-11-18 02:01:14', NULL),
(58, 1, '78', 3, 'image/jpeg', 132835, 'properties/78.jpg', '[]', '2019-11-18 02:01:25', '2019-11-18 02:01:25', NULL),
(59, 1, '75', 3, 'image/jpeg', 144040, 'properties/75.jpg', '[]', '2019-11-18 02:01:26', '2019-11-18 02:01:26', NULL),
(60, 1, '74', 3, 'image/jpeg', 108268, 'properties/74.jpg', '[]', '2019-11-18 02:01:27', '2019-11-18 02:01:27', NULL),
(61, 1, '73', 3, 'image/jpeg', 99089, 'properties/73.jpg', '[]', '2019-11-18 02:01:28', '2019-11-18 02:01:28', NULL),
(62, 1, '72', 3, 'image/jpeg', 99746, 'properties/72.jpg', '[]', '2019-11-18 02:01:28', '2019-11-18 02:01:28', NULL),
(63, 1, '71', 3, 'image/jpeg', 127638, 'properties/71.jpg', '[]', '2019-11-18 02:01:29', '2019-11-18 02:01:29', NULL),
(64, 1, '5-1', 3, 'image/jpeg', 86536, 'properties/5-1.jpg', '[]', '2019-11-18 02:16:08', '2019-11-18 02:16:08', NULL),
(65, 1, '9', 3, 'image/jpeg', 98602, 'properties/9.jpg', '[]', '2019-11-18 02:16:17', '2019-11-18 02:16:17', NULL),
(66, 1, '6', 3, 'image/jpeg', 51884, 'properties/6.jpg', '[]', '2019-11-18 02:16:17', '2019-11-18 02:16:17', NULL),
(67, 1, '7-1', 3, 'image/jpeg', 46086, 'properties/7-1.jpg', '[]', '2019-11-18 02:16:18', '2019-11-18 02:16:18', NULL),
(68, 1, '8-1', 3, 'image/jpeg', 35774, 'properties/8-1.jpg', '[]', '2019-11-18 02:16:18', '2019-11-18 02:16:18', NULL),
(69, 1, '15', 3, 'image/jpeg', 111450, 'properties/15.jpg', '[]', '2019-11-18 02:21:37', '2019-11-18 02:21:37', NULL),
(70, 1, '14', 3, 'image/jpeg', 66997, 'properties/14.jpg', '[]', '2019-11-18 02:21:44', '2019-11-18 02:21:44', NULL),
(71, 1, '13', 3, 'image/jpeg', 82991, 'properties/13.jpg', '[]', '2019-11-18 02:21:45', '2019-11-18 02:21:45', NULL),
(72, 1, '12', 3, 'image/jpeg', 86373, 'properties/12.jpg', '[]', '2019-11-18 02:21:46', '2019-11-18 02:21:46', NULL),
(73, 1, '11', 3, 'image/jpeg', 79403, 'properties/11.jpg', '[]', '2019-11-18 02:21:47', '2019-11-18 02:21:47', NULL),
(74, 1, '10', 3, 'image/jpeg', 255695, 'properties/10.jpg', '[]', '2019-11-18 02:21:47', '2019-11-18 02:21:47', NULL),
(75, 1, 'a6', 3, 'image/jpeg', 82219, 'properties/a6.jpg', '[]', '2019-11-18 02:43:55', '2019-11-18 02:43:55', NULL),
(76, 1, 'a5', 3, 'image/jpeg', 116582, 'properties/a5.jpg', '[]', '2019-11-18 02:44:10', '2019-11-18 02:44:10', NULL),
(77, 1, 'a4-1', 3, 'image/jpeg', 93023, 'properties/a4-1.jpg', '[]', '2019-11-18 02:44:10', '2019-11-18 02:44:10', NULL),
(78, 1, 'a3-1', 3, 'image/jpeg', 103281, 'properties/a3-1.jpg', '[]', '2019-11-18 02:44:11', '2019-11-18 02:44:11', NULL),
(79, 1, 'a2-1', 3, 'image/jpeg', 58090, 'properties/a2-1.jpg', '[]', '2019-11-18 02:44:12', '2019-11-18 02:44:12', NULL),
(80, 1, 'a1-1', 3, 'image/jpeg', 244411, 'properties/a1-1.jpg', '[]', '2019-11-18 02:44:12', '2019-11-18 02:44:12', NULL),
(81, 1, '1-2', 3, 'image/jpeg', 1587777, 'properties/1-2.jpg', '[]', '2019-11-18 02:50:43', '2019-11-18 02:50:43', NULL),
(82, 1, '2-2', 3, 'image/jpeg', 260049, 'properties/2-2.jpg', '[]', '2019-11-18 02:55:33', '2019-11-18 02:55:33', NULL),
(83, 1, '3-2', 3, 'image/jpeg', 124405, 'properties/3-2.jpg', '[]', '2019-11-18 02:57:30', '2019-11-18 02:57:30', NULL),
(84, 1, '6-1', 3, 'image/jpeg', 252518, 'properties/6-1.jpg', '[]', '2019-11-18 02:58:52', '2019-11-18 02:58:52', NULL),
(85, 1, 'download', 3, 'image/jpeg', 10833, 'properties/download.jpeg', '[]', '2019-11-18 03:03:51', '2019-11-18 03:03:51', NULL),
(86, 1, '32223_43914_378', 3, 'image/png', 716445, 'properties/32223-43914-378.png', '[]', '2019-11-18 03:04:34', '2019-11-18 03:04:34', NULL),
(87, 1, '13', 4, 'image/jpeg', 562580, 'projects/13.jpg', '[]', '2019-11-18 03:29:21', '2019-11-18 03:29:21', NULL),
(88, 1, '14', 4, 'image/jpeg', 1259051, 'projects/14.jpg', '[]', '2019-11-18 03:29:30', '2019-11-18 03:29:30', NULL),
(89, 1, '11', 4, 'image/jpeg', 1729433, 'projects/11.jpg', '[]', '2019-11-18 03:29:32', '2019-11-18 03:29:32', NULL),
(90, 1, '12', 4, 'image/jpeg', 942082, 'projects/12.jpg', '[]', '2019-11-18 03:29:35', '2019-11-18 03:29:35', NULL),
(91, 1, 'a10', 3, 'image/jpeg', 135558, 'properties/a10.jpg', '[]', '2019-11-18 03:36:26', '2019-11-18 03:36:26', NULL),
(92, 1, 'a9', 3, 'image/jpeg', 174424, 'properties/a9.jpg', '[]', '2019-11-18 03:36:26', '2019-11-18 03:36:26', NULL),
(93, 1, 'a8', 3, 'image/jpeg', 220787, 'properties/a8.jpg', '[]', '2019-11-18 03:36:27', '2019-11-18 03:36:27', NULL),
(94, 1, 'a7', 3, 'image/jpeg', 436253, 'properties/a7.jpg', '[]', '2019-11-18 03:36:29', '2019-11-18 03:36:29', NULL),
(95, 1, 'a6-1', 3, 'image/jpeg', 581176, 'properties/a6-1.jpg', '[]', '2019-11-18 03:36:31', '2019-11-18 03:36:31', NULL),
(96, 1, 'a5-1', 3, 'image/jpeg', 184906, 'properties/a5-1.jpg', '[]', '2019-11-18 03:36:32', '2019-11-18 03:36:32', NULL),
(97, 1, 'q1', 3, 'image/jpeg', 458500, 'properties/q1.jpg', '[]', '2019-11-18 03:43:56', '2019-11-18 03:43:56', NULL),
(98, 1, 'q3', 3, 'image/jpeg', 328317, 'properties/q3.jpg', '[]', '2019-11-18 03:44:08', '2019-11-18 03:44:08', NULL),
(99, 1, 'q6', 3, 'image/jpeg', 249538, 'properties/q6.jpg', '[]', '2019-11-18 03:44:08', '2019-11-18 03:44:08', NULL),
(100, 1, 'q7', 3, 'image/jpeg', 147871, 'properties/q7.jpg', '[]', '2019-11-18 03:44:09', '2019-11-18 03:44:09', NULL),
(101, 1, 'q8', 3, 'image/jpeg', 194815, 'properties/q8.jpg', '[]', '2019-11-18 03:44:10', '2019-11-18 03:44:10', NULL),
(102, 1, 'q2', 3, 'image/jpeg', 233211, 'properties/q2.jpg', '[]', '2019-11-18 03:44:11', '2019-11-18 03:44:11', NULL),
(103, 1, 'e1', 3, 'image/jpeg', 1105244, 'properties/e1.jpg', '[]', '2019-11-18 03:51:53', '2019-11-18 03:51:53', NULL),
(104, 1, 'e8', 3, 'image/jpeg', 820972, 'properties/e8.jpg', '[]', '2019-11-18 03:52:05', '2019-11-18 03:52:05', NULL),
(105, 1, 'e7', 3, 'image/jpeg', 916078, 'properties/e7.jpg', '[]', '2019-11-18 03:52:06', '2019-11-18 03:52:06', NULL),
(106, 1, 'e5', 3, 'image/jpeg', 948302, 'properties/e5.jpg', '[]', '2019-11-18 03:52:08', '2019-11-18 03:52:08', NULL),
(107, 1, 'e4', 3, 'image/jpeg', 1003508, 'properties/e4.jpg', '[]', '2019-11-18 03:52:10', '2019-11-18 03:52:10', NULL),
(108, 1, 'e3', 3, 'image/jpeg', 1113759, 'properties/e3.jpg', '[]', '2019-11-18 03:52:12', '2019-11-18 03:52:12', NULL),
(109, 1, 'e2', 3, 'image/jpeg', 1062944, 'properties/e2.jpg', '[]', '2019-11-18 03:52:14', '2019-11-18 03:52:14', NULL),
(110, 1, '5-2', 3, 'image/jpeg', 656323, 'properties/5-2.jpg', '[]', '2019-11-18 07:22:03', '2019-11-18 07:22:03', NULL),
(111, 1, '1-3', 3, 'image/jpeg', 646056, 'properties/1-3.jpg', '[]', '2019-11-18 07:22:05', '2019-11-18 07:22:05', NULL),
(112, 1, '4-2', 3, 'image/jpeg', 642443, 'properties/4-2.jpg', '[]', '2019-11-18 07:22:07', '2019-11-18 07:22:07', NULL),
(113, 1, '3-3', 3, 'image/jpeg', 762723, 'properties/3-3.jpg', '[]', '2019-11-18 07:22:09', '2019-11-18 07:22:09', NULL),
(114, 1, '2-3', 3, 'image/jpeg', 684758, 'properties/2-3.jpg', '[]', '2019-11-18 07:22:10', '2019-11-18 07:22:10', NULL),
(115, 1, '11-1', 3, 'image/jpeg', 127294, 'properties/11-1.jpg', '[]', '2019-11-18 07:35:27', '2019-11-18 07:35:27', NULL),
(116, 1, '10-1', 3, 'image/jpeg', 198455, 'properties/10-1.jpg', '[]', '2019-11-18 07:35:29', '2019-11-18 07:35:29', NULL),
(117, 1, '9-1', 3, 'image/jpeg', 82701, 'properties/9-1.jpg', '[]', '2019-11-18 07:35:30', '2019-11-18 07:35:30', NULL),
(118, 1, '8-2', 3, 'image/jpeg', 116324, 'properties/8-2.jpg', '[]', '2019-11-18 07:35:30', '2019-11-18 07:35:30', NULL),
(119, 1, '7-2', 3, 'image/jpeg', 172462, 'properties/7-2.jpg', '[]', '2019-11-18 07:35:31', '2019-11-18 07:35:31', NULL),
(120, 1, '6-2', 3, 'image/jpeg', 76855, 'properties/6-2.jpg', '[]', '2019-11-18 07:35:32', '2019-11-18 07:35:32', NULL),
(121, 1, 'a4-2', 3, 'image/jpeg', 91918, 'properties/a4-2.jpg', '[]', '2019-11-18 07:43:23', '2019-11-18 07:43:23', NULL),
(122, 1, 'a3-2', 3, 'image/jpeg', 180354, 'properties/a3-2.jpg', '[]', '2019-11-18 07:43:24', '2019-11-18 07:43:24', NULL),
(123, 1, 'a2-2', 3, 'image/jpeg', 110869, 'properties/a2-2.jpg', '[]', '2019-11-18 07:43:25', '2019-11-18 07:43:25', NULL),
(124, 1, 'a1-2', 3, 'image/jpeg', 213475, 'properties/a1-2.jpg', '[]', '2019-11-18 07:43:26', '2019-11-18 07:43:26', NULL),
(125, 1, 'b5-1', 3, 'image/jpeg', 136853, 'properties/b5-1.jpg', '[]', '2019-11-18 07:54:40', '2019-11-18 07:54:40', NULL),
(126, 1, 'b4-1', 3, 'image/jpeg', 151288, 'properties/b4-1.jpg', '[]', '2019-11-18 07:54:41', '2019-11-18 07:54:41', NULL),
(127, 1, 'b3', 3, 'image/jpeg', 130884, 'properties/b3.jpg', '[]', '2019-11-18 07:54:43', '2019-11-18 07:54:43', NULL),
(131, 1, 't5', 3, 'image/jpeg', 94036, 'properties/t5.jpg', '[]', '2019-11-18 08:11:41', '2019-11-18 08:11:41', NULL),
(132, 1, 't4', 3, 'image/jpeg', 77280, 'properties/t4.jpg', '[]', '2019-11-18 08:11:42', '2019-11-18 08:11:42', NULL),
(133, 1, 't3', 3, 'image/jpeg', 91376, 'properties/t3.jpg', '[]', '2019-11-18 08:11:43', '2019-11-18 08:11:43', NULL),
(134, 1, 't2', 3, 'image/jpeg', 86492, 'properties/t2.jpg', '[]', '2019-11-18 08:11:44', '2019-11-18 08:11:44', NULL),
(135, 1, 't1', 3, 'image/jpeg', 66858, 'properties/t1.jpg', '[]', '2019-11-18 08:12:22', '2019-11-18 08:12:22', NULL),
(136, 1, 'Los_Angeles,_Winter_2016', 5, 'image/jpeg', 254681, 'cities/los-angeles-winter-2016.jpg', '[]', '2019-11-18 08:20:34', '2019-11-18 08:20:34', NULL),
(137, 1, 'OaklandnightskylineandLakeMerritt', 5, 'image/jpeg', 433073, 'cities/oaklandnightskylineandlakemerritt.jpg', '[]', '2019-11-18 08:23:10', '2019-11-18 08:23:10', NULL),
(138, 1, '2009-0726-CA-Bakersfield-TruxtonTower', 5, 'image/jpeg', 686056, 'cities/2009-0726-ca-bakersfield-truxtontower.jpg', '[]', '2019-11-18 08:26:50', '2019-11-18 08:26:50', NULL),
(139, 1, 'Castillo_de_Disneyland', 5, 'image/jpeg', 412609, 'cities/castillo-de-disneyland.jpg', '[]', '2019-11-18 08:27:54', '2019-11-18 08:27:54', NULL),
(140, 1, 'GoldenGateBridge-001', 5, 'image/jpeg', 371864, 'cities/goldengatebridge-001.jpg', '[]', '2019-11-18 08:29:14', '2019-11-18 08:29:14', NULL),
(143, 1, 'logo-white', 6, 'image/png', 18120, 'logo/logo-white.png', '[]', '2019-11-25 21:03:32', '2019-11-25 21:03:32', NULL),
(144, 1, 'logo', 6, 'image/png', 23910, 'logo/logo.png', '[]', '2019-11-25 21:03:33', '2019-11-25 21:03:33', NULL),
(148, 1, 'banner', 1, 'image/jpeg', 239032, 'banner/banner.jpg', '[]', '2019-11-26 08:23:54', '2019-11-26 08:23:54', NULL),
(149, 1, 'vietnam-office 4', 2, 'image/jpeg', 214366, 'general/vietnam-office-4.jpg', '[]', '2019-11-27 01:50:24', '2019-11-27 01:50:24', NULL),
(150, 1, 'favicon', 6, 'image/png', 3110, 'logo/favicon.png', '[]', '2019-11-27 01:51:00', '2019-11-27 01:51:00', NULL),
(151, 1, 'TermsConditions-PageDesktop', 2, 'image/jpeg', 185151, 'general/termsconditions-pagedesktop.jpg', '[]', '2019-11-27 02:31:35', '2019-11-27 02:31:35', NULL),
(157, 1, 'Asset 3@3x', 2, 'image/png', 76833, 'general/asset-3-at-3x.png', '[]', '2019-11-27 04:44:52', '2019-11-27 04:44:52', NULL),
(158, 1, 'Asset 4@3x', 2, 'image/png', 84067, 'general/asset-4-at-3x.png', '[]', '2019-11-27 04:47:51', '2019-11-27 04:47:51', NULL),
(159, 1, 'video-vi-pham-ban-quyen-bị-youtube-thang-tay-trung-tri', 2, 'image/jpeg', 63143, 'general/video-vi-pham-ban-quyen-bi-youtube-thang-tay-trung-tri.jpg', '[]', '2019-11-27 04:56:54', '2019-11-27 04:56:54', NULL),
(160, 1, 'copyright', 2, 'image/jpeg', 128544, 'general/copyright.jpg', '[]', '2019-11-27 05:01:16', '2019-11-27 05:01:16', NULL),
(161, 0, 'avatar.jpg', 0, 'image/jpeg', 151486, 'users/avatar.jpg', '[]', '2019-12-09 04:41:42', '2019-12-09 04:41:42', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `media_folders`
--

CREATE TABLE `media_folders` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `media_folders`
--

INSERT INTO `media_folders` (`id`, `user_id`, `name`, `slug`, `parent_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 'Banners', 'banner', 0, '2019-11-16 02:00:43', '2019-11-16 02:00:50', NULL),
(2, 1, 'General', 'general', 0, '2019-11-16 02:01:50', '2019-11-16 02:01:50', NULL),
(3, 1, 'Properties', 'properties', 0, '2019-11-17 20:24:41', '2019-11-17 20:24:41', NULL),
(4, 1, 'Projects', 'projects', 0, '2019-11-18 00:37:06', '2019-11-18 00:37:06', NULL),
(5, 1, 'Cities', 'cities', 0, '2019-11-18 08:20:24', '2019-11-18 08:20:24', NULL),
(6, 1, 'Logo', 'logo', 0, '2019-11-25 08:46:01', '2019-11-25 08:46:01', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `media_settings`
--

CREATE TABLE `media_settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci,
  `media_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `menus`
--

CREATE TABLE `menus` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menus`
--

INSERT INTO `menus` (`id`, `name`, `slug`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Main menu', 'main-menu', 'published', '2019-11-16 01:51:27', '2019-11-16 01:51:27'),
(2, 'About', 'about', 'published', '2019-11-17 22:04:59', '2019-11-17 22:04:59'),
(3, 'More information', 'more-information', 'published', '2019-11-17 22:06:12', '2019-11-17 22:06:12'),
(4, 'News', 'news', 'published', '2019-11-17 22:07:05', '2019-11-17 22:07:05'),
(5, 'Menu chính', 'menu-chinh', 'published', '2019-11-21 07:02:11', '2019-11-21 07:02:11'),
(6, 'Giới thiệu', 've-chung-toi', 'published', '2019-11-21 07:04:58', '2019-11-21 07:06:46'),
(7, 'Thông tin thêm', 'thong-tin-them', 'published', '2019-11-21 07:43:23', '2019-11-21 07:43:23'),
(8, 'Tin tức', 'tin-tuc', 'published', '2019-11-21 07:45:43', '2019-11-21 07:45:43');

-- --------------------------------------------------------

--
-- Table structure for table `menu_locations`
--

CREATE TABLE `menu_locations` (
  `id` int(10) UNSIGNED NOT NULL,
  `menu_id` int(10) UNSIGNED NOT NULL,
  `location` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menu_locations`
--

INSERT INTO `menu_locations` (`id`, `menu_id`, `location`, `created_at`, `updated_at`) VALUES
(1, 1, 'main-menu', '2019-11-16 01:54:36', '2019-11-16 01:54:36'),
(2, 5, 'main-menu', '2019-11-21 07:03:10', '2019-11-21 07:03:10');

-- --------------------------------------------------------

--
-- Table structure for table `menu_nodes`
--

CREATE TABLE `menu_nodes` (
  `id` int(10) UNSIGNED NOT NULL,
  `menu_id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `reference_id` int(10) UNSIGNED DEFAULT '0',
  `reference_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon_font` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `position` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `title` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `css_class` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `target` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '_self',
  `has_child` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menu_nodes`
--

INSERT INTO `menu_nodes` (`id`, `menu_id`, `parent_id`, `reference_id`, `reference_type`, `url`, `icon_font`, `position`, `title`, `css_class`, `target`, `has_child`, `created_at`, `updated_at`) VALUES
(1, 1, 0, 0, NULL, '/properties', '', 2, 'Properties', '', '_self', 0, '2019-11-16 01:51:59', '2020-01-10 17:53:06'),
(2, 1, 0, 0, NULL, '/careers', '', 3, 'Careers', '', '_self', 0, '2019-11-16 01:51:59', '2020-01-10 17:53:06'),
(3, 1, 0, 0, NULL, '/contact', '', 4, 'Contact', '', '_self', 0, '2019-11-16 01:51:59', '2020-01-10 17:53:06'),
(5, 2, 0, 0, NULL, 'https://flex-home.botble.com/contact', '', 1, 'Contact us', '', '_self', 0, '2019-11-17 22:05:37', '2019-11-30 19:36:05'),
(6, 2, 0, 0, NULL, '/careers', '', 2, 'Careers', '', '_self', 0, '2019-11-17 22:05:37', '2019-11-30 19:36:05'),
(8, 3, 0, 0, NULL, 'https://flex-home.botble.com/projects', '', 0, 'All projects', '', '_self', 0, '2019-11-17 22:06:52', '2019-11-27 04:57:41'),
(9, 3, 0, 0, NULL, '/properties?type=rent', '', 3, 'Houses for rent', '', '_self', 0, '2019-11-17 22:06:52', '2019-11-27 04:57:41'),
(10, 3, 0, 0, NULL, '/properties?type=sale', '', 2, 'Houses for sale', '', '_self', 0, '2019-11-17 22:06:52', '2019-11-27 04:57:41'),
(11, 3, 0, 0, NULL, 'https://flex-home.botble.com/properties', '', 1, 'All properties', '', '_self', 0, '2019-11-17 22:06:52', '2019-11-27 04:57:41'),
(16, 1, 0, 0, NULL, '/projects', '', 0, 'Projects', '', '_self', 0, '2019-11-20 22:10:33', '2020-01-10 17:53:06'),
(17, 5, 0, 0, NULL, '/vi/projects', '', 0, 'Dự án', '', '_self', 0, '2019-11-21 07:03:10', '2020-01-10 17:54:25'),
(18, 5, 0, 0, NULL, '/vi/properties', '', 1, 'Nhà - Căn Hộ', '', '_self', 0, '2019-11-21 07:04:12', '2020-01-10 17:54:25'),
(19, 5, 0, 0, NULL, '/vi/contact', '', 4, 'Liên hệ', '', '_self', 0, '2019-11-21 07:04:12', '2020-01-10 17:54:25'),
(20, 5, 0, 0, NULL, '/vi/careers', '', 3, 'Tuyển dụng', '', '_self', 0, '2019-11-21 07:04:12', '2020-01-10 17:54:25'),
(22, 6, 0, 0, NULL, 'https://flex-home.botble.com/vi/contact', '', 1, 'Liên hệ', '', '_self', 0, '2019-11-21 07:06:46', '2019-11-30 19:36:17'),
(23, 6, 0, 0, NULL, '/vi/careers', '', 2, 'Tuyển dụng', '', '_self', 0, '2019-11-21 07:06:46', '2019-11-30 19:36:17'),
(25, 7, 0, 0, NULL, 'https://flex-home.botble.com/vi/projects', '', 0, 'Dự án', '', '_self', 0, '2019-11-21 07:44:37', '2019-11-27 04:57:13'),
(26, 7, 0, 0, NULL, 'https://flex-home.botble.com/vi/properties', '', 1, 'Nhà - Căn hộ', '', '_self', 0, '2019-11-21 07:44:37', '2019-11-27 04:57:13'),
(27, 7, 0, 0, NULL, '/vi/properties?type=sale', '', 2, 'Nhà bán', '', '_self', 0, '2019-11-21 07:44:37', '2019-11-27 04:57:13'),
(28, 7, 0, 0, NULL, '/vi/properties?type=rent', '', 3, 'Nhà cho thuê', '', '_self', 0, '2019-11-21 07:44:37', '2019-11-27 04:57:13'),
(32, 8, 0, 2, 'Botble\\Page\\Models\\Page', '/tin-tuc', NULL, 0, 'Tin tức mới nhất', NULL, '_self', 0, '2019-11-21 07:51:32', '2020-10-30 21:54:24'),
(33, 8, 0, 3, 'Botble\\Blog\\Models\\Category', '/kien-truc-nha', NULL, 1, 'Kiến trúc nhà', NULL, '_self', 0, '2019-11-21 07:51:32', '2020-10-30 21:54:24'),
(34, 8, 0, 5, 'Botble\\Blog\\Models\\Category', '/thiet-ke-nha', NULL, 2, 'Thiết kế nhà', NULL, '_self', 0, '2019-11-21 07:51:32', '2020-10-30 21:54:24'),
(35, 8, 0, 7, 'Botble\\Blog\\Models\\Category', '/vat-lieu-xay-dung', NULL, 3, 'Vật liệu xây dựng', NULL, '_self', 0, '2019-11-21 07:51:32', '2020-10-30 21:54:24'),
(36, 4, 0, 1, 'Botble\\Page\\Models\\Page', '/news', NULL, 0, 'Latest news', NULL, '_self', 0, '2019-11-21 07:52:28', '2020-10-30 21:54:24'),
(37, 4, 0, 6, 'Botble\\Blog\\Models\\Category', '/building-materials', NULL, 1, 'Building materials', NULL, '_self', 0, '2019-11-21 07:52:28', '2020-10-30 21:54:24'),
(38, 4, 0, 2, 'Botble\\Blog\\Models\\Category', '/house-architecture', NULL, 2, 'House architecture', NULL, '_self', 0, '2019-11-21 07:52:28', '2020-10-30 21:54:24'),
(39, 4, 0, 4, 'Botble\\Blog\\Models\\Category', '/house-design', NULL, 3, 'House design', NULL, '_self', 0, '2019-11-21 07:52:28', '2020-10-30 21:54:24'),
(40, 2, 0, 3, 'Botble\\Page\\Models\\Page', '/about-us', '', 0, 'About us', '', '_self', 0, '2019-11-27 02:39:10', '2020-10-30 21:54:24'),
(41, 2, 0, 5, 'Botble\\Page\\Models\\Page', '/terms-conditions', '', 3, 'Terms & Conditions', '', '_self', 0, '2019-11-27 02:39:11', '2020-10-30 21:54:24'),
(42, 6, 0, 4, 'Botble\\Page\\Models\\Page', '/gioi-thieu', '', 0, 'Về chúng tôi', '', '_self', 0, '2019-11-27 02:51:25', '2020-10-30 21:54:24'),
(43, 6, 0, 6, 'Botble\\Page\\Models\\Page', '/dieu-khoan-va-quy-dinh', '', 3, 'Điều khoản và quy định', '', '_self', 0, '2019-11-27 02:51:25', '2020-10-30 21:54:24'),
(44, 1, 0, 1, 'Botble\\Page\\Models\\Page', '/news', NULL, 1, 'News', NULL, '_self', 0, '2020-01-10 17:53:06', '2020-10-30 21:54:24'),
(45, 5, 0, 2, 'Botble\\Page\\Models\\Page', '/tin-tuc', NULL, 2, 'Tin tức', NULL, '_self', 0, '2020-01-10 17:54:25', '2020-10-30 21:54:24');

-- --------------------------------------------------------

--
-- Table structure for table `meta_boxes`
--

CREATE TABLE `meta_boxes` (
  `id` int(10) UNSIGNED NOT NULL,
  `reference_id` int(10) UNSIGNED NOT NULL,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_value` text COLLATE utf8mb4_unicode_ci,
  `reference_type` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `meta_boxes`
--

INSERT INTO `meta_boxes` (`id`, `reference_id`, `meta_key`, `meta_value`, `reference_type`, `created_at`, `updated_at`) VALUES
(1, 1, 'seo_meta', '[{\"seo_title\":null,\"seo_description\":null}]', 'Botble\\RealEstate\\Models\\Property', '2019-11-17 20:34:59', '2019-11-17 20:34:59'),
(2, 2, 'seo_meta', '[{\"seo_title\":null,\"seo_description\":null}]', 'Botble\\RealEstate\\Models\\Property', '2019-11-17 20:53:34', '2019-11-17 20:53:34'),
(3, 3, 'seo_meta', '[{\"seo_title\":null,\"seo_description\":null}]', 'Botble\\RealEstate\\Models\\Property', '2019-11-17 21:09:55', '2019-11-17 21:09:55'),
(4, 4, 'seo_meta', '[{\"seo_title\":null,\"seo_description\":null}]', 'Botble\\RealEstate\\Models\\Property', '2019-11-17 21:18:11', '2019-11-17 21:18:11'),
(5, 1, 'seo_meta', '[{\"seo_title\":null,\"seo_description\":null}]', 'Botble\\RealEstate\\Models\\PropertyFeature', '2019-11-17 21:40:58', '2019-11-17 21:40:58'),
(6, 2, 'seo_meta', '[{\"seo_title\":null,\"seo_description\":null}]', 'Botble\\RealEstate\\Models\\PropertyFeature', '2019-11-17 21:41:43', '2019-11-17 21:41:43'),
(7, 1, 'seo_meta', '[{\"seo_title\":null,\"seo_description\":null}]', 'Botble\\RealEstate\\Models\\Project', '2019-11-18 00:34:49', '2019-11-18 00:34:49'),
(8, 5, 'seo_meta', '[{\"seo_title\":null,\"seo_description\":null}]', 'Botble\\RealEstate\\Models\\Property', '2019-11-18 00:47:52', '2019-11-18 00:47:52'),
(9, 6, 'seo_meta', '[{\"seo_title\":null,\"seo_description\":null}]', 'Botble\\RealEstate\\Models\\Property', '2019-11-18 01:05:58', '2019-11-18 01:05:58'),
(10, 7, 'seo_meta', '[{\"seo_title\":null,\"seo_description\":null}]', 'Botble\\RealEstate\\Models\\Property', '2019-11-18 01:12:07', '2019-11-18 01:12:07'),
(11, 2, 'seo_meta', '[{\"seo_title\":null,\"seo_description\":null}]', 'Botble\\RealEstate\\Models\\Project', '2019-11-18 01:28:45', '2019-11-18 01:28:45'),
(12, 8, 'seo_meta', '[{\"seo_title\":null,\"seo_description\":null}]', 'Botble\\RealEstate\\Models\\Property', '2019-11-18 01:49:36', '2019-11-18 01:49:36'),
(13, 9, 'seo_meta', '[{\"seo_title\":null,\"seo_description\":null}]', 'Botble\\RealEstate\\Models\\Property', '2019-11-18 02:02:19', '2019-11-18 02:02:19'),
(14, 10, 'seo_meta', '[{\"seo_title\":null,\"seo_description\":null}]', 'Botble\\RealEstate\\Models\\Property', '2019-11-18 02:16:53', '2019-11-18 02:16:53'),
(15, 11, 'seo_meta', '[{\"seo_title\":null,\"seo_description\":null}]', 'Botble\\RealEstate\\Models\\Property', '2019-11-18 02:22:48', '2019-11-18 02:22:48'),
(16, 1, 'seo_meta', '[{\"seo_title\":null,\"seo_description\":null}]', 'Botble\\Blog\\Models\\Category', '2019-11-18 02:33:35', '2019-11-18 02:33:35'),
(17, 12, 'seo_meta', '[{\"seo_title\":null,\"seo_description\":null}]', 'Botble\\RealEstate\\Models\\Property', '2019-11-18 02:47:05', '2019-11-18 02:47:05'),
(18, 1, 'seo_meta', '[{\"seo_title\":null,\"seo_description\":null}]', 'Botble\\Blog\\Models\\Post', '2019-11-18 02:51:35', '2019-11-18 02:51:35'),
(19, 1, 'seo_meta', '[{\"seo_title\":null,\"seo_description\":null}]', 'Botble\\Blog\\Models\\Tag', '2019-11-18 02:51:35', '2019-11-18 02:51:35'),
(20, 2, 'seo_meta', '[{\"seo_title\":null,\"seo_description\":null}]', 'Botble\\Blog\\Models\\Post', '2019-11-18 02:55:53', '2019-11-18 02:55:53'),
(21, 2, 'seo_meta', '[{\"seo_title\":null,\"seo_description\":null}]', 'Botble\\Blog\\Models\\Tag', '2019-11-18 02:55:53', '2019-11-18 02:55:53'),
(22, 3, 'seo_meta', '[{\"seo_title\":null,\"seo_description\":null}]', 'Botble\\Blog\\Models\\Post', '2019-11-18 02:59:01', '2019-11-18 02:59:01'),
(23, 4, 'seo_meta', '[{\"seo_title\":null,\"seo_description\":null}]', 'Botble\\Blog\\Models\\Post', '2019-11-18 03:07:27', '2019-11-18 03:07:27'),
(24, 3, 'seo_meta', '[{\"seo_title\":null,\"seo_description\":null}]', 'Botble\\Blog\\Models\\Tag', '2019-11-18 03:07:27', '2019-11-18 03:07:27'),
(25, 3, 'seo_meta', '[{\"seo_title\":null,\"seo_description\":null}]', 'Botble\\RealEstate\\Models\\Project', '2019-11-18 03:30:34', '2019-11-18 03:30:34'),
(26, 4, 'seo_meta', '[{\"seo_title\":null,\"seo_description\":null}]', 'Botble\\RealEstate\\Models\\Project', '2019-11-18 03:38:13', '2019-11-18 03:38:13'),
(27, 5, 'seo_meta', '[{\"seo_title\":null,\"seo_description\":null}]', 'Botble\\RealEstate\\Models\\Project', '2019-11-18 03:45:06', '2019-11-18 03:45:06'),
(28, 6, 'seo_meta', '[{\"seo_title\":null,\"seo_description\":null}]', 'Botble\\RealEstate\\Models\\Project', '2019-11-18 03:53:20', '2019-11-18 03:53:20'),
(29, 13, 'seo_meta', '[{\"seo_title\":null,\"seo_description\":null}]', 'Botble\\RealEstate\\Models\\Property', '2019-11-18 07:23:02', '2019-11-18 07:23:02'),
(30, 14, 'seo_meta', '[{\"seo_title\":null,\"seo_description\":null}]', 'Botble\\RealEstate\\Models\\Property', '2019-11-18 07:36:29', '2019-11-18 07:36:29'),
(31, 15, 'seo_meta', '[{\"seo_title\":null,\"seo_description\":null}]', 'Botble\\RealEstate\\Models\\Property', '2019-11-18 07:44:44', '2019-11-18 07:44:44'),
(32, 16, 'seo_meta', '[{\"seo_title\":null,\"seo_description\":null}]', 'Botble\\RealEstate\\Models\\Property', '2019-11-18 07:59:14', '2019-11-18 07:59:14'),
(33, 17, 'seo_meta', '[{\"seo_title\":null,\"seo_description\":null}]', 'Botble\\RealEstate\\Models\\Property', '2019-11-18 08:13:07', '2019-11-18 08:13:07'),
(34, 7, 'seo_meta', '[{\"seo_title\":null,\"seo_description\":null}]', 'Botble\\RealEstate\\Models\\Project', '2019-11-21 01:54:36', '2019-11-21 01:54:36'),
(35, 8, 'seo_meta', '[{\"seo_title\":null,\"seo_description\":null}]', 'Botble\\RealEstate\\Models\\Project', '2019-11-21 02:28:09', '2019-11-21 02:28:09'),
(36, 9, 'seo_meta', '[{\"seo_title\":null,\"seo_description\":null}]', 'Botble\\RealEstate\\Models\\Project', '2019-11-21 02:40:25', '2019-11-21 02:40:25'),
(37, 10, 'seo_meta', '[{\"seo_title\":null,\"seo_description\":null}]', 'Botble\\RealEstate\\Models\\Project', '2019-11-21 02:58:55', '2019-11-21 02:58:55'),
(38, 11, 'seo_meta', '[{\"seo_title\":null,\"seo_description\":null}]', 'Botble\\RealEstate\\Models\\Project', '2019-11-21 03:16:25', '2019-11-21 03:16:25'),
(39, 12, 'seo_meta', '[{\"seo_title\":null,\"seo_description\":null}]', 'Botble\\RealEstate\\Models\\Project', '2019-11-21 03:25:22', '2019-11-21 03:25:22'),
(40, 18, 'seo_meta', '[{\"seo_title\":null,\"seo_description\":null}]', 'Botble\\RealEstate\\Models\\Property', '2019-11-21 05:51:54', '2019-11-21 05:51:54'),
(41, 19, 'seo_meta', '[{\"seo_title\":null,\"seo_description\":null}]', 'Botble\\RealEstate\\Models\\Property', '2019-11-21 06:03:11', '2019-11-21 06:03:11'),
(42, 20, 'seo_meta', '[{\"seo_title\":null,\"seo_description\":null}]', 'Botble\\RealEstate\\Models\\Property', '2019-11-21 06:12:15', '2019-11-21 06:12:15'),
(43, 21, 'seo_meta', '[{\"seo_title\":null,\"seo_description\":null}]', 'Botble\\RealEstate\\Models\\Property', '2019-11-21 06:26:59', '2019-11-21 06:26:59'),
(44, 22, 'seo_meta', '[{\"seo_title\":null,\"seo_description\":null}]', 'Botble\\RealEstate\\Models\\Property', '2019-11-21 06:56:50', '2019-11-21 06:56:50'),
(45, 23, 'seo_meta', '[{\"seo_title\":null,\"seo_description\":null}]', 'Botble\\RealEstate\\Models\\Property', '2019-11-21 07:18:36', '2019-11-21 07:18:36'),
(46, 24, 'seo_meta', '[{\"seo_title\":null,\"seo_description\":null}]', 'Botble\\RealEstate\\Models\\Property', '2019-11-21 07:26:48', '2019-11-21 07:26:48'),
(47, 25, 'seo_meta', '[{\"seo_title\":null,\"seo_description\":null}]', 'Botble\\RealEstate\\Models\\Property', '2019-11-21 07:34:38', '2019-11-21 07:34:38'),
(48, 26, 'seo_meta', '[{\"seo_title\":null,\"seo_description\":null}]', 'Botble\\RealEstate\\Models\\Property', '2019-11-21 07:40:46', '2019-11-21 07:40:46'),
(49, 27, 'seo_meta', '[{\"seo_title\":null,\"seo_description\":null}]', 'Botble\\RealEstate\\Models\\Property', '2019-11-21 07:45:34', '2019-11-21 07:45:34'),
(50, 1, 'seo_meta', '[{\"seo_title\":null,\"seo_description\":null}]', 'Botble\\Page\\Models\\Page', '2019-11-21 07:46:51', '2019-11-21 07:46:51'),
(51, 2, 'seo_meta', '[{\"seo_title\":null,\"seo_description\":null}]', 'Botble\\Page\\Models\\Page', '2019-11-21 07:48:22', '2019-11-21 07:48:22'),
(52, 2, 'seo_meta', '[{\"seo_title\":null,\"seo_description\":null}]', 'Botble\\Blog\\Models\\Category', '2019-11-21 07:49:25', '2019-11-21 07:49:25'),
(53, 3, 'seo_meta', '[{\"seo_title\":null,\"seo_description\":null}]', 'Botble\\Blog\\Models\\Category', '2019-11-21 07:49:35', '2019-11-21 07:49:35'),
(54, 4, 'seo_meta', '[{\"seo_title\":null,\"seo_description\":null}]', 'Botble\\Blog\\Models\\Category', '2019-11-21 07:50:02', '2019-11-21 07:50:02'),
(55, 5, 'seo_meta', '[{\"seo_title\":null,\"seo_description\":null}]', 'Botble\\Blog\\Models\\Category', '2019-11-21 07:50:17', '2019-11-21 07:50:17'),
(56, 6, 'seo_meta', '[{\"seo_title\":null,\"seo_description\":null}]', 'Botble\\Blog\\Models\\Category', '2019-11-21 07:50:36', '2019-11-21 07:50:36'),
(57, 7, 'seo_meta', '[{\"seo_title\":null,\"seo_description\":null}]', 'Botble\\Blog\\Models\\Category', '2019-11-21 07:50:58', '2019-11-21 07:50:58'),
(58, 28, 'seo_meta', '[{\"seo_title\":null,\"seo_description\":null}]', 'Botble\\RealEstate\\Models\\Property', '2019-11-21 19:53:17', '2019-11-21 19:53:17'),
(59, 29, 'seo_meta', '[{\"seo_title\":null,\"seo_description\":null}]', 'Botble\\RealEstate\\Models\\Property', '2019-11-21 19:59:16', '2019-11-21 19:59:16'),
(60, 30, 'seo_meta', '[{\"seo_title\":null,\"seo_description\":null}]', 'Botble\\RealEstate\\Models\\Property', '2019-11-22 00:29:01', '2019-11-22 00:29:01'),
(61, 31, 'seo_meta', '[{\"seo_title\":null,\"seo_description\":null}]', 'Botble\\RealEstate\\Models\\Property', '2019-11-22 00:42:28', '2019-11-22 00:42:28'),
(62, 32, 'seo_meta', '[{\"seo_title\":null,\"seo_description\":null}]', 'Botble\\RealEstate\\Models\\Property', '2019-11-22 00:47:18', '2019-11-22 00:47:18'),
(63, 33, 'seo_meta', '[{\"seo_title\":null,\"seo_description\":null}]', 'Botble\\RealEstate\\Models\\Property', '2019-11-22 00:57:15', '2019-11-22 00:57:15'),
(64, 34, 'seo_meta', '[{\"seo_title\":null,\"seo_description\":null}]', 'Botble\\RealEstate\\Models\\Property', '2019-11-22 01:06:09', '2019-11-22 01:06:09'),
(65, 8, 'seo_meta', '[{\"seo_title\":null,\"seo_description\":null}]', 'Botble\\Blog\\Models\\Category', '2019-11-22 01:26:08', '2019-11-22 01:26:08'),
(66, 5, 'seo_meta', '[{\"seo_title\":null,\"seo_description\":null}]', 'Botble\\Blog\\Models\\Post', '2019-11-22 01:26:31', '2019-11-22 01:26:31'),
(67, 6, 'seo_meta', '[{\"seo_title\":null,\"seo_description\":null}]', 'Botble\\Blog\\Models\\Post', '2019-11-22 01:29:45', '2019-11-22 01:29:45'),
(68, 7, 'seo_meta', '[{\"seo_title\":null,\"seo_description\":null}]', 'Botble\\Blog\\Models\\Post', '2019-11-22 01:33:23', '2019-11-22 01:33:23'),
(69, 8, 'seo_meta', '[{\"seo_title\":null,\"seo_description\":null}]', 'Botble\\Blog\\Models\\Post', '2019-11-22 01:39:38', '2019-11-22 01:39:38'),
(70, 3, 'seo_meta', '[{\"seo_title\":null,\"seo_description\":null}]', 'Botble\\Page\\Models\\Page', '2019-11-27 01:52:36', '2019-11-27 01:52:36'),
(71, 4, 'seo_meta', '[{\"seo_title\":null,\"seo_description\":null}]', 'Botble\\Page\\Models\\Page', '2019-11-27 01:58:46', '2019-11-27 01:58:46'),
(72, 5, 'seo_meta', '[{\"seo_title\":null,\"seo_description\":null}]', 'Botble\\Page\\Models\\Page', '2019-11-27 02:32:44', '2019-11-27 02:32:44'),
(73, 6, 'seo_meta', '[{\"seo_title\":null,\"seo_description\":null}]', 'Botble\\Page\\Models\\Page', '2019-11-27 02:34:55', '2019-11-27 02:34:55'),
(74, 1, 'seo_meta', '[{\"seo_title\":null,\"seo_description\":null}]', 'Botble\\Career\\Models\\Career', '2019-11-30 19:43:10', '2019-11-30 19:43:10'),
(75, 2, 'seo_meta', '[{\"seo_title\":null,\"seo_description\":null}]', 'Botble\\Career\\Models\\Career', '2019-11-30 19:49:07', '2019-11-30 19:49:07'),
(76, 3, 'seo_meta', '[{\"seo_title\":null,\"seo_description\":null}]', 'Botble\\Career\\Models\\Career', '2019-11-30 19:52:42', '2019-11-30 19:52:42'),
(77, 4, 'seo_meta', '[{\"seo_title\":null,\"seo_description\":null}]', 'Botble\\Career\\Models\\Career', '2019-11-30 19:56:50', '2019-11-30 19:56:50'),
(78, 7, 'seo_meta', '[{\"seo_title\":\"Homepage\",\"seo_description\":null}]', 'Botble\\Page\\Models\\Page', '2020-02-06 21:53:48', '2020-08-20 01:00:45');

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
(1, '2013_04_09_032329_create_base_tables', 1),
(2, '2013_04_09_062329_create_revisions_table', 1),
(3, '2014_10_12_000000_create_users_table', 1),
(4, '2014_10_12_100000_create_password_resets_table', 1),
(5, '2016_06_01_000001_create_oauth_auth_codes_table', 1),
(6, '2016_06_01_000002_create_oauth_access_tokens_table', 1),
(7, '2016_06_01_000003_create_oauth_refresh_tokens_table', 1),
(8, '2016_06_01_000004_create_oauth_clients_table', 1),
(9, '2016_06_01_000005_create_oauth_personal_access_clients_table', 1),
(10, '2016_06_10_230148_create_acl_tables', 1),
(11, '2016_06_14_230857_create_menus_table', 1),
(12, '2016_06_28_221418_create_pages_table', 1),
(13, '2016_10_05_074239_create_setting_table', 1),
(14, '2016_11_28_032840_create_dashboard_widget_tables', 1),
(15, '2016_12_16_084601_create_widgets_table', 1),
(16, '2017_05_09_070343_create_media_tables', 1),
(17, '2017_11_03_070450_create_slug_table', 1),
(18, '2019_07_15_042406_change_site_title_from_settings_to_theme_options', 1),
(19, '2019_08_13_033145_remove_unused_columns_in_users_table', 1),
(20, '2019_08_19_000000_create_failed_jobs_table', 1),
(21, '2019_09_07_030654_update_menu_nodes_table', 1),
(22, '2019_09_07_045041_update_slugs_table', 1),
(23, '2019_09_07_050405_update_slug_reference_for_page', 1),
(24, '2019_09_08_014859_update_meta_boxes_table', 1),
(25, '2019_09_08_015629_update_meta_box_data_for_page', 1),
(26, '2019_09_12_073711_update_media_url', 1),
(27, '2019_09_12_073711_update_media_url_for_current_data', 1),
(28, '2019_10_20_002256_remove_parent_id_in_pages_table', 1),
(31, '2018_06_22_032304_create_real_estate_table', 2),
(32, '2015_06_29_025744_create_audit_history', 3),
(33, '2015_06_18_033822_create_blog_table', 4),
(34, '2019_09_07_035526_update_menu_node_reference_type_for_category', 4),
(35, '2019_09_07_050058_update_slug_reference_for_blog', 4),
(36, '2019_09_07_155716_update_language_meta_for_blog', 4),
(37, '2019_09_08_015552_update_meta_box_data_for_blog', 4),
(38, '2019_10_20_002342_remove_parent_id_in_tags_table', 4),
(39, '2016_10_03_032336_create_languages_table', 5),
(40, '2019_09_07_154718_update_lang_meta_table', 5),
(41, '2017_10_24_154832_create_newsletter_table', 6),
(42, '2016_06_17_091537_create_contacts_table', 7),
(43, '2015_08_15_122343_create_notes_table', 8),
(44, '2019_11_18_035125_add_column_type_into_re_properties_table', 9),
(45, '2019_11_18_035712_create_investor_table', 9),
(46, '2019_11_18_040153_update_real_estates_table', 9),
(47, '2019_11_18_041228_drop_table_re_property_categories', 10),
(48, '2019_11_18_082146_create_currencies_table', 11),
(49, '2019_11_18_061011_create_country_table', 12),
(50, '2019_11_18_061730_create_state_table', 12),
(51, '2019_11_18_062515_create_city_table', 12),
(52, '2019_11_19_063851_create_project_features_table', 13),
(53, '2019_11_21_090830_update_project_and_property_table', 14),
(54, '2019_11_21_130139_add_price_to_projects_table', 15),
(55, '2019_11_14_210650_create_consults_table', 16),
(56, '2019_11_26_024326_update_property_type', 17),
(57, '2019_06_24_211801_create_career_table', 18),
(58, '2019_12_03_123314_add_column_slug_into_cities_table', 19),
(59, '2019_12_03_124417_add_column_city_id_into_table_properties_and_projects', 19),
(60, '2017_05_18_080441_create_payment_tables', 20),
(61, '2019_12_10_140938_create_vendor_table', 20),
(62, '2019_12_15_025938_update_column_images_in_real_estate_tables', 20),
(63, '2019_12_17_064316_add_column_period_to_table_re_properties', 20),
(64, '2019_12_24_033049_add_column_author_into_re_properties_table', 20),
(65, '2019_12_24_083810_vendor_create_package_table', 20),
(66, '2019_12_27_004653_update_vendors_table_with_package_data', 20),
(68, '2020_01_08_002704_real_estate_create_type_table', 21),
(69, '2020_01_10_133700_change_re_types_to_re_categories', 22),
(70, '2016_10_07_193005_create_translations_table', 23),
(71, '2020_01_23_133752_update_account_tables', 24),
(72, '2020_02_03_144309_update_column_payment_channel', 25),
(73, '2020_02_06_143217_update_vendor_table', 26),
(74, '2020_02_11_133026_add_description_to_table_payments', 27),
(75, '2020_02_11_140823_create_transactions_table', 27),
(76, '2020_02_23_111922_fix_column_number_block_in_re_properties_table', 27),
(77, '2020_03_24_151004_add_moderation_status_into_properties_table', 28),
(78, '2020_03_25_030953_create_table_vendor_packages', 29),
(79, '2020_03_25_083610_add_column_expire_date_into_re_properties_table', 30),
(80, '2020_03_26_081108_add_column_auto_renew_to_re_properties_table', 31),
(81, '2020_03_16_072752_add_column_abbreviation_to_states_table', 32),
(82, '2020_03_28_020724_make_column_user_id_nullable_table_revisions', 33),
(83, '2020_03_23_093053_update_payments_table', 34),
(84, '2020_04_22_074304_add_column_never_expired_to_re_properties_table', 35),
(85, '2020_05_26_014304_add_column_provider_to_oauth_clients_table', 36),
(86, '2020_07_27_085437_add_icon_to_re_features', 37),
(90, '2020_08_21_102728_real_estate_create_facility_table', 38),
(91, '2020_08_22_024455_rename_table_for_accounts', 39),
(92, '2020_08_26_130439_add_column_username_into_table_re_accounts', 40),
(93, '2020_09_09_110653_update_table_careers', 41),
(94, '2020_09_15_111419_fix_old_data_for_re_properties', 42),
(95, '2020_10_05_030817_make_column_charge_id_nullable', 43),
(96, '2020_10_18_134416_fix_audit_logs_table', 44),
(97, '2020_10_24_133432_change_column_distance_to_string', 45),
(99, '2020_10_31_053746_add_column_description_into_re_categories_table', 46),
(100, '2019_01_05_053554_create_jobs_table', 47);

-- --------------------------------------------------------

--
-- Table structure for table `newsletters`
--

CREATE TABLE `newsletters` (
  `id` int(10) UNSIGNED NOT NULL,
  `email` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'subscribed',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `notes`
--

CREATE TABLE `notes` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `reference_id` int(10) UNSIGNED NOT NULL,
  `reference_type` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `note` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `client_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `client_id` int(10) UNSIGNED NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `provider` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_personal_access_clients`
--

CREATE TABLE `oauth_personal_access_clients` (
  `id` int(10) UNSIGNED NOT NULL,
  `client_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `template` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_featured` tinyint(4) NOT NULL DEFAULT '0',
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `name`, `content`, `user_id`, `image`, `template`, `is_featured`, `description`, `status`, `created_at`, `updated_at`) VALUES
(1, 'News', '<p>.</p>', 1, NULL, 'default', 0, NULL, 'published', '2019-11-21 07:46:51', '2019-11-21 07:46:51'),
(2, 'Tin tức', '<p>.</p>', 1, NULL, 'default', 0, NULL, 'published', '2019-11-21 07:48:22', '2019-11-21 07:48:22'),
(3, 'About us', '<h4><span style=\"font-size:18px;\"><b>1. COMPANY</b><span style=\"font-family:Arial,Helvetica,sans-serif;\"><strong> PROFILE</strong></span></span></h4>\r\n\r\n<p><span style=\"font-size:16px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\">Founded on August 28, 1993 (formerly known as Truong Thinh Phat Construction Co., Ltd.), Flex Home operates in the field of real estate business, building villas for rent.<br />\r\nWith the slogan &quot;Breaking time, through space&quot; with a sustainable development strategy, taking Real Estate as a focus area, Flex Home is constantly connecting between buyers and sellers in the field. Real estate, bringing people closer together, over the distance of time and space, is a reliable place for real estate investment - an area that is constantly evolving over time.</span></span></p>\r\n\r\n<blockquote>\r\n<h2 style=\"font-style: italic; text-align: center;\"><span style=\"font-size:24px;\"><strong><span style=\"font-family:Arial,Helvetica,sans-serif;\"><span style=\"color:#16a085;\">&quot;Breaking time, through space&quot;</span></span></strong></span></h2>\r\n</blockquote>\r\n\r\n<h4 style=\"text-align: center;\"><img alt=\"\" src=\"https://flex-home.botble.com/storage/general/asset-3-at-3x.png\" style=\"width: 90%;\" /></h4>\r\n\r\n<h4><span style=\"font-size:18px;\"><b><font face=\"Arial, Helvetica, sans-serif\">2. VISION&nbsp;</font></b></span></h4>\r\n\r\n<p><span style=\"font-size:16px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\">- Acquiring domestic areas.<br />\r\n- Reaching far across continents.</span></span></p>\r\n\r\n<h4><span style=\"font-size:18px;\"><b>3. MISSION</b></span></h4>\r\n\r\n<p><span style=\"font-size:16px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\">- Creating the community<br />\r\n- Building destinations<br />\r\n- Nurture happiness</span></span></p>\r\n\r\n<p><img alt=\"\" src=\"https://flex-home.botble.com/storage/general/vietnam-office-4.jpg\" /></p>', 1, NULL, 'default', 0, 'Founded on August 28, 1993 (formerly known as Truong Thinh Phat Construction Co., Ltd.), Flex Home operates in the field of real estate business, building villas for rent.\r\nWith the slogan \"Breaking time, through space\" with a sustainable development strategy, taking Real Estate as a focus area, Flex Home is constantly connecting between buyers and sellers in the field.', 'published', '2019-11-27 01:52:36', '2019-11-27 04:45:26'),
(4, 'Về chúng tôi', '<h4><span style=\"font-size:18px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\"><strong>1. SƠ LƯỢC VỀ C&Ocirc;NG TY</strong></span></span></h4>\r\n\r\n<p><span style=\"font-size:16px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\">Được th&agrave;nh lập ng&agrave;y 28 - 08 -1993 (tiền th&acirc;n l&agrave; c&ocirc;ng ty TNHH X&acirc;y Dựng Trường Thịnh Ph&aacute;t), Flex Home hoạt động trong lĩnh vực kinh doanh bất động sản, x&acirc;y biệt thự cho thu&ecirc;.&nbsp;<br />\r\nVới khẩu hiệu &nbsp;&ldquo;Đ&aacute;nh bật thời gian, xuy&ecirc;n qua kh&ocirc;ng gian&rdquo; c&ugrave;ng chiến lược ph&aacute;t triển bền vững, lấy Bất Động Sản l&agrave;m lĩnh vực trọng t&acirc;m, Flex Home kh&ocirc;ng ngừng kết nối giữa người cần mua v&agrave; người cần b&aacute;n trong lĩnh vực bất động sản, đưa mọi người x&iacute;ch lại gần nhau hơn, vượt qua khoảng c&aacute;ch về thời gian v&agrave; kh&ocirc;ng gian, l&agrave; nơi đ&aacute;ng tin tưởng cho sự đầu tư bất động sản - một lĩnh vực kh&ocirc;ng ngừng ph&aacute;t triển qua thời gian.</span></span></p>\r\n\r\n<blockquote>\r\n<h3 style=\"text-align: center;\"><span style=\"font-size:24px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\"><em><strong><span style=\"color:#1abc9c;\">&ldquo;Đ&aacute;nh bật thời gian, xuy&ecirc;n qua kh&ocirc;ng gian&rdquo; </span></strong></em></span></span></h3>\r\n</blockquote>\r\n\r\n<h3 style=\"text-align: center;\"><img alt=\"\" src=\"https://flex-home.botble.com/storage/general/asset-4-at-3x.png\" style=\"width: 90%;\" /></h3>\r\n\r\n<h4><span style=\"font-size:18px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\"><strong>2. TẦM NH&Igrave;N</strong></span></span></h4>\r\n\r\n<ul>\r\n	<li><span style=\"font-size:16px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\">Th&acirc;u t&oacute;m địa b&agrave;n trong nước.</span></span></li>\r\n	<li><span style=\"font-size:16px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\">Vươn xa khắp c&aacute;c ch&acirc;u lục.</span></span></li>\r\n</ul>\r\n\r\n<h4><span style=\"font-size:18px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\"><strong>3. SỨ MẠNG</strong></span></span></h4>\r\n\r\n<ul>\r\n	<li><span style=\"font-size:16px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\">Kiến tạo cộng đồng</span></span></li>\r\n	<li><span style=\"font-size:16px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\">X&acirc;y dựng điểm đến</span></span></li>\r\n	<li><span style=\"font-size:16px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\">Vun đắp niềm vui</span></span></li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"\" src=\"https://flex-home.botble.com/storage/general/vietnam-office-4.jpg\" style=\"width: 100%;\" /></p>\r\n\r\n<p>&nbsp;</p>', 1, NULL, 'default', 0, 'Được thành lập ngày 28 - 08 -1993 (tiền thân là công ty TNHH Xây Dựng Trường Thịnh Phát), Flex Home hoạt động trong lĩnh vực kinh doanh bất động sản, xây biệt thự cho thuê. Với khẩu hiệu  “Đánh bật thời gian, xuyên qua không gian” cùng chiến lược phát triển bền vững, Flex Home không ngừng kết nối giữa người cần mua và người cần bán trong lĩnh vực bất động sản', 'published', '2019-11-27 01:58:46', '2019-11-27 04:48:58'),
(5, 'Terms & Conditions', '<p style=\"text-align: justify;\"><span style=\"font-size:16px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\">Access to and use of the Flex Home website is subject to the following terms, conditions, and relevant laws of Vietnam.</span></span></p>\r\n\r\n<h4 style=\"text-align: justify;\"><span style=\"font-size:18px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\"><strong>1. Copyright</strong></span></span></h4>\r\n\r\n<p style=\"text-align: justify;\"><span style=\"font-size:16px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\">Copyrights and other intellectual property rights to all text, images, audio, software and other content on this site are owned by Flex Home and its affiliates. Users are allowed to view the contents of the website, cite the contents by printing, downloading the hard disk and distributing it to others for non-commercial purposes, providing information or personal purposes. </span></span><span style=\"font-size:16px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\">Any content from this site may not be used for sale or distribution for profit, nor may it be edited or included in any other publication or website.</span></span></p>\r\n\r\n<h4 style=\"text-align: justify;\"><span style=\"font-size:18px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\"><strong>2. Content</strong></span></span></h4>\r\n\r\n<p style=\"text-align: justify;\"><span style=\"font-size:16px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\">The information on this website is compiled with great confidence but for general information research purposes only. While we endeavor to maintain updated and accurate information, we make no representations or warranties in any manner regarding completeness, accuracy, reliability, appropriateness or availability in relation to web site, or related information, product, service, or image within the website for any purpose. </span></span></p>\r\n\r\n<p style=\"text-align: justify;\"><span style=\"font-size:16px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\">Flex Home and its employees, managers, and agents are not responsible for any loss, damage or expense incurred as a result of accessing and using this website and the sites. </span></span><span style=\"font-size:16px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\">The web is connected to it, including but not limited to, loss of profits, direct or indirect losses. We are also not responsible, or jointly responsible, if the site is temporarily inaccessible due to technical issues beyond our control. Any comments, suggestions, images, ideas and other information or materials that users submit to us through this site will become our exclusive property, including the right to may arise in the future associated with us.</span></span></p>\r\n\r\n<p style=\"text-align: center;\"><span style=\"font-size:16px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\"><img alt=\"\" src=\"https://flex-home.botble.com/storage/general/copyright.jpg\" style=\"width: 90%;\" /></span></span></p>\r\n\r\n<h4 style=\"text-align: justify;\"><span style=\"font-size:18px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\"><strong>3. Note on&nbsp;connected sites</strong></span></span></h4>\r\n\r\n<p style=\"text-align: justify;\"><span style=\"font-size:16px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\">At many points in the website, users can get links to other websites related to a specific aspect. This does not mean that we are related to the websites or companies that own these websites. Although we intend to connect users to sites of interest, we are not responsible or jointly responsible for our employees, managers, or representatives. with other websites and information contained therein.</span></span></p>', 1, NULL, 'default', 0, 'Copyrights and other intellectual property rights to all text, images, audio, software and other content on this site are owned by Flex Home and its affiliates. Users are allowed to view the contents of the website, cite the contents by printing, downloading the hard disk and distributing it to others for non-commercial purposes.', 'published', '2019-11-27 02:32:44', '2019-11-27 05:08:22'),
(6, 'Điều khoản và quy định', '<p style=\"text-align: justify;\"><span style=\"font-size:16px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\">Việc truy cập v&agrave; sử dụng trang web của Flex Home phụ thuộc v&agrave;o những điều khoản, điều kiện dưới đ&acirc;y, v&agrave; luật ph&aacute;p li&ecirc;n quan của Việt Nam.</span></span></p>\r\n\r\n<h4 style=\"text-align: justify;\"><span style=\"font-size:18px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\"><strong>1. Quyền t&aacute;c giả&nbsp;</strong></span></span></h4>\r\n\r\n<p style=\"text-align: justify;\"><span style=\"font-size:16px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\">Quyền t&aacute;c giả v&agrave; c&aacute;c quyền sở hữu tr&iacute; tuệ kh&aacute;c đối với mọi văn bản, h&igrave;nh ảnh, &acirc;m thanh, phần mềm v&agrave; c&aacute;c nội dung kh&aacute;c tr&ecirc;n trang web n&agrave;y thuộc quyền sở hữu của Flex Home c&ugrave;ng c&aacute;c c&ocirc;ng ty th&agrave;nh vi&ecirc;n. Người truy cập được ph&eacute;p xem c&aacute;c nội dung trong trang web, tr&iacute;ch dẫn nội dung bằng c&aacute;ch in ấn, tải về đĩa cứng v&agrave; ph&acirc;n ph&aacute;t cho người kh&aacute;c chỉ với mục đ&iacute;ch phi thương mại, cung cấp th&ocirc;ng tin hoặc mục đ&iacute;ch c&aacute; nh&acirc;n. Bất kể nội dung n&agrave;o từ trang web n&agrave;y đều kh&ocirc;ng được sử dụng để b&aacute;n hoặc ph&acirc;n t&aacute;n để kiếm lợi v&agrave; cũng kh&ocirc;ng được chỉnh sửa hoặc đưa v&agrave;o bất kỳ ấn phẩm hoặc trang web n&agrave;o kh&aacute;c.</span></span></p>\r\n\r\n<h4 style=\"text-align: justify;\"><span style=\"font-size:18px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\"><strong>2. Nội dung</strong></span></span></h4>\r\n\r\n<p style=\"text-align: justify;\"><span style=\"font-size:16px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\">Th&ocirc;ng tin tr&ecirc;n trang web n&agrave;y được bi&ecirc;n soạn với sự tin tưởng cao độ nhưng chỉ d&agrave;nh cho c&aacute;c mục đ&iacute;ch nghi&ecirc;n cứu th&ocirc;ng tin tổng qu&aacute;t. Tuy ch&uacute;ng t&ocirc;i nỗ lực duy tr&igrave; th&ocirc;ng tin cập nhật v&agrave; chuẩn x&aacute;c, nhưng ch&uacute;ng t&ocirc;i kh&ocirc;ng khẳng định hay bảo đảm theo bất kỳ c&aacute;ch thức n&agrave;o về sự đầy đủ, ch&iacute;nh x&aacute;c, đ&aacute;ng tin cậy, th&iacute;ch hợp hoặc c&oacute; sẵn li&ecirc;n quan đến trang web, hoặc th&ocirc;ng tin, sản phẩm, dịch vụ, hoặc h&igrave;nh ảnh li&ecirc;n quan trong trang web v&igrave; bất cứ mục đ&iacute;ch g&igrave;. </span></span></p>\r\n\r\n<p style=\"text-align: justify;\"><span style=\"font-size:16px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\">Flex Home v&agrave; mọi nh&acirc;n vi&ecirc;n, nh&agrave; quản l&yacute;, v&agrave; c&aacute;c b&ecirc;n đại diện ho&agrave;n to&agrave;n kh&ocirc;ng chịu tr&aacute;ch nhiệm g&igrave; đối với bất kỳ tổn thất, thiệt hại hoặc chi ph&iacute; ph&aacute;t sinh do việc truy cập v&agrave; sử dụng trang web n&agrave;y v&agrave; c&aacute;c trang web được kết nối với n&oacute;, bao gồm nhưng kh&ocirc;ng giới hạn, việc mất đi lợi nhuận, c&aacute;c khoản lỗ trực tiếp hoặc gi&aacute;n tiếp. Ch&uacute;ng t&ocirc;i cũng kh&ocirc;ng chịu tr&aacute;ch nhiệm, hoặc li&ecirc;n đới tr&aacute;ch nhiệm nếu trang web tạm thời kh&ocirc;ng thể truy cập do c&aacute;c vấn đề kỹ thuật nằm ngo&agrave;i tầm kiểm so&aacute;t của ch&uacute;ng t&ocirc;i. Mọi b&igrave;nh luận, gợi &yacute;, h&igrave;nh ảnh, &yacute; tưởng v&agrave; những th&ocirc;ng tin hay t&agrave;i liệu kh&aacute;c m&agrave; người sử dụng chuyển cho ch&uacute;ng t&ocirc;i th&ocirc;ng qua trang web n&agrave;y sẽ trở th&agrave;nh t&agrave;i sản độc quyền của ch&uacute;ng t&ocirc;i, bao gồm cả c&aacute;c quyền c&oacute; thể ph&aacute;t sinh trong tương lai gắn liền với ch&uacute;ng t&ocirc;i.</span></span></p>\r\n\r\n<p style=\"text-align: center;\"><img alt=\"\" src=\"https://flex-home.botble.com/storage/general/copyright.jpg\" style=\"width: 90%;\" /></p>\r\n\r\n<h4 style=\"text-align: justify;\"><span style=\"font-size:18px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\"><strong>3. Lưu &yacute; c&aacute;c trang web được kết nối</strong></span></span></h4>\r\n\r\n<p style=\"text-align: justify;\"><span style=\"font-size:16px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\">Tại nhiều điểm trong trang web, người sử dụng c&oacute; thể nhận được c&aacute;c kết nối đến c&aacute;c trang web kh&aacute;c li&ecirc;n quan đến một kh&iacute;a cạnh cụ thể. Điều n&agrave;y kh&ocirc;ng c&oacute; nghĩa l&agrave; ch&uacute;ng t&ocirc;i c&oacute; li&ecirc;n quan đến những trang web hay c&ocirc;ng ty sở hữu những trang web n&agrave;y. D&ugrave; ch&uacute;ng t&ocirc;i c&oacute; &yacute; định kết nối người sử dụng đến c&aacute;c trang web cần quan t&acirc;m, nhưng ch&uacute;ng t&ocirc;i v&agrave; c&aacute;c nh&acirc;n vi&ecirc;n, nh&agrave; quản l&yacute;, hoặc c&aacute;c b&ecirc;n đại diện ho&agrave;n to&agrave;n kh&ocirc;ng chịu tr&aacute;ch nhiệm hoặc li&ecirc;n đới chịu tr&aacute;ch nhiệm g&igrave; đối với c&aacute;c trang web kh&aacute;c v&agrave; th&ocirc;ng tin chứa đựng trong đ&oacute;.</span></span></p>', 1, NULL, 'default', 0, 'Quyền tác giả và các quyền sở hữu trí tuệ khác đối với mọi văn bản, hình ảnh, âm thanh, phần mềm và các nội dung khác trên trang web này thuộc quyền sở hữu của Flex Home cùng các công ty thành viên. Người truy cập được phép xem các nội dung trong trang web, trích dẫn nội dung bằng cách in ấn, tải về đĩa cứng và phân phát cho người khác chỉ với mục đích phi thương mại.', 'published', '2019-11-27 02:34:55', '2019-11-27 05:08:40'),
(7, 'Homepage', '<p>[featured-projects][/featured-projects]</p>\r\n\r\n<p>[properties-by-locations][/properties-by-locations]</p>\r\n\r\n<p>[properties-for-sale][/properties-for-sale]</p>\r\n\r\n<p>[properties-for-rent][/properties-for-rent]</p>\r\n\r\n<p>[latest-news][/latest-news]</p>', 1, NULL, 'homepage', 0, NULL, 'published', '2020-02-06 21:53:48', '2020-02-23 17:34:35');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `id` int(10) UNSIGNED NOT NULL,
  `amount` decimal(15,2) UNSIGNED NOT NULL,
  `currency` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `charge_id` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_channel` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_id` int(10) UNSIGNED DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT 'pending',
  `payment_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'confirm',
  `customer_id` int(10) UNSIGNED DEFAULT NULL,
  `refunded_amount` decimal(15,2) UNSIGNED DEFAULT NULL,
  `refund_note` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `author_id` int(11) NOT NULL,
  `author_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Botble\\ACL\\Models\\User',
  `is_featured` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `views` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `format_type` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `name`, `description`, `content`, `status`, `author_id`, `author_type`, `is_featured`, `image`, `views`, `format_type`, `created_at`, `updated_at`) VALUES
(1, 'BCG sets great store by real estate negotiations', 'BCG leaders shared with investors at a meeting this month that real estate and renewable energy will be the two main activities of the group. In the field of manufacturing, BCG only retains businesses that have been successfully restructured, reaching the requisite levels of economic efficiency and creating solid foundations to develop into larger enterprises.', '<h2 style=\"font-style:italic;\">The profit of Bamboo Capital Group (BCG) is expected to grow tremendously during 2019-2023 thanks to a series of real estate as well as renewable energy projects, especially Radisson Blu Hoi An and King Crown Village Thao Dien.</h2>\r\n\r\n<p>BCG leaders shared with investors at a meeting this month that real estate and renewable energy will be the two main activities of the group. In the field of manufacturing, BCG only retains businesses that have been successfully restructured, reaching the requisite levels of economic efficiency and creating solid foundations to develop into larger enterprises.</p>\r\n\r\n<p>BCG expects to reach the after-tax profit of VND312 billion ($13.56 million) this year, VND681.5 ($29.6 million) in 2020, and VND826.5 billion ($35.93 million) in 2023. In real estate, BCG has implemented the Radisson Blu Hoi An project with the scale of 734 apartments and coastal villas, King Crown Village Thao Dien in District 2, Ho Chi Minh City with 17 villas in the first phase and serviced apartments and a hotel, as well as offices for lease in the second phase.</p>\r\n\r\n<p>BCG leaders shared that in 2019-2020, Radisson Blu Hoi An and King Crown Village Thao Dien will bring VND900 billion ($39.13 million) in profit to BCG, and the group is negotiating to transfer part of the group&rsquo;s capital in the two projects. BCG owns a hundred per cent in Radisson Blu Hoi An, and 48.5 per cent in King Crown Village Thao Dien.</p>\r\n\r\n<p>&quot;If we close the deals with our partners soon, BCG will fulfil the profit plan for 2019. Currently, the deal is still in progress, but we are confident in implementing our 2019 profit plan. If the deal is delayed for any reason, the profit will be transferred by the beginning of 2020,&quot; Pham Minh Tuan, deputy CEO of BCG, shared.</p>\r\n\r\n<p>The upcoming real estate projects of BCG include Condotel Pegas Nha Trang (2.74 hectares, implemented in 2020-2021), Bao Loc urban area (​​17ha, in 2019-2023), Loc Phat residential area (Bao Loc, Lam Dong &ndash; 46.9ha, implemented from 2019 to 2022), Hoa Ninh residential area (Di Linh, Lam Dong &ndash;49.3ha, implemented in 2020-2023), Hiep Binh Chanh urban area (​​6.3ha, implemented in 2020-2022).</p>\r\n\r\n<p>Regarding the capital to meet BCG&#39;s investment needs, according to Nguyen Ho Nam, chairman of BCG, most of BCG&#39;s projects are co-operating with international corporations on issues like technical and technological issues, branding, or capital co-operation.</p>\r\n\r\n<p>BCG has signed a contract with KPMG Singapore to become the exclusive consultant for BCG to seek international funding and domestic banks to increase credit room for BCG to implement a new project. Along with that, BCG received capital contributions from South Korean investors including Hanwha Energy involved in solar power plant projects and real estate firm Woomi.</p>\r\n\r\n<p>BCG is also working with a strategic partner from Europe. In the field of renewable energy, BCG finished two solar energy projects in Long An with the total capacity of over 140MW. Of these, the BCG-CME Long An 1 solar power plant, which in BCG holds 37.5 per cent, has the capacity of 40.5MW and is expected to bring revenue of VND140-150 billion ($6.1-6.5 million) per year from 2020.</p>\r\n\r\n<p>BCG-CME Long An 2 (GAIA) has the capacity of 100.5MW and is expected to launch operations in this November, bringing revenue of about VND320 billion per year from 2020. BCG has a 32.5 per cent stake in GAIA.</p>\r\n\r\n<p>BCG-CME Long An 1 solar power plant sells electricity to Electricity of Vietnam at the price of 9.35 US cent per kW for 20 years, while GAIA hopes to sell electricity at 8.72 US cent per kW. In addition to the two projects above, BCG is trying to complete procedures for other solar power plants in Long An (100MW), Dak Lak (50MW), Gia Lai (300MW), Tay Ninh (165MW), a surface solar power plant in Quang Nam (200MW), a wind power plant in Soc Trang (50MW).</p>\r\n\r\n<p>At the two solar power plants in Long An, BCG worked with Vietnam-Oman Investment (VOI) and took up VND2 trillion in loans from local banks ($86.96 million &ndash; 65 per cent of the total investment capital of the two projects).</p>', 'published', 1, 'Botble\\ACL\\Models\\User', 1, 'properties/1-2.jpg', 2, NULL, '2019-11-18 02:51:35', '2019-11-20 08:48:14'),
(2, 'Private Home Sales Drop 27% In October', 'New private home sales in Singapore fell 27% in October from September, reported Channel News Asia, based on the data released by the Urban Redevelopment Authority (URA).\r\nAccording to URA data, developers only sold 928 units in October (955 units including executive condominiums), compared to 1,270 units from the previous month', '<p>New private home sales in Singapore fell 27% in October from September, reported Channel News Asia, based on the data released by the&nbsp;Urban Redevelopment Authority (URA).</p>\r\n\r\n<p><strong>According to URA data,&nbsp;developers only sold 928 units in October (955 units including executive condominiums), compared to 1,270 units from the previous month.</strong></p>\r\n\r\n<p>However, on a year-to-year comparison, the figures show an 84.9% increase.</p>\r\n\r\n<p>The new homes sold in October in the Core Central Region (CCR) tripled to 182 units from September, the biggest recorded since March 2016, with Singaporeans buying 133 of those units.</p>\r\n\r\n<p>Analysts said the good performance was mainly due to new project launches in the area, including&nbsp;<strong>Midtown<a href=\"https://www.propertyguru.com.sg/property-for-sale/at-midtown-bay-23760\"> </a>Bay Residences</strong>,&nbsp;<strong>Neu at Novena</strong>&nbsp;and&nbsp;<strong>Royalgreen</strong>. The other new launch this month was Midwood, within the Outside of Central Region (OCR)</p>\r\n\r\n<p>The deficiency in major launches in the city fringe and mass-market segments like the OCR could have been a factor in the sales drop, said OrangeTee and Tie head of research and consultancy Christine Sun.</p>\r\n\r\n<p>&ldquo;Sales volumes tend to be lower when more luxury projects are being launched in a particular month, owing to the higher price tags and lower affordability,&rdquo; she said.</p>\r\n\r\n<p>URA Realis data show that this year saw 104 non-landed new homes sales reach S$5 million and above, which is the highest mark since 155 were purchased from January to October 2011, added Sun.</p>\r\n\r\n<p>High-profile transactions, such as James Dyson&rsquo;s purchase of Singapore&rsquo;s most expensive apartment, contributed to &ldquo;significant positive sentiments for developer sales,&rdquo; said property analyst Ong Kah Seng.</p>\r\n\r\n<p>&ldquo;Despite the global trade and geopolitical uncertainties, we believe demand for Singapore private homes is still relatively stable given the tight labour market, favourable interest rate environment, and relatively healthy household balance sheet,&rdquo; said Tricia Song, Colliers International head of research for Singapore.</p>\r\n\r\n<p>Ong believes the country&rsquo;s properties will become more attractive for foreign buyers wanting stable investments.</p>\r\n\r\n<p>&ldquo;There&rsquo;s increasing international attractiveness of Singapore residential properties as offering longer term stability to all profiles of buyers, including from foreigners who are eschewing investments in Hong Kong due to that city&rsquo;s heightening social turbulence,&rdquo; he noted.</p>', 'published', 1, 'Botble\\ACL\\Models\\User', 1, 'properties/2-2.jpg', 2, NULL, '2019-11-18 02:55:53', '2019-11-22 01:15:41'),
(3, 'Singapore Overtakes Hong Kong In Terms Of Property Investment Prospects', 'Singapore now claims the top spot for real estate investment prospects in terms of price increases in 2020. Hong Kong, rocked by months of violent political protests, has fallen from 14th place to the bottom of the pile in 2019.', '<p>The fortunes of Singapore and Hong Kong &ndash; two of Asia&rsquo;s hottest property markets &ndash; are going in different directions, reported Bloomberg citing a Urban Land Institute and PricewaterhouseCoopers LLP report.</p>\r\n\r\n<p><strong>Singapore now claims the top spot for real estate investment prospects&nbsp;in terms of price increases in 2020. Hong Kong, rocked by months of violent political protests, has fallen from 14th place to the bottom of the pile in 2019.</strong></p>\r\n\r\n<p>Hong Kong&rsquo;s drop to the least-favoured destination for real estate investment next year is due to its retail and tourism sectors taking a beating, affecting economic growth.</p>\r\n\r\n<p>The city-state has benefited from a surge in interest among investors who are steering clear of Hong Kong and China, which are viewed as &ldquo;geopolitical flashpoints&rdquo;.</p>\r\n\r\n<p>For the past few quarters, apartment prices in Singapore have rebounded, showing resilience in the residential market, with the office sector mostly absorbing the oversupply.</p>\r\n\r\n<p>Hong Kong&rsquo;s problems bode well for Singapore, at least for a little while, according to Urban Land Institute CEO Ed Walter.</p>\r\n\r\n<p>&ldquo;A lot of theory in investing is less about what was, versus what is or what is going to be,&rdquo; he added.</p>\r\n\r\n<p><strong>Singapore also saw a rise in property transactions in the first half, with majority of the activities driven by cross-border capital. Deals amounted to $4.9 billion (S$6.6 billion) in the period, a 73% year-on-year growth.</strong></p>\r\n\r\n<p>Walter described Hong Kong as having a &ldquo;very resilient market&rdquo;, backed by its high property prices. He believes that after the protests, sectors such as retail can recover quickly.</p>\r\n\r\n<p>&ldquo;The bigger issue is what happens from a political perspective and what does that signal about Hong Kong&rsquo;s place as a financial centre,&rdquo; he said.</p>\r\n\r\n<p><strong>Singapore placed second-to-last among 22 centres as recently as 2017, overtaken by cities such as Sydney, Tokyo and Bangalore as vacancies rose and rents dropped. In 2017, Hong Kong placed 18th.</strong></p>\r\n\r\n<p><img alt=\"\" src=\"https://flex-home.botble.com/storage/properties/3-2.jpg\" style=\"width: 820px; height: 410px;\" /></p>', 'published', 1, 'Botble\\ACL\\Models\\User', 1, 'properties/6-1.jpg', 2, NULL, '2019-11-18 02:59:01', '2020-11-16 08:56:02'),
(4, 'S. Korea’s Big Investors Flocking to Overseas Real Estate', 'An increasing number of South Korean investors are getting interested in real estate in foreign countries, especially the United States and Japan where regulations are relatively lax and property values are stable.', '<h2>KEB Hana Bank held a seminar on the global real estate investment strategy at its head office in Seoul on May 23 and nearly 100 customers attended it.</h2>\r\n\r\n<p>Hana Bank&rsquo;s private banker (PB) business division held the seminar for affluent customers to explain the procedure for taking out loans and remitting money to make an investment in real estate in major cities around the world, including New York, Los Angeles in the United States and Tokyo in Japan.</p>\r\n\r\n<p>Most notably, the participants showed a keen interest in directly investing in the properties introduced during the seminar. Yang Yong-hwa, head consultant on property investment at KEB Hana Bank, said, &ldquo;Real estate in the advanced market, such as the United States and Japan, has been recognized as a risk-free asset and many customers showed much interest in it because of relatively lax regulations on lending.&rdquo;</p>\r\n\r\n<h3 style=\"text-align: center;\"><img alt=\"S. Korea’s Big Investors Flocking to Overseas Real Estate\" longdesc=\"S. Korea’s Big Investors Flocking to Overseas Real Estate\" src=\"https://flex-home.botble.com/storage/properties/32223-43914-378.png\" style=\"width: 573px; height: 533px;\" /></h3>\r\n\r\n<p style=\"text-align: center;\"><em>S. Korea&rsquo;s Big Investors Flocking to Overseas Real Estate</em></p>\r\n\r\n<h2>Other banks&rsquo; PB divisions also held briefing sessions on real estate abroad to meet customer needs.</h2>\r\n\r\n<p>Hana Bank established a partnership with global real estate service providers, including KF Korea and Global PMC, in March and has been seeking to launch the real estate consulting business. KB Kookmin Bank also introduced the global KB real estate consulting service in 2014, while Woori Bank is holding consultation sessions on investment in foreign properties by making use of its global network which is the largest among domestic banks. Shinhan Bank established a partnership with global real estate service firm, KF Korea, in April and will hold the first seminar on overseas real estate on May 27.</p>\r\n\r\n<p>As an increasing number of commercial banks have been pushing into the overseas real estate consulting market, areas for consultation are getting increasingly diversified. Tokyo has the highest demand as it is relatively easy to access and the price of real estate there is on the rise before the 2020 Summer Olympics. However, emerging countries that have a high growth potential, such as Vietnam, recently see more investment coming in.</p>', 'published', 1, 'Botble\\ACL\\Models\\User', 1, 'properties/download.jpeg', 1, NULL, '2019-11-18 03:07:27', '2019-11-19 00:07:05'),
(5, 'BCG thiết lập các cuộc đàm phán bất động sản', 'Các nhà lãnh đạo BCG đã chia sẻ với các nhà đầu tư tại một cuộc họp trong tháng này rằng bất động sản và năng lượng tái tạo sẽ là hai hoạt động chính của nhóm. Trong lĩnh vực sản xuất, BCG chỉ giữ lại các doanh nghiệp đã được cơ cấu lại thành công, đạt mức hiệu quả kinh tế cần thiết và tạo nền tảng vững chắc để phát triển thành các doanh nghiệp lớn hơn.', '<h4><em>Lợi nhuận của Tập đo&agrave;n Bamboo Capital (BCG) dự kiến sẽ tăng trưởng rất lớn trong giai đoạn 2019-2023 nhờ một loạt c&aacute;c dự &aacute;n bất động sản cũng như năng lượng t&aacute;i tạo, đặc biệt l&agrave; Radisson Blu Hội An v&agrave; King Crown Village Thảo Điền.</em></h4>\r\n\r\n<p>C&aacute;c nh&agrave; l&atilde;nh đạo BCG đ&atilde; chia sẻ với c&aacute;c nh&agrave; đầu tư tại một cuộc họp trong th&aacute;ng n&agrave;y rằng bất động sản v&agrave; năng lượng t&aacute;i tạo sẽ l&agrave; hai hoạt động ch&iacute;nh của nh&oacute;m. Trong lĩnh vực sản xuất, BCG chỉ giữ lại c&aacute;c doanh nghiệp đ&atilde; được cơ cấu lại th&agrave;nh c&ocirc;ng, đạt mức hiệu quả kinh tế cần thiết v&agrave; tạo nền tảng vững chắc để ph&aacute;t triển th&agrave;nh c&aacute;c doanh nghiệp lớn hơn.</p>\r\n\r\n<p>BCG dự kiến ​​sẽ đạt mức lợi nhuận sau thuế l&agrave; 312 tỷ đồng (13,56 triệu đ&ocirc; la) trong năm nay, 681,5 đồng (29,6 triệu đ&ocirc; la) v&agrave;o năm 2020 v&agrave; 826,5 tỷ đồng (35,93 triệu đ&ocirc; la) v&agrave;o năm 2023. Trong bất động sản, BCG đ&atilde; triển khai Radisson Dự &aacute;n Blu Hội An với quy m&ocirc; 734 căn hộ v&agrave; biệt thự ven biển, King Crown Village Thảo Điền tại Quận 2, Th&agrave;nh phố Hồ Ch&iacute; Minh với 17 biệt thự trong giai đoạn đầu v&agrave; căn hộ dịch vụ v&agrave; một kh&aacute;ch sạn, cũng như văn ph&ograve;ng cho thu&ecirc; trong lần thứ hai giai đoạn.</p>\r\n\r\n<p>L&atilde;nh đạo BCG chia sẻ rằng trong giai đoạn 2019-2020, Radisson Blu Hội An v&agrave; King Crown Village Thao Điền sẽ mang lại 900 tỷ đồng (39,13 triệu USD) cho BCG, v&agrave; tập đo&agrave;n n&agrave;y đang đ&agrave;m ph&aacute;n để chuyển một phần vốn của nh&oacute;m trong hai dự &aacute;n. BCG sở hữu một trăm phần trăm tại Radisson Blu Hội An v&agrave; 48,5 phần trăm tại King Crown Village Thảo Điền.</p>\r\n\r\n<p>&quot;Nếu ch&uacute;ng t&ocirc;i sớm ho&agrave;n tất c&aacute;c thỏa thuận với c&aacute;c đối t&aacute;c, BCG sẽ ho&agrave;n th&agrave;nh kế hoạch lợi nhuận cho năm 2019. Hiện tại, thỏa thuận vẫn đang được tiến h&agrave;nh, nhưng ch&uacute;ng t&ocirc;i tự tin thực hiện kế hoạch lợi nhuận năm 2019 của m&igrave;nh. lợi nhuận sẽ được chuyển v&agrave;o đầu năm 2020, &quot;Phạm Minh Tuấn, ph&oacute; gi&aacute;m đốc điều h&agrave;nh của BCG, chia sẻ.</p>\r\n\r\n<p>C&aacute;c dự &aacute;n bất động sản sắp tới của BCG bao gồm Condotel Pegas Nha Trang (2,74 ha, thực hiện trong giai đoạn 2020-2021), khu đ&ocirc; thị Bảo Lộc (17ha, năm 2019-2023), khu d&acirc;n cư Lộc Ph&aacute;t (Bảo Lộc, L&acirc;m Đồng - 46.9 ha, thực hiện từ 2019 đến 2022), khu d&acirc;n cư H&ograve;a Ninh (Di Linh, L&acirc;m Đồng, 49.3ha, thực hiện giai đoạn 2020-2023), khu đ&ocirc; thị Hiệp B&igrave;nh (6.3ha, thực hiện giai đoạn 2020-2022).</p>\r\n\r\n<p>Về vốn để đ&aacute;p ứng nhu cầu đầu tư của BCG, theo &ocirc;ng Nguyễn Hồ Nam, Chủ tịch BCG, hầu hết c&aacute;c dự &aacute;n của BCG đều hợp t&aacute;c với c&aacute;c tập đo&agrave;n quốc tế về c&aacute;c vấn đề như vấn đề kỹ thuật v&agrave; c&ocirc;ng nghệ, x&acirc;y dựng thương hiệu hoặc hợp t&aacute;c vốn.</p>\r\n\r\n<p>BCG đ&atilde; k&yacute; hợp đồng với KPMG Singapore để trở th&agrave;nh nh&agrave; tư vấn độc quyền cho BCG t&igrave;m kiếm nguồn t&agrave;i trợ quốc tế v&agrave; ng&acirc;n h&agrave;ng trong nước để tăng ph&ograve;ng t&iacute;n dụng cho BCG để thực hiện dự &aacute;n mới. C&ugrave;ng với đ&oacute;, BCG đ&atilde; nhận được vốn g&oacute;p từ c&aacute;c nh&agrave; đầu tư H&agrave;n Quốc bao gồm Hanwha Energy tham gia v&agrave;o c&aacute;c dự &aacute;n nh&agrave; m&aacute;y điện mặt trời v&agrave; c&ocirc;ng ty bất động sản Woomi.</p>\r\n\r\n<p>BCG cũng đang l&agrave;m việc với một đối t&aacute;c chiến lược từ ch&acirc;u &Acirc;u. Trong lĩnh vực năng lượng t&aacute;i tạo, BCG đ&atilde; ho&agrave;n th&agrave;nh hai dự &aacute;n năng lượng mặt trời ở Long An với tổng c&ocirc;ng suất hơn 140MW. Trong số n&agrave;y, nh&agrave; m&aacute;y điện mặt trời BCG-CME Long An 1, tại BCG nắm giữ 37,5%, c&oacute; c&ocirc;ng suất 40,5MW v&agrave; dự kiến ​​sẽ mang lại doanh thu 140-150 tỷ đồng (6,1-6,5 triệu USD) mỗi năm từ năm 2020.</p>\r\n\r\n<p>BCG-CME Long An 2 (GAIA) c&oacute; c&ocirc;ng suất 100,5MW v&agrave; dự kiến ​​sẽ ra mắt hoạt động v&agrave;o th&aacute;ng 11 n&agrave;y, mang lại doanh thu khoảng 320 tỷ đồng mỗi năm từ năm 2020. BCG c&oacute; 32,5% cổ phần của GAIA.</p>\r\n\r\n<p>Nh&agrave; m&aacute;y điện mặt trời BCG-CME Long An 1 b&aacute;n điện cho Điện lực Việt Nam với mức gi&aacute; 9,35 cent Mỹ mỗi kW trong 20 năm, trong khi GAIA hy vọng sẽ b&aacute;n điện ở mức 8,72 cent mỗi kW. Ngo&agrave;i hai dự &aacute;n tr&ecirc;n, BCG đang cố gắng ho&agrave;n tất c&aacute;c thủ tục cho c&aacute;c nh&agrave; m&aacute;y điện mặt trời kh&aacute;c ở Long An (100MW), Đăk Lăk (50MW), Gia Lai (300MW), T&acirc;y Ninh (165MW), một nh&agrave; m&aacute;y điện mặt trời ở Quảng Nam (200MW), một nh&agrave; m&aacute;y điện gi&oacute; ở S&oacute;c Trăng (50MW).</p>\r\n\r\n<p>Tại hai nh&agrave; m&aacute;y điện mặt trời ở Long An, BCG đ&atilde; l&agrave;m việc với Việt Nam - Đầu tư &Ocirc;-man (VOI) v&agrave; nhận khoản vay ngh&igrave;n tỷ đồng từ c&aacute;c ng&acirc;n h&agrave;ng địa phương (86,96 triệu đ&ocirc; la - 65% tổng vốn đầu tư của hai dự &aacute;n).</p>', 'published', 1, 'Botble\\ACL\\Models\\User', 1, 'properties/1-2.jpg', 0, NULL, '2019-11-22 01:26:31', '2019-11-22 01:26:31'),
(6, 'Doanh số bán nhà riêng giảm 27% trong tháng 10', 'Doanh số bán nhà tư nhân mới ở Singapore đã giảm 27% trong tháng 10 kể từ tháng 9, theo Channel News Asia, dựa trên dữ liệu do Cơ quan Tái phát triển đô thị (URA) công bố.\r\nTheo dữ liệu của URA, các nhà phát triển chỉ bán được 928 căn trong tháng 10 (955 căn bao gồm nhà chung cư cao cấp), so với 1.270 căn từ tháng trước', '<p>Doanh số b&aacute;n nh&agrave; tư nh&acirc;n mới ở Singapore đ&atilde; giảm 27% trong th&aacute;ng 10 kể từ th&aacute;ng 9, theo Channel News Asia, dựa tr&ecirc;n dữ liệu do Cơ quan T&aacute;i ph&aacute;t triển đ&ocirc; thị (URA) c&ocirc;ng bố.</p>\r\n\r\n<p>Theo dữ liệu của URA, c&aacute;c nh&agrave; ph&aacute;t triển chỉ b&aacute;n được 928 căn trong th&aacute;ng 10 (955 căn bao gồm nh&agrave; chung cư cao cấp), so với 1.270 căn từ th&aacute;ng trước.</p>\r\n\r\n<p>Tuy nhi&ecirc;n, so s&aacute;nh giữa c&aacute;c năm, c&aacute;c số liệu cho thấy mức tăng 84,9%.</p>\r\n\r\n<p>Những ng&ocirc;i nh&agrave; mới được b&aacute;n v&agrave;o th&aacute;ng 10 ở V&ugrave;ng Trung t&acirc;m (CCR) đ&atilde; tăng gấp ba lần so với 182 căn hộ kể từ th&aacute;ng 9, mức lớn nhất được ghi nhận từ th&aacute;ng 3 năm 2016, với việc người Singapore mua 133 căn hộ đ&oacute;.</p>\r\n\r\n<p>C&aacute;c nh&agrave; ph&acirc;n t&iacute;ch cho biết hiệu suất tốt chủ yếu l&agrave; do c&aacute;c dự &aacute;n mới ra mắt trong khu vực, bao gồm Midtown Bay Residences, Neu tại Novena v&agrave; Royalgreen. Sự ra mắt mới kh&aacute;c trong th&aacute;ng n&agrave;y l&agrave; Midwood, b&ecirc;n ngo&agrave;i Khu vực miền Trung (OCR)</p>\r\n\r\n<p>Sự thiếu hụt trong c&aacute;c lần ra mắt lớn ở r&igrave;a th&agrave;nh phố v&agrave; c&aacute;c ph&acirc;n kh&uacute;c thị trường đại ch&uacute;ng như OCR c&oacute; thể l&agrave; một yếu tố l&agrave;m giảm doanh số, OrangeTee v&agrave; trưởng ph&ograve;ng nghi&ecirc;n cứu v&agrave; tư vấn của Christine Sun cho biết.</p>\r\n\r\n<p>Khối lượng b&aacute;n h&agrave;ng của xu hướng c&oacute; xu hướng thấp hơn khi nhiều dự &aacute;n xa xỉ hơn được tung ra trong một th&aacute;ng cụ thể, nhờ c&aacute;c thẻ gi&aacute; cao hơn v&agrave; khả năng chi trả thấp hơn, c&ocirc; n&oacute;i.</p>\r\n\r\n<p>Dữ liệu của URA Realis cho thấy năm nay chứng kiến ​​104 doanh số b&aacute;n nh&agrave; mới kh&ocirc;ng c&oacute; đất đạt 5 triệu đ&ocirc; la Singapore trở l&ecirc;n, đ&acirc;y l&agrave; mức cao nhất kể từ 155 được mua từ th&aacute;ng 1 đến th&aacute;ng 10 năm 2011, Sun cho biết th&ecirc;m.</p>\r\n\r\n<p>Nh&agrave; ph&acirc;n t&iacute;ch t&agrave;i sản Ong Kah Seng cho biết, c&aacute;c giao dịch cao cấp, chẳng hạn như James Dyson, mua căn hộ đắt nhất Singapore, đ&atilde; đ&oacute;ng g&oacute;p cho t&igrave;nh cảm t&iacute;ch cực quan trọng đối với doanh số của nh&agrave; ph&aacute;t triển.</p>\r\n\r\n<p>Tricia Song, người đứng đầu bộ phận nghi&ecirc;n cứu quốc tế của Singapore cho biết, bất chấp thương mại to&agrave;n cầu v&agrave; bất ổn địa ch&iacute;nh trị, ch&uacute;ng t&ocirc;i tin rằng nhu cầu về nh&agrave; ở tư nh&acirc;n Singapore vẫn tương đối ổn định do thị trường lao động chặt chẽ, m&ocirc;i trường l&atilde;i suất thuận lợi v&agrave; bảng c&acirc;n đối hộ gia đ&igrave;nh tương đối l&agrave;nh mạnh. .</p>\r\n\r\n<p>Ong tin rằng c&aacute;c t&agrave;i sản của đất nước sẽ trở n&ecirc;n hấp dẫn hơn đối với người mua nước ngo&agrave;i muốn đầu tư ổn định.</p>\r\n\r\n<p>Ở đ&oacute;, sự gia tăng sức hấp dẫn quốc tế của c&aacute;c t&agrave;i sản d&acirc;n cư Singapore v&igrave; mang lại sự ổn định l&acirc;u d&agrave;i hơn cho tất cả c&aacute;c hồ sơ của người mua, kể cả từ những người nước ngo&agrave;i đang đầu tư v&agrave;o Hồng K&ocirc;ng do sự hỗn loạn x&atilde; hội của th&agrave;nh phố đ&oacute;, &ocirc;ng lưu &yacute;.</p>', 'published', 1, 'Botble\\ACL\\Models\\User', 1, 'properties/2-2.jpg', 0, NULL, '2019-11-22 01:29:45', '2019-11-22 01:29:45'),
(7, 'Singapore vượt qua Hồng Kông về triển vọng đầu tư bất động sản', 'Singapore hiện tuyên bố vị trí hàng đầu về triển vọng đầu tư bất động sản về mặt tăng giá trong năm 2020. Hồng Kông, bị rung chuyển bởi nhiều tháng biểu tình chính trị bạo lực, đã giảm từ vị trí thứ 14 xuống đáy của năm 2019.', '<p>Vận may của Singapore v&agrave; Hồng K&ocirc;ng - hai trong số những thị trường bất động sản n&oacute;ng nhất ch&acirc;u &Aacute; - đang đi theo những hướng kh&aacute;c nhau, Bloomberg tr&iacute;ch dẫn một b&aacute;o c&aacute;o của Viện đất đ&ocirc; thị v&agrave; b&aacute;o c&aacute;o LLP của PricewaterhouseCoopers.</p>\r\n\r\n<p>Singapore hiện tuy&ecirc;n bố vị tr&iacute; h&agrave;ng đầu về triển vọng đầu tư bất động sản về mặt tăng gi&aacute; trong năm 2020. Hồng K&ocirc;ng, bị rung chuyển bởi nhiều th&aacute;ng biểu t&igrave;nh ch&iacute;nh trị bạo lực, đ&atilde; giảm từ vị tr&iacute; thứ 14 xuống đ&aacute;y của năm 2019.</p>\r\n\r\n<p>Hồng K&ocirc;ng rơi xuống điểm đến &iacute;t được ưa chuộng nhất cho đầu tư bất động sản v&agrave;o năm tới l&agrave; do lĩnh vực b&aacute;n lẻ v&agrave; du lịch của n&oacute; bị ảnh hưởng, ảnh hưởng đến tăng trưởng kinh tế.</p>\r\n\r\n<p>Nh&agrave; nước th&agrave;nh phố đ&atilde; được hưởng lợi từ sự gia tăng lợi &iacute;ch của c&aacute;c nh&agrave; đầu tư, những người đang tr&aacute;nh xa Hồng K&ocirc;ng v&agrave; Trung Quốc, được xem như l&agrave; c&aacute;c điểm chớp nho&aacute;ng địa ch&iacute;nh trị.</p>\r\n\r\n<p>Trong v&agrave;i qu&yacute; vừa qua, gi&aacute; căn hộ tại Singapore đ&atilde; tăng trở lại, cho thấy khả năng phục hồi trong thị trường d&acirc;n cư, với lĩnh vực văn ph&ograve;ng chủ yếu hấp thụ t&igrave;nh trạng dư cung.</p>\r\n\r\n<p>Theo b&aacute;o c&aacute;o của Gi&aacute;m đốc điều h&agrave;nh Viện Đất đai của Viện Đất đai, &ocirc;ng Walter Walter, c&aacute;c vấn đề của Hồng K&ocirc;ng, rất tốt cho Singapore, &iacute;t nhất l&agrave; trong một thời gian ngắn.</p>\r\n\r\n<p>&Ocirc;ng rất nhiều l&yacute; thuyết trong đầu tư l&agrave; &iacute;t hơn về những g&igrave; đ&atilde; xảy ra, so với những g&igrave; sẽ xảy ra hoặc sẽ xảy ra, &ocirc;ng n&oacute;i th&ecirc;m.</p>\r\n\r\n<p>Singapore cũng chứng kiến ​​sự gia tăng c&aacute;c giao dịch t&agrave;i sản trong nửa đầu năm, với phần lớn c&aacute;c hoạt động được th&uacute;c đẩy bởi nguồn vốn xuy&ecirc;n bi&ecirc;n giới. C&aacute;c ưu đ&atilde;i l&ecirc;n tới 4,9 tỷ đ&ocirc; la (6,6 tỷ đ&ocirc; la Singapore) trong giai đoạn n&agrave;y, tăng trưởng 73% so với năm trước.</p>\r\n\r\n<p>Walter m&ocirc; tả Hồng K&ocirc;ng c&oacute; một thị trường rất ki&ecirc;n cường, được hỗ trợ bởi gi&aacute; bất động sản cao. &Ocirc;ng tin rằng sau c&aacute;c cuộc biểu t&igrave;nh, c&aacute;c lĩnh vực như b&aacute;n lẻ c&oacute; thể phục hồi nhanh ch&oacute;ng.</p>\r\n\r\n<p>Vấn đề lớn hơn l&agrave; những g&igrave; xảy ra từ g&oacute;c độ ch&iacute;nh trị v&agrave; điều đ&oacute; b&aacute;o hiệu điều g&igrave; về Hồng K&ocirc;ng, nơi trở th&agrave;nh một trung t&acirc;m t&agrave;i ch&iacute;nh, &ocirc;ng n&oacute;i.</p>\r\n\r\n<p>Singapore đứng thứ hai trong số 22 trung t&acirc;m gần đ&acirc;y nhất l&agrave; năm 2017, vượt qua c&aacute;c th&agrave;nh phố như Sydney, Tokyo v&agrave; Bangalore khi vị tr&iacute; tuyển dụng tăng v&agrave; gi&aacute; thu&ecirc; giảm. Năm 2017, Hồng K&ocirc;ng xếp thứ 18.</p>', 'published', 1, 'Botble\\ACL\\Models\\User', 1, 'properties/6-1.jpg', 1, NULL, '2019-11-22 01:33:23', '2019-11-22 02:32:48'),
(8, 'Các nhà đầu tư lớn Hàn Quốc đổ xô vào bất động sản ở nước ngoài', 'Ngày càng có nhiều nhà đầu tư Hàn Quốc quan tâm đến bất động sản ở nước ngoài, đặc biệt là Hoa Kỳ và Nhật Bản nơi các quy định tương đối lỏng lẻo và giá trị tài sản ổn định.', '<h4>KEB Hana Bank đ&atilde; tổ chức một cuộc hội thảo về chiến lược đầu tư bất động sản to&agrave;n cầu tại trụ sở ch&iacute;nh tại Seoul v&agrave;o ng&agrave;y 23 th&aacute;ng 5 v&agrave; gần 100 kh&aacute;ch h&agrave;ng đ&atilde; tham dự.</h4>\r\n\r\n<p>Hana Bank&#39;s Private Banking Division (PB) organized a seminar for wealthy clients to explain the procedures for borrowing and transferring money to invest in real estate in these big cities. The world, including New York, Los Angeles in the United States &nbsp;and Tokyo in Japan.&nbsp;</p>\r\n\r\n<p>Most notably, the participants showed a keen interest in investing directly in the assets introduced in the workshop. &nbsp;Yang Yong-hwa, chief advisor on real estate investment at KEB Hana Bank, said that Real Estate in advanced markets, such as the United States and Japan, has been recognized as a risk-free and high-value asset. Customers are interested in it. &nbsp;because of relatively lax regulations on lending.</p>\r\n\r\n<p style=\"text-align: center;\">&nbsp;<img alt=\"\" src=\"https://flex-home.botble.com/storage/properties/32223-43914-378.png\" style=\"width: 573px; height: 533px;\" /></p>\r\n\r\n<p style=\"text-align: center;\"><em>C&aacute;c nh&agrave; đầu tư lớn H&agrave;n Quốc đổ x&ocirc; v&agrave;o bất động sản ở nước ngo&agrave;i</em></p>\r\n\r\n<h4>Other banks&rsquo; PB divisions also held briefing sessions on real estate abroad to meet customer needs.</h4>\r\n\r\n<p>Ng&acirc;n h&agrave;ng Hana đ&atilde; thiết lập quan hệ đối t&aacute;c với c&aacute;c nh&agrave; cung cấp dịch vụ bất động sản to&agrave;n cầu, bao gồm KF Korea v&agrave; Global PMC, v&agrave;o th&aacute;ng 3 v&agrave; đang t&igrave;m c&aacute;ch khởi động doanh nghiệp tư vấn bất động sản. Ng&acirc;n h&agrave;ng KB Kookmin cũng giới thiệu dịch vụ tư vấn bất động sản KB to&agrave;n cầu v&agrave;o năm 2014, trong khi Ng&acirc;n h&agrave;ng Woori đang tổ chức c&aacute;c buổi tư vấn về đầu tư v&agrave;o bất động sản nước ngo&agrave;i bằng c&aacute;ch sử dụng mạng lưới to&agrave;n cầu lớn nhất trong số c&aacute;c ng&acirc;n h&agrave;ng trong nước. Ng&acirc;n h&agrave;ng Shinhan đ&atilde; thiết lập quan hệ đối t&aacute;c với c&ocirc;ng ty dịch vụ bất động sản to&agrave;n cầu, KF Korea, v&agrave;o th&aacute;ng 4 v&agrave; sẽ tổ chức hội thảo đầu ti&ecirc;n về bất động sản ở nước ngo&agrave;i v&agrave;o ng&agrave;y 27 th&aacute;ng 5.</p>\r\n\r\n<p>Khi ng&agrave;y c&agrave;ng c&oacute; nhiều ng&acirc;n h&agrave;ng thương mại đẩy v&agrave;o thị trường tư vấn bất động sản ở nước ngo&agrave;i, c&aacute;c lĩnh vực tư vấn đang ng&agrave;y c&agrave;ng đa dạng. Tokyo c&oacute; nhu cầu cao nhất v&igrave; n&oacute; tương đối dễ tiếp cận v&agrave; gi&aacute; bất động sản đang tăng l&ecirc;n trước Thế vận hội M&ugrave;a h&egrave; 2020. Tuy nhi&ecirc;n, c&aacute;c nước mới nổi c&oacute; tiềm năng tăng trưởng cao, chẳng hạn như Việt Nam, gần đ&acirc;y sẽ thấy đầu tư nhiều hơn.</p>\r\n\r\n<p>&nbsp;</p>', 'published', 1, 'Botble\\ACL\\Models\\User', 1, 'properties/download.jpeg', 0, NULL, '2019-11-22 01:39:38', '2019-11-22 01:39:38');

-- --------------------------------------------------------

--
-- Table structure for table `post_categories`
--

CREATE TABLE `post_categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `category_id` int(10) UNSIGNED NOT NULL,
  `post_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `post_categories`
--

INSERT INTO `post_categories` (`id`, `category_id`, `post_id`) VALUES
(5, 1, 2),
(10, 8, 5),
(11, 1, 1),
(12, 8, 6),
(13, 8, 7),
(14, 1, 3),
(15, 8, 8),
(16, 1, 4);

-- --------------------------------------------------------

--
-- Table structure for table `post_tags`
--

CREATE TABLE `post_tags` (
  `id` int(10) UNSIGNED NOT NULL,
  `tag_id` int(10) UNSIGNED NOT NULL,
  `post_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `post_tags`
--

INSERT INTO `post_tags` (`id`, `tag_id`, `post_id`) VALUES
(1, 1, 1),
(2, 2, 2),
(3, 3, 4);

-- --------------------------------------------------------

--
-- Table structure for table `revisions`
--

CREATE TABLE `revisions` (
  `id` int(10) UNSIGNED NOT NULL,
  `revisionable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revisionable_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `old_value` text COLLATE utf8mb4_unicode_ci,
  `new_value` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `revisions`
--

INSERT INTO `revisions` (`id`, `revisionable_type`, `revisionable_id`, `user_id`, `key`, `old_value`, `new_value`, `created_at`, `updated_at`) VALUES
(1, 'Botble\\Blog\\Models\\Post', 3, 1, 'is_featured', '0', '1', '2019-11-18 02:59:46', '2019-11-18 02:59:46'),
(2, 'Botble\\Blog\\Models\\Post', 2, 1, 'is_featured', '0', '1', '2019-11-18 03:00:10', '2019-11-18 03:00:10'),
(3, 'Botble\\Blog\\Models\\Post', 1, 1, 'is_featured', '0', '1', '2019-11-18 03:00:20', '2019-11-18 03:00:20'),
(4, 'Botble\\Blog\\Models\\Post', 1, 1, 'description', 'BCG leaders shared with investors at a meeting this month that real estate and renewable energy will be the two main activities of the group', 'BCG leaders shared with investors at a meeting this month that real estate and renewable energy will be the two main activities of the group. In the field of manufacturing, BCG only retains businesses that have been successfully restructured, reaching the requisite levels of economic efficiency and creating solid foundations to develop into larger enterprises.', '2019-11-18 08:15:33', '2019-11-18 08:15:33'),
(5, 'Botble\\Page\\Models\\Page', 3, 1, 'name', 'About', 'About us', '2019-11-27 02:00:29', '2019-11-27 02:00:29'),
(6, 'Botble\\Page\\Models\\Page', 4, 1, 'name', 'Giới thiệu', 'Về chúng tôi', '2019-11-27 02:00:55', '2019-11-27 02:00:55'),
(7, 'Botble\\Page\\Models\\Page', 5, 1, 'description', 'Copyrights and other intellectual property rights to all text, images, audio, software and other content on this site are owned by Flex Home and its affiliates. Users are allowed to view the contents of the website, cite the contents by printing, downloading the hard disk and distributing it to others for non-commercial purposes, providing information or personal purposes.', 'Copyrights and other intellectual property rights to all text, images, audio, software and other content on this site are owned by Flex Home and its affiliates. Users are allowed to view the contents of the website, cite the contents by printing, downloading the hard disk and distributing it to others for non-commercial purposes.', '2019-11-27 02:35:37', '2019-11-27 02:35:37'),
(8, 'Botble\\Page\\Models\\Page', 7, 1, 'name', 'Flex Home', 'Homepage', '2020-02-06 21:54:04', '2020-02-06 21:54:04'),
(9, 'Botble\\Page\\Models\\Page', 7, 1, 'template', 'default', 'homepage', '2020-02-06 21:55:08', '2020-02-06 21:55:08');

-- --------------------------------------------------------

--
-- Table structure for table `re_accounts`
--

CREATE TABLE `re_accounts` (
  `id` int(10) UNSIGNED NOT NULL,
  `first_name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `gender` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar_id` int(10) UNSIGNED DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `phone` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `confirmed_at` datetime DEFAULT NULL,
  `email_verify_token` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `credits` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `re_accounts`
--

INSERT INTO `re_accounts` (`id`, `first_name`, `last_name`, `description`, `gender`, `email`, `username`, `password`, `avatar_id`, `dob`, `phone`, `confirmed_at`, `email_verify_token`, `remember_token`, `created_at`, `updated_at`, `credits`) VALUES
(1, 'Justine', 'Rodriguez', 'Mock Turtle\'s Story \'You.', NULL, 'john.smith@botble.com', 'quintonpagac', '$2y$10$EotuBNXec0f6ywZJtyr.9e8/cEwJy8Lu5DbDg6DkLkrtOF/eg5k0C', NULL, '2019-08-07', '932-326-9455 x8943', '2020-11-17 10:09:36', NULL, NULL, '2020-11-17 03:09:36', '2020-11-17 03:09:36', 10),
(2, 'Gisselle', 'Aufderhar', 'ARE OLD, FATHER WILLIAM,\' to.', NULL, 'jgutkowski@gusikowski.org', 'lionelaltenwerth', '$2y$10$Fn54Huj9ffvuJU8kaD6nfuyvkuyt8b/eb41XzpRe.FiTGpKLcLk0O', NULL, '2011-06-19', '313.963.4483 x94199', '2020-11-17 10:09:36', NULL, NULL, '2020-11-17 03:09:36', '2020-11-17 03:09:36', 4),
(3, 'Tristin', 'Auer', 'Alice the moment how large.', NULL, 'cassandra.crooks@gmail.com', 'aidanhodkiewicz', '$2y$10$wLXs6O75b1MttcSx.yBGHOnZN34jv1CHZlB8fS1gyODFrc.UGPgim', NULL, '1986-01-04', '705-558-7097', '2020-11-17 10:09:36', NULL, NULL, '2020-11-17 03:09:36', '2020-11-17 03:09:36', 5),
(4, 'Karlee', 'Rutherford', 'COULD grin.\' \'They all can,\'.', NULL, 'bosco.leta@hotmail.com', 'eriberto69', '$2y$10$qr0.O.gKE5cUm8QT1xcpSuzjjkysOD87Ncot2G6HGOe5Dh0bR.Yle', NULL, '1991-12-08', '(932) 477-9909', '2020-11-17 10:09:37', NULL, NULL, '2020-11-17 03:09:37', '2020-11-17 03:09:37', 3),
(5, 'Jo', 'Greenholt', 'However, on the bank--the.', NULL, 'bradtke.isaias@hotmail.com', 'hgoldner', '$2y$10$YpBwVrVUQma2spdHPCscNuzEAd1DRpoU6hg5pcEeKONCpHVa9jFem', NULL, '2019-02-20', '1-442-585-4349 x597', '2020-11-17 10:09:37', NULL, NULL, '2020-11-17 03:09:37', '2020-11-17 03:09:37', 10),
(6, 'Fausto', 'Hermann', 'Alice, \'we learned French.', NULL, 'kwill@hotmail.com', 'earnestgerlach', '$2y$10$/HkJ0isj8g9KydrdBc9qtOkMF4K/Of7AaU1BsBZm3582tz/Kx.7ya', NULL, '2013-02-13', '325.559.0045 x7770', '2020-11-17 10:09:37', NULL, NULL, '2020-11-17 03:09:37', '2020-11-17 03:09:37', 5),
(7, 'Laurine', 'O\'Hara', 'Alice, and she jumped up and.', NULL, 'hegmann.erik@gmail.com', 'jonnikolaus', '$2y$10$pIaLe/krEdBsEnNTkdRM3uIkGDHnEl48s2jjOwtnoqJJe3B6dA8rK', NULL, '2002-09-25', '537-690-4872', '2020-11-17 10:09:37', NULL, NULL, '2020-11-17 03:09:37', '2020-11-17 03:09:37', 5),
(8, 'Ezra', 'Barton', 'Alice crouched down among.', NULL, 'jeanie35@hill.com', 'catherine21', '$2y$10$KPwlrTRwVlwyEhnQtH5Ibe/tFojrO/XkPnGfQQC/LgOeftItX2L/W', NULL, '1974-02-27', '494.528.2074', '2020-11-17 10:09:38', NULL, NULL, '2020-11-17 03:09:38', '2020-11-17 03:09:38', 7),
(9, 'Jordan', 'Christiansen', 'Alice, \'how am I to get out.', NULL, 'mekhi77@gmail.com', 'yrunte', '$2y$10$vgEmSSD5UlQtDn4VXWsQu.kbRW7dmX2aAHPTYNSvira4OG2ZlM7Q2', NULL, '1978-07-06', '1-850-652-3029', '2020-11-17 10:09:38', NULL, NULL, '2020-11-17 03:09:38', '2020-11-17 03:09:38', 1),
(10, 'Kevin', 'Hansen', 'Queen, turning purple. \'I.', NULL, 'oconner.kattie@abbott.com', 'conroymodesta', '$2y$10$oQE9QSIQilGKHhnFP2nM/utXfKKcVv0BlD0BNePUK1oYBP/gvFEUW', NULL, '1974-03-01', '761-343-8728 x046', '2020-11-17 10:09:38', NULL, NULL, '2020-11-17 03:09:38', '2020-11-17 03:09:38', 2),
(11, 'Jeremy', 'Hilpert', 'There seemed to be rude, so.', NULL, 'schoen.wilfredo@gmail.com', 'frida73', '$2y$10$2EZgze60Vw91yE.Y9s./guNqiax./wzGqiWUk9vrzwyZeggzN4t26', NULL, '2012-10-02', '(216) 419-7386', '2020-11-17 10:09:39', NULL, NULL, '2020-11-17 03:09:39', '2020-11-17 03:09:39', 8);

-- --------------------------------------------------------

--
-- Table structure for table `re_account_activity_logs`
--

CREATE TABLE `re_account_activity_logs` (
  `id` int(10) UNSIGNED NOT NULL,
  `action` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `reference_url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reference_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ip_address` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `account_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `re_account_packages`
--

CREATE TABLE `re_account_packages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `package_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `account_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `re_account_password_resets`
--

CREATE TABLE `re_account_password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `re_categories`
--

CREATE TABLE `re_categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `order` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `is_default` tinyint(4) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `re_categories`
--

INSERT INTO `re_categories` (`id`, `name`, `description`, `status`, `order`, `is_default`, `created_at`, `updated_at`) VALUES
(1, 'Apartment', NULL, 'published', 0, 1, '2020-11-17 03:09:35', '2020-11-17 03:09:35'),
(2, 'Villa', NULL, 'published', 1, 0, '2020-11-17 03:09:35', '2020-11-17 03:09:35'),
(3, 'Condo', NULL, 'published', 2, 0, '2020-11-17 03:09:35', '2020-11-17 03:09:35'),
(4, 'House', NULL, 'published', 3, 0, '2020-11-17 03:09:35', '2020-11-17 03:09:35'),
(5, 'Land', NULL, 'published', 4, 0, '2020-11-17 03:09:35', '2020-11-17 03:09:35'),
(6, 'Commercial property', NULL, 'published', 5, 0, '2020-11-17 03:09:35', '2020-11-17 03:09:35');

-- --------------------------------------------------------

--
-- Table structure for table `re_consults`
--

CREATE TABLE `re_consults` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `project_id` int(10) UNSIGNED DEFAULT NULL,
  `property_id` int(10) UNSIGNED DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'unread',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `re_currencies`
--

CREATE TABLE `re_currencies` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `symbol` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_prefix_symbol` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `decimals` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `order` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `is_default` tinyint(4) NOT NULL DEFAULT '0',
  `exchange_rate` double NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `re_currencies`
--

INSERT INTO `re_currencies` (`id`, `title`, `symbol`, `is_prefix_symbol`, `decimals`, `order`, `is_default`, `exchange_rate`, `created_at`, `updated_at`) VALUES
(1, 'USD', '$', 1, 0, 0, 1, 1, '2020-11-17 03:09:35', '2020-11-17 03:09:35'),
(2, 'VND', '₫', 0, 0, 1, 0, 23203, '2020-11-17 03:09:35', '2020-11-17 03:09:35');

-- --------------------------------------------------------

--
-- Table structure for table `re_facilities`
--

CREATE TABLE `re_facilities` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `re_facilities`
--

INSERT INTO `re_facilities` (`id`, `name`, `icon`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Hospital', 'far fa-hospital', 'published', '2020-11-17 03:09:35', '2020-11-17 03:09:35'),
(2, 'Super Market', 'fas fa-cart-plus', 'published', '2020-11-17 03:09:35', '2020-11-17 03:09:35'),
(3, 'School', 'fas fa-school', 'published', '2020-11-17 03:09:35', '2020-11-17 03:09:35'),
(4, 'Entertainment', 'fas fa-hotel', 'published', '2020-11-17 03:09:35', '2020-11-17 03:09:35'),
(5, 'Pharmacy', 'fas fa-prescription-bottle-alt', 'published', '2020-11-17 03:09:35', '2020-11-17 03:09:35'),
(6, 'Airport', 'fas fa-plane-departure', 'published', '2020-11-17 03:09:35', '2020-11-17 03:09:35'),
(7, 'Railways', 'fas fa-subway', 'published', '2020-11-17 03:09:35', '2020-11-17 03:09:35'),
(8, 'Bus Stop', 'fas fa-bus', 'published', '2020-11-17 03:09:35', '2020-11-17 03:09:35'),
(9, 'Beach', 'fas fa-umbrella-beach', 'published', '2020-11-17 03:09:35', '2020-11-17 03:09:35'),
(10, 'Mall', 'fas fa-cart-plus', 'published', '2020-11-17 03:09:35', '2020-11-17 03:09:35'),
(11, 'Bank', 'fas fa-university', 'published', '2020-11-17 03:09:35', '2020-11-17 03:09:35');

-- --------------------------------------------------------

--
-- Table structure for table `re_facilities_distances`
--

CREATE TABLE `re_facilities_distances` (
  `id` int(10) UNSIGNED NOT NULL,
  `facility_id` int(10) UNSIGNED NOT NULL,
  `reference_id` int(10) UNSIGNED NOT NULL,
  `reference_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `distance` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '0.00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `re_facilities_distances`
--

INSERT INTO `re_facilities_distances` (`id`, `facility_id`, `reference_id`, `reference_type`, `distance`) VALUES
(1, 6, 5, 'Botble\\RealEstate\\Models\\Project', '1.25'),
(2, 2, 5, 'Botble\\RealEstate\\Models\\Project', '0.25'),
(1884, 1, 1, 'Botble\\RealEstate\\Models\\Property', '6km'),
(1885, 2, 1, 'Botble\\RealEstate\\Models\\Property', '16km'),
(1886, 3, 1, 'Botble\\RealEstate\\Models\\Property', '18km'),
(1887, 4, 1, 'Botble\\RealEstate\\Models\\Property', '8km'),
(1888, 5, 1, 'Botble\\RealEstate\\Models\\Property', '10km'),
(1889, 6, 1, 'Botble\\RealEstate\\Models\\Property', '20km'),
(1890, 7, 1, 'Botble\\RealEstate\\Models\\Property', '20km'),
(1891, 8, 1, 'Botble\\RealEstate\\Models\\Property', '1km'),
(1892, 9, 1, 'Botble\\RealEstate\\Models\\Property', '9km'),
(1893, 10, 1, 'Botble\\RealEstate\\Models\\Property', '2km'),
(1894, 11, 1, 'Botble\\RealEstate\\Models\\Property', '7km'),
(1895, 1, 2, 'Botble\\RealEstate\\Models\\Property', '17km'),
(1896, 2, 2, 'Botble\\RealEstate\\Models\\Property', '10km'),
(1897, 3, 2, 'Botble\\RealEstate\\Models\\Property', '19km'),
(1898, 4, 2, 'Botble\\RealEstate\\Models\\Property', '4km'),
(1899, 5, 2, 'Botble\\RealEstate\\Models\\Property', '18km'),
(1900, 6, 2, 'Botble\\RealEstate\\Models\\Property', '7km'),
(1901, 7, 2, 'Botble\\RealEstate\\Models\\Property', '9km'),
(1902, 8, 2, 'Botble\\RealEstate\\Models\\Property', '16km'),
(1903, 9, 2, 'Botble\\RealEstate\\Models\\Property', '16km'),
(1904, 10, 2, 'Botble\\RealEstate\\Models\\Property', '11km'),
(1905, 11, 2, 'Botble\\RealEstate\\Models\\Property', '8km'),
(1906, 1, 3, 'Botble\\RealEstate\\Models\\Property', '5km'),
(1907, 2, 3, 'Botble\\RealEstate\\Models\\Property', '20km'),
(1908, 3, 3, 'Botble\\RealEstate\\Models\\Property', '19km'),
(1909, 4, 3, 'Botble\\RealEstate\\Models\\Property', '3km'),
(1910, 5, 3, 'Botble\\RealEstate\\Models\\Property', '9km'),
(1911, 6, 3, 'Botble\\RealEstate\\Models\\Property', '12km'),
(1912, 7, 3, 'Botble\\RealEstate\\Models\\Property', '5km'),
(1913, 8, 3, 'Botble\\RealEstate\\Models\\Property', '10km'),
(1914, 9, 3, 'Botble\\RealEstate\\Models\\Property', '20km'),
(1915, 10, 3, 'Botble\\RealEstate\\Models\\Property', '16km'),
(1916, 11, 3, 'Botble\\RealEstate\\Models\\Property', '2km'),
(1917, 1, 4, 'Botble\\RealEstate\\Models\\Property', '11km'),
(1918, 2, 4, 'Botble\\RealEstate\\Models\\Property', '19km'),
(1919, 3, 4, 'Botble\\RealEstate\\Models\\Property', '7km'),
(1920, 4, 4, 'Botble\\RealEstate\\Models\\Property', '3km'),
(1921, 5, 4, 'Botble\\RealEstate\\Models\\Property', '9km'),
(1922, 6, 4, 'Botble\\RealEstate\\Models\\Property', '7km'),
(1923, 7, 4, 'Botble\\RealEstate\\Models\\Property', '4km'),
(1924, 8, 4, 'Botble\\RealEstate\\Models\\Property', '19km'),
(1925, 9, 4, 'Botble\\RealEstate\\Models\\Property', '15km'),
(1926, 10, 4, 'Botble\\RealEstate\\Models\\Property', '13km'),
(1927, 11, 4, 'Botble\\RealEstate\\Models\\Property', '13km'),
(1928, 1, 5, 'Botble\\RealEstate\\Models\\Property', '4km'),
(1929, 2, 5, 'Botble\\RealEstate\\Models\\Property', '19km'),
(1930, 3, 5, 'Botble\\RealEstate\\Models\\Property', '14km'),
(1931, 4, 5, 'Botble\\RealEstate\\Models\\Property', '7km'),
(1932, 5, 5, 'Botble\\RealEstate\\Models\\Property', '12km'),
(1933, 6, 5, 'Botble\\RealEstate\\Models\\Property', '9km'),
(1934, 7, 5, 'Botble\\RealEstate\\Models\\Property', '12km'),
(1935, 8, 5, 'Botble\\RealEstate\\Models\\Property', '2km'),
(1936, 9, 5, 'Botble\\RealEstate\\Models\\Property', '17km'),
(1937, 10, 5, 'Botble\\RealEstate\\Models\\Property', '3km'),
(1938, 11, 5, 'Botble\\RealEstate\\Models\\Property', '3km'),
(1939, 1, 6, 'Botble\\RealEstate\\Models\\Property', '5km'),
(1940, 2, 6, 'Botble\\RealEstate\\Models\\Property', '11km'),
(1941, 3, 6, 'Botble\\RealEstate\\Models\\Property', '6km'),
(1942, 4, 6, 'Botble\\RealEstate\\Models\\Property', '16km'),
(1943, 5, 6, 'Botble\\RealEstate\\Models\\Property', '8km'),
(1944, 6, 6, 'Botble\\RealEstate\\Models\\Property', '1km'),
(1945, 7, 6, 'Botble\\RealEstate\\Models\\Property', '9km'),
(1946, 8, 6, 'Botble\\RealEstate\\Models\\Property', '7km'),
(1947, 9, 6, 'Botble\\RealEstate\\Models\\Property', '12km'),
(1948, 10, 6, 'Botble\\RealEstate\\Models\\Property', '17km'),
(1949, 11, 6, 'Botble\\RealEstate\\Models\\Property', '12km'),
(1950, 1, 7, 'Botble\\RealEstate\\Models\\Property', '4km'),
(1951, 2, 7, 'Botble\\RealEstate\\Models\\Property', '19km'),
(1952, 3, 7, 'Botble\\RealEstate\\Models\\Property', '2km'),
(1953, 4, 7, 'Botble\\RealEstate\\Models\\Property', '3km'),
(1954, 5, 7, 'Botble\\RealEstate\\Models\\Property', '20km'),
(1955, 6, 7, 'Botble\\RealEstate\\Models\\Property', '13km'),
(1956, 7, 7, 'Botble\\RealEstate\\Models\\Property', '15km'),
(1957, 8, 7, 'Botble\\RealEstate\\Models\\Property', '7km'),
(1958, 9, 7, 'Botble\\RealEstate\\Models\\Property', '2km'),
(1959, 10, 7, 'Botble\\RealEstate\\Models\\Property', '15km'),
(1960, 11, 7, 'Botble\\RealEstate\\Models\\Property', '5km'),
(1961, 1, 8, 'Botble\\RealEstate\\Models\\Property', '4km'),
(1962, 2, 8, 'Botble\\RealEstate\\Models\\Property', '4km'),
(1963, 3, 8, 'Botble\\RealEstate\\Models\\Property', '11km'),
(1964, 4, 8, 'Botble\\RealEstate\\Models\\Property', '1km'),
(1965, 5, 8, 'Botble\\RealEstate\\Models\\Property', '8km'),
(1966, 6, 8, 'Botble\\RealEstate\\Models\\Property', '3km'),
(1967, 7, 8, 'Botble\\RealEstate\\Models\\Property', '15km'),
(1968, 8, 8, 'Botble\\RealEstate\\Models\\Property', '16km'),
(1969, 9, 8, 'Botble\\RealEstate\\Models\\Property', '8km'),
(1970, 10, 8, 'Botble\\RealEstate\\Models\\Property', '6km'),
(1971, 11, 8, 'Botble\\RealEstate\\Models\\Property', '3km'),
(1972, 1, 9, 'Botble\\RealEstate\\Models\\Property', '8km'),
(1973, 2, 9, 'Botble\\RealEstate\\Models\\Property', '4km'),
(1974, 3, 9, 'Botble\\RealEstate\\Models\\Property', '3km'),
(1975, 4, 9, 'Botble\\RealEstate\\Models\\Property', '4km'),
(1976, 5, 9, 'Botble\\RealEstate\\Models\\Property', '14km'),
(1977, 6, 9, 'Botble\\RealEstate\\Models\\Property', '10km'),
(1978, 7, 9, 'Botble\\RealEstate\\Models\\Property', '16km'),
(1979, 8, 9, 'Botble\\RealEstate\\Models\\Property', '18km'),
(1980, 9, 9, 'Botble\\RealEstate\\Models\\Property', '5km'),
(1981, 10, 9, 'Botble\\RealEstate\\Models\\Property', '17km'),
(1982, 11, 9, 'Botble\\RealEstate\\Models\\Property', '2km'),
(1983, 1, 10, 'Botble\\RealEstate\\Models\\Property', '3km'),
(1984, 2, 10, 'Botble\\RealEstate\\Models\\Property', '19km'),
(1985, 3, 10, 'Botble\\RealEstate\\Models\\Property', '18km'),
(1986, 4, 10, 'Botble\\RealEstate\\Models\\Property', '14km'),
(1987, 5, 10, 'Botble\\RealEstate\\Models\\Property', '13km'),
(1988, 6, 10, 'Botble\\RealEstate\\Models\\Property', '4km'),
(1989, 7, 10, 'Botble\\RealEstate\\Models\\Property', '15km'),
(1990, 8, 10, 'Botble\\RealEstate\\Models\\Property', '20km'),
(1991, 9, 10, 'Botble\\RealEstate\\Models\\Property', '9km'),
(1992, 10, 10, 'Botble\\RealEstate\\Models\\Property', '15km'),
(1993, 11, 10, 'Botble\\RealEstate\\Models\\Property', '2km'),
(1994, 1, 11, 'Botble\\RealEstate\\Models\\Property', '8km'),
(1995, 2, 11, 'Botble\\RealEstate\\Models\\Property', '4km'),
(1996, 3, 11, 'Botble\\RealEstate\\Models\\Property', '5km'),
(1997, 4, 11, 'Botble\\RealEstate\\Models\\Property', '14km'),
(1998, 5, 11, 'Botble\\RealEstate\\Models\\Property', '13km'),
(1999, 6, 11, 'Botble\\RealEstate\\Models\\Property', '8km'),
(2000, 7, 11, 'Botble\\RealEstate\\Models\\Property', '15km'),
(2001, 8, 11, 'Botble\\RealEstate\\Models\\Property', '2km'),
(2002, 9, 11, 'Botble\\RealEstate\\Models\\Property', '16km'),
(2003, 10, 11, 'Botble\\RealEstate\\Models\\Property', '14km'),
(2004, 11, 11, 'Botble\\RealEstate\\Models\\Property', '19km'),
(2005, 1, 12, 'Botble\\RealEstate\\Models\\Property', '3km'),
(2006, 2, 12, 'Botble\\RealEstate\\Models\\Property', '20km'),
(2007, 3, 12, 'Botble\\RealEstate\\Models\\Property', '7km'),
(2008, 4, 12, 'Botble\\RealEstate\\Models\\Property', '18km'),
(2009, 5, 12, 'Botble\\RealEstate\\Models\\Property', '17km'),
(2010, 6, 12, 'Botble\\RealEstate\\Models\\Property', '11km'),
(2011, 7, 12, 'Botble\\RealEstate\\Models\\Property', '7km'),
(2012, 8, 12, 'Botble\\RealEstate\\Models\\Property', '4km'),
(2013, 9, 12, 'Botble\\RealEstate\\Models\\Property', '2km'),
(2014, 10, 12, 'Botble\\RealEstate\\Models\\Property', '6km'),
(2015, 11, 12, 'Botble\\RealEstate\\Models\\Property', '18km'),
(2016, 1, 13, 'Botble\\RealEstate\\Models\\Property', '14km'),
(2017, 2, 13, 'Botble\\RealEstate\\Models\\Property', '5km'),
(2018, 3, 13, 'Botble\\RealEstate\\Models\\Property', '1km'),
(2019, 4, 13, 'Botble\\RealEstate\\Models\\Property', '20km'),
(2020, 5, 13, 'Botble\\RealEstate\\Models\\Property', '2km'),
(2021, 6, 13, 'Botble\\RealEstate\\Models\\Property', '3km'),
(2022, 7, 13, 'Botble\\RealEstate\\Models\\Property', '20km'),
(2023, 8, 13, 'Botble\\RealEstate\\Models\\Property', '13km'),
(2024, 9, 13, 'Botble\\RealEstate\\Models\\Property', '10km'),
(2025, 10, 13, 'Botble\\RealEstate\\Models\\Property', '9km'),
(2026, 11, 13, 'Botble\\RealEstate\\Models\\Property', '6km'),
(2027, 1, 14, 'Botble\\RealEstate\\Models\\Property', '14km'),
(2028, 2, 14, 'Botble\\RealEstate\\Models\\Property', '1km'),
(2029, 3, 14, 'Botble\\RealEstate\\Models\\Property', '5km'),
(2030, 4, 14, 'Botble\\RealEstate\\Models\\Property', '14km'),
(2031, 5, 14, 'Botble\\RealEstate\\Models\\Property', '3km'),
(2032, 6, 14, 'Botble\\RealEstate\\Models\\Property', '11km'),
(2033, 7, 14, 'Botble\\RealEstate\\Models\\Property', '19km'),
(2034, 8, 14, 'Botble\\RealEstate\\Models\\Property', '8km'),
(2035, 9, 14, 'Botble\\RealEstate\\Models\\Property', '2km'),
(2036, 10, 14, 'Botble\\RealEstate\\Models\\Property', '3km'),
(2037, 11, 14, 'Botble\\RealEstate\\Models\\Property', '1km'),
(2038, 1, 15, 'Botble\\RealEstate\\Models\\Property', '6km'),
(2039, 2, 15, 'Botble\\RealEstate\\Models\\Property', '13km'),
(2040, 3, 15, 'Botble\\RealEstate\\Models\\Property', '20km'),
(2041, 4, 15, 'Botble\\RealEstate\\Models\\Property', '20km'),
(2042, 5, 15, 'Botble\\RealEstate\\Models\\Property', '3km'),
(2043, 6, 15, 'Botble\\RealEstate\\Models\\Property', '4km'),
(2044, 7, 15, 'Botble\\RealEstate\\Models\\Property', '2km'),
(2045, 8, 15, 'Botble\\RealEstate\\Models\\Property', '4km'),
(2046, 9, 15, 'Botble\\RealEstate\\Models\\Property', '6km'),
(2047, 10, 15, 'Botble\\RealEstate\\Models\\Property', '11km'),
(2048, 11, 15, 'Botble\\RealEstate\\Models\\Property', '9km'),
(2049, 1, 16, 'Botble\\RealEstate\\Models\\Property', '2km'),
(2050, 2, 16, 'Botble\\RealEstate\\Models\\Property', '2km'),
(2051, 3, 16, 'Botble\\RealEstate\\Models\\Property', '4km'),
(2052, 4, 16, 'Botble\\RealEstate\\Models\\Property', '4km'),
(2053, 5, 16, 'Botble\\RealEstate\\Models\\Property', '8km'),
(2054, 6, 16, 'Botble\\RealEstate\\Models\\Property', '8km'),
(2055, 7, 16, 'Botble\\RealEstate\\Models\\Property', '19km'),
(2056, 8, 16, 'Botble\\RealEstate\\Models\\Property', '8km'),
(2057, 9, 16, 'Botble\\RealEstate\\Models\\Property', '4km'),
(2058, 10, 16, 'Botble\\RealEstate\\Models\\Property', '14km'),
(2059, 11, 16, 'Botble\\RealEstate\\Models\\Property', '2km'),
(2060, 1, 17, 'Botble\\RealEstate\\Models\\Property', '19km'),
(2061, 2, 17, 'Botble\\RealEstate\\Models\\Property', '6km'),
(2062, 3, 17, 'Botble\\RealEstate\\Models\\Property', '7km'),
(2063, 4, 17, 'Botble\\RealEstate\\Models\\Property', '4km'),
(2064, 5, 17, 'Botble\\RealEstate\\Models\\Property', '11km'),
(2065, 6, 17, 'Botble\\RealEstate\\Models\\Property', '16km'),
(2066, 7, 17, 'Botble\\RealEstate\\Models\\Property', '5km'),
(2067, 8, 17, 'Botble\\RealEstate\\Models\\Property', '11km'),
(2068, 9, 17, 'Botble\\RealEstate\\Models\\Property', '8km'),
(2069, 10, 17, 'Botble\\RealEstate\\Models\\Property', '8km'),
(2070, 11, 17, 'Botble\\RealEstate\\Models\\Property', '10km'),
(2071, 1, 18, 'Botble\\RealEstate\\Models\\Property', '1km'),
(2072, 2, 18, 'Botble\\RealEstate\\Models\\Property', '12km'),
(2073, 3, 18, 'Botble\\RealEstate\\Models\\Property', '19km'),
(2074, 4, 18, 'Botble\\RealEstate\\Models\\Property', '7km'),
(2075, 5, 18, 'Botble\\RealEstate\\Models\\Property', '12km'),
(2076, 6, 18, 'Botble\\RealEstate\\Models\\Property', '6km'),
(2077, 7, 18, 'Botble\\RealEstate\\Models\\Property', '10km'),
(2078, 8, 18, 'Botble\\RealEstate\\Models\\Property', '1km'),
(2079, 9, 18, 'Botble\\RealEstate\\Models\\Property', '20km'),
(2080, 10, 18, 'Botble\\RealEstate\\Models\\Property', '19km'),
(2081, 11, 18, 'Botble\\RealEstate\\Models\\Property', '7km'),
(2082, 1, 19, 'Botble\\RealEstate\\Models\\Property', '9km'),
(2083, 2, 19, 'Botble\\RealEstate\\Models\\Property', '9km'),
(2084, 3, 19, 'Botble\\RealEstate\\Models\\Property', '15km'),
(2085, 4, 19, 'Botble\\RealEstate\\Models\\Property', '4km'),
(2086, 5, 19, 'Botble\\RealEstate\\Models\\Property', '2km'),
(2087, 6, 19, 'Botble\\RealEstate\\Models\\Property', '20km'),
(2088, 7, 19, 'Botble\\RealEstate\\Models\\Property', '14km'),
(2089, 8, 19, 'Botble\\RealEstate\\Models\\Property', '18km'),
(2090, 9, 19, 'Botble\\RealEstate\\Models\\Property', '11km'),
(2091, 10, 19, 'Botble\\RealEstate\\Models\\Property', '4km'),
(2092, 11, 19, 'Botble\\RealEstate\\Models\\Property', '19km'),
(2093, 1, 20, 'Botble\\RealEstate\\Models\\Property', '1km'),
(2094, 2, 20, 'Botble\\RealEstate\\Models\\Property', '1km'),
(2095, 3, 20, 'Botble\\RealEstate\\Models\\Property', '9km'),
(2096, 4, 20, 'Botble\\RealEstate\\Models\\Property', '4km'),
(2097, 5, 20, 'Botble\\RealEstate\\Models\\Property', '3km'),
(2098, 6, 20, 'Botble\\RealEstate\\Models\\Property', '8km'),
(2099, 7, 20, 'Botble\\RealEstate\\Models\\Property', '10km'),
(2100, 8, 20, 'Botble\\RealEstate\\Models\\Property', '13km'),
(2101, 9, 20, 'Botble\\RealEstate\\Models\\Property', '18km'),
(2102, 10, 20, 'Botble\\RealEstate\\Models\\Property', '4km'),
(2103, 11, 20, 'Botble\\RealEstate\\Models\\Property', '16km'),
(2104, 1, 21, 'Botble\\RealEstate\\Models\\Property', '13km'),
(2105, 2, 21, 'Botble\\RealEstate\\Models\\Property', '2km'),
(2106, 3, 21, 'Botble\\RealEstate\\Models\\Property', '20km'),
(2107, 4, 21, 'Botble\\RealEstate\\Models\\Property', '7km'),
(2108, 5, 21, 'Botble\\RealEstate\\Models\\Property', '11km'),
(2109, 6, 21, 'Botble\\RealEstate\\Models\\Property', '20km'),
(2110, 7, 21, 'Botble\\RealEstate\\Models\\Property', '9km'),
(2111, 8, 21, 'Botble\\RealEstate\\Models\\Property', '7km'),
(2112, 9, 21, 'Botble\\RealEstate\\Models\\Property', '3km'),
(2113, 10, 21, 'Botble\\RealEstate\\Models\\Property', '15km'),
(2114, 11, 21, 'Botble\\RealEstate\\Models\\Property', '14km'),
(2115, 1, 22, 'Botble\\RealEstate\\Models\\Property', '15km'),
(2116, 2, 22, 'Botble\\RealEstate\\Models\\Property', '14km'),
(2117, 3, 22, 'Botble\\RealEstate\\Models\\Property', '20km'),
(2118, 4, 22, 'Botble\\RealEstate\\Models\\Property', '12km'),
(2119, 5, 22, 'Botble\\RealEstate\\Models\\Property', '2km'),
(2120, 6, 22, 'Botble\\RealEstate\\Models\\Property', '7km'),
(2121, 7, 22, 'Botble\\RealEstate\\Models\\Property', '14km'),
(2122, 8, 22, 'Botble\\RealEstate\\Models\\Property', '13km'),
(2123, 9, 22, 'Botble\\RealEstate\\Models\\Property', '8km'),
(2124, 10, 22, 'Botble\\RealEstate\\Models\\Property', '16km'),
(2125, 11, 22, 'Botble\\RealEstate\\Models\\Property', '13km'),
(2126, 1, 23, 'Botble\\RealEstate\\Models\\Property', '3km'),
(2127, 2, 23, 'Botble\\RealEstate\\Models\\Property', '1km'),
(2128, 3, 23, 'Botble\\RealEstate\\Models\\Property', '16km'),
(2129, 4, 23, 'Botble\\RealEstate\\Models\\Property', '14km'),
(2130, 5, 23, 'Botble\\RealEstate\\Models\\Property', '17km'),
(2131, 6, 23, 'Botble\\RealEstate\\Models\\Property', '15km'),
(2132, 7, 23, 'Botble\\RealEstate\\Models\\Property', '18km'),
(2133, 8, 23, 'Botble\\RealEstate\\Models\\Property', '8km'),
(2134, 9, 23, 'Botble\\RealEstate\\Models\\Property', '3km'),
(2135, 10, 23, 'Botble\\RealEstate\\Models\\Property', '14km'),
(2136, 11, 23, 'Botble\\RealEstate\\Models\\Property', '17km'),
(2137, 1, 24, 'Botble\\RealEstate\\Models\\Property', '13km'),
(2138, 2, 24, 'Botble\\RealEstate\\Models\\Property', '11km'),
(2139, 3, 24, 'Botble\\RealEstate\\Models\\Property', '2km'),
(2140, 4, 24, 'Botble\\RealEstate\\Models\\Property', '6km'),
(2141, 5, 24, 'Botble\\RealEstate\\Models\\Property', '10km'),
(2142, 6, 24, 'Botble\\RealEstate\\Models\\Property', '20km'),
(2143, 7, 24, 'Botble\\RealEstate\\Models\\Property', '3km'),
(2144, 8, 24, 'Botble\\RealEstate\\Models\\Property', '20km'),
(2145, 9, 24, 'Botble\\RealEstate\\Models\\Property', '10km'),
(2146, 10, 24, 'Botble\\RealEstate\\Models\\Property', '15km'),
(2147, 11, 24, 'Botble\\RealEstate\\Models\\Property', '15km'),
(2148, 1, 25, 'Botble\\RealEstate\\Models\\Property', '17km'),
(2149, 2, 25, 'Botble\\RealEstate\\Models\\Property', '12km'),
(2150, 3, 25, 'Botble\\RealEstate\\Models\\Property', '20km'),
(2151, 4, 25, 'Botble\\RealEstate\\Models\\Property', '2km'),
(2152, 5, 25, 'Botble\\RealEstate\\Models\\Property', '1km'),
(2153, 6, 25, 'Botble\\RealEstate\\Models\\Property', '16km'),
(2154, 7, 25, 'Botble\\RealEstate\\Models\\Property', '6km'),
(2155, 8, 25, 'Botble\\RealEstate\\Models\\Property', '5km'),
(2156, 9, 25, 'Botble\\RealEstate\\Models\\Property', '10km'),
(2157, 10, 25, 'Botble\\RealEstate\\Models\\Property', '4km'),
(2158, 11, 25, 'Botble\\RealEstate\\Models\\Property', '12km'),
(2159, 1, 26, 'Botble\\RealEstate\\Models\\Property', '18km'),
(2160, 2, 26, 'Botble\\RealEstate\\Models\\Property', '15km'),
(2161, 3, 26, 'Botble\\RealEstate\\Models\\Property', '7km'),
(2162, 4, 26, 'Botble\\RealEstate\\Models\\Property', '16km'),
(2163, 5, 26, 'Botble\\RealEstate\\Models\\Property', '6km'),
(2164, 6, 26, 'Botble\\RealEstate\\Models\\Property', '4km'),
(2165, 7, 26, 'Botble\\RealEstate\\Models\\Property', '6km'),
(2166, 8, 26, 'Botble\\RealEstate\\Models\\Property', '4km'),
(2167, 9, 26, 'Botble\\RealEstate\\Models\\Property', '3km'),
(2168, 10, 26, 'Botble\\RealEstate\\Models\\Property', '18km'),
(2169, 11, 26, 'Botble\\RealEstate\\Models\\Property', '13km'),
(2170, 1, 27, 'Botble\\RealEstate\\Models\\Property', '2km'),
(2171, 2, 27, 'Botble\\RealEstate\\Models\\Property', '13km'),
(2172, 3, 27, 'Botble\\RealEstate\\Models\\Property', '9km'),
(2173, 4, 27, 'Botble\\RealEstate\\Models\\Property', '3km'),
(2174, 5, 27, 'Botble\\RealEstate\\Models\\Property', '8km'),
(2175, 6, 27, 'Botble\\RealEstate\\Models\\Property', '13km'),
(2176, 7, 27, 'Botble\\RealEstate\\Models\\Property', '7km'),
(2177, 8, 27, 'Botble\\RealEstate\\Models\\Property', '9km'),
(2178, 9, 27, 'Botble\\RealEstate\\Models\\Property', '12km'),
(2179, 10, 27, 'Botble\\RealEstate\\Models\\Property', '12km'),
(2180, 11, 27, 'Botble\\RealEstate\\Models\\Property', '13km'),
(2181, 1, 28, 'Botble\\RealEstate\\Models\\Property', '20km'),
(2182, 2, 28, 'Botble\\RealEstate\\Models\\Property', '12km'),
(2183, 3, 28, 'Botble\\RealEstate\\Models\\Property', '12km'),
(2184, 4, 28, 'Botble\\RealEstate\\Models\\Property', '12km'),
(2185, 5, 28, 'Botble\\RealEstate\\Models\\Property', '7km'),
(2186, 6, 28, 'Botble\\RealEstate\\Models\\Property', '12km'),
(2187, 7, 28, 'Botble\\RealEstate\\Models\\Property', '14km'),
(2188, 8, 28, 'Botble\\RealEstate\\Models\\Property', '20km'),
(2189, 9, 28, 'Botble\\RealEstate\\Models\\Property', '5km'),
(2190, 10, 28, 'Botble\\RealEstate\\Models\\Property', '8km'),
(2191, 11, 28, 'Botble\\RealEstate\\Models\\Property', '7km'),
(2192, 1, 29, 'Botble\\RealEstate\\Models\\Property', '11km'),
(2193, 2, 29, 'Botble\\RealEstate\\Models\\Property', '1km'),
(2194, 3, 29, 'Botble\\RealEstate\\Models\\Property', '18km'),
(2195, 4, 29, 'Botble\\RealEstate\\Models\\Property', '18km'),
(2196, 5, 29, 'Botble\\RealEstate\\Models\\Property', '8km'),
(2197, 6, 29, 'Botble\\RealEstate\\Models\\Property', '10km'),
(2198, 7, 29, 'Botble\\RealEstate\\Models\\Property', '4km'),
(2199, 8, 29, 'Botble\\RealEstate\\Models\\Property', '20km'),
(2200, 9, 29, 'Botble\\RealEstate\\Models\\Property', '4km'),
(2201, 10, 29, 'Botble\\RealEstate\\Models\\Property', '16km'),
(2202, 11, 29, 'Botble\\RealEstate\\Models\\Property', '18km'),
(2203, 1, 30, 'Botble\\RealEstate\\Models\\Property', '10km'),
(2204, 2, 30, 'Botble\\RealEstate\\Models\\Property', '6km'),
(2205, 3, 30, 'Botble\\RealEstate\\Models\\Property', '11km'),
(2206, 4, 30, 'Botble\\RealEstate\\Models\\Property', '4km'),
(2207, 5, 30, 'Botble\\RealEstate\\Models\\Property', '15km'),
(2208, 6, 30, 'Botble\\RealEstate\\Models\\Property', '18km'),
(2209, 7, 30, 'Botble\\RealEstate\\Models\\Property', '18km'),
(2210, 8, 30, 'Botble\\RealEstate\\Models\\Property', '12km'),
(2211, 9, 30, 'Botble\\RealEstate\\Models\\Property', '18km'),
(2212, 10, 30, 'Botble\\RealEstate\\Models\\Property', '18km'),
(2213, 11, 30, 'Botble\\RealEstate\\Models\\Property', '15km'),
(2214, 1, 31, 'Botble\\RealEstate\\Models\\Property', '17km'),
(2215, 2, 31, 'Botble\\RealEstate\\Models\\Property', '2km'),
(2216, 3, 31, 'Botble\\RealEstate\\Models\\Property', '2km'),
(2217, 4, 31, 'Botble\\RealEstate\\Models\\Property', '19km'),
(2218, 5, 31, 'Botble\\RealEstate\\Models\\Property', '5km'),
(2219, 6, 31, 'Botble\\RealEstate\\Models\\Property', '12km'),
(2220, 7, 31, 'Botble\\RealEstate\\Models\\Property', '12km'),
(2221, 8, 31, 'Botble\\RealEstate\\Models\\Property', '11km'),
(2222, 9, 31, 'Botble\\RealEstate\\Models\\Property', '20km'),
(2223, 10, 31, 'Botble\\RealEstate\\Models\\Property', '5km'),
(2224, 11, 31, 'Botble\\RealEstate\\Models\\Property', '10km'),
(2225, 1, 32, 'Botble\\RealEstate\\Models\\Property', '20km'),
(2226, 2, 32, 'Botble\\RealEstate\\Models\\Property', '12km'),
(2227, 3, 32, 'Botble\\RealEstate\\Models\\Property', '17km'),
(2228, 4, 32, 'Botble\\RealEstate\\Models\\Property', '7km'),
(2229, 5, 32, 'Botble\\RealEstate\\Models\\Property', '17km'),
(2230, 6, 32, 'Botble\\RealEstate\\Models\\Property', '5km'),
(2231, 7, 32, 'Botble\\RealEstate\\Models\\Property', '9km'),
(2232, 8, 32, 'Botble\\RealEstate\\Models\\Property', '16km'),
(2233, 9, 32, 'Botble\\RealEstate\\Models\\Property', '5km'),
(2234, 10, 32, 'Botble\\RealEstate\\Models\\Property', '5km'),
(2235, 11, 32, 'Botble\\RealEstate\\Models\\Property', '4km'),
(2236, 1, 33, 'Botble\\RealEstate\\Models\\Property', '20km'),
(2237, 2, 33, 'Botble\\RealEstate\\Models\\Property', '20km'),
(2238, 3, 33, 'Botble\\RealEstate\\Models\\Property', '10km'),
(2239, 4, 33, 'Botble\\RealEstate\\Models\\Property', '1km'),
(2240, 5, 33, 'Botble\\RealEstate\\Models\\Property', '19km'),
(2241, 6, 33, 'Botble\\RealEstate\\Models\\Property', '15km'),
(2242, 7, 33, 'Botble\\RealEstate\\Models\\Property', '3km'),
(2243, 8, 33, 'Botble\\RealEstate\\Models\\Property', '6km'),
(2244, 9, 33, 'Botble\\RealEstate\\Models\\Property', '6km'),
(2245, 10, 33, 'Botble\\RealEstate\\Models\\Property', '15km'),
(2246, 11, 33, 'Botble\\RealEstate\\Models\\Property', '18km'),
(2247, 1, 34, 'Botble\\RealEstate\\Models\\Property', '20km'),
(2248, 2, 34, 'Botble\\RealEstate\\Models\\Property', '16km'),
(2249, 3, 34, 'Botble\\RealEstate\\Models\\Property', '14km'),
(2250, 4, 34, 'Botble\\RealEstate\\Models\\Property', '6km'),
(2251, 5, 34, 'Botble\\RealEstate\\Models\\Property', '4km'),
(2252, 6, 34, 'Botble\\RealEstate\\Models\\Property', '3km'),
(2253, 7, 34, 'Botble\\RealEstate\\Models\\Property', '19km'),
(2254, 8, 34, 'Botble\\RealEstate\\Models\\Property', '15km'),
(2255, 9, 34, 'Botble\\RealEstate\\Models\\Property', '4km'),
(2256, 10, 34, 'Botble\\RealEstate\\Models\\Property', '8km'),
(2257, 11, 34, 'Botble\\RealEstate\\Models\\Property', '7km');

-- --------------------------------------------------------

--
-- Table structure for table `re_features`
--

CREATE TABLE `re_features` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `icon` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `re_features`
--

INSERT INTO `re_features` (`id`, `name`, `status`, `icon`) VALUES
(1, 'Wifi', 'published', 'fas fa-wifi'),
(2, 'Swimming pool', 'published', 'fas fa-swimmer'),
(3, 'Balcony', 'published', NULL),
(4, 'Terrace', 'published', NULL),
(5, 'Parking', 'published', 'fas fa-parking'),
(6, 'Garden', 'published', NULL),
(7, 'Security', 'published', 'fas fa-user-secret'),
(8, 'Fitness center', 'published', 'fas fa-dumbbell'),
(9, 'Trung tâm thể hình', 'published', 'fas fa-dumbbell'),
(10, 'Bảo vệ', 'published', 'fas fa-user-secret'),
(11, 'Sân vườn', 'published', NULL),
(12, 'Bãi đỗ xe', 'published', 'fas fa-parking'),
(13, 'Hàng rào', 'published', NULL),
(14, 'Ban công', 'published', NULL),
(15, 'Hồ bơi', 'published', 'fas fa-swimmer'),
(16, 'Wifi', 'published', 'fas fa-wifi');

-- --------------------------------------------------------

--
-- Table structure for table `re_investors`
--

CREATE TABLE `re_investors` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `re_investors`
--

INSERT INTO `re_investors` (`id`, `name`, `status`, `created_at`, `updated_at`) VALUES
(1, 'National Pension Service', 'published', '2019-11-18 01:16:23', '2019-11-18 01:16:23'),
(2, 'Generali', 'published', '2019-11-18 01:16:47', '2019-11-18 01:16:47'),
(3, 'Temasek', 'published', '2019-11-18 01:16:57', '2019-11-18 01:16:57'),
(4, 'China Investment Corporation', 'published', '2019-11-18 01:17:11', '2019-11-18 01:17:11'),
(5, 'Government Pension Fund Global', 'published', '2019-11-18 01:17:35', '2019-11-18 01:17:35'),
(6, 'PSP Investments', 'published', '2019-11-18 01:17:47', '2019-11-18 01:17:47'),
(7, 'MEAG Munich ERGO', 'published', '2019-11-18 01:17:57', '2019-11-18 01:17:57'),
(8, 'HOOPP', 'published', '2019-11-18 01:18:08', '2019-11-18 01:18:08'),
(9, 'BT Group', 'published', '2019-11-18 01:18:21', '2019-11-18 01:18:21'),
(10, 'Ping An', 'published', '2019-11-18 01:18:32', '2019-11-18 01:18:32'),
(11, 'New Jersey Division of Investment', 'published', '2019-11-18 01:18:45', '2019-11-18 01:18:45'),
(12, 'New York City ERS', 'published', '2019-11-18 01:18:57', '2019-11-18 01:18:57'),
(13, 'State Super', 'published', '2019-11-18 01:19:10', '2019-11-18 01:19:10'),
(14, 'Shinkong', 'published', '2019-11-18 01:19:20', '2019-11-18 01:19:20'),
(15, 'Rest Super', 'published', '2019-11-18 01:19:31', '2019-11-18 01:19:31'),
(16, 'Rest Super', 'published', '2019-11-21 01:50:47', '2019-11-21 01:50:47'),
(17, 'Shinkong', 'published', '2019-11-21 01:51:03', '2019-11-21 01:51:03'),
(18, 'State Super', 'published', '2019-11-21 01:51:21', '2019-11-21 01:51:21'),
(19, 'New York City ERS', 'published', '2019-11-21 01:51:33', '2019-11-21 01:51:33'),
(20, 'New Jersey Division of Investment', 'published', '2019-11-21 01:51:51', '2019-11-21 01:51:51'),
(21, 'Ping An', 'published', '2019-11-21 01:52:04', '2019-11-21 01:52:04'),
(22, 'BT Group', 'published', '2019-11-21 01:52:16', '2019-11-21 01:52:16'),
(23, 'HOOPP', 'published', '2019-11-21 01:52:28', '2019-11-21 01:52:28'),
(24, 'MEAG Munich ERGO', 'published', '2019-11-21 01:52:47', '2019-11-21 01:52:47'),
(25, 'PSP Investments', 'published', '2019-11-21 01:52:57', '2019-11-21 01:52:57'),
(26, 'Government Pension Fund Global', 'published', '2019-11-21 01:53:18', '2019-11-21 01:53:18'),
(27, 'China Investment Corporation', 'published', '2019-11-21 01:53:33', '2019-11-21 01:53:33'),
(29, 'Temasek', 'published', '2019-11-21 01:53:48', '2019-11-21 01:53:48'),
(30, 'Generali', 'published', '2019-11-21 01:54:01', '2019-11-21 01:54:01'),
(31, 'National Pension Service', 'published', '2019-11-21 01:54:14', '2019-11-21 01:54:14');

-- --------------------------------------------------------

--
-- Table structure for table `re_packages`
--

CREATE TABLE `re_packages` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` double(15,2) UNSIGNED NOT NULL,
  `currency_id` int(10) UNSIGNED NOT NULL,
  `number_of_listings` int(10) UNSIGNED NOT NULL,
  `order` tinyint(4) NOT NULL DEFAULT '0',
  `is_default` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `percent_save` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `account_limit` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `re_packages`
--

INSERT INTO `re_packages` (`id`, `name`, `price`, `currency_id`, `number_of_listings`, `order`, `is_default`, `status`, `created_at`, `updated_at`, `percent_save`, `account_limit`) VALUES
(1, 'Free First Post', 0.00, 1, 1, 0, 0, 'published', '2020-11-17 03:09:35', '2020-11-17 03:09:35', 0, 1),
(2, 'Single Post', 250.00, 1, 1, 0, 1, 'published', '2020-11-17 03:09:35', '2020-11-17 03:09:35', 0, NULL),
(3, '5 Posts', 1000.00, 1, 5, 0, 0, 'published', '2020-11-17 03:09:35', '2020-11-17 03:09:35', 20, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `re_projects`
--

CREATE TABLE `re_projects` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(300) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci,
  `images` text COLLATE utf8mb4_unicode_ci,
  `location` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `number_block` smallint(5) UNSIGNED DEFAULT NULL,
  `number_floor` smallint(6) DEFAULT NULL,
  `number_flat` smallint(6) DEFAULT NULL,
  `is_featured` tinyint(1) NOT NULL DEFAULT '0',
  `date_finish` date DEFAULT NULL,
  `date_sell` date DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'selling',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `investor_id` int(10) UNSIGNED NOT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price_from` decimal(15,0) DEFAULT NULL,
  `price_to` decimal(15,0) DEFAULT NULL,
  `currency_id` int(10) UNSIGNED DEFAULT NULL,
  `city_id` int(10) UNSIGNED DEFAULT NULL,
  `author_id` int(11) DEFAULT NULL,
  `author_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Botble\\ACL\\Models\\User',
  `category_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `re_projects`
--

INSERT INTO `re_projects` (`id`, `name`, `content`, `images`, `location`, `number_block`, `number_floor`, `number_flat`, `is_featured`, `date_finish`, `date_sell`, `status`, `created_at`, `updated_at`, `investor_id`, `description`, `price_from`, `price_to`, `currency_id`, `city_id`, `author_id`, `author_type`, `category_id`) VALUES
(1, 'Walnut Park Apartments', '<p>Now Open &amp; Leasing!</p>\r\n\r\n<p>Walnut Park is conveniently located on North Lamar Boulevard across from the 293-acre Walnut Creek Metropolitan Park and just south of Yager Lane near numerous shops and restaurants. Only 11 miles from downtown Austin, the heavily-wooded site borders Walnut Creek and offers residents inspiring views in an unparalleled, secluded community. In addition to resort spa amenities, the interiors are built and designed to condominium specifications with energy efficient features, stunning detail and upgraded finishes.</p>', '[\"projects\\/1.jpg\",\"projects\\/5.jpg\",\"projects\\/3.jpg\",\"projects\\/2.jpg\"]', 'Austin, Texas 78753, USA', 4, 2, 50, 1, '2019-11-10', '2019-03-11', 'selling', '2019-11-18 00:34:49', '2020-11-17 03:09:35', 12, 'Walnut Park is conveniently located on North Lamar Boulevard across from the 293-acre Walnut Creek Metropolitan Park and just south of Yager Lane near numerous shops and restaurants. Only 11 miles from downtown Austin, the heavily-wooded site borders Walnut Creek and offers residents inspiring views in an unparalleled, secluded community', NULL, NULL, 1, 4, NULL, 'Botble\\ACL\\Models\\User', 4),
(2, 'Osaka Heights', '<p>Osaka Heights is a state of the art apartment crafted with elegance, comfort and classiness.</p>\r\n\r\n<p>The grander apartments add new heights to the life of people in Colombo, Sri Lanka.</p>\r\n\r\n<p>Devised by a team of international consultants, Osaka Heights is all about contemporary design and comprehensive attention to detail in execution. If you are interested to own a luxury apartment at Sri Lanka, Osaka Heights is the best choice. The foundation of Osaka Heights is laid by skilled professionals, who capture your vision completely. The construction is built as per your elegant lifestyles, without any compromise in quality and class.</p>\r\n\r\n<p>The homes come with all comfy amenities and facilities for a superior life. From the panoramic views, the rooftop swimming pool and the landscaped eco-balconies, beauty meets you at every step in Osaka Heights. Made for an exclusive few, Osaka Heights gives you the advantage of sharing a space with like-minded individuals. An elevated lifestyle naturally follows, making Osaka Heights one of the most sought-after addresses in Colombo.</p>', '[\"projects\\/21.jpg\",\"projects\\/24.jpg\",\"projects\\/23.jpg\",\"projects\\/25.jpg\",\"projects\\/26.jpg\",\"projects\\/22.jpg\"]', 'Kirulapone, Colombo 06, Colombo, Sri Lanka', 1, 15, 450, 1, '2019-08-09', '2019-08-10', 'selling', '2019-11-18 01:28:45', '2020-11-17 03:09:35', 3, 'The homes come with all comfy amenities and facilities for a superior life. From the panoramic views, the rooftop swimming pool and the landscaped eco-balconies, beauty meets you at every step in Osaka Heights. Made for an exclusive few, Osaka Heights gives you the advantage of sharing a space with like-minded individuals.', NULL, NULL, 1, 3, NULL, 'Botble\\ACL\\Models\\User', 2),
(3, 'Mimaroba Paradise', '<h2><b>Why you should buy a house from this project?</b></h2>\r\n\r\n<ul>\r\n	<li>1. A summerhouse in the center of the city.</li>\r\n	<li>2. Remove the boundaries between you and the sea, you will be surrounded by blue sea.</li>\r\n	<li>3.&nbsp;Everything you have imagined - from infinity pool, zen garden, gourmet restaurant to thematic playgrounds awaiting you.</li>\r\n	<li>4.&nbsp;A unique design that makes luxury a habit, a wide variety of apartment plan options.</li>\r\n	<li>5.&nbsp;Reasonable payment options, affordable prices in Istanbul&#39;s most exclusive area.</li>\r\n</ul>\r\n\r\n<p>&lsquo;&rsquo; Mimaroba&rsquo;&rsquo; a modern beach district away from the bustle of Istanbul.&nbsp;The aim of the project is to make a living feel for the hosts in the deepest way.&nbsp;In this project you can enjoy a life with the sea and you can have a holiday for 12 months with social facilities and activities.&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</p>', '[\"projects\\/13.jpg\",\"projects\\/12.jpg\",\"projects\\/11.jpg\",\"projects\\/14.jpg\"]', 'Texas, USA', 2, 16, 327, 1, '2020-06-09', '2019-09-10', 'selling', '2019-11-18 03:30:34', '2020-11-17 03:09:35', 15, 'A summerhouse in the center of the city. Remove the boundaries between you and the sea, you will be surrounded by blue sea. Everything you have imagined - from infinity pool, zen garden, gourmet restaurant to thematic playgrounds awaiting you. A unique design that makes luxury a habit, a wide variety of apartment plan options.', NULL, NULL, 1, 1, NULL, 'Botble\\ACL\\Models\\User', 1),
(4, 'Aegean Villas', '<h2><strong>Aegean Villas</strong></h2>\r\n\r\n<p>Looks like Aegean town and be one of the highest rated sites in the region. A very large area of 312.000sqm&nbsp; has only 144 villas. Each villa&rsquo;s garden is independent of one another and protects private life. There are 400 adult olive trees in the common area landscape. Strengthening of neighborly relations with common sharing points such as open air cinema, village coffee, market.&nbsp; Increase the living motivation with 2,5km walking and cycling trail, tennis courts and carpet right activities.&nbsp; &nbsp; &nbsp; &nbsp;</p>\r\n\r\n<h4><strong>Why you should buy a house from this project?</strong></h4>\r\n\r\n<ul>\r\n	<li>1. Natural Architectural design.</li>\r\n	<li>2. Highest session rate in the region</li>\r\n	<li>3. Common sharing areas like open air cinema and village cafe.</li>\r\n	<li>4. 2,5km walking and cycling trail.</li>\r\n	<li>5. The gardens are detached and useful.</li>\r\n</ul>', '[\"properties\\/a5-1.jpg\",\"properties\\/a6-1.jpg\",\"properties\\/a7.jpg\",\"properties\\/a8.jpg\",\"properties\\/a10.jpg\",\"properties\\/a9.jpg\"]', 'Büyükçekmece, İstanbul, Turkey', 5, 2, 144, 1, '2020-06-09', '2020-10-04', 'selling', '2019-11-18 03:38:13', '2020-11-17 03:09:35', 11, 'A very large area of 312.000sqm  has only 144 villas. Each villa’s garden is independent of one another and protects private life. There are 400 adult olive trees in the common area landscape. Strengthening of neighborly relations with common sharing points such as open air cinema, village coffee, market.', NULL, NULL, 1, 2, NULL, 'Botble\\ACL\\Models\\User', 1),
(5, 'Aydos Forest Apartments', '<p>The project, which offers unique opportunities for those who want to move into their new home, is the most advantageous housing project of the location with its easy payment options according to your budget. In your new home you will have a live site life with 90% occupancy; The <strong>clean air</strong> of Aydos Forest, the most important social facility of the region with <strong>3,700 sqm</strong> which brings enjoyable social activities to your feet, and much more are waiting for you. You will live a life with nature thanks to the artificial lake and cherry trees in the project as well as the landscape of Aydos Forest. and bacause of its easy connection to the main roads, you can easily reach the important centers of Istanbul.</p>\r\n\r\n<h4><b>Why you should buy a house from this project?</b></h4>\r\n\r\n<ul>\r\n	<li>1.&nbsp;Ready for delivery.</li>\r\n	<li>2.&nbsp;82% open area of landscape.</li>\r\n	<li>3.&nbsp;Aydos forest is right next to the project.</li>\r\n	<li>4.&nbsp;More than 90% of the project is occupied and full of life.</li>\r\n	<li>5. Ease of transportation.</li>\r\n</ul>', '[\"properties\\/q1.jpg\",\"properties\\/q2.jpg\",\"properties\\/q8.jpg\",\"properties\\/q7.jpg\",\"properties\\/q3.jpg\",\"properties\\/q6.jpg\"]', 'Sancaktepe/İstanbul, Turkey', 4, 18, 1394, 1, '2019-10-30', '2019-07-21', 'selling', '2019-11-18 03:45:06', '2020-11-17 03:09:35', 2, 'You will have a live site life with 90% occupancy; The clean air of Aydos Forest, the most important social facility of the region with 3,700 sqm which brings enjoyable social activities to your feet, and much more are waiting for you. You will live a life with nature thanks to the artificial lake and cherry trees in the project as', NULL, NULL, 1, 3, NULL, 'Botble\\ACL\\Models\\User', 3),
(6, 'The Avila Apartments', '<p>A profoundly special project amidst history and Istanbul. In the heart of the Historical Peninsula, Select Lifestyle Alternatives ranging from 1+1 to 6+1, in limited numbers&hellip;. A timeless aesthetic enriched in perfect details .</p>\r\n\r\n<h4><b>Why you should buy a house from this project?</b></h4>\r\n\r\n<ul>\r\n	<li>1.&nbsp;Within the historical peninsula, there is a very special area where you will never find a similar one.</li>\r\n	<li>2.&nbsp;Unique sea view with a historical texture of Istanbul.</li>\r\n	<li>3.&nbsp;In the bustling city life, in the middle of all transportation possibilities.</li>\r\n	<li>4. 1+1 to 6+1 very special, suitable for all needs loft apartments</li>\r\n	<li>5.Large landscaping areas, cafes, shopping opportunities.</li>\r\n</ul>', '[\"properties\\/e1.jpg\",\"properties\\/e2.jpg\",\"properties\\/e3.jpg\",\"properties\\/e4.jpg\",\"properties\\/e5.jpg\",\"properties\\/e7.jpg\",\"properties\\/e8.jpg\"]', 'Singapore Island, Singapore', 2, 4, 125, 1, '2019-11-19', '2019-03-11', 'selling', '2019-11-18 03:53:20', '2020-11-17 03:09:35', 10, 'Within the historical peninsula, there is a very special area where you will never find a similar one. Unique sea view with a historical texture of Istanbul. In the bustling city life, in the middle of all transportation possibilities. Large landscaping areas, cafes, shopping opportunities.', NULL, NULL, 1, 5, NULL, 'Botble\\ACL\\Models\\User', 6),
(7, 'Căn hộ Walnut Park', '<p>Mở b&aacute;n&nbsp;v&agrave; cho thu&ecirc;!</p>\r\n\r\n<p>Walnut Park tọa lạc tại vị tr&iacute; thuận tiện tr&ecirc;n Đại lộ Bắc Lamar đối diện C&ocirc;ng vi&ecirc;n Th&agrave;nh phố Walnut Creek rộng 293 mẫu v&agrave; ngay ph&iacute;a nam của Yager Lane gần nhiều cửa h&agrave;ng v&agrave; nh&agrave; h&agrave;ng. Chỉ c&oacute; 11 dặm từ trung t&acirc;m th&agrave;nh phố Austin, khu căn hộ&nbsp;n&agrave;y gồm c&aacute;c khu&ocirc;n vi&ecirc;n nhiều c&acirc;y cối gi&aacute;p Walnut Creek v&agrave; những quang cảnh tuyệt vời. Ngo&agrave;i c&aacute;c tiện nghi spa của khu nghỉ m&aacute;t, nội thất được x&acirc;y dựng v&agrave; thiết kế theo th&ocirc;ng số kỹ thuật của nh&agrave; chung cư với c&aacute;c t&iacute;nh năng tiết kiệm năng lượng, chi tiết tuyệt đẹp v&agrave; ho&agrave;n thiện n&acirc;ng cấp.</p>', '[\"projects\\/1.jpg\",\"projects\\/5.jpg\",\"projects\\/3.jpg\",\"projects\\/2.jpg\"]', 'Austin, Texas 78753, USA', 4, 2, 50, 1, '2019-11-10', '2019-03-11', 'selling', '2019-11-21 01:54:36', '2020-11-17 03:09:35', 19, 'Walnut Park tọa lạc tại vị trí thuận tiện trên Đại lộ Bắc Lamar đối diện Công viên Thành phố Walnut Creek rộng 293 mẫu và ngay phía nam của Yager Lane gần nhiều cửa hàng và nhà hàng. Chỉ có 11 dặm từ trung tâm thành phố Austin, khu căn hộ này gồm các khuôn viên nhiều cây cối giáp Walnut Creek và những quang cảnh tuyệt vời', NULL, NULL, 2, 3, NULL, 'Botble\\ACL\\Models\\User', 2),
(8, 'Dự án Osaka Heights', '<p>Osaka Heights l&agrave; một khu căn hộ nghệ thuật được chế t&aacute;c với sự sang trọng, tiện nghi v&agrave; đẳng cấp.<br />\r\nC&aacute;c căn hộ lớn hơn tạo th&ecirc;m một tầm cao mới cho cuộc sống của người d&acirc;n ở thủ đ&ocirc; Colombo, Sri Lanka.<br />\r\nĐược tạo ra bởi một nh&oacute;m c&aacute;c nh&agrave; tư vấn quốc tế, Osaka Heights l&agrave; tất cả về thiết kế hiện đại v&agrave; sự ch&uacute; &yacute; to&agrave;n diện đến từng chi tiết trong thực hiện. V&igrave; vậy việc sở hữu một căn hộ cao cấp tại Sri Lanka, Osaka Heights l&agrave; lựa chọn tốt nhất. Nền tảng của Osaka Heights được đặt bởi c&aacute;c chuy&ecirc;n gia l&agrave;nh nghề, những người nắm bắt ho&agrave;n to&agrave;n tầm nh&igrave;n của bạn. C&ocirc;ng tr&igrave;nh được x&acirc;y dựng theo lối sống thanh lịch, chất lượng v&agrave; đẳng cấp.<br />\r\nC&aacute;c ng&ocirc;i nh&agrave; đi k&egrave;m với tất cả c&aacute;c tiện nghi v&agrave; tiện nghi thoải m&aacute;i cho một cuộc sống cao cấp. Từ g&oacute;c nh&igrave;n to&agrave;n cảnh, hồ bơi tr&ecirc;n s&acirc;n thượng v&agrave; ban c&ocirc;ng sinh th&aacute;i c&oacute; cảnh quan, vẻ đẹp sẽ gặp bạn ở mọi bước ch&acirc;n ở Osaka Heights. Tạo ra một kh&ocirc;ng gian ri&ecirc;ng biệt, Osaka Heights mang đến cho bạn lợi thế chia sẻ kh&ocirc;ng gian với những người c&oacute; c&ugrave;ng đẳng cấp. Một lối sống n&acirc;ng cao tự nhi&ecirc;n, l&agrave;m cho Osaka Heights trở th&agrave;nh một trong những địa chỉ được t&igrave;m kiếm nhiều nhất ở Colombo.</p>', '[\"projects\\/21.jpg\",\"projects\\/24.jpg\",\"projects\\/23.jpg\",\"projects\\/25.jpg\",\"projects\\/26.jpg\",\"projects\\/22.jpg\"]', 'Kirulapone, Colombo 06, Colombo, Sri Lanka', 1, 15, 450, 1, '2019-08-09', '2019-08-10', 'selling', '2019-11-21 02:28:09', '2020-11-17 03:09:35', 29, 'Các ngôi nhà đi kèm với tất cả các tiện nghi và tiện nghi thoải mái cho một cuộc sống cao cấp. Từ góc nhìn toàn cảnh, hồ bơi trên sân thượng và ban công sinh thái có cảnh quan, vẻ đẹp sẽ gặp bạn ở mọi bước chân ở Osaka Heights. Tạo ra một không gian riêng biệt, Osaka Heights mang đến cho bạn lợi thế chia sẻ không gian với những người có cùng đẳng cấp.', NULL, NULL, 2, 5, NULL, 'Botble\\ACL\\Models\\User', 6),
(9, 'Thiên đường Mimaroba', '<p>Tại sao bạn n&ecirc;n mua một ng&ocirc;i nh&agrave; từ dự &aacute;n n&agrave;y?<br />\r\n1. Một ng&ocirc;i nh&agrave; m&ugrave;a h&egrave; ở trung t&acirc;m th&agrave;nh phố.<br />\r\n2. X&oacute;a bỏ ranh giới giữa bạn v&agrave; biển, bạn sẽ được bao quanh bởi biển xanh.<br />\r\n3. Mọi thứ giống như bạn đ&atilde; tưởng tượng - từ hồ bơi v&ocirc; cực, vườn thiền, nh&agrave; h&agrave;ng chuy&ecirc;n phục vụ người s&agrave;nh ăn đến c&aacute;c s&acirc;n chơi theo chủ đề đang chờ bạn.<br />\r\n4. Một thiết kế độc đ&aacute;o l&agrave;m cho sự sang trọng trở th&agrave;nh một th&oacute;i quen, một loạt c&aacute;c lựa chọn kế hoạch căn hộ.<br />\r\n5. T&ugrave;y chọn thanh to&aacute;n hợp l&yacute;, gi&aacute; cả phải chăng trong khu vực độc quyền nhất của Istanbul.<br />\r\nMimaroba ở khu vực b&atilde;i biển hiện đại c&aacute;ch xa sự nhộn nhịp của Istanbul. Mục đ&iacute;ch của dự &aacute;n l&agrave; tạo cảm gi&aacute;c sống động cho chủ nh&agrave; một c&aacute;ch s&acirc;u sắc nhất. Trong dự &aacute;n n&agrave;y, bạn c&oacute; thể tận hưởng một cuộc sống với biển v&agrave; bạn c&oacute; thể c&oacute; một kỳ nghỉ trong 12 th&aacute;ng với c&aacute;c hoạt động v&agrave; tiện &iacute;ch x&atilde; hội.</p>', '[\"projects\\/13.jpg\",\"projects\\/12.jpg\",\"projects\\/11.jpg\",\"projects\\/14.jpg\"]', 'Texas, USA', 2, 16, 327, 1, '2020-06-09', '2019-09-10', 'selling', '2019-11-21 02:40:25', '2020-11-17 03:09:35', 16, 'Một ngôi nhà mùa hè ở trung tâm thành phố. Xóa bỏ ranh giới giữa bạn và biển, bạn sẽ được bao quanh bởi biển xanh. Mọi thứ giống như bạn đã tưởng tượng - từ hồ bơi vô cực, vườn thiền, nhà hàng chuyên phục vụ người sành ăn đến các sân chơi theo chủ đề đang chờ bạn. Một thiết kế độc đáo làm cho sự sang trọng trở thành một thói quen, một loạt các lựa chọn kế hoạch căn hộ.', NULL, NULL, 2, 4, NULL, 'Botble\\ACL\\Models\\User', 1),
(10, 'Khu biệt thự Aegean', '<p>Biệt thự Aegean tr&ocirc;ng giống như thị trấn Aegean v&agrave; l&agrave; một trong những khu biệt thự được đ&aacute;nh gi&aacute; cao nhất trong khu vực. Một diện t&iacute;ch rất lớn với diện t&iacute;ch 312.000m2 chỉ c&oacute; 144 biệt thự. Mỗi biệt thự vườn độc lập với nhau v&agrave; bảo vệ cuộc sống ri&ecirc;ng tư. C&oacute; 400 c&acirc;y &ocirc; liu trưởng th&agrave;nh trong cảnh quan khu vực chung. Tăng cường mối quan hệ l&aacute;ng giềng với c&aacute;c điểm chia sẻ chung như rạp chiếu phim ngo&agrave;i trời, c&agrave; ph&ecirc; l&agrave;ng, chợ. Tăng động lực sống với 2,5km đi bộ v&agrave; đi xe đạp, s&acirc;n tennis v&agrave; thảm hoạt động.</p>\r\n\r\n<h4><strong>Tại sao bạn n&ecirc;n mua ng&ocirc;i nh&agrave; từ dự &aacute;n n&agrave;y?</strong></h4>\r\n\r\n<p><br />\r\n1. Thiết kế kiến tr&uacute;c tự nhi&ecirc;n.<br />\r\n2. Tỷ lệ quản l&yacute; cao nhất trong khu vực<br />\r\n3. Khu vực chia sẻ chung như rạp chiếu phim ngo&agrave;i trời v&agrave; qu&aacute;n c&agrave; ph&ecirc; l&agrave;ng.<br />\r\n4. Đường đi bộ v&agrave; đi xe đạp 2,5km.<br />\r\n5. C&aacute;c khu vườn được t&aacute;ch ra v&agrave; hữu &iacute;ch.</p>', '[\"properties\\/a5-1.jpg\",\"properties\\/a6-1.jpg\",\"properties\\/a7.jpg\",\"properties\\/a8.jpg\",\"properties\\/a10.jpg\",\"properties\\/a9.jpg\"]', 'Büyükçekmece, İstanbul, Turkey', 5, 2, 144, 1, '2020-06-09', '2020-10-04', 'selling', '2019-11-21 02:58:55', '2020-10-30 22:52:14', 20, 'Một diện tích rất lớn với diện tích 312.000m2 chỉ có 144 biệt thự. Mỗi biệt thự vườn độc lập với nhau và bảo vệ cuộc sống riêng tư. Có 400 cây ô liu trưởng thành trong cảnh quan khu vực chung. Tăng cường mối quan hệ láng giềng với các điểm chia sẻ chung như rạp chiếu phim ngoài trời, cà phê làng, chợ.', NULL, NULL, 2, 4, NULL, 'Botble\\ACL\\Models\\User', 6),
(11, 'Chung cư rừng Aydos', '<p>Dự &aacute;n, mang đến cơ hội duy nhất cho những ai muốn chuyển đến ng&ocirc;i nh&agrave; mới của họ, l&agrave; dự &aacute;n nh&agrave; ở thuận lợi nhất của địa điểm với c&aacute;c t&ugrave;y chọn thanh to&aacute;n dễ d&agrave;ng theo ng&acirc;n s&aacute;ch của bạn. Trong ng&ocirc;i nh&agrave; mới của bạn, bạn sẽ c&oacute; một cuộc sống trong khu chung cư với tỷ lệ lấp đầy 90% l&agrave; kh&ocirc;ng kh&iacute; trong l&agrave;nh của Rừng Aydos với 3.700 m2, mang lại c&aacute;c hoạt động th&uacute; vị cho đ&ocirc;i ch&acirc;n của bạn, v&agrave; c&ograve;n nhiều điều nữa đang chờ đợi bạn. Bạn sẽ sống một cuộc sống với thi&ecirc;n nhi&ecirc;n nhờ hồ nh&acirc;n tạo v&agrave; c&acirc;y anh đ&agrave;o trong dự &aacute;n cũng như cảnh quan của Rừng Aydos. V&agrave; bởi v&igrave; kết nối dễ d&agrave;ng với c&aacute;c con đường ch&iacute;nh, bạn c&oacute; thể dễ d&agrave;ng đến c&aacute;c trung t&acirc;m quan trọng của Istanbul.</p>\r\n\r\n<h4><strong>Tại sao bạn n&ecirc;n mua ng&ocirc;i nh&agrave; từ dự &aacute;n n&agrave;y?</strong></h4>\r\n\r\n<p>1. Sẵn s&agrave;ng giao nh&agrave;.<br />\r\n2. 82% diện t&iacute;ch l&agrave; cảnh quan.<br />\r\n3. Rừng Aydos nằm ngay cạnh dự &aacute;n.<br />\r\n4. Đ&atilde; b&agrave;n giao hơn 90% dự &aacute;n.<br />\r\n5. Dễ vận chuyển.</p>', '[\"properties\\/q1.jpg\",\"properties\\/q2.jpg\",\"properties\\/q8.jpg\",\"properties\\/q7.jpg\",\"properties\\/q3.jpg\",\"properties\\/q6.jpg\"]', 'Sancaktepe/İstanbul, Turkey', 4, 18, 1394, 1, '2019-10-30', '2019-07-21', 'selling', '2019-11-21 03:16:25', '2020-11-17 03:09:35', 30, 'Bạn sẽ có một cuộc sống trong khu chung cư với tỷ lệ lấp đầy 90% là không khí trong lành của Rừng Aydos với 3.700 m2, mang lại các hoạt động thú vị cho đôi chân của bạn, và còn nhiều điều nữa đang chờ đợi bạn. Bạn sẽ sống một cuộc sống với thiên nhiên nhờ hồ nhân tạo và cây anh đào trong dự án cũng như cảnh quan của Rừng Aydos.', NULL, NULL, 2, 4, NULL, 'Botble\\ACL\\Models\\User', 1),
(12, 'Khu chung cư The Avila', '<p>Một dự &aacute;n đặc biệt s&acirc;u sắc giữa lịch sử v&agrave; Istanbul. Ở trung t&acirc;m của b&aacute;n đảo lịch sử.&nbsp;<br />\r\nMột thẩm mỹ vượt thời gian l&agrave;m phong ph&uacute; trong c&aacute;c chi tiết ho&agrave;n hảo.</p>\r\n\r\n<h4><strong>Tại sao bạn n&ecirc;n mua một ng&ocirc;i nh&agrave; từ dự &aacute;n n&agrave;y?</strong></h4>\r\n\r\n<p>1. Trong b&aacute;n đảo lịch sử, c&oacute; một khu vực rất đặc biệt, nơi bạn sẽ kh&ocirc;ng bao giờ t&igrave;m thấy một khu vực tương tự.<br />\r\n2. Cảnh biển độc đ&aacute;o với kết cấu lịch sử của Istanbul.<br />\r\n3. Trong cuộc sống th&agrave;nh phố nhộn nhịp, ở giữa mọi khả năng giao th&ocirc;ng.<br />\r\n4. 1 + 1 đến 6 + 1 rất đặc biệt, ph&ugrave; hợp với mọi nhu cầu căn hộ g&aacute;c x&eacute;p<br />\r\n5. Khu vực cảnh quan rộng lớn, qu&aacute;n c&agrave; ph&ecirc;, cơ hội mua sắm.</p>', '[\"properties\\/e1.jpg\",\"properties\\/e2.jpg\",\"properties\\/e3.jpg\",\"properties\\/e4.jpg\",\"properties\\/e5.jpg\",\"properties\\/e7.jpg\",\"properties\\/e8.jpg\"]', 'Singapore Island, Singapore', 2, 4, 125, 1, '2019-11-19', '2019-03-11', 'selling', '2019-11-21 03:25:22', '2020-11-17 03:09:35', 21, 'Trong bán đảo lịch sử, có một khu vực rất đặc biệt, nơi bạn sẽ không bao giờ tìm thấy một khu vực tương tự. Cảnh biển độc đáo với kết cấu lịch sử của Istanbul. Trong cuộc sống thành phố nhộn nhịp, ở giữa mọi khả năng giao thông. Khu vực cảnh quan rộng lớn, quán cà phê, cơ hội mua sắm.', NULL, NULL, 2, 1, NULL, 'Botble\\ACL\\Models\\User', 1);

-- --------------------------------------------------------

--
-- Table structure for table `re_project_features`
--

CREATE TABLE `re_project_features` (
  `project_id` int(10) UNSIGNED NOT NULL,
  `feature_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `re_project_features`
--

INSERT INTO `re_project_features` (`project_id`, `feature_id`) VALUES
(2, 1),
(2, 2),
(2, 3),
(2, 5),
(2, 7),
(2, 8),
(1, 1),
(1, 2),
(1, 4),
(1, 5),
(1, 7),
(7, 10),
(7, 12),
(7, 13),
(7, 15),
(7, 16),
(8, 9),
(8, 10),
(8, 12),
(8, 14),
(8, 15),
(8, 16),
(3, 1),
(3, 2),
(3, 3),
(3, 5),
(3, 7),
(9, 10),
(9, 12),
(9, 14),
(9, 15),
(9, 16),
(4, 1),
(4, 4),
(4, 5),
(4, 6),
(4, 7),
(10, 10),
(10, 11),
(10, 12),
(10, 13),
(10, 16),
(5, 1),
(5, 3),
(5, 5),
(5, 6),
(5, 7),
(5, 8),
(11, 9),
(11, 10),
(11, 11),
(11, 12),
(11, 14),
(11, 16),
(6, 1),
(6, 3),
(6, 5),
(6, 6),
(6, 7),
(12, 10),
(12, 11),
(12, 12),
(12, 14),
(12, 16);

-- --------------------------------------------------------

--
-- Table structure for table `re_properties`
--

CREATE TABLE `re_properties` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(300) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `location` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `images` text COLLATE utf8mb4_unicode_ci,
  `project_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `number_bedroom` smallint(5) UNSIGNED DEFAULT NULL,
  `number_bathroom` smallint(5) UNSIGNED DEFAULT NULL,
  `number_floor` smallint(5) UNSIGNED DEFAULT NULL,
  `square` int(11) DEFAULT NULL,
  `price` decimal(15,0) DEFAULT NULL,
  `price_unit` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_featured` tinyint(1) NOT NULL DEFAULT '0',
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'selling',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'sale',
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `currency_id` int(10) UNSIGNED DEFAULT NULL,
  `city_id` int(10) UNSIGNED DEFAULT NULL,
  `period` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'month',
  `author_id` int(11) DEFAULT NULL,
  `author_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Botble\\ACL\\Models\\User',
  `category_id` int(10) UNSIGNED NOT NULL,
  `moderation_status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `expire_date` date DEFAULT NULL,
  `auto_renew` tinyint(1) NOT NULL DEFAULT '0',
  `never_expired` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `re_properties`
--

INSERT INTO `re_properties` (`id`, `name`, `content`, `location`, `images`, `project_id`, `number_bedroom`, `number_bathroom`, `number_floor`, `square`, `price`, `price_unit`, `is_featured`, `status`, `created_at`, `updated_at`, `type`, `description`, `currency_id`, `city_id`, `period`, `author_id`, `author_type`, `category_id`, `moderation_status`, `expire_date`, `auto_renew`, `never_expired`) VALUES
(1, '3 Beds Villa Calpe, Alicante', '<p>This villa is equipped with all conveniences, where everything takes place on one living level. Three spacious bedrooms that all have direct access to the pool terrace and a spacious living room with an American kitchen with cooking island, from where you can walk onto the terrace through large glass sliding doors. Downstairs there is an indoor, double garage and laundry room with an internal staircase to the house. But you can also drive up to the front door by car. The terrace is spacious and there is an extra-long swimming pool, where you can swim laps well. Around there is a landscaped garden, which is also low in maintenance. Instead of gardening, there is more time left for wonderful enjoyment in and around this beautiful villa.</p>', 'Alicante, Spain', '[\"properties\\/1.jpg\",\"properties\\/3.jpg\",\"properties\\/4.jpg\",\"properties\\/2.jpg\"]', 0, 3, 3, 1, 600, '700000', NULL, 1, 'selling', '2019-11-17 20:34:59', '2020-11-17 03:09:39', 'sale', 'This villa is equipped with all conveniences, where everything takes place on one living level. Three spacious bedrooms that all have direct access to the pool terrace and a spacious living room with an American kitchen with cooking island, from where you can walk onto the terrace through large glass sliding doors.', 1, 5, 'month', 9, 'Botble\\RealEstate\\Models\\Account', 4, 'approved', '2025-03-25', 0, 1),
(2, 'Property For sale , Johannesburg, South Africa', '<p><strong>Beautiful home situated in road closure in bedfordview.&nbsp;</strong>Nestled on a rocky outcrop of enormous boulders, this unique home is an architectural triumph designed to titilate the senses from the very start with a waterfall cascading into heated black quartzite pool &amp; stunning koi-pond. Flavours of the Seychelles.&nbsp;Enter from a winding pathway lined by palms and tree ferns into the hallway. The spacious living room with magnificent wood burning fireplace and large diningroom are complemented by a wet barrel bar, featuring designer built in wine cellar wall.</p>', 'Johannesburg, South Africa', '[\"properties\\/23.jpeg\",\"properties\\/21.jpeg\",\"properties\\/24.jpeg\",\"properties\\/22.png\"]', 0, 4, 4, 2, 800, '800000', NULL, 1, 'selling', '2019-11-17 20:53:34', '2020-11-17 03:09:39', 'sale', 'Beautiful home. Nestled on a rocky outcrop of enormous boulders, this unique home is an architectural triumph designed to titilate the senses from the very start with a waterfall cascading into heated black quartzite pool & stunning koi-pond. Flavours of the Seychelles.', 1, 2, 'month', 11, 'Botble\\RealEstate\\Models\\Account', 2, 'approved', '2025-03-25', 0, 1),
(3, 'Stunning French Inspired Manor', '<p>Stunning French Inspired Manor located within Briarwood Ranch near Solvang in the heart of the magnificent Santa Ynez Valley. This residence features appx 5,000sqft 4+ bedroom, 3.5 bath home with elegant and spacious interiors including formal living and dining, amazing view great room and kitchen, and massive bonus library media room with bar and custom built-ins. The magnificent lagoon-like infinity edge swimming pool offers beach entry, waterfalls and slide, Cabana and a complimentary poolside bar combo BBQ kitchen. A spacious 2 car garage is adjacent to craft room and large art studio</p>', 'Solvang, Santa Barbara County, CA 93463, USA', '[\"properties\\/31.jpg\",\"properties\\/32.jpg\",\"properties\\/33.jpg\",\"properties\\/34.jpg\",\"properties\\/35.jpg\",\"properties\\/311.jpg\"]', 0, 4, 3, 1, 450, '1695000', NULL, 1, 'selling', '2019-11-17 21:09:55', '2020-11-17 03:09:39', 'sale', 'This residence features appx 5,000sqft 4+ bedroom, 3.5 bath home with elegant and spacious interiors including formal living and dining, amazing view great room and kitchen, and massive bonus library media room with bar and custom built-ins. The magnificent lagoon-like infinity edge swimming pool offers beach entry, waterfalls and slide', 1, 5, 'month', 6, 'Botble\\RealEstate\\Models\\Account', 3, 'approved', '2025-03-25', 0, 1),
(4, 'Villa for sale at Bermuda Dunes', '<p>This rare and exceptional custom-built home sits on a premiere lot in the exclusive, private section of Castle Harbour. The property borders the golf course for 360 lineal feet, adding not only a gorgeous view but also complete privacy. The home itself sets above the golf course, for further privacy, and is located between the 5th and 6th fairways of the prestigious Bermuda Dunes Country Club. Chiseled glass entry doors lead you into a magnificent Italian Marble entry that encompasses the entire hallway and living room with a fireplace. The vast great room, with raised ceilings, captures the pool, golf, lake and dynamic southern, mountain views. There&#39;s a lovely Library with built in shelves on one wall. There&rsquo;s a sunken wet bar, with Italian Marble flooring, that provides views of the golf course and surrounding mountains.</p>', 'Bermuda Dunes, Riverside County, CA 92203, USA', '[\"properties\\/411.jpg\",\"properties\\/44.jpg\",\"properties\\/43.jpg\",\"properties\\/42.jpg\"]', 0, 4, 3, 1, 480, '1295000', NULL, 1, 'selling', '2019-11-17 21:18:11', '2020-11-17 03:09:39', 'sale', 'This rare and exceptional custom-built home sits on a premiere lot in the exclusive, private section of Castle Harbour. The property borders the golf course for 360 lineal feet, adding not only a gorgeous view but also complete privacy. The home itself sets above the golf course, for further privacy, and is located between the 5th and 6th fairways of the prestigious Bermuda Dunes Country Club', 1, 1, 'month', 6, 'Botble\\RealEstate\\Models\\Account', 6, 'approved', '2025-03-25', 0, 1),
(5, 'Walnut Park Apartment', '<p>Only 11 miles from downtown Austin, the heavily-wooded site borders Walnut Creek and offers residents inspiring views in an unparalleled, secluded community</p>\r\n\r\n<ul>\r\n	<li>Heavily wooded site with dramatic 30-foot bluffs overlooking the scenic Walnut Creek</li>\r\n	<li>Conveniently located on North Lamar near numerous shops, major employers and restaurants</li>\r\n	<li>Easy access to I-35 and a short distance to US-183 and SH-45</li>\r\n	<li>Elegant clubhouse with a full kitchen, bar area, lounging area and creek-view veranda</li>\r\n	<li>24-hour fully-equipped fitness center with lockers and changing area</li>\r\n	<li>Indoor spa with cascading waterfall, steam room and cedar sauna</li>\r\n	<li>Spacious, gourmet kitchens with granite countertops and backsplashes</li>\r\n	<li>Stainless steel appliances and natural gas ranges</li>\r\n	<li>Designer hardwood cabinets with under-cabinet lighting</li>\r\n</ul>', 'North Lamar Boulevard, Austin, Texas 78753, USA', '[\"properties\\/8.jpg\",\"properties\\/7.jpg\",\"properties\\/5.jpg\",\"properties\\/1-1.jpg\"]', 1, 2, 2, 1, 980, '2035', NULL, 1, 'renting', '2019-11-18 00:47:52', '2020-11-17 03:09:39', 'rent', 'Heavily wooded site with dramatic 30-foot bluffs overlooking the scenic Walnut Creek\r\nConveniently located on North Lamar near numerous shops, major employers and restaurants\r\nEasy access to I-35 and a short distance to US-183 and SH-45\r\nElegant clubhouse with a full kitchen, bar area, lounging area and creek-view veranda', 1, 1, 'month', 4, 'Botble\\RealEstate\\Models\\Account', 6, 'approved', '2025-03-25', 0, 1),
(6, '5 beds luxury house', '<p>Luxury and spacious remodeled house in Sea Cliff with 3 levels, 5 bedrooms and 4 bathrooms, and a great Golden Gate View. 4-Car garage. The house is remodeled and spacious with a great layout, and is offered furnished. It is charming and beautiful with lots of details, has thoughtful front landscaping and a large backyard and a patio, and has a great view of the Golden Gate. On the main level the entry opens to a large foyer which connects to a beautiful and large living room with a fireplace, and to a formal dining room.</p>\r\n\r\n<p>The house has a garage which can accommodate 3 to 4 cars. The house is offered furnished. Can be leased for short term or long term. The minimum lease term is 3 months.</p>', 'Seacliff San Francisco, Sea Cliff Avenue, San Francisco, CA 94121, USA', '[\"properties\\/a3.jpg\",\"properties\\/a1.jpg\",\"properties\\/a2.jpg\",\"properties\\/a4.jpg\"]', 0, 5, 4, 3, 270, '1808', NULL, 1, 'renting', '2019-11-18 01:05:58', '2020-11-17 03:09:39', 'rent', 'Luxury and spacious remodeled house in Sea Cliff with 3 levels, 5 bedrooms and 4 bathrooms, and a great Golden Gate View. 4-Car garage. The house is remodeled and spacious with a great layout, and is offered furnished. It is charming and beautiful with lots of details, has thoughtful front landscaping and a large backyard and a patio, and has a great view of the Golden Gate', 1, 1, 'month', 10, 'Botble\\RealEstate\\Models\\Account', 1, 'approved', '2025-03-25', 0, 1),
(7, 'Family Victorian \"View\" Home', '<p>There is a formal dining room and spacious living room located on either side of the updated eat-in kitchen skylight, white cabinets, and&nbsp;stainless steel appliances. Enjoy ample natural light and spectacular southern views from the main living room oversized windows and a walk-out&nbsp;deck. A bonus room (guest bedroom/office) and a full bath complete this level.</p>\r\n\r\n<p>&nbsp;</p>', 'Safeway San Francisco CA, Market Street, San Francisco, CA 94114, USA', '[\"properties\\/b5.jpg\",\"properties\\/b1.jpg\",\"properties\\/b4.jpg\",\"properties\\/b6.jpg\",\"properties\\/b2.jpg\"]', 0, 3, 2, 1, 180, '2580', NULL, 1, 'renting', '2019-11-18 01:12:07', '2020-11-17 03:09:39', 'rent', 'There is a formal dining room and spacious living room located on either side of the updated eat-in kitchen skylight, white cabinets, and stainless steel appliances. Enjoy ample natural light and spectacular southern views from the main living room oversized windows and a walk-out deck. A bonus room (guest bedroom/office) and a full bath complete this level.', 1, 1, 'month', 8, 'Botble\\RealEstate\\Models\\Account', 3, 'approved', '2025-03-25', 0, 1),
(8, 'Osaka Heights Apartment', '<p><strong>Kitchen</strong><br />\r\nCeramic tiled flooring, Granite counter top , Single bowl stainless steel kitchen sink with drain board and provisions for water purifier , electric hood , exhaust fan will be provided</p>\r\n\r\n<p><strong>Toilets</strong><br />\r\nAnti-skid Ceramic tiles on floor and ceramic wall tiles up to 7 feet height. White coloured branded sanitary fittings, Chromium plated taps , concealed plumbing</p>\r\n\r\n<p><strong>Doors</strong><br />\r\nMain door will be high quality wooden door, premium Windows quality pre-hung internal doors with wooded frame, UPVC or aluminum sliding doors and aluminum frame with glass for windows</p>\r\n\r\n<p>&nbsp;9 km to Katunayaka airport expressway entrance</p>\r\n\r\n<p>&nbsp;12 km to Southern expressway entrance at Kottawa</p>\r\n\r\n<p>&nbsp;2 km to Kalubowila General hospital</p>\r\n\r\n<p>&nbsp;All leading banks within a few kilometer radii</p>\r\n\r\n<p>&nbsp;Very close proximity to railway stations</p>\r\n\r\n<p>&nbsp;Many leading schools including CIS within 5 km radius</p>', 'High Level Road, Colombo 06, Sri Lanka', '[\"properties\\/24-1.jpg\",\"properties\\/22-1.jpg\",\"properties\\/p1.jpg\",\"properties\\/p2.jpg\"]', 2, 2, 2, 1, 110, '150000', NULL, 1, 'selling', '2019-11-18 01:49:36', '2020-11-17 03:09:39', 'sale', 'Ceramic tiled flooring, Granite counter top , Single bowl stainless steel kitchen sink with drain board and provisions for water purifier , electric hood , exhaust fan will be provided. Anti-skid Ceramic tiles on floor and ceramic wall tiles up to 7 feet height. White coloured branded sanitary fittings, Chromium plated taps , concealed plumbing.', 1, 5, 'month', 7, 'Botble\\RealEstate\\Models\\Account', 5, 'approved', '2025-03-25', 0, 1),
(9, 'Private Estate Magnificent Views', '<p>Spacious 3 bedroom stabilised earth brick home, light and bright with statement entrance hall. Conservatory sun room, open plan kitchen/dining/lounge with raked cedar lined ceiling, kitchen with oregon timber cupboards and new Smeg oven. Air conditioner &amp; wood heater<br />\r\nGood sized bedrooms and main bedroom with spa overlooking tranquil gardens and Inlet.</p>', '110 Springdale Heights, Hay Denmark, WA, Australia', '[\"properties\\/79.jpg\",\"properties\\/71.jpg\",\"properties\\/73.jpg\",\"properties\\/72.jpg\",\"properties\\/74.jpg\",\"properties\\/75.jpg\",\"properties\\/78.jpg\"]', 0, 3, 1, 1, 2000, '694000', NULL, 1, 'selling', '2019-11-18 02:02:19', '2020-11-17 03:09:35', 'sale', 'Spacious 3 bedroom stabilised earth brick home, light and bright with statement entrance hall. Conservatory sun room, open plan kitchen/dining/lounge with raked cedar lined ceiling, kitchen with oregon timber cupboards and new Smeg oven. Air conditioner & wood heater', 1, 5, 'month', 1, 'Botble\\RealEstate\\Models\\Account', 6, 'approved', '2025-03-25', 0, 1),
(10, 'Thompsons Road House for rent', '<p>Perfectly positioned in the exclusive suburb of Bulleen, this renovated home 3 bedroom home offers a superb lifestyle to those seeking all the expected comforts, privacy, convenience to freeways &amp; transport, and space.<br />\r\nYou are welcomed by a beautiful, low maintenance and established front garden, with ample off street parking, an elevated porch and tantum large garage. Inside you will find a lovely neutral colour scheme and near new gleaming timber timber floors. There are three spacious bedrooms all with built in robes, serviced by a central family bathroom and separate powder room, along with a large open lounge and formal dining room beaming with natural light. The stunning kitchen comes complete with Blanco appliances, breakfast bar and top quality fittings and fixtures.</p>', 'Thompsons Road, Bulleen VIC, Australia', '[\"properties\\/5-1.jpg\",\"properties\\/7-1.jpg\",\"properties\\/8-1.jpg\",\"properties\\/9.jpg\",\"properties\\/6.jpg\"]', 0, 3, 3, 1, 160, '1465', NULL, 1, 'renting', '2019-11-18 02:16:53', '2020-11-17 03:09:39', 'rent', 'Perfectly positioned in the exclusive suburb of Bulleen, this renovated home 3 bedroom home offers a superb lifestyle to those seeking all the expected comforts, privacy, convenience to freeways & transport, and space.\r\nYou are welcomed by a beautiful, low maintenance and established front garden, with ample off street parking, an elevated porch and tantum large garage', 1, 3, 'month', 2, 'Botble\\RealEstate\\Models\\Account', 3, 'approved', '2025-03-25', 0, 1),
(11, 'Brand New 1 Bedroom Apartment In First Class Location', '<p>Set-back from Sandy Bay Road, walk to everything that counts: vibrant Battery Point village, Salamanca Place (Tasmania&#39;s premier entertainment precinct), the City Centre, University of Tasmania, hotel, retail and an easy stroll away from bustling Sandy Bay shops, local schools and with public transport outside your front door.</p>\r\n\r\n<p>Please note: Elders Brown and Banks do not accept applications from applicants who have not inspected the property internally.</p>', 'Sandy Bay Road, Sandy Bay TAS, Australia', '[\"properties\\/12.jpg\",\"properties\\/10.jpg\",\"properties\\/13.jpg\",\"properties\\/14.jpg\",\"properties\\/15.jpg\"]', 0, 1, 1, 1, 80, '1680', NULL, 1, 'renting', '2019-11-18 02:22:48', '2020-11-17 03:09:39', 'rent', 'Set-back from Sandy Bay Road, walk to everything that counts: vibrant Battery Point village, Salamanca Place (Tasmania\'s premier entertainment precinct), the City Centre, University of Tasmania, hotel, retail and an easy stroll away from bustling Sandy Bay shops, local schools and with public transport outside your front door.', 1, 5, 'month', 1, 'Botble\\RealEstate\\Models\\Account', 1, 'approved', '2025-03-25', 0, 1),
(12, 'Elegant family home presents premium modern living', '<p>Move straight into this beautifully presented four-bedroom home and enjoy the best in modern family living without lifting a finger. Two separate living areas and four generous bedrooms provide plenty of space to grow, and entertaining is a real pleasure on the elegant alfresco patio in a peaceful garden setting. The home is ideally set walking distance to parks and bus stops, moments to your choice of schools, and just several minutes to Westfield North Lakes.<br />\r\n&nbsp;</p>', 'North Lakes QLD 4509, Australia', '[\"properties\\/a1-1.jpg\",\"properties\\/a2-1.jpg\",\"properties\\/a3-1.jpg\",\"properties\\/a5.jpg\",\"properties\\/a4-1.jpg\",\"properties\\/a6.jpg\"]', 0, 3, 3, 1, 658, '1574', NULL, 1, 'renting', '2019-11-18 02:47:05', '2020-11-17 03:09:39', 'rent', 'Move straight into this beautifully presented four-bedroom home and enjoy the best in modern family living without lifting a finger. Two separate living areas and four generous bedrooms provide plenty of space to grow, and entertaining is a real pleasure on the elegant alfresco patio in a peaceful garden setting.', 1, 5, 'month', 9, 'Botble\\RealEstate\\Models\\Account', 6, 'approved', '2025-03-25', 0, 1),
(13, 'Luxury Apartments in Singapore for Sale', '<p>This apartment&nbsp;is located in Singapore, which has become a comfortable living center for the living, providing both attractive gains for investors and high premium. 840sqft<br />\r\n- High Floor<br />\r\n- Chinese Family<br />\r\n- Sky Garden<br />\r\n- Beautiful Roof Terrace with Jaccuzzi And<br />\r\nAlfresco Dinning<br />\r\n- Renovated with Quality Finishes<br />\r\n- Near Amenities<br />\r\n- Plenty of eateries.<br />\r\n- 5mins Walk to NTUC / Shaw Plaza<br />\r\n- Mins Drive To Orchard</p>', 'Balestier Road, Singapore', '[\"properties\\/5-2.jpg\",\"properties\\/2-3.jpg\",\"properties\\/3-3.jpg\",\"properties\\/4-2.jpg\",\"properties\\/1-3.jpg\"]', 6, 2, 2, 1, 78, '918000', NULL, 1, 'selling', '2019-11-18 07:23:02', '2020-10-30 22:52:18', 'sale', 'This apartment is located in Singapore. High Floor, Chinese Family, Sky Garden, Beautiful Roof Terrace with Jaccuzzi and Alfresco Dinning, Renovated with Quality Finishes, Near Amenities, Plenty of eateries, 5mins Walk to NTUC / Shaw Plaza, Mins Drive To Orchard', 1, 5, 'month', 6, 'Botble\\RealEstate\\Models\\Account', 2, 'approved', '2025-03-25', 0, 1),
(14, '5 room luxury penthouse for sale in Kuala Lumpur', '<p>The Sentral Residence (BRAND NEW LUXURY CONDO)<br />\r\n<br />\r\n-Next to St Regis 5 Star Hotel<br />\r\n-Excellent accessibility (LRT,KLIA TRANSIT,KTM)<br />\r\n-Rooftop Sky lounge,sky pool,sky gym<br />\r\n-Private lift lobby to own unit<br />\r\n<br />\r\nEPIC LUXE PREMIUM UNITS<br />\r\n(KLCC and Lake Garden VIEW)<br />\r\n<br />\r\nLargest unit in Sentral Residence<br />\r\n&nbsp;</p>', 'Kuala Lumpur, Malaysia', '[\"properties\\/6-2.jpg\",\"properties\\/7-2.jpg\",\"properties\\/9-1.jpg\",\"properties\\/8-2.jpg\",\"properties\\/10-1.jpg\",\"properties\\/11-1.jpg\"]', 0, 5, 7, 20, 377, '1590000', NULL, 1, 'selling', '2019-11-18 07:36:29', '2020-11-17 03:09:39', 'sale', 'Next to St Regis 5 Star Hotel, Excellent accessibility (LRT,KLIA TRANSIT,KTM), Rooftop Sky lounge, sky pool, sky gym, KLCC and Lake Garden VIEW', 1, 4, 'month', 8, 'Botble\\RealEstate\\Models\\Account', 3, 'approved', '2025-03-25', 0, 1),
(15, '2 Floor house in Compound Pejaten Barat Kemang', '<p>Want to lease a nice house in compound Renovated, balinese style ,homey and comfy area 220/300,&nbsp;3&nbsp;bedrooms,&nbsp;2 bathrooms, garden furnished renovated fasilitas : s.pool, tenis court, jogging track 24 hours security rent price : IDR 250.000.000 / year&nbsp;</p>', 'Kota Administrasi Jakarta Selatan, South Jakarta City, Jakarta Raya, Indonesia', '[\"properties\\/a1-2.jpg\",\"properties\\/a2-2.jpg\",\"properties\\/a3-2.jpg\",\"properties\\/a4-2.jpg\"]', 0, 3, 2, 2, 200, '1400', NULL, 1, 'renting', '2019-11-18 07:44:44', '2020-11-17 03:09:39', 'rent', 'Want to lease a nice house in compound Renovated, balinese style ,homey and comfy area 220/300, 3 bedrooms, 2 bathrooms, garden furnished renovated fasilitas : s.pool, tenis court, jogging track 24 hours security rent price : IDR 250.000.000 / year ', 1, 5, 'month', 7, 'Botble\\RealEstate\\Models\\Account', 5, 'approved', '2025-03-25', 0, 1),
(16, 'Apartment Muiderstraatweg in Diemen', '<p>For rent fully furnished 3 bedroom apartment in Diemen.<br />\r\nVery suitable for a couple or maximum 2 working sharers, garantors are not accepted.<br />\r\n<br />\r\nLovely modern and very well maintained apartment in Diemen.<br />\r\nThe property is located on the first floor where you will find the living room and the kitchen with all modern conveniences.<br />\r\nOn the second floor 2 bedrooms and a nice bathroom with a seperate shower and bathtub.<br />\r\nOn this floor you have access to the small roof terrace.<br />\r\nLast but not least there is a spacious attic room on the third floor.<br />\r\nThe tram stops in front of the door and within 20 minutes you are in the heart of Amsterdam.<br />\r\nPets are not allowed.</p>', 'Diemen, Netherlands', '[\"properties\\/b4-1.jpg\",\"properties\\/b3.jpg\",\"properties\\/b5-1.jpg\"]', 0, 3, 1, 2, 90, '2123', NULL, 1, 'renting', '2019-11-18 07:59:14', '2020-11-17 03:09:39', 'rent', 'Lovely modern and very well maintained apartment in Diemen.\r\nThe property is located on the first floor where you will find the living room and the kitchen with all modern conveniences.\r\nOn the second floor 2 bedrooms and a nice bathroom with a seperate shower and bathtub.\r\nOn this floor you have access to the small roof terrace.', 1, 3, 'month', 4, 'Botble\\RealEstate\\Models\\Account', 2, 'approved', '2025-03-25', 0, 1),
(17, 'Nice Apartment for rent in Berlin', '<p>Fully furnished shared all-inclusive apartments, with modern amenities that&rsquo;ll make you feel right at home. A great starting point for exploring the rest of the city and its many hidden gems. Area In the center of East Berlin, you&rsquo;ll find everything from delicious street food to flee markets, to high-end restaurants.</p>\r\n\r\n<p>In this bright, modern h(e)aven, you&rsquo;ll find a Queen size bed, a fully equipped kitchen, a separate bathroom with a walk-in shower and a study area for when the dedicated student in you awakens. Some come with great views, others with a nice and cozy balcony.</p>', 'Berlin, Germany', '[\"properties\\/t3.jpg\",\"properties\\/t1.jpg\",\"properties\\/t2.jpg\",\"properties\\/t4.jpg\",\"properties\\/t5.jpg\"]', 0, 1, 1, 1, 33, '1217', NULL, 1, 'renting', '2019-11-18 08:13:07', '2020-11-17 03:09:39', 'rent', 'Fully furnished shared all-inclusive apartments, with modern amenities that’ll make you feel right at home. A great starting point for exploring the rest of the city and its many hidden gems. Area In the center of East Berlin, you’ll find everything from delicious street food to flee markets, to high-end restaurants.', 1, 5, 'month', 9, 'Botble\\RealEstate\\Models\\Account', 5, 'approved', '2025-03-25', 0, 1),
(18, 'Bán biệt thự 3 phòng ngủ Calpe, Alicante', '<p>Biệt thự được trang bị đầy đủ tiện nghi. Ba ph&ograve;ng ngủ rộng r&atilde;i đều c&oacute; lối đi thẳng ra s&acirc;n thượng hồ bơi v&agrave; ph&ograve;ng kh&aacute;ch rộng r&atilde;i với nh&agrave; bếp kiểu Mỹ c&oacute; thể nấu ăn, từ đ&oacute; bạn c&oacute; thể đi bộ l&ecirc;n s&acirc;n thượng qua cửa k&iacute;nh lớn. Ở tầng dưới c&oacute; một nh&agrave; để xe trong nh&agrave;, ph&ograve;ng giặt đồ với một cầu thang nội bộ đến nh&agrave;. Nhưng bạn cũng c&oacute; thể l&aacute;i xe l&ecirc;n đến cửa trước bằng &ocirc; t&ocirc;. S&acirc;n thượng rộng r&atilde;i v&agrave; c&oacute; một bể bơi cực d&agrave;i, thoải m&aacute;i bơi lội. Xung quanh c&oacute; một khu vườn cảnh quan. H&atilde;y d&agrave;nh thời gian để tận hưởng tuyệt vời trong v&agrave; xung quanh biệt thự xinh đẹp n&agrave;y.</p>', 'Alicante, Spain', '[\"properties\\/1.jpg\",\"properties\\/4.jpg\",\"properties\\/2.jpg\",\"properties\\/3.jpg\"]', 0, 3, 3, 1, 600, '16238915000', NULL, 1, 'selling', '2019-11-21 05:51:54', '2020-11-17 03:09:39', 'sale', 'Biệt thự được trang bị đầy đủ tiện nghi. Ba phòng ngủ rộng rãi đều có lối đi thẳng ra sân thượng hồ bơi và phòng khách rộng rãi với nhà bếp kiểu Mỹ có thể nấu ăn, từ đó bạn có thể đi bộ lên sân thượng qua cửa kính lớn. Ở tầng dưới có một nhà để xe trong nhà, phòng giặt đồ với một cầu thang nội bộ đến nhà', 2, 2, 'month', 7, 'Botble\\RealEstate\\Models\\Account', 1, 'approved', '2025-03-25', 0, 1),
(19, 'Bán nhà tại Johannesburg, South Africa', '<p>Nh&agrave; đẹp. N&eacute;p m&igrave;nh tr&ecirc;n một mỏm đ&aacute; của những tảng đ&aacute; khổng lồ, ng&ocirc;i nh&agrave; độc đ&aacute;o n&agrave;y l&agrave; một chiến thắng kiến tr&uacute;c được thiết kế để chuẩn độ c&aacute;c gi&aacute;c quan ngay từ đầu với một th&aacute;c nước đổ xuống hồ thạch anh đen n&oacute;ng bỏng v&agrave; hồ c&aacute; koi tuyệt đẹp. Hương vị của Seychelles. Đường v&agrave;o nh&agrave; được bao phủ bởi c&acirc;y dương sỉ 2 b&ecirc;n h&agrave;nh lang. Ph&ograve;ng kh&aacute;ch rộng r&atilde;i với l&ograve; sưởi đốt củi tuyệt đẹp v&agrave; ph&ograve;ng ăn lớn c&oacute; th&ecirc;m quầy rượu, được thiết kế v&agrave; x&acirc;y dựng như những bức tường hầm rượu.</p>', 'Johannesburg, South Africa', '[\"properties\\/23.jpeg\",\"properties\\/24.jpeg\",\"properties\\/22.png\",\"properties\\/21.jpeg\"]', 0, 4, 4, 2, 800, '18558760000', NULL, 1, 'selling', '2019-11-21 06:03:11', '2020-11-17 03:09:39', 'sale', 'Nhà đẹp. Nép mình trên một mỏm đá của những tảng đá khổng lồ, ngôi nhà độc đáo này là một chiến thắng kiến trúc được thiết kế để chuẩn độ các giác quan ngay từ đầu với một thác nước đổ xuống hồ thạch anh đen nóng bỏng và hồ cá koi tuyệt đẹp. Hương vị của Seychelles', 2, 3, 'month', 2, 'Botble\\RealEstate\\Models\\Account', 2, 'approved', '2025-03-25', 0, 1),
(20, 'Nhà phong cách Pháp', '<p>Trang vi&ecirc;n&nbsp;lấy cảm hứng từ Ph&aacute;p tuyệt đẹp nằm trong Briarwood Ranch gần Solvang ở trung t&acirc;m thung lũng Santa Ynez tr&aacute;ng lệ. Khu nh&agrave; n&agrave;y c&oacute; 4 ph&ograve;ng ngủ, sấp sỉ 5,000sqft, 3 nh&agrave; tắm với nội thất trang nh&atilde; v&agrave; rộng r&atilde;i bao gồm ph&ograve;ng kh&aacute;ch v&agrave; ăn uống ch&iacute;nh thức, ph&ograve;ng v&agrave; nh&agrave; bếp tuyệt vời, ph&ograve;ng thư viện lớn với quầy bar.<br />\r\nHồ bơi cạnh v&ocirc; cực tuyệt đẹp giống như lối v&agrave;o b&atilde;i biển, th&aacute;c nước v&agrave; cầu trượt, Cabana v&agrave; nh&agrave; bếp kết hợp quầy bar BBQ b&ecirc;n hồ bơi miễn ph&iacute;. Nh&agrave; để xe rộng r&atilde;i, rộng r&atilde;i, liền kề với ph&ograve;ng thủ c&ocirc;ng v&agrave; studio nghệ thuật lớn</p>', 'Solvang, Santa Barbara County, CA 93463, USA', '[\"properties\\/31.jpg\",\"properties\\/32.jpg\",\"properties\\/33.jpg\",\"properties\\/34.jpg\",\"properties\\/35.jpg\",\"properties\\/311.jpg\"]', 0, 4, 3, 1, 450, '39321372750', NULL, 1, 'selling', '2019-11-21 06:12:15', '2020-11-17 03:09:39', 'sale', 'Khu nhà này có 4 phòng ngủ, sấp sỉ 5,000sqft, 3 nhà tắm với nội thất trang nhã và rộng rãi bao gồm phòng khách và ăn uống chính thức, phòng và nhà bếp tuyệt vời, phòng thư viện lớn với quầy bar.\r\nHồ bơi cạnh vô cực tuyệt đẹp giống như lối vào bãi biển, thác nước và cầu trượt.', 2, 5, 'month', 4, 'Botble\\RealEstate\\Models\\Account', 1, 'approved', '2025-03-25', 0, 1),
(21, 'Nhà bán tại Bermuda Dunes', '<p>Ng&ocirc;i nh&agrave; được x&acirc;y dựng t&ugrave;y chỉnh hiếm c&oacute; v&agrave; đặc biệt n&agrave;y nằm tr&ecirc;n một khu đất ra mắt trong khu vực ri&ecirc;ng, độc quyền của Castle Harbor. Khu nh&agrave; c&oacute; dải cỏ rộng 360 bước ch&acirc;n, kh&ocirc;ng chỉ c&oacute; tầm nh&igrave;n tuyệt đẹp m&agrave; c&ograve;n ho&agrave;n to&agrave;n ri&ecirc;ng tư. Ng&ocirc;i nh&agrave; nằm ph&iacute;a tr&ecirc;n s&acirc;n cỏ, để c&oacute; th&ecirc;m sự ri&ecirc;ng tư, v&agrave; nằm giữa c&aacute;c luồng thứ 5 v&agrave; thứ 6 của C&acirc;u lạc bộ Quốc gia Bermuda Dunes danh tiếng. Cửa ra v&agrave;o bằng k&iacute;nh được đưa bạn v&agrave;o một lối v&agrave;o Đ&aacute; cẩm thạch &Yacute; tuyệt đẹp bao gồm to&agrave;n bộ h&agrave;nh lang v&agrave; ph&ograve;ng kh&aacute;ch với một l&ograve; sưởi. Ph&ograve;ng lớn rộng lớn, với trần nh&agrave; cao l&ecirc;n, thu h&uacute;t hồ bơi, s&acirc;n g&ocirc;n, hồ nước v&agrave; hướng nam năng động, cảnh n&uacute;i non. C&oacute; một thư viện đ&aacute;ng y&ecirc;u được x&acirc;y dựng tr&ecirc;n c&aacute;c kệ tr&ecirc;n một bức tường. C&oacute; một qu&aacute;n bar m&aacute;t mẻ, với s&agrave;n l&aacute;t đ&aacute; cẩm thạch của &Yacute;, cung cấp tầm nh&igrave;n ra s&acirc;n g&ocirc;n v&agrave; những ngọn n&uacute;i xung quanh.</p>', 'Bermuda Dunes, Riverside County, CA 92203, USA', '[\"properties\\/411.jpg\",\"properties\\/44.jpg\",\"properties\\/43.jpg\",\"properties\\/42.jpg\"]', 0, 4, 3, 1, 480, '30041992750', NULL, 1, 'selling', '2019-11-21 06:26:59', '2020-11-17 03:09:35', 'sale', 'Ngôi nhà được xây dựng tùy chỉnh hiếm có và đặc biệt này nằm trên một khu đất ra mắt trong khu vực riêng, độc quyền của Castle Harbor. Khu nhà có dải cỏ rộng 360 bước chân, không chỉ có tầm nhìn tuyệt đẹp mà còn hoàn toàn riêng tư. Ngôi nhà nằm phía trên sân cỏ, để có thêm sự riêng tư, và nằm giữa các luồng thứ 5 và thứ 6 của Câu lạc bộ Quốc gia Bermuda Dunes danh tiếng', 2, 1, 'month', 8, 'Botble\\RealEstate\\Models\\Account', 6, 'approved', '2025-03-25', 0, 1),
(22, 'Căn hộ Walnut Park', '<p>Chỉ c&oacute; 11 dặm từ trung t&acirc;m th&agrave;nh phố Austin, khu căn hộ nhiều c&acirc;y cối rậm rạp gi&aacute;p Walnut Creek v&agrave; tạo cho người d&acirc;n cảm hứng trong một cộng đồng đẳng cấp ri&ecirc;ng biệt.<br />\r\nKhu rừng rậm rạp với những ngọn c&acirc;y d&agrave;i 30 feet nh&igrave;n xuống. Walnut Creek tuyệt đẹp.<br />\r\nVị tr&iacute; thuận tiện tr&ecirc;n North Lamar gần nhiều cửa h&agrave;ng, doanh nghiệp v&agrave; nh&agrave; h&agrave;ng.<br />\r\nDễ d&agrave;ng truy cập I-35 v&agrave; một khoảng c&aacute;ch ngắn đến US-183 v&agrave; SH-45 C&oacute; c&acirc;u lạc bộ thanh lịch với nh&agrave; bếp đầy đủ, khu vực quầy bar, khu vực thư gi&atilde;n v&agrave; hi&ecirc;n nh&igrave;n ra thung lũng.<br />\r\nTrung t&acirc;m thể dục được trang bị đầy đủ 24 giờ với tủ kh&oacute;a v&agrave; khu vực thay đồ.<br />\r\nSpa trong nh&agrave; với th&aacute;c nước, ph&ograve;ng tắm hơi v&agrave; ph&ograve;ng x&ocirc;ng hơi tuyết t&ugrave;ng.<br />\r\nNh&agrave; bếp rộng r&atilde;i, s&agrave;nh điệu với mặt đ&aacute; granite v&agrave; ốp lưng.<br />\r\nThiết bị bằng th&eacute;p kh&ocirc;ng gỉ v&agrave; phạm vi kh&iacute; đốt tự nhi&ecirc;n.<br />\r\nThiết kế tủ gỗ cứng với &aacute;nh s&aacute;ng dưới tủ</p>', 'North Lamar Boulevard, Austin, Texas, USA', '[\"properties\\/8.jpg\",\"properties\\/1-1.jpg\",\"properties\\/5.jpg\",\"properties\\/7.jpg\",\"properties\\/21.jpeg\"]', 7, 2, 2, 1, 980, '47208845', NULL, 1, 'renting', '2019-11-21 06:56:50', '2020-11-17 03:09:39', 'rent', 'Khu rừng rậm rạp với những ngọn cây dài 30 feet nhìn xuống. Walnut Creek tuyệt đẹp.\r\nVị trí thuận tiện trên North Lamar gần nhiều cửa hàng, doanh nghiệp và nhà hàng.\r\nDễ dàng truy cập I-35 và một khoảng cách ngắn đến US-183 và SH-45 Có câu lạc bộ thanh lịch với nhà bếp đầy đủ, khu vực quầy bar, khu vực thư giãn và hiên nhìn ra thung lũng.', 2, 3, 'month', 1, 'Botble\\RealEstate\\Models\\Account', 2, 'approved', '2025-03-25', 0, 1),
(23, 'Cho thuê nhà cao cấp 5 phòng ngủ', '<p>Ng&ocirc;i nh&agrave; được tu sửa sang trọng v&agrave; rộng r&atilde;i ở Sea Cliff với 3 tầng, 5 ph&ograve;ng ngủ v&agrave; 4 ph&ograve;ng tắm, v&agrave; Golden Gate View. Gara &ocirc; t&ocirc; 4 chỗ. Ng&ocirc;i nh&agrave; được tu sửa v&agrave; rộng r&atilde;i với bố cục tuyệt vời, v&agrave; được cung cấp nội thất. N&oacute; quyến rũ v&agrave; xinh đẹp với nhiều chi tiết, c&oacute; cảnh quan ph&iacute;a trước chu đ&aacute;o v&agrave; s&acirc;n sau rộng v&agrave; s&acirc;n trong, v&agrave; c&oacute; một c&aacute;i nh&igrave;n tuyệt vời về Cổng V&agrave;ng. Ở cấp độ ch&iacute;nh, lối v&agrave;o mở ra một sảnh lớn kết nối với ph&ograve;ng kh&aacute;ch đẹp v&agrave; rộng c&oacute; l&ograve; sưởi v&agrave; ph&ograve;ng ăn trang trọng.<br />\r\n<br />\r\nNg&ocirc;i nh&agrave; c&oacute; một nh&agrave; để xe c&oacute; thể chứa 3 đến 4 xe hơi. Ng&ocirc;i nh&agrave; được cung cấp nội thất. C&oacute; thể được cho thu&ecirc; ngắn hạn hoặc d&agrave;i hạn. Thời hạn thu&ecirc; tối thiểu l&agrave; 3 th&aacute;ng.</p>', 'Seacliff San Francisco, Sea Cliff Avenue, San Francisco, CA 94121, USA', '[\"properties\\/a3.jpg\",\"properties\\/a1.jpg\",\"properties\\/a2.jpg\",\"properties\\/a4.jpg\"]', 0, 5, 4, 3, 270, '41943000', NULL, 1, 'renting', '2019-11-21 07:18:36', '2020-11-17 03:09:39', 'rent', 'Ngôi nhà được tu sửa sang trọng và rộng rãi ở Sea Cliff với 3 tầng, 5 phòng ngủ và 4 phòng tắm, và Golden Gate View. Gara ô tô 4 chỗ. Ngôi nhà được tu sửa và rộng rãi với bố cục tuyệt vời, và được cung cấp nội thất. Nó quyến rũ và xinh đẹp với nhiều chi tiết, có cảnh quan phía trước chu đáo và sân sau rộng và sân trong, và có một cái nhìn tuyệt vời về Cổng Vàng', 2, 5, 'month', 9, 'Botble\\RealEstate\\Models\\Account', 1, 'approved', '2025-03-25', 0, 1),
(24, 'Cho thuê nhà view đẹp', '<p>C&oacute; một ph&ograve;ng ăn ch&iacute;nh thức v&agrave; ph&ograve;ng kh&aacute;ch rộng r&atilde;i nằm ở hai b&ecirc;n của giếng trời nh&agrave; bếp được cập nhật, tủ m&agrave;u trắng v&agrave; c&aacute;c thiết bị bằng th&eacute;p kh&ocirc;ng gỉ. Tận hưởng &aacute;nh s&aacute;ng tự nhi&ecirc;n rộng r&atilde;i v&agrave; quang cảnh ph&iacute;a nam ngoạn mục từ c&aacute;c cửa sổ lớn của ph&ograve;ng kh&aacute;ch ch&iacute;nh v&agrave; s&agrave;n đi bộ. Một ph&ograve;ng thưởng (ph&ograve;ng ngủ cho kh&aacute;ch / văn ph&ograve;ng) v&agrave; ph&ograve;ng tắm đầy đủ.</p>', 'Safeway San Francisco CA, Market Street, San Francisco, CA 94114, USA', '[\"properties\\/b5.jpg\",\"properties\\/b2.jpg\",\"properties\\/b1.jpg\",\"properties\\/b4.jpg\",\"properties\\/b6.jpg\"]', 0, 3, 2, 1, 180, '59852000', NULL, 1, 'renting', '2019-11-21 07:26:48', '2020-11-17 03:09:39', 'sale', 'Có một phòng ăn chính thức và phòng khách rộng rãi nằm ở hai bên của giếng trời nhà bếp được cập nhật, tủ màu trắng và các thiết bị bằng thép không gỉ. Tận hưởng ánh sáng tự nhiên rộng rãi và quang cảnh phía nam ngoạn mục từ các cửa sổ lớn của phòng khách chính và sàn đi bộ. Một phòng thưởng (phòng ngủ cho khách / văn phòng) và phòng tắm đầy đủ.', 2, 1, 'month', 1, 'Botble\\RealEstate\\Models\\Account', 3, 'approved', '2025-03-25', 0, 1),
(25, 'Bán căn hộ Osaka Heights', '<p><strong>Ph&ograve;ng bếp</strong><br />\r\nS&agrave;n l&aacute;t gạch men, mặt b&agrave;n đ&aacute; granite, chậu rửa b&aacute;t inox đơn c&oacute; bảng tho&aacute;t nước v&agrave; c&aacute;c quy định cho m&aacute;y lọc nước, m&aacute;y h&uacute;t m&ugrave;i điện, quạt h&uacute;t sẽ được cung cấp</p>\r\n\r\n<p><strong>Nh&agrave; vệ sinh</strong><br />\r\nGạch chống trượt tr&ecirc;n s&agrave;n v&agrave; gạch ốp tường c&oacute; chiều cao l&ecirc;n đến 7 feet. Phụ kiện vệ sinh thương hiệu m&agrave;u trắng, v&ograve;i mạ crom, hệ thống ống nước che giấu</p>\r\n\r\n<p><strong>Cửa ra v&agrave;o</strong><br />\r\nCửa ch&iacute;nh sẽ l&agrave; cửa gỗ chất lượng cao, cửa b&ecirc;n trong chất lượng cao cấp Windows c&oacute; khung gỗ, cửa trượt bằng nhựa UPVC hoặc nh&ocirc;m v&agrave; khung nh&ocirc;m c&oacute; k&iacute;nh cho cửa sổ</p>\r\n\r\n<p>9 km đến lối v&agrave;o đường cao tốc s&acirc;n bay Katunayaka</p>\r\n\r\n<p>12 km đến lối v&agrave;o đường cao tốc ph&iacute;a Nam tại Kottawa</p>\r\n\r\n<p>2 km đến bệnh viện đa khoa Kalubowila</p>\r\n\r\n<p>Tất cả c&aacute;c ng&acirc;n h&agrave;ng h&agrave;ng đầu trong v&ograve;ng v&agrave;i km b&aacute;n k&iacute;nh</p>\r\n\r\n<p>Rất gần c&aacute;c ga đường sắt</p>\r\n\r\n<p>Nhiều trường h&agrave;ng đầu bao gồm CIS trong b&aacute;n k&iacute;nh 5 km</p>', 'High Level Road, Colombo 06, Sri Lanka', '[\"properties\\/24-1.jpg\",\"properties\\/22-1.jpg\",\"properties\\/p1.jpg\",\"properties\\/p2.jpg\"]', 8, 2, 2, 1, 110, '3479767000', NULL, 1, 'selling', '2019-11-21 07:34:38', '2020-11-17 03:09:39', 'sale', 'Sàn lát gạch men, mặt bàn đá granite, chậu rửa bát inox đơn có bảng thoát nước và các quy định cho máy lọc nước, máy hút mùi điện, quạt hút sẽ được cung cấp. Gạch chống trượt trên sàn và gạch ốp tường có chiều cao lên đến 7 feet. Phụ kiện vệ sinh thương hiệu màu trắng, vòi mạ crom, hệ thống ống nước che giấu.', 2, 2, 'month', 2, 'Botble\\RealEstate\\Models\\Account', 6, 'approved', '2025-03-25', 0, 1),
(26, 'Bán nhà chính chủ Magnificent View', '<p>Nh&agrave; rộng r&atilde;i 3 ph&ograve;ng ngủ, s&aacute;ng sủa với lối v&agrave;o sảnh. Ph&ograve;ng tắm nắng, nh&agrave; bếp / ph&ograve;ng ăn / ph&ograve;ng kh&aacute;ch c&oacute; kh&ocirc;ng gian mở với trần l&oacute;t gỗ tuyết t&ugrave;ng, nh&agrave; bếp với tủ gỗ oregon v&agrave; l&ograve; nướng Smeg mới. M&aacute;y lạnh &amp; m&aacute;y sưởi gỗ<br />\r\nPh&ograve;ng ngủ k&iacute;ch thước tốt v&agrave; ph&ograve;ng ngủ ch&iacute;nh với spa nh&igrave;n ra khu vườn y&ecirc;n tĩnh v&agrave; lối v&agrave;o.</p>', '110 Springdale Heights, Hay Denmark, WA, Australia', '[\"properties\\/79.jpg\",\"properties\\/71.jpg\",\"properties\\/73.jpg\",\"properties\\/72.jpg\",\"properties\\/74.jpg\",\"properties\\/75.jpg\",\"properties\\/78.jpg\"]', 0, 3, 1, 1, 2000, '16099870', NULL, 1, 'selling', '2019-11-21 07:40:46', '2020-11-17 03:09:39', 'sale', 'Nhà rộng rãi 3 phòng ngủ, sáng sủa với lối vào sảnh. Phòng tắm nắng, nhà bếp / phòng ăn / phòng khách có không gian mở với trần lót gỗ tuyết tùng, nhà bếp với tủ gỗ oregon và lò nướng Smeg mới. Máy lạnh & máy sưởi gỗ', 2, 2, 'month', 6, 'Botble\\RealEstate\\Models\\Account', 5, 'approved', '2025-03-25', 0, 1),
(27, 'Cho thuê nhà trên đường Thompsons', '<p>Nằm ở vị tr&iacute; ho&agrave;n hảo trong v&ugrave;ng ngoại &ocirc; độc quyền của Bulleen, ng&ocirc;i nh&agrave; 3 ph&ograve;ng ngủ được cải tạo n&agrave;y mang đến một lối sống tuyệt vời cho những người t&igrave;m kiếm tất cả c&aacute;c tiện nghi, sự ri&ecirc;ng tư, thuận tiện cho đường cao tốc &amp; giao th&ocirc;ng, v&agrave; kh&ocirc;ng gian.<br />\r\nBạn được ch&agrave;o đ&oacute;n bởi một khu vườn ph&iacute;a trước đẹp, &iacute;t bảo tr&igrave; v&agrave; được thiết lập, với b&atilde;i đậu xe rộng r&atilde;i, một hi&ecirc;n nh&agrave; cao v&agrave; nh&agrave; để xe lớn tantum. B&ecirc;n trong, bạn sẽ t&igrave;m thấy một bảng m&agrave;u trung t&iacute;nh đ&aacute;ng y&ecirc;u v&agrave; gần s&agrave;n gỗ mới lấp l&aacute;nh. C&oacute; ba ph&ograve;ng ngủ rộng r&atilde;i, tất cả đều được x&acirc;y dựng với &aacute;o cho&agrave;ng, được phục vụ bởi ph&ograve;ng tắm gia đ&igrave;nh trung t&acirc;m v&agrave; ph&ograve;ng bột ri&ecirc;ng biệt, c&ugrave;ng với một ph&ograve;ng kh&aacute;ch rộng mở v&agrave; ph&ograve;ng ăn trang trọng rạng rỡ với &aacute;nh s&aacute;ng tự nhi&ecirc;n. Nh&agrave; bếp tuyệt đẹp đi k&egrave;m với c&aacute;c thiết bị Blanco, quầy bar ăn s&aacute;ng v&agrave; c&aacute;c phụ kiện v&agrave; đồ đạc chất lượng h&agrave;ng đầu.</p>', 'Thompsons Road, Bulleen VIC, Australia', '[\"properties\\/5-1.jpg\",\"properties\\/7-1.jpg\",\"properties\\/8-1.jpg\",\"properties\\/9.jpg\",\"properties\\/6.jpg\"]', 0, 3, 3, 1, 160, '33985098', NULL, 1, 'renting', '2019-11-21 07:45:34', '2020-11-17 03:09:39', 'rent', 'Nằm ở vị trí hoàn hảo trong vùng ngoại ô độc quyền của Bulleen, ngôi nhà 3 phòng ngủ được cải tạo này mang đến một lối sống tuyệt vời cho những người tìm kiếm tất cả các tiện nghi, sự riêng tư, thuận tiện cho đường cao tốc & giao thông, và không gian.\r\nBạn được chào đón bởi một khu vườn phía trước đẹp, ít bảo trì và được thiết lập, với bãi đậu xe rộng rãi, một hiên nhà cao và nhà để xe lớn tantum', 2, 2, 'month', 1, 'Botble\\RealEstate\\Models\\Account', 2, 'approved', '2025-03-25', 0, 1),
(28, 'Căn hộ 1 phòng ngủ hoàn toàn mới ở vị trí hạng nhất', '<p>Nằm ph&iacute;a sau Sandy Bay Road, đi bộ đến mọi thứ quan trọng: l&agrave;ng Battery Point s&ocirc;i động, Salamanca Place (khu giải tr&iacute; h&agrave;ng đầu của Tasmania), Trung t&acirc;m th&agrave;nh phố, Đại học Tasmania, kh&aacute;ch sạn, b&aacute;n lẻ v&agrave; dễ d&agrave;ng đi bộ từ c&aacute;c cửa h&agrave;ng Sandy Bay nhộn nhịp, trường học địa phương v&agrave; với giao th&ocirc;ng c&ocirc;ng cộng b&ecirc;n ngo&agrave;i cửa trước của bạn.<br />\r\nXin lưu &yacute;: Người cao tuổi Brown v&agrave; Ng&acirc;n h&agrave;ng kh&ocirc;ng chấp nhận đơn đăng k&yacute; từ những người nộp đơn chưa kiểm tra t&agrave;i sản trong nội bộ.</p>', 'Sandy Bay Road, Sandy Bay TAS, Australia', '[\"properties\\/12.jpg\",\"properties\\/10.jpg\",\"properties\\/13.jpg\",\"properties\\/14.jpg\",\"properties\\/15.jpg\"]', 0, 1, 1, 1, 80, '39047980', NULL, 1, 'renting', '2019-11-21 19:53:17', '2020-11-17 03:09:39', 'rent', 'Nằm phía sau Sandy Bay Road, đi bộ đến mọi thứ quan trọng: làng Battery Point sôi động, Salamanca Place (khu giải trí hàng đầu của Tasmania), Trung tâm thành phố, Đại học Tasmania, khách sạn, bán lẻ và dễ dàng đi bộ từ các cửa hàng Sandy Bay nhộn nhịp, trường học địa phương và với giao thông công cộng bên ngoài cửa trước của bạn.', 2, 2, 'month', 10, 'Botble\\RealEstate\\Models\\Account', 5, 'approved', '2025-03-25', 0, 1),
(29, 'Nhà cao cấp thanh lịch', '<p>Dọn v&agrave;o ở ngay, ng&ocirc;i nh&agrave; bốn ph&ograve;ng ngủ được tr&igrave;nh b&agrave;y đẹp mắt n&agrave;y v&agrave; tận hưởng những điều tốt nhất trong cuộc sống gia đ&igrave;nh hiện đại kh&ocirc;ng cần trang bị tu sửa g&igrave; th&ecirc;m. Hai khu vực sinh hoạt ri&ecirc;ng biệt v&agrave; bốn ph&ograve;ng ngủ rộng r&atilde;i cung cấp nhiều kh&ocirc;ng gian để ph&aacute;t triển, v&agrave; giải tr&iacute; l&agrave; một niềm vui thực sự tr&ecirc;n s&acirc;n hi&ecirc;n thanh lịch trong một khung cảnh vườn y&ecirc;n b&igrave;nh. Ng&ocirc;i nh&agrave; l&yacute; tưởng đặt khoảng c&aacute;ch đi bộ đến c&ocirc;ng vi&ecirc;n v&agrave; trạm dừng xe bu&yacute;t, những khoảnh khắc bạn chọn trường v&agrave; chỉ v&agrave;i ph&uacute;t đến Westfield North Lakes.</p>', 'North Lakes QLD 4509, Australia', '[\"properties\\/a1-1.jpg\",\"properties\\/a2-1.jpg\",\"properties\\/a3-1.jpg\",\"properties\\/a5.jpg\",\"properties\\/a4-1.jpg\",\"properties\\/a6.jpg\",\"properties\\/21.jpeg\"]', 0, 3, 3, 1, 658, '36780000', NULL, 1, 'renting', '2019-11-21 19:59:16', '2020-11-17 03:09:39', 'rent', 'Dọn vào ở ngay, ngôi nhà bốn phòng ngủ được trình bày đẹp mắt này và tận hưởng những điều tốt nhất trong cuộc sống gia đình hiện đại không cần trang bị tu sửa gì thêm. Hai khu vực sinh hoạt riêng biệt và bốn phòng ngủ rộng rãi cung cấp nhiều không gian để phát triển, và giải trí là một niềm vui thực sự trên sân hiên thanh lịch trong một khung cảnh vườn yên bình', 2, 5, 'month', 4, 'Botble\\RealEstate\\Models\\Account', 5, 'approved', '2025-03-25', 0, 1),
(30, 'Cần bán căn hộ cao cấp tại Singapore', '<p>Căn hộ n&agrave;y nằm ở Singapore, nơi đ&atilde; trở th&agrave;nh một trung t&acirc;m sống thoải m&aacute;i cho người sống, cung cấp cả lợi nhuận hấp dẫn cho c&aacute;c nh&agrave; đầu tư v&agrave; ph&iacute; bảo hiểm cao.<br />\r\n- Tầng cao<br />\r\n- Gia đ&igrave;nh trung quốc<br />\r\n- Khu vườn Tr&ecirc;n M&acirc;y<br />\r\n- S&acirc;n thượng đẹp với Jaccuzzi v&agrave; Ph&ograve;ng ăn Alfresco<br />\r\n- Được cải tạo với chất lượng ho&agrave;n thiện<br />\r\n- Gần Tiện nghi<br />\r\n- Rất nhiều qu&aacute;n ăn.<br />\r\n- 5 ph&uacute;t đi bộ đến NTUC / Shaw Plaza<br />\r\n- Chỉ mất v&agrave;i ph&uacute;t l&aacute;i xe đến đại lộ</p>', 'Balestier Road, Singapore', '[\"properties\\/5-2.jpg\",\"properties\\/2-3.jpg\",\"properties\\/3-3.jpg\",\"properties\\/4-2.jpg\",\"properties\\/1-3.jpg\"]', 0, 2, 2, 1, 78, '21336980700', NULL, 1, 'selling', '2019-11-22 00:29:01', '2020-11-17 03:09:39', 'sale', 'Căn hộ này nằm ở Singapore, tầng cao, gia đình Trung Quốc, khu vườn Trên Mây, sân thượng đẹp với Jaccuzzi và phòng ăn Alfresco, được cải tạo với chất lượng hoàn thiện, gần Tiện nghi, rất nhiều quán ăn, 5 phút đi bộ đến NTUC / Shaw Plaza, chỉ mất vài phút lái xe đến đại lộ', 2, 1, 'month', 9, 'Botble\\RealEstate\\Models\\Account', 5, 'approved', '2025-03-25', 0, 1),
(31, 'Cần bán căn hộ cao cấp 5 phòng tại Kuala Lumpur', '<p>The Sentral Residence (CONDO LUXURY MỚI)</p>\r\n\r\n<p>Kế b&ecirc;n&nbsp;kh&aacute;ch sạn 5 sao St Regis<br />\r\nKhả năng tiếp cận tuyệt vời (LRT, KLIA TRANSIT, KTM)<br />\r\nPh&ograve;ng chờ tr&ecirc;n tầng thượng, hồ bơi ngo&agrave;i&nbsp;trời, ph&ograve;ng tập thể dục ngo&agrave;i&nbsp;trời<br />\r\n-Private n&acirc;ng sảnh để sở hữu đơn vị</p>\r\n\r\n<p>ĐƠN VỊ PREMIUM EPIC LUXE<br />\r\n(View KLCC v&agrave;&nbsp;Lake Garden)</p>\r\n\r\n<p>Đơn vị lớn nhất tại Sentral Residence</p>', 'Kuala Lumpur, Malaysia', '[\"properties\\/6-2.jpg\",\"properties\\/7-2.jpg\",\"properties\\/9-1.jpg\",\"properties\\/8-2.jpg\",\"properties\\/10-1.jpg\",\"properties\\/11-1.jpg\"]', 0, 5, 7, 20, 377, '36987040000', NULL, 1, 'selling', '2019-11-22 00:42:28', '2020-11-17 03:09:39', 'sale', 'Kế bên khách sạn 5 sao St Regis\r\nKhả năng tiếp cận tuyệt vời (LRT, KLIA TRANSIT, KTM)\r\nPhòng chờ trên tầng thượng, hồ bơi ngoài trời, phòng tập thể dục ngoài trời, View KLCC và Lake Garden', 1, 3, 'month', 3, 'Botble\\RealEstate\\Models\\Account', 2, 'approved', '2025-03-25', 0, 1),
(32, 'Nhà 2 tầng tại Compound Pejaten Barat Kemang', '<p>Muốn cho thu&ecirc; một ng&ocirc;i nh&agrave; đẹp trong khu phức hợp. Được cải tạo, theo phong c&aacute;ch Bali, khu nh&agrave; ấm c&uacute;ng v&agrave; thoải m&aacute;i 220/300, 3 ph&ograve;ng ngủ, 2 ph&ograve;ng tắm, s&acirc;n vườn được cải tạo: hồ bơi, khu đ&aacute;nh tenis, đường chạy bộ 24 giờ gi&aacute; thu&ecirc; an ninh: 250.000 IDR. 000 / năm</p>', 'Kota Administrasi Jakarta Selatan, South Jakarta City, Jakarta Raya, Indonesia', '[\"properties\\/a1-2.jpg\",\"properties\\/a2-2.jpg\",\"properties\\/a3-2.jpg\",\"properties\\/a4-2.jpg\"]', 0, 3, 2, 2, 200, '32468000', NULL, 1, 'renting', '2019-11-22 00:47:18', '2020-11-17 03:09:39', 'rent', 'Muốn cho thuê một ngôi nhà đẹp trong khu phức hợp. Được cải tạo, theo phong cách Bali, khu nhà ấm cúng và thoải mái 220/300, 3 phòng ngủ, 2 phòng tắm, sân vườn được cải tạo: hồ bơi, khu đánh tenis, đường chạy bộ 24 giờ giá thuê an ninh: 250.000 IDR. 000 / năm', 2, 5, 'month', 4, 'Botble\\RealEstate\\Models\\Account', 5, 'approved', '2025-03-25', 0, 1),
(33, 'Căn hộ Muiderstraatweg ở Diemen', '<p>Cho thu&ecirc; căn hộ 3 ph&ograve;ng ngủ đầy đủ nội thất ở Diemen.<br />\r\nRất th&iacute;ch hợp cho một cặp vợ chồng&nbsp;hoặc tối đa 2 người chia sẻ l&agrave;m việc, kh&ocirc;ng bị kiểm so&aacute;t bởi chủ nh&agrave;</p>\r\n\r\n<p>Căn hộ hiện đại đ&aacute;ng y&ecirc;u v&agrave; được bảo tr&igrave; rất tốt ở Diemen.<br />\r\nNh&agrave; kh&aacute;ch&nbsp;nằm ở tầng một, nơi bạn sẽ t&igrave;m thấy ph&ograve;ng kh&aacute;ch v&agrave; nh&agrave; bếp với tất cả c&aacute;c tiện nghi hiện đại.<br />\r\nTr&ecirc;n tầng hai, 2 ph&ograve;ng ngủ v&agrave; một ph&ograve;ng tắm đẹp với v&ograve;i sen v&agrave; bồn tắm ri&ecirc;ng biệt.<br />\r\nTr&ecirc;n tầng n&agrave;y bạn c&oacute; quyền ra v&agrave;o s&acirc;n thượng nhỏ.<br />\r\nCuối c&ugrave;ng nhưng kh&ocirc;ng k&eacute;m phần quan trọng l&agrave; một ph&ograve;ng g&aacute;c m&aacute;i rộng r&atilde;i tr&ecirc;n tầng ba.<br />\r\nXe điện dừng trước cửa v&agrave; trong v&ograve;ng 20 ph&uacute;t, bạn sẽ ở trung t&acirc;m của Amsterdam.<br />\r\nTh&uacute; cưng kh&ocirc;ng được ph&eacute;p nu&ocirc;i.</p>', 'Diemen, Netherlands', '[\"properties\\/b4-1.jpg\",\"properties\\/b3.jpg\",\"properties\\/b5-1.jpg\"]', 0, 3, 1, 2, 90, '49578000', NULL, 1, 'renting', '2019-11-22 00:57:15', '2020-11-17 03:09:35', 'rent', 'Căn hộ hiện đại đáng yêu và được bảo trì rất tốt ở Diemen.\r\nNhà khách nằm ở tầng một, nơi bạn sẽ tìm thấy phòng khách và nhà bếp với tất cả các tiện nghi hiện đại.\r\nTrên tầng hai, 2 phòng ngủ và một phòng tắm đẹp với vòi sen và bồn tắm riêng biệt.\r\nTrên tầng này bạn có quyền ra vào sân thượng nhỏ.', 2, 1, 'month', 10, 'Botble\\RealEstate\\Models\\Account', 6, 'approved', '2025-03-25', 0, 1),
(34, 'Căn hộ đẹp cho thuê ở Berlin', '<p>Căn hộ đầy đủ nội thất, với c&aacute;c tiện nghi hiện đại sẽ khiến bạn cảm thấy như đang ở nh&agrave;. Một điểm khởi đầu tuyệt vời để kh&aacute;m ph&aacute; phần c&ograve;n lại của th&agrave;nh phố v&agrave; nhiều vi&ecirc;n ngọc ẩn của n&oacute;. Khu vực Ở trung t&acirc;m của Đ&ocirc;ng Berlin, bạn sẽ t&igrave;m thấy mọi thứ, từ những m&oacute;n ăn đường phố ngon đến những khu chợ trời, đến những nh&agrave; h&agrave;ng cao cấp.<br />\r\nTrong nh&agrave; c&oacute;&nbsp;một chiếc giường cỡ Queen, nh&agrave; bếp đầy đủ tiện nghi, ph&ograve;ng tắm ri&ecirc;ng biệt với v&ograve;i sen kh&ocirc;ng cửa v&agrave; khu vực học tập khi sinh vi&ecirc;n tận tụy thức dậy. Một số ph&ograve;ng c&oacute; tầm nh&igrave;n tuyệt vời, số kh&aacute;c c&oacute; ban c&ocirc;ng đẹp v&agrave; ấm c&uacute;ng.</p>', 'Berlin, Germany', '[\"properties\\/t3.jpg\",\"properties\\/t1.jpg\",\"properties\\/t2.jpg\",\"properties\\/t4.jpg\",\"properties\\/t5.jpg\"]', 0, 1, 1, 1, 33, '28970758', NULL, 1, 'renting', '2019-11-22 01:06:09', '2020-11-17 03:09:39', 'rent', 'Căn hộ đầy đủ nội thất, với các tiện nghi hiện đại sẽ khiến bạn cảm thấy như đang ở nhà. Một điểm khởi đầu tuyệt vời để khám phá phần còn lại của thành phố và nhiều viên ngọc ẩn của nó. Khu vực Ở trung tâm của Đông Berlin, bạn sẽ tìm thấy mọi thứ, từ những món ăn đường phố ngon đến những khu chợ trời, đến những nhà hàng cao cấp.', 2, 5, 'month', 9, 'Botble\\RealEstate\\Models\\Account', 2, 'approved', '2025-03-25', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `re_property_features`
--

CREATE TABLE `re_property_features` (
  `property_id` int(10) UNSIGNED NOT NULL,
  `feature_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `re_property_features`
--

INSERT INTO `re_property_features` (`property_id`, `feature_id`) VALUES
(4, 2),
(5, 2),
(5, 4),
(5, 5),
(5, 7),
(6, 1),
(6, 3),
(6, 5),
(6, 6),
(7, 1),
(7, 3),
(7, 5),
(7, 8),
(8, 1),
(8, 3),
(8, 5),
(8, 7),
(8, 8),
(9, 1),
(9, 4),
(9, 5),
(9, 6),
(10, 1),
(10, 3),
(10, 4),
(10, 5),
(10, 6),
(11, 1),
(11, 2),
(11, 3),
(11, 4),
(11, 5),
(11, 7),
(12, 1),
(12, 3),
(12, 4),
(12, 5),
(12, 6),
(13, 1),
(13, 2),
(13, 3),
(13, 4),
(13, 5),
(13, 7),
(14, 1),
(14, 2),
(14, 3),
(14, 5),
(14, 7),
(14, 8),
(15, 1),
(15, 2),
(15, 3),
(15, 5),
(15, 6),
(16, 1),
(16, 3),
(16, 5),
(16, 7),
(16, 8),
(17, 1),
(17, 5),
(17, 7),
(1, 1),
(1, 2),
(1, 4),
(1, 5),
(1, 6),
(18, 11),
(18, 12),
(18, 13),
(18, 15),
(18, 16),
(19, 11),
(19, 12),
(19, 13),
(19, 15),
(19, 16),
(2, 1),
(2, 2),
(2, 4),
(2, 5),
(2, 6),
(3, 1),
(3, 2),
(3, 5),
(3, 6),
(20, 11),
(20, 12),
(20, 15),
(20, 16),
(4, 5),
(4, 6),
(21, 11),
(21, 12),
(21, 15),
(22, 10),
(22, 11),
(22, 13),
(22, 15),
(23, 11),
(23, 12),
(23, 14),
(23, 16),
(24, 9),
(24, 12),
(24, 14),
(24, 16),
(25, 9),
(25, 10),
(25, 11),
(25, 14),
(25, 16),
(26, 11),
(26, 12),
(26, 13),
(26, 16),
(27, 11),
(27, 12),
(27, 13),
(27, 14),
(27, 16),
(28, 10),
(28, 12),
(28, 13),
(28, 14),
(28, 15),
(28, 16),
(29, 11),
(29, 12),
(29, 13),
(29, 14),
(29, 15),
(30, 10),
(30, 12),
(30, 13),
(30, 14),
(30, 15),
(30, 16),
(31, 9),
(31, 10),
(31, 12),
(31, 14),
(31, 15),
(31, 16),
(32, 11),
(32, 12),
(32, 14),
(32, 15),
(32, 16),
(33, 9),
(33, 10),
(33, 12),
(33, 14),
(33, 16),
(34, 10),
(34, 12),
(34, 16);

-- --------------------------------------------------------

--
-- Table structure for table `re_tags`
--

CREATE TABLE `re_tags` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(300) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `re_tags_items`
--

CREATE TABLE `re_tags_items` (
  `tag_id` int(10) UNSIGNED NOT NULL,
  `item_id` int(10) UNSIGNED NOT NULL,
  `type` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `slug` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `permissions` text COLLATE utf8mb4_unicode_ci,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_default` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `created_by` int(10) UNSIGNED NOT NULL,
  `updated_by` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `role_users`
--

CREATE TABLE `role_users` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `key`, `value`, `created_at`, `updated_at`) VALUES
(5, 'theme', 'flex-home', NULL, NULL),
(10, 'activated_plugins', '[\"language\",\"real-estate\",\"audit-log\",\"blog\",\"newsletter\",\"contact\",\"captcha\",\"note\",\"backup\",\"analytics\",\"location\",\"career\",\"social-login\",\"vendor\",\"payment\",\"translation\",\"cookie-consent\",\"razorpay\",\"paystack\"]', NULL, NULL),
(11, 'admin_email', 'admin@botble.com', NULL, NULL),
(12, 'time_zone', 'UTC', NULL, NULL),
(13, 'enable_send_error_reporting_via_email', '0', NULL, NULL),
(16, 'admin_title', 'Flex Home', NULL, NULL),
(17, 'rich_editor', 'ckeditor', NULL, NULL),
(18, 'default_admin_theme', 'default', NULL, NULL),
(19, 'enable_change_admin_theme', '1', NULL, NULL),
(20, 'enable_multi_language_in_admin', '1', NULL, NULL),
(21, 'enable_cache', '0', NULL, NULL),
(22, 'cache_time', '10', NULL, NULL),
(23, 'cache_admin_menu_enable', '0', NULL, NULL),
(24, 'optimize_page_speed_enable', '0', NULL, NULL),
(27, 'cache_time_site_map', '3600', NULL, NULL),
(28, 'show_admin_bar', '1', NULL, NULL),
(29, 'theme-flex-home-site_title', 'Flex Home', NULL, NULL),
(30, 'theme-flex-home-show_site_name', '0', NULL, NULL),
(33, 'theme-flex-home-copyright', '© 2020 Flex Home is Proudly Powered by Botble Team', NULL, NULL),
(36, 'theme-flex-home-home_banner', 'banner/banner.jpg', NULL, NULL),
(37, 'theme-flex-home-logo', 'logo/logo.png', NULL, NULL),
(40, 'theme-flex-home-facebook', 'https://www.facebook.com', NULL, NULL),
(41, 'theme-flex-home-youtube', 'https://youtube.com', NULL, NULL),
(44, 'theme-flex-home-hotline', '18006268', NULL, NULL),
(45, 'theme-flex-home-address', 'North Link Building, 10 Admiralty Street, 757695 Singapore', NULL, NULL),
(46, 'theme-flex-home-email', 'contact@flex-home.com', NULL, NULL),
(49, 'theme-flex-home-logo_white', 'logo/logo-white.png', NULL, NULL),
(50, 'membership_authorization_at', '2020-09-23 12:52:41', NULL, NULL),
(56, 'enable_captcha', '0', NULL, NULL),
(57, 'captcha_site_key', 'no-captcha-site-key', NULL, NULL),
(58, 'captcha_secret', 'no-captcha-secret', NULL, NULL),
(65, 'store_weight_unit', 'g', NULL, NULL),
(66, 'store_width_height_unit', 'cm', NULL, NULL),
(67, 'currencies_is_default', '0', NULL, NULL),
(68, 'language_hide_default', '1', NULL, NULL),
(69, 'language_display', 'all', NULL, NULL),
(70, 'language_switcher_display', 'list', NULL, NULL),
(71, 'language_hide_languages', '[]', NULL, NULL),
(72, 'language_show_default_item_if_current_version_not_existed', '1', NULL, NULL),
(73, 'theme-flex-home-seo_title', 'Flex Home', NULL, NULL),
(80, 'blog_page_id', '1', NULL, NULL),
(85, 'theme-flex-home-vi-site_title', 'Flex Home - Trang thông tin mua bán Bất Động Sản', NULL, NULL),
(86, 'theme-flex-home-vi-show_site_name', '0', NULL, NULL),
(87, 'theme-flex-home-vi-seo_title', 'Flex Home - Trang thông tin mua bán Bất Động Sản', NULL, NULL),
(89, 'theme-flex-home-vi-home_banner', 'banner/banner.jpg', NULL, NULL),
(90, 'theme-flex-home-vi-copyright', '© 2020 Flex Home là một sản phẩm về lĩnh vực bất động sản của Botble Team', NULL, NULL),
(91, 'theme-flex-home-vi-hotline', '18006268', NULL, NULL),
(92, 'theme-flex-home-vi-address', 'Tòa nhà North Link, Đường 10 Admiralty, 757695 Singapore', NULL, NULL),
(93, 'theme-flex-home-vi-email', 'contact@flex-home.com', NULL, NULL),
(95, 'theme-flex-home-vi-logo', 'logo/logo.png', NULL, NULL),
(96, 'theme-flex-home-vi-logo_white', 'logo/logo-white.png', NULL, NULL),
(104, 'theme-flex-home-vi-facebook', 'https://www.facebook.com', NULL, NULL),
(105, 'theme-flex-home-vi-youtube', 'https://youtube.com', NULL, NULL),
(133, 'theme-flex-home-favicon', 'logo/favicon.png', NULL, NULL),
(143, 'theme-flex-home-vi-favicon', 'logo/favicon.png', NULL, NULL),
(148, 'theme-flex-home-seo_description', 'Find your favorite homes at Flex Home', NULL, NULL),
(149, 'theme-flex-home-about-us', 'Founded on August 28, 1993 (formerly known as Truong Thinh Phat Construction Co., Ltd.), Flex Home operates in the field of real estate business, building villas for rent.\n\nSlogan \"Breaking time, through space\".', NULL, NULL),
(150, 'theme-flex-home-home_project_description', 'We make the best choices with the hottest and most prestigious projects, please visit the details below to find out more', NULL, NULL),
(151, 'theme-flex-home-home_description_for_properties_by_locations', 'Each place is a good choice, it will help you make the right decision, do not miss the opportunity to discover our wonderful properties.', NULL, NULL),
(152, 'theme-flex-home-home_description_for_news', 'Below is the latest real estate news we get regularly updated from reliable sources.', NULL, NULL),
(153, 'theme-flex-home-vi-seo_description', 'Tìm ngôi nhà yêu thích tại FlexHome', NULL, NULL),
(154, 'theme-flex-home-vi-about-us', 'Được thành lập ngày 28 - 08 -1993 (tiền thân là công ty TNHH Xây Dựng Trường Thịnh Phát), Flex Home hoạt động trong lĩnh vực kinh doanh bất động sản, xây biệt thự cho thuê. \nPhương châm  “Đánh bật thời gian, xuyên qua không gian\"', NULL, NULL),
(155, 'theme-flex-home-vi-home_project_description', 'Chúng tôi đưa ra những lựa chọn tốt nhất với những dự án hot và uy tín bậc nhất hiện nay, hãy truy cập vào thông tin chi tiết bên dưới để tìm hiểu thêm nhé.', NULL, NULL),
(156, 'theme-flex-home-vi-home_description_for_properties_by_locations', 'Mỗi căn hộ là một lựa chọn tốt, nó sẽ giúp bạn đưa ra quyết định đúng đắn, đừng bỏ lỡ cơ hội khám phá những căn hộ tuyệt vời của chúng tôi.', NULL, NULL),
(157, 'theme-flex-home-vi-home_description_for_news', 'Bên dưới đây là những tin tức mới nhất về lĩnh vực bất động sản được chúng tôi cập nhật thường xuyên từ những nguồn tin đáng tin cậy.', NULL, NULL),
(167, 'theme-flex-home-primary_font', 'Nunito Sans', NULL, NULL),
(168, 'theme-flex-home-twitter', '', NULL, NULL),
(169, 'theme-flex-home-number_of_featured_projects', '4', NULL, NULL),
(170, 'theme-flex-home-number_of_featured_cities', '10', NULL, NULL),
(171, 'theme-flex-home-number_of_properties_for_sell', '8', NULL, NULL),
(172, 'theme-flex-home-number_of_properties_for_rent', '8', NULL, NULL),
(173, 'theme-flex-home-number_of_projects_per_page', '12', NULL, NULL),
(174, 'theme-flex-home-number_of_properties_per_page', '12', NULL, NULL),
(175, 'theme-flex-home-number_of_related_projects', '8', NULL, NULL),
(176, 'theme-flex-home-number_of_related_properties', '8', NULL, NULL),
(177, 'theme-flex-home-properties_description', 'Each place is a good choice, it will help you make the right decision, do not miss the opportunity to discover our wonderful properties.', NULL, NULL),
(178, 'theme-flex-home-home_description_for_properties_for_sale', 'Below is a list of properties that are currently up for sale', NULL, NULL),
(179, 'theme-flex-home-home_description_for_properties_for_rent', 'Below is a detailed price list of each property for rent', NULL, NULL),
(182, 'show_on_front', '7', NULL, NULL),
(196, 'theme-flex-home-number_of_properties_for_sale', '8', NULL, NULL),
(197, 'theme-flex-home-home_banner_description', 'Find your favorite homes at Flex Home', NULL, NULL),
(198, 'theme-flex-home-home_description_for_projects_by_locations', '', NULL, NULL),
(199, 'theme-flex-home-vi-primary_font', 'Nunito Sans', NULL, NULL),
(200, 'theme-flex-home-vi-twitter', '', NULL, NULL),
(201, 'theme-flex-home-vi-number_of_featured_projects', '4', NULL, NULL),
(202, 'theme-flex-home-vi-number_of_featured_cities', '10', NULL, NULL),
(203, 'theme-flex-home-vi-number_of_properties_for_sale', '8', NULL, NULL),
(204, 'theme-flex-home-vi-number_of_properties_for_rent', '8', NULL, NULL),
(205, 'theme-flex-home-vi-number_of_projects_per_page', '12', NULL, NULL),
(206, 'theme-flex-home-vi-number_of_properties_per_page', '12', NULL, NULL),
(207, 'theme-flex-home-vi-number_of_related_projects', '8', NULL, NULL),
(208, 'theme-flex-home-vi-number_of_related_properties', '8', NULL, NULL),
(209, 'theme-flex-home-vi-home_banner_description', 'Tìm ngôi nhà yêu thích tại FlexHome', NULL, NULL),
(210, 'theme-flex-home-vi-properties_description', '', NULL, NULL),
(211, 'theme-flex-home-vi-home_description_for_projects_by_locations', '', NULL, NULL),
(212, 'theme-flex-home-vi-home_description_for_properties_for_sale', '', NULL, NULL),
(213, 'theme-flex-home-vi-home_description_for_properties_for_rent', '', NULL, NULL),
(214, 'payment_cod_name', 'Cash on delivery (COD)', NULL, NULL),
(216, 'payment_cod_status', '1', NULL, NULL),
(217, 'payment_bank_transfer_name', 'Bank transfer', NULL, NULL),
(219, 'payment_bank_transfer_status', '1', NULL, NULL),
(220, 'theme-flex-home-vi-seo_og_image', '', NULL, NULL),
(221, 'theme-flex-home-vi-primary_color', '#1D5F6F', NULL, NULL),
(222, 'theme-flex-home-vi-primary_color_hover', '#063A5D', NULL, NULL),
(223, 'theme-flex-home-vi-blog_page_id', '2', NULL, NULL),
(224, 'theme-flex-home-vi-number_of_posts_in_a_category', '12', NULL, NULL),
(225, 'theme-flex-home-vi-number_of_posts_in_a_tag', '12', NULL, NULL),
(227, 'theme-flex-home-vi-cookie_consent_enable', 'yes', NULL, NULL),
(228, 'theme-flex-home-vi-cookie_consent_message', 'Your experience on this site will be improved by allowing cookies.', NULL, NULL),
(229, 'theme-flex-home-vi-cookie_consent_button_text', 'Allow cookies', NULL, NULL),
(230, 'theme-flex-home-seo_og_image', '', NULL, NULL),
(231, 'theme-flex-home-primary_color', '#1D5F6F', NULL, NULL),
(232, 'theme-flex-home-primary_color_hover', '#063A5D', NULL, NULL),
(233, 'theme-flex-home-blog_page_id', '1', NULL, NULL),
(234, 'theme-flex-home-number_of_posts_in_a_category', '12', NULL, NULL),
(235, 'theme-flex-home-number_of_posts_in_a_tag', '12', NULL, NULL),
(237, 'theme-flex-home-cookie_consent_enable', 'yes', NULL, NULL),
(238, 'theme-flex-home-cookie_consent_message', 'Your experience on this site will be improved by allowing cookies.', NULL, NULL),
(239, 'theme-flex-home-cookie_consent_button_text', 'Allow cookies', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `slugs`
--

CREATE TABLE `slugs` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reference_id` int(10) UNSIGNED NOT NULL,
  `reference_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prefix` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `slugs`
--

INSERT INTO `slugs` (`id`, `key`, `reference_id`, `reference_type`, `prefix`, `created_at`, `updated_at`) VALUES
(1, '3-beds-villa-calpe-alicante', 1, 'Botble\\RealEstate\\Models\\Property', 'properties', '2019-11-17 20:34:59', '2019-11-17 20:34:59'),
(2, 'property-for-sale-johannesburg-south-africa', 2, 'Botble\\RealEstate\\Models\\Property', 'properties', '2019-11-17 20:53:34', '2019-11-17 20:53:34'),
(3, 'stunning-french-inspired-manor', 3, 'Botble\\RealEstate\\Models\\Property', 'properties', '2019-11-17 21:09:55', '2019-11-17 21:09:55'),
(4, '42460-buccaneer-court', 4, 'Botble\\RealEstate\\Models\\Property', 'properties', '2019-11-17 21:18:11', '2019-11-17 21:18:11'),
(5, 'wifi', 1, 'Botble\\RealEstate\\Models\\PropertyFeature', '', '2019-11-17 21:40:58', '2019-11-17 21:40:58'),
(6, 'swimming-pool', 2, 'Botble\\RealEstate\\Models\\PropertyFeature', '', '2019-11-17 21:41:43', '2019-11-17 21:41:43'),
(7, 'walnut-park-apartment', 1, 'Botble\\RealEstate\\Models\\Project', 'projects', '2019-11-18 00:34:49', '2019-11-18 00:34:49'),
(8, 'walnut-park-apartment', 5, 'Botble\\RealEstate\\Models\\Property', 'properties', '2019-11-18 00:47:52', '2019-11-18 00:47:52'),
(9, 'el-camino-del-mar', 6, 'Botble\\RealEstate\\Models\\Property', 'properties', '2019-11-18 01:05:58', '2019-11-18 01:05:58'),
(10, 'family-victorian-view-home', 7, 'Botble\\RealEstate\\Models\\Property', 'properties', '2019-11-18 01:12:07', '2019-11-18 01:12:07'),
(11, 'osaka-heights', 2, 'Botble\\RealEstate\\Models\\Project', 'projects', '2019-11-18 01:28:45', '2019-11-18 01:28:45'),
(12, 'osaka-heights-apartment', 8, 'Botble\\RealEstate\\Models\\Property', 'properties', '2019-11-18 01:49:36', '2019-11-18 01:49:36'),
(13, 'private-estate-magnificent-views', 9, 'Botble\\RealEstate\\Models\\Property', 'properties', '2019-11-18 02:02:19', '2019-11-18 02:02:19'),
(14, 'harry-baskervilles-hay-loft', 10, 'Botble\\RealEstate\\Models\\Property', 'properties', '2019-11-18 02:16:53', '2019-11-18 02:16:53'),
(15, 'break-lease-available', 11, 'Botble\\RealEstate\\Models\\Property', 'properties', '2019-11-18 02:22:48', '2019-11-18 02:22:48'),
(16, 'category-news', 1, 'Botble\\Blog\\Models\\Category', '', '2019-11-18 02:33:35', '2019-11-21 07:47:52'),
(17, 'elegant-family-home-presents-premium-modern-living', 12, 'Botble\\RealEstate\\Models\\Property', 'properties', '2019-11-18 02:47:05', '2019-11-18 02:47:05'),
(18, 'bcg-sets-great-store-by-real-estate-negotiations', 1, 'Botble\\Blog\\Models\\Post', '', '2019-11-18 02:51:35', '2019-11-18 02:51:35'),
(19, 'bcg-sets-great-store', 1, 'Botble\\Blog\\Models\\Tag', 'tag', '2019-11-18 02:51:35', '2019-11-18 02:51:35'),
(20, 'private-home-sales-drop-27-in-october', 2, 'Botble\\Blog\\Models\\Post', '', '2019-11-18 02:55:53', '2019-11-18 02:55:53'),
(21, 'private-home-sales', 2, 'Botble\\Blog\\Models\\Tag', 'tag', '2019-11-18 02:55:53', '2019-11-18 02:55:53'),
(22, 'singapore-overtakes-hong-kong-in-terms-of-property-investment-prospects', 3, 'Botble\\Blog\\Models\\Post', '', '2019-11-18 02:59:01', '2019-11-18 02:59:01'),
(23, 's-koreas-big-investors-flocking-to-overseas-real-estate', 4, 'Botble\\Blog\\Models\\Post', '', '2019-11-18 03:07:27', '2019-11-18 03:07:27'),
(24, 'south-korean-investors', 3, 'Botble\\Blog\\Models\\Tag', 'tag', '2019-11-18 03:07:27', '2019-11-18 03:07:27'),
(25, 'mimaroba-paradise', 3, 'Botble\\RealEstate\\Models\\Project', 'projects', '2019-11-18 03:30:34', '2019-11-18 03:30:34'),
(26, 'aegean-villas', 4, 'Botble\\RealEstate\\Models\\Project', 'projects', '2019-11-18 03:38:13', '2019-11-18 03:38:13'),
(27, 'aydos-forest-apartment', 5, 'Botble\\RealEstate\\Models\\Project', 'projects', '2019-11-18 03:45:06', '2019-11-18 03:45:06'),
(28, 'park', 6, 'Botble\\RealEstate\\Models\\Project', 'projects', '2019-11-18 03:53:20', '2019-11-18 03:53:20'),
(29, 'the-avila-apartment', 13, 'Botble\\RealEstate\\Models\\Property', 'properties', '2019-11-18 07:23:02', '2019-11-18 07:23:02'),
(30, 'villa-for-sale-in-lavanya-residences', 14, 'Botble\\RealEstate\\Models\\Property', 'properties', '2019-11-18 07:36:29', '2019-11-18 07:36:29'),
(31, 'want-to-lease-a-house-in-compound-pejaten-barat-kemang', 15, 'Botble\\RealEstate\\Models\\Property', 'properties', '2019-11-18 07:44:44', '2019-11-18 07:44:44'),
(32, 'apartment-muiderstraatweg-in-diemen', 16, 'Botble\\RealEstate\\Models\\Property', 'properties', '2019-11-18 07:59:14', '2019-11-18 07:59:14'),
(33, 'nice-apartment-for-rent-in-berlin', 17, 'Botble\\RealEstate\\Models\\Property', 'properties', '2019-11-18 08:13:07', '2019-11-18 08:13:07'),
(34, 'can-ho-walnut-park', 7, 'Botble\\RealEstate\\Models\\Project', 'projects', '2019-11-21 01:54:36', '2019-11-21 01:54:36'),
(35, '1574328489', 8, 'Botble\\RealEstate\\Models\\Project', 'projects', '2019-11-21 02:28:09', '2019-11-21 02:28:09'),
(36, 'thien-duong-mimaroba', 9, 'Botble\\RealEstate\\Models\\Project', 'projects', '2019-11-21 02:40:25', '2019-11-21 02:40:25'),
(37, 'khu-biet-thu-aegean', 10, 'Botble\\RealEstate\\Models\\Project', 'projects', '2019-11-21 02:58:55', '2019-11-21 02:58:55'),
(38, 'chung-cu-rung-aydos', 11, 'Botble\\RealEstate\\Models\\Project', 'projects', '2019-11-21 03:16:25', '2019-11-21 03:16:25'),
(39, 'khu-chung-cu-the-avila', 12, 'Botble\\RealEstate\\Models\\Project', 'projects', '2019-11-21 03:25:22', '2019-11-21 03:25:22'),
(40, 'ban-biet-thu-3-phong-ngu-calpe-alicante', 18, 'Botble\\RealEstate\\Models\\Property', 'properties', '2019-11-21 05:51:54', '2019-11-21 05:51:54'),
(41, 'ban-nha-tai-johannesburg-south-africa', 19, 'Botble\\RealEstate\\Models\\Property', 'properties', '2019-11-21 06:03:12', '2019-11-21 06:03:12'),
(42, 'nha-phong-cach-phap', 20, 'Botble\\RealEstate\\Models\\Property', 'properties', '2019-11-21 06:12:15', '2019-11-21 06:12:15'),
(43, 'nha-ban-tai', 21, 'Botble\\RealEstate\\Models\\Property', 'properties', '2019-11-21 06:26:59', '2019-11-21 06:26:59'),
(44, 'can-ho-walnut-park', 22, 'Botble\\RealEstate\\Models\\Property', 'properties', '2019-11-21 06:56:50', '2019-11-21 06:56:50'),
(45, 'cho-thue-nha-cao-cap-5-phong-ngu', 23, 'Botble\\RealEstate\\Models\\Property', 'properties', '2019-11-21 07:18:36', '2019-11-21 07:18:36'),
(46, 'cho-thue-nha-view-dep', 24, 'Botble\\RealEstate\\Models\\Property', 'properties', '2019-11-21 07:26:48', '2019-11-21 07:26:48'),
(47, 'ban-can-ho-osaka-heights', 25, 'Botble\\RealEstate\\Models\\Property', 'properties', '2019-11-21 07:34:38', '2019-11-21 07:34:38'),
(48, 'nha-chinh-chu', 26, 'Botble\\RealEstate\\Models\\Property', 'properties', '2019-11-21 07:40:46', '2019-11-21 07:40:46'),
(49, 'cho-thue-nha-tren-duong-thompsons', 27, 'Botble\\RealEstate\\Models\\Property', 'properties', '2019-11-21 07:45:34', '2019-11-21 07:45:34'),
(50, 'news', 1, 'Botble\\Page\\Models\\Page', '', '2019-11-21 07:46:51', '2019-11-21 07:48:09'),
(51, 'tin-tuc', 2, 'Botble\\Page\\Models\\Page', '', '2019-11-21 07:48:22', '2019-11-21 07:48:22'),
(52, 'house-architecture', 2, 'Botble\\Blog\\Models\\Category', '', '2019-11-21 07:49:25', '2019-11-21 07:49:25'),
(53, 'kien-truc-nha', 3, 'Botble\\Blog\\Models\\Category', '', '2019-11-21 07:49:35', '2019-11-21 07:49:35'),
(54, 'house-design', 4, 'Botble\\Blog\\Models\\Category', '', '2019-11-21 07:50:02', '2019-11-21 07:50:02'),
(55, 'thiet-ke-nha', 5, 'Botble\\Blog\\Models\\Category', '', '2019-11-21 07:50:17', '2019-11-21 07:50:17'),
(56, 'building-materials', 6, 'Botble\\Blog\\Models\\Category', '', '2019-11-21 07:50:36', '2019-11-21 07:50:36'),
(57, 'vat-lieu-xay-dung', 7, 'Botble\\Blog\\Models\\Category', '', '2019-11-21 07:50:58', '2019-11-21 07:50:58'),
(58, 'can-ho-1-phong-ngu-hoan-toan-moi-o-vi-tri-hang-nhat', 28, 'Botble\\RealEstate\\Models\\Property', 'properties', '2019-11-21 19:53:17', '2019-11-21 19:53:17'),
(59, 'nha-cao-cap-thanh-lich', 29, 'Botble\\RealEstate\\Models\\Property', 'properties', '2019-11-21 19:59:16', '2019-11-21 19:59:16'),
(60, 'can-ban-can-ho-cao-cap-tai-singapore', 30, 'Botble\\RealEstate\\Models\\Property', 'properties', '2019-11-22 00:29:01', '2019-11-22 00:29:01'),
(61, 'can-ho-cao-cap-5-phong-can-ban-tai-kuala-lumpur', 31, 'Botble\\RealEstate\\Models\\Property', 'properties', '2019-11-22 00:42:28', '2019-11-22 00:42:28'),
(62, 'nha-ompound-pejaten-barat-kemang', 32, 'Botble\\RealEstate\\Models\\Property', 'properties', '2019-11-22 00:47:18', '2019-11-22 00:47:18'),
(63, 'can-ho-muiderstraatweg-o-diemen', 33, 'Botble\\RealEstate\\Models\\Property', 'properties', '2019-11-22 00:57:15', '2019-11-22 00:57:15'),
(64, 'can-ho-dep-cho-thue-o-berlin', 34, 'Botble\\RealEstate\\Models\\Property', 'properties', '2019-11-22 01:06:09', '2019-11-22 01:06:09'),
(65, 'tin-tuc-1', 8, 'Botble\\Blog\\Models\\Category', '', '2019-11-22 01:26:08', '2019-11-22 01:26:08'),
(66, 'bcg-thiet-lap-cua-hang-tuyet-voi-bang-cac-cuoc-dam-phan-bat-dong-san', 5, 'Botble\\Blog\\Models\\Post', '', '2019-11-22 01:26:31', '2019-11-22 01:26:31'),
(67, 'doanh-so-ban-nha-rieng-giam-27-trong-thang-10', 6, 'Botble\\Blog\\Models\\Post', '', '2019-11-22 01:29:45', '2019-11-22 01:29:45'),
(68, 'singapore-vuot-qua-hong-kong-ve-trien-vong-dau-tu-bat-dong-san', 7, 'Botble\\Blog\\Models\\Post', '', '2019-11-22 01:33:23', '2019-11-22 01:33:23'),
(69, 'cac-nha-dau-tu-lon-han-quoc-do-xo-vao-bat-dong-san-o-nuoc-ngoai', 8, 'Botble\\Blog\\Models\\Post', '', '2019-11-22 01:39:38', '2019-11-22 01:39:38'),
(70, 'about-us', 3, 'Botble\\Page\\Models\\Page', '', '2019-11-27 01:52:36', '2019-11-27 02:36:00'),
(71, 'gioi-thieu', 4, 'Botble\\Page\\Models\\Page', '', '2019-11-27 01:58:46', '2019-11-27 01:58:46'),
(72, 'terms-conditions', 5, 'Botble\\Page\\Models\\Page', '', '2019-11-27 02:32:44', '2019-11-27 02:32:44'),
(73, 'dieu-khoan-va-quy-dinh', 6, 'Botble\\Page\\Models\\Page', '', '2019-11-27 02:34:55', '2019-11-27 02:34:55'),
(74, 'sales-manager-real-estate', 1, 'Botble\\Career\\Models\\Career', 'careers', '2019-11-30 19:43:10', '2019-11-30 19:43:10'),
(75, 'truong-phong-kinh-doanh-luong-len-toi', 2, 'Botble\\Career\\Models\\Career', 'careers', '2019-11-30 19:49:07', '2019-11-30 19:49:07'),
(76, 'senior-real-estate-consultant', 3, 'Botble\\Career\\Models\\Career', 'careers', '2019-11-30 19:52:42', '2019-11-30 19:52:42'),
(77, 'chuyen-vien-tu-van-bat-dong-san-cao-cap', 4, 'Botble\\Career\\Models\\Career', 'careers', '2019-11-30 19:56:50', '2019-11-30 19:56:50'),
(78, 'homepage', 7, 'Botble\\Page\\Models\\Page', '', '2020-02-06 21:53:48', '2020-02-06 21:54:04'),
(97, 'apartment', 1, 'Botble\\RealEstate\\Models\\Category', 'property-category', '2020-11-17 03:09:35', '2020-11-17 03:09:35'),
(98, 'villa', 2, 'Botble\\RealEstate\\Models\\Category', 'property-category', '2020-11-17 03:09:35', '2020-11-17 03:09:35'),
(99, 'condo', 3, 'Botble\\RealEstate\\Models\\Category', 'property-category', '2020-11-17 03:09:35', '2020-11-17 03:09:35'),
(100, 'house', 4, 'Botble\\RealEstate\\Models\\Category', 'property-category', '2020-11-17 03:09:35', '2020-11-17 03:09:35'),
(101, 'land', 5, 'Botble\\RealEstate\\Models\\Category', 'property-category', '2020-11-17 03:09:35', '2020-11-17 03:09:35'),
(102, 'commercial-property', 6, 'Botble\\RealEstate\\Models\\Category', 'property-category', '2020-11-17 03:09:35', '2020-11-17 03:09:35');

-- --------------------------------------------------------

--
-- Table structure for table `states`
--

CREATE TABLE `states` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country_id` int(10) UNSIGNED NOT NULL,
  `order` tinyint(4) NOT NULL DEFAULT '0',
  `is_default` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `abbreviation` varchar(2) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `states`
--

INSERT INTO `states` (`id`, `name`, `country_id`, `order`, `is_default`, `status`, `created_at`, `updated_at`, `abbreviation`) VALUES
(1, 'California', 1, 0, 0, 'published', '2019-11-18 08:17:57', '2019-11-18 08:17:57', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tags`
--

CREATE TABLE `tags` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `author_id` int(11) NOT NULL,
  `author_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Botble\\ACL\\Models\\User',
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tags`
--

INSERT INTO `tags` (`id`, `name`, `author_id`, `author_type`, `description`, `status`, `created_at`, `updated_at`) VALUES
(1, 'BCG sets great store', 1, 'Botble\\ACL\\Models\\User', '', 'published', '2019-11-18 02:51:35', '2019-11-18 02:51:35'),
(2, 'Private Home Sales', 1, 'Botble\\ACL\\Models\\User', '', 'published', '2019-11-18 02:55:53', '2019-11-18 02:55:53'),
(3, 'South Korean investors', 1, 'Botble\\ACL\\Models\\User', '', 'published', '2019-11-18 03:07:27', '2019-11-18 03:07:27');

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `id` int(10) UNSIGNED NOT NULL,
  `credits` int(10) UNSIGNED NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `account_id` bigint(20) UNSIGNED DEFAULT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'add',
  `payment_id` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `translations`
--

CREATE TABLE `translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `group` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `translations`
--

INSERT INTO `translations` (`id`, `status`, `locale`, `group`, `key`, `value`, `created_at`, `updated_at`) VALUES
(1, 1, 'en', 'auth', 'failed', 'These credentials do not match our records.', '2020-11-15 21:00:19', '2020-11-15 21:00:19'),
(2, 1, 'en', 'auth', 'throttle', 'Too many login attempts. Please try again in :seconds seconds.', '2020-11-15 21:00:19', '2020-11-15 21:00:19'),
(3, 1, 'en', 'pagination', 'previous', '&laquo; Previous', '2020-11-15 21:00:19', '2020-11-15 21:00:19'),
(4, 1, 'en', 'pagination', 'next', 'Next &raquo;', '2020-11-15 21:00:19', '2020-11-15 21:00:19'),
(5, 1, 'en', 'passwords', 'reset', 'Your password has been reset!', '2020-11-15 21:00:19', '2020-11-15 21:00:19'),
(6, 1, 'en', 'passwords', 'sent', 'We have emailed your password reset link!', '2020-11-15 21:00:19', '2020-11-15 21:00:19'),
(7, 1, 'en', 'passwords', 'throttled', 'Please wait before retrying.', '2020-11-15 21:00:19', '2020-11-15 21:00:19'),
(8, 1, 'en', 'passwords', 'token', 'This password reset token is invalid.', '2020-11-15 21:00:19', '2020-11-15 21:00:19'),
(9, 1, 'en', 'passwords', 'user', 'We can\'t find a user with that email address.', '2020-11-15 21:00:19', '2020-11-15 21:00:19'),
(10, 1, 'en', 'validation', 'accepted', 'The :attribute must be accepted.', '2020-11-15 21:00:19', '2020-11-15 21:00:19'),
(11, 1, 'en', 'validation', 'active_url', 'The :attribute is not a valid URL.', '2020-11-15 21:00:19', '2020-11-15 21:00:19'),
(12, 1, 'en', 'validation', 'after', 'The :attribute must be a date after :date.', '2020-11-15 21:00:19', '2020-11-15 21:00:19'),
(13, 1, 'en', 'validation', 'after_or_equal', 'The :attribute must be a date after or equal to :date.', '2020-11-15 21:00:19', '2020-11-15 21:00:19'),
(14, 1, 'en', 'validation', 'alpha', 'The :attribute may only contain letters.', '2020-11-15 21:00:19', '2020-11-15 21:00:19'),
(15, 1, 'en', 'validation', 'alpha_dash', 'The :attribute may only contain letters, numbers, dashes and underscores.', '2020-11-15 21:00:19', '2020-11-15 21:00:19'),
(16, 1, 'en', 'validation', 'alpha_num', 'The :attribute may only contain letters and numbers.', '2020-11-15 21:00:19', '2020-11-15 21:00:19'),
(17, 1, 'en', 'validation', 'array', 'The :attribute must be an array.', '2020-11-15 21:00:19', '2020-11-15 21:00:19'),
(18, 1, 'en', 'validation', 'before', 'The :attribute must be a date before :date.', '2020-11-15 21:00:19', '2020-11-15 21:00:19'),
(19, 1, 'en', 'validation', 'before_or_equal', 'The :attribute must be a date before or equal to :date.', '2020-11-15 21:00:19', '2020-11-15 21:00:19'),
(20, 1, 'en', 'validation', 'between.numeric', 'The :attribute must be between :min and :max.', '2020-11-15 21:00:19', '2020-11-15 21:00:19'),
(21, 1, 'en', 'validation', 'between.file', 'The :attribute must be between :min and :max kilobytes.', '2020-11-15 21:00:19', '2020-11-15 21:00:19'),
(22, 1, 'en', 'validation', 'between.string', 'The :attribute must be between :min and :max characters.', '2020-11-15 21:00:19', '2020-11-15 21:00:19'),
(23, 1, 'en', 'validation', 'between.array', 'The :attribute must have between :min and :max items.', '2020-11-15 21:00:19', '2020-11-15 21:00:19'),
(24, 1, 'en', 'validation', 'boolean', 'The :attribute field must be true or false.', '2020-11-15 21:00:19', '2020-11-15 21:00:19'),
(25, 1, 'en', 'validation', 'confirmed', 'The :attribute confirmation does not match.', '2020-11-15 21:00:19', '2020-11-15 21:00:19'),
(26, 1, 'en', 'validation', 'date', 'The :attribute is not a valid date.', '2020-11-15 21:00:19', '2020-11-15 21:00:19'),
(27, 1, 'en', 'validation', 'date_equals', 'The :attribute must be a date equal to :date.', '2020-11-15 21:00:19', '2020-11-15 21:00:19'),
(28, 1, 'en', 'validation', 'date_format', 'The :attribute does not match the format :format.', '2020-11-15 21:00:19', '2020-11-15 21:00:19'),
(29, 1, 'en', 'validation', 'different', 'The :attribute and :other must be different.', '2020-11-15 21:00:19', '2020-11-15 21:00:19'),
(30, 1, 'en', 'validation', 'digits', 'The :attribute must be :digits digits.', '2020-11-15 21:00:19', '2020-11-15 21:00:19'),
(31, 1, 'en', 'validation', 'digits_between', 'The :attribute must be between :min and :max digits.', '2020-11-15 21:00:19', '2020-11-15 21:00:19'),
(32, 1, 'en', 'validation', 'dimensions', 'The :attribute has invalid image dimensions.', '2020-11-15 21:00:19', '2020-11-15 21:00:19'),
(33, 1, 'en', 'validation', 'distinct', 'The :attribute field has a duplicate value.', '2020-11-15 21:00:19', '2020-11-15 21:00:19'),
(34, 1, 'en', 'validation', 'email', 'The :attribute must be a valid email address.', '2020-11-15 21:00:19', '2020-11-15 21:00:19'),
(35, 1, 'en', 'validation', 'ends_with', 'The :attribute must end with one of the following: :values.', '2020-11-15 21:00:19', '2020-11-15 21:00:19'),
(36, 1, 'en', 'validation', 'exists', 'The selected :attribute is invalid.', '2020-11-15 21:00:19', '2020-11-15 21:00:19'),
(37, 1, 'en', 'validation', 'file', 'The :attribute must be a file.', '2020-11-15 21:00:19', '2020-11-15 21:00:19'),
(38, 1, 'en', 'validation', 'filled', 'The :attribute field must have a value.', '2020-11-15 21:00:19', '2020-11-15 21:00:19'),
(39, 1, 'en', 'validation', 'gt.numeric', 'The :attribute must be greater than :value.', '2020-11-15 21:00:19', '2020-11-15 21:00:19'),
(40, 1, 'en', 'validation', 'gt.file', 'The :attribute must be greater than :value kilobytes.', '2020-11-15 21:00:19', '2020-11-15 21:00:19'),
(41, 1, 'en', 'validation', 'gt.string', 'The :attribute must be greater than :value characters.', '2020-11-15 21:00:19', '2020-11-15 21:00:19'),
(42, 1, 'en', 'validation', 'gt.array', 'The :attribute must have more than :value items.', '2020-11-15 21:00:19', '2020-11-15 21:00:19'),
(43, 1, 'en', 'validation', 'gte.numeric', 'The :attribute must be greater than or equal :value.', '2020-11-15 21:00:19', '2020-11-15 21:00:19'),
(44, 1, 'en', 'validation', 'gte.file', 'The :attribute must be greater than or equal :value kilobytes.', '2020-11-15 21:00:19', '2020-11-15 21:00:19'),
(45, 1, 'en', 'validation', 'gte.string', 'The :attribute must be greater than or equal :value characters.', '2020-11-15 21:00:19', '2020-11-15 21:00:19'),
(46, 1, 'en', 'validation', 'gte.array', 'The :attribute must have :value items or more.', '2020-11-15 21:00:19', '2020-11-15 21:00:19'),
(47, 1, 'en', 'validation', 'image', 'The :attribute must be an image.', '2020-11-15 21:00:19', '2020-11-15 21:00:19'),
(48, 1, 'en', 'validation', 'in', 'The selected :attribute is invalid.', '2020-11-15 21:00:19', '2020-11-15 21:00:19'),
(49, 1, 'en', 'validation', 'in_array', 'The :attribute field does not exist in :other.', '2020-11-15 21:00:19', '2020-11-15 21:00:19'),
(50, 1, 'en', 'validation', 'integer', 'The :attribute must be an integer.', '2020-11-15 21:00:19', '2020-11-15 21:00:19'),
(51, 1, 'en', 'validation', 'ip', 'The :attribute must be a valid IP address.', '2020-11-15 21:00:19', '2020-11-15 21:00:19'),
(52, 1, 'en', 'validation', 'ipv4', 'The :attribute must be a valid IPv4 address.', '2020-11-15 21:00:19', '2020-11-15 21:00:19'),
(53, 1, 'en', 'validation', 'ipv6', 'The :attribute must be a valid IPv6 address.', '2020-11-15 21:00:19', '2020-11-15 21:00:19'),
(54, 1, 'en', 'validation', 'json', 'The :attribute must be a valid JSON string.', '2020-11-15 21:00:19', '2020-11-15 21:00:19'),
(55, 1, 'en', 'validation', 'lt.numeric', 'The :attribute must be less than :value.', '2020-11-15 21:00:19', '2020-11-15 21:00:19'),
(56, 1, 'en', 'validation', 'lt.file', 'The :attribute must be less than :value kilobytes.', '2020-11-15 21:00:19', '2020-11-15 21:00:19'),
(57, 1, 'en', 'validation', 'lt.string', 'The :attribute must be less than :value characters.', '2020-11-15 21:00:19', '2020-11-15 21:00:19'),
(58, 1, 'en', 'validation', 'lt.array', 'The :attribute must have less than :value items.', '2020-11-15 21:00:19', '2020-11-15 21:00:19'),
(59, 1, 'en', 'validation', 'lte.numeric', 'The :attribute must be less than or equal :value.', '2020-11-15 21:00:19', '2020-11-15 21:00:19'),
(60, 1, 'en', 'validation', 'lte.file', 'The :attribute must be less than or equal :value kilobytes.', '2020-11-15 21:00:19', '2020-11-15 21:00:19'),
(61, 1, 'en', 'validation', 'lte.string', 'The :attribute must be less than or equal :value characters.', '2020-11-15 21:00:19', '2020-11-15 21:00:19'),
(62, 1, 'en', 'validation', 'lte.array', 'The :attribute must not have more than :value items.', '2020-11-15 21:00:19', '2020-11-15 21:00:19'),
(63, 1, 'en', 'validation', 'max.numeric', 'The :attribute may not be greater than :max.', '2020-11-15 21:00:19', '2020-11-15 21:00:19'),
(64, 1, 'en', 'validation', 'max.file', 'The :attribute may not be greater than :max kilobytes.', '2020-11-15 21:00:19', '2020-11-15 21:00:19'),
(65, 1, 'en', 'validation', 'max.string', 'The :attribute may not be greater than :max characters.', '2020-11-15 21:00:19', '2020-11-15 21:00:19'),
(66, 1, 'en', 'validation', 'max.array', 'The :attribute may not have more than :max items.', '2020-11-15 21:00:19', '2020-11-15 21:00:19'),
(67, 1, 'en', 'validation', 'mimes', 'The :attribute must be a file of type: :values.', '2020-11-15 21:00:19', '2020-11-15 21:00:19'),
(68, 1, 'en', 'validation', 'mimetypes', 'The :attribute must be a file of type: :values.', '2020-11-15 21:00:19', '2020-11-15 21:00:19'),
(69, 1, 'en', 'validation', 'min.numeric', 'The :attribute must be at least :min.', '2020-11-15 21:00:19', '2020-11-15 21:00:19'),
(70, 1, 'en', 'validation', 'min.file', 'The :attribute must be at least :min kilobytes.', '2020-11-15 21:00:19', '2020-11-15 21:00:19'),
(71, 1, 'en', 'validation', 'min.string', 'The :attribute must be at least :min characters.', '2020-11-15 21:00:19', '2020-11-15 21:00:19'),
(72, 1, 'en', 'validation', 'min.array', 'The :attribute must have at least :min items.', '2020-11-15 21:00:19', '2020-11-15 21:00:19'),
(73, 1, 'en', 'validation', 'multiple_of', 'The :attribute must be a multiple of :value', '2020-11-15 21:00:19', '2020-11-15 21:00:19'),
(74, 1, 'en', 'validation', 'not_in', 'The selected :attribute is invalid.', '2020-11-15 21:00:19', '2020-11-15 21:00:19'),
(75, 1, 'en', 'validation', 'not_regex', 'The :attribute format is invalid.', '2020-11-15 21:00:19', '2020-11-15 21:00:19'),
(76, 1, 'en', 'validation', 'numeric', 'The :attribute must be a number.', '2020-11-15 21:00:19', '2020-11-15 21:00:19'),
(77, 1, 'en', 'validation', 'password', 'The password is incorrect.', '2020-11-15 21:00:19', '2020-11-15 21:00:19'),
(78, 1, 'en', 'validation', 'present', 'The :attribute field must be present.', '2020-11-15 21:00:19', '2020-11-15 21:00:19'),
(79, 1, 'en', 'validation', 'regex', 'The :attribute format is invalid.', '2020-11-15 21:00:19', '2020-11-15 21:00:19'),
(80, 1, 'en', 'validation', 'required', 'The :attribute field is required.', '2020-11-15 21:00:19', '2020-11-15 21:00:19'),
(81, 1, 'en', 'validation', 'required_if', 'The :attribute field is required when :other is :value.', '2020-11-15 21:00:19', '2020-11-15 21:00:19'),
(82, 1, 'en', 'validation', 'required_unless', 'The :attribute field is required unless :other is in :values.', '2020-11-15 21:00:19', '2020-11-15 21:00:19'),
(83, 1, 'en', 'validation', 'required_with', 'The :attribute field is required when :values is present.', '2020-11-15 21:00:19', '2020-11-15 21:00:19'),
(84, 1, 'en', 'validation', 'required_with_all', 'The :attribute field is required when :values are present.', '2020-11-15 21:00:19', '2020-11-15 21:00:19'),
(85, 1, 'en', 'validation', 'required_without', 'The :attribute field is required when :values is not present.', '2020-11-15 21:00:19', '2020-11-15 21:00:19'),
(86, 1, 'en', 'validation', 'required_without_all', 'The :attribute field is required when none of :values are present.', '2020-11-15 21:00:19', '2020-11-15 21:00:19'),
(87, 1, 'en', 'validation', 'same', 'The :attribute and :other must match.', '2020-11-15 21:00:19', '2020-11-15 21:00:19'),
(88, 1, 'en', 'validation', 'size.numeric', 'The :attribute must be :size.', '2020-11-15 21:00:19', '2020-11-15 21:00:19'),
(89, 1, 'en', 'validation', 'size.file', 'The :attribute must be :size kilobytes.', '2020-11-15 21:00:19', '2020-11-15 21:00:19'),
(90, 1, 'en', 'validation', 'size.string', 'The :attribute must be :size characters.', '2020-11-15 21:00:19', '2020-11-15 21:00:19'),
(91, 1, 'en', 'validation', 'size.array', 'The :attribute must contain :size items.', '2020-11-15 21:00:19', '2020-11-15 21:00:19'),
(92, 1, 'en', 'validation', 'starts_with', 'The :attribute must start with one of the following: :values.', '2020-11-15 21:00:19', '2020-11-15 21:00:19'),
(93, 1, 'en', 'validation', 'string', 'The :attribute must be a string.', '2020-11-15 21:00:19', '2020-11-15 21:00:19'),
(94, 1, 'en', 'validation', 'timezone', 'The :attribute must be a valid zone.', '2020-11-15 21:00:19', '2020-11-15 21:00:19'),
(95, 1, 'en', 'validation', 'unique', 'The :attribute has already been taken.', '2020-11-15 21:00:19', '2020-11-15 21:00:19'),
(96, 1, 'en', 'validation', 'uploaded', 'The :attribute failed to upload.', '2020-11-15 21:00:19', '2020-11-15 21:00:19'),
(97, 1, 'en', 'validation', 'url', 'The :attribute format is invalid.', '2020-11-15 21:00:19', '2020-11-15 21:00:19'),
(98, 1, 'en', 'validation', 'uuid', 'The :attribute must be a valid UUID.', '2020-11-15 21:00:19', '2020-11-15 21:00:19'),
(99, 1, 'en', 'validation', 'custom.attribute-name.rule-name', 'custom-message', '2020-11-15 21:00:19', '2020-11-15 21:00:19'),
(100, 1, 'en', 'core/acl/api', 'api_clients', 'API Clients', '2020-11-15 21:00:19', '2020-11-15 21:00:19'),
(101, 1, 'en', 'core/acl/api', 'create_new_client', 'Create new client', '2020-11-15 21:00:19', '2020-11-15 21:00:19'),
(102, 1, 'en', 'core/acl/api', 'create_new_client_success', 'Create new client successfully!', '2020-11-15 21:00:19', '2020-11-15 21:00:19'),
(103, 1, 'en', 'core/acl/api', 'edit_client', 'Edit client \":name\"', '2020-11-15 21:00:19', '2020-11-15 21:00:19'),
(104, 1, 'en', 'core/acl/api', 'edit_client_success', 'Updated client successfully!', '2020-11-15 21:00:19', '2020-11-15 21:00:19'),
(105, 1, 'en', 'core/acl/api', 'delete_success', 'Deleted client successfully!', '2020-11-15 21:00:19', '2020-11-15 21:00:19'),
(106, 1, 'en', 'core/acl/api', 'confirm_delete_title', 'Confirm delete client \":name\"', '2020-11-15 21:00:19', '2020-11-15 21:00:19'),
(107, 1, 'en', 'core/acl/api', 'confirm_delete_description', 'Do you really want to delete client \":name\"?', '2020-11-15 21:00:19', '2020-11-15 21:00:19'),
(108, 1, 'en', 'core/acl/api', 'cancel_delete', 'No', '2020-11-15 21:00:19', '2020-11-15 21:00:19'),
(109, 1, 'en', 'core/acl/api', 'continue_delete', 'Yes, let\'s delete it!', '2020-11-15 21:00:19', '2020-11-15 21:00:19'),
(110, 1, 'en', 'core/acl/api', 'name', 'Name', '2020-11-15 21:00:19', '2020-11-15 21:00:19'),
(111, 1, 'en', 'core/acl/api', 'cancel', 'Cancel', '2020-11-15 21:00:19', '2020-11-15 21:00:19'),
(112, 1, 'en', 'core/acl/api', 'save', 'Save', '2020-11-15 21:00:19', '2020-11-15 21:00:19'),
(113, 1, 'en', 'core/acl/api', 'edit', 'Edit', '2020-11-15 21:00:19', '2020-11-15 21:00:19'),
(114, 1, 'en', 'core/acl/api', 'delete', 'Delete', '2020-11-15 21:00:19', '2020-11-15 21:00:19'),
(115, 1, 'en', 'core/acl/api', 'client_id', 'Client ID', '2020-11-15 21:00:19', '2020-11-15 21:00:19'),
(116, 1, 'en', 'core/acl/api', 'secret', 'Secret', '2020-11-15 21:00:19', '2020-11-15 21:00:19'),
(117, 1, 'en', 'core/acl/auth', 'login.username', 'Email/Username', '2020-11-15 21:00:19', '2020-11-15 21:00:19'),
(118, 1, 'en', 'core/acl/auth', 'login.email', 'Email', '2020-11-15 21:00:19', '2020-11-15 21:00:19'),
(119, 1, 'en', 'core/acl/auth', 'login.password', 'Password', '2020-11-15 21:00:19', '2020-11-15 21:00:19'),
(120, 1, 'en', 'core/acl/auth', 'login.title', 'User Login', '2020-11-15 21:00:19', '2020-11-15 21:00:19'),
(121, 1, 'en', 'core/acl/auth', 'login.remember', 'Remember me?', '2020-11-15 21:00:19', '2020-11-15 21:00:19'),
(122, 1, 'en', 'core/acl/auth', 'login.login', 'Sign in', '2020-11-15 21:00:19', '2020-11-15 21:00:19'),
(123, 1, 'en', 'core/acl/auth', 'login.placeholder.username', 'Please enter your username', '2020-11-15 21:00:19', '2020-11-15 21:00:19'),
(124, 1, 'en', 'core/acl/auth', 'login.placeholder.email', 'Please enter your email', '2020-11-15 21:00:19', '2020-11-15 21:00:19'),
(125, 1, 'en', 'core/acl/auth', 'login.success', 'Login successfully!', '2020-11-15 21:00:19', '2020-11-15 21:00:19'),
(126, 1, 'en', 'core/acl/auth', 'login.fail', 'Wrong username or password.', '2020-11-15 21:00:19', '2020-11-15 21:00:19'),
(127, 1, 'en', 'core/acl/auth', 'login.not_active', 'Your account has not been activated yet!', '2020-11-15 21:00:19', '2020-11-15 21:00:19'),
(128, 1, 'en', 'core/acl/auth', 'login.banned', 'This account is banned.', '2020-11-15 21:00:19', '2020-11-15 21:00:19'),
(129, 1, 'en', 'core/acl/auth', 'login.logout_success', 'Logout successfully!', '2020-11-15 21:00:19', '2020-11-15 21:00:19'),
(130, 1, 'en', 'core/acl/auth', 'login.dont_have_account', 'You don\'t have account on this system, please contact administrator for more information!', '2020-11-15 21:00:19', '2020-11-15 21:00:19'),
(131, 1, 'en', 'core/acl/auth', 'forgot_password.title', 'Forgot Password', '2020-11-15 21:00:19', '2020-11-15 21:00:19'),
(132, 1, 'en', 'core/acl/auth', 'forgot_password.message', '<p>Have you forgotten your password?</p><p>Please enter your email account. System will send a email with active link to reset your password.</p>', '2020-11-15 21:00:19', '2020-11-15 21:00:19'),
(133, 1, 'en', 'core/acl/auth', 'forgot_password.submit', 'Submit', '2020-11-15 21:00:19', '2020-11-15 21:00:19'),
(134, 1, 'en', 'core/acl/auth', 'reset.new_password', 'New password', '2020-11-15 21:00:19', '2020-11-15 21:00:19'),
(135, 1, 'en', 'core/acl/auth', 'reset.password_confirmation', 'Confirm new password', '2020-11-15 21:00:19', '2020-11-15 21:00:19'),
(136, 1, 'en', 'core/acl/auth', 'reset.email', 'Email', '2020-11-15 21:00:19', '2020-11-15 21:00:19'),
(137, 1, 'en', 'core/acl/auth', 'reset.title', 'Reset your password', '2020-11-15 21:00:19', '2020-11-15 21:00:19'),
(138, 1, 'en', 'core/acl/auth', 'reset.update', 'Update', '2020-11-15 21:00:19', '2020-11-15 21:00:19'),
(139, 1, 'en', 'core/acl/auth', 'reset.wrong_token', 'This link is invalid or expired. Please try using reset form again.', '2020-11-15 21:00:19', '2020-11-15 21:00:19'),
(140, 1, 'en', 'core/acl/auth', 'reset.user_not_found', 'This username is not exist.', '2020-11-15 21:00:19', '2020-11-15 21:00:19'),
(141, 1, 'en', 'core/acl/auth', 'reset.success', 'Reset password successfully!', '2020-11-15 21:00:19', '2020-11-15 21:00:19'),
(142, 1, 'en', 'core/acl/auth', 'reset.fail', 'Token is invalid, the reset password link has been expired!', '2020-11-15 21:00:20', '2020-11-15 21:00:20'),
(143, 1, 'en', 'core/acl/auth', 'reset.reset.title', 'Email reset password', '2020-11-15 21:00:20', '2020-11-15 21:00:20'),
(144, 1, 'en', 'core/acl/auth', 'reset.send.success', 'A email was sent to your email account. Please check and complete this action.', '2020-11-15 21:00:20', '2020-11-15 21:00:20'),
(145, 1, 'en', 'core/acl/auth', 'reset.send.fail', 'Can not send email in this time. Please try again later.', '2020-11-15 21:00:20', '2020-11-15 21:00:20'),
(146, 1, 'en', 'core/acl/auth', 'reset.new-password', 'New password', '2020-11-15 21:00:20', '2020-11-15 21:00:20'),
(147, 1, 'en', 'core/acl/auth', 'email.reminder.title', 'Email reset password', '2020-11-15 21:00:20', '2020-11-15 21:00:20'),
(148, 1, 'en', 'core/acl/auth', 'password_confirmation', 'Password confirm', '2020-11-15 21:00:20', '2020-11-15 21:00:20'),
(149, 1, 'en', 'core/acl/auth', 'failed', 'Failed', '2020-11-15 21:00:20', '2020-11-15 21:00:20'),
(150, 1, 'en', 'core/acl/auth', 'throttle', 'Throttle', '2020-11-15 21:00:20', '2020-11-15 21:00:20'),
(151, 1, 'en', 'core/acl/auth', 'not_member', 'Not a member yet?', '2020-11-15 21:00:20', '2020-11-15 21:00:20'),
(152, 1, 'en', 'core/acl/auth', 'register_now', 'Register now', '2020-11-15 21:00:20', '2020-11-15 21:00:20'),
(153, 1, 'en', 'core/acl/auth', 'lost_your_password', 'Lost your password?', '2020-11-15 21:00:20', '2020-11-15 21:00:20'),
(154, 1, 'en', 'core/acl/auth', 'login_title', 'Admin', '2020-11-15 21:00:20', '2020-11-15 21:00:20'),
(155, 1, 'en', 'core/acl/auth', 'login_via_social', 'Login with social networks', '2020-11-15 21:00:20', '2020-11-15 21:00:20'),
(156, 1, 'en', 'core/acl/auth', 'back_to_login', 'Back to login page', '2020-11-15 21:00:20', '2020-11-15 21:00:20'),
(157, 1, 'en', 'core/acl/auth', 'sign_in_below', 'Sign In Below', '2020-11-15 21:00:20', '2020-11-15 21:00:20'),
(158, 1, 'en', 'core/acl/auth', 'languages', 'Languages', '2020-11-15 21:00:20', '2020-11-15 21:00:20'),
(159, 1, 'en', 'core/acl/auth', 'reset_password', 'Reset Password', '2020-11-15 21:00:20', '2020-11-15 21:00:20'),
(160, 1, 'en', 'core/acl/permissions', 'notices.role_in_use', 'Cannot delete this role, it is still in use!', '2020-11-15 21:00:20', '2020-11-15 21:00:20'),
(161, 1, 'en', 'core/acl/permissions', 'notices.role_delete_belong_user', 'You are not able to delete this role; it belongs to someone else!', '2020-11-15 21:00:20', '2020-11-15 21:00:20'),
(162, 1, 'en', 'core/acl/permissions', 'notices.role_edit_belong_user', 'You are not able to edit this role; it belongs to someone else!', '2020-11-15 21:00:20', '2020-11-15 21:00:20'),
(163, 1, 'en', 'core/acl/permissions', 'notices.delete_global_role', 'You are not allowed to delete global roles!', '2020-11-15 21:00:20', '2020-11-15 21:00:20'),
(164, 1, 'en', 'core/acl/permissions', 'notices.delete_success', 'The selected role was deleted successfully!', '2020-11-15 21:00:20', '2020-11-15 21:00:20'),
(165, 1, 'en', 'core/acl/permissions', 'notices.modified_success', 'The selected role was modified successfully!', '2020-11-15 21:00:20', '2020-11-15 21:00:20'),
(166, 1, 'en', 'core/acl/permissions', 'notices.create_success', 'The new role was successfully created', '2020-11-15 21:00:20', '2020-11-15 21:00:20'),
(167, 1, 'en', 'core/acl/permissions', 'notices.duplicated_success', 'The selected role was duplicated successfully', '2020-11-15 21:00:20', '2020-11-15 21:00:20'),
(168, 1, 'en', 'core/acl/permissions', 'notices.no_select', 'Please select at least one record to take this action!', '2020-11-15 21:00:20', '2020-11-15 21:00:20'),
(169, 1, 'en', 'core/acl/permissions', 'notices.not_found', 'Role not found', '2020-11-15 21:00:20', '2020-11-15 21:00:20'),
(170, 1, 'en', 'core/acl/permissions', 'name', 'Name', '2020-11-15 21:00:20', '2020-11-15 21:00:20'),
(171, 1, 'en', 'core/acl/permissions', 'current_role', 'Current Role', '2020-11-15 21:00:20', '2020-11-15 21:00:20'),
(172, 1, 'en', 'core/acl/permissions', 'no_role_assigned', 'No role assigned', '2020-11-15 21:00:20', '2020-11-15 21:00:20'),
(173, 1, 'en', 'core/acl/permissions', 'role_assigned', 'Assigned Role', '2020-11-15 21:00:20', '2020-11-15 21:00:20'),
(174, 1, 'en', 'core/acl/permissions', 'create_role', 'Create New Role', '2020-11-15 21:00:20', '2020-11-15 21:00:20'),
(175, 1, 'en', 'core/acl/permissions', 'role_name', 'Name', '2020-11-15 21:00:20', '2020-11-15 21:00:20'),
(176, 1, 'en', 'core/acl/permissions', 'role_description', 'Description', '2020-11-15 21:00:20', '2020-11-15 21:00:20'),
(177, 1, 'en', 'core/acl/permissions', 'permission_flags', 'Permission Flags', '2020-11-15 21:00:20', '2020-11-15 21:00:20'),
(178, 1, 'en', 'core/acl/permissions', 'cancel', 'Cancel', '2020-11-15 21:00:20', '2020-11-15 21:00:20'),
(179, 1, 'en', 'core/acl/permissions', 'reset', 'Reset', '2020-11-15 21:00:20', '2020-11-15 21:00:20'),
(180, 1, 'en', 'core/acl/permissions', 'save', 'Save', '2020-11-15 21:00:20', '2020-11-15 21:00:20'),
(181, 1, 'en', 'core/acl/permissions', 'global_role_msg', 'This is a global role and cannot be modified.  You can use the Duplicate button to make a copy of this role that you can then modify.', '2020-11-15 21:00:20', '2020-11-15 21:00:20'),
(182, 1, 'en', 'core/acl/permissions', 'details', 'Details', '2020-11-15 21:00:20', '2020-11-15 21:00:20'),
(183, 1, 'en', 'core/acl/permissions', 'duplicate', 'Duplicate', '2020-11-15 21:00:20', '2020-11-15 21:00:20'),
(184, 1, 'en', 'core/acl/permissions', 'all', 'All Permissions', '2020-11-15 21:00:20', '2020-11-15 21:00:20'),
(185, 1, 'en', 'core/acl/permissions', 'list_role', 'List Roles', '2020-11-15 21:00:20', '2020-11-15 21:00:20'),
(186, 1, 'en', 'core/acl/permissions', 'created_on', 'Created On', '2020-11-15 21:00:20', '2020-11-15 21:00:20'),
(187, 1, 'en', 'core/acl/permissions', 'created_by', 'Created By', '2020-11-15 21:00:20', '2020-11-15 21:00:20'),
(188, 1, 'en', 'core/acl/permissions', 'actions', 'Actions', '2020-11-15 21:00:20', '2020-11-15 21:00:20'),
(189, 1, 'en', 'core/acl/permissions', 'role_in_use', 'Cannot delete this role, it is still in use!', '2020-11-15 21:00:20', '2020-11-15 21:00:20'),
(190, 1, 'en', 'core/acl/permissions', 'role_delete_belong_user', 'You are not able to delete this role; it belongs to someone else!', '2020-11-15 21:00:20', '2020-11-15 21:00:20'),
(191, 1, 'en', 'core/acl/permissions', 'delete_global_role', 'Can not delete global role', '2020-11-15 21:00:20', '2020-11-15 21:00:20'),
(192, 1, 'en', 'core/acl/permissions', 'delete_success', 'Delete role successfully', '2020-11-15 21:00:20', '2020-11-15 21:00:20'),
(193, 1, 'en', 'core/acl/permissions', 'no_select', 'Please select at least one role to take this action!', '2020-11-15 21:00:20', '2020-11-15 21:00:20'),
(194, 1, 'en', 'core/acl/permissions', 'not_found', 'No role found!', '2020-11-15 21:00:20', '2020-11-15 21:00:20'),
(195, 1, 'en', 'core/acl/permissions', 'role_edit_belong_user', 'You are not able to edit this role; it belongs to someone else!', '2020-11-15 21:00:20', '2020-11-15 21:00:20'),
(196, 1, 'en', 'core/acl/permissions', 'modified_success', 'Modified successfully', '2020-11-15 21:00:20', '2020-11-15 21:00:20'),
(197, 1, 'en', 'core/acl/permissions', 'create_success', 'Create successfully', '2020-11-15 21:00:20', '2020-11-15 21:00:20'),
(198, 1, 'en', 'core/acl/permissions', 'duplicated_success', 'Duplicated successfully', '2020-11-15 21:00:20', '2020-11-15 21:00:20'),
(199, 1, 'en', 'core/acl/permissions', 'options', 'Options', '2020-11-15 21:00:20', '2020-11-15 21:00:20'),
(200, 1, 'en', 'core/acl/permissions', 'access_denied_message', 'You are not allowed to do this action', '2020-11-15 21:00:20', '2020-11-15 21:00:20'),
(201, 1, 'en', 'core/acl/permissions', 'roles', 'Roles', '2020-11-15 21:00:20', '2020-11-15 21:00:20'),
(202, 1, 'en', 'core/acl/permissions', 'role_permission', 'Roles and Permissions', '2020-11-15 21:00:20', '2020-11-15 21:00:20'),
(203, 1, 'en', 'core/acl/permissions', 'user_management', 'User Management', '2020-11-15 21:00:20', '2020-11-15 21:00:20'),
(204, 1, 'en', 'core/acl/permissions', 'super_user_management', 'Super User Management', '2020-11-15 21:00:20', '2020-11-15 21:00:20'),
(205, 1, 'en', 'core/acl/permissions', 'action_unauthorized', 'This action is unauthorized.', '2020-11-15 21:00:20', '2020-11-15 21:00:20'),
(206, 1, 'en', 'core/acl/reminders', 'password', 'Passwords must be at least six characters and match the confirmation.', '2020-11-15 21:00:20', '2020-11-15 21:00:20'),
(207, 1, 'en', 'core/acl/reminders', 'user', 'We can\'t find a user with that e-mail address.', '2020-11-15 21:00:20', '2020-11-15 21:00:20'),
(208, 1, 'en', 'core/acl/reminders', 'token', 'This password reset token is invalid.', '2020-11-15 21:00:20', '2020-11-15 21:00:20'),
(209, 1, 'en', 'core/acl/reminders', 'sent', 'Password reminder sent!', '2020-11-15 21:00:20', '2020-11-15 21:00:20'),
(210, 1, 'en', 'core/acl/reminders', 'reset', 'Password has been reset!', '2020-11-15 21:00:20', '2020-11-15 21:00:20'),
(211, 1, 'en', 'core/acl/users', 'delete_user_logged_in', 'Can\'t delete this user. This user is logged on!', '2020-11-15 21:00:20', '2020-11-15 21:00:20'),
(212, 1, 'en', 'core/acl/users', 'no_select', 'Please select at least one record to take this action!', '2020-11-15 21:00:20', '2020-11-15 21:00:20'),
(213, 1, 'en', 'core/acl/users', 'lock_user_logged_in', 'Can\'t lock this user. This user is logged on!', '2020-11-15 21:00:20', '2020-11-15 21:00:20'),
(214, 1, 'en', 'core/acl/users', 'update_success', 'Update status successfully!', '2020-11-15 21:00:20', '2020-11-15 21:00:20'),
(215, 1, 'en', 'core/acl/users', 'save_setting_failed', 'Something went wrong when save your setting', '2020-11-15 21:00:20', '2020-11-15 21:00:20'),
(216, 1, 'en', 'core/acl/users', 'not_found', 'User not found', '2020-11-15 21:00:20', '2020-11-15 21:00:20'),
(217, 1, 'en', 'core/acl/users', 'email_exist', 'That email address already belongs to an existing account', '2020-11-15 21:00:20', '2020-11-15 21:00:20'),
(218, 1, 'en', 'core/acl/users', 'username_exist', 'That username address already belongs to an existing account', '2020-11-15 21:00:20', '2020-11-15 21:00:20'),
(219, 1, 'en', 'core/acl/users', 'update_profile_success', 'Your profile changes were successfully saved', '2020-11-15 21:00:20', '2020-11-15 21:00:20'),
(220, 1, 'en', 'core/acl/users', 'password_update_success', 'Password successfully changed', '2020-11-15 21:00:20', '2020-11-15 21:00:20'),
(221, 1, 'en', 'core/acl/users', 'current_password_not_valid', 'Current password is not valid', '2020-11-15 21:00:20', '2020-11-15 21:00:20'),
(222, 1, 'en', 'core/acl/users', 'user_exist_in', 'User is already a member', '2020-11-15 21:00:20', '2020-11-15 21:00:20'),
(223, 1, 'en', 'core/acl/users', 'email', 'Email', '2020-11-15 21:00:20', '2020-11-15 21:00:20'),
(224, 1, 'en', 'core/acl/users', 'role', 'Role', '2020-11-15 21:00:20', '2020-11-15 21:00:20'),
(225, 1, 'en', 'core/acl/users', 'username', 'Username', '2020-11-15 21:00:20', '2020-11-15 21:00:20'),
(226, 1, 'en', 'core/acl/users', 'last_name', 'Last Name', '2020-11-15 21:00:20', '2020-11-15 21:00:20'),
(227, 1, 'en', 'core/acl/users', 'first_name', 'First Name', '2020-11-15 21:00:20', '2020-11-15 21:00:20'),
(228, 1, 'en', 'core/acl/users', 'message', 'Message', '2020-11-15 21:00:20', '2020-11-15 21:00:20'),
(229, 1, 'en', 'core/acl/users', 'cancel_btn', 'Cancel', '2020-11-15 21:00:20', '2020-11-15 21:00:20'),
(230, 1, 'en', 'core/acl/users', 'change_password', 'Change password', '2020-11-15 21:00:20', '2020-11-15 21:00:20'),
(231, 1, 'en', 'core/acl/users', 'current_password', 'Current password', '2020-11-15 21:00:20', '2020-11-15 21:00:20'),
(232, 1, 'en', 'core/acl/users', 'new_password', 'New Password', '2020-11-15 21:00:20', '2020-11-15 21:00:20'),
(233, 1, 'en', 'core/acl/users', 'confirm_new_password', 'Confirm New Password', '2020-11-15 21:00:20', '2020-11-15 21:00:20'),
(234, 1, 'en', 'core/acl/users', 'password', 'Password', '2020-11-15 21:00:20', '2020-11-15 21:00:20'),
(235, 1, 'en', 'core/acl/users', 'save', 'Save', '2020-11-15 21:00:20', '2020-11-15 21:00:20'),
(236, 1, 'en', 'core/acl/users', 'cannot_delete', 'User could not be deleted', '2020-11-15 21:00:20', '2020-11-15 21:00:20'),
(237, 1, 'en', 'core/acl/users', 'deleted', 'User deleted', '2020-11-15 21:00:20', '2020-11-15 21:00:20'),
(238, 1, 'en', 'core/acl/users', 'last_login', 'Last Login', '2020-11-15 21:00:20', '2020-11-15 21:00:20'),
(239, 1, 'en', 'core/acl/users', 'error_update_profile_image', 'Error when update profile image', '2020-11-15 21:00:20', '2020-11-15 21:00:20'),
(240, 1, 'en', 'core/acl/users', 'email_reminder_template', '<h3>Hello :name</h3><p>The system has received a request to restore the password for your account, to complete this task please click the link below.</p><p><a href=\":link\">Reset password now</a></p><p>If not you ask recover password, please ignore this email.</p><p>This email is valid for 60 minutes after receiving the email.</p>', '2020-11-15 21:00:20', '2020-11-15 21:00:20'),
(241, 1, 'en', 'core/acl/users', 'change_profile_image', 'Change Profile Image', '2020-11-15 21:00:20', '2020-11-15 21:00:20'),
(242, 1, 'en', 'core/acl/users', 'new_image', 'New Image', '2020-11-15 21:00:20', '2020-11-15 21:00:20'),
(243, 1, 'en', 'core/acl/users', 'loading', 'Loading', '2020-11-15 21:00:20', '2020-11-15 21:00:20'),
(244, 1, 'en', 'core/acl/users', 'close', 'Close', '2020-11-15 21:00:20', '2020-11-15 21:00:20'),
(245, 1, 'en', 'core/acl/users', 'update', 'Update', '2020-11-15 21:00:20', '2020-11-15 21:00:20'),
(246, 1, 'en', 'core/acl/users', 'read_image_failed', 'Failed to read the image file', '2020-11-15 21:00:20', '2020-11-15 21:00:20'),
(247, 1, 'en', 'core/acl/users', 'users', 'Users', '2020-11-15 21:00:20', '2020-11-15 21:00:20'),
(248, 1, 'en', 'core/acl/users', 'update_avatar_success', 'Update profile image successfully!', '2020-11-15 21:00:20', '2020-11-15 21:00:20'),
(249, 1, 'en', 'core/acl/users', 'info.title', 'User profile', '2020-11-15 21:00:20', '2020-11-15 21:00:20'),
(250, 1, 'en', 'core/acl/users', 'info.first_name', 'First Name', '2020-11-15 21:00:20', '2020-11-15 21:00:20'),
(251, 1, 'en', 'core/acl/users', 'info.last_name', 'Last Name', '2020-11-15 21:00:20', '2020-11-15 21:00:20'),
(252, 1, 'en', 'core/acl/users', 'info.email', 'Email', '2020-11-15 21:00:20', '2020-11-15 21:00:20'),
(253, 1, 'en', 'core/acl/users', 'info.second_email', 'Secondary Email', '2020-11-15 21:00:20', '2020-11-15 21:00:20'),
(254, 1, 'en', 'core/acl/users', 'info.address', 'Address', '2020-11-15 21:00:20', '2020-11-15 21:00:20'),
(255, 1, 'en', 'core/acl/users', 'info.second_address', 'Secondary Address', '2020-11-15 21:00:20', '2020-11-15 21:00:20'),
(256, 1, 'en', 'core/acl/users', 'info.birth_day', 'Date of birth', '2020-11-15 21:00:20', '2020-11-15 21:00:20'),
(257, 1, 'en', 'core/acl/users', 'info.job', 'Job Position', '2020-11-15 21:00:20', '2020-11-15 21:00:20'),
(258, 1, 'en', 'core/acl/users', 'info.mobile_number', 'Mobile Number', '2020-11-15 21:00:20', '2020-11-15 21:00:20'),
(259, 1, 'en', 'core/acl/users', 'info.second_mobile_number', 'Secondary Phone', '2020-11-15 21:00:20', '2020-11-15 21:00:20'),
(260, 1, 'en', 'core/acl/users', 'info.interes', 'Interests', '2020-11-15 21:00:20', '2020-11-15 21:00:20'),
(261, 1, 'en', 'core/acl/users', 'info.about', 'About', '2020-11-15 21:00:20', '2020-11-15 21:00:20'),
(262, 1, 'en', 'core/acl/users', 'gender.title', 'Gender', '2020-11-15 21:00:20', '2020-11-15 21:00:20'),
(263, 1, 'en', 'core/acl/users', 'gender.male', 'Male', '2020-11-15 21:00:20', '2020-11-15 21:00:20'),
(264, 1, 'en', 'core/acl/users', 'gender.female', 'Female', '2020-11-15 21:00:20', '2020-11-15 21:00:20'),
(265, 1, 'en', 'core/acl/users', 'total_users', 'Total users', '2020-11-15 21:00:20', '2020-11-15 21:00:20'),
(266, 1, 'en', 'core/acl/users', 'statuses.activated', 'Activated', '2020-11-15 21:00:20', '2020-11-15 21:00:20'),
(267, 1, 'en', 'core/acl/users', 'statuses.deactivated', 'Deactivated', '2020-11-15 21:00:20', '2020-11-15 21:00:20'),
(268, 1, 'en', 'core/acl/users', 'make_super', 'Make super', '2020-11-15 21:00:20', '2020-11-15 21:00:20'),
(269, 1, 'en', 'core/acl/users', 'remove_super', 'Remove super', '2020-11-15 21:00:20', '2020-11-15 21:00:20'),
(270, 1, 'en', 'core/acl/users', 'is_super', 'Is super?', '2020-11-15 21:00:20', '2020-11-15 21:00:20'),
(271, 1, 'en', 'core/acl/users', 'email_placeholder', 'Ex: example@gmail.com', '2020-11-15 21:00:20', '2020-11-15 21:00:20'),
(272, 1, 'en', 'core/acl/users', 'password_confirmation', 'Re-type password', '2020-11-15 21:00:20', '2020-11-15 21:00:20'),
(273, 1, 'en', 'core/acl/users', 'select_role', 'Select role', '2020-11-15 21:00:20', '2020-11-15 21:00:20'),
(274, 1, 'en', 'core/acl/users', 'create_new_user', 'Create a new user', '2020-11-15 21:00:20', '2020-11-15 21:00:20'),
(275, 1, 'en', 'core/acl/users', 'cannot_delete_super_user', 'Permission denied. Cannot delete a super user!', '2020-11-15 21:00:20', '2020-11-15 21:00:20'),
(276, 1, 'en', 'core/acl/users', 'assigned_role', 'Assigned Role', '2020-11-15 21:00:20', '2020-11-15 21:00:20'),
(277, 1, 'en', 'core/acl/users', 'no_role_assigned', 'No role assigned', '2020-11-15 21:00:20', '2020-11-15 21:00:20'),
(278, 1, 'en', 'core/acl/users', 'view_user_profile', 'View user\'s profile', '2020-11-15 21:00:20', '2020-11-15 21:00:20'),
(279, 1, 'vi', 'core/acl/auth', 'login.username', 'Email/Tên truy cập', '2020-11-15 21:00:20', '2020-11-15 21:00:20'),
(280, 1, 'vi', 'core/acl/auth', 'login.password', 'Mật khẩu', '2020-11-15 21:00:20', '2020-11-15 21:00:20'),
(281, 1, 'vi', 'core/acl/auth', 'login.title', 'Đăng nhập vào quản trị', '2020-11-15 21:00:20', '2020-11-15 21:00:20'),
(282, 1, 'vi', 'core/acl/auth', 'login.remember', 'Nhớ mật khẩu?', '2020-11-15 21:00:20', '2020-11-15 21:00:20'),
(283, 1, 'vi', 'core/acl/auth', 'login.login', 'Đăng nhập', '2020-11-15 21:00:20', '2020-11-15 21:00:20'),
(284, 1, 'vi', 'core/acl/auth', 'login.placeholder.username', 'Vui lòng nhập tên truy cập', '2020-11-15 21:00:20', '2020-11-15 21:00:20'),
(285, 1, 'vi', 'core/acl/auth', 'login.placeholder.email', 'Vui lòng nhập email', '2020-11-15 21:00:20', '2020-11-15 21:00:20'),
(286, 1, 'vi', 'core/acl/auth', 'login.success', 'Đăng nhập thành công!', '2020-11-15 21:00:20', '2020-11-15 21:00:20'),
(287, 1, 'vi', 'core/acl/auth', 'login.fail', 'Sai tên truy cập hoặc mật khẩu.', '2020-11-15 21:00:20', '2020-11-15 21:00:20'),
(288, 1, 'vi', 'core/acl/auth', 'login.not_active', 'Tài khoản của bạn chưa được kích hoạt!', '2020-11-15 21:00:20', '2020-11-15 21:00:20'),
(289, 1, 'vi', 'core/acl/auth', 'login.banned', 'Tài khoản này đã bị khóa.', '2020-11-15 21:00:20', '2020-11-15 21:00:20'),
(290, 1, 'vi', 'core/acl/auth', 'login.logout_success', 'Đăng xuất thành công!', '2020-11-15 21:00:20', '2020-11-15 21:00:20'),
(291, 1, 'vi', 'core/acl/auth', 'login.dont_have_account', 'Bạn không có tài khoản trong hệ thống, vui lòng liên hệ quản trị viên!', '2020-11-15 21:00:20', '2020-11-15 21:00:20'),
(292, 1, 'vi', 'core/acl/auth', 'login.email', 'Email', '2020-11-15 21:00:20', '2020-11-15 21:00:20'),
(293, 1, 'vi', 'core/acl/auth', 'forgot_password.title', 'Quên mật khẩu', '2020-11-15 21:00:20', '2020-11-15 21:00:20'),
(294, 1, 'vi', 'core/acl/auth', 'forgot_password.message', '<p>Quên mật khẩu?</p><p>Vui lòng nhập email đăng nhập tài khoản của bạn để hệ thống gửi liên kết khôi phục mật khẩu.</p>', '2020-11-15 21:00:20', '2020-11-15 21:00:20'),
(295, 1, 'vi', 'core/acl/auth', 'forgot_password.submit', 'Hoàn tất', '2020-11-15 21:00:20', '2020-11-15 21:00:20'),
(296, 1, 'vi', 'core/acl/auth', 'reset.new_password', 'Mật khẩu mới', '2020-11-15 21:00:20', '2020-11-15 21:00:20'),
(297, 1, 'vi', 'core/acl/auth', 'reset.repassword', 'Xác nhận mật khẩu mới', '2020-11-15 21:00:20', '2020-11-15 21:00:20'),
(298, 1, 'vi', 'core/acl/auth', 'reset.title', 'Khôi phục mật khẩu', '2020-11-15 21:00:20', '2020-11-15 21:00:20'),
(299, 1, 'vi', 'core/acl/auth', 'reset.update', 'Cập nhật', '2020-11-15 21:00:20', '2020-11-15 21:00:20'),
(300, 1, 'vi', 'core/acl/auth', 'reset.wrong_token', 'Liên kết này không chính xác hoặc đã hết hiệu lực, vui lòng yêu cầu khôi phục mật khẩu lại!', '2020-11-15 21:00:20', '2020-11-15 21:00:20'),
(301, 1, 'vi', 'core/acl/auth', 'reset.user_not_found', 'Tên đăng nhập không tồn tại.', '2020-11-15 21:00:20', '2020-11-15 21:00:20'),
(302, 1, 'vi', 'core/acl/auth', 'reset.success', 'Khôi phục mật khẩu thành công!', '2020-11-15 21:00:20', '2020-11-15 21:00:20'),
(303, 1, 'vi', 'core/acl/auth', 'reset.fail', 'Token không hợp lệ hoặc liên kết khôi phục mật khẩu đã hết thời gian hiệu lực!', '2020-11-15 21:00:20', '2020-11-15 21:00:20'),
(304, 1, 'vi', 'core/acl/auth', 'reset.reset.title', 'Email khôi phục mật khẩu', '2020-11-15 21:00:20', '2020-11-15 21:00:20'),
(305, 1, 'vi', 'core/acl/auth', 'reset.send.success', 'Một email khôi phục mật khẩu đã được gửi tới email của bạn, vui lòng kiểm tra và hoàn tất yêu cầu.', '2020-11-15 21:00:20', '2020-11-15 21:00:20'),
(306, 1, 'vi', 'core/acl/auth', 'reset.send.fail', 'Không thể gửi email trong lúc này. Vui lòng thực hiện lại sau.', '2020-11-15 21:00:20', '2020-11-15 21:00:20'),
(307, 1, 'vi', 'core/acl/auth', 'reset.new-password', 'Mật khẩu mới', '2020-11-15 21:00:20', '2020-11-15 21:00:20'),
(308, 1, 'vi', 'core/acl/auth', 'reset.email', 'Email', '2020-11-15 21:00:20', '2020-11-15 21:00:20'),
(309, 1, 'vi', 'core/acl/auth', 'email.reminder.title', 'Email khôi phục mật khẩu', '2020-11-15 21:00:20', '2020-11-15 21:00:20'),
(310, 1, 'vi', 'core/acl/auth', 'failed', 'Không thành công', '2020-11-15 21:00:20', '2020-11-15 21:00:20'),
(311, 1, 'vi', 'core/acl/auth', 'repassword', 'Xác nhận mật khẩu', '2020-11-15 21:00:20', '2020-11-15 21:00:20'),
(312, 1, 'vi', 'core/acl/auth', 'throttle', 'Throttle', '2020-11-15 21:00:20', '2020-11-15 21:00:20'),
(313, 1, 'vi', 'core/acl/auth', 'back_to_login', 'Quay lại trang đăng nhập', '2020-11-15 21:00:20', '2020-11-15 21:00:20'),
(314, 1, 'vi', 'core/acl/auth', 'login_title', 'Đăng nhập vào quản trị', '2020-11-15 21:00:20', '2020-11-15 21:00:20'),
(315, 1, 'vi', 'core/acl/auth', 'login_via_social', 'Đăng nhập thông qua mạng xã hội', '2020-11-15 21:00:20', '2020-11-15 21:00:20'),
(316, 1, 'vi', 'core/acl/auth', 'lost_your_password', 'Quên mật khẩu?', '2020-11-15 21:00:20', '2020-11-15 21:00:20'),
(317, 1, 'vi', 'core/acl/auth', 'not_member', 'Chưa là thành viên?', '2020-11-15 21:00:20', '2020-11-15 21:00:20'),
(318, 1, 'vi', 'core/acl/auth', 'register_now', 'Đăng ký ngay', '2020-11-15 21:00:20', '2020-11-15 21:00:20'),
(319, 1, 'vi', 'core/acl/permissions', 'notices.role_in_use', 'Không thể xóa quyền người dùng này vì nó đang được sử dụng!', '2020-11-15 21:00:20', '2020-11-15 21:00:20'),
(320, 1, 'vi', 'core/acl/permissions', 'notices.role_delete_belong_user', 'Không thể xóa quyền hạn này vì nó thuộc về người khác!', '2020-11-15 21:00:20', '2020-11-15 21:00:20'),
(321, 1, 'vi', 'core/acl/permissions', 'notices.role_edit_belong_user', 'Bạn không được phép sửa quyền này vì nó thuộc về người khác', '2020-11-15 21:00:20', '2020-11-15 21:00:20'),
(322, 1, 'vi', 'core/acl/permissions', 'notices.delete_global_role', 'Bạn không thể xóa quyền người dùng hệ thống!', '2020-11-15 21:00:20', '2020-11-15 21:00:20'),
(323, 1, 'vi', 'core/acl/permissions', 'notices.delete_success', 'Quyền người dùng đã được xóa!', '2020-11-15 21:00:20', '2020-11-15 21:00:20'),
(324, 1, 'vi', 'core/acl/permissions', 'notices.modified_success', 'Quyền người dùng đã được cập nhật thành công!', '2020-11-15 21:00:20', '2020-11-15 21:00:20'),
(325, 1, 'vi', 'core/acl/permissions', 'notices.create_success', 'Quyền người dùng mới đã được tạo thành công!', '2020-11-15 21:00:20', '2020-11-15 21:00:20'),
(326, 1, 'vi', 'core/acl/permissions', 'notices.duplicated_success', 'Quyền người dùng đã được sao chép thành công!', '2020-11-15 21:00:20', '2020-11-15 21:00:20'),
(327, 1, 'vi', 'core/acl/permissions', 'notices.no_select', 'Hãy chọn ít nhất một quyền người dùng để thực hiện hành động này!', '2020-11-15 21:00:20', '2020-11-15 21:00:20'),
(328, 1, 'vi', 'core/acl/permissions', 'notices.not_found', 'Không tìm thấy quyền người dùng này', '2020-11-15 21:00:20', '2020-11-15 21:00:20'),
(329, 1, 'vi', 'core/acl/permissions', 'list', 'Danh sách phân quyền', '2020-11-15 21:00:20', '2020-11-15 21:00:20'),
(330, 1, 'vi', 'core/acl/permissions', 'name', 'Tên', '2020-11-15 21:00:20', '2020-11-15 21:00:20'),
(331, 1, 'vi', 'core/acl/permissions', 'current_role', 'Quyền hiện tại', '2020-11-15 21:00:20', '2020-11-15 21:00:20'),
(332, 1, 'vi', 'core/acl/permissions', 'no_role_assigned', 'Không có quyền hạn nào', '2020-11-15 21:00:20', '2020-11-15 21:00:20'),
(333, 1, 'vi', 'core/acl/permissions', 'role_assigned', 'Quyền đã được gán', '2020-11-15 21:00:20', '2020-11-15 21:00:20'),
(334, 1, 'vi', 'core/acl/permissions', 'create_role', 'Tạo quyền mới', '2020-11-15 21:00:20', '2020-11-15 21:00:20'),
(335, 1, 'vi', 'core/acl/permissions', 'role_name', 'Tên', '2020-11-15 21:00:20', '2020-11-15 21:00:20'),
(336, 1, 'vi', 'core/acl/permissions', 'role_description', 'Mô tả', '2020-11-15 21:00:20', '2020-11-15 21:00:20'),
(337, 1, 'vi', 'core/acl/permissions', 'permission_flags', 'Cờ đánh dấu quyền hạn', '2020-11-15 21:00:20', '2020-11-15 21:00:20'),
(338, 1, 'vi', 'core/acl/permissions', 'cancel', 'Hủy bỏ', '2020-11-15 21:00:20', '2020-11-15 21:00:20'),
(339, 1, 'vi', 'core/acl/permissions', 'reset', 'Làm lại', '2020-11-15 21:00:20', '2020-11-15 21:00:20'),
(340, 1, 'vi', 'core/acl/permissions', 'save', 'Lưu', '2020-11-15 21:00:20', '2020-11-15 21:00:20'),
(341, 1, 'vi', 'core/acl/permissions', 'global_role_msg', 'Đây là một phân quyền toàn cục và không thể thay đổi.  Bạn có thể sử dụng nút \"Nhân bản\" để tạo một bản sao chép cho phân quyền này và chỉnh sửa.', '2020-11-15 21:00:20', '2020-11-15 21:00:20'),
(342, 1, 'vi', 'core/acl/permissions', 'details', 'Chi tiết', '2020-11-15 21:00:20', '2020-11-15 21:00:20'),
(343, 1, 'vi', 'core/acl/permissions', 'duplicate', 'Nhân bản', '2020-11-15 21:00:20', '2020-11-15 21:00:20'),
(344, 1, 'vi', 'core/acl/permissions', 'all', 'Tất cả phân quyền', '2020-11-15 21:00:20', '2020-11-15 21:00:20'),
(345, 1, 'vi', 'core/acl/permissions', 'list_role', 'Danh sách quyền', '2020-11-15 21:00:20', '2020-11-15 21:00:20'),
(346, 1, 'vi', 'core/acl/permissions', 'created_on', 'Ngày tạo', '2020-11-15 21:00:20', '2020-11-15 21:00:20'),
(347, 1, 'vi', 'core/acl/permissions', 'created_by', 'Được tạo bởi', '2020-11-15 21:00:20', '2020-11-15 21:00:20'),
(348, 1, 'vi', 'core/acl/permissions', 'actions', 'Tác vụ', '2020-11-15 21:00:20', '2020-11-15 21:00:20'),
(349, 1, 'vi', 'core/acl/permissions', 'create_success', 'Tạo thành công!', '2020-11-15 21:00:20', '2020-11-15 21:00:20'),
(350, 1, 'vi', 'core/acl/permissions', 'delete_global_role', 'Không thể xóa quyền hệ thống', '2020-11-15 21:00:20', '2020-11-15 21:00:20'),
(351, 1, 'vi', 'core/acl/permissions', 'delete_success', 'Xóa quyền thành công', '2020-11-15 21:00:20', '2020-11-15 21:00:20'),
(352, 1, 'vi', 'core/acl/permissions', 'duplicated_success', 'Nhân bản thành công', '2020-11-15 21:00:20', '2020-11-15 21:00:20'),
(353, 1, 'vi', 'core/acl/permissions', 'modified_success', 'Sửa thành công', '2020-11-15 21:00:20', '2020-11-15 21:00:20'),
(354, 1, 'vi', 'core/acl/permissions', 'no_select', 'Hãy chọn ít nhất một quyền để thực hiện hành động này!', '2020-11-15 21:00:20', '2020-11-15 21:00:20'),
(355, 1, 'vi', 'core/acl/permissions', 'not_found', 'Không tìm thấy quyền thành viên nào!', '2020-11-15 21:00:20', '2020-11-15 21:00:20'),
(356, 1, 'vi', 'core/acl/permissions', 'options', 'Tùy chọn', '2020-11-15 21:00:20', '2020-11-15 21:00:20'),
(357, 1, 'vi', 'core/acl/permissions', 'role_delete_belong_user', 'Không thể xóa quyền hạn này vì nó thuộc về người khác!', '2020-11-15 21:00:20', '2020-11-15 21:00:20'),
(358, 1, 'vi', 'core/acl/permissions', 'role_edit_belong_user', 'Bạn không được phép sửa quyền này vì nó thuộc về người khác', '2020-11-15 21:00:20', '2020-11-15 21:00:20'),
(359, 1, 'vi', 'core/acl/permissions', 'role_in_use', 'Không thể xóa quyền người dùng này vì nó đang được sử dụng!', '2020-11-15 21:00:20', '2020-11-15 21:00:20'),
(360, 1, 'vi', 'core/acl/permissions', 'access_denied_message', 'Bạn không có quyền sử dụng chức năng này!', '2020-11-15 21:00:20', '2020-11-15 21:00:20'),
(361, 1, 'vi', 'core/acl/permissions', 'roles', 'Quyền', '2020-11-15 21:00:20', '2020-11-15 21:00:20'),
(362, 1, 'vi', 'core/acl/permissions', 'role_permission', 'Nhóm và phân quyền', '2020-11-15 21:00:20', '2020-11-15 21:00:20'),
(363, 1, 'vi', 'core/acl/permissions', 'user_management', 'Quản lý người dùng hệ thống', '2020-11-15 21:00:20', '2020-11-15 21:00:20'),
(364, 1, 'vi', 'core/acl/permissions', 'super_user_management', 'Quản lý người dùng cấp cao', '2020-11-15 21:00:20', '2020-11-15 21:00:20'),
(365, 1, 'vi', 'core/acl/reminders', 'password', 'Mật khẩu phải ít nhất 6 kí tự và trùng khớp với mật khẩu xác nhận.', '2020-11-15 21:00:20', '2020-11-15 21:00:20'),
(366, 1, 'vi', 'core/acl/reminders', 'user', 'Hệ thống không thể tìm thấy tài khoản với email này.', '2020-11-15 21:00:20', '2020-11-15 21:00:20'),
(367, 1, 'vi', 'core/acl/reminders', 'token', 'Mã khôi phục mật khẩu này không hợp lệ.', '2020-11-15 21:00:20', '2020-11-15 21:00:20'),
(368, 1, 'vi', 'core/acl/reminders', 'sent', 'Liên kết khôi phục mật khẩu đã được gửi!', '2020-11-15 21:00:20', '2020-11-15 21:00:20'),
(369, 1, 'vi', 'core/acl/reminders', 'reset', 'Mật khẩu đã được thay đổi!', '2020-11-15 21:00:20', '2020-11-15 21:00:20'),
(370, 1, 'vi', 'core/acl/users', 'delete_user_logged_in', 'Không thể xóa người dùng đang đăng nhập hệ thống!', '2020-11-15 21:00:20', '2020-11-15 21:00:20'),
(371, 1, 'vi', 'core/acl/users', 'no_select', 'Hãy chọn ít nhất một trường để thực hiện hành động này!', '2020-11-15 21:00:20', '2020-11-15 21:00:20'),
(372, 1, 'vi', 'core/acl/users', 'lock_user_logged_in', 'Không thể khóa người dùng đang đăng nhập hệ thống!', '2020-11-15 21:00:20', '2020-11-15 21:00:20'),
(373, 1, 'vi', 'core/acl/users', 'update_success', 'Cập nhật trạng thái thành công!', '2020-11-15 21:00:20', '2020-11-15 21:00:20'),
(374, 1, 'vi', 'core/acl/users', 'save_setting_failed', 'Có lỗi xảy ra trong quá trình lưu cài đặt của người dùng', '2020-11-15 21:00:20', '2020-11-15 21:00:20'),
(375, 1, 'vi', 'core/acl/users', 'not_found', 'Không tìm thấy người dùng', '2020-11-15 21:00:20', '2020-11-15 21:00:20'),
(376, 1, 'vi', 'core/acl/users', 'email_exist', 'Email này đã được sử dụng bởi người dùng khác trong hệ thống', '2020-11-15 21:00:20', '2020-11-15 21:00:20'),
(377, 1, 'vi', 'core/acl/users', 'username_exist', 'Tên đăng nhập này đã được sử dụng bởi người dùng khác trong hệ thống', '2020-11-15 21:00:20', '2020-11-15 21:00:20'),
(378, 1, 'vi', 'core/acl/users', 'update_profile_success', 'Thông tin tài khoản của bạn đã được cập nhật thành công', '2020-11-15 21:00:20', '2020-11-15 21:00:20'),
(379, 1, 'vi', 'core/acl/users', 'password_update_success', 'Cập nhật mật khẩu thành công', '2020-11-15 21:00:20', '2020-11-15 21:00:20'),
(380, 1, 'vi', 'core/acl/users', 'current_password_not_valid', 'Mật khẩu hiện tại không chính xác', '2020-11-15 21:00:20', '2020-11-15 21:00:20'),
(381, 1, 'vi', 'core/acl/users', 'user_exist_in', 'Người dùng đã là thành viên', '2020-11-15 21:00:20', '2020-11-15 21:00:20');
INSERT INTO `translations` (`id`, `status`, `locale`, `group`, `key`, `value`, `created_at`, `updated_at`) VALUES
(382, 1, 'vi', 'core/acl/users', 'email', 'Email', '2020-11-15 21:00:20', '2020-11-15 21:00:20'),
(383, 1, 'vi', 'core/acl/users', 'username', 'Tên đăng nhập', '2020-11-15 21:00:20', '2020-11-15 21:00:20'),
(384, 1, 'vi', 'core/acl/users', 'role', 'Phân quyền', '2020-11-15 21:00:20', '2020-11-15 21:00:20'),
(385, 1, 'vi', 'core/acl/users', 'first_name', 'Họ', '2020-11-15 21:00:20', '2020-11-15 21:00:20'),
(386, 1, 'vi', 'core/acl/users', 'last_name', 'Tên', '2020-11-15 21:00:20', '2020-11-15 21:00:20'),
(387, 1, 'vi', 'core/acl/users', 'message', 'Thông điệp', '2020-11-15 21:00:20', '2020-11-15 21:00:20'),
(388, 1, 'vi', 'core/acl/users', 'cancel_btn', 'Hủy bỏ', '2020-11-15 21:00:20', '2020-11-15 21:00:20'),
(389, 1, 'vi', 'core/acl/users', 'password', 'Mật khẩu', '2020-11-15 21:00:20', '2020-11-15 21:00:20'),
(390, 1, 'vi', 'core/acl/users', 'new_password', 'Mật khẩu mới', '2020-11-15 21:00:20', '2020-11-15 21:00:20'),
(391, 1, 'vi', 'core/acl/users', 'save', 'Lưu', '2020-11-15 21:00:20', '2020-11-15 21:00:20'),
(392, 1, 'vi', 'core/acl/users', 'confirm_new_password', 'Xác nhận mật khẩu mới', '2020-11-15 21:00:20', '2020-11-15 21:00:20'),
(393, 1, 'vi', 'core/acl/users', 'deleted', 'Xóa thành viên thành công', '2020-11-15 21:00:20', '2020-11-15 21:00:20'),
(394, 1, 'vi', 'core/acl/users', 'cannot_delete', 'Không thể xóa thành viên', '2020-11-15 21:00:20', '2020-11-15 21:00:20'),
(395, 1, 'vi', 'core/acl/users', 'list', 'Danh sách thành viên', '2020-11-15 21:00:20', '2020-11-15 21:00:20'),
(396, 1, 'vi', 'core/acl/users', 'last_login', 'Lần cuối đăng nhập', '2020-11-15 21:00:20', '2020-11-15 21:00:20'),
(397, 1, 'vi', 'core/acl/users', 'error_update_profile_image', 'Có lỗi trong quá trình đổi ảnh đại diện', '2020-11-15 21:00:20', '2020-11-15 21:00:20'),
(398, 1, 'vi', 'core/acl/users', 'email_reminder_template', '<h3>Xin chào :name</h3><p>Hệ thống vừa nhận được yêu cầu khôi phục mật khẩu cho tài khoản của bạn, để hoàn tất tác vụ này vui lòng click vào đường link bên dưới.</p><p><a href=\":link\">Khôi phục mật khẩu</a></p><p>Nếu không phải bạn yêu cầu khôi phục mật khẩu, vui lòng bỏ qua email này.</p><p>Email này có giá trị trong vòng 60 phút kể từ lúc nhận được email.</p>', '2020-11-15 21:00:20', '2020-11-15 21:00:20'),
(399, 1, 'vi', 'core/acl/users', 'change_profile_image', 'Thay đổi ảnh đại diện', '2020-11-15 21:00:20', '2020-11-15 21:00:20'),
(400, 1, 'vi', 'core/acl/users', 'new_image', 'Ảnh mới', '2020-11-15 21:00:20', '2020-11-15 21:00:20'),
(401, 1, 'vi', 'core/acl/users', 'loading', 'Đang tải', '2020-11-15 21:00:20', '2020-11-15 21:00:20'),
(402, 1, 'vi', 'core/acl/users', 'close', 'Đóng', '2020-11-15 21:00:21', '2020-11-15 21:00:21'),
(403, 1, 'vi', 'core/acl/users', 'update', 'Cập nhật', '2020-11-15 21:00:21', '2020-11-15 21:00:21'),
(404, 1, 'vi', 'core/acl/users', 'read_image_failed', 'Không đọc được nội dung của hình ảnh', '2020-11-15 21:00:21', '2020-11-15 21:00:21'),
(405, 1, 'vi', 'core/acl/users', 'update_avatar_success', 'Cập nhật ảnh đại diện thành công!', '2020-11-15 21:00:21', '2020-11-15 21:00:21'),
(406, 1, 'vi', 'core/acl/users', 'users', 'Quản trị viên', '2020-11-15 21:00:21', '2020-11-15 21:00:21'),
(407, 1, 'vi', 'core/acl/users', 'info.title', 'Thông tin người dùng', '2020-11-15 21:00:21', '2020-11-15 21:00:21'),
(408, 1, 'vi', 'core/acl/users', 'info.first_name', 'Họ', '2020-11-15 21:00:21', '2020-11-15 21:00:21'),
(409, 1, 'vi', 'core/acl/users', 'info.last_name', 'Tên', '2020-11-15 21:00:21', '2020-11-15 21:00:21'),
(410, 1, 'vi', 'core/acl/users', 'info.email', 'Email', '2020-11-15 21:00:21', '2020-11-15 21:00:21'),
(411, 1, 'vi', 'core/acl/users', 'info.second_email', 'Email dự phòng', '2020-11-15 21:00:21', '2020-11-15 21:00:21'),
(412, 1, 'vi', 'core/acl/users', 'info.address', 'Địa chỉ', '2020-11-15 21:00:21', '2020-11-15 21:00:21'),
(413, 1, 'vi', 'core/acl/users', 'info.second_address', 'Địa chỉ dự phòng', '2020-11-15 21:00:21', '2020-11-15 21:00:21'),
(414, 1, 'vi', 'core/acl/users', 'info.birth_day', 'Ngày sinh', '2020-11-15 21:00:21', '2020-11-15 21:00:21'),
(415, 1, 'vi', 'core/acl/users', 'info.job', 'Nghề nghiệp', '2020-11-15 21:00:21', '2020-11-15 21:00:21'),
(416, 1, 'vi', 'core/acl/users', 'info.mobile_number', 'Số điện thoại di động', '2020-11-15 21:00:21', '2020-11-15 21:00:21'),
(417, 1, 'vi', 'core/acl/users', 'info.second_mobile_number', 'Số điện thoại dự phòng', '2020-11-15 21:00:21', '2020-11-15 21:00:21'),
(418, 1, 'vi', 'core/acl/users', 'info.interes', 'Sở thích', '2020-11-15 21:00:21', '2020-11-15 21:00:21'),
(419, 1, 'vi', 'core/acl/users', 'info.about', 'Giới thiệu', '2020-11-15 21:00:21', '2020-11-15 21:00:21'),
(420, 1, 'vi', 'core/acl/users', 'gender.title', 'Giới tính', '2020-11-15 21:00:21', '2020-11-15 21:00:21'),
(421, 1, 'vi', 'core/acl/users', 'gender.male', 'nam', '2020-11-15 21:00:21', '2020-11-15 21:00:21'),
(422, 1, 'vi', 'core/acl/users', 'gender.female', 'nữ', '2020-11-15 21:00:21', '2020-11-15 21:00:21'),
(423, 1, 'vi', 'core/acl/users', 'change_password', 'Thay đổi mật khẩu', '2020-11-15 21:00:21', '2020-11-15 21:00:21'),
(424, 1, 'vi', 'core/acl/users', 'current_password', 'Mật khẩu hiện tại', '2020-11-15 21:00:21', '2020-11-15 21:00:21'),
(425, 1, 'en', 'core/base/base', 'yes', 'Yes', '2020-11-15 21:00:21', '2020-11-15 21:00:21'),
(426, 1, 'en', 'core/base/base', 'no', 'No', '2020-11-15 21:00:21', '2020-11-15 21:00:21'),
(427, 1, 'en', 'core/base/base', 'is_default', 'Is default?', '2020-11-15 21:00:21', '2020-11-15 21:00:21'),
(428, 1, 'en', 'core/base/base', 'proc_close_disabled_error', 'Function proc_close() is disabled. Please contact your hosting provider to enable\n    it. Or you can add to .env: CAN_EXECUTE_COMMAND=false to disable this feature.', '2020-11-15 21:00:21', '2020-11-15 21:00:21'),
(429, 1, 'en', 'core/base/base', 'email_template.header', 'Email template header', '2020-11-15 21:00:21', '2020-11-15 21:00:21'),
(430, 1, 'en', 'core/base/base', 'email_template.footer', 'Email template footer', '2020-11-15 21:00:21', '2020-11-15 21:00:21'),
(431, 1, 'en', 'core/base/base', 'email_template.site_title', 'Site title', '2020-11-15 21:00:21', '2020-11-15 21:00:21'),
(432, 1, 'en', 'core/base/base', 'email_template.site_url', 'Site URL', '2020-11-15 21:00:21', '2020-11-15 21:00:21'),
(433, 1, 'en', 'core/base/base', 'email_template.site_logo', 'Site Logo', '2020-11-15 21:00:21', '2020-11-15 21:00:21'),
(434, 1, 'en', 'core/base/base', 'email_template.date_time', 'Current date time', '2020-11-15 21:00:21', '2020-11-15 21:00:21'),
(435, 1, 'en', 'core/base/base', 'email_template.date_year', 'Current year', '2020-11-15 21:00:21', '2020-11-15 21:00:21'),
(436, 1, 'en', 'core/base/base', 'email_template.site_admin_email', 'Site admin email', '2020-11-15 21:00:21', '2020-11-15 21:00:21'),
(437, 1, 'en', 'core/base/base', 'change_image', 'Change image', '2020-11-15 21:00:21', '2020-11-15 21:00:21'),
(438, 1, 'en', 'core/base/base', 'delete_image', 'Delete image', '2020-11-15 21:00:21', '2020-11-15 21:00:21'),
(439, 1, 'en', 'core/base/base', 'preview_image', 'Preview image', '2020-11-15 21:00:21', '2020-11-15 21:00:21'),
(440, 1, 'en', 'core/base/base', 'image', 'Image', '2020-11-15 21:00:21', '2020-11-15 21:00:21'),
(441, 1, 'en', 'core/base/base', 'using_button', 'Using button', '2020-11-15 21:00:21', '2020-11-15 21:00:21'),
(442, 1, 'en', 'core/base/base', 'select_image', 'Select image', '2020-11-15 21:00:21', '2020-11-15 21:00:21'),
(443, 1, 'en', 'core/base/base', 'to_add_more_image', 'to add more images', '2020-11-15 21:00:21', '2020-11-15 21:00:21'),
(444, 1, 'en', 'core/base/base', 'add_image', 'Add image', '2020-11-15 21:00:21', '2020-11-15 21:00:21'),
(445, 1, 'en', 'core/base/cache', 'cache_management', 'Cache management', '2020-11-15 21:00:21', '2020-11-15 21:00:21'),
(446, 1, 'en', 'core/base/cache', 'cache_commands', 'Clear cache commands', '2020-11-15 21:00:21', '2020-11-15 21:00:21'),
(447, 1, 'en', 'core/base/cache', 'commands.clear_cms_cache.title', 'Clear all CMS cache', '2020-11-15 21:00:21', '2020-11-15 21:00:21'),
(448, 1, 'en', 'core/base/cache', 'commands.clear_cms_cache.description', 'Clear CMS caching: database caching, static blocks... Run this command when you don\'t see the changes after updating data.', '2020-11-15 21:00:21', '2020-11-15 21:00:21'),
(449, 1, 'en', 'core/base/cache', 'commands.clear_cms_cache.success_msg', 'Cache cleaned', '2020-11-15 21:00:21', '2020-11-15 21:00:21'),
(450, 1, 'en', 'core/base/cache', 'commands.refresh_compiled_views.title', 'Refresh compiled views', '2020-11-15 21:00:21', '2020-11-15 21:00:21'),
(451, 1, 'en', 'core/base/cache', 'commands.refresh_compiled_views.description', 'Clear compiled views to make views up to date.', '2020-11-15 21:00:21', '2020-11-15 21:00:21'),
(452, 1, 'en', 'core/base/cache', 'commands.refresh_compiled_views.success_msg', 'Cache view refreshed', '2020-11-15 21:00:21', '2020-11-15 21:00:21'),
(453, 1, 'en', 'core/base/cache', 'commands.clear_config_cache.title', 'Clear config cache', '2020-11-15 21:00:21', '2020-11-15 21:00:21'),
(454, 1, 'en', 'core/base/cache', 'commands.clear_config_cache.description', 'You might need to refresh the config caching when you change something on production environment.', '2020-11-15 21:00:21', '2020-11-15 21:00:21'),
(455, 1, 'en', 'core/base/cache', 'commands.clear_config_cache.success_msg', 'Config cache cleaned', '2020-11-15 21:00:21', '2020-11-15 21:00:21'),
(456, 1, 'en', 'core/base/cache', 'commands.clear_route_cache.title', 'Clear route cache', '2020-11-15 21:00:21', '2020-11-15 21:00:21'),
(457, 1, 'en', 'core/base/cache', 'commands.clear_route_cache.description', 'Clear cache routing.', '2020-11-15 21:00:21', '2020-11-15 21:00:21'),
(458, 1, 'en', 'core/base/cache', 'commands.clear_route_cache.success_msg', 'The route cache has been cleaned', '2020-11-15 21:00:21', '2020-11-15 21:00:21'),
(459, 1, 'en', 'core/base/cache', 'commands.clear_log.title', 'Clear log', '2020-11-15 21:00:21', '2020-11-15 21:00:21'),
(460, 1, 'en', 'core/base/cache', 'commands.clear_log.description', 'Clear system log files', '2020-11-15 21:00:21', '2020-11-15 21:00:21'),
(461, 1, 'en', 'core/base/cache', 'commands.clear_log.success_msg', 'The system log has been cleaned', '2020-11-15 21:00:21', '2020-11-15 21:00:21'),
(462, 1, 'en', 'core/base/enums', 'statuses.draft', 'Draft', '2020-11-15 21:00:21', '2020-11-15 21:00:21'),
(463, 1, 'en', 'core/base/enums', 'statuses.pending', 'Pending', '2020-11-15 21:00:21', '2020-11-15 21:00:21'),
(464, 1, 'en', 'core/base/enums', 'statuses.published', 'Published', '2020-11-15 21:00:21', '2020-11-15 21:00:21'),
(465, 1, 'en', 'core/base/errors', '401_title', 'Permission Denied', '2020-11-15 21:00:21', '2020-11-15 21:00:21'),
(466, 1, 'en', 'core/base/errors', '401_msg', '<li>You have not been granted access to the section by the administrator.</li>\n	                <li>You may have the wrong account type.</li>\n	                <li>You are not authorized to view the requested resource.</li>\n	                <li>Your subscription may have expired.</li>', '2020-11-15 21:00:21', '2020-11-15 21:00:21'),
(467, 1, 'en', 'core/base/errors', '404_title', 'Page could not be found', '2020-11-15 21:00:21', '2020-11-15 21:00:21'),
(468, 1, 'en', 'core/base/errors', '404_msg', '<li>The page you requested does not exist.</li>\n	                <li>The link you clicked is no longer.</li>\n	                <li>The page may have moved to a new location.</li>\n	                <li>An error may have occurred.</li>\n	                <li>You are not authorized to view the requested resource.</li>', '2020-11-15 21:00:21', '2020-11-15 21:00:21'),
(469, 1, 'en', 'core/base/errors', '500_title', 'Page could not be loaded', '2020-11-15 21:00:21', '2020-11-15 21:00:21'),
(470, 1, 'en', 'core/base/errors', '500_msg', '<li>The page you requested does not exist.</li>\n	                <li>The link you clicked is no longer.</li>\n	                <li>The page may have moved to a new location.</li>\n	                <li>An error may have occurred.</li>\n	                <li>You are not authorized to view the requested resource.</li>', '2020-11-15 21:00:21', '2020-11-15 21:00:21'),
(471, 1, 'en', 'core/base/errors', 'reasons', 'This may have occurred because of several reasons', '2020-11-15 21:00:21', '2020-11-15 21:00:21'),
(472, 1, 'en', 'core/base/errors', 'try_again', 'Please try again in a few minutes, or alternatively return to the homepage by <a href=\"http://flex-home.local/admin\">clicking here</a>.', '2020-11-15 21:00:21', '2020-11-15 21:00:21'),
(473, 1, 'en', 'core/base/forms', 'choose_image', 'Choose image', '2020-11-15 21:00:21', '2020-11-15 21:00:21'),
(474, 1, 'en', 'core/base/forms', 'actions', 'Actions', '2020-11-15 21:00:21', '2020-11-15 21:00:21'),
(475, 1, 'en', 'core/base/forms', 'save', 'Save', '2020-11-15 21:00:21', '2020-11-15 21:00:21'),
(476, 1, 'en', 'core/base/forms', 'save_and_continue', 'Save & Edit', '2020-11-15 21:00:21', '2020-11-15 21:00:21'),
(477, 1, 'en', 'core/base/forms', 'image', 'Image', '2020-11-15 21:00:21', '2020-11-15 21:00:21'),
(478, 1, 'en', 'core/base/forms', 'image_placeholder', 'Insert path of image or click upload button', '2020-11-15 21:00:21', '2020-11-15 21:00:21'),
(479, 1, 'en', 'core/base/forms', 'create', 'Create', '2020-11-15 21:00:21', '2020-11-15 21:00:21'),
(480, 1, 'en', 'core/base/forms', 'edit', 'Edit', '2020-11-15 21:00:21', '2020-11-15 21:00:21'),
(481, 1, 'en', 'core/base/forms', 'permalink', 'Permalink', '2020-11-15 21:00:21', '2020-11-15 21:00:21'),
(482, 1, 'en', 'core/base/forms', 'ok', 'OK', '2020-11-15 21:00:21', '2020-11-15 21:00:21'),
(483, 1, 'en', 'core/base/forms', 'cancel', 'Cancel', '2020-11-15 21:00:21', '2020-11-15 21:00:21'),
(484, 1, 'en', 'core/base/forms', 'character_remain', 'character(s) remain', '2020-11-15 21:00:21', '2020-11-15 21:00:21'),
(485, 1, 'en', 'core/base/forms', 'template', 'Template', '2020-11-15 21:00:21', '2020-11-15 21:00:21'),
(486, 1, 'en', 'core/base/forms', 'choose_file', 'Choose file', '2020-11-15 21:00:21', '2020-11-15 21:00:21'),
(487, 1, 'en', 'core/base/forms', 'file', 'File', '2020-11-15 21:00:21', '2020-11-15 21:00:21'),
(488, 1, 'en', 'core/base/forms', 'content', 'Content', '2020-11-15 21:00:21', '2020-11-15 21:00:21'),
(489, 1, 'en', 'core/base/forms', 'description', 'Description', '2020-11-15 21:00:21', '2020-11-15 21:00:21'),
(490, 1, 'en', 'core/base/forms', 'name', 'Name', '2020-11-15 21:00:21', '2020-11-15 21:00:21'),
(491, 1, 'en', 'core/base/forms', 'slug', 'Slug', '2020-11-15 21:00:21', '2020-11-15 21:00:21'),
(492, 1, 'en', 'core/base/forms', 'title', 'Title', '2020-11-15 21:00:21', '2020-11-15 21:00:21'),
(493, 1, 'en', 'core/base/forms', 'value', 'Value', '2020-11-15 21:00:21', '2020-11-15 21:00:21'),
(494, 1, 'en', 'core/base/forms', 'name_placeholder', 'Name', '2020-11-15 21:00:21', '2020-11-15 21:00:21'),
(495, 1, 'en', 'core/base/forms', 'alias_placeholder', 'Alias', '2020-11-15 21:00:21', '2020-11-15 21:00:21'),
(496, 1, 'en', 'core/base/forms', 'description_placeholder', 'Short description', '2020-11-15 21:00:21', '2020-11-15 21:00:21'),
(497, 1, 'en', 'core/base/forms', 'parent', 'Parent', '2020-11-15 21:00:21', '2020-11-15 21:00:21'),
(498, 1, 'en', 'core/base/forms', 'icon', 'Icon', '2020-11-15 21:00:21', '2020-11-15 21:00:21'),
(499, 1, 'en', 'core/base/forms', 'icon_placeholder', 'Ex: fa fa-home', '2020-11-15 21:00:21', '2020-11-15 21:00:21'),
(500, 1, 'en', 'core/base/forms', 'order_by', 'Order by', '2020-11-15 21:00:21', '2020-11-15 21:00:21'),
(501, 1, 'en', 'core/base/forms', 'order_by_placeholder', 'Order by', '2020-11-15 21:00:21', '2020-11-15 21:00:21'),
(502, 1, 'en', 'core/base/forms', 'is_featured', 'Is featured?', '2020-11-15 21:00:21', '2020-11-15 21:00:21'),
(503, 1, 'en', 'core/base/forms', 'is_default', 'Is default?', '2020-11-15 21:00:21', '2020-11-15 21:00:21'),
(504, 1, 'en', 'core/base/forms', 'update', 'Update', '2020-11-15 21:00:21', '2020-11-15 21:00:21'),
(505, 1, 'en', 'core/base/forms', 'publish', 'Publish', '2020-11-15 21:00:21', '2020-11-15 21:00:21'),
(506, 1, 'en', 'core/base/forms', 'remove_image', 'Remove image', '2020-11-15 21:00:21', '2020-11-15 21:00:21'),
(507, 1, 'en', 'core/base/forms', 'remove_file', 'Remove file', '2020-11-15 21:00:21', '2020-11-15 21:00:21'),
(508, 1, 'en', 'core/base/forms', 'order', 'Order', '2020-11-15 21:00:21', '2020-11-15 21:00:21'),
(509, 1, 'en', 'core/base/forms', 'alias', 'Alias', '2020-11-15 21:00:21', '2020-11-15 21:00:21'),
(510, 1, 'en', 'core/base/forms', 'basic_information', 'Basic information', '2020-11-15 21:00:21', '2020-11-15 21:00:21'),
(511, 1, 'en', 'core/base/forms', 'short_code', 'Shortcode', '2020-11-15 21:00:21', '2020-11-15 21:00:21'),
(512, 1, 'en', 'core/base/forms', 'add_short_code', 'Add a shortcode', '2020-11-15 21:00:21', '2020-11-15 21:00:21'),
(513, 1, 'en', 'core/base/forms', 'add', 'Add', '2020-11-15 21:00:21', '2020-11-15 21:00:21'),
(514, 1, 'en', 'core/base/forms', 'link', 'Link', '2020-11-15 21:00:21', '2020-11-15 21:00:21'),
(515, 1, 'en', 'core/base/forms', 'show_hide_editor', 'Show/Hide Editor', '2020-11-15 21:00:21', '2020-11-15 21:00:21'),
(516, 1, 'en', 'core/base/forms', 'basic_info_title', 'Basic information', '2020-11-15 21:00:21', '2020-11-15 21:00:21'),
(517, 1, 'en', 'core/base/layouts', 'platform_admin', 'Platform Administration', '2020-11-15 21:00:21', '2020-11-15 21:00:21'),
(518, 1, 'en', 'core/base/layouts', 'dashboard', 'Dashboard', '2020-11-15 21:00:21', '2020-11-15 21:00:21'),
(519, 1, 'en', 'core/base/layouts', 'widgets', 'Widgets', '2020-11-15 21:00:21', '2020-11-15 21:00:21'),
(520, 1, 'en', 'core/base/layouts', 'plugins', 'Plugins', '2020-11-15 21:00:21', '2020-11-15 21:00:21'),
(521, 1, 'en', 'core/base/layouts', 'settings', 'Settings', '2020-11-15 21:00:21', '2020-11-15 21:00:21'),
(522, 1, 'en', 'core/base/layouts', 'setting_general', 'General', '2020-11-15 21:00:21', '2020-11-15 21:00:21'),
(523, 1, 'en', 'core/base/layouts', 'setting_email', 'Email', '2020-11-15 21:00:21', '2020-11-15 21:00:21'),
(524, 1, 'en', 'core/base/layouts', 'system_information', 'System information', '2020-11-15 21:00:21', '2020-11-15 21:00:21'),
(525, 1, 'en', 'core/base/layouts', 'theme', 'Theme', '2020-11-15 21:00:21', '2020-11-15 21:00:21'),
(526, 1, 'en', 'core/base/layouts', 'copyright', 'Copyright :year &copy; :company. Version: <span>:version</span>', '2020-11-15 21:00:21', '2020-11-15 21:00:21'),
(527, 1, 'en', 'core/base/layouts', 'profile', 'Profile', '2020-11-15 21:00:21', '2020-11-15 21:00:21'),
(528, 1, 'en', 'core/base/layouts', 'logout', 'Logout', '2020-11-15 21:00:21', '2020-11-15 21:00:21'),
(529, 1, 'en', 'core/base/layouts', 'no_search_result', 'No results found, please try with different keywords.', '2020-11-15 21:00:21', '2020-11-15 21:00:21'),
(530, 1, 'en', 'core/base/layouts', 'home', 'Home', '2020-11-15 21:00:21', '2020-11-15 21:00:21'),
(531, 1, 'en', 'core/base/layouts', 'search', 'Search', '2020-11-15 21:00:21', '2020-11-15 21:00:21'),
(532, 1, 'en', 'core/base/layouts', 'add_new', 'Add new', '2020-11-15 21:00:21', '2020-11-15 21:00:21'),
(533, 1, 'en', 'core/base/layouts', 'n_a', 'N/A', '2020-11-15 21:00:21', '2020-11-15 21:00:21'),
(534, 1, 'en', 'core/base/layouts', 'page_loaded_time', 'Page loaded in', '2020-11-15 21:00:21', '2020-11-15 21:00:21'),
(535, 1, 'en', 'core/base/layouts', 'view_website', 'View website', '2020-11-15 21:00:21', '2020-11-15 21:00:21'),
(536, 1, 'en', 'core/base/mail', 'send-fail', 'Send email failed', '2020-11-15 21:00:21', '2020-11-15 21:00:21'),
(537, 1, 'en', 'core/base/notices', 'create_success_message', 'Created successfully', '2020-11-15 21:00:21', '2020-11-15 21:00:21'),
(538, 1, 'en', 'core/base/notices', 'update_success_message', 'Updated successfully', '2020-11-15 21:00:21', '2020-11-15 21:00:21'),
(539, 1, 'en', 'core/base/notices', 'delete_success_message', 'Deleted successfully', '2020-11-15 21:00:21', '2020-11-15 21:00:21'),
(540, 1, 'en', 'core/base/notices', 'success_header', 'Success!', '2020-11-15 21:00:21', '2020-11-15 21:00:21'),
(541, 1, 'en', 'core/base/notices', 'error_header', 'Error!', '2020-11-15 21:00:21', '2020-11-15 21:00:21'),
(542, 1, 'en', 'core/base/notices', 'no_select', 'Please select at least one record to perform this action!', '2020-11-15 21:00:21', '2020-11-15 21:00:21'),
(543, 1, 'en', 'core/base/notices', 'processing_request', 'We are processing your request.', '2020-11-15 21:00:21', '2020-11-15 21:00:21'),
(544, 1, 'en', 'core/base/notices', 'error', 'Error!', '2020-11-15 21:00:21', '2020-11-15 21:00:21'),
(545, 1, 'en', 'core/base/notices', 'success', 'Success!', '2020-11-15 21:00:21', '2020-11-15 21:00:21'),
(546, 1, 'en', 'core/base/notices', 'info', 'Info!', '2020-11-15 21:00:21', '2020-11-15 21:00:21'),
(547, 1, 'en', 'core/base/notices', 'enum.validate_message', 'The :attribute value you have entered is invalid.', '2020-11-15 21:00:21', '2020-11-15 21:00:21'),
(548, 1, 'en', 'core/base/system', 'no_select', 'Please select at least one record to take this action!', '2020-11-15 21:00:21', '2020-11-15 21:00:21'),
(549, 1, 'en', 'core/base/system', 'cannot_find_user', 'Unable to find specified user', '2020-11-15 21:00:21', '2020-11-15 21:00:21'),
(550, 1, 'en', 'core/base/system', 'supper_revoked', 'Super user access revoked', '2020-11-15 21:00:21', '2020-11-15 21:00:21'),
(551, 1, 'en', 'core/base/system', 'cannot_revoke_yourself', 'Can not revoke supper user access permission yourself!', '2020-11-15 21:00:21', '2020-11-15 21:00:21'),
(552, 1, 'en', 'core/base/system', 'cant_remove_supper', 'You don\'t has permission to remove this super user', '2020-11-15 21:00:21', '2020-11-15 21:00:21'),
(553, 1, 'en', 'core/base/system', 'cant_find_user_with_email', 'Unable to find user with specified email address', '2020-11-15 21:00:21', '2020-11-15 21:00:21'),
(554, 1, 'en', 'core/base/system', 'supper_granted', 'Super user access granted', '2020-11-15 21:00:21', '2020-11-15 21:00:21'),
(555, 1, 'en', 'core/base/system', 'delete_log_success', 'Delete log file successfully!', '2020-11-15 21:00:21', '2020-11-15 21:00:21'),
(556, 1, 'en', 'core/base/system', 'get_member_success', 'Member list retrieved successfully', '2020-11-15 21:00:21', '2020-11-15 21:00:21'),
(557, 1, 'en', 'core/base/system', 'error_occur', 'The following errors occurred', '2020-11-15 21:00:21', '2020-11-15 21:00:21'),
(558, 1, 'en', 'core/base/system', 'user_management', 'User Management', '2020-11-15 21:00:21', '2020-11-15 21:00:21'),
(559, 1, 'en', 'core/base/system', 'user_management_description', 'Manage users.', '2020-11-15 21:00:21', '2020-11-15 21:00:21'),
(560, 1, 'en', 'core/base/system', 'role_and_permission', 'Roles and Permissions', '2020-11-15 21:00:21', '2020-11-15 21:00:21'),
(561, 1, 'en', 'core/base/system', 'role_and_permission_description', 'Manage the available roles.', '2020-11-15 21:00:21', '2020-11-15 21:00:21'),
(562, 1, 'en', 'core/base/system', 'user.list_super', 'List Super Users', '2020-11-15 21:00:21', '2020-11-15 21:00:21'),
(563, 1, 'en', 'core/base/system', 'user.email', 'Email', '2020-11-15 21:00:21', '2020-11-15 21:00:21'),
(564, 1, 'en', 'core/base/system', 'user.last_login', 'Last Login', '2020-11-15 21:00:21', '2020-11-15 21:00:21'),
(565, 1, 'en', 'core/base/system', 'user.username', 'Username', '2020-11-15 21:00:21', '2020-11-15 21:00:21'),
(566, 1, 'en', 'core/base/system', 'user.add_user', 'Add Super User', '2020-11-15 21:00:21', '2020-11-15 21:00:21'),
(567, 1, 'en', 'core/base/system', 'user.cancel', 'Cancel', '2020-11-15 21:00:21', '2020-11-15 21:00:21'),
(568, 1, 'en', 'core/base/system', 'user.create', 'Create', '2020-11-15 21:00:21', '2020-11-15 21:00:21'),
(569, 1, 'en', 'core/base/system', 'options.features', 'Feature Access Control', '2020-11-15 21:00:21', '2020-11-15 21:00:21'),
(570, 1, 'en', 'core/base/system', 'options.feature_description', 'Manage the available.', '2020-11-15 21:00:21', '2020-11-15 21:00:21'),
(571, 1, 'en', 'core/base/system', 'options.manage_super', 'Super User Management', '2020-11-15 21:00:21', '2020-11-15 21:00:21'),
(572, 1, 'en', 'core/base/system', 'options.manage_super_description', 'Add/remove super users.', '2020-11-15 21:00:21', '2020-11-15 21:00:21'),
(573, 1, 'en', 'core/base/system', 'options.info', 'System information', '2020-11-15 21:00:21', '2020-11-15 21:00:21'),
(574, 1, 'en', 'core/base/system', 'options.info_description', 'All information about current system configuration.', '2020-11-15 21:00:21', '2020-11-15 21:00:21'),
(575, 1, 'en', 'core/base/system', 'info.title', 'System information', '2020-11-15 21:00:21', '2020-11-15 21:00:21'),
(576, 1, 'en', 'core/base/system', 'info.cache', 'Cache', '2020-11-15 21:00:21', '2020-11-15 21:00:21'),
(577, 1, 'en', 'core/base/system', 'info.locale', 'Active locale', '2020-11-15 21:00:21', '2020-11-15 21:00:21'),
(578, 1, 'en', 'core/base/system', 'info.environment', 'Environment', '2020-11-15 21:00:21', '2020-11-15 21:00:21'),
(579, 1, 'en', 'core/base/system', 'disabled_in_demo_mode', 'You cannot do it in demo mode!', '2020-11-15 21:00:21', '2020-11-15 21:00:21'),
(580, 1, 'en', 'core/base/system', 'report_description', 'Please share this information for troubleshooting', '2020-11-15 21:00:21', '2020-11-15 21:00:21'),
(581, 1, 'en', 'core/base/system', 'get_system_report', 'Get System Report', '2020-11-15 21:00:21', '2020-11-15 21:00:21'),
(582, 1, 'en', 'core/base/system', 'system_environment', 'System Environment', '2020-11-15 21:00:21', '2020-11-15 21:00:21'),
(583, 1, 'en', 'core/base/system', 'framework_version', 'Framework Version', '2020-11-15 21:00:21', '2020-11-15 21:00:21'),
(584, 1, 'en', 'core/base/system', 'timezone', 'Timezone', '2020-11-15 21:00:21', '2020-11-15 21:00:21'),
(585, 1, 'en', 'core/base/system', 'debug_mode', 'Debug Mode', '2020-11-15 21:00:21', '2020-11-15 21:00:21'),
(586, 1, 'en', 'core/base/system', 'storage_dir_writable', 'Storage Dir Writable', '2020-11-15 21:00:21', '2020-11-15 21:00:21'),
(587, 1, 'en', 'core/base/system', 'cache_dir_writable', 'Cache Dir Writable', '2020-11-15 21:00:21', '2020-11-15 21:00:21'),
(588, 1, 'en', 'core/base/system', 'app_size', 'App Size', '2020-11-15 21:00:21', '2020-11-15 21:00:21'),
(589, 1, 'en', 'core/base/system', 'server_environment', 'Server Environment', '2020-11-15 21:00:21', '2020-11-15 21:00:21'),
(590, 1, 'en', 'core/base/system', 'php_version', 'PHP Version', '2020-11-15 21:00:21', '2020-11-15 21:00:21'),
(591, 1, 'en', 'core/base/system', 'server_software', 'Server Software', '2020-11-15 21:00:21', '2020-11-15 21:00:21'),
(592, 1, 'en', 'core/base/system', 'server_os', 'Server OS', '2020-11-15 21:00:21', '2020-11-15 21:00:21'),
(593, 1, 'en', 'core/base/system', 'database', 'Database', '2020-11-15 21:00:21', '2020-11-15 21:00:21'),
(594, 1, 'en', 'core/base/system', 'ssl_installed', 'SSL Installed', '2020-11-15 21:00:21', '2020-11-15 21:00:21'),
(595, 1, 'en', 'core/base/system', 'cache_driver', 'Cache Driver', '2020-11-15 21:00:21', '2020-11-15 21:00:21'),
(596, 1, 'en', 'core/base/system', 'session_driver', 'Session Driver', '2020-11-15 21:00:21', '2020-11-15 21:00:21'),
(597, 1, 'en', 'core/base/system', 'queue_connection', 'Queue Connection', '2020-11-15 21:00:21', '2020-11-15 21:00:21'),
(598, 1, 'en', 'core/base/system', 'mbstring_ext', 'Mbstring Ext', '2020-11-15 21:00:21', '2020-11-15 21:00:21'),
(599, 1, 'en', 'core/base/system', 'openssl_ext', 'OpenSSL Ext', '2020-11-15 21:00:21', '2020-11-15 21:00:21'),
(600, 1, 'en', 'core/base/system', 'pdo_ext', 'PDO Ext', '2020-11-15 21:00:21', '2020-11-15 21:00:21'),
(601, 1, 'en', 'core/base/system', 'curl_ext', 'CURL Ext', '2020-11-15 21:00:21', '2020-11-15 21:00:21'),
(602, 1, 'en', 'core/base/system', 'exif_ext', 'Exif Ext', '2020-11-15 21:00:21', '2020-11-15 21:00:21'),
(603, 1, 'en', 'core/base/system', 'file_info_ext', 'File info Ext', '2020-11-15 21:00:21', '2020-11-15 21:00:21'),
(604, 1, 'en', 'core/base/system', 'tokenizer_ext', 'Tokenizer Ext', '2020-11-15 21:00:21', '2020-11-15 21:00:21'),
(605, 1, 'en', 'core/base/system', 'extra_stats', 'Extra Stats', '2020-11-15 21:00:21', '2020-11-15 21:00:21'),
(606, 1, 'en', 'core/base/system', 'installed_packages', 'Installed Packages and their version numbers', '2020-11-15 21:00:21', '2020-11-15 21:00:21'),
(607, 1, 'en', 'core/base/system', 'extra_information', 'Extra Information', '2020-11-15 21:00:21', '2020-11-15 21:00:21'),
(608, 1, 'en', 'core/base/system', 'copy_report', 'Copy Report', '2020-11-15 21:00:21', '2020-11-15 21:00:21'),
(609, 1, 'en', 'core/base/system', 'package_name', 'Package Name', '2020-11-15 21:00:21', '2020-11-15 21:00:21'),
(610, 1, 'en', 'core/base/system', 'dependency_name', 'Dependency Name', '2020-11-15 21:00:21', '2020-11-15 21:00:21'),
(611, 1, 'en', 'core/base/system', 'version', 'Version', '2020-11-15 21:00:21', '2020-11-15 21:00:21'),
(612, 1, 'en', 'core/base/system', 'cms_version', 'CMS Version', '2020-11-15 21:00:21', '2020-11-15 21:00:21'),
(613, 1, 'en', 'core/base/tables', 'id', 'ID', '2020-11-15 21:00:21', '2020-11-15 21:00:21'),
(614, 1, 'en', 'core/base/tables', 'name', 'Name', '2020-11-15 21:00:21', '2020-11-15 21:00:21'),
(615, 1, 'en', 'core/base/tables', 'slug', 'Slug', '2020-11-15 21:00:21', '2020-11-15 21:00:21'),
(616, 1, 'en', 'core/base/tables', 'title', 'Title', '2020-11-15 21:00:21', '2020-11-15 21:00:21'),
(617, 1, 'en', 'core/base/tables', 'order_by', 'Order By', '2020-11-15 21:00:21', '2020-11-15 21:00:21'),
(618, 1, 'en', 'core/base/tables', 'order', 'Order', '2020-11-15 21:00:21', '2020-11-15 21:00:21'),
(619, 1, 'en', 'core/base/tables', 'status', 'Status', '2020-11-15 21:00:21', '2020-11-15 21:00:21'),
(620, 1, 'en', 'core/base/tables', 'created_at', 'Created At', '2020-11-15 21:00:21', '2020-11-15 21:00:21'),
(621, 1, 'en', 'core/base/tables', 'updated_at', 'Updated At', '2020-11-15 21:00:21', '2020-11-15 21:00:21'),
(622, 1, 'en', 'core/base/tables', 'description', 'Description', '2020-11-15 21:00:21', '2020-11-15 21:00:21'),
(623, 1, 'en', 'core/base/tables', 'operations', 'Operations', '2020-11-15 21:00:21', '2020-11-15 21:00:21'),
(624, 1, 'en', 'core/base/tables', 'url', 'URL', '2020-11-15 21:00:21', '2020-11-15 21:00:21'),
(625, 1, 'en', 'core/base/tables', 'author', 'Author', '2020-11-15 21:00:21', '2020-11-15 21:00:21'),
(626, 1, 'en', 'core/base/tables', 'notes', 'Notes', '2020-11-15 21:00:21', '2020-11-15 21:00:21'),
(627, 1, 'en', 'core/base/tables', 'column', 'Column', '2020-11-15 21:00:21', '2020-11-15 21:00:21'),
(628, 1, 'en', 'core/base/tables', 'origin', 'Origin', '2020-11-15 21:00:21', '2020-11-15 21:00:21'),
(629, 1, 'en', 'core/base/tables', 'after_change', 'After changes', '2020-11-15 21:00:21', '2020-11-15 21:00:21'),
(630, 1, 'en', 'core/base/tables', 'views', 'Views', '2020-11-15 21:00:21', '2020-11-15 21:00:21'),
(631, 1, 'en', 'core/base/tables', 'browser', 'Browser', '2020-11-15 21:00:21', '2020-11-15 21:00:21'),
(632, 1, 'en', 'core/base/tables', 'session', 'Session', '2020-11-15 21:00:21', '2020-11-15 21:00:21'),
(633, 1, 'en', 'core/base/tables', 'activated', 'activated', '2020-11-15 21:00:21', '2020-11-15 21:00:21'),
(634, 1, 'en', 'core/base/tables', 'deactivated', 'deactivated', '2020-11-15 21:00:21', '2020-11-15 21:00:21'),
(635, 1, 'en', 'core/base/tables', 'is_featured', 'Is featured', '2020-11-15 21:00:21', '2020-11-15 21:00:21'),
(636, 1, 'en', 'core/base/tables', 'edit', 'Edit', '2020-11-15 21:00:21', '2020-11-15 21:00:21'),
(637, 1, 'en', 'core/base/tables', 'delete', 'Delete', '2020-11-15 21:00:21', '2020-11-15 21:00:21'),
(638, 1, 'en', 'core/base/tables', 'restore', 'Restore', '2020-11-15 21:00:21', '2020-11-15 21:00:21'),
(639, 1, 'en', 'core/base/tables', 'activate', 'Activate', '2020-11-15 21:00:21', '2020-11-15 21:00:21'),
(640, 1, 'en', 'core/base/tables', 'deactivate', 'Deactivate', '2020-11-15 21:00:21', '2020-11-15 21:00:21'),
(641, 1, 'en', 'core/base/tables', 'excel', 'Excel', '2020-11-15 21:00:21', '2020-11-15 21:00:21'),
(642, 1, 'en', 'core/base/tables', 'export', 'Export', '2020-11-15 21:00:21', '2020-11-15 21:00:21'),
(643, 1, 'en', 'core/base/tables', 'csv', 'CSV', '2020-11-15 21:00:21', '2020-11-15 21:00:21'),
(644, 1, 'en', 'core/base/tables', 'pdf', 'PDF', '2020-11-15 21:00:21', '2020-11-15 21:00:21'),
(645, 1, 'en', 'core/base/tables', 'print', 'Print', '2020-11-15 21:00:21', '2020-11-15 21:00:21'),
(646, 1, 'en', 'core/base/tables', 'reset', 'Reset', '2020-11-15 21:00:21', '2020-11-15 21:00:21'),
(647, 1, 'en', 'core/base/tables', 'reload', 'Reload', '2020-11-15 21:00:21', '2020-11-15 21:00:21'),
(648, 1, 'en', 'core/base/tables', 'display', 'Display', '2020-11-15 21:00:21', '2020-11-15 21:00:21'),
(649, 1, 'en', 'core/base/tables', 'all', 'All', '2020-11-15 21:00:21', '2020-11-15 21:00:21'),
(650, 1, 'en', 'core/base/tables', 'add_new', 'Add New', '2020-11-15 21:00:21', '2020-11-15 21:00:21'),
(651, 1, 'en', 'core/base/tables', 'action', 'Actions', '2020-11-15 21:00:21', '2020-11-15 21:00:21'),
(652, 1, 'en', 'core/base/tables', 'delete_entry', 'Delete', '2020-11-15 21:00:21', '2020-11-15 21:00:21'),
(653, 1, 'en', 'core/base/tables', 'view', 'View Detail', '2020-11-15 21:00:21', '2020-11-15 21:00:21'),
(654, 1, 'en', 'core/base/tables', 'save', 'Save', '2020-11-15 21:00:21', '2020-11-15 21:00:21'),
(655, 1, 'en', 'core/base/tables', 'show_from', 'Show from', '2020-11-15 21:00:21', '2020-11-15 21:00:21'),
(656, 1, 'en', 'core/base/tables', 'to', 'to', '2020-11-15 21:00:21', '2020-11-15 21:00:21'),
(657, 1, 'en', 'core/base/tables', 'in', 'in', '2020-11-15 21:00:21', '2020-11-15 21:00:21'),
(658, 1, 'en', 'core/base/tables', 'records', 'records', '2020-11-15 21:00:21', '2020-11-15 21:00:21'),
(659, 1, 'en', 'core/base/tables', 'no_data', 'No data to display', '2020-11-15 21:00:21', '2020-11-15 21:00:21'),
(660, 1, 'en', 'core/base/tables', 'no_record', 'No record', '2020-11-15 21:00:21', '2020-11-15 21:00:21'),
(661, 1, 'en', 'core/base/tables', 'confirm_delete', 'Confirm delete', '2020-11-15 21:00:21', '2020-11-15 21:00:21'),
(662, 1, 'en', 'core/base/tables', 'confirm_delete_msg', 'Do you really want to delete this record?', '2020-11-15 21:00:21', '2020-11-15 21:00:21'),
(663, 1, 'en', 'core/base/tables', 'confirm_delete_many_msg', 'Do you really want to delete selected record(s)?', '2020-11-15 21:00:21', '2020-11-15 21:00:21'),
(664, 1, 'en', 'core/base/tables', 'cancel', 'Cancel', '2020-11-15 21:00:21', '2020-11-15 21:00:21'),
(665, 1, 'en', 'core/base/tables', 'template', 'Template', '2020-11-15 21:00:21', '2020-11-15 21:00:21'),
(666, 1, 'en', 'core/base/tables', 'email', 'Email', '2020-11-15 21:00:21', '2020-11-15 21:00:21'),
(667, 1, 'en', 'core/base/tables', 'last_login', 'Last login', '2020-11-15 21:00:21', '2020-11-15 21:00:21'),
(668, 1, 'en', 'core/base/tables', 'shortcode', 'Shortcode', '2020-11-15 21:00:21', '2020-11-15 21:00:21'),
(669, 1, 'en', 'core/base/tables', 'image', 'Image', '2020-11-15 21:00:21', '2020-11-15 21:00:21'),
(670, 1, 'en', 'core/base/tables', 'bulk_changes', 'Bulk changes', '2020-11-15 21:00:21', '2020-11-15 21:00:21'),
(671, 1, 'en', 'core/base/tables', 'submit', 'Submit', '2020-11-15 21:00:21', '2020-11-15 21:00:21'),
(672, 1, 'en', 'core/base/tabs', 'detail', 'Detail', '2020-11-15 21:00:21', '2020-11-15 21:00:21'),
(673, 1, 'en', 'core/base/tabs', 'file', 'Files', '2020-11-15 21:00:21', '2020-11-15 21:00:21'),
(674, 1, 'en', 'core/base/tabs', 'record_note', 'Record Note', '2020-11-15 21:00:21', '2020-11-15 21:00:21'),
(675, 1, 'en', 'core/base/tabs', 'revision', 'Revision History', '2020-11-15 21:00:21', '2020-11-15 21:00:21'),
(676, 1, 'vi', 'core/base/cache', 'cache_management', 'Quản lý bộ nhớ đệm', '2020-11-15 21:00:21', '2020-11-15 21:00:21'),
(677, 1, 'vi', 'core/base/cache', 'cache_commands', 'Các lệnh xoá bộ nhớ đệm cơ bản', '2020-11-15 21:00:21', '2020-11-15 21:00:21'),
(678, 1, 'vi', 'core/base/cache', 'commands.clear_cms_cache.title', 'Xóa tất cả bộ đệm hiện có của ứng dụng', '2020-11-15 21:00:21', '2020-11-15 21:00:21'),
(679, 1, 'vi', 'core/base/cache', 'commands.clear_cms_cache.description', 'Xóa các bộ nhớ đệm của ứng dụng: cơ sở dữ liệu, nội dung tĩnh... Chạy lệnh này khi bạn thử cập nhật dữ liệu nhưng giao diện không thay đổi', '2020-11-15 21:00:21', '2020-11-15 21:00:21'),
(680, 1, 'vi', 'core/base/cache', 'commands.clear_cms_cache.success_msg', 'Bộ đệm đã được xóa', '2020-11-15 21:00:21', '2020-11-15 21:00:21'),
(681, 1, 'vi', 'core/base/cache', 'commands.refresh_compiled_views.title', 'Làm mới bộ đệm giao diện', '2020-11-15 21:00:21', '2020-11-15 21:00:21'),
(682, 1, 'vi', 'core/base/cache', 'commands.refresh_compiled_views.description', 'Làm mới bộ đệm giao diện giúp phần giao diện luôn mới nhất', '2020-11-15 21:00:21', '2020-11-15 21:00:21'),
(683, 1, 'vi', 'core/base/cache', 'commands.refresh_compiled_views.success_msg', 'Bộ đệm giao diện đã được làm mới', '2020-11-15 21:00:21', '2020-11-15 21:00:21'),
(684, 1, 'vi', 'core/base/cache', 'commands.clear_config_cache.title', 'Xóa bộ nhớ đệm của phần cấu hình', '2020-11-15 21:00:21', '2020-11-15 21:00:21'),
(685, 1, 'vi', 'core/base/cache', 'commands.clear_config_cache.description', 'Bạn cần làm mới bộ đệm cấu hình khi bạn tạo ra sự thay đổi nào đó ở môi trường thành phẩm.', '2020-11-15 21:00:21', '2020-11-15 21:00:21'),
(686, 1, 'vi', 'core/base/cache', 'commands.clear_config_cache.success_msg', 'Bộ đệm cấu hình đã được xóa', '2020-11-15 21:00:21', '2020-11-15 21:00:21'),
(687, 1, 'vi', 'core/base/cache', 'commands.clear_route_cache.title', 'Xoá cache đường dẫn', '2020-11-15 21:00:21', '2020-11-15 21:00:21'),
(688, 1, 'vi', 'core/base/cache', 'commands.clear_route_cache.description', 'Cần thực hiện thao tác này khi thấy không xuất hiện đường dẫn mới.', '2020-11-15 21:00:21', '2020-11-15 21:00:21'),
(689, 1, 'vi', 'core/base/cache', 'commands.clear_route_cache.success_msg', 'Bộ đệm điều hướng đã bị xóa', '2020-11-15 21:00:21', '2020-11-15 21:00:21'),
(690, 1, 'vi', 'core/base/cache', 'commands.clear_log.description', 'Xoá lịch sử lỗi', '2020-11-15 21:00:21', '2020-11-15 21:00:21'),
(691, 1, 'vi', 'core/base/cache', 'commands.clear_log.success_msg', 'Lịch sử lỗi đã được làm sạch', '2020-11-15 21:00:21', '2020-11-15 21:00:21'),
(692, 1, 'vi', 'core/base/cache', 'commands.clear_log.title', 'Xoá lịch sử lỗi', '2020-11-15 21:00:21', '2020-11-15 21:00:21'),
(693, 1, 'vi', 'core/base/enums', 'statuses.draft', 'Bản nháp', '2020-11-15 21:00:21', '2020-11-15 21:00:21'),
(694, 1, 'vi', 'core/base/enums', 'statuses.pending', 'Đang chờ xử lý', '2020-11-15 21:00:22', '2020-11-15 21:00:22'),
(695, 1, 'vi', 'core/base/enums', 'statuses.publish', 'Đã xuất bản', '2020-11-15 21:00:22', '2020-11-15 21:00:22'),
(696, 1, 'vi', 'core/base/errors', '401_title', 'Bạn không có quyền truy cập trang này', '2020-11-15 21:00:22', '2020-11-15 21:00:22'),
(697, 1, 'vi', 'core/base/errors', '401_msg', '<li>Bạn không được cấp quyền truy cập bởi quản trị viên.</li>\n	                <li>Bạn sử dụng sai loại tài khoản.</li>\n	                <li>Bạn không được cấp quyền để có thể truy cập trang này</li>', '2020-11-15 21:00:22', '2020-11-15 21:00:22'),
(698, 1, 'vi', 'core/base/errors', '404_title', 'Không tìm thấy trang yêu cầu', '2020-11-15 21:00:22', '2020-11-15 21:00:22'),
(699, 1, 'vi', 'core/base/errors', '404_msg', '<li>Trang bạn yêu cầu không tồn tại.</li>\n	                <li>Liên kết bạn vừa nhấn không còn được sử dụng.</li>\n	                <li>Trang này có thể đã được chuyển sang vị trí khác.</li>\n	                <li>Có thể có lỗi xảy ra.</li>\n	                <li>Bạn không được cấp quyền để có thể truy cập trang này</li>', '2020-11-15 21:00:22', '2020-11-15 21:00:22'),
(700, 1, 'vi', 'core/base/errors', '500_title', 'Không thể tải trang', '2020-11-15 21:00:22', '2020-11-15 21:00:22'),
(701, 1, 'vi', 'core/base/errors', '500_msg', '<li>Trang bạn yêu cầu không tồn tại.</li>\n	                <li>Liên kết bạn vừa nhấn không còn được sử dụng.</li>\n	                <li>Trang này có thể đã được chuyển sang vị trí khác.</li>\n	                <li>Có thể có lỗi xảy ra.</li>\n	                <li>Bạn không được cấp quyền để có thể truy cập trang này</li>', '2020-11-15 21:00:22', '2020-11-15 21:00:22'),
(702, 1, 'vi', 'core/base/errors', 'reasons', 'Điều này có thể xảy ra vì nhiều lý do.', '2020-11-15 21:00:22', '2020-11-15 21:00:22'),
(703, 1, 'vi', 'core/base/errors', 'try_again', 'Vui lòng thử lại trong vài phút, hoặc quay trở lại trang chủ bằng cách <a href=\"http://cms.local/admin\"> nhấn vào đây </a>.', '2020-11-15 21:00:22', '2020-11-15 21:00:22'),
(704, 1, 'vi', 'core/base/forms', 'choose_image', 'Chọn ảnh', '2020-11-15 21:00:22', '2020-11-15 21:00:22'),
(705, 1, 'vi', 'core/base/forms', 'actions', 'Tác vụ', '2020-11-15 21:00:22', '2020-11-15 21:00:22'),
(706, 1, 'vi', 'core/base/forms', 'save', 'Lưu', '2020-11-15 21:00:22', '2020-11-15 21:00:22'),
(707, 1, 'vi', 'core/base/forms', 'save_and_continue', 'Lưu & chỉnh sửa', '2020-11-15 21:00:22', '2020-11-15 21:00:22'),
(708, 1, 'vi', 'core/base/forms', 'image', 'Hình ảnh', '2020-11-15 21:00:22', '2020-11-15 21:00:22'),
(709, 1, 'vi', 'core/base/forms', 'image_placeholder', 'Chèn đường dẫn hình ảnh hoặc nhấn nút để chọn hình', '2020-11-15 21:00:22', '2020-11-15 21:00:22'),
(710, 1, 'vi', 'core/base/forms', 'create', 'Tạo mới', '2020-11-15 21:00:22', '2020-11-15 21:00:22'),
(711, 1, 'vi', 'core/base/forms', 'edit', 'Sửa', '2020-11-15 21:00:22', '2020-11-15 21:00:22'),
(712, 1, 'vi', 'core/base/forms', 'permalink', 'Đường dẫn', '2020-11-15 21:00:22', '2020-11-15 21:00:22'),
(713, 1, 'vi', 'core/base/forms', 'ok', 'OK', '2020-11-15 21:00:22', '2020-11-15 21:00:22'),
(714, 1, 'vi', 'core/base/forms', 'cancel', 'Hủy bỏ', '2020-11-15 21:00:22', '2020-11-15 21:00:22'),
(715, 1, 'vi', 'core/base/forms', 'character_remain', 'kí tự còn lại', '2020-11-15 21:00:22', '2020-11-15 21:00:22'),
(716, 1, 'vi', 'core/base/forms', 'template', 'Template', '2020-11-15 21:00:22', '2020-11-15 21:00:22'),
(717, 1, 'vi', 'core/base/forms', 'choose_file', 'Chọn tập tin', '2020-11-15 21:00:22', '2020-11-15 21:00:22'),
(718, 1, 'vi', 'core/base/forms', 'file', 'Tập tin', '2020-11-15 21:00:22', '2020-11-15 21:00:22'),
(719, 1, 'vi', 'core/base/forms', 'content', 'Nội dung', '2020-11-15 21:00:22', '2020-11-15 21:00:22'),
(720, 1, 'vi', 'core/base/forms', 'description', 'Mô tả', '2020-11-15 21:00:22', '2020-11-15 21:00:22'),
(721, 1, 'vi', 'core/base/forms', 'name', 'Tên', '2020-11-15 21:00:22', '2020-11-15 21:00:22'),
(722, 1, 'vi', 'core/base/forms', 'name_placeholder', 'Nhập tên', '2020-11-15 21:00:22', '2020-11-15 21:00:22'),
(723, 1, 'vi', 'core/base/forms', 'description_placeholder', 'Mô tả ngắn', '2020-11-15 21:00:22', '2020-11-15 21:00:22'),
(724, 1, 'vi', 'core/base/forms', 'parent', 'Cha', '2020-11-15 21:00:22', '2020-11-15 21:00:22'),
(725, 1, 'vi', 'core/base/forms', 'icon', 'Biểu tượng', '2020-11-15 21:00:22', '2020-11-15 21:00:22'),
(726, 1, 'vi', 'core/base/forms', 'order_by', 'Sắp xếp', '2020-11-15 21:00:22', '2020-11-15 21:00:22'),
(727, 1, 'vi', 'core/base/forms', 'order_by_placeholder', 'Sắp xếp', '2020-11-15 21:00:22', '2020-11-15 21:00:22'),
(728, 1, 'vi', 'core/base/forms', 'slug', 'Slug', '2020-11-15 21:00:22', '2020-11-15 21:00:22'),
(729, 1, 'vi', 'core/base/forms', 'is_featured', 'Nổi bật?', '2020-11-15 21:00:22', '2020-11-15 21:00:22'),
(730, 1, 'vi', 'core/base/forms', 'is_default', 'Mặc định?', '2020-11-15 21:00:22', '2020-11-15 21:00:22'),
(731, 1, 'vi', 'core/base/forms', 'icon_placeholder', 'Ví dụ: fa fa-home', '2020-11-15 21:00:22', '2020-11-15 21:00:22'),
(732, 1, 'vi', 'core/base/forms', 'update', 'Cập nhật', '2020-11-15 21:00:22', '2020-11-15 21:00:22'),
(733, 1, 'vi', 'core/base/forms', 'publish', 'Xuất bản', '2020-11-15 21:00:22', '2020-11-15 21:00:22'),
(734, 1, 'vi', 'core/base/forms', 'remove_image', 'Xoá ảnh', '2020-11-15 21:00:22', '2020-11-15 21:00:22'),
(735, 1, 'vi', 'core/base/forms', 'add', 'Thêm', '2020-11-15 21:00:22', '2020-11-15 21:00:22'),
(736, 1, 'vi', 'core/base/forms', 'add_short_code', 'Thêm shortcode', '2020-11-15 21:00:22', '2020-11-15 21:00:22'),
(737, 1, 'vi', 'core/base/forms', 'alias', 'Mã thay thế', '2020-11-15 21:00:22', '2020-11-15 21:00:22'),
(738, 1, 'vi', 'core/base/forms', 'alias_placeholder', 'Mã thay thế', '2020-11-15 21:00:22', '2020-11-15 21:00:22'),
(739, 1, 'vi', 'core/base/forms', 'basic_information', 'Thông tin cơ bản', '2020-11-15 21:00:22', '2020-11-15 21:00:22'),
(740, 1, 'vi', 'core/base/forms', 'link', 'Liên kết', '2020-11-15 21:00:22', '2020-11-15 21:00:22'),
(741, 1, 'vi', 'core/base/forms', 'order', 'Thứ tự', '2020-11-15 21:00:22', '2020-11-15 21:00:22'),
(742, 1, 'vi', 'core/base/forms', 'short_code', 'Shortcode', '2020-11-15 21:00:22', '2020-11-15 21:00:22'),
(743, 1, 'vi', 'core/base/forms', 'title', 'Tiêu đề', '2020-11-15 21:00:22', '2020-11-15 21:00:22'),
(744, 1, 'vi', 'core/base/forms', 'value', 'Giá trị', '2020-11-15 21:00:22', '2020-11-15 21:00:22'),
(745, 1, 'vi', 'core/base/forms', 'show_hide_editor', 'Ẩn/Hiện trình soạn thảo', '2020-11-15 21:00:22', '2020-11-15 21:00:22'),
(746, 1, 'vi', 'core/base/forms', 'basic_info_title', 'Thông tin cơ bản', '2020-11-15 21:00:22', '2020-11-15 21:00:22'),
(747, 1, 'vi', 'core/base/layouts', 'platform_admin', 'Quản trị hệ thống', '2020-11-15 21:00:22', '2020-11-15 21:00:22'),
(748, 1, 'vi', 'core/base/layouts', 'dashboard', 'Bảng điều khiển', '2020-11-15 21:00:22', '2020-11-15 21:00:22'),
(749, 1, 'vi', 'core/base/layouts', 'appearance', 'Hiển thị', '2020-11-15 21:00:22', '2020-11-15 21:00:22'),
(750, 1, 'vi', 'core/base/layouts', 'menu', 'Trình đơn', '2020-11-15 21:00:22', '2020-11-15 21:00:22'),
(751, 1, 'vi', 'core/base/layouts', 'widgets', 'Tiện ích', '2020-11-15 21:00:22', '2020-11-15 21:00:22'),
(752, 1, 'vi', 'core/base/layouts', 'theme_options', 'Tuỳ chọn giao diện', '2020-11-15 21:00:22', '2020-11-15 21:00:22'),
(753, 1, 'vi', 'core/base/layouts', 'plugins', 'Tiện ích mở rộng', '2020-11-15 21:00:22', '2020-11-15 21:00:22'),
(754, 1, 'vi', 'core/base/layouts', 'settings', 'Cài đặt', '2020-11-15 21:00:22', '2020-11-15 21:00:22'),
(755, 1, 'vi', 'core/base/layouts', 'setting_general', 'Cơ bản', '2020-11-15 21:00:22', '2020-11-15 21:00:22'),
(756, 1, 'vi', 'core/base/layouts', 'system_information', 'Thông tin hệ thống', '2020-11-15 21:00:22', '2020-11-15 21:00:22'),
(757, 1, 'vi', 'core/base/layouts', 'theme', 'Giao diện', '2020-11-15 21:00:22', '2020-11-15 21:00:22'),
(758, 1, 'vi', 'core/base/layouts', 'copyright', 'Bản quyền :year &copy; :company. Phiên bản: <span>:version</span>', '2020-11-15 21:00:22', '2020-11-15 21:00:22'),
(759, 1, 'vi', 'core/base/layouts', 'profile', 'Thông tin cá nhân', '2020-11-15 21:00:22', '2020-11-15 21:00:22'),
(760, 1, 'vi', 'core/base/layouts', 'logout', 'Đăng xuất', '2020-11-15 21:00:22', '2020-11-15 21:00:22'),
(761, 1, 'vi', 'core/base/layouts', 'no_search_result', 'Không có kết quả tìm kiếm, hãy thử lại với từ khóa khác.', '2020-11-15 21:00:22', '2020-11-15 21:00:22'),
(762, 1, 'vi', 'core/base/layouts', 'home', 'Trang chủ', '2020-11-15 21:00:22', '2020-11-15 21:00:22'),
(763, 1, 'vi', 'core/base/layouts', 'search', 'Tìm kiếm', '2020-11-15 21:00:22', '2020-11-15 21:00:22'),
(764, 1, 'vi', 'core/base/layouts', 'add_new', 'Thêm mới', '2020-11-15 21:00:22', '2020-11-15 21:00:22'),
(765, 1, 'vi', 'core/base/layouts', 'n_a', 'N/A', '2020-11-15 21:00:22', '2020-11-15 21:00:22'),
(766, 1, 'vi', 'core/base/layouts', 'page_loaded_time', 'Trang tải xong trong', '2020-11-15 21:00:22', '2020-11-15 21:00:22'),
(767, 1, 'vi', 'core/base/layouts', 'view_website', 'Xem trang ngoài', '2020-11-15 21:00:22', '2020-11-15 21:00:22'),
(768, 1, 'vi', 'core/base/layouts', 'setting_email', 'Email', '2020-11-15 21:00:22', '2020-11-15 21:00:22'),
(769, 1, 'vi', 'core/base/mail', 'send-fail', 'Gửi email không thành công', '2020-11-15 21:00:22', '2020-11-15 21:00:22'),
(770, 1, 'vi', 'core/base/mail', 'happy_birthday', 'Chúc mừng sinh nhật!', '2020-11-15 21:00:22', '2020-11-15 21:00:22'),
(771, 1, 'vi', 'core/base/notices', 'create_success_message', 'Tạo thành công', '2020-11-15 21:00:22', '2020-11-15 21:00:22'),
(772, 1, 'vi', 'core/base/notices', 'update_success_message', 'Cập nhật thành công', '2020-11-15 21:00:22', '2020-11-15 21:00:22'),
(773, 1, 'vi', 'core/base/notices', 'delete_success_message', 'Xóa thành công', '2020-11-15 21:00:22', '2020-11-15 21:00:22'),
(774, 1, 'vi', 'core/base/notices', 'success_header', 'Thành công!', '2020-11-15 21:00:22', '2020-11-15 21:00:22'),
(775, 1, 'vi', 'core/base/notices', 'error_header', 'Lỗi!', '2020-11-15 21:00:22', '2020-11-15 21:00:22'),
(776, 1, 'vi', 'core/base/notices', 'no_select', 'Chọn ít nhất 1 trường để thực hiện hành động này!', '2020-11-15 21:00:22', '2020-11-15 21:00:22'),
(777, 1, 'vi', 'core/base/notices', 'cannot_delete', 'Không thể xóa bản ghi này', '2020-11-15 21:00:22', '2020-11-15 21:00:22'),
(778, 1, 'vi', 'core/base/notices', 'processing_request', 'Hệ thống đang xử lý yêu cầu.', '2020-11-15 21:00:22', '2020-11-15 21:00:22'),
(779, 1, 'vi', 'core/base/notices', 'error', 'Lỗi!', '2020-11-15 21:00:22', '2020-11-15 21:00:22'),
(780, 1, 'vi', 'core/base/notices', 'success', 'Thành công!', '2020-11-15 21:00:22', '2020-11-15 21:00:22'),
(781, 1, 'vi', 'core/base/notices', 'info', 'Thông tin!', '2020-11-15 21:00:22', '2020-11-15 21:00:22'),
(782, 1, 'vi', 'core/base/system', 'no_select', 'Hãy chọn ít nhất 1 trường để thực hiện hành động này!', '2020-11-15 21:00:22', '2020-11-15 21:00:22'),
(783, 1, 'vi', 'core/base/system', 'cannot_find_user', 'Không thể tải được thông tin người dùng', '2020-11-15 21:00:22', '2020-11-15 21:00:22'),
(784, 1, 'vi', 'core/base/system', 'supper_revoked', 'Quyền quản trị viên cao nhất đã được gỡ bỏ', '2020-11-15 21:00:22', '2020-11-15 21:00:22'),
(785, 1, 'vi', 'core/base/system', 'cannot_revoke_yourself', 'Không thể gỡ bỏ quyền quản trị cấp cao của chính bạn!', '2020-11-15 21:00:22', '2020-11-15 21:00:22'),
(786, 1, 'vi', 'core/base/system', 'cant_remove_supper', 'Bạn không có quyền xóa quản trị viên cấp cao', '2020-11-15 21:00:22', '2020-11-15 21:00:22'),
(787, 1, 'vi', 'core/base/system', 'cant_find_user_with_email', 'Không thể tìm thấy người dùng với email này', '2020-11-15 21:00:22', '2020-11-15 21:00:22');
INSERT INTO `translations` (`id`, `status`, `locale`, `group`, `key`, `value`, `created_at`, `updated_at`) VALUES
(788, 1, 'vi', 'core/base/system', 'supper_granted', 'Quyền quản trị cao nhất đã được gán', '2020-11-15 21:00:22', '2020-11-15 21:00:22'),
(789, 1, 'vi', 'core/base/system', 'delete_log_success', 'Xóa tập tin log thành công!', '2020-11-15 21:00:22', '2020-11-15 21:00:22'),
(790, 1, 'vi', 'core/base/system', 'get_member_success', 'Hiển thị danh sách thành viên thành công', '2020-11-15 21:00:22', '2020-11-15 21:00:22'),
(791, 1, 'vi', 'core/base/system', 'error_occur', 'Có lỗi dưới đây', '2020-11-15 21:00:22', '2020-11-15 21:00:22'),
(792, 1, 'vi', 'core/base/system', 'role_and_permission', 'Phân quyền hệ thống', '2020-11-15 21:00:22', '2020-11-15 21:00:22'),
(793, 1, 'vi', 'core/base/system', 'role_and_permission_description', 'Quản lý những phân quyền trong hệ thống', '2020-11-15 21:00:22', '2020-11-15 21:00:22'),
(794, 1, 'vi', 'core/base/system', 'user.list_super', 'Danh sách quản trị viên cấp cao', '2020-11-15 21:00:22', '2020-11-15 21:00:22'),
(795, 1, 'vi', 'core/base/system', 'user.username', 'Tên đăng nhập', '2020-11-15 21:00:22', '2020-11-15 21:00:22'),
(796, 1, 'vi', 'core/base/system', 'user.email', 'Email', '2020-11-15 21:00:22', '2020-11-15 21:00:22'),
(797, 1, 'vi', 'core/base/system', 'user.last_login', 'Đăng nhập lần cuối	', '2020-11-15 21:00:22', '2020-11-15 21:00:22'),
(798, 1, 'vi', 'core/base/system', 'user.add_user', 'Thêm quản trị viên cấp cao', '2020-11-15 21:00:22', '2020-11-15 21:00:22'),
(799, 1, 'vi', 'core/base/system', 'user.cancel', 'Hủy bỏ', '2020-11-15 21:00:22', '2020-11-15 21:00:22'),
(800, 1, 'vi', 'core/base/system', 'user.create', 'Thêm', '2020-11-15 21:00:22', '2020-11-15 21:00:22'),
(801, 1, 'vi', 'core/base/system', 'options.features', 'Kiểm soát truy cập các tính năng', '2020-11-15 21:00:22', '2020-11-15 21:00:22'),
(802, 1, 'vi', 'core/base/system', 'options.feature_description', 'Bật/tắt các tính năng.', '2020-11-15 21:00:22', '2020-11-15 21:00:22'),
(803, 1, 'vi', 'core/base/system', 'options.manage_super', 'Quản lý quản trị viên cấp cao', '2020-11-15 21:00:22', '2020-11-15 21:00:22'),
(804, 1, 'vi', 'core/base/system', 'options.manage_super_description', 'Thêm/xóa quản trị viên cấp cao', '2020-11-15 21:00:22', '2020-11-15 21:00:22'),
(805, 1, 'vi', 'core/base/system', 'options.info', 'Thông tin hệ thống', '2020-11-15 21:00:22', '2020-11-15 21:00:22'),
(806, 1, 'vi', 'core/base/system', 'options.info_description', 'Những thông tin về cấu hình hiện tại của hệ thống.', '2020-11-15 21:00:22', '2020-11-15 21:00:22'),
(807, 1, 'vi', 'core/base/system', 'info.title', 'Thông tin hệ thống', '2020-11-15 21:00:22', '2020-11-15 21:00:22'),
(808, 1, 'vi', 'core/base/system', 'info.cache', 'Bộ nhớ đệm', '2020-11-15 21:00:22', '2020-11-15 21:00:22'),
(809, 1, 'vi', 'core/base/system', 'info.environment', 'Môi trường', '2020-11-15 21:00:22', '2020-11-15 21:00:22'),
(810, 1, 'vi', 'core/base/system', 'info.locale', 'Ngôn ngữ hệ thống', '2020-11-15 21:00:22', '2020-11-15 21:00:22'),
(811, 1, 'vi', 'core/base/system', 'user_management', 'Quản lý thành viên', '2020-11-15 21:00:22', '2020-11-15 21:00:22'),
(812, 1, 'vi', 'core/base/system', 'user_management_description', 'Quản lý người dùng trong hệ thống', '2020-11-15 21:00:22', '2020-11-15 21:00:22'),
(813, 1, 'vi', 'core/base/system', 'app_size', 'Kích thước ứng dụng', '2020-11-15 21:00:22', '2020-11-15 21:00:22'),
(814, 1, 'vi', 'core/base/system', 'cache_dir_writable', 'Có thể ghi bộ nhớ đệm', '2020-11-15 21:00:22', '2020-11-15 21:00:22'),
(815, 1, 'vi', 'core/base/system', 'cache_driver', 'Loại lưu trữ bộ nhớ đệm', '2020-11-15 21:00:22', '2020-11-15 21:00:22'),
(816, 1, 'vi', 'core/base/system', 'copy_report', 'Sao chép báo cáo', '2020-11-15 21:00:22', '2020-11-15 21:00:22'),
(817, 1, 'vi', 'core/base/system', 'curl_ext', 'CURL Ext', '2020-11-15 21:00:22', '2020-11-15 21:00:22'),
(818, 1, 'vi', 'core/base/system', 'database', 'Hệ thống dữ liệu', '2020-11-15 21:00:22', '2020-11-15 21:00:22'),
(819, 1, 'vi', 'core/base/system', 'debug_mode', 'Chế độ sửa lỗi', '2020-11-15 21:00:22', '2020-11-15 21:00:22'),
(820, 1, 'vi', 'core/base/system', 'dependency_name', 'Tên gói', '2020-11-15 21:00:22', '2020-11-15 21:00:22'),
(821, 1, 'vi', 'core/base/system', 'exif_ext', 'Exif Ext', '2020-11-15 21:00:22', '2020-11-15 21:00:22'),
(822, 1, 'vi', 'core/base/system', 'extra_information', 'Thông tin mở rộng', '2020-11-15 21:00:22', '2020-11-15 21:00:22'),
(823, 1, 'vi', 'core/base/system', 'extra_stats', 'Thống kê thêm', '2020-11-15 21:00:22', '2020-11-15 21:00:22'),
(824, 1, 'vi', 'core/base/system', 'file_info_ext', 'File info Ext', '2020-11-15 21:00:22', '2020-11-15 21:00:22'),
(825, 1, 'vi', 'core/base/system', 'framework_version', 'Phiên bản framework', '2020-11-15 21:00:22', '2020-11-15 21:00:22'),
(826, 1, 'vi', 'core/base/system', 'get_system_report', 'Lấy thông tin hệ thống', '2020-11-15 21:00:22', '2020-11-15 21:00:22'),
(827, 1, 'vi', 'core/base/system', 'installed_packages', 'Các gói đã cài đặt và phiên bản', '2020-11-15 21:00:22', '2020-11-15 21:00:22'),
(828, 1, 'vi', 'core/base/system', 'mbstring_ext', 'Mbstring Ext', '2020-11-15 21:00:22', '2020-11-15 21:00:22'),
(829, 1, 'vi', 'core/base/system', 'openssl_ext', 'OpenSSL Ext', '2020-11-15 21:00:22', '2020-11-15 21:00:22'),
(830, 1, 'vi', 'core/base/system', 'package_name', 'Tên gói', '2020-11-15 21:00:22', '2020-11-15 21:00:22'),
(831, 1, 'vi', 'core/base/system', 'pdo_ext', 'PDO Ext', '2020-11-15 21:00:22', '2020-11-15 21:00:22'),
(832, 1, 'vi', 'core/base/system', 'php_version', 'Phiên bản PHP', '2020-11-15 21:00:22', '2020-11-15 21:00:22'),
(833, 1, 'vi', 'core/base/system', 'report_description', 'Vui lòng chia sẻ thông tin này nhằm mục đích điều tra nguyên nhân gây lỗi', '2020-11-15 21:00:22', '2020-11-15 21:00:22'),
(834, 1, 'vi', 'core/base/system', 'server_environment', 'Môi trường máy chủ', '2020-11-15 21:00:22', '2020-11-15 21:00:22'),
(835, 1, 'vi', 'core/base/system', 'server_os', 'Hệ điều hành của máy chủ', '2020-11-15 21:00:22', '2020-11-15 21:00:22'),
(836, 1, 'vi', 'core/base/system', 'server_software', 'Phần mềm', '2020-11-15 21:00:22', '2020-11-15 21:00:22'),
(837, 1, 'vi', 'core/base/system', 'session_driver', 'Loại lưu trữ phiên làm việc', '2020-11-15 21:00:22', '2020-11-15 21:00:22'),
(838, 1, 'vi', 'core/base/system', 'ssl_installed', 'Đã cài đặt chứng chỉ SSL', '2020-11-15 21:00:22', '2020-11-15 21:00:22'),
(839, 1, 'vi', 'core/base/system', 'storage_dir_writable', 'Có thể lưu trữ dữ liệu tạm', '2020-11-15 21:00:22', '2020-11-15 21:00:22'),
(840, 1, 'vi', 'core/base/system', 'system_environment', 'Môi trường hệ thống', '2020-11-15 21:00:22', '2020-11-15 21:00:22'),
(841, 1, 'vi', 'core/base/system', 'timezone', 'Múi giờ', '2020-11-15 21:00:22', '2020-11-15 21:00:22'),
(842, 1, 'vi', 'core/base/system', 'tokenizer_ext', 'Tokenizer Ext', '2020-11-15 21:00:22', '2020-11-15 21:00:22'),
(843, 1, 'vi', 'core/base/system', 'version', 'Phiên bản', '2020-11-15 21:00:22', '2020-11-15 21:00:22'),
(844, 1, 'vi', 'core/base/system', 'cms_version', 'Phiên bản CMS', '2020-11-15 21:00:22', '2020-11-15 21:00:22'),
(845, 1, 'vi', 'core/base/tables', 'filter_enabled', 'Tìm kiếm nâng cao đã được kích hoạt', '2020-11-15 21:00:22', '2020-11-15 21:00:22'),
(846, 1, 'vi', 'core/base/tables', 'id', 'ID', '2020-11-15 21:00:22', '2020-11-15 21:00:22'),
(847, 1, 'vi', 'core/base/tables', 'name', 'Tên', '2020-11-15 21:00:22', '2020-11-15 21:00:22'),
(848, 1, 'vi', 'core/base/tables', 'order_by', 'Thứ tự', '2020-11-15 21:00:22', '2020-11-15 21:00:22'),
(849, 1, 'vi', 'core/base/tables', 'status', 'Trạng thái', '2020-11-15 21:00:22', '2020-11-15 21:00:22'),
(850, 1, 'vi', 'core/base/tables', 'created_at', 'Ngày tạo', '2020-11-15 21:00:22', '2020-11-15 21:00:22'),
(851, 1, 'vi', 'core/base/tables', 'updated_at', 'Ngày cập nhật', '2020-11-15 21:00:22', '2020-11-15 21:00:22'),
(852, 1, 'vi', 'core/base/tables', 'operations', 'Tác vụ', '2020-11-15 21:00:22', '2020-11-15 21:00:22'),
(853, 1, 'vi', 'core/base/tables', 'loading_data', 'Đang tải dữ liệu từ server', '2020-11-15 21:00:22', '2020-11-15 21:00:22'),
(854, 1, 'vi', 'core/base/tables', 'url', 'URL', '2020-11-15 21:00:22', '2020-11-15 21:00:22'),
(855, 1, 'vi', 'core/base/tables', 'author', 'Người tạo', '2020-11-15 21:00:22', '2020-11-15 21:00:22'),
(856, 1, 'vi', 'core/base/tables', 'column', 'Cột', '2020-11-15 21:00:22', '2020-11-15 21:00:22'),
(857, 1, 'vi', 'core/base/tables', 'origin', 'Bản cũ', '2020-11-15 21:00:22', '2020-11-15 21:00:22'),
(858, 1, 'vi', 'core/base/tables', 'after_change', 'Sau khi thay đổi', '2020-11-15 21:00:22', '2020-11-15 21:00:22'),
(859, 1, 'vi', 'core/base/tables', 'notes', 'Ghi chú', '2020-11-15 21:00:22', '2020-11-15 21:00:22'),
(860, 1, 'vi', 'core/base/tables', 'activated', 'kích hoạt', '2020-11-15 21:00:22', '2020-11-15 21:00:22'),
(861, 1, 'vi', 'core/base/tables', 'browser', 'Trình duyệt', '2020-11-15 21:00:22', '2020-11-15 21:00:22'),
(862, 1, 'vi', 'core/base/tables', 'deactivated', 'hủy kích hoạt', '2020-11-15 21:00:22', '2020-11-15 21:00:22'),
(863, 1, 'vi', 'core/base/tables', 'description', 'Mô tả', '2020-11-15 21:00:22', '2020-11-15 21:00:22'),
(864, 1, 'vi', 'core/base/tables', 'session', 'Phiên', '2020-11-15 21:00:22', '2020-11-15 21:00:22'),
(865, 1, 'vi', 'core/base/tables', 'views', 'Lượt xem', '2020-11-15 21:00:22', '2020-11-15 21:00:22'),
(866, 1, 'vi', 'core/base/tables', 'restore', 'Khôi phục', '2020-11-15 21:00:22', '2020-11-15 21:00:22'),
(867, 1, 'vi', 'core/base/tables', 'edit', 'Sửa', '2020-11-15 21:00:22', '2020-11-15 21:00:22'),
(868, 1, 'vi', 'core/base/tables', 'delete', 'Xóa', '2020-11-15 21:00:22', '2020-11-15 21:00:22'),
(869, 1, 'vi', 'core/base/tables', 'action', 'Hành động', '2020-11-15 21:00:22', '2020-11-15 21:00:22'),
(870, 1, 'vi', 'core/base/tables', 'activate', 'Kích hoạt', '2020-11-15 21:00:22', '2020-11-15 21:00:22'),
(871, 1, 'vi', 'core/base/tables', 'add_new', 'Thêm mới', '2020-11-15 21:00:22', '2020-11-15 21:00:22'),
(872, 1, 'vi', 'core/base/tables', 'all', 'Tất cả', '2020-11-15 21:00:22', '2020-11-15 21:00:22'),
(873, 1, 'vi', 'core/base/tables', 'cancel', 'Hủy bỏ', '2020-11-15 21:00:22', '2020-11-15 21:00:22'),
(874, 1, 'vi', 'core/base/tables', 'confirm_delete', 'Xác nhận xóa', '2020-11-15 21:00:22', '2020-11-15 21:00:22'),
(875, 1, 'vi', 'core/base/tables', 'confirm_delete_msg', 'Bạn có chắc chắn muốn xóa bản ghi này?', '2020-11-15 21:00:22', '2020-11-15 21:00:22'),
(876, 1, 'vi', 'core/base/tables', 'csv', 'CSV', '2020-11-15 21:00:22', '2020-11-15 21:00:22'),
(877, 1, 'vi', 'core/base/tables', 'deactivate', 'Hủy kích hoạt', '2020-11-15 21:00:22', '2020-11-15 21:00:22'),
(878, 1, 'vi', 'core/base/tables', 'delete_entry', 'Xóa bản ghi', '2020-11-15 21:00:22', '2020-11-15 21:00:22'),
(879, 1, 'vi', 'core/base/tables', 'display', 'Hiển thị', '2020-11-15 21:00:22', '2020-11-15 21:00:22'),
(880, 1, 'vi', 'core/base/tables', 'excel', 'Excel', '2020-11-15 21:00:22', '2020-11-15 21:00:22'),
(881, 1, 'vi', 'core/base/tables', 'export', 'Xuất bản', '2020-11-15 21:00:22', '2020-11-15 21:00:22'),
(882, 1, 'vi', 'core/base/tables', 'filter', 'Nhập từ khóa...', '2020-11-15 21:00:22', '2020-11-15 21:00:22'),
(883, 1, 'vi', 'core/base/tables', 'filtered_from', 'được lọc từ', '2020-11-15 21:00:22', '2020-11-15 21:00:22'),
(884, 1, 'vi', 'core/base/tables', 'in', 'trong tổng số', '2020-11-15 21:00:22', '2020-11-15 21:00:22'),
(885, 1, 'vi', 'core/base/tables', 'loading', 'Đang tải dữ liệu từ hệ thống', '2020-11-15 21:00:22', '2020-11-15 21:00:22'),
(886, 1, 'vi', 'core/base/tables', 'no_data', 'Không có dữ liệu để hiển thị', '2020-11-15 21:00:22', '2020-11-15 21:00:22'),
(887, 1, 'vi', 'core/base/tables', 'no_record', 'Không có dữ liệu', '2020-11-15 21:00:22', '2020-11-15 21:00:22'),
(888, 1, 'vi', 'core/base/tables', 'pdf', 'PDF', '2020-11-15 21:00:22', '2020-11-15 21:00:22'),
(889, 1, 'vi', 'core/base/tables', 'print', 'In', '2020-11-15 21:00:22', '2020-11-15 21:00:22'),
(890, 1, 'vi', 'core/base/tables', 'records', 'bản ghi', '2020-11-15 21:00:22', '2020-11-15 21:00:22'),
(891, 1, 'vi', 'core/base/tables', 'reload', 'Tải lại', '2020-11-15 21:00:22', '2020-11-15 21:00:22'),
(892, 1, 'vi', 'core/base/tables', 'reset', 'Làm mới', '2020-11-15 21:00:22', '2020-11-15 21:00:22'),
(893, 1, 'vi', 'core/base/tables', 'save', 'Lưu', '2020-11-15 21:00:22', '2020-11-15 21:00:22'),
(894, 1, 'vi', 'core/base/tables', 'show_from', 'Hiển thị từ', '2020-11-15 21:00:22', '2020-11-15 21:00:22'),
(895, 1, 'vi', 'core/base/tables', 'template', 'Giao diện', '2020-11-15 21:00:22', '2020-11-15 21:00:22'),
(896, 1, 'vi', 'core/base/tables', 'to', 'đến', '2020-11-15 21:00:22', '2020-11-15 21:00:22'),
(897, 1, 'vi', 'core/base/tables', 'view', 'Xem chi tiết', '2020-11-15 21:00:22', '2020-11-15 21:00:22'),
(898, 1, 'vi', 'core/base/tables', 'email', 'Email', '2020-11-15 21:00:22', '2020-11-15 21:00:22'),
(899, 1, 'vi', 'core/base/tables', 'image', 'Hình ảnh', '2020-11-15 21:00:22', '2020-11-15 21:00:22'),
(900, 1, 'vi', 'core/base/tables', 'is_featured', 'Nổi bật', '2020-11-15 21:00:22', '2020-11-15 21:00:22'),
(901, 1, 'vi', 'core/base/tables', 'last_login', 'Lần cuối đăng nhập', '2020-11-15 21:00:22', '2020-11-15 21:00:22'),
(902, 1, 'vi', 'core/base/tables', 'order', 'Thứ tự', '2020-11-15 21:00:22', '2020-11-15 21:00:22'),
(903, 1, 'vi', 'core/base/tables', 'shortcode', 'Shortcode', '2020-11-15 21:00:22', '2020-11-15 21:00:22'),
(904, 1, 'vi', 'core/base/tables', 'slug', 'Slug', '2020-11-15 21:00:22', '2020-11-15 21:00:22'),
(905, 1, 'vi', 'core/base/tables', 'title', 'Tiêu đề', '2020-11-15 21:00:22', '2020-11-15 21:00:22'),
(906, 1, 'vi', 'core/base/tabs', 'detail', 'Chi tiết', '2020-11-15 21:00:22', '2020-11-15 21:00:22'),
(907, 1, 'vi', 'core/base/tabs', 'file', 'Tập tin', '2020-11-15 21:00:22', '2020-11-15 21:00:22'),
(908, 1, 'vi', 'core/base/tabs', 'record_note', 'Ghi chú', '2020-11-15 21:00:22', '2020-11-15 21:00:22'),
(909, 1, 'vi', 'core/base/tabs', 'revision', 'Lịch sử thay đổi', '2020-11-15 21:00:22', '2020-11-15 21:00:22'),
(910, 1, 'en', 'core/dashboard/dashboard', 'update_position_success', 'Update widget position successfully!', '2020-11-15 21:00:22', '2020-11-15 21:00:22'),
(911, 1, 'en', 'core/dashboard/dashboard', 'hide_success', 'Update widget successfully!', '2020-11-15 21:00:22', '2020-11-15 21:00:22'),
(912, 1, 'en', 'core/dashboard/dashboard', 'confirm_hide', 'Are you sure?', '2020-11-15 21:00:22', '2020-11-15 21:00:22'),
(913, 1, 'en', 'core/dashboard/dashboard', 'hide_message', 'Do you really want to hide this widget? It will be disappear on Dashboard!', '2020-11-15 21:00:22', '2020-11-15 21:00:22'),
(914, 1, 'en', 'core/dashboard/dashboard', 'confirm_hide_btn', 'Yes, hide this widget', '2020-11-15 21:00:22', '2020-11-15 21:00:22'),
(915, 1, 'en', 'core/dashboard/dashboard', 'cancel_hide_btn', 'Cancel', '2020-11-15 21:00:22', '2020-11-15 21:00:22'),
(916, 1, 'en', 'core/dashboard/dashboard', 'collapse_expand', 'Collapse/Expand', '2020-11-15 21:00:22', '2020-11-15 21:00:22'),
(917, 1, 'en', 'core/dashboard/dashboard', 'hide', 'Hide', '2020-11-15 21:00:22', '2020-11-15 21:00:22'),
(918, 1, 'en', 'core/dashboard/dashboard', 'reload', 'Reload', '2020-11-15 21:00:22', '2020-11-15 21:00:22'),
(919, 1, 'en', 'core/dashboard/dashboard', 'save_setting_success', 'Save widget settings successfully!', '2020-11-15 21:00:22', '2020-11-15 21:00:22'),
(920, 1, 'en', 'core/dashboard/dashboard', 'widget_not_exists', 'Widget is not exits!', '2020-11-15 21:00:22', '2020-11-15 21:00:22'),
(921, 1, 'en', 'core/dashboard/dashboard', 'manage_widgets', 'Manage Widgets', '2020-11-15 21:00:22', '2020-11-15 21:00:22'),
(922, 1, 'en', 'core/dashboard/dashboard', 'fullscreen', 'Full screen', '2020-11-15 21:00:22', '2020-11-15 21:00:22'),
(923, 1, 'en', 'core/dashboard/dashboard', 'title', 'Dashboard', '2020-11-15 21:00:22', '2020-11-15 21:00:22'),
(924, 1, 'vi', 'core/dashboard/dashboard', 'cancel_hide_btn', 'Hủy bỏ', '2020-11-15 21:00:23', '2020-11-15 21:00:23'),
(925, 1, 'vi', 'core/dashboard/dashboard', 'collapse_expand', 'Mở rộng', '2020-11-15 21:00:23', '2020-11-15 21:00:23'),
(926, 1, 'vi', 'core/dashboard/dashboard', 'confirm_hide', 'Bạn có chắc?', '2020-11-15 21:00:23', '2020-11-15 21:00:23'),
(927, 1, 'vi', 'core/dashboard/dashboard', 'confirm_hide_btn', 'Vâng, ẩn tiện ích này', '2020-11-15 21:00:23', '2020-11-15 21:00:23'),
(928, 1, 'vi', 'core/dashboard/dashboard', 'hide', 'Ẩn', '2020-11-15 21:00:23', '2020-11-15 21:00:23'),
(929, 1, 'vi', 'core/dashboard/dashboard', 'hide_message', 'Bạn có chắc chắn muốn ẩn tiện ích này? Nó sẽ không được hiển thị trên trang chủ nữa!', '2020-11-15 21:00:23', '2020-11-15 21:00:23'),
(930, 1, 'vi', 'core/dashboard/dashboard', 'hide_success', 'Ẩn tiện ích thành công!', '2020-11-15 21:00:23', '2020-11-15 21:00:23'),
(931, 1, 'vi', 'core/dashboard/dashboard', 'manage_widgets', 'Quản lý tiện ích', '2020-11-15 21:00:23', '2020-11-15 21:00:23'),
(932, 1, 'vi', 'core/dashboard/dashboard', 'reload', 'Làm mới', '2020-11-15 21:00:23', '2020-11-15 21:00:23'),
(933, 1, 'vi', 'core/dashboard/dashboard', 'save_setting_success', 'Lưu tiện ích thành công', '2020-11-15 21:00:23', '2020-11-15 21:00:23'),
(934, 1, 'vi', 'core/dashboard/dashboard', 'update_position_success', 'Cập nhật vị trí tiện ích thành công!', '2020-11-15 21:00:23', '2020-11-15 21:00:23'),
(935, 1, 'vi', 'core/dashboard/dashboard', 'widget_not_exists', 'Tiện ích này không tồn tại!', '2020-11-15 21:00:23', '2020-11-15 21:00:23'),
(936, 1, 'vi', 'core/dashboard/dashboard', 'fullscreen', 'Toàn màn hình', '2020-11-15 21:00:23', '2020-11-15 21:00:23'),
(937, 1, 'vi', 'core/dashboard/dashboard', 'title', 'Trang quản trị', '2020-11-15 21:00:23', '2020-11-15 21:00:23'),
(938, 1, 'en', 'core/media/media', 'filter', 'Filter', '2020-11-15 21:00:23', '2020-11-15 21:00:23'),
(939, 1, 'en', 'core/media/media', 'everything', 'Everything', '2020-11-15 21:00:23', '2020-11-15 21:00:23'),
(940, 1, 'en', 'core/media/media', 'image', 'Image', '2020-11-15 21:00:23', '2020-11-15 21:00:23'),
(941, 1, 'en', 'core/media/media', 'video', 'Video', '2020-11-15 21:00:23', '2020-11-15 21:00:23'),
(942, 1, 'en', 'core/media/media', 'document', 'Document', '2020-11-15 21:00:23', '2020-11-15 21:00:23'),
(943, 1, 'en', 'core/media/media', 'view_in', 'View in', '2020-11-15 21:00:23', '2020-11-15 21:00:23'),
(944, 1, 'en', 'core/media/media', 'all_media', 'All media', '2020-11-15 21:00:23', '2020-11-15 21:00:23'),
(945, 1, 'en', 'core/media/media', 'trash', 'Trash', '2020-11-15 21:00:23', '2020-11-15 21:00:23'),
(946, 1, 'en', 'core/media/media', 'recent', 'Recent', '2020-11-15 21:00:23', '2020-11-15 21:00:23'),
(947, 1, 'en', 'core/media/media', 'favorites', 'Favorites', '2020-11-15 21:00:23', '2020-11-15 21:00:23'),
(948, 1, 'en', 'core/media/media', 'upload', 'Upload', '2020-11-15 21:00:23', '2020-11-15 21:00:23'),
(949, 1, 'en', 'core/media/media', 'create_folder', 'Create folder', '2020-11-15 21:00:23', '2020-11-15 21:00:23'),
(950, 1, 'en', 'core/media/media', 'refresh', 'Refresh', '2020-11-15 21:00:23', '2020-11-15 21:00:23'),
(951, 1, 'en', 'core/media/media', 'empty_trash', 'Empty trash', '2020-11-15 21:00:23', '2020-11-15 21:00:23'),
(952, 1, 'en', 'core/media/media', 'search_file_and_folder', 'Search file and folder', '2020-11-15 21:00:23', '2020-11-15 21:00:23'),
(953, 1, 'en', 'core/media/media', 'sort', 'Sort', '2020-11-15 21:00:23', '2020-11-15 21:00:23'),
(954, 1, 'en', 'core/media/media', 'file_name_asc', 'File name - ASC', '2020-11-15 21:00:23', '2020-11-15 21:00:23'),
(955, 1, 'en', 'core/media/media', 'file_name_desc', 'File name - DESC', '2020-11-15 21:00:23', '2020-11-15 21:00:23'),
(956, 1, 'en', 'core/media/media', 'uploaded_date_asc', 'Uploaded date - ASC', '2020-11-15 21:00:23', '2020-11-15 21:00:23'),
(957, 1, 'en', 'core/media/media', 'uploaded_date_desc', 'Uploaded date - DESC', '2020-11-15 21:00:23', '2020-11-15 21:00:23'),
(958, 1, 'en', 'core/media/media', 'size_asc', 'Size - ASC', '2020-11-15 21:00:23', '2020-11-15 21:00:23'),
(959, 1, 'en', 'core/media/media', 'size_desc', 'Size - DESC', '2020-11-15 21:00:23', '2020-11-15 21:00:23'),
(960, 1, 'en', 'core/media/media', 'actions', 'Actions', '2020-11-15 21:00:23', '2020-11-15 21:00:23'),
(961, 1, 'en', 'core/media/media', 'nothing_is_selected', 'Nothing is selected', '2020-11-15 21:00:23', '2020-11-15 21:00:23'),
(962, 1, 'en', 'core/media/media', 'insert', 'Insert', '2020-11-15 21:00:23', '2020-11-15 21:00:23'),
(963, 1, 'en', 'core/media/media', 'folder_name', 'Folder name', '2020-11-15 21:00:23', '2020-11-15 21:00:23'),
(964, 1, 'en', 'core/media/media', 'create', 'Create', '2020-11-15 21:00:23', '2020-11-15 21:00:23'),
(965, 1, 'en', 'core/media/media', 'rename', 'Rename', '2020-11-15 21:00:23', '2020-11-15 21:00:23'),
(966, 1, 'en', 'core/media/media', 'close', 'Close', '2020-11-15 21:00:23', '2020-11-15 21:00:23'),
(967, 1, 'en', 'core/media/media', 'save_changes', 'Save changes', '2020-11-15 21:00:23', '2020-11-15 21:00:23'),
(968, 1, 'en', 'core/media/media', 'move_to_trash', 'Move items to trash', '2020-11-15 21:00:23', '2020-11-15 21:00:23'),
(969, 1, 'en', 'core/media/media', 'confirm_trash', 'Are you sure you want to move these items to trash?', '2020-11-15 21:00:23', '2020-11-15 21:00:23'),
(970, 1, 'en', 'core/media/media', 'confirm', 'Confirm', '2020-11-15 21:00:23', '2020-11-15 21:00:23'),
(971, 1, 'en', 'core/media/media', 'confirm_delete', 'Delete item(s)', '2020-11-15 21:00:23', '2020-11-15 21:00:23'),
(972, 1, 'en', 'core/media/media', 'confirm_delete_description', 'Your request cannot rollback. Are you sure you wanna delete these items?', '2020-11-15 21:00:23', '2020-11-15 21:00:23'),
(973, 1, 'en', 'core/media/media', 'empty_trash_title', 'Empty trash', '2020-11-15 21:00:23', '2020-11-15 21:00:23'),
(974, 1, 'en', 'core/media/media', 'empty_trash_description', 'Your request cannot rollback. Are you sure you wanna remove all items in trash?', '2020-11-15 21:00:23', '2020-11-15 21:00:23'),
(975, 1, 'en', 'core/media/media', 'up_level', 'Up one level', '2020-11-15 21:00:23', '2020-11-15 21:00:23'),
(976, 1, 'en', 'core/media/media', 'upload_progress', 'Upload progress', '2020-11-15 21:00:23', '2020-11-15 21:00:23'),
(977, 1, 'en', 'core/media/media', 'folder_created', 'Folder is created successfully!', '2020-11-15 21:00:23', '2020-11-15 21:00:23'),
(978, 1, 'en', 'core/media/media', 'gallery', 'Media gallery', '2020-11-15 21:00:23', '2020-11-15 21:00:23'),
(979, 1, 'en', 'core/media/media', 'trash_error', 'Error when delete selected item(s)', '2020-11-15 21:00:23', '2020-11-15 21:00:23'),
(980, 1, 'en', 'core/media/media', 'trash_success', 'Moved selected item(s) to trash successfully!', '2020-11-15 21:00:23', '2020-11-15 21:00:23'),
(981, 1, 'en', 'core/media/media', 'restore_error', 'Error when restore selected item(s)', '2020-11-15 21:00:23', '2020-11-15 21:00:23'),
(982, 1, 'en', 'core/media/media', 'restore_success', 'Restore selected item(s) successfully!', '2020-11-15 21:00:23', '2020-11-15 21:00:23'),
(983, 1, 'en', 'core/media/media', 'copy_success', 'Copied selected item(s) successfully!', '2020-11-15 21:00:23', '2020-11-15 21:00:23'),
(984, 1, 'en', 'core/media/media', 'delete_success', 'Deleted selected item(s) successfully!', '2020-11-15 21:00:23', '2020-11-15 21:00:23'),
(985, 1, 'en', 'core/media/media', 'favorite_success', 'Favorite selected item(s) successfully!', '2020-11-15 21:00:23', '2020-11-15 21:00:23'),
(986, 1, 'en', 'core/media/media', 'remove_favorite_success', 'Remove selected item(s) from favorites successfully!', '2020-11-15 21:00:23', '2020-11-15 21:00:23'),
(987, 1, 'en', 'core/media/media', 'rename_error', 'Error when rename item(s)', '2020-11-15 21:00:23', '2020-11-15 21:00:23'),
(988, 1, 'en', 'core/media/media', 'rename_success', 'Rename selected item(s) successfully!', '2020-11-15 21:00:23', '2020-11-15 21:00:23'),
(989, 1, 'en', 'core/media/media', 'empty_trash_success', 'Empty trash successfully!', '2020-11-15 21:00:23', '2020-11-15 21:00:23'),
(990, 1, 'en', 'core/media/media', 'invalid_action', 'Invalid action!', '2020-11-15 21:00:23', '2020-11-15 21:00:23'),
(991, 1, 'en', 'core/media/media', 'file_not_exists', 'File is not exists!', '2020-11-15 21:00:23', '2020-11-15 21:00:23'),
(992, 1, 'en', 'core/media/media', 'download_file_error', 'Error when downloading files!', '2020-11-15 21:00:23', '2020-11-15 21:00:23'),
(993, 1, 'en', 'core/media/media', 'missing_zip_archive_extension', 'Please enable ZipArchive extension to download file!', '2020-11-15 21:00:23', '2020-11-15 21:00:23'),
(994, 1, 'en', 'core/media/media', 'can_not_download_file', 'Can not download this file!', '2020-11-15 21:00:23', '2020-11-15 21:00:23'),
(995, 1, 'en', 'core/media/media', 'invalid_request', 'Invalid request!', '2020-11-15 21:00:23', '2020-11-15 21:00:23'),
(996, 1, 'en', 'core/media/media', 'add_success', 'Add item successfully!', '2020-11-15 21:00:23', '2020-11-15 21:00:23'),
(997, 1, 'en', 'core/media/media', 'file_too_big', 'File too big. Max file upload is :size bytes', '2020-11-15 21:00:23', '2020-11-15 21:00:23'),
(998, 1, 'en', 'core/media/media', 'can_not_detect_file_type', 'File type is not allowed or can not detect file type!', '2020-11-15 21:00:23', '2020-11-15 21:00:23'),
(999, 1, 'en', 'core/media/media', 'upload_failed', 'The file is NOT uploaded completely. The server allows max upload file size is :size . Please check your file size OR try to upload again in case of having network errors', '2020-11-15 21:00:23', '2020-11-15 21:00:23'),
(1000, 1, 'en', 'core/media/media', 'menu_name', 'Media', '2020-11-15 21:00:23', '2020-11-15 21:00:23'),
(1001, 1, 'en', 'core/media/media', 'add', 'Add media', '2020-11-15 21:00:23', '2020-11-15 21:00:23'),
(1002, 1, 'en', 'core/media/media', 'javascript.name', 'Name', '2020-11-15 21:00:23', '2020-11-15 21:00:23'),
(1003, 1, 'en', 'core/media/media', 'javascript.url', 'Url', '2020-11-15 21:00:23', '2020-11-15 21:00:23'),
(1004, 1, 'en', 'core/media/media', 'javascript.full_url', 'Full url', '2020-11-15 21:00:23', '2020-11-15 21:00:23'),
(1005, 1, 'en', 'core/media/media', 'javascript.size', 'Size', '2020-11-15 21:00:23', '2020-11-15 21:00:23'),
(1006, 1, 'en', 'core/media/media', 'javascript.mime_type', 'Type', '2020-11-15 21:00:23', '2020-11-15 21:00:23'),
(1007, 1, 'en', 'core/media/media', 'javascript.created_at', 'Uploaded at', '2020-11-15 21:00:23', '2020-11-15 21:00:23'),
(1008, 1, 'en', 'core/media/media', 'javascript.updated_at', 'Modified at', '2020-11-15 21:00:23', '2020-11-15 21:00:23'),
(1009, 1, 'en', 'core/media/media', 'javascript.nothing_selected', 'Nothing is selected', '2020-11-15 21:00:23', '2020-11-15 21:00:23'),
(1010, 1, 'en', 'core/media/media', 'javascript.visit_link', 'Open link', '2020-11-15 21:00:23', '2020-11-15 21:00:23'),
(1011, 1, 'en', 'core/media/media', 'javascript.no_item.all_media.icon', 'fas fa-cloud-upload-alt', '2020-11-15 21:00:23', '2020-11-15 21:00:23'),
(1012, 1, 'en', 'core/media/media', 'javascript.no_item.all_media.title', 'Drop files and folders here', '2020-11-15 21:00:23', '2020-11-15 21:00:23'),
(1013, 1, 'en', 'core/media/media', 'javascript.no_item.all_media.message', 'Or use the upload button above', '2020-11-15 21:00:23', '2020-11-15 21:00:23'),
(1014, 1, 'en', 'core/media/media', 'javascript.no_item.trash.icon', 'fas fa-trash-alt', '2020-11-15 21:00:23', '2020-11-15 21:00:23'),
(1015, 1, 'en', 'core/media/media', 'javascript.no_item.trash.title', 'There is nothing in your trash currently', '2020-11-15 21:00:23', '2020-11-15 21:00:23'),
(1016, 1, 'en', 'core/media/media', 'javascript.no_item.trash.message', 'Delete files to move them to trash automatically. Delete files from trash to remove them permanently', '2020-11-15 21:00:23', '2020-11-15 21:00:23'),
(1017, 1, 'en', 'core/media/media', 'javascript.no_item.favorites.icon', 'fas fa-star', '2020-11-15 21:00:23', '2020-11-15 21:00:23'),
(1018, 1, 'en', 'core/media/media', 'javascript.no_item.favorites.title', 'You have not added anything to your favorites yet', '2020-11-15 21:00:23', '2020-11-15 21:00:23'),
(1019, 1, 'en', 'core/media/media', 'javascript.no_item.favorites.message', 'Add files to favorites to easily find them later', '2020-11-15 21:00:23', '2020-11-15 21:00:23'),
(1020, 1, 'en', 'core/media/media', 'javascript.no_item.recent.icon', 'far fa-clock', '2020-11-15 21:00:23', '2020-11-15 21:00:23'),
(1021, 1, 'en', 'core/media/media', 'javascript.no_item.recent.title', 'You did not opened anything yet', '2020-11-15 21:00:23', '2020-11-15 21:00:23'),
(1022, 1, 'en', 'core/media/media', 'javascript.no_item.recent.message', 'All recent files that you opened will be appeared here', '2020-11-15 21:00:23', '2020-11-15 21:00:23'),
(1023, 1, 'en', 'core/media/media', 'javascript.no_item.default.icon', 'fas fa-sync', '2020-11-15 21:00:23', '2020-11-15 21:00:23'),
(1024, 1, 'en', 'core/media/media', 'javascript.no_item.default.title', 'No items', '2020-11-15 21:00:23', '2020-11-15 21:00:23'),
(1025, 1, 'en', 'core/media/media', 'javascript.no_item.default.message', 'This directory has no item', '2020-11-15 21:00:23', '2020-11-15 21:00:23'),
(1026, 1, 'en', 'core/media/media', 'javascript.clipboard.success', 'These file links has been copied to clipboard', '2020-11-15 21:00:23', '2020-11-15 21:00:23'),
(1027, 1, 'en', 'core/media/media', 'javascript.message.error_header', 'Error', '2020-11-15 21:00:23', '2020-11-15 21:00:23'),
(1028, 1, 'en', 'core/media/media', 'javascript.message.success_header', 'Success', '2020-11-15 21:00:23', '2020-11-15 21:00:23'),
(1029, 1, 'en', 'core/media/media', 'javascript.download.error', 'No files selected or cannot download these files', '2020-11-15 21:00:23', '2020-11-15 21:00:23'),
(1030, 1, 'en', 'core/media/media', 'javascript.actions_list.basic.preview', 'Preview', '2020-11-15 21:00:23', '2020-11-15 21:00:23'),
(1031, 1, 'en', 'core/media/media', 'javascript.actions_list.file.copy_link', 'Copy link', '2020-11-15 21:00:23', '2020-11-15 21:00:23'),
(1032, 1, 'en', 'core/media/media', 'javascript.actions_list.file.rename', 'Rename', '2020-11-15 21:00:23', '2020-11-15 21:00:23'),
(1033, 1, 'en', 'core/media/media', 'javascript.actions_list.file.make_copy', 'Make a copy', '2020-11-15 21:00:23', '2020-11-15 21:00:23'),
(1034, 1, 'en', 'core/media/media', 'javascript.actions_list.user.favorite', 'Add to favorite', '2020-11-15 21:00:23', '2020-11-15 21:00:23'),
(1035, 1, 'en', 'core/media/media', 'javascript.actions_list.user.remove_favorite', 'Remove favorite', '2020-11-15 21:00:23', '2020-11-15 21:00:23'),
(1036, 1, 'en', 'core/media/media', 'javascript.actions_list.other.download', 'Download', '2020-11-15 21:00:23', '2020-11-15 21:00:23'),
(1037, 1, 'en', 'core/media/media', 'javascript.actions_list.other.trash', 'Move to trash', '2020-11-15 21:00:23', '2020-11-15 21:00:23'),
(1038, 1, 'en', 'core/media/media', 'javascript.actions_list.other.delete', 'Delete permanently', '2020-11-15 21:00:23', '2020-11-15 21:00:23'),
(1039, 1, 'en', 'core/media/media', 'javascript.actions_list.other.restore', 'Restore', '2020-11-15 21:00:23', '2020-11-15 21:00:23'),
(1040, 1, 'en', 'core/media/media', 'name_invalid', 'The folder name has invalid character(s).', '2020-11-15 21:00:23', '2020-11-15 21:00:23'),
(1041, 1, 'en', 'core/media/media', 'url_invalid', 'Please provide a valid URL', '2020-11-15 21:00:23', '2020-11-15 21:00:23'),
(1042, 1, 'en', 'core/media/media', 'path_invalid', 'Please provide a valid path', '2020-11-15 21:00:23', '2020-11-15 21:00:23'),
(1043, 1, 'vi', 'core/media/media', 'filter', 'Lọc', '2020-11-15 21:00:23', '2020-11-15 21:00:23'),
(1044, 1, 'vi', 'core/media/media', 'everything', 'Tất cả', '2020-11-15 21:00:23', '2020-11-15 21:00:23'),
(1045, 1, 'vi', 'core/media/media', 'image', 'Hình ảnh', '2020-11-15 21:00:23', '2020-11-15 21:00:23'),
(1046, 1, 'vi', 'core/media/media', 'video', 'Phim', '2020-11-15 21:00:23', '2020-11-15 21:00:23'),
(1047, 1, 'vi', 'core/media/media', 'document', 'Tài liệu', '2020-11-15 21:00:23', '2020-11-15 21:00:23'),
(1048, 1, 'vi', 'core/media/media', 'view_in', 'Chế độ xem', '2020-11-15 21:00:23', '2020-11-15 21:00:23'),
(1049, 1, 'vi', 'core/media/media', 'all_media', 'Tất cả tập tin', '2020-11-15 21:00:23', '2020-11-15 21:00:23'),
(1050, 1, 'vi', 'core/media/media', 'trash', 'Thùng rác', '2020-11-15 21:00:23', '2020-11-15 21:00:23'),
(1051, 1, 'vi', 'core/media/media', 'recent', 'Gần đây', '2020-11-15 21:00:23', '2020-11-15 21:00:23'),
(1052, 1, 'vi', 'core/media/media', 'favorites', 'Được gắn dấu sao', '2020-11-15 21:00:23', '2020-11-15 21:00:23'),
(1053, 1, 'vi', 'core/media/media', 'upload', 'Tải lên', '2020-11-15 21:00:23', '2020-11-15 21:00:23'),
(1054, 1, 'vi', 'core/media/media', 'add_from', 'Thêm từ', '2020-11-15 21:00:23', '2020-11-15 21:00:23'),
(1055, 1, 'vi', 'core/media/media', 'youtube', 'Youtube', '2020-11-15 21:00:23', '2020-11-15 21:00:23'),
(1056, 1, 'vi', 'core/media/media', 'vimeo', 'Vimeo', '2020-11-15 21:00:23', '2020-11-15 21:00:23'),
(1057, 1, 'vi', 'core/media/media', 'vine', 'Vine', '2020-11-15 21:00:23', '2020-11-15 21:00:23'),
(1058, 1, 'vi', 'core/media/media', 'daily_motion', 'Dailymotion', '2020-11-15 21:00:23', '2020-11-15 21:00:23'),
(1059, 1, 'vi', 'core/media/media', 'create_folder', 'Tạo thư mục', '2020-11-15 21:00:23', '2020-11-15 21:00:23'),
(1060, 1, 'vi', 'core/media/media', 'refresh', 'Làm mới', '2020-11-15 21:00:23', '2020-11-15 21:00:23'),
(1061, 1, 'vi', 'core/media/media', 'empty_trash', 'Dọn thùng rác', '2020-11-15 21:00:23', '2020-11-15 21:00:23'),
(1062, 1, 'vi', 'core/media/media', 'search_file_and_folder', 'Tìm kiếm tập tin và thư mục', '2020-11-15 21:00:23', '2020-11-15 21:00:23'),
(1063, 1, 'vi', 'core/media/media', 'sort', 'Sắp xếp', '2020-11-15 21:00:23', '2020-11-15 21:00:23'),
(1064, 1, 'vi', 'core/media/media', 'file_name_asc', 'Tên tập tin - ASC', '2020-11-15 21:00:23', '2020-11-15 21:00:23'),
(1065, 1, 'vi', 'core/media/media', 'file_name_desc', 'Tên tập tin - DESC', '2020-11-15 21:00:23', '2020-11-15 21:00:23'),
(1066, 1, 'vi', 'core/media/media', 'created_date_asc', 'Ngày tạo - ASC', '2020-11-15 21:00:23', '2020-11-15 21:00:23'),
(1067, 1, 'vi', 'core/media/media', 'created_date_desc', 'Ngày tạo - DESC', '2020-11-15 21:00:23', '2020-11-15 21:00:23'),
(1068, 1, 'vi', 'core/media/media', 'uploaded_date_asc', 'Ngày tải lên - ASC', '2020-11-15 21:00:23', '2020-11-15 21:00:23'),
(1069, 1, 'vi', 'core/media/media', 'uploaded_date_desc', 'Ngày tải lên - DESC', '2020-11-15 21:00:23', '2020-11-15 21:00:23'),
(1070, 1, 'vi', 'core/media/media', 'size_asc', 'Kích thước - ASC', '2020-11-15 21:00:23', '2020-11-15 21:00:23'),
(1071, 1, 'vi', 'core/media/media', 'size_desc', 'Kích thước - DESC', '2020-11-15 21:00:23', '2020-11-15 21:00:23'),
(1072, 1, 'vi', 'core/media/media', 'actions', 'Hành động', '2020-11-15 21:00:23', '2020-11-15 21:00:23'),
(1073, 1, 'vi', 'core/media/media', 'nothing_is_selected', 'Không có tập tin nào được chọn', '2020-11-15 21:00:23', '2020-11-15 21:00:23'),
(1074, 1, 'vi', 'core/media/media', 'insert', 'Chèn', '2020-11-15 21:00:23', '2020-11-15 21:00:23'),
(1075, 1, 'vi', 'core/media/media', 'coming_soon', 'Đang phát triển', '2020-11-15 21:00:23', '2020-11-15 21:00:23'),
(1076, 1, 'vi', 'core/media/media', 'add_from_youtube', 'Thêm từ youtube', '2020-11-15 21:00:23', '2020-11-15 21:00:23'),
(1077, 1, 'vi', 'core/media/media', 'playlist', 'Playlist', '2020-11-15 21:00:23', '2020-11-15 21:00:23'),
(1078, 1, 'vi', 'core/media/media', 'add_url', 'Thêm đường dẫn', '2020-11-15 21:00:23', '2020-11-15 21:00:23'),
(1079, 1, 'vi', 'core/media/media', 'folder_name', 'Tên thư mục', '2020-11-15 21:00:23', '2020-11-15 21:00:23'),
(1080, 1, 'vi', 'core/media/media', 'create', 'Tạo', '2020-11-15 21:00:23', '2020-11-15 21:00:23'),
(1081, 1, 'vi', 'core/media/media', 'rename', 'Đổi tên', '2020-11-15 21:00:23', '2020-11-15 21:00:23'),
(1082, 1, 'vi', 'core/media/media', 'close', 'Đóng', '2020-11-15 21:00:23', '2020-11-15 21:00:23'),
(1083, 1, 'vi', 'core/media/media', 'save_changes', 'Lưu thay đổi', '2020-11-15 21:00:24', '2020-11-15 21:00:24'),
(1084, 1, 'vi', 'core/media/media', 'move_to_trash', 'Đưa vào thùng rác', '2020-11-15 21:00:24', '2020-11-15 21:00:24'),
(1085, 1, 'vi', 'core/media/media', 'confirm_trash', 'Bạn có chắc chắn muốn bỏ những tập tin này vào thùng rác?', '2020-11-15 21:00:24', '2020-11-15 21:00:24'),
(1086, 1, 'vi', 'core/media/media', 'confirm', 'Xác nhận', '2020-11-15 21:00:24', '2020-11-15 21:00:24'),
(1087, 1, 'vi', 'core/media/media', 'confirm_delete', 'Xóa tập tin', '2020-11-15 21:00:24', '2020-11-15 21:00:24'),
(1088, 1, 'vi', 'core/media/media', 'confirm_delete_description', 'Hành động này không thể khôi phục. Bạn có chắc chắn muốn xóa các tập tin này?', '2020-11-15 21:00:24', '2020-11-15 21:00:24'),
(1089, 1, 'vi', 'core/media/media', 'empty_trash_title', 'Dọn sạch thùng rác', '2020-11-15 21:00:24', '2020-11-15 21:00:24'),
(1090, 1, 'vi', 'core/media/media', 'empty_trash_description', 'Hành động này không thể khôi phục. Bạn có chắc chắn muốn dọn sạch thùng rác?', '2020-11-15 21:00:24', '2020-11-15 21:00:24'),
(1091, 1, 'vi', 'core/media/media', 'up_level', 'Quay lại một cấp', '2020-11-15 21:00:24', '2020-11-15 21:00:24'),
(1092, 1, 'vi', 'core/media/media', 'upload_progress', 'Tiến trình tải lên', '2020-11-15 21:00:24', '2020-11-15 21:00:24'),
(1093, 1, 'vi', 'core/media/media', 'name_reserved', 'Tên này không được phép đặt', '2020-11-15 21:00:24', '2020-11-15 21:00:24'),
(1094, 1, 'vi', 'core/media/media', 'folder_created', 'Tạo thư mục thành công!', '2020-11-15 21:00:24', '2020-11-15 21:00:24'),
(1095, 1, 'vi', 'core/media/media', 'gallery', 'Thư viện tập tin', '2020-11-15 21:00:24', '2020-11-15 21:00:24'),
(1096, 1, 'vi', 'core/media/media', 'trash_error', 'Có lỗi khi xóa tập tin/thư mục', '2020-11-15 21:00:24', '2020-11-15 21:00:24'),
(1097, 1, 'vi', 'core/media/media', 'trash_success', 'Xóa tập tin/thư mục thành công!', '2020-11-15 21:00:24', '2020-11-15 21:00:24'),
(1098, 1, 'vi', 'core/media/media', 'restore_error', 'Có lỗi trong quá trình khôi phục', '2020-11-15 21:00:24', '2020-11-15 21:00:24'),
(1099, 1, 'vi', 'core/media/media', 'restore_success', 'Khôi phục thành công!', '2020-11-15 21:00:24', '2020-11-15 21:00:24'),
(1100, 1, 'vi', 'core/media/media', 'copy_success', 'Sao chép thành công!', '2020-11-15 21:00:24', '2020-11-15 21:00:24'),
(1101, 1, 'vi', 'core/media/media', 'delete_success', 'Xóa thành công!', '2020-11-15 21:00:24', '2020-11-15 21:00:24'),
(1102, 1, 'vi', 'core/media/media', 'favorite_success', 'Thêm dấu sao thành công!', '2020-11-15 21:00:24', '2020-11-15 21:00:24'),
(1103, 1, 'vi', 'core/media/media', 'remove_favorite_success', 'Bỏ dấu sao thành công!', '2020-11-15 21:00:24', '2020-11-15 21:00:24'),
(1104, 1, 'vi', 'core/media/media', 'rename_error', 'Có lỗi trong quá trình đổi tên', '2020-11-15 21:00:24', '2020-11-15 21:00:24'),
(1105, 1, 'vi', 'core/media/media', 'rename_success', 'Đổi tên thành công!', '2020-11-15 21:00:24', '2020-11-15 21:00:24'),
(1106, 1, 'vi', 'core/media/media', 'invalid_action', 'Hành động không hợp lệ!', '2020-11-15 21:00:24', '2020-11-15 21:00:24'),
(1107, 1, 'vi', 'core/media/media', 'file_not_exists', 'Tập tin không tồn tại!', '2020-11-15 21:00:24', '2020-11-15 21:00:24'),
(1108, 1, 'vi', 'core/media/media', 'download_file_error', 'Có lỗi trong quá trình tải xuống tập tin!', '2020-11-15 21:00:24', '2020-11-15 21:00:24'),
(1109, 1, 'vi', 'core/media/media', 'missing_zip_archive_extension', 'Hãy bật ZipArchive extension để tải tập tin!', '2020-11-15 21:00:24', '2020-11-15 21:00:24'),
(1110, 1, 'vi', 'core/media/media', 'can_not_download_file', 'Không thể tải tập tin!', '2020-11-15 21:00:24', '2020-11-15 21:00:24'),
(1111, 1, 'vi', 'core/media/media', 'invalid_request', 'Yêu cầu không hợp lệ!', '2020-11-15 21:00:24', '2020-11-15 21:00:24'),
(1112, 1, 'vi', 'core/media/media', 'add_success', 'Thêm thành công!', '2020-11-15 21:00:24', '2020-11-15 21:00:24'),
(1113, 1, 'vi', 'core/media/media', 'file_too_big', 'Tập tin quá lớn. Giới hạn tải lên là :size bytes', '2020-11-15 21:00:24', '2020-11-15 21:00:24'),
(1114, 1, 'vi', 'core/media/media', 'can_not_detect_file_type', 'Loại tập tin không hợp lệ hoặc không thể xác định loại tập tin!', '2020-11-15 21:00:24', '2020-11-15 21:00:24'),
(1115, 1, 'vi', 'core/media/media', 'upload_failed', 'The file is NOT uploaded completely. The server allows max upload file size is :size . Please check your file size OR try to upload again in case of having network errors', '2020-11-15 21:00:24', '2020-11-15 21:00:24'),
(1116, 1, 'vi', 'core/media/media', 'menu_name', 'Quản lý tập tin', '2020-11-15 21:00:24', '2020-11-15 21:00:24'),
(1117, 1, 'vi', 'core/media/media', 'add', 'Thêm tập tin', '2020-11-15 21:00:24', '2020-11-15 21:00:24'),
(1118, 1, 'vi', 'core/media/media', 'javascript.name', 'Tên', '2020-11-15 21:00:24', '2020-11-15 21:00:24'),
(1119, 1, 'vi', 'core/media/media', 'javascript.url', 'Đường dẫn', '2020-11-15 21:00:24', '2020-11-15 21:00:24'),
(1120, 1, 'vi', 'core/media/media', 'javascript.full_url', 'Đường dẫn tuyệt đối', '2020-11-15 21:00:24', '2020-11-15 21:00:24'),
(1121, 1, 'vi', 'core/media/media', 'javascript.size', 'Kích thước', '2020-11-15 21:00:24', '2020-11-15 21:00:24'),
(1122, 1, 'vi', 'core/media/media', 'javascript.mime_type', 'Loại', '2020-11-15 21:00:24', '2020-11-15 21:00:24'),
(1123, 1, 'vi', 'core/media/media', 'javascript.created_at', 'Được tải lên lúc', '2020-11-15 21:00:24', '2020-11-15 21:00:24'),
(1124, 1, 'vi', 'core/media/media', 'javascript.updated_at', 'Được chỉnh sửa lúc', '2020-11-15 21:00:24', '2020-11-15 21:00:24'),
(1125, 1, 'vi', 'core/media/media', 'javascript.nothing_selected', 'Bạn chưa chọn tập tin nào', '2020-11-15 21:00:24', '2020-11-15 21:00:24'),
(1126, 1, 'vi', 'core/media/media', 'javascript.visit_link', 'Mở liên kết', '2020-11-15 21:00:24', '2020-11-15 21:00:24'),
(1127, 1, 'vi', 'core/media/media', 'javascript.add_from.youtube.original_msg', 'Vui lòng nhập chính xác đường dẫn Youtube', '2020-11-15 21:00:24', '2020-11-15 21:00:24'),
(1128, 1, 'vi', 'core/media/media', 'javascript.add_from.youtube.no_api_key_msg', 'Vui lòng khai báo API key của Youtube', '2020-11-15 21:00:24', '2020-11-15 21:00:24'),
(1129, 1, 'vi', 'core/media/media', 'javascript.add_from.youtube.invalid_url_msg', 'Liên kết này không dẫn đến Youtube', '2020-11-15 21:00:24', '2020-11-15 21:00:24'),
(1130, 1, 'vi', 'core/media/media', 'javascript.add_from.youtube.error_msg', 'Có lỗi xảy ra trong tiến trình thực hiện...', '2020-11-15 21:00:24', '2020-11-15 21:00:24'),
(1131, 1, 'vi', 'core/media/media', 'javascript.no_item.all_media.icon', 'fas fa-cloud-upload-alt', '2020-11-15 21:00:24', '2020-11-15 21:00:24'),
(1132, 1, 'vi', 'core/media/media', 'javascript.no_item.all_media.title', 'Bạn có thể kéo thả tập tin vào đây để tải lên', '2020-11-15 21:00:24', '2020-11-15 21:00:24'),
(1133, 1, 'vi', 'core/media/media', 'javascript.no_item.all_media.message', 'Hoặc có thể bấm nút Tải lên ở phía trên', '2020-11-15 21:00:24', '2020-11-15 21:00:24'),
(1134, 1, 'vi', 'core/media/media', 'javascript.no_item.trash.icon', 'fas fa-trash-alt', '2020-11-15 21:00:24', '2020-11-15 21:00:24'),
(1135, 1, 'vi', 'core/media/media', 'javascript.no_item.trash.title', 'Hiện tại không có tập tin nào trong thùng rác', '2020-11-15 21:00:24', '2020-11-15 21:00:24'),
(1136, 1, 'vi', 'core/media/media', 'javascript.no_item.trash.message', 'Xóa tập tin sẽ đem tập tin lưu vào thùng rác. Xóa tập tin trong thùng rác sẽ xóa vĩnh viễn.', '2020-11-15 21:00:24', '2020-11-15 21:00:24'),
(1137, 1, 'vi', 'core/media/media', 'javascript.no_item.favorites.icon', 'fas fa-star', '2020-11-15 21:00:24', '2020-11-15 21:00:24'),
(1138, 1, 'vi', 'core/media/media', 'javascript.no_item.favorites.title', 'Bạn chưa đặt tập tin nào vào mục yêu thích', '2020-11-15 21:00:24', '2020-11-15 21:00:24'),
(1139, 1, 'vi', 'core/media/media', 'javascript.no_item.favorites.message', 'Thêm tập tin vào mục yêu thích để tìm kiếm chúng dễ dàng sau này.', '2020-11-15 21:00:24', '2020-11-15 21:00:24'),
(1140, 1, 'vi', 'core/media/media', 'javascript.no_item.recent.icon', 'far fa-clock', '2020-11-15 21:00:24', '2020-11-15 21:00:24'),
(1141, 1, 'vi', 'core/media/media', 'javascript.no_item.recent.title', 'Bạn chưa mở tập tin nào.', '2020-11-15 21:00:24', '2020-11-15 21:00:24'),
(1142, 1, 'vi', 'core/media/media', 'javascript.no_item.recent.message', 'Mục này hiển thị các tập tin bạn đã xem gần đây.', '2020-11-15 21:00:24', '2020-11-15 21:00:24'),
(1143, 1, 'vi', 'core/media/media', 'javascript.no_item.default.icon', 'fas fa-sync', '2020-11-15 21:00:24', '2020-11-15 21:00:24'),
(1144, 1, 'vi', 'core/media/media', 'javascript.no_item.default.title', 'Thư mục trống', '2020-11-15 21:00:24', '2020-11-15 21:00:24'),
(1145, 1, 'vi', 'core/media/media', 'javascript.no_item.default.message', 'Thư mục này chưa có tập tin nào', '2020-11-15 21:00:24', '2020-11-15 21:00:24'),
(1146, 1, 'vi', 'core/media/media', 'javascript.clipboard.success', 'Đường dẫn của các tập tin đã được sao chép vào clipboard', '2020-11-15 21:00:24', '2020-11-15 21:00:24'),
(1147, 1, 'vi', 'core/media/media', 'javascript.message.error_header', 'Lỗi', '2020-11-15 21:00:24', '2020-11-15 21:00:24'),
(1148, 1, 'vi', 'core/media/media', 'javascript.message.success_header', 'Thành công', '2020-11-15 21:00:24', '2020-11-15 21:00:24'),
(1149, 1, 'vi', 'core/media/media', 'javascript.download.error', 'Bạn chưa chọn tập tin nào hoặc tập tin này không cho phép tải về', '2020-11-15 21:00:24', '2020-11-15 21:00:24'),
(1150, 1, 'vi', 'core/media/media', 'javascript.actions_list.basic.preview', 'Xem trước', '2020-11-15 21:00:24', '2020-11-15 21:00:24'),
(1151, 1, 'vi', 'core/media/media', 'javascript.actions_list.file.copy_link', 'Sao chép đường dẫn', '2020-11-15 21:00:24', '2020-11-15 21:00:24'),
(1152, 1, 'vi', 'core/media/media', 'javascript.actions_list.file.rename', 'Đổi tên', '2020-11-15 21:00:24', '2020-11-15 21:00:24'),
(1153, 1, 'vi', 'core/media/media', 'javascript.actions_list.file.make_copy', 'Nhân bản', '2020-11-15 21:00:24', '2020-11-15 21:00:24'),
(1154, 1, 'vi', 'core/media/media', 'javascript.actions_list.user.favorite', 'Yêu thích', '2020-11-15 21:00:24', '2020-11-15 21:00:24'),
(1155, 1, 'vi', 'core/media/media', 'javascript.actions_list.user.remove_favorite', 'Xóa khỏi mục yêu thích', '2020-11-15 21:00:24', '2020-11-15 21:00:24'),
(1156, 1, 'vi', 'core/media/media', 'javascript.actions_list.other.download', 'Tải xuống', '2020-11-15 21:00:24', '2020-11-15 21:00:24'),
(1157, 1, 'vi', 'core/media/media', 'javascript.actions_list.other.trash', 'Chuyển vào thùng rác', '2020-11-15 21:00:24', '2020-11-15 21:00:24'),
(1158, 1, 'vi', 'core/media/media', 'javascript.actions_list.other.delete', 'Xóa hoàn toàn', '2020-11-15 21:00:24', '2020-11-15 21:00:24'),
(1159, 1, 'vi', 'core/media/media', 'javascript.actions_list.other.restore', 'Khôi phục', '2020-11-15 21:00:24', '2020-11-15 21:00:24'),
(1160, 1, 'vi', 'core/media/media', 'empty_trash_success', 'Dọn sạch thùng rác thành công', '2020-11-15 21:00:24', '2020-11-15 21:00:24'),
(1161, 1, 'vi', 'core/media/media', 'name_invalid', 'Tên thư mục chứa ký tự không hợp lệ', '2020-11-15 21:00:24', '2020-11-15 21:00:24'),
(1162, 1, 'en', 'core/setting/setting', 'title', 'Settings', '2020-11-15 21:00:24', '2020-11-15 21:00:24'),
(1163, 1, 'en', 'core/setting/setting', 'email_setting_title', 'Email settings', '2020-11-15 21:00:24', '2020-11-15 21:00:24'),
(1164, 1, 'en', 'core/setting/setting', 'general.theme', 'Theme', '2020-11-15 21:00:24', '2020-11-15 21:00:24'),
(1165, 1, 'en', 'core/setting/setting', 'general.description', 'Setting site information', '2020-11-15 21:00:24', '2020-11-15 21:00:24'),
(1166, 1, 'en', 'core/setting/setting', 'general.title', 'General', '2020-11-15 21:00:24', '2020-11-15 21:00:24'),
(1167, 1, 'en', 'core/setting/setting', 'general.general_block', 'General Information', '2020-11-15 21:00:24', '2020-11-15 21:00:24'),
(1168, 1, 'en', 'core/setting/setting', 'general.rich_editor', 'Rich Editor', '2020-11-15 21:00:24', '2020-11-15 21:00:24'),
(1169, 1, 'en', 'core/setting/setting', 'general.site_title', 'Site title', '2020-11-15 21:00:24', '2020-11-15 21:00:24'),
(1170, 1, 'en', 'core/setting/setting', 'general.admin_email', 'Admin Email', '2020-11-15 21:00:24', '2020-11-15 21:00:24'),
(1171, 1, 'en', 'core/setting/setting', 'general.seo_block', 'SEO Configuration', '2020-11-15 21:00:24', '2020-11-15 21:00:24'),
(1172, 1, 'en', 'core/setting/setting', 'general.seo_title', 'SEO Title', '2020-11-15 21:00:24', '2020-11-15 21:00:24'),
(1173, 1, 'en', 'core/setting/setting', 'general.seo_description', 'SEO Description', '2020-11-15 21:00:24', '2020-11-15 21:00:24'),
(1174, 1, 'en', 'core/setting/setting', 'general.webmaster_tools_block', 'Google Webmaster Tools', '2020-11-15 21:00:24', '2020-11-15 21:00:24'),
(1175, 1, 'en', 'core/setting/setting', 'general.google_site_verification', 'Google site verification', '2020-11-15 21:00:24', '2020-11-15 21:00:24'),
(1176, 1, 'en', 'core/setting/setting', 'general.placeholder.site_title', 'Site Title (maximum 120 characters)', '2020-11-15 21:00:24', '2020-11-15 21:00:24'),
(1177, 1, 'en', 'core/setting/setting', 'general.placeholder.admin_email', 'Admin Email', '2020-11-15 21:00:24', '2020-11-15 21:00:24'),
(1178, 1, 'en', 'core/setting/setting', 'general.placeholder.seo_title', 'SEO Title (maximum 120 characters)', '2020-11-15 21:00:24', '2020-11-15 21:00:24'),
(1179, 1, 'en', 'core/setting/setting', 'general.placeholder.seo_description', 'SEO Description (maximum 120 characters)', '2020-11-15 21:00:24', '2020-11-15 21:00:24'),
(1180, 1, 'en', 'core/setting/setting', 'general.placeholder.google_analytics', 'Google Analytics', '2020-11-15 21:00:24', '2020-11-15 21:00:24'),
(1181, 1, 'en', 'core/setting/setting', 'general.placeholder.google_site_verification', 'Google Site Verification', '2020-11-15 21:00:24', '2020-11-15 21:00:24'),
(1182, 1, 'en', 'core/setting/setting', 'general.cache_admin_menu', 'Cache admin menu?', '2020-11-15 21:00:24', '2020-11-15 21:00:24'),
(1183, 1, 'en', 'core/setting/setting', 'general.enable_send_error_reporting_via_email', 'Enable to send error reporting via email?', '2020-11-15 21:00:24', '2020-11-15 21:00:24'),
(1184, 1, 'en', 'core/setting/setting', 'general.optimize_page_speed', 'Optimize page speed (minify HTML output, inline CSS, remove comments ..)', '2020-11-15 21:00:24', '2020-11-15 21:00:24');
INSERT INTO `translations` (`id`, `status`, `locale`, `group`, `key`, `value`, `created_at`, `updated_at`) VALUES
(1185, 1, 'en', 'core/setting/setting', 'general.time_zone', 'Timezone', '2020-11-15 21:00:24', '2020-11-15 21:00:24'),
(1186, 1, 'en', 'core/setting/setting', 'general.default_admin_theme', 'Default admin theme', '2020-11-15 21:00:24', '2020-11-15 21:00:24'),
(1187, 1, 'en', 'core/setting/setting', 'general.enable_change_admin_theme', 'Enable change admin theme?', '2020-11-15 21:00:24', '2020-11-15 21:00:24'),
(1188, 1, 'en', 'core/setting/setting', 'general.enable_multi_language_in_admin', 'Enable multi language in admin area?', '2020-11-15 21:00:24', '2020-11-15 21:00:24'),
(1189, 1, 'en', 'core/setting/setting', 'general.enable', 'Enable', '2020-11-15 21:00:24', '2020-11-15 21:00:24'),
(1190, 1, 'en', 'core/setting/setting', 'general.disable', 'Disable', '2020-11-15 21:00:24', '2020-11-15 21:00:24'),
(1191, 1, 'en', 'core/setting/setting', 'general.enable_cache', 'Enable cache?', '2020-11-15 21:00:24', '2020-11-15 21:00:24'),
(1192, 1, 'en', 'core/setting/setting', 'general.cache_time', 'Cache time (minutes)', '2020-11-15 21:00:24', '2020-11-15 21:00:24'),
(1193, 1, 'en', 'core/setting/setting', 'general.cache_time_site_map', 'Cache Time Site map', '2020-11-15 21:00:24', '2020-11-15 21:00:24'),
(1194, 1, 'en', 'core/setting/setting', 'general.admin_logo', 'Admin logo', '2020-11-15 21:00:24', '2020-11-15 21:00:24'),
(1195, 1, 'en', 'core/setting/setting', 'general.admin_favicon', 'Admin favicon', '2020-11-15 21:00:24', '2020-11-15 21:00:24'),
(1196, 1, 'en', 'core/setting/setting', 'general.admin_title', 'Admin title', '2020-11-15 21:00:24', '2020-11-15 21:00:24'),
(1197, 1, 'en', 'core/setting/setting', 'general.admin_title_placeholder', 'Title show to tab of browser', '2020-11-15 21:00:24', '2020-11-15 21:00:24'),
(1198, 1, 'en', 'core/setting/setting', 'general.cache_block', 'Cache', '2020-11-15 21:00:24', '2020-11-15 21:00:24'),
(1199, 1, 'en', 'core/setting/setting', 'general.admin_appearance_title', 'Admin appearance', '2020-11-15 21:00:24', '2020-11-15 21:00:24'),
(1200, 1, 'en', 'core/setting/setting', 'general.admin_appearance_description', 'Setting admin appearance such as editor, language...', '2020-11-15 21:00:24', '2020-11-15 21:00:24'),
(1201, 1, 'en', 'core/setting/setting', 'general.seo_block_description', 'Setting site title, site meta description, site keyword for optimize SEO', '2020-11-15 21:00:24', '2020-11-15 21:00:24'),
(1202, 1, 'en', 'core/setting/setting', 'general.webmaster_tools_description', 'Google Webmaster Tools (GWT) is free software that helps you manage the technical side of your website', '2020-11-15 21:00:24', '2020-11-15 21:00:24'),
(1203, 1, 'en', 'core/setting/setting', 'general.cache_description', 'Config cache for system for optimize speed', '2020-11-15 21:00:24', '2020-11-15 21:00:24'),
(1204, 1, 'en', 'core/setting/setting', 'general.yes', 'Yes', '2020-11-15 21:00:24', '2020-11-15 21:00:24'),
(1205, 1, 'en', 'core/setting/setting', 'general.no', 'No', '2020-11-15 21:00:24', '2020-11-15 21:00:24'),
(1206, 1, 'en', 'core/setting/setting', 'general.show_on_front', 'Your homepage displays', '2020-11-15 21:00:24', '2020-11-15 21:00:24'),
(1207, 1, 'en', 'core/setting/setting', 'general.select', '— Select —', '2020-11-15 21:00:24', '2020-11-15 21:00:24'),
(1208, 1, 'en', 'core/setting/setting', 'general.show_site_name', 'Show site name after page title, separate with \"-\"?', '2020-11-15 21:00:24', '2020-11-15 21:00:24'),
(1209, 1, 'en', 'core/setting/setting', 'general.locale', 'Site language', '2020-11-15 21:00:24', '2020-11-15 21:00:24'),
(1210, 1, 'en', 'core/setting/setting', 'general.locale_direction', 'Language direction', '2020-11-15 21:00:24', '2020-11-15 21:00:24'),
(1211, 1, 'en', 'core/setting/setting', 'email.subject', 'Subject', '2020-11-15 21:00:24', '2020-11-15 21:00:24'),
(1212, 1, 'en', 'core/setting/setting', 'email.content', 'Content', '2020-11-15 21:00:24', '2020-11-15 21:00:24'),
(1213, 1, 'en', 'core/setting/setting', 'email.title', 'Setting for email template', '2020-11-15 21:00:24', '2020-11-15 21:00:24'),
(1214, 1, 'en', 'core/setting/setting', 'email.description', 'Email template using HTML & system variables.', '2020-11-15 21:00:24', '2020-11-15 21:00:24'),
(1215, 1, 'en', 'core/setting/setting', 'email.reset_to_default', 'Reset to default', '2020-11-15 21:00:24', '2020-11-15 21:00:24'),
(1216, 1, 'en', 'core/setting/setting', 'email.back', 'Back to settings', '2020-11-15 21:00:24', '2020-11-15 21:00:24'),
(1217, 1, 'en', 'core/setting/setting', 'email.reset_success', 'Reset back to default successfully', '2020-11-15 21:00:24', '2020-11-15 21:00:24'),
(1218, 1, 'en', 'core/setting/setting', 'email.confirm_reset', 'Confirm reset email template?', '2020-11-15 21:00:24', '2020-11-15 21:00:24'),
(1219, 1, 'en', 'core/setting/setting', 'email.confirm_message', 'Do you really want to reset this email template to default?', '2020-11-15 21:00:24', '2020-11-15 21:00:24'),
(1220, 1, 'en', 'core/setting/setting', 'email.continue', 'Continue', '2020-11-15 21:00:24', '2020-11-15 21:00:24'),
(1221, 1, 'en', 'core/setting/setting', 'email.sender_name', 'Sender name', '2020-11-15 21:00:24', '2020-11-15 21:00:24'),
(1222, 1, 'en', 'core/setting/setting', 'email.sender_name_placeholder', 'Name', '2020-11-15 21:00:24', '2020-11-15 21:00:24'),
(1223, 1, 'en', 'core/setting/setting', 'email.sender_email', 'Sender email', '2020-11-15 21:00:24', '2020-11-15 21:00:24'),
(1224, 1, 'en', 'core/setting/setting', 'email.mailer', 'Mailer', '2020-11-15 21:00:24', '2020-11-15 21:00:24'),
(1225, 1, 'en', 'core/setting/setting', 'email.port', 'Port', '2020-11-15 21:00:24', '2020-11-15 21:00:24'),
(1226, 1, 'en', 'core/setting/setting', 'email.port_placeholder', 'Ex: 587', '2020-11-15 21:00:24', '2020-11-15 21:00:24'),
(1227, 1, 'en', 'core/setting/setting', 'email.host', 'Host', '2020-11-15 21:00:25', '2020-11-15 21:00:25'),
(1228, 1, 'en', 'core/setting/setting', 'email.host_placeholder', 'Ex: smtp.gmail.com', '2020-11-15 21:00:25', '2020-11-15 21:00:25'),
(1229, 1, 'en', 'core/setting/setting', 'email.username', 'Username', '2020-11-15 21:00:25', '2020-11-15 21:00:25'),
(1230, 1, 'en', 'core/setting/setting', 'email.username_placeholder', 'Username to login to mail server', '2020-11-15 21:00:25', '2020-11-15 21:00:25'),
(1231, 1, 'en', 'core/setting/setting', 'email.password', 'Password', '2020-11-15 21:00:25', '2020-11-15 21:00:25'),
(1232, 1, 'en', 'core/setting/setting', 'email.password_placeholder', 'Password to login to mail server', '2020-11-15 21:00:25', '2020-11-15 21:00:25'),
(1233, 1, 'en', 'core/setting/setting', 'email.encryption', 'Encryption', '2020-11-15 21:00:25', '2020-11-15 21:00:25'),
(1234, 1, 'en', 'core/setting/setting', 'email.mail_gun_domain', 'Domain', '2020-11-15 21:00:25', '2020-11-15 21:00:25'),
(1235, 1, 'en', 'core/setting/setting', 'email.mail_gun_domain_placeholder', 'Domain', '2020-11-15 21:00:25', '2020-11-15 21:00:25'),
(1236, 1, 'en', 'core/setting/setting', 'email.mail_gun_secret', 'Secret', '2020-11-15 21:00:25', '2020-11-15 21:00:25'),
(1237, 1, 'en', 'core/setting/setting', 'email.mail_gun_secret_placeholder', 'Secret', '2020-11-15 21:00:25', '2020-11-15 21:00:25'),
(1238, 1, 'en', 'core/setting/setting', 'email.mail_gun_endpoint', 'Endpoint', '2020-11-15 21:00:25', '2020-11-15 21:00:25'),
(1239, 1, 'en', 'core/setting/setting', 'email.mail_gun_endpoint_placeholder', 'Endpoint', '2020-11-15 21:00:25', '2020-11-15 21:00:25'),
(1240, 1, 'en', 'core/setting/setting', 'email.log_channel', 'Log channel', '2020-11-15 21:00:25', '2020-11-15 21:00:25'),
(1241, 1, 'en', 'core/setting/setting', 'email.sendmail_path', 'Sendmail Path', '2020-11-15 21:00:25', '2020-11-15 21:00:25'),
(1242, 1, 'en', 'core/setting/setting', 'email.encryption_placeholder', 'Encryption: ssl or tls', '2020-11-15 21:00:25', '2020-11-15 21:00:25'),
(1243, 1, 'en', 'core/setting/setting', 'email.ses_key', 'Key', '2020-11-15 21:00:25', '2020-11-15 21:00:25'),
(1244, 1, 'en', 'core/setting/setting', 'email.ses_key_placeholder', 'Key', '2020-11-15 21:00:25', '2020-11-15 21:00:25'),
(1245, 1, 'en', 'core/setting/setting', 'email.ses_secret', 'Secret', '2020-11-15 21:00:25', '2020-11-15 21:00:25'),
(1246, 1, 'en', 'core/setting/setting', 'email.ses_secret_placeholder', 'Secret', '2020-11-15 21:00:25', '2020-11-15 21:00:25'),
(1247, 1, 'en', 'core/setting/setting', 'email.ses_region', 'Region', '2020-11-15 21:00:25', '2020-11-15 21:00:25'),
(1248, 1, 'en', 'core/setting/setting', 'email.ses_region_placeholder', 'Region', '2020-11-15 21:00:25', '2020-11-15 21:00:25'),
(1249, 1, 'en', 'core/setting/setting', 'email.postmark_token', 'Token', '2020-11-15 21:00:25', '2020-11-15 21:00:25'),
(1250, 1, 'en', 'core/setting/setting', 'email.postmark_token_placeholder', 'Token', '2020-11-15 21:00:25', '2020-11-15 21:00:25'),
(1251, 1, 'en', 'core/setting/setting', 'email.template_title', 'Email templates', '2020-11-15 21:00:25', '2020-11-15 21:00:25'),
(1252, 1, 'en', 'core/setting/setting', 'email.template_description', 'Base templates for all emails', '2020-11-15 21:00:25', '2020-11-15 21:00:25'),
(1253, 1, 'en', 'core/setting/setting', 'email.template_header', 'Email template header', '2020-11-15 21:00:25', '2020-11-15 21:00:25'),
(1254, 1, 'en', 'core/setting/setting', 'email.template_header_description', 'Template for header of emails', '2020-11-15 21:00:25', '2020-11-15 21:00:25'),
(1255, 1, 'en', 'core/setting/setting', 'email.template_footer', 'Email template footer', '2020-11-15 21:00:25', '2020-11-15 21:00:25'),
(1256, 1, 'en', 'core/setting/setting', 'email.template_footer_description', 'Template for footer of emails', '2020-11-15 21:00:25', '2020-11-15 21:00:25'),
(1257, 1, 'en', 'core/setting/setting', 'email.default', 'Default', '2020-11-15 21:00:25', '2020-11-15 21:00:25'),
(1258, 1, 'en', 'core/setting/setting', 'media.title', 'Media', '2020-11-15 21:00:25', '2020-11-15 21:00:25'),
(1259, 1, 'en', 'core/setting/setting', 'media.driver', 'Driver', '2020-11-15 21:00:25', '2020-11-15 21:00:25'),
(1260, 1, 'en', 'core/setting/setting', 'media.description', 'Settings for media', '2020-11-15 21:00:25', '2020-11-15 21:00:25'),
(1261, 1, 'en', 'core/setting/setting', 'media.aws_access_key_id', 'AWS Access Key ID', '2020-11-15 21:00:25', '2020-11-15 21:00:25'),
(1262, 1, 'en', 'core/setting/setting', 'media.aws_secret_key', 'AWS Secret Key', '2020-11-15 21:00:25', '2020-11-15 21:00:25'),
(1263, 1, 'en', 'core/setting/setting', 'media.aws_default_region', 'AWS Default Region', '2020-11-15 21:00:25', '2020-11-15 21:00:25'),
(1264, 1, 'en', 'core/setting/setting', 'media.aws_bucket', 'AWS Bucket', '2020-11-15 21:00:25', '2020-11-15 21:00:25'),
(1265, 1, 'en', 'core/setting/setting', 'media.aws_url', 'AWS URL', '2020-11-15 21:00:25', '2020-11-15 21:00:25'),
(1266, 1, 'en', 'core/setting/setting', 'media.do_spaces_access_key_id', 'DO Spaces Access Key ID', '2020-11-15 21:00:25', '2020-11-15 21:00:25'),
(1267, 1, 'en', 'core/setting/setting', 'media.do_spaces_secret_key', 'DO Spaces Secret Key', '2020-11-15 21:00:25', '2020-11-15 21:00:25'),
(1268, 1, 'en', 'core/setting/setting', 'media.do_spaces_default_region', 'DO Spaces Default Region', '2020-11-15 21:00:25', '2020-11-15 21:00:25'),
(1269, 1, 'en', 'core/setting/setting', 'media.do_spaces_bucket', 'DO Spaces Bucket', '2020-11-15 21:00:25', '2020-11-15 21:00:25'),
(1270, 1, 'en', 'core/setting/setting', 'media.do_spaces_endpoint', 'DO Spaces Endpoint', '2020-11-15 21:00:25', '2020-11-15 21:00:25'),
(1271, 1, 'en', 'core/setting/setting', 'media.enable_chunk', 'Enable chunk size upload?', '2020-11-15 21:00:25', '2020-11-15 21:00:25'),
(1272, 1, 'en', 'core/setting/setting', 'media.chunk_size', 'Chunk size (Bytes)', '2020-11-15 21:00:25', '2020-11-15 21:00:25'),
(1273, 1, 'en', 'core/setting/setting', 'media.chunk_size_placeholder', 'Default: 1048576 ~ 1MB', '2020-11-15 21:00:25', '2020-11-15 21:00:25'),
(1274, 1, 'en', 'core/setting/setting', 'media.max_file_size', 'Chunk max file size (MB)', '2020-11-15 21:00:25', '2020-11-15 21:00:25'),
(1275, 1, 'en', 'core/setting/setting', 'media.max_file_size_placeholder', 'Default: 1048576 ~ 1GB', '2020-11-15 21:00:25', '2020-11-15 21:00:25'),
(1276, 1, 'en', 'core/setting/setting', 'media.enable_watermark', 'Enable watermark?', '2020-11-15 21:00:25', '2020-11-15 21:00:25'),
(1277, 1, 'en', 'core/setting/setting', 'media.watermark_source', 'Watermark image', '2020-11-15 21:00:25', '2020-11-15 21:00:25'),
(1278, 1, 'en', 'core/setting/setting', 'media.watermark_size', 'Size of watermark (%)', '2020-11-15 21:00:25', '2020-11-15 21:00:25'),
(1279, 1, 'en', 'core/setting/setting', 'media.watermark_size_placeholder', 'Default: 10 (%)', '2020-11-15 21:00:25', '2020-11-15 21:00:25'),
(1280, 1, 'en', 'core/setting/setting', 'media.watermark_opacity', 'Watermark Opacity (%)', '2020-11-15 21:00:25', '2020-11-15 21:00:25'),
(1281, 1, 'en', 'core/setting/setting', 'media.watermark_opacity_placeholder', 'Default: 70 (%)', '2020-11-15 21:00:25', '2020-11-15 21:00:25'),
(1282, 1, 'en', 'core/setting/setting', 'media.watermark_position', 'Watermark position', '2020-11-15 21:00:25', '2020-11-15 21:00:25'),
(1283, 1, 'en', 'core/setting/setting', 'media.watermark_position_x', 'Watermark position X', '2020-11-15 21:00:25', '2020-11-15 21:00:25'),
(1284, 1, 'en', 'core/setting/setting', 'media.watermark_position_y', 'Watermark position Y', '2020-11-15 21:00:25', '2020-11-15 21:00:25'),
(1285, 1, 'en', 'core/setting/setting', 'media.watermark_position_top_left', 'Top left', '2020-11-15 21:00:25', '2020-11-15 21:00:25'),
(1286, 1, 'en', 'core/setting/setting', 'media.watermark_position_top_right', 'Top right', '2020-11-15 21:00:25', '2020-11-15 21:00:25'),
(1287, 1, 'en', 'core/setting/setting', 'media.watermark_position_bottom_left', 'Bottom left', '2020-11-15 21:00:25', '2020-11-15 21:00:25'),
(1288, 1, 'en', 'core/setting/setting', 'media.watermark_position_bottom_right', 'Bottom right', '2020-11-15 21:00:25', '2020-11-15 21:00:25'),
(1289, 1, 'en', 'core/setting/setting', 'media.watermark_position_center', 'Center', '2020-11-15 21:00:25', '2020-11-15 21:00:25'),
(1290, 1, 'en', 'core/setting/setting', 'license.purchase_code', 'Purchase code', '2020-11-15 21:00:25', '2020-11-15 21:00:25'),
(1291, 1, 'en', 'core/setting/setting', 'license.buyer', 'Buyer', '2020-11-15 21:00:25', '2020-11-15 21:00:25'),
(1292, 1, 'en', 'core/setting/setting', 'field_type_not_exists', 'This field type does not exist', '2020-11-15 21:00:25', '2020-11-15 21:00:25'),
(1293, 1, 'en', 'core/setting/setting', 'save_settings', 'Save settings', '2020-11-15 21:00:25', '2020-11-15 21:00:25'),
(1294, 1, 'en', 'core/setting/setting', 'template', 'Template', '2020-11-15 21:00:25', '2020-11-15 21:00:25'),
(1295, 1, 'en', 'core/setting/setting', 'description', 'Description', '2020-11-15 21:00:25', '2020-11-15 21:00:25'),
(1296, 1, 'en', 'core/setting/setting', 'enable', 'Enable', '2020-11-15 21:00:25', '2020-11-15 21:00:25'),
(1297, 1, 'en', 'core/setting/setting', 'send', 'Send', '2020-11-15 21:00:25', '2020-11-15 21:00:25'),
(1298, 1, 'en', 'core/setting/setting', 'test_email_description', 'To send test email, please make sure you are updated configuration to send mail!', '2020-11-15 21:00:25', '2020-11-15 21:00:25'),
(1299, 1, 'en', 'core/setting/setting', 'test_email_input_placeholder', 'Enter the email which you want to send test email.', '2020-11-15 21:00:25', '2020-11-15 21:00:25'),
(1300, 1, 'en', 'core/setting/setting', 'test_email_modal_title', 'Send a test email', '2020-11-15 21:00:25', '2020-11-15 21:00:25'),
(1301, 1, 'en', 'core/setting/setting', 'test_send_mail', 'Send test mail', '2020-11-15 21:00:25', '2020-11-15 21:00:25'),
(1302, 1, 'en', 'core/setting/setting', 'test_email_send_success', 'Send email successfully!', '2020-11-15 21:00:25', '2020-11-15 21:00:25'),
(1303, 1, 'en', 'core/setting/setting', 'locale_direction_ltr', 'Left to Right', '2020-11-15 21:00:25', '2020-11-15 21:00:25'),
(1304, 1, 'en', 'core/setting/setting', 'locale_direction_rtl', 'Right to Left', '2020-11-15 21:00:25', '2020-11-15 21:00:25'),
(1305, 1, 'vi', 'core/setting/setting', 'title', 'Cài đặt', '2020-11-15 21:00:25', '2020-11-15 21:00:25'),
(1306, 1, 'vi', 'core/setting/setting', 'general.theme', 'Giao diện', '2020-11-15 21:00:25', '2020-11-15 21:00:25'),
(1307, 1, 'vi', 'core/setting/setting', 'general.description', 'Cấu hình những thông tin cài đặt website.', '2020-11-15 21:00:25', '2020-11-15 21:00:25'),
(1308, 1, 'vi', 'core/setting/setting', 'general.title', 'Thông tin chung', '2020-11-15 21:00:25', '2020-11-15 21:00:25'),
(1309, 1, 'vi', 'core/setting/setting', 'general.general_block', 'Thông tin chung', '2020-11-15 21:00:25', '2020-11-15 21:00:25'),
(1310, 1, 'vi', 'core/setting/setting', 'general.site_title', 'Tên trang', '2020-11-15 21:00:25', '2020-11-15 21:00:25'),
(1311, 1, 'vi', 'core/setting/setting', 'general.admin_email', 'Email quản trị viên', '2020-11-15 21:00:25', '2020-11-15 21:00:25'),
(1312, 1, 'vi', 'core/setting/setting', 'general.seo_block', 'Cấu hình SEO', '2020-11-15 21:00:25', '2020-11-15 21:00:25'),
(1313, 1, 'vi', 'core/setting/setting', 'general.seo_title', 'Tiêu đề SEO', '2020-11-15 21:00:25', '2020-11-15 21:00:25'),
(1314, 1, 'vi', 'core/setting/setting', 'general.seo_description', 'Mô tả SEO', '2020-11-15 21:00:25', '2020-11-15 21:00:25'),
(1315, 1, 'vi', 'core/setting/setting', 'general.seo_keywords', 'Từ khoá SEO', '2020-11-15 21:00:25', '2020-11-15 21:00:25'),
(1316, 1, 'vi', 'core/setting/setting', 'general.webmaster_tools_block', 'Google Webmaster Tools', '2020-11-15 21:00:25', '2020-11-15 21:00:25'),
(1317, 1, 'vi', 'core/setting/setting', 'general.google_site_verification', 'Google site verification', '2020-11-15 21:00:25', '2020-11-15 21:00:25'),
(1318, 1, 'vi', 'core/setting/setting', 'general.enable_captcha', 'Sử dụng Captcha?', '2020-11-15 21:00:25', '2020-11-15 21:00:25'),
(1319, 1, 'vi', 'core/setting/setting', 'general.contact_block', 'Thông tin liên hệ', '2020-11-15 21:00:25', '2020-11-15 21:00:25'),
(1320, 1, 'vi', 'core/setting/setting', 'general.placeholder.site_title', 'Tên trang (tối đa 120 kí tự)', '2020-11-15 21:00:25', '2020-11-15 21:00:25'),
(1321, 1, 'vi', 'core/setting/setting', 'general.placeholder.admin_email', 'Admin Email', '2020-11-15 21:00:25', '2020-11-15 21:00:25'),
(1322, 1, 'vi', 'core/setting/setting', 'general.placeholder.google_analytics', 'Ví dụ: UA-42767940-2', '2020-11-15 21:00:25', '2020-11-15 21:00:25'),
(1323, 1, 'vi', 'core/setting/setting', 'general.placeholder.google_site_verification', 'Mã xác nhận trang web dùng cho Google Webmaster Tool', '2020-11-15 21:00:25', '2020-11-15 21:00:25'),
(1324, 1, 'vi', 'core/setting/setting', 'general.placeholder.seo_title', 'Tiêu đề SEO (tối đa 120 kí tự)', '2020-11-15 21:00:25', '2020-11-15 21:00:25'),
(1325, 1, 'vi', 'core/setting/setting', 'general.placeholder.seo_description', 'Mô tả SEO (tối đa 120 kí tự)', '2020-11-15 21:00:25', '2020-11-15 21:00:25'),
(1326, 1, 'vi', 'core/setting/setting', 'general.placeholder.seo_keywords', 'Từ khoá SEO (tối đa 60 kí tự, phân cách từ khóa bằng dấu phẩy)', '2020-11-15 21:00:25', '2020-11-15 21:00:25'),
(1327, 1, 'vi', 'core/setting/setting', 'general.enable_change_admin_theme', 'Cho phép thay đổi giao diện quản trị?', '2020-11-15 21:00:25', '2020-11-15 21:00:25'),
(1328, 1, 'vi', 'core/setting/setting', 'general.enable_multi_language_in_admin', 'Cho phép thay đổi ngôn ngữ trang quản trị?', '2020-11-15 21:00:25', '2020-11-15 21:00:25'),
(1329, 1, 'vi', 'core/setting/setting', 'general.enable', 'Bật', '2020-11-15 21:00:25', '2020-11-15 21:00:25'),
(1330, 1, 'vi', 'core/setting/setting', 'general.disable', 'Tắt', '2020-11-15 21:00:25', '2020-11-15 21:00:25'),
(1331, 1, 'vi', 'core/setting/setting', 'general.enable_cache', 'Bật bộ nhớ đệm?', '2020-11-15 21:00:25', '2020-11-15 21:00:25'),
(1332, 1, 'vi', 'core/setting/setting', 'general.cache_time', 'Thời gian lưu bộ nhớ đệm', '2020-11-15 21:00:25', '2020-11-15 21:00:25'),
(1333, 1, 'vi', 'core/setting/setting', 'general.cache_time_site_map', 'Thời gian lưu sơ đồ trang trong bộ nhớ đệm', '2020-11-15 21:00:25', '2020-11-15 21:00:25'),
(1334, 1, 'vi', 'core/setting/setting', 'general.admin_logo', 'Logo trang quản trị', '2020-11-15 21:00:25', '2020-11-15 21:00:25'),
(1335, 1, 'vi', 'core/setting/setting', 'general.admin_title', 'Tiêu đề trang quản trị', '2020-11-15 21:00:25', '2020-11-15 21:00:25'),
(1336, 1, 'vi', 'core/setting/setting', 'general.admin_title_placeholder', 'Tiêu đề hiển thị trên thẻ trình duyệt', '2020-11-15 21:00:25', '2020-11-15 21:00:25'),
(1337, 1, 'vi', 'core/setting/setting', 'general.rich_editor', 'Bộ soạn thảo văn bản', '2020-11-15 21:00:25', '2020-11-15 21:00:25'),
(1338, 1, 'vi', 'core/setting/setting', 'general.cache_block', 'Bộ nhớ đệm', '2020-11-15 21:00:25', '2020-11-15 21:00:25'),
(1339, 1, 'vi', 'core/setting/setting', 'general.yes', 'Bật', '2020-11-15 21:00:25', '2020-11-15 21:00:25'),
(1340, 1, 'vi', 'core/setting/setting', 'general.no', 'Tắt', '2020-11-15 21:00:25', '2020-11-15 21:00:25'),
(1341, 1, 'vi', 'core/setting/setting', 'email.subject', 'Tiêu đề', '2020-11-15 21:00:25', '2020-11-15 21:00:25'),
(1342, 1, 'vi', 'core/setting/setting', 'email.content', 'Nội dung', '2020-11-15 21:00:25', '2020-11-15 21:00:25'),
(1343, 1, 'vi', 'core/setting/setting', 'email.title', 'Cấu hình email template', '2020-11-15 21:00:25', '2020-11-15 21:00:25'),
(1344, 1, 'vi', 'core/setting/setting', 'email.description', 'Cấu trúc file template sử dụng HTML và các biến trong hệ thống.', '2020-11-15 21:00:25', '2020-11-15 21:00:25'),
(1345, 1, 'vi', 'core/setting/setting', 'email.reset_to_default', 'Khôi phục về mặc định', '2020-11-15 21:00:25', '2020-11-15 21:00:25'),
(1346, 1, 'vi', 'core/setting/setting', 'email.back', 'Trở lại trang cài đặt', '2020-11-15 21:00:25', '2020-11-15 21:00:25'),
(1347, 1, 'vi', 'core/setting/setting', 'email.reset_success', 'Khôi phục mặc định thành công', '2020-11-15 21:00:25', '2020-11-15 21:00:25'),
(1348, 1, 'vi', 'core/setting/setting', 'email.confirm_reset', 'Xác nhận khôi phục mặc định?', '2020-11-15 21:00:25', '2020-11-15 21:00:25'),
(1349, 1, 'vi', 'core/setting/setting', 'email.confirm_message', 'Bạn có chắc chắn muốn khôi phục về bản mặc định?', '2020-11-15 21:00:25', '2020-11-15 21:00:25'),
(1350, 1, 'vi', 'core/setting/setting', 'email.continue', 'Tiếp tục', '2020-11-15 21:00:25', '2020-11-15 21:00:25'),
(1351, 1, 'vi', 'core/setting/setting', 'email.sender_name', 'Tên người gửi', '2020-11-15 21:00:25', '2020-11-15 21:00:25'),
(1352, 1, 'vi', 'core/setting/setting', 'email.sender_name_placeholder', 'Tên', '2020-11-15 21:00:25', '2020-11-15 21:00:25'),
(1353, 1, 'vi', 'core/setting/setting', 'email.sender_email', 'Email của người gửi', '2020-11-15 21:00:25', '2020-11-15 21:00:25'),
(1354, 1, 'vi', 'core/setting/setting', 'email.driver', 'Loại', '2020-11-15 21:00:25', '2020-11-15 21:00:25'),
(1355, 1, 'vi', 'core/setting/setting', 'email.port', 'Cổng', '2020-11-15 21:00:25', '2020-11-15 21:00:25'),
(1356, 1, 'vi', 'core/setting/setting', 'email.port_placeholder', 'Ví dụ: 587', '2020-11-15 21:00:25', '2020-11-15 21:00:25'),
(1357, 1, 'vi', 'core/setting/setting', 'email.host', 'Máy chủ', '2020-11-15 21:00:25', '2020-11-15 21:00:25'),
(1358, 1, 'vi', 'core/setting/setting', 'email.host_placeholder', 'Ví dụ: smtp.gmail.com', '2020-11-15 21:00:25', '2020-11-15 21:00:25'),
(1359, 1, 'vi', 'core/setting/setting', 'email.username', 'Tên đăng nhập', '2020-11-15 21:00:25', '2020-11-15 21:00:25'),
(1360, 1, 'vi', 'core/setting/setting', 'email.username_placeholder', 'Tên đăng nhập vào máy chủ mail', '2020-11-15 21:00:25', '2020-11-15 21:00:25'),
(1361, 1, 'vi', 'core/setting/setting', 'email.password', 'Mật khẩu', '2020-11-15 21:00:25', '2020-11-15 21:00:25'),
(1362, 1, 'vi', 'core/setting/setting', 'email.password_placeholder', 'Mật khẩu đăng nhập vào máy chủ mail', '2020-11-15 21:00:25', '2020-11-15 21:00:25'),
(1363, 1, 'vi', 'core/setting/setting', 'email.encryption', 'Mã hoá', '2020-11-15 21:00:25', '2020-11-15 21:00:25'),
(1364, 1, 'vi', 'core/setting/setting', 'email.mail_gun_domain', 'Tên miền', '2020-11-15 21:00:25', '2020-11-15 21:00:25'),
(1365, 1, 'vi', 'core/setting/setting', 'email.mail_gun_domain_placeholder', 'Tên miền', '2020-11-15 21:00:25', '2020-11-15 21:00:25'),
(1366, 1, 'vi', 'core/setting/setting', 'email.mail_gun_secret', 'Chuỗi bí mật', '2020-11-15 21:00:25', '2020-11-15 21:00:25'),
(1367, 1, 'vi', 'core/setting/setting', 'email.mail_gun_secret_placeholder', 'Chuỗi bí mật', '2020-11-15 21:00:25', '2020-11-15 21:00:25'),
(1368, 1, 'vi', 'core/setting/setting', 'email.template_title', 'Mẫu giao diện email', '2020-11-15 21:00:25', '2020-11-15 21:00:25'),
(1369, 1, 'vi', 'core/setting/setting', 'email.template_description', 'Giao diện mặc định cho tất cả email', '2020-11-15 21:00:25', '2020-11-15 21:00:25'),
(1370, 1, 'vi', 'core/setting/setting', 'email.template_header', 'Mẫu cho phần trên của email', '2020-11-15 21:00:25', '2020-11-15 21:00:25'),
(1371, 1, 'vi', 'core/setting/setting', 'email.template_header_description', 'Phần trên của tất cả email', '2020-11-15 21:00:25', '2020-11-15 21:00:25'),
(1372, 1, 'vi', 'core/setting/setting', 'email.template_footer', 'Mẫu cho phần dưới của email', '2020-11-15 21:00:25', '2020-11-15 21:00:25'),
(1373, 1, 'vi', 'core/setting/setting', 'email.template_footer_description', 'Phần dưới của tất cả email', '2020-11-15 21:00:25', '2020-11-15 21:00:25'),
(1374, 1, 'vi', 'core/setting/setting', 'save_settings', 'Lưu cài đặt', '2020-11-15 21:00:25', '2020-11-15 21:00:25'),
(1375, 1, 'vi', 'core/setting/setting', 'template', 'Mẫu', '2020-11-15 21:00:25', '2020-11-15 21:00:25'),
(1376, 1, 'vi', 'core/setting/setting', 'description', 'Mô tả', '2020-11-15 21:00:25', '2020-11-15 21:00:25'),
(1377, 1, 'vi', 'core/setting/setting', 'enable', 'Bật', '2020-11-15 21:00:25', '2020-11-15 21:00:25'),
(1378, 1, 'vi', 'core/setting/setting', 'test_send_mail', 'Gửi thử nghiệm', '2020-11-15 21:00:25', '2020-11-15 21:00:25'),
(1379, 1, 'en', 'core/table/general', 'operations', 'Operations', '2020-11-15 21:00:25', '2020-11-15 21:00:25'),
(1380, 1, 'en', 'core/table/general', 'loading_data', 'Loading data from server', '2020-11-15 21:00:26', '2020-11-15 21:00:26'),
(1381, 1, 'en', 'core/table/general', 'display', 'Display', '2020-11-15 21:00:26', '2020-11-15 21:00:26'),
(1382, 1, 'en', 'core/table/general', 'all', 'All', '2020-11-15 21:00:26', '2020-11-15 21:00:26'),
(1383, 1, 'en', 'core/table/general', 'edit_entry', 'Edit', '2020-11-15 21:00:26', '2020-11-15 21:00:26'),
(1384, 1, 'en', 'core/table/general', 'delete_entry', 'Delete', '2020-11-15 21:00:26', '2020-11-15 21:00:26'),
(1385, 1, 'en', 'core/table/general', 'show_from', 'Showing from', '2020-11-15 21:00:26', '2020-11-15 21:00:26'),
(1386, 1, 'en', 'core/table/general', 'to', 'to', '2020-11-15 21:00:26', '2020-11-15 21:00:26'),
(1387, 1, 'en', 'core/table/general', 'in', 'in', '2020-11-15 21:00:26', '2020-11-15 21:00:26'),
(1388, 1, 'en', 'core/table/general', 'records', 'records', '2020-11-15 21:00:26', '2020-11-15 21:00:26'),
(1389, 1, 'en', 'core/table/general', 'no_data', 'No data to display', '2020-11-15 21:00:26', '2020-11-15 21:00:26'),
(1390, 1, 'en', 'core/table/general', 'no_record', 'No record', '2020-11-15 21:00:26', '2020-11-15 21:00:26'),
(1391, 1, 'en', 'core/table/general', 'loading', 'Loading data from server', '2020-11-15 21:00:26', '2020-11-15 21:00:26'),
(1392, 1, 'en', 'core/table/general', 'confirm_delete', 'Confirm delete', '2020-11-15 21:00:26', '2020-11-15 21:00:26'),
(1393, 1, 'en', 'core/table/general', 'confirm_delete_msg', 'Do you really want to delete this record?', '2020-11-15 21:00:26', '2020-11-15 21:00:26'),
(1394, 1, 'en', 'core/table/general', 'cancel', 'Cancel', '2020-11-15 21:00:26', '2020-11-15 21:00:26'),
(1395, 1, 'en', 'core/table/general', 'delete', 'Delete', '2020-11-15 21:00:26', '2020-11-15 21:00:26'),
(1396, 1, 'en', 'core/table/general', 'close', 'Close', '2020-11-15 21:00:26', '2020-11-15 21:00:26'),
(1397, 1, 'en', 'core/table/general', 'contains', 'Contains', '2020-11-15 21:00:26', '2020-11-15 21:00:26'),
(1398, 1, 'en', 'core/table/general', 'is_equal_to', 'Is equal to', '2020-11-15 21:00:26', '2020-11-15 21:00:26'),
(1399, 1, 'en', 'core/table/general', 'greater_than', 'Greater than', '2020-11-15 21:00:26', '2020-11-15 21:00:26'),
(1400, 1, 'en', 'core/table/general', 'less_than', 'Less than', '2020-11-15 21:00:26', '2020-11-15 21:00:26'),
(1401, 1, 'en', 'core/table/general', 'value', 'Value', '2020-11-15 21:00:26', '2020-11-15 21:00:26'),
(1402, 1, 'en', 'core/table/general', 'select_field', 'Select field', '2020-11-15 21:00:26', '2020-11-15 21:00:26'),
(1403, 1, 'en', 'core/table/general', 'reset', 'Reset', '2020-11-15 21:00:26', '2020-11-15 21:00:26'),
(1404, 1, 'en', 'core/table/general', 'add_additional_filter', 'Add additional filter', '2020-11-15 21:00:26', '2020-11-15 21:00:26'),
(1405, 1, 'en', 'core/table/general', 'apply', 'Apply', '2020-11-15 21:00:26', '2020-11-15 21:00:26'),
(1406, 1, 'en', 'core/table/general', 'filters', 'Filters', '2020-11-15 21:00:26', '2020-11-15 21:00:26'),
(1407, 1, 'en', 'core/table/general', 'bulk_change', 'Bulk changes', '2020-11-15 21:00:26', '2020-11-15 21:00:26'),
(1408, 1, 'en', 'core/table/general', 'select_option', 'Select option', '2020-11-15 21:00:26', '2020-11-15 21:00:26'),
(1409, 1, 'en', 'core/table/general', 'bulk_actions', 'Bulk Actions', '2020-11-15 21:00:26', '2020-11-15 21:00:26'),
(1410, 1, 'en', 'core/table/general', 'save_bulk_change_success', 'Update data for selected record(s) successfully!', '2020-11-15 21:00:26', '2020-11-15 21:00:26'),
(1411, 1, 'en', 'core/table/general', 'please_select_record', 'Please select at least one record to perform this action!', '2020-11-15 21:00:26', '2020-11-15 21:00:26'),
(1412, 1, 'en', 'core/table/general', 'filtered', '(filtered from _MAX_ total records)', '2020-11-15 21:00:26', '2020-11-15 21:00:26'),
(1413, 1, 'en', 'core/table/general', 'search', 'Search...', '2020-11-15 21:00:26', '2020-11-15 21:00:26'),
(1414, 1, 'en', 'core/table/table', 'operations', 'Operations', '2020-11-15 21:00:26', '2020-11-15 21:00:26'),
(1415, 1, 'en', 'core/table/table', 'loading_data', 'Loading data from server', '2020-11-15 21:00:26', '2020-11-15 21:00:26'),
(1416, 1, 'en', 'core/table/table', 'display', 'Display', '2020-11-15 21:00:26', '2020-11-15 21:00:26'),
(1417, 1, 'en', 'core/table/table', 'all', 'All', '2020-11-15 21:00:26', '2020-11-15 21:00:26'),
(1418, 1, 'en', 'core/table/table', 'edit_entry', 'Edit', '2020-11-15 21:00:26', '2020-11-15 21:00:26'),
(1419, 1, 'en', 'core/table/table', 'delete_entry', 'Delete', '2020-11-15 21:00:26', '2020-11-15 21:00:26'),
(1420, 1, 'en', 'core/table/table', 'show_from', 'Showing from', '2020-11-15 21:00:26', '2020-11-15 21:00:26'),
(1421, 1, 'en', 'core/table/table', 'to', 'to', '2020-11-15 21:00:26', '2020-11-15 21:00:26'),
(1422, 1, 'en', 'core/table/table', 'in', 'in', '2020-11-15 21:00:26', '2020-11-15 21:00:26'),
(1423, 1, 'en', 'core/table/table', 'records', 'records', '2020-11-15 21:00:26', '2020-11-15 21:00:26'),
(1424, 1, 'en', 'core/table/table', 'no_data', 'No data to display', '2020-11-15 21:00:26', '2020-11-15 21:00:26'),
(1425, 1, 'en', 'core/table/table', 'no_record', 'No record', '2020-11-15 21:00:26', '2020-11-15 21:00:26'),
(1426, 1, 'en', 'core/table/table', 'loading', 'Loading data from server', '2020-11-15 21:00:26', '2020-11-15 21:00:26'),
(1427, 1, 'en', 'core/table/table', 'confirm_delete', 'Confirm delete', '2020-11-15 21:00:26', '2020-11-15 21:00:26'),
(1428, 1, 'en', 'core/table/table', 'confirm_delete_msg', 'Do you really want to delete this record?', '2020-11-15 21:00:26', '2020-11-15 21:00:26'),
(1429, 1, 'en', 'core/table/table', 'cancel', 'Cancel', '2020-11-15 21:00:26', '2020-11-15 21:00:26'),
(1430, 1, 'en', 'core/table/table', 'delete', 'Delete', '2020-11-15 21:00:26', '2020-11-15 21:00:26'),
(1431, 1, 'en', 'core/table/table', 'close', 'Close', '2020-11-15 21:00:26', '2020-11-15 21:00:26'),
(1432, 1, 'en', 'core/table/table', 'contains', 'Contains', '2020-11-15 21:00:26', '2020-11-15 21:00:26'),
(1433, 1, 'en', 'core/table/table', 'is_equal_to', 'Is equal to', '2020-11-15 21:00:26', '2020-11-15 21:00:26'),
(1434, 1, 'en', 'core/table/table', 'greater_than', 'Greater than', '2020-11-15 21:00:26', '2020-11-15 21:00:26'),
(1435, 1, 'en', 'core/table/table', 'less_than', 'Less than', '2020-11-15 21:00:26', '2020-11-15 21:00:26'),
(1436, 1, 'en', 'core/table/table', 'value', 'Value', '2020-11-15 21:00:26', '2020-11-15 21:00:26'),
(1437, 1, 'en', 'core/table/table', 'select_field', 'Select field', '2020-11-15 21:00:26', '2020-11-15 21:00:26'),
(1438, 1, 'en', 'core/table/table', 'reset', 'Reset', '2020-11-15 21:00:26', '2020-11-15 21:00:26'),
(1439, 1, 'en', 'core/table/table', 'add_additional_filter', 'Add additional filter', '2020-11-15 21:00:26', '2020-11-15 21:00:26'),
(1440, 1, 'en', 'core/table/table', 'apply', 'Apply', '2020-11-15 21:00:26', '2020-11-15 21:00:26'),
(1441, 1, 'en', 'core/table/table', 'filters', 'Filters', '2020-11-15 21:00:26', '2020-11-15 21:00:26'),
(1442, 1, 'en', 'core/table/table', 'bulk_change', 'Bulk changes', '2020-11-15 21:00:26', '2020-11-15 21:00:26'),
(1443, 1, 'en', 'core/table/table', 'select_option', 'Select option', '2020-11-15 21:00:26', '2020-11-15 21:00:26'),
(1444, 1, 'en', 'core/table/table', 'bulk_actions', 'Bulk Actions', '2020-11-15 21:00:26', '2020-11-15 21:00:26'),
(1445, 1, 'en', 'core/table/table', 'save_bulk_change_success', 'Update data for selected record(s) successfully!', '2020-11-15 21:00:26', '2020-11-15 21:00:26'),
(1446, 1, 'en', 'core/table/table', 'please_select_record', 'Please select at least one record to perform this action!', '2020-11-15 21:00:26', '2020-11-15 21:00:26'),
(1447, 1, 'en', 'core/table/table', 'filtered', '(filtered from _MAX_ total records)', '2020-11-15 21:00:26', '2020-11-15 21:00:26'),
(1448, 1, 'en', 'core/table/table', 'search', 'Search...', '2020-11-15 21:00:26', '2020-11-15 21:00:26'),
(1449, 1, 'vi', 'core/table/general', 'operations', 'Hành động', '2020-11-15 21:00:26', '2020-11-15 21:00:26'),
(1450, 1, 'vi', 'core/table/general', 'loading_data', 'Đang tải dữ liệu từ hệ thống', '2020-11-15 21:00:26', '2020-11-15 21:00:26'),
(1451, 1, 'vi', 'core/table/general', 'display', 'Hiển thị', '2020-11-15 21:00:26', '2020-11-15 21:00:26'),
(1452, 1, 'vi', 'core/table/general', 'all', 'Tất cả', '2020-11-15 21:00:26', '2020-11-15 21:00:26'),
(1453, 1, 'vi', 'core/table/general', 'edit_entry', 'Sửa', '2020-11-15 21:00:26', '2020-11-15 21:00:26'),
(1454, 1, 'vi', 'core/table/general', 'delete_entry', 'Xoá', '2020-11-15 21:00:26', '2020-11-15 21:00:26'),
(1455, 1, 'vi', 'core/table/general', 'show_from', 'Hiển thị từ', '2020-11-15 21:00:26', '2020-11-15 21:00:26'),
(1456, 1, 'vi', 'core/table/general', 'to', 'đến', '2020-11-15 21:00:26', '2020-11-15 21:00:26'),
(1457, 1, 'vi', 'core/table/general', 'in', 'trong tổng số', '2020-11-15 21:00:26', '2020-11-15 21:00:26'),
(1458, 1, 'vi', 'core/table/general', 'records', 'bản ghi', '2020-11-15 21:00:26', '2020-11-15 21:00:26'),
(1459, 1, 'vi', 'core/table/general', 'no_data', 'Không có dữ liệu để hiển thị', '2020-11-15 21:00:26', '2020-11-15 21:00:26'),
(1460, 1, 'vi', 'core/table/general', 'no_record', 'không có bản ghi nào', '2020-11-15 21:00:26', '2020-11-15 21:00:26'),
(1461, 1, 'vi', 'core/table/general', 'loading', 'Đang tải dữ liệu từ hệ thống', '2020-11-15 21:00:26', '2020-11-15 21:00:26'),
(1462, 1, 'vi', 'core/table/general', 'confirm_delete', 'Xác nhận xoá', '2020-11-15 21:00:26', '2020-11-15 21:00:26'),
(1463, 1, 'vi', 'core/table/general', 'confirm_delete_msg', 'Bạn có chắc chắn muốn xoá bản ghi này?', '2020-11-15 21:00:26', '2020-11-15 21:00:26'),
(1464, 1, 'vi', 'core/table/general', 'cancel', 'Huỷ bỏ', '2020-11-15 21:00:26', '2020-11-15 21:00:26'),
(1465, 1, 'vi', 'core/table/general', 'delete', 'Xoá', '2020-11-15 21:00:26', '2020-11-15 21:00:26'),
(1466, 1, 'vi', 'core/table/general', 'close', 'Đóng', '2020-11-15 21:00:26', '2020-11-15 21:00:26'),
(1467, 1, 'vi', 'core/table/general', 'is_equal_to', 'Bằng với', '2020-11-15 21:00:26', '2020-11-15 21:00:26'),
(1468, 1, 'vi', 'core/table/general', 'greater_than', 'Lớn hơn', '2020-11-15 21:00:26', '2020-11-15 21:00:26'),
(1469, 1, 'vi', 'core/table/general', 'less_than', 'Nhỏ hơn', '2020-11-15 21:00:26', '2020-11-15 21:00:26'),
(1470, 1, 'vi', 'core/table/general', 'value', 'Giá trị', '2020-11-15 21:00:26', '2020-11-15 21:00:26'),
(1471, 1, 'vi', 'core/table/general', 'select_field', 'Chọn trường', '2020-11-15 21:00:26', '2020-11-15 21:00:26'),
(1472, 1, 'vi', 'core/table/general', 'reset', 'Làm mới', '2020-11-15 21:00:26', '2020-11-15 21:00:26'),
(1473, 1, 'vi', 'core/table/general', 'add_additional_filter', 'Thêm bộ lọc', '2020-11-15 21:00:26', '2020-11-15 21:00:26'),
(1474, 1, 'vi', 'core/table/general', 'apply', 'Áp dụng', '2020-11-15 21:00:26', '2020-11-15 21:00:26'),
(1475, 1, 'vi', 'core/table/general', 'select_option', 'Lựa chọn', '2020-11-15 21:00:26', '2020-11-15 21:00:26'),
(1476, 1, 'vi', 'core/table/general', 'filters', 'Lọc dữ liệu', '2020-11-15 21:00:26', '2020-11-15 21:00:26'),
(1477, 1, 'vi', 'core/table/general', 'bulk_change', 'Thay đổi hàng loạt', '2020-11-15 21:00:26', '2020-11-15 21:00:26'),
(1478, 1, 'vi', 'core/table/general', 'bulk_actions', 'Hành động', '2020-11-15 21:00:26', '2020-11-15 21:00:26'),
(1479, 1, 'vi', 'core/table/general', 'contains', 'Bao gồm', '2020-11-15 21:00:26', '2020-11-15 21:00:26'),
(1480, 1, 'vi', 'core/table/general', 'filtered', '(đã được lọc từ _MAX_ bản ghi)', '2020-11-15 21:00:26', '2020-11-15 21:00:26'),
(1481, 1, 'en', 'packages/menu/menu', 'name', 'Menus', '2020-11-15 21:00:26', '2020-11-15 21:00:26'),
(1482, 1, 'en', 'packages/menu/menu', 'key_name', 'Menu name (key: :key)', '2020-11-15 21:00:26', '2020-11-15 21:00:26'),
(1483, 1, 'en', 'packages/menu/menu', 'basic_info', 'Basic information', '2020-11-15 21:00:26', '2020-11-15 21:00:26'),
(1484, 1, 'en', 'packages/menu/menu', 'add_to_menu', 'Add to menu', '2020-11-15 21:00:26', '2020-11-15 21:00:26'),
(1485, 1, 'en', 'packages/menu/menu', 'custom_link', 'Custom link', '2020-11-15 21:00:26', '2020-11-15 21:00:26'),
(1486, 1, 'en', 'packages/menu/menu', 'add_link', 'Add link', '2020-11-15 21:00:26', '2020-11-15 21:00:26'),
(1487, 1, 'en', 'packages/menu/menu', 'structure', 'Menu structure', '2020-11-15 21:00:26', '2020-11-15 21:00:26'),
(1488, 1, 'en', 'packages/menu/menu', 'remove', 'Remove', '2020-11-15 21:00:26', '2020-11-15 21:00:26'),
(1489, 1, 'en', 'packages/menu/menu', 'cancel', 'Cancel', '2020-11-15 21:00:26', '2020-11-15 21:00:26'),
(1490, 1, 'en', 'packages/menu/menu', 'title', 'Title', '2020-11-15 21:00:26', '2020-11-15 21:00:26'),
(1491, 1, 'en', 'packages/menu/menu', 'icon', 'Icon', '2020-11-15 21:00:26', '2020-11-15 21:00:26'),
(1492, 1, 'en', 'packages/menu/menu', 'url', 'URL', '2020-11-15 21:00:26', '2020-11-15 21:00:26'),
(1493, 1, 'en', 'packages/menu/menu', 'target', 'Target', '2020-11-15 21:00:26', '2020-11-15 21:00:26'),
(1494, 1, 'en', 'packages/menu/menu', 'css_class', 'CSS class', '2020-11-15 21:00:26', '2020-11-15 21:00:26'),
(1495, 1, 'en', 'packages/menu/menu', 'self_open_link', 'Open link directly', '2020-11-15 21:00:26', '2020-11-15 21:00:26'),
(1496, 1, 'en', 'packages/menu/menu', 'blank_open_link', 'Open link in new tab', '2020-11-15 21:00:26', '2020-11-15 21:00:26'),
(1497, 1, 'en', 'packages/menu/menu', 'create', 'Create menu', '2020-11-15 21:00:26', '2020-11-15 21:00:26'),
(1498, 1, 'en', 'packages/menu/menu', 'edit', 'Edit menu', '2020-11-15 21:00:26', '2020-11-15 21:00:26'),
(1499, 1, 'en', 'packages/menu/menu', 'menu_settings', 'Menu settings', '2020-11-15 21:00:26', '2020-11-15 21:00:26'),
(1500, 1, 'en', 'packages/menu/menu', 'display_location', 'Display location', '2020-11-15 21:00:26', '2020-11-15 21:00:26'),
(1501, 1, 'vi', 'packages/menu/menu', 'name', 'Menu', '2020-11-15 21:00:26', '2020-11-15 21:00:26'),
(1502, 1, 'vi', 'packages/menu/menu', 'cancel', 'Hủy bỏ', '2020-11-15 21:00:26', '2020-11-15 21:00:26'),
(1503, 1, 'vi', 'packages/menu/menu', 'add_link', 'Thêm liên kết', '2020-11-15 21:00:26', '2020-11-15 21:00:26'),
(1504, 1, 'vi', 'packages/menu/menu', 'add_to_menu', 'Thêm vào trình đơn', '2020-11-15 21:00:26', '2020-11-15 21:00:26'),
(1505, 1, 'vi', 'packages/menu/menu', 'basic_info', 'Thông tin cơ bản', '2020-11-15 21:00:26', '2020-11-15 21:00:26'),
(1506, 1, 'vi', 'packages/menu/menu', 'blank_open_link', 'Mở liên kết trong tab mới', '2020-11-15 21:00:26', '2020-11-15 21:00:26'),
(1507, 1, 'vi', 'packages/menu/menu', 'css_class', 'CSS class', '2020-11-15 21:00:26', '2020-11-15 21:00:26'),
(1508, 1, 'vi', 'packages/menu/menu', 'custom_link', 'Liên kết tùy chọn', '2020-11-15 21:00:26', '2020-11-15 21:00:26'),
(1509, 1, 'vi', 'packages/menu/menu', 'icon', 'Biểu tượng', '2020-11-15 21:00:26', '2020-11-15 21:00:26'),
(1510, 1, 'vi', 'packages/menu/menu', 'key_name', 'Tên menu (key::key)', '2020-11-15 21:00:26', '2020-11-15 21:00:26'),
(1511, 1, 'vi', 'packages/menu/menu', 'remove', 'Xóa', '2020-11-15 21:00:26', '2020-11-15 21:00:26'),
(1512, 1, 'vi', 'packages/menu/menu', 'self_open_link', 'Mở liên kết trong tab hiện tại', '2020-11-15 21:00:26', '2020-11-15 21:00:26'),
(1513, 1, 'vi', 'packages/menu/menu', 'structure', 'Cấu trúc trình đơn', '2020-11-15 21:00:26', '2020-11-15 21:00:26'),
(1514, 1, 'vi', 'packages/menu/menu', 'target', 'Target', '2020-11-15 21:00:26', '2020-11-15 21:00:26'),
(1515, 1, 'vi', 'packages/menu/menu', 'title', 'Tiêu đề', '2020-11-15 21:00:26', '2020-11-15 21:00:26'),
(1516, 1, 'vi', 'packages/menu/menu', 'url', 'URL', '2020-11-15 21:00:26', '2020-11-15 21:00:26'),
(1517, 1, 'vi', 'packages/menu/menu', 'create', 'Tạo trình đơn', '2020-11-15 21:00:26', '2020-11-15 21:00:26'),
(1518, 1, 'vi', 'packages/menu/menu', 'edit', 'Sửa trình đơn', '2020-11-15 21:00:26', '2020-11-15 21:00:26'),
(1519, 1, 'en', 'packages/optimize/optimize', 'settings.title', 'Optimize page speed', '2020-11-15 21:00:26', '2020-11-15 21:00:26'),
(1520, 1, 'en', 'packages/optimize/optimize', 'settings.description', 'Minify HTML output, inline CSS, remove comments...', '2020-11-15 21:00:26', '2020-11-15 21:00:26'),
(1521, 1, 'en', 'packages/optimize/optimize', 'settings.enable', 'Enable optimize page speed?', '2020-11-15 21:00:26', '2020-11-15 21:00:26'),
(1522, 1, 'en', 'packages/page/pages', 'create', 'Create new page', '2020-11-15 21:00:26', '2020-11-15 21:00:26'),
(1523, 1, 'en', 'packages/page/pages', 'edit', 'Edit page', '2020-11-15 21:00:26', '2020-11-15 21:00:26'),
(1524, 1, 'en', 'packages/page/pages', 'form.name', 'Name', '2020-11-15 21:00:26', '2020-11-15 21:00:26'),
(1525, 1, 'en', 'packages/page/pages', 'form.name_placeholder', 'Page\'s name (Maximum 120 characters)', '2020-11-15 21:00:26', '2020-11-15 21:00:26'),
(1526, 1, 'en', 'packages/page/pages', 'form.content', 'Content', '2020-11-15 21:00:26', '2020-11-15 21:00:26'),
(1527, 1, 'en', 'packages/page/pages', 'form.note', 'Note content', '2020-11-15 21:00:26', '2020-11-15 21:00:26'),
(1528, 1, 'en', 'packages/page/pages', 'notices.no_select', 'Please select at least one record to take this action!', '2020-11-15 21:00:26', '2020-11-15 21:00:26'),
(1529, 1, 'en', 'packages/page/pages', 'notices.update_success_message', 'Update successfully', '2020-11-15 21:00:26', '2020-11-15 21:00:26'),
(1530, 1, 'en', 'packages/page/pages', 'cannot_delete', 'Page could not be deleted', '2020-11-15 21:00:26', '2020-11-15 21:00:26'),
(1531, 1, 'en', 'packages/page/pages', 'deleted', 'Page deleted', '2020-11-15 21:00:26', '2020-11-15 21:00:26'),
(1532, 1, 'en', 'packages/page/pages', 'pages', 'Pages', '2020-11-15 21:00:26', '2020-11-15 21:00:26'),
(1533, 1, 'en', 'packages/page/pages', 'menu', 'Pages', '2020-11-15 21:00:26', '2020-11-15 21:00:26'),
(1534, 1, 'en', 'packages/page/pages', 'menu_name', 'Pages', '2020-11-15 21:00:26', '2020-11-15 21:00:26'),
(1535, 1, 'en', 'packages/page/pages', 'edit_this_page', 'Edit this page', '2020-11-15 21:00:26', '2020-11-15 21:00:26'),
(1536, 1, 'en', 'packages/page/pages', 'total_pages', 'Total pages', '2020-11-15 21:00:26', '2020-11-15 21:00:26'),
(1537, 1, 'en', 'packages/page/pages', 'settings.show_on_front', 'Your homepage displays', '2020-11-15 21:00:26', '2020-11-15 21:00:26'),
(1538, 1, 'en', 'packages/page/pages', 'settings.select', '— Select —', '2020-11-15 21:00:26', '2020-11-15 21:00:26'),
(1539, 1, 'en', 'packages/page/pages', 'front_page', 'Front Page', '2020-11-15 21:00:26', '2020-11-15 21:00:26'),
(1540, 1, 'vi', 'packages/page/pages', 'model', 'Trang', '2020-11-15 21:00:26', '2020-11-15 21:00:26'),
(1541, 1, 'vi', 'packages/page/pages', 'models', 'Trang', '2020-11-15 21:00:26', '2020-11-15 21:00:26'),
(1542, 1, 'vi', 'packages/page/pages', 'list', 'Danh sách trang', '2020-11-15 21:00:26', '2020-11-15 21:00:26'),
(1543, 1, 'vi', 'packages/page/pages', 'create', 'Thêm trang', '2020-11-15 21:00:26', '2020-11-15 21:00:26'),
(1544, 1, 'vi', 'packages/page/pages', 'edit', 'Sửa trang', '2020-11-15 21:00:26', '2020-11-15 21:00:26'),
(1545, 1, 'vi', 'packages/page/pages', 'form.name', 'Tiêu đề trang', '2020-11-15 21:00:26', '2020-11-15 21:00:26'),
(1546, 1, 'vi', 'packages/page/pages', 'form.note', 'Nội dung ghi chú', '2020-11-15 21:00:26', '2020-11-15 21:00:26'),
(1547, 1, 'vi', 'packages/page/pages', 'form.name_placeholder', 'Tên trang (tối đa 120 kí tự)', '2020-11-15 21:00:26', '2020-11-15 21:00:26'),
(1548, 1, 'vi', 'packages/page/pages', 'form.content', 'Nội dung', '2020-11-15 21:00:26', '2020-11-15 21:00:26'),
(1549, 1, 'vi', 'packages/page/pages', 'notices.no_select', 'Chọn ít nhất 1 trang để thực hiện hành động này!', '2020-11-15 21:00:26', '2020-11-15 21:00:26'),
(1550, 1, 'vi', 'packages/page/pages', 'notices.update_success_message', 'Cập nhật thành công', '2020-11-15 21:00:26', '2020-11-15 21:00:26'),
(1551, 1, 'vi', 'packages/page/pages', 'deleted', 'Xóa trang thành công', '2020-11-15 21:00:26', '2020-11-15 21:00:26'),
(1552, 1, 'vi', 'packages/page/pages', 'cannot_delete', 'Không thể xóa trang', '2020-11-15 21:00:26', '2020-11-15 21:00:26'),
(1553, 1, 'vi', 'packages/page/pages', 'menu', 'Trang', '2020-11-15 21:00:26', '2020-11-15 21:00:26'),
(1554, 1, 'vi', 'packages/page/pages', 'menu_name', 'Trang', '2020-11-15 21:00:26', '2020-11-15 21:00:26'),
(1555, 1, 'vi', 'packages/page/pages', 'edit_this_page', 'Sửa trang này', '2020-11-15 21:00:26', '2020-11-15 21:00:26'),
(1556, 1, 'vi', 'packages/page/pages', 'pages', 'Trang', '2020-11-15 21:00:26', '2020-11-15 21:00:26'),
(1557, 1, 'en', 'packages/plugin-management/plugin', 'enabled', 'Enabled', '2020-11-15 21:00:26', '2020-11-15 21:00:26'),
(1558, 1, 'en', 'packages/plugin-management/plugin', 'deactivated', 'Deactivated', '2020-11-15 21:00:26', '2020-11-15 21:00:26'),
(1559, 1, 'en', 'packages/plugin-management/plugin', 'activated', 'Activated', '2020-11-15 21:00:26', '2020-11-15 21:00:26'),
(1560, 1, 'en', 'packages/plugin-management/plugin', 'activate', 'Activate', '2020-11-15 21:00:26', '2020-11-15 21:00:26'),
(1561, 1, 'en', 'packages/plugin-management/plugin', 'deactivate', 'Deactivate', '2020-11-15 21:00:26', '2020-11-15 21:00:26'),
(1562, 1, 'en', 'packages/plugin-management/plugin', 'author', 'By', '2020-11-15 21:00:26', '2020-11-15 21:00:26'),
(1563, 1, 'en', 'packages/plugin-management/plugin', 'update_plugin_status_success', 'Update plugin successfully', '2020-11-15 21:00:26', '2020-11-15 21:00:26'),
(1564, 1, 'en', 'packages/plugin-management/plugin', 'plugins', 'Plugins', '2020-11-15 21:00:26', '2020-11-15 21:00:26'),
(1565, 1, 'en', 'packages/plugin-management/plugin', 'missing_required_plugins', 'Please activate plugin(s): :plugins before activate this plugin!', '2020-11-15 21:00:27', '2020-11-15 21:00:27'),
(1566, 1, 'en', 'packages/plugin-management/plugin', 'remove', 'Remove', '2020-11-15 21:00:27', '2020-11-15 21:00:27'),
(1567, 1, 'en', 'packages/plugin-management/plugin', 'remove_plugin_success', 'Remove plugin successfully!', '2020-11-15 21:00:27', '2020-11-15 21:00:27'),
(1568, 1, 'en', 'packages/plugin-management/plugin', 'remove_plugin', 'Remove plugin', '2020-11-15 21:00:27', '2020-11-15 21:00:27'),
(1569, 1, 'en', 'packages/plugin-management/plugin', 'remove_plugin_confirm_message', 'Do you really want to remove this plugin?', '2020-11-15 21:00:27', '2020-11-15 21:00:27'),
(1570, 1, 'en', 'packages/plugin-management/plugin', 'remove_plugin_confirm_yes', 'Yes, remove it!', '2020-11-15 21:00:27', '2020-11-15 21:00:27'),
(1571, 1, 'en', 'packages/plugin-management/plugin', 'total_plugins', 'Total plugins', '2020-11-15 21:00:27', '2020-11-15 21:00:27'),
(1572, 1, 'en', 'packages/plugin-management/plugin', 'invalid_plugin', 'This plugin is not a valid plugin, please check it again!', '2020-11-15 21:00:27', '2020-11-15 21:00:27'),
(1573, 1, 'en', 'packages/plugin-management/plugin', 'version', 'Version', '2020-11-15 21:00:27', '2020-11-15 21:00:27'),
(1574, 1, 'en', 'packages/plugin-management/plugin', 'invalid_json', 'Invalid plugin.json!', '2020-11-15 21:00:27', '2020-11-15 21:00:27'),
(1575, 1, 'en', 'packages/plugin-management/plugin', 'activate_success', 'Activate plugin successfully!', '2020-11-15 21:00:27', '2020-11-15 21:00:27'),
(1576, 1, 'en', 'packages/plugin-management/plugin', 'activated_already', 'This plugin is activated already!', '2020-11-15 21:00:27', '2020-11-15 21:00:27'),
(1577, 1, 'en', 'packages/plugin-management/plugin', 'plugin_not_exist', 'This plugin is not exists.', '2020-11-15 21:00:27', '2020-11-15 21:00:27'),
(1578, 1, 'en', 'packages/plugin-management/plugin', 'missing_json_file', 'Missing file plugin.json!', '2020-11-15 21:00:27', '2020-11-15 21:00:27'),
(1579, 1, 'en', 'packages/plugin-management/plugin', 'plugin_invalid', 'Plugin is valid!', '2020-11-15 21:00:27', '2020-11-15 21:00:27'),
(1580, 1, 'en', 'packages/plugin-management/plugin', 'published_assets_success', 'Publish assets for plugin :name successfully!', '2020-11-15 21:00:27', '2020-11-15 21:00:27'),
(1581, 1, 'en', 'packages/plugin-management/plugin', 'plugin_removed', 'Plugin is removed!', '2020-11-15 21:00:27', '2020-11-15 21:00:27'),
(1582, 1, 'en', 'packages/plugin-management/plugin', 'deactivated_success', 'Deactivate plugin successfully!', '2020-11-15 21:00:27', '2020-11-15 21:00:27');
INSERT INTO `translations` (`id`, `status`, `locale`, `group`, `key`, `value`, `created_at`, `updated_at`) VALUES
(1583, 1, 'en', 'packages/plugin-management/plugin', 'deactivated_already', 'This plugin is deactivated already!', '2020-11-15 21:00:27', '2020-11-15 21:00:27'),
(1584, 1, 'vi', 'packages/plugin-management/plugin', 'activate', 'Kích hoạt', '2020-11-15 21:00:27', '2020-11-15 21:00:27'),
(1585, 1, 'vi', 'packages/plugin-management/plugin', 'author', 'Tác giả', '2020-11-15 21:00:27', '2020-11-15 21:00:27'),
(1586, 1, 'vi', 'packages/plugin-management/plugin', 'version', 'Phiên bản', '2020-11-15 21:00:27', '2020-11-15 21:00:27'),
(1587, 1, 'vi', 'packages/plugin-management/plugin', 'activated', 'Đã kích hoạt', '2020-11-15 21:00:27', '2020-11-15 21:00:27'),
(1588, 1, 'vi', 'packages/plugin-management/plugin', 'deactivate', 'Hủy kích hoạt', '2020-11-15 21:00:27', '2020-11-15 21:00:27'),
(1589, 1, 'vi', 'packages/plugin-management/plugin', 'deactivated', 'Đã vô hiệu', '2020-11-15 21:00:27', '2020-11-15 21:00:27'),
(1590, 1, 'vi', 'packages/plugin-management/plugin', 'disabled_in_demo_mode', 'Bạn không thể thực hiện hành động này ở chế độ demo', '2020-11-15 21:00:27', '2020-11-15 21:00:27'),
(1591, 1, 'vi', 'packages/plugin-management/plugin', 'enabled', 'Kích hoạt', '2020-11-15 21:00:27', '2020-11-15 21:00:27'),
(1592, 1, 'vi', 'packages/plugin-management/plugin', 'invalid_plugin', 'Gói mở rộng không hợp lệ', '2020-11-15 21:00:27', '2020-11-15 21:00:27'),
(1593, 1, 'vi', 'packages/plugin-management/plugin', 'update_plugin_status_success', 'Cập nhật trạng thái gói mở rộng thành công', '2020-11-15 21:00:27', '2020-11-15 21:00:27'),
(1594, 1, 'vi', 'packages/plugin-management/plugin', 'missing_required_plugins', 'Vui lòng kích hoạt các tiện ích mở rộng :plugins trước khi kích hoạt tiện ích này', '2020-11-15 21:00:27', '2020-11-15 21:00:27'),
(1595, 1, 'vi', 'packages/plugin-management/plugin', 'plugins', 'Tiện ích mở rộng', '2020-11-15 21:00:27', '2020-11-15 21:00:27'),
(1596, 1, 'en', 'packages/seo-helper/seo-helper', 'meta_box_header', 'Search Engine Optimize', '2020-11-15 21:00:27', '2020-11-15 21:00:27'),
(1597, 1, 'en', 'packages/seo-helper/seo-helper', 'edit_seo_meta', 'Edit SEO meta', '2020-11-15 21:00:27', '2020-11-15 21:00:27'),
(1598, 1, 'en', 'packages/seo-helper/seo-helper', 'default_description', 'Setup meta title & description to make your site easy to discovered on search engines such as Google', '2020-11-15 21:00:27', '2020-11-15 21:00:27'),
(1599, 1, 'en', 'packages/seo-helper/seo-helper', 'seo_title', 'SEO Title', '2020-11-15 21:00:27', '2020-11-15 21:00:27'),
(1600, 1, 'en', 'packages/seo-helper/seo-helper', 'seo_description', 'SEO description', '2020-11-15 21:00:27', '2020-11-15 21:00:27'),
(1601, 1, 'vi', 'packages/seo-helper/seo-helper', 'meta_box_header', 'Tối ưu hoá bộ máy tìm kiếm (SEO)', '2020-11-15 21:00:27', '2020-11-15 21:00:27'),
(1602, 1, 'vi', 'packages/seo-helper/seo-helper', 'edit_seo_meta', 'Chỉnh sửa SEO', '2020-11-15 21:00:27', '2020-11-15 21:00:27'),
(1603, 1, 'vi', 'packages/seo-helper/seo-helper', 'default_description', 'Thiết lập các thẻ mô tả giúp người dùng dễ dàng tìm thấy trên công cụ tìm kiếm như Google.', '2020-11-15 21:00:27', '2020-11-15 21:00:27'),
(1604, 1, 'vi', 'packages/seo-helper/seo-helper', 'seo_title', 'Tiêu đề trang', '2020-11-15 21:00:27', '2020-11-15 21:00:27'),
(1605, 1, 'vi', 'packages/seo-helper/seo-helper', 'seo_description', 'Mô tả trang', '2020-11-15 21:00:27', '2020-11-15 21:00:27'),
(1606, 1, 'en', 'packages/slug/slug', 'permalink_settings', 'Permalink', '2020-11-15 21:00:27', '2020-11-15 21:00:27'),
(1607, 1, 'en', 'packages/slug/slug', 'settings.title', 'Permalink settings', '2020-11-15 21:00:27', '2020-11-15 21:00:27'),
(1608, 1, 'en', 'packages/slug/slug', 'settings.description', 'Manage permalink for all modules.', '2020-11-15 21:00:27', '2020-11-15 21:00:27'),
(1609, 1, 'en', 'packages/slug/slug', 'settings.preview', 'Preview', '2020-11-15 21:00:27', '2020-11-15 21:00:27'),
(1610, 1, 'en', 'packages/slug/slug', 'preview', 'Preview', '2020-11-15 21:00:27', '2020-11-15 21:00:27'),
(1611, 1, 'en', 'packages/theme/theme', 'name', 'Themes', '2020-11-15 21:00:27', '2020-11-15 21:00:27'),
(1612, 1, 'en', 'packages/theme/theme', 'theme', 'Theme', '2020-11-15 21:00:27', '2020-11-15 21:00:27'),
(1613, 1, 'en', 'packages/theme/theme', 'author', 'Author', '2020-11-15 21:00:27', '2020-11-15 21:00:27'),
(1614, 1, 'en', 'packages/theme/theme', 'version', 'Version', '2020-11-15 21:00:27', '2020-11-15 21:00:27'),
(1615, 1, 'en', 'packages/theme/theme', 'description', 'Description', '2020-11-15 21:00:27', '2020-11-15 21:00:27'),
(1616, 1, 'en', 'packages/theme/theme', 'active_success', 'Activate theme :name successfully!', '2020-11-15 21:00:27', '2020-11-15 21:00:27'),
(1617, 1, 'en', 'packages/theme/theme', 'active', 'Active', '2020-11-15 21:00:27', '2020-11-15 21:00:27'),
(1618, 1, 'en', 'packages/theme/theme', 'activated', 'Activated', '2020-11-15 21:00:27', '2020-11-15 21:00:27'),
(1619, 1, 'en', 'packages/theme/theme', 'appearance', 'Appearance', '2020-11-15 21:00:27', '2020-11-15 21:00:27'),
(1620, 1, 'en', 'packages/theme/theme', 'theme_options', 'Theme options', '2020-11-15 21:00:27', '2020-11-15 21:00:27'),
(1621, 1, 'en', 'packages/theme/theme', 'save_changes', 'Save Changes', '2020-11-15 21:00:27', '2020-11-15 21:00:27'),
(1622, 1, 'en', 'packages/theme/theme', 'developer_mode', 'Developer Mode Enabled', '2020-11-15 21:00:27', '2020-11-15 21:00:27'),
(1623, 1, 'en', 'packages/theme/theme', 'custom_css', 'Custom CSS', '2020-11-15 21:00:27', '2020-11-15 21:00:27'),
(1624, 1, 'en', 'packages/theme/theme', 'remove_theme_success', 'Remove theme successfully!', '2020-11-15 21:00:27', '2020-11-15 21:00:27'),
(1625, 1, 'en', 'packages/theme/theme', 'theme_is_not_existed', 'This theme is not existed!', '2020-11-15 21:00:27', '2020-11-15 21:00:27'),
(1626, 1, 'en', 'packages/theme/theme', 'remove', 'Remove', '2020-11-15 21:00:27', '2020-11-15 21:00:27'),
(1627, 1, 'en', 'packages/theme/theme', 'remove_theme', 'Remove theme', '2020-11-15 21:00:27', '2020-11-15 21:00:27'),
(1628, 1, 'en', 'packages/theme/theme', 'remove_theme_confirm_message', 'Do you really want to remove this theme?', '2020-11-15 21:00:27', '2020-11-15 21:00:27'),
(1629, 1, 'en', 'packages/theme/theme', 'remove_theme_confirm_yes', 'Yes, remove it!', '2020-11-15 21:00:27', '2020-11-15 21:00:27'),
(1630, 1, 'en', 'packages/theme/theme', 'total_themes', 'Total themes', '2020-11-15 21:00:27', '2020-11-15 21:00:27'),
(1631, 1, 'en', 'packages/theme/theme', 'show_admin_bar', 'Show admin bar (When admin logged in, still show admin bar in website)?', '2020-11-15 21:00:27', '2020-11-15 21:00:27'),
(1632, 1, 'en', 'packages/theme/theme', 'settings.title', 'Theme', '2020-11-15 21:00:27', '2020-11-15 21:00:27'),
(1633, 1, 'en', 'packages/theme/theme', 'settings.description', 'Setting for theme', '2020-11-15 21:00:27', '2020-11-15 21:00:27'),
(1634, 1, 'en', 'packages/theme/theme', 'add_new', 'Add new', '2020-11-15 21:00:27', '2020-11-15 21:00:27'),
(1635, 1, 'en', 'packages/theme/theme', 'theme_activated_already', 'Theme \":name\" is activated already!', '2020-11-15 21:00:27', '2020-11-15 21:00:27'),
(1636, 1, 'en', 'packages/theme/theme', 'missing_json_file', 'Missing file theme.json!', '2020-11-15 21:00:27', '2020-11-15 21:00:27'),
(1637, 1, 'en', 'packages/theme/theme', 'theme_invalid', 'Theme is valid!', '2020-11-15 21:00:27', '2020-11-15 21:00:27'),
(1638, 1, 'en', 'packages/theme/theme', 'published_assets_success', 'Publish assets for :themes successfully!', '2020-11-15 21:00:27', '2020-11-15 21:00:27'),
(1639, 1, 'en', 'packages/theme/theme', 'cannot_remove_theme', 'Cannot remove activated theme, please activate another theme before removing \":name\"!', '2020-11-15 21:00:27', '2020-11-15 21:00:27'),
(1640, 1, 'en', 'packages/theme/theme', 'theme_deleted', 'Theme \":name\" has been destroyed.', '2020-11-15 21:00:27', '2020-11-15 21:00:27'),
(1641, 1, 'en', 'packages/theme/theme', 'removed_assets', 'Remove assets of a theme :name successfully!', '2020-11-15 21:00:27', '2020-11-15 21:00:27'),
(1642, 1, 'en', 'packages/theme/theme', 'update_custom_css_success', 'Update custom CSS successfully!', '2020-11-15 21:00:27', '2020-11-15 21:00:27'),
(1643, 1, 'en', 'packages/theme/theme', 'go_to_dashboard', 'Go to dashboard', '2020-11-15 21:00:27', '2020-11-15 21:00:27'),
(1644, 1, 'en', 'packages/theme/theme', 'custom_css_placeholder', 'Using Ctrl + Space to autocomplete.', '2020-11-15 21:00:27', '2020-11-15 21:00:27'),
(1645, 1, 'en', 'packages/theme/theme', 'theme_option_general', 'General', '2020-11-15 21:00:27', '2020-11-15 21:00:27'),
(1646, 1, 'en', 'packages/theme/theme', 'theme_option_general_description', 'General settings', '2020-11-15 21:00:27', '2020-11-15 21:00:27'),
(1647, 1, 'en', 'packages/theme/theme', 'theme_option_seo_open_graph_image', 'SEO default Open Graph image', '2020-11-15 21:00:27', '2020-11-15 21:00:27'),
(1648, 1, 'en', 'packages/theme/theme', 'theme_option_logo', 'Logo', '2020-11-15 21:00:27', '2020-11-15 21:00:27'),
(1649, 1, 'en', 'packages/theme/theme', 'theme_option_favicon', 'Favicon', '2020-11-15 21:00:27', '2020-11-15 21:00:27'),
(1650, 1, 'vi', 'packages/theme/theme', 'activated', 'Đã kích hoạt', '2020-11-15 21:00:27', '2020-11-15 21:00:27'),
(1651, 1, 'vi', 'packages/theme/theme', 'active', 'Kích hoạt', '2020-11-15 21:00:27', '2020-11-15 21:00:27'),
(1652, 1, 'vi', 'packages/theme/theme', 'active_success', 'Kích hoạt giao diện thành công!', '2020-11-15 21:00:27', '2020-11-15 21:00:27'),
(1653, 1, 'vi', 'packages/theme/theme', 'author', 'Tác giả', '2020-11-15 21:00:27', '2020-11-15 21:00:27'),
(1654, 1, 'vi', 'packages/theme/theme', 'description', 'Mô tả', '2020-11-15 21:00:27', '2020-11-15 21:00:27'),
(1655, 1, 'vi', 'packages/theme/theme', 'theme', 'Giao diện', '2020-11-15 21:00:27', '2020-11-15 21:00:27'),
(1656, 1, 'vi', 'packages/theme/theme', 'theme_options', 'Tuỳ chọn giao diện', '2020-11-15 21:00:27', '2020-11-15 21:00:27'),
(1657, 1, 'vi', 'packages/theme/theme', 'version', 'Phiên bản', '2020-11-15 21:00:27', '2020-11-15 21:00:27'),
(1658, 1, 'vi', 'packages/theme/theme', 'save_changes', 'Lưu thay đổi', '2020-11-15 21:00:27', '2020-11-15 21:00:27'),
(1659, 1, 'vi', 'packages/theme/theme', 'developer_mode', 'Đang kích hoạt chế độ thử nghiệm', '2020-11-15 21:00:27', '2020-11-15 21:00:27'),
(1660, 1, 'vi', 'packages/theme/theme', 'custom_css', 'Tuỳ chỉnh CSS', '2020-11-15 21:00:27', '2020-11-15 21:00:27'),
(1661, 1, 'en', 'packages/widget/global', 'name', 'Widgets', '2020-11-15 21:00:27', '2020-11-15 21:00:27'),
(1662, 1, 'en', 'packages/widget/global', 'create', 'New widget', '2020-11-15 21:00:27', '2020-11-15 21:00:27'),
(1663, 1, 'en', 'packages/widget/global', 'edit', 'Edit widget', '2020-11-15 21:00:27', '2020-11-15 21:00:27'),
(1664, 1, 'en', 'packages/widget/global', 'delete', 'Delete', '2020-11-15 21:00:27', '2020-11-15 21:00:27'),
(1665, 1, 'en', 'packages/widget/global', 'available', 'Available Widgets', '2020-11-15 21:00:27', '2020-11-15 21:00:27'),
(1666, 1, 'en', 'packages/widget/global', 'instruction', 'To activate a widget drag it to a sidebar or click on it. To deactivate a widget and delete its settings, drag it back.', '2020-11-15 21:00:27', '2020-11-15 21:00:27'),
(1667, 1, 'en', 'packages/widget/global', 'number_tag_display', 'Number tags will be display', '2020-11-15 21:00:27', '2020-11-15 21:00:27'),
(1668, 1, 'en', 'packages/widget/global', 'number_post_display', 'Number posts will be display', '2020-11-15 21:00:27', '2020-11-15 21:00:27'),
(1669, 1, 'en', 'packages/widget/global', 'select_menu', 'Select Menu', '2020-11-15 21:00:27', '2020-11-15 21:00:27'),
(1670, 1, 'en', 'packages/widget/global', 'widget_text', 'Text', '2020-11-15 21:00:27', '2020-11-15 21:00:27'),
(1671, 1, 'en', 'packages/widget/global', 'widget_text_description', 'Arbitrary text or HTML.', '2020-11-15 21:00:27', '2020-11-15 21:00:27'),
(1672, 1, 'en', 'packages/widget/global', 'widget_recent_post', 'Recent Posts', '2020-11-15 21:00:27', '2020-11-15 21:00:27'),
(1673, 1, 'en', 'packages/widget/global', 'widget_recent_post_description', 'Recent posts widget.', '2020-11-15 21:00:27', '2020-11-15 21:00:27'),
(1674, 1, 'en', 'packages/widget/global', 'widget_custom_menu', 'Custom Menu', '2020-11-15 21:00:27', '2020-11-15 21:00:27'),
(1675, 1, 'en', 'packages/widget/global', 'widget_custom_menu_description', 'Add a custom menu to your widget area.', '2020-11-15 21:00:27', '2020-11-15 21:00:27'),
(1676, 1, 'en', 'packages/widget/global', 'widget_tag', 'Tags', '2020-11-15 21:00:27', '2020-11-15 21:00:27'),
(1677, 1, 'en', 'packages/widget/global', 'widget_tag_description', 'Popular tags', '2020-11-15 21:00:27', '2020-11-15 21:00:27'),
(1678, 1, 'en', 'packages/widget/global', 'save_success', 'Save widget successfully!', '2020-11-15 21:00:27', '2020-11-15 21:00:27'),
(1679, 1, 'en', 'packages/widget/global', 'delete_success', 'Delete widget successfully!', '2020-11-15 21:00:27', '2020-11-15 21:00:27'),
(1680, 1, 'en', 'packages/widget/widget', 'name', 'Widgets', '2020-11-15 21:00:27', '2020-11-15 21:00:27'),
(1681, 1, 'en', 'packages/widget/widget', 'create', 'New widget', '2020-11-15 21:00:27', '2020-11-15 21:00:27'),
(1682, 1, 'en', 'packages/widget/widget', 'edit', 'Edit widget', '2020-11-15 21:00:27', '2020-11-15 21:00:27'),
(1683, 1, 'en', 'packages/widget/widget', 'delete', 'Delete', '2020-11-15 21:00:27', '2020-11-15 21:00:27'),
(1684, 1, 'en', 'packages/widget/widget', 'available', 'Available Widgets', '2020-11-15 21:00:27', '2020-11-15 21:00:27'),
(1685, 1, 'en', 'packages/widget/widget', 'instruction', 'To activate a widget drag it to a sidebar or click on it. To deactivate a widget and delete its settings, drag it back.', '2020-11-15 21:00:27', '2020-11-15 21:00:27'),
(1686, 1, 'en', 'packages/widget/widget', 'number_tag_display', 'Number tags will be display', '2020-11-15 21:00:27', '2020-11-15 21:00:27'),
(1687, 1, 'en', 'packages/widget/widget', 'number_post_display', 'Number posts will be display', '2020-11-15 21:00:27', '2020-11-15 21:00:27'),
(1688, 1, 'en', 'packages/widget/widget', 'select_menu', 'Select Menu', '2020-11-15 21:00:27', '2020-11-15 21:00:27'),
(1689, 1, 'en', 'packages/widget/widget', 'widget_text', 'Text', '2020-11-15 21:00:27', '2020-11-15 21:00:27'),
(1690, 1, 'en', 'packages/widget/widget', 'widget_text_description', 'Arbitrary text or HTML.', '2020-11-15 21:00:27', '2020-11-15 21:00:27'),
(1691, 1, 'en', 'packages/widget/widget', 'widget_recent_post', 'Recent Posts', '2020-11-15 21:00:27', '2020-11-15 21:00:27'),
(1692, 1, 'en', 'packages/widget/widget', 'widget_recent_post_description', 'Recent posts widget.', '2020-11-15 21:00:27', '2020-11-15 21:00:27'),
(1693, 1, 'en', 'packages/widget/widget', 'widget_custom_menu', 'Custom Menu', '2020-11-15 21:00:27', '2020-11-15 21:00:27'),
(1694, 1, 'en', 'packages/widget/widget', 'widget_custom_menu_description', 'Add a custom menu to your widget area.', '2020-11-15 21:00:27', '2020-11-15 21:00:27'),
(1695, 1, 'en', 'packages/widget/widget', 'widget_tag', 'Tags', '2020-11-15 21:00:27', '2020-11-15 21:00:27'),
(1696, 1, 'en', 'packages/widget/widget', 'widget_tag_description', 'Popular tags', '2020-11-15 21:00:27', '2020-11-15 21:00:27'),
(1697, 1, 'en', 'packages/widget/widget', 'save_success', 'Save widget successfully!', '2020-11-15 21:00:27', '2020-11-15 21:00:27'),
(1698, 1, 'en', 'packages/widget/widget', 'delete_success', 'Delete widget successfully!', '2020-11-15 21:00:27', '2020-11-15 21:00:27'),
(1699, 1, 'en', 'packages/widget/widget', 'primary_sidebar_name', 'Primary sidebar', '2020-11-15 21:00:27', '2020-11-15 21:00:27'),
(1700, 1, 'en', 'packages/widget/widget', 'primary_sidebar_description', 'Primary sidebar section', '2020-11-15 21:00:27', '2020-11-15 21:00:27'),
(1701, 1, 'vi', 'packages/widget/global', 'name', 'Widgets', '2020-11-15 21:00:27', '2020-11-15 21:00:27'),
(1702, 1, 'vi', 'packages/widget/global', 'create', 'New widget', '2020-11-15 21:00:27', '2020-11-15 21:00:27'),
(1703, 1, 'vi', 'packages/widget/global', 'edit', 'Edit widget', '2020-11-15 21:00:27', '2020-11-15 21:00:27'),
(1704, 1, 'vi', 'packages/widget/global', 'available', 'Tiện ích có sẵn', '2020-11-15 21:00:27', '2020-11-15 21:00:27'),
(1705, 1, 'vi', 'packages/widget/global', 'delete', 'Xóa', '2020-11-15 21:00:27', '2020-11-15 21:00:27'),
(1706, 1, 'vi', 'packages/widget/global', 'instruction', 'Để kích hoạt tiện ích, hãy kéo nó vào sidebar hoặc nhấn vào nó. Để hủy kích hoạt tiện ích và xóa các thiết lập của tiện ích, kéo nó quay trở lại.', '2020-11-15 21:00:27', '2020-11-15 21:00:27'),
(1707, 1, 'vi', 'packages/widget/global', 'number_post_display', 'Số bài viết sẽ hiển thị', '2020-11-15 21:00:27', '2020-11-15 21:00:27'),
(1708, 1, 'vi', 'packages/widget/global', 'number_tag_display', 'Số thẻ sẽ hiển thị', '2020-11-15 21:00:27', '2020-11-15 21:00:27'),
(1709, 1, 'vi', 'packages/widget/global', 'select_menu', 'Lựa chọn trình đơn', '2020-11-15 21:00:27', '2020-11-15 21:00:27'),
(1710, 1, 'vi', 'packages/widget/global', 'widget_custom_menu', 'Menu tùy chỉnh', '2020-11-15 21:00:27', '2020-11-15 21:00:27'),
(1711, 1, 'vi', 'packages/widget/global', 'widget_custom_menu_description', 'Thêm menu tùy chỉnh vào khu vực tiện ích của bạn', '2020-11-15 21:00:27', '2020-11-15 21:00:27'),
(1712, 1, 'vi', 'packages/widget/global', 'widget_recent_post', 'Bài viết gần đây', '2020-11-15 21:00:27', '2020-11-15 21:00:27'),
(1713, 1, 'vi', 'packages/widget/global', 'widget_recent_post_description', 'Tiện ích bài viết gần đây', '2020-11-15 21:00:27', '2020-11-15 21:00:27'),
(1714, 1, 'vi', 'packages/widget/global', 'widget_tag', 'Thẻ', '2020-11-15 21:00:27', '2020-11-15 21:00:27'),
(1715, 1, 'vi', 'packages/widget/global', 'widget_tag_description', 'Thẻ phổ biến, sử dụng nhiều', '2020-11-15 21:00:27', '2020-11-15 21:00:27'),
(1716, 1, 'vi', 'packages/widget/global', 'widget_text', 'Văn bản', '2020-11-15 21:00:27', '2020-11-15 21:00:27'),
(1717, 1, 'vi', 'packages/widget/global', 'widget_text_description', 'Văn bản tùy ý hoặc HTML.', '2020-11-15 21:00:27', '2020-11-15 21:00:27'),
(1718, 1, 'vi', 'packages/widget/global', 'delete_success', 'Xoá tiện ích thành công', '2020-11-15 21:00:27', '2020-11-15 21:00:27'),
(1719, 1, 'vi', 'packages/widget/global', 'save_success', 'Lưu tiện ích thành công!', '2020-11-15 21:00:27', '2020-11-15 21:00:27'),
(1720, 1, 'en', 'plugins/analytics/analytics', 'sessions', 'Sessions', '2020-11-15 21:00:27', '2020-11-15 21:00:27'),
(1721, 1, 'en', 'plugins/analytics/analytics', 'visitors', 'Visitors', '2020-11-15 21:00:27', '2020-11-15 21:00:27'),
(1722, 1, 'en', 'plugins/analytics/analytics', 'pageviews', 'Pageviews', '2020-11-15 21:00:27', '2020-11-15 21:00:27'),
(1723, 1, 'en', 'plugins/analytics/analytics', 'bounce_rate', 'Bounce Rate', '2020-11-15 21:00:27', '2020-11-15 21:00:27'),
(1724, 1, 'en', 'plugins/analytics/analytics', 'page_session', 'Pages/Session', '2020-11-15 21:00:27', '2020-11-15 21:00:27'),
(1725, 1, 'en', 'plugins/analytics/analytics', 'avg_duration', 'Avg. Duration', '2020-11-15 21:00:27', '2020-11-15 21:00:27'),
(1726, 1, 'en', 'plugins/analytics/analytics', 'percent_new_session', 'Percent new session', '2020-11-15 21:00:27', '2020-11-15 21:00:27'),
(1727, 1, 'en', 'plugins/analytics/analytics', 'new_users', 'New visitors', '2020-11-15 21:00:27', '2020-11-15 21:00:27'),
(1728, 1, 'en', 'plugins/analytics/analytics', 'visits', 'visits', '2020-11-15 21:00:27', '2020-11-15 21:00:27'),
(1729, 1, 'en', 'plugins/analytics/analytics', 'views', 'views', '2020-11-15 21:00:27', '2020-11-15 21:00:27'),
(1730, 1, 'en', 'plugins/analytics/analytics', 'view_id_not_specified', 'You must provide a valid view id. The document here: <a href=\"https://docs.botble.com/cms/:version/plugin-analytics\" target=\"_blank\">https://docs.botble.com/cms/:version/plugin-analytics</a>', '2020-11-15 21:00:27', '2020-11-15 21:00:27'),
(1731, 1, 'en', 'plugins/analytics/analytics', 'credential_is_not_valid', 'Analytics credentials is not valid. The document here: <a href=\"https://docs.botble.com/cms/:version/plugin-analytics\" target=\"_blank\">https://docs.botble.com/cms/:version/plugin-analytics</a>', '2020-11-15 21:00:27', '2020-11-15 21:00:27'),
(1732, 1, 'en', 'plugins/analytics/analytics', 'start_date_can_not_before_end_date', 'Start date :start_date cannot be after end date :end_date', '2020-11-15 21:00:27', '2020-11-15 21:00:27'),
(1733, 1, 'en', 'plugins/analytics/analytics', 'wrong_configuration', 'To view analytics you\'ll need to get a google analytics client id and add it to your settings. <br /> You also need JSON credential data. <br /> The document here: <a href=\"https://docs.botble.com/cms/:version/plugin-analytics\" target=\"_blank\">https://docs.botble.com/cms/:version/plugin-analytics</a>', '2020-11-15 21:00:27', '2020-11-15 21:00:27'),
(1734, 1, 'en', 'plugins/analytics/analytics', 'settings.title', 'Google Analytics', '2020-11-15 21:00:27', '2020-11-15 21:00:27'),
(1735, 1, 'en', 'plugins/analytics/analytics', 'settings.description', 'Config Credentials for Google Analytics', '2020-11-15 21:00:27', '2020-11-15 21:00:27'),
(1736, 1, 'en', 'plugins/analytics/analytics', 'settings.tracking_code', 'Tracking ID', '2020-11-15 21:00:27', '2020-11-15 21:00:27'),
(1737, 1, 'en', 'plugins/analytics/analytics', 'settings.tracking_code_placeholder', 'Example: GA-12586526-8', '2020-11-15 21:00:27', '2020-11-15 21:00:27'),
(1738, 1, 'en', 'plugins/analytics/analytics', 'settings.view_id', 'View ID', '2020-11-15 21:00:27', '2020-11-15 21:00:27'),
(1739, 1, 'en', 'plugins/analytics/analytics', 'settings.view_id_description', 'Google Analytics View ID', '2020-11-15 21:00:27', '2020-11-15 21:00:27'),
(1740, 1, 'en', 'plugins/analytics/analytics', 'settings.json_credential', 'Service Account Credentials', '2020-11-15 21:00:27', '2020-11-15 21:00:27'),
(1741, 1, 'en', 'plugins/analytics/analytics', 'settings.json_credential_description', 'Service Account Credentials', '2020-11-15 21:00:27', '2020-11-15 21:00:27'),
(1742, 1, 'en', 'plugins/analytics/analytics', 'widget_analytics_page', 'Top Most Visit Pages', '2020-11-15 21:00:28', '2020-11-15 21:00:28'),
(1743, 1, 'en', 'plugins/analytics/analytics', 'widget_analytics_browser', 'Top Browsers', '2020-11-15 21:00:28', '2020-11-15 21:00:28'),
(1744, 1, 'en', 'plugins/analytics/analytics', 'widget_analytics_referrer', 'Top Referrers', '2020-11-15 21:00:28', '2020-11-15 21:00:28'),
(1745, 1, 'en', 'plugins/analytics/analytics', 'widget_analytics_general', 'Site Analytics', '2020-11-15 21:00:28', '2020-11-15 21:00:28'),
(1746, 1, 'vi', 'plugins/analytics/analytics', 'avg_duration', 'Trung bình', '2020-11-15 21:00:28', '2020-11-15 21:00:28'),
(1747, 1, 'vi', 'plugins/analytics/analytics', 'bounce_rate', 'Tỉ lệ thoát', '2020-11-15 21:00:28', '2020-11-15 21:00:28'),
(1748, 1, 'vi', 'plugins/analytics/analytics', 'page_session', 'Trang/Phiên', '2020-11-15 21:00:28', '2020-11-15 21:00:28'),
(1749, 1, 'vi', 'plugins/analytics/analytics', 'pageviews', 'Lượt xem', '2020-11-15 21:00:28', '2020-11-15 21:00:28'),
(1750, 1, 'vi', 'plugins/analytics/analytics', 'sessions', 'Phiên', '2020-11-15 21:00:28', '2020-11-15 21:00:28'),
(1751, 1, 'vi', 'plugins/analytics/analytics', 'views', 'lượt xem', '2020-11-15 21:00:28', '2020-11-15 21:00:28'),
(1752, 1, 'vi', 'plugins/analytics/analytics', 'visitors', 'Người truy cập', '2020-11-15 21:00:28', '2020-11-15 21:00:28'),
(1753, 1, 'vi', 'plugins/analytics/analytics', 'visits', 'lượt ghé thăm', '2020-11-15 21:00:28', '2020-11-15 21:00:28'),
(1754, 1, 'vi', 'plugins/analytics/analytics', 'credential_is_not_valid', 'Thông tin cài đặt không hợp lệ. Tài liệu hướng dẫn tại đây: <a href=\"http://docs.botble.com/cms/:version/analytics\" target=\"_blank\">http://docs.botble.com/cms/:version/analytics</a>', '2020-11-15 21:00:28', '2020-11-15 21:00:28'),
(1755, 1, 'vi', 'plugins/analytics/analytics', 'new_users', 'Lượt khách mới', '2020-11-15 21:00:28', '2020-11-15 21:00:28'),
(1756, 1, 'vi', 'plugins/analytics/analytics', 'percent_new_session', 'Tỉ lệ khách mới', '2020-11-15 21:00:28', '2020-11-15 21:00:28'),
(1757, 1, 'vi', 'plugins/analytics/analytics', 'start_date_can_not_before_end_date', 'Ngày bắt đầu :start_date không thể sau ngày kết thúc :end_date', '2020-11-15 21:00:28', '2020-11-15 21:00:28'),
(1758, 1, 'vi', 'plugins/analytics/analytics', 'view_id_not_specified', 'Bạn phải cung cấp View ID hợp lê. Tài liệu hướng dẫn tại đây: <a href=\"http://docs.botble.com/cms/:version/analytics\" target=\"_blank\">http://docs.botble.com/cms/:version/analytics</a>', '2020-11-15 21:00:28', '2020-11-15 21:00:28'),
(1759, 1, 'vi', 'plugins/analytics/analytics', 'wrong_configuration', 'Để xem dữ liệu thống kê Google Analytics, bạn cần lấy thông tin Client ID và thêm nó vào trong phần cài đặt. Bạn cũng cần thông tin xác thực dạng JSON. Tài liệu hướng dẫn tại đây: <a href=\"http://docs.botble.com/cms/:version/analytics\" target=\"_blank\">http://docs.botble.com/cms/:version/analytics</a>', '2020-11-15 21:00:28', '2020-11-15 21:00:28'),
(1760, 1, 'vi', 'plugins/analytics/analytics', 'settings.title', 'Google Analytics', '2020-11-15 21:00:28', '2020-11-15 21:00:28'),
(1761, 1, 'vi', 'plugins/analytics/analytics', 'settings.description', 'Config Credentials for Google Analytics', '2020-11-15 21:00:28', '2020-11-15 21:00:28'),
(1762, 1, 'vi', 'plugins/analytics/analytics', 'settings.tracking_code', 'Tracking Code', '2020-11-15 21:00:28', '2020-11-15 21:00:28'),
(1763, 1, 'vi', 'plugins/analytics/analytics', 'settings.tracking_code_placeholder', 'Example: GA-12586526-8', '2020-11-15 21:00:28', '2020-11-15 21:00:28'),
(1764, 1, 'vi', 'plugins/analytics/analytics', 'settings.view_id', 'View ID', '2020-11-15 21:00:28', '2020-11-15 21:00:28'),
(1765, 1, 'vi', 'plugins/analytics/analytics', 'settings.view_id_description', 'Google Analytics View ID', '2020-11-15 21:00:28', '2020-11-15 21:00:28'),
(1766, 1, 'vi', 'plugins/analytics/analytics', 'settings.json_credential', 'Service Account Credentials', '2020-11-15 21:00:28', '2020-11-15 21:00:28'),
(1767, 1, 'vi', 'plugins/analytics/analytics', 'settings.json_credential_description', 'Service Account Credentials', '2020-11-15 21:00:28', '2020-11-15 21:00:28'),
(1768, 1, 'vi', 'plugins/analytics/analytics', 'widget_analytics_browser', 'Trình duyệt truy cập nhiều', '2020-11-15 21:00:28', '2020-11-15 21:00:28'),
(1769, 1, 'vi', 'plugins/analytics/analytics', 'widget_analytics_general', 'Thống kê truy cập', '2020-11-15 21:00:28', '2020-11-15 21:00:28'),
(1770, 1, 'vi', 'plugins/analytics/analytics', 'widget_analytics_page', 'Trang được xem nhiều nhất', '2020-11-15 21:00:28', '2020-11-15 21:00:28'),
(1771, 1, 'vi', 'plugins/analytics/analytics', 'widget_analytics_referrer', 'Trang giới thiệu nhiều', '2020-11-15 21:00:28', '2020-11-15 21:00:28'),
(1772, 1, 'en', 'plugins/audit-log/history', 'name', 'Activities Logs', '2020-11-15 21:00:28', '2020-11-15 21:00:28'),
(1773, 1, 'en', 'plugins/audit-log/history', 'created', 'created', '2020-11-15 21:00:28', '2020-11-15 21:00:28'),
(1774, 1, 'en', 'plugins/audit-log/history', 'updated', 'updated', '2020-11-15 21:00:28', '2020-11-15 21:00:28'),
(1775, 1, 'en', 'plugins/audit-log/history', 'deleted', 'deleted', '2020-11-15 21:00:28', '2020-11-15 21:00:28'),
(1776, 1, 'en', 'plugins/audit-log/history', 'logged in', 'logged in', '2020-11-15 21:00:28', '2020-11-15 21:00:28'),
(1777, 1, 'en', 'plugins/audit-log/history', 'logged out', 'logged out', '2020-11-15 21:00:28', '2020-11-15 21:00:28'),
(1778, 1, 'en', 'plugins/audit-log/history', 'changed password', 'changed password', '2020-11-15 21:00:28', '2020-11-15 21:00:28'),
(1779, 1, 'en', 'plugins/audit-log/history', 'updated profile', 'updated profile', '2020-11-15 21:00:28', '2020-11-15 21:00:28'),
(1780, 1, 'en', 'plugins/audit-log/history', 'attached', 'attached', '2020-11-15 21:00:28', '2020-11-15 21:00:28'),
(1781, 1, 'en', 'plugins/audit-log/history', 'shared', 'shared', '2020-11-15 21:00:28', '2020-11-15 21:00:28'),
(1782, 1, 'en', 'plugins/audit-log/history', 'to the system', 'to the system', '2020-11-15 21:00:28', '2020-11-15 21:00:28'),
(1783, 1, 'en', 'plugins/audit-log/history', 'of the system', 'of the system', '2020-11-15 21:00:28', '2020-11-15 21:00:28'),
(1784, 1, 'en', 'plugins/audit-log/history', 'menu', 'menu', '2020-11-15 21:00:28', '2020-11-15 21:00:28'),
(1785, 1, 'en', 'plugins/audit-log/history', 'post', 'post', '2020-11-15 21:00:28', '2020-11-15 21:00:28'),
(1786, 1, 'en', 'plugins/audit-log/history', 'page', 'page', '2020-11-15 21:00:28', '2020-11-15 21:00:28'),
(1787, 1, 'en', 'plugins/audit-log/history', 'category', 'category', '2020-11-15 21:00:28', '2020-11-15 21:00:28'),
(1788, 1, 'en', 'plugins/audit-log/history', 'tag', 'tag', '2020-11-15 21:00:28', '2020-11-15 21:00:28'),
(1789, 1, 'en', 'plugins/audit-log/history', 'user', 'user', '2020-11-15 21:00:28', '2020-11-15 21:00:28'),
(1790, 1, 'en', 'plugins/audit-log/history', 'contact', 'contact', '2020-11-15 21:00:28', '2020-11-15 21:00:28'),
(1791, 1, 'en', 'plugins/audit-log/history', 'backup', 'backup', '2020-11-15 21:00:28', '2020-11-15 21:00:28'),
(1792, 1, 'en', 'plugins/audit-log/history', 'custom-field', 'custom field', '2020-11-15 21:00:28', '2020-11-15 21:00:28'),
(1793, 1, 'en', 'plugins/audit-log/history', 'widget_audit_logs', 'Activities Logs', '2020-11-15 21:00:28', '2020-11-15 21:00:28'),
(1794, 1, 'en', 'plugins/audit-log/history', 'action', 'Action', '2020-11-15 21:00:28', '2020-11-15 21:00:28'),
(1795, 1, 'en', 'plugins/audit-log/history', 'user_agent', 'User Agent', '2020-11-15 21:00:28', '2020-11-15 21:00:28'),
(1796, 1, 'en', 'plugins/audit-log/history', 'system', 'System', '2020-11-15 21:00:28', '2020-11-15 21:00:28'),
(1797, 1, 'en', 'plugins/audit-log/history', 'delete_all', 'Delete all records', '2020-11-15 21:00:28', '2020-11-15 21:00:28'),
(1798, 1, 'vi', 'plugins/audit-log/history', 'name', 'Lịch sử hoạt động', '2020-11-15 21:00:28', '2020-11-15 21:00:28'),
(1799, 1, 'vi', 'plugins/audit-log/history', 'created', ' đã tạo', '2020-11-15 21:00:28', '2020-11-15 21:00:28'),
(1800, 1, 'vi', 'plugins/audit-log/history', 'updated', ' đã cập nhật', '2020-11-15 21:00:28', '2020-11-15 21:00:28'),
(1801, 1, 'vi', 'plugins/audit-log/history', 'deleted', ' đã xóa', '2020-11-15 21:00:28', '2020-11-15 21:00:28'),
(1802, 1, 'vi', 'plugins/audit-log/history', 'attached', 'đính kèm', '2020-11-15 21:00:28', '2020-11-15 21:00:28'),
(1803, 1, 'vi', 'plugins/audit-log/history', 'backup', 'sao lưu', '2020-11-15 21:00:28', '2020-11-15 21:00:28'),
(1804, 1, 'vi', 'plugins/audit-log/history', 'category', 'danh mục', '2020-11-15 21:00:28', '2020-11-15 21:00:28'),
(1805, 1, 'vi', 'plugins/audit-log/history', 'changed password', 'thay đổi mật khẩu', '2020-11-15 21:00:28', '2020-11-15 21:00:28'),
(1806, 1, 'vi', 'plugins/audit-log/history', 'contact', 'liên hệ', '2020-11-15 21:00:28', '2020-11-15 21:00:28'),
(1807, 1, 'vi', 'plugins/audit-log/history', 'custom-field', 'khung mở rộng', '2020-11-15 21:00:28', '2020-11-15 21:00:28'),
(1808, 1, 'vi', 'plugins/audit-log/history', 'logged in', 'đăng nhập', '2020-11-15 21:00:28', '2020-11-15 21:00:28'),
(1809, 1, 'vi', 'plugins/audit-log/history', 'logged out', 'đăng xuất', '2020-11-15 21:00:28', '2020-11-15 21:00:28'),
(1810, 1, 'vi', 'plugins/audit-log/history', 'menu', 'trình đơn', '2020-11-15 21:00:28', '2020-11-15 21:00:28'),
(1811, 1, 'vi', 'plugins/audit-log/history', 'of the system', 'khỏi hệ thống', '2020-11-15 21:00:28', '2020-11-15 21:00:28'),
(1812, 1, 'vi', 'plugins/audit-log/history', 'page', 'trang', '2020-11-15 21:00:28', '2020-11-15 21:00:28'),
(1813, 1, 'vi', 'plugins/audit-log/history', 'post', 'bài viết', '2020-11-15 21:00:28', '2020-11-15 21:00:28'),
(1814, 1, 'vi', 'plugins/audit-log/history', 'shared', 'đã chia sẻ', '2020-11-15 21:00:28', '2020-11-15 21:00:28'),
(1815, 1, 'vi', 'plugins/audit-log/history', 'tag', 'thẻ', '2020-11-15 21:00:28', '2020-11-15 21:00:28'),
(1816, 1, 'vi', 'plugins/audit-log/history', 'to the system', 'vào hệ thống', '2020-11-15 21:00:28', '2020-11-15 21:00:28'),
(1817, 1, 'vi', 'plugins/audit-log/history', 'updated profile', 'cập nhật tài khoản', '2020-11-15 21:00:28', '2020-11-15 21:00:28'),
(1818, 1, 'vi', 'plugins/audit-log/history', 'user', 'thành viên', '2020-11-15 21:00:28', '2020-11-15 21:00:28'),
(1819, 1, 'vi', 'plugins/audit-log/history', 'widget_audit_logs', 'Lịch sử hoạt động', '2020-11-15 21:00:28', '2020-11-15 21:00:28'),
(1820, 1, 'en', 'plugins/backup/backup', 'name', 'Backup', '2020-11-15 21:00:28', '2020-11-15 21:00:28'),
(1821, 1, 'en', 'plugins/backup/backup', 'backup_description', 'Backup database and uploads folder.', '2020-11-15 21:00:28', '2020-11-15 21:00:28'),
(1822, 1, 'en', 'plugins/backup/backup', 'create_backup_success', 'Created backup successfully!', '2020-11-15 21:00:28', '2020-11-15 21:00:28'),
(1823, 1, 'en', 'plugins/backup/backup', 'delete_backup_success', 'Delete backup successfully!', '2020-11-15 21:00:28', '2020-11-15 21:00:28'),
(1824, 1, 'en', 'plugins/backup/backup', 'restore_backup_success', 'Restore backup successfully!', '2020-11-15 21:00:28', '2020-11-15 21:00:28'),
(1825, 1, 'en', 'plugins/backup/backup', 'generate_btn', 'Generate backup', '2020-11-15 21:00:28', '2020-11-15 21:00:28'),
(1826, 1, 'en', 'plugins/backup/backup', 'create', 'Create a backup', '2020-11-15 21:00:28', '2020-11-15 21:00:28'),
(1827, 1, 'en', 'plugins/backup/backup', 'restore', 'Restore a backup', '2020-11-15 21:00:28', '2020-11-15 21:00:28'),
(1828, 1, 'en', 'plugins/backup/backup', 'create_btn', 'Create', '2020-11-15 21:00:28', '2020-11-15 21:00:28'),
(1829, 1, 'en', 'plugins/backup/backup', 'restore_btn', 'Restore', '2020-11-15 21:00:28', '2020-11-15 21:00:28'),
(1830, 1, 'en', 'plugins/backup/backup', 'restore_confirm_msg', 'Do you really want to restore this revision?', '2020-11-15 21:00:28', '2020-11-15 21:00:28'),
(1831, 1, 'en', 'plugins/backup/backup', 'download_uploads_folder', 'Download backup of uploads folder', '2020-11-15 21:00:28', '2020-11-15 21:00:28'),
(1832, 1, 'en', 'plugins/backup/backup', 'download_database', 'Download backup of database', '2020-11-15 21:00:28', '2020-11-15 21:00:28'),
(1833, 1, 'en', 'plugins/backup/backup', 'restore_tooltip', 'Restore this backup', '2020-11-15 21:00:28', '2020-11-15 21:00:28'),
(1834, 1, 'en', 'plugins/backup/backup', 'demo_alert', 'Hi guest, if you see demo site is destroyed, please help me <a href=\":link\">go here</a> and restore demo site to the latest revision! Thank you so much!', '2020-11-15 21:00:28', '2020-11-15 21:00:28'),
(1835, 1, 'en', 'plugins/backup/backup', 'menu_name', 'Backups', '2020-11-15 21:00:28', '2020-11-15 21:00:28'),
(1836, 1, 'en', 'plugins/backup/backup', 'size', 'Size', '2020-11-15 21:00:28', '2020-11-15 21:00:28'),
(1837, 1, 'en', 'plugins/backup/backup', 'no_backups', 'There is no backup now!', '2020-11-15 21:00:28', '2020-11-15 21:00:28'),
(1838, 1, 'vi', 'plugins/backup/backup', 'backup_description', 'Sao lưu cơ sở dữ liệu và thư mục /uploads', '2020-11-15 21:00:28', '2020-11-15 21:00:28'),
(1839, 1, 'vi', 'plugins/backup/backup', 'create', 'Tạo bản sao lưu', '2020-11-15 21:00:28', '2020-11-15 21:00:28'),
(1840, 1, 'vi', 'plugins/backup/backup', 'create_backup_success', 'Tạo bản sao lưu thành công!', '2020-11-15 21:00:28', '2020-11-15 21:00:28'),
(1841, 1, 'vi', 'plugins/backup/backup', 'create_btn', 'Tạo', '2020-11-15 21:00:28', '2020-11-15 21:00:28'),
(1842, 1, 'vi', 'plugins/backup/backup', 'delete_backup_success', 'Xóa bản sao lưu thành công!', '2020-11-15 21:00:28', '2020-11-15 21:00:28'),
(1843, 1, 'vi', 'plugins/backup/backup', 'generate_btn', 'Tạo sao lưu', '2020-11-15 21:00:28', '2020-11-15 21:00:28'),
(1844, 1, 'vi', 'plugins/backup/backup', 'name', 'Sao lưu', '2020-11-15 21:00:28', '2020-11-15 21:00:28'),
(1845, 1, 'vi', 'plugins/backup/backup', 'restore', 'Khôi phục bản sao lưu', '2020-11-15 21:00:28', '2020-11-15 21:00:28'),
(1846, 1, 'vi', 'plugins/backup/backup', 'restore_backup_success', 'Khôi phục bản sao lưu thành công', '2020-11-15 21:00:28', '2020-11-15 21:00:28'),
(1847, 1, 'vi', 'plugins/backup/backup', 'restore_btn', 'Khôi phục', '2020-11-15 21:00:28', '2020-11-15 21:00:28'),
(1848, 1, 'vi', 'plugins/backup/backup', 'restore_confirm_msg', 'Bạn có chắc chắn muốn khôi phục hệ thống về thời điểm tạo bản sao lưu này?', '2020-11-15 21:00:28', '2020-11-15 21:00:28'),
(1849, 1, 'vi', 'plugins/backup/backup', 'restore_tooltip', 'Khôi phục bản sao lưu này', '2020-11-15 21:00:28', '2020-11-15 21:00:28'),
(1850, 1, 'vi', 'plugins/backup/backup', 'download_database', 'Tải về bản sao lưu CSDL', '2020-11-15 21:00:28', '2020-11-15 21:00:28'),
(1851, 1, 'vi', 'plugins/backup/backup', 'download_uploads_folder', 'Tải về bản sao lưu thư mục uploads', '2020-11-15 21:00:28', '2020-11-15 21:00:28'),
(1852, 1, 'vi', 'plugins/backup/backup', 'menu_name', 'Sao lưu', '2020-11-15 21:00:28', '2020-11-15 21:00:28'),
(1853, 1, 'vi', 'plugins/backup/backup', 'demo_alert', 'Chào khách, nếu bạn thấy trang demo bị phá hoại, hãy tới <a href=\":link\">trang sao lưu</a> và khôi phục bản sao lưu cuối cùng. Cảm ơn bạn nhiều!', '2020-11-15 21:00:28', '2020-11-15 21:00:28'),
(1854, 1, 'en', 'plugins/blog/base', 'menu_name', 'Blog', '2020-11-15 21:00:28', '2020-11-15 21:00:28'),
(1855, 1, 'en', 'plugins/blog/base', 'blog_page', 'Blog Page', '2020-11-15 21:00:28', '2020-11-15 21:00:28'),
(1856, 1, 'en', 'plugins/blog/base', 'select', '-- Select --', '2020-11-15 21:00:28', '2020-11-15 21:00:28'),
(1857, 1, 'en', 'plugins/blog/base', 'blog_page_id', 'Blog page', '2020-11-15 21:00:28', '2020-11-15 21:00:28'),
(1858, 1, 'en', 'plugins/blog/base', 'number_posts_per_page', 'Number posts per page', '2020-11-15 21:00:28', '2020-11-15 21:00:28'),
(1859, 1, 'en', 'plugins/blog/base', 'write_some_tags', 'Write some tags', '2020-11-15 21:00:28', '2020-11-15 21:00:28'),
(1860, 1, 'en', 'plugins/blog/base', 'short_code_name', 'Blog posts', '2020-11-15 21:00:28', '2020-11-15 21:00:28'),
(1861, 1, 'en', 'plugins/blog/base', 'short_code_description', 'Add blog posts', '2020-11-15 21:00:28', '2020-11-15 21:00:28'),
(1862, 1, 'en', 'plugins/blog/base', 'number_posts_per_page_in_category', 'Number of posts per page in a category', '2020-11-15 21:00:28', '2020-11-15 21:00:28'),
(1863, 1, 'en', 'plugins/blog/base', 'number_posts_per_page_in_tag', 'Number of posts per page in a tag', '2020-11-15 21:00:28', '2020-11-15 21:00:28'),
(1864, 1, 'en', 'plugins/blog/categories', 'create', 'Create new category', '2020-11-15 21:00:28', '2020-11-15 21:00:28'),
(1865, 1, 'en', 'plugins/blog/categories', 'edit', 'Edit category', '2020-11-15 21:00:28', '2020-11-15 21:00:28'),
(1866, 1, 'en', 'plugins/blog/categories', 'menu', 'Categories', '2020-11-15 21:00:28', '2020-11-15 21:00:28'),
(1867, 1, 'en', 'plugins/blog/categories', 'edit_this_category', 'Edit this category', '2020-11-15 21:00:28', '2020-11-15 21:00:28'),
(1868, 1, 'en', 'plugins/blog/categories', 'menu_name', 'Categories', '2020-11-15 21:00:28', '2020-11-15 21:00:28'),
(1869, 1, 'en', 'plugins/blog/categories', 'none', 'None', '2020-11-15 21:00:28', '2020-11-15 21:00:28'),
(1870, 1, 'en', 'plugins/blog/member', 'dob', 'Born :date', '2020-11-15 21:00:28', '2020-11-15 21:00:28'),
(1871, 1, 'en', 'plugins/blog/member', 'draft_posts', 'Draft Posts', '2020-11-15 21:00:28', '2020-11-15 21:00:28'),
(1872, 1, 'en', 'plugins/blog/member', 'pending_posts', 'Pending Posts', '2020-11-15 21:00:28', '2020-11-15 21:00:28'),
(1873, 1, 'en', 'plugins/blog/member', 'published_posts', 'Published Posts', '2020-11-15 21:00:28', '2020-11-15 21:00:28'),
(1874, 1, 'en', 'plugins/blog/member', 'posts', 'Posts', '2020-11-15 21:00:28', '2020-11-15 21:00:28'),
(1875, 1, 'en', 'plugins/blog/member', 'write_post', 'Write a post', '2020-11-15 21:00:28', '2020-11-15 21:00:28'),
(1876, 1, 'en', 'plugins/blog/posts', 'create', 'Create new post', '2020-11-15 21:00:28', '2020-11-15 21:00:28'),
(1877, 1, 'en', 'plugins/blog/posts', 'edit', 'Edit post', '2020-11-15 21:00:28', '2020-11-15 21:00:28'),
(1878, 1, 'en', 'plugins/blog/posts', 'form.name', 'Name', '2020-11-15 21:00:28', '2020-11-15 21:00:28'),
(1879, 1, 'en', 'plugins/blog/posts', 'form.name_placeholder', 'Post\'s name (Maximum :c characters)', '2020-11-15 21:00:28', '2020-11-15 21:00:28'),
(1880, 1, 'en', 'plugins/blog/posts', 'form.description', 'Description', '2020-11-15 21:00:28', '2020-11-15 21:00:28'),
(1881, 1, 'en', 'plugins/blog/posts', 'form.description_placeholder', 'Short description for post (Maximum :c characters)', '2020-11-15 21:00:28', '2020-11-15 21:00:28'),
(1882, 1, 'en', 'plugins/blog/posts', 'form.categories', 'Categories', '2020-11-15 21:00:28', '2020-11-15 21:00:28'),
(1883, 1, 'en', 'plugins/blog/posts', 'form.tags', 'Tags', '2020-11-15 21:00:28', '2020-11-15 21:00:28'),
(1884, 1, 'en', 'plugins/blog/posts', 'form.tags_placeholder', 'Tags', '2020-11-15 21:00:28', '2020-11-15 21:00:28'),
(1885, 1, 'en', 'plugins/blog/posts', 'form.content', 'Content', '2020-11-15 21:00:28', '2020-11-15 21:00:28'),
(1886, 1, 'en', 'plugins/blog/posts', 'form.is_featured', 'Is featured?', '2020-11-15 21:00:28', '2020-11-15 21:00:28'),
(1887, 1, 'en', 'plugins/blog/posts', 'form.note', 'Note content', '2020-11-15 21:00:28', '2020-11-15 21:00:28'),
(1888, 1, 'en', 'plugins/blog/posts', 'form.format_type', 'Format', '2020-11-15 21:00:28', '2020-11-15 21:00:28'),
(1889, 1, 'en', 'plugins/blog/posts', 'cannot_delete', 'Post could not be deleted', '2020-11-15 21:00:28', '2020-11-15 21:00:28'),
(1890, 1, 'en', 'plugins/blog/posts', 'post_deleted', 'Post deleted', '2020-11-15 21:00:28', '2020-11-15 21:00:28'),
(1891, 1, 'en', 'plugins/blog/posts', 'posts', 'Posts', '2020-11-15 21:00:28', '2020-11-15 21:00:28'),
(1892, 1, 'en', 'plugins/blog/posts', 'post', 'Post', '2020-11-15 21:00:28', '2020-11-15 21:00:28'),
(1893, 1, 'en', 'plugins/blog/posts', 'edit_this_post', 'Edit this post', '2020-11-15 21:00:28', '2020-11-15 21:00:28'),
(1894, 1, 'en', 'plugins/blog/posts', 'no_new_post_now', 'There is no new post now!', '2020-11-15 21:00:28', '2020-11-15 21:00:28'),
(1895, 1, 'en', 'plugins/blog/posts', 'menu_name', 'Posts', '2020-11-15 21:00:28', '2020-11-15 21:00:28'),
(1896, 1, 'en', 'plugins/blog/posts', 'widget_posts_recent', 'Recent Posts', '2020-11-15 21:00:28', '2020-11-15 21:00:28'),
(1897, 1, 'en', 'plugins/blog/posts', 'categories', 'Categories', '2020-11-15 21:00:28', '2020-11-15 21:00:28'),
(1898, 1, 'en', 'plugins/blog/posts', 'category', 'Category', '2020-11-15 21:00:28', '2020-11-15 21:00:28'),
(1899, 1, 'en', 'plugins/blog/posts', 'author', 'Author', '2020-11-15 21:00:28', '2020-11-15 21:00:28'),
(1900, 1, 'en', 'plugins/blog/settings', 'select', '-- Select --', '2020-11-15 21:00:28', '2020-11-15 21:00:28'),
(1901, 1, 'en', 'plugins/blog/settings', 'blog_page_id', 'Blog page', '2020-11-15 21:00:28', '2020-11-15 21:00:28'),
(1902, 1, 'en', 'plugins/blog/tags', 'form.name', 'Name', '2020-11-15 21:00:28', '2020-11-15 21:00:28'),
(1903, 1, 'en', 'plugins/blog/tags', 'form.name_placeholder', 'Tag\'s name (Maximum 120 characters)', '2020-11-15 21:00:28', '2020-11-15 21:00:28'),
(1904, 1, 'en', 'plugins/blog/tags', 'form.description', 'Description', '2020-11-15 21:00:28', '2020-11-15 21:00:28'),
(1905, 1, 'en', 'plugins/blog/tags', 'form.description_placeholder', 'Short description for tag (Maximum 400 characters)', '2020-11-15 21:00:28', '2020-11-15 21:00:28'),
(1906, 1, 'en', 'plugins/blog/tags', 'form.categories', 'Categories', '2020-11-15 21:00:28', '2020-11-15 21:00:28'),
(1907, 1, 'en', 'plugins/blog/tags', 'notices.no_select', 'Please select at least one tag to take this action!', '2020-11-15 21:00:28', '2020-11-15 21:00:28'),
(1908, 1, 'en', 'plugins/blog/tags', 'create', 'Create new tag', '2020-11-15 21:00:28', '2020-11-15 21:00:28'),
(1909, 1, 'en', 'plugins/blog/tags', 'edit', 'Edit tag', '2020-11-15 21:00:28', '2020-11-15 21:00:28'),
(1910, 1, 'en', 'plugins/blog/tags', 'cannot_delete', 'Tag could not be deleted', '2020-11-15 21:00:28', '2020-11-15 21:00:28'),
(1911, 1, 'en', 'plugins/blog/tags', 'deleted', 'Tag deleted', '2020-11-15 21:00:28', '2020-11-15 21:00:28'),
(1912, 1, 'en', 'plugins/blog/tags', 'menu', 'Tags', '2020-11-15 21:00:29', '2020-11-15 21:00:29'),
(1913, 1, 'en', 'plugins/blog/tags', 'edit_this_tag', 'Edit this tag', '2020-11-15 21:00:29', '2020-11-15 21:00:29'),
(1914, 1, 'en', 'plugins/blog/tags', 'menu_name', 'Tags', '2020-11-15 21:00:29', '2020-11-15 21:00:29'),
(1915, 1, 'vi', 'plugins/blog/base', 'menu_name', 'Blog', '2020-11-15 21:00:29', '2020-11-15 21:00:29'),
(1916, 1, 'vi', 'plugins/blog/categories', 'model', 'Danh mục', '2020-11-15 21:00:29', '2020-11-15 21:00:29'),
(1917, 1, 'vi', 'plugins/blog/categories', 'models', 'Danh mục', '2020-11-15 21:00:29', '2020-11-15 21:00:29'),
(1918, 1, 'vi', 'plugins/blog/categories', 'list', 'Danh sách danh mục', '2020-11-15 21:00:29', '2020-11-15 21:00:29'),
(1919, 1, 'vi', 'plugins/blog/categories', 'create', 'Thêm danh mục mới', '2020-11-15 21:00:29', '2020-11-15 21:00:29'),
(1920, 1, 'vi', 'plugins/blog/categories', 'edit', 'Sửa danh mục', '2020-11-15 21:00:29', '2020-11-15 21:00:29'),
(1921, 1, 'vi', 'plugins/blog/categories', 'menu_name', 'Danh mục', '2020-11-15 21:00:29', '2020-11-15 21:00:29'),
(1922, 1, 'vi', 'plugins/blog/categories', 'edit_this_category', 'Sửa danh mục này', '2020-11-15 21:00:29', '2020-11-15 21:00:29'),
(1923, 1, 'vi', 'plugins/blog/categories', 'menu', 'Danh mục', '2020-11-15 21:00:29', '2020-11-15 21:00:29'),
(1924, 1, 'vi', 'plugins/blog/posts', 'model', 'Bài viết', '2020-11-15 21:00:29', '2020-11-15 21:00:29'),
(1925, 1, 'vi', 'plugins/blog/posts', 'models', 'Bài viết', '2020-11-15 21:00:29', '2020-11-15 21:00:29'),
(1926, 1, 'vi', 'plugins/blog/posts', 'list', 'Danh sách bài viết', '2020-11-15 21:00:29', '2020-11-15 21:00:29'),
(1927, 1, 'vi', 'plugins/blog/posts', 'create', 'Thêm bài viết', '2020-11-15 21:00:29', '2020-11-15 21:00:29'),
(1928, 1, 'vi', 'plugins/blog/posts', 'edit', 'Sửa bài viết', '2020-11-15 21:00:29', '2020-11-15 21:00:29'),
(1929, 1, 'vi', 'plugins/blog/posts', 'form.name', 'Tên', '2020-11-15 21:00:29', '2020-11-15 21:00:29'),
(1930, 1, 'vi', 'plugins/blog/posts', 'form.name_placeholder', 'Tên bài viết (Tối đa 120 kí tự)', '2020-11-15 21:00:29', '2020-11-15 21:00:29'),
(1931, 1, 'vi', 'plugins/blog/posts', 'form.description', 'Mô tả', '2020-11-15 21:00:29', '2020-11-15 21:00:29'),
(1932, 1, 'vi', 'plugins/blog/posts', 'form.description_placeholder', 'Mô tả ngắn cho bài viết (Tối đa 400 kí tự)', '2020-11-15 21:00:29', '2020-11-15 21:00:29'),
(1933, 1, 'vi', 'plugins/blog/posts', 'form.categories', 'Chuyên mục', '2020-11-15 21:00:29', '2020-11-15 21:00:29'),
(1934, 1, 'vi', 'plugins/blog/posts', 'form.tags', 'Từ khóa', '2020-11-15 21:00:29', '2020-11-15 21:00:29'),
(1935, 1, 'vi', 'plugins/blog/posts', 'form.tags_placeholder', 'Thêm từ khóa', '2020-11-15 21:00:29', '2020-11-15 21:00:29'),
(1936, 1, 'vi', 'plugins/blog/posts', 'form.content', 'Nội dung', '2020-11-15 21:00:29', '2020-11-15 21:00:29'),
(1937, 1, 'vi', 'plugins/blog/posts', 'form.featured', 'Bài viết nổi bật?', '2020-11-15 21:00:29', '2020-11-15 21:00:29'),
(1938, 1, 'vi', 'plugins/blog/posts', 'form.note', 'Nội dung ghi chú', '2020-11-15 21:00:29', '2020-11-15 21:00:29'),
(1939, 1, 'vi', 'plugins/blog/posts', 'form.format_type', 'Định dạng', '2020-11-15 21:00:29', '2020-11-15 21:00:29'),
(1940, 1, 'vi', 'plugins/blog/posts', 'post_deleted', 'Xóa bài viết thành công', '2020-11-15 21:00:29', '2020-11-15 21:00:29'),
(1941, 1, 'vi', 'plugins/blog/posts', 'cannot_delete', 'Không thể xóa bài viết', '2020-11-15 21:00:29', '2020-11-15 21:00:29'),
(1942, 1, 'vi', 'plugins/blog/posts', 'menu_name', 'Bài viết', '2020-11-15 21:00:29', '2020-11-15 21:00:29'),
(1943, 1, 'vi', 'plugins/blog/posts', 'edit_this_post', 'Sửa bài viết này', '2020-11-15 21:00:29', '2020-11-15 21:00:29'),
(1944, 1, 'vi', 'plugins/blog/posts', 'no_new_post_now', 'Hiện tại không có bài viết mới!', '2020-11-15 21:00:29', '2020-11-15 21:00:29'),
(1945, 1, 'vi', 'plugins/blog/posts', 'posts', 'Bài viết', '2020-11-15 21:00:29', '2020-11-15 21:00:29'),
(1946, 1, 'vi', 'plugins/blog/posts', 'widget_posts_recent', 'Bài viết gần đây', '2020-11-15 21:00:29', '2020-11-15 21:00:29'),
(1947, 1, 'vi', 'plugins/blog/posts', 'author', 'Tác giả', '2020-11-15 21:00:29', '2020-11-15 21:00:29'),
(1948, 1, 'vi', 'plugins/blog/tags', 'model', 'Thẻ', '2020-11-15 21:00:29', '2020-11-15 21:00:29'),
(1949, 1, 'vi', 'plugins/blog/tags', 'models', 'Thẻ', '2020-11-15 21:00:29', '2020-11-15 21:00:29'),
(1950, 1, 'vi', 'plugins/blog/tags', 'list', 'Danh sách thẻ', '2020-11-15 21:00:29', '2020-11-15 21:00:29'),
(1951, 1, 'vi', 'plugins/blog/tags', 'create', 'Thêm thẻ mới', '2020-11-15 21:00:29', '2020-11-15 21:00:29'),
(1952, 1, 'vi', 'plugins/blog/tags', 'edit', 'Sửa thẻ', '2020-11-15 21:00:29', '2020-11-15 21:00:29'),
(1953, 1, 'vi', 'plugins/blog/tags', 'form.name', 'Tên', '2020-11-15 21:00:29', '2020-11-15 21:00:29'),
(1954, 1, 'vi', 'plugins/blog/tags', 'form.name_placeholder', 'Tên thẻ (Tối đa 120 kí tự)', '2020-11-15 21:00:29', '2020-11-15 21:00:29'),
(1955, 1, 'vi', 'plugins/blog/tags', 'form.description', 'Mô tả', '2020-11-15 21:00:29', '2020-11-15 21:00:29'),
(1956, 1, 'vi', 'plugins/blog/tags', 'form.description_placeholder', 'Mô tả ngắn cho tag (Tối đa 400 kí tự)', '2020-11-15 21:00:29', '2020-11-15 21:00:29'),
(1957, 1, 'vi', 'plugins/blog/tags', 'form.categories', 'Chuyên mục', '2020-11-15 21:00:29', '2020-11-15 21:00:29'),
(1958, 1, 'vi', 'plugins/blog/tags', 'notices.no_select', 'Chọn ít nhất 1 bài viết để thực hiện hành động này!', '2020-11-15 21:00:29', '2020-11-15 21:00:29'),
(1959, 1, 'vi', 'plugins/blog/tags', 'cannot_delete', 'Không thể xóa thẻ', '2020-11-15 21:00:29', '2020-11-15 21:00:29'),
(1960, 1, 'vi', 'plugins/blog/tags', 'deleted', 'Xóa thẻ thành công', '2020-11-15 21:00:29', '2020-11-15 21:00:29'),
(1961, 1, 'vi', 'plugins/blog/tags', 'menu_name', 'Thẻ', '2020-11-15 21:00:29', '2020-11-15 21:00:29'),
(1962, 1, 'vi', 'plugins/blog/tags', 'edit_this_tag', 'Sửa thẻ này', '2020-11-15 21:00:29', '2020-11-15 21:00:29'),
(1963, 1, 'vi', 'plugins/blog/tags', 'menu', 'Thẻ', '2020-11-15 21:00:29', '2020-11-15 21:00:29'),
(1964, 1, 'en', 'plugins/captcha/captcha', 'settings.title', 'Captcha', '2020-11-15 21:00:29', '2020-11-15 21:00:29'),
(1965, 1, 'en', 'plugins/captcha/captcha', 'settings.description', 'Settings for Google Captcha', '2020-11-15 21:00:29', '2020-11-15 21:00:29');
INSERT INTO `translations` (`id`, `status`, `locale`, `group`, `key`, `value`, `created_at`, `updated_at`) VALUES
(1966, 1, 'en', 'plugins/captcha/captcha', 'settings.captcha_site_key', 'Captcha Site Key', '2020-11-15 21:00:29', '2020-11-15 21:00:29'),
(1967, 1, 'en', 'plugins/captcha/captcha', 'settings.captcha_secret', 'Captcha Secret', '2020-11-15 21:00:29', '2020-11-15 21:00:29'),
(1968, 1, 'en', 'plugins/captcha/captcha', 'settings.enable_captcha', 'Enable Captcha?', '2020-11-15 21:00:29', '2020-11-15 21:00:29'),
(1969, 1, 'en', 'plugins/captcha/captcha', 'settings.helper', 'Go here to get credentials https://www.google.com/recaptcha/admin#list.', '2020-11-15 21:00:29', '2020-11-15 21:00:29'),
(1970, 1, 'en', 'plugins/captcha/captcha', 'settings.hide_badge', 'Hide recaptcha badge (for v3)', '2020-11-15 21:00:29', '2020-11-15 21:00:29'),
(1971, 1, 'en', 'plugins/captcha/captcha', 'settings.type', 'Type', '2020-11-15 21:00:29', '2020-11-15 21:00:29'),
(1972, 1, 'en', 'plugins/captcha/captcha', 'settings.v2_description', 'V2 (Verify requests with a challenge)', '2020-11-15 21:00:29', '2020-11-15 21:00:29'),
(1973, 1, 'en', 'plugins/captcha/captcha', 'settings.v3_description', 'V3 (Verify requests with a score)', '2020-11-15 21:00:29', '2020-11-15 21:00:29'),
(1974, 1, 'en', 'plugins/captcha/captcha', 'failed_validate', 'Failed to validate the captcha.', '2020-11-15 21:00:29', '2020-11-15 21:00:29'),
(1975, 1, 'en', 'plugins/career/career', 'name', 'Careers', '2020-11-15 21:00:29', '2020-11-15 21:00:29'),
(1976, 1, 'en', 'plugins/career/career', 'create', 'New career', '2020-11-15 21:00:29', '2020-11-15 21:00:29'),
(1977, 1, 'en', 'plugins/career/career', 'edit', 'Edit career', '2020-11-15 21:00:29', '2020-11-15 21:00:29'),
(1978, 1, 'en', 'plugins/career/career', 'location', 'Location', '2020-11-15 21:00:29', '2020-11-15 21:00:29'),
(1979, 1, 'en', 'plugins/career/career', 'salary', 'Salary', '2020-11-15 21:00:29', '2020-11-15 21:00:29'),
(1980, 1, 'vi', 'plugins/career/career', 'name', 'Tuyển dụng', '2020-11-15 21:00:29', '2020-11-15 21:00:29'),
(1981, 1, 'vi', 'plugins/career/career', 'create', 'Thêm tin tuyển dụng', '2020-11-15 21:00:29', '2020-11-15 21:00:29'),
(1982, 1, 'vi', 'plugins/career/career', 'edit', 'Sửa tin tuyển dụng', '2020-11-15 21:00:29', '2020-11-15 21:00:29'),
(1983, 1, 'vi', 'plugins/career/career', 'location', 'Địa điểm', '2020-11-15 21:00:29', '2020-11-15 21:00:29'),
(1984, 1, 'vi', 'plugins/career/career', 'salary', 'Mức lương', '2020-11-15 21:00:29', '2020-11-15 21:00:29'),
(1985, 1, 'en', 'plugins/contact/contact', 'menu', 'Contact', '2020-11-15 21:00:29', '2020-11-15 21:00:29'),
(1986, 1, 'en', 'plugins/contact/contact', 'edit', 'View contact', '2020-11-15 21:00:29', '2020-11-15 21:00:29'),
(1987, 1, 'en', 'plugins/contact/contact', 'tables.phone', 'Phone', '2020-11-15 21:00:29', '2020-11-15 21:00:29'),
(1988, 1, 'en', 'plugins/contact/contact', 'tables.email', 'Email', '2020-11-15 21:00:29', '2020-11-15 21:00:29'),
(1989, 1, 'en', 'plugins/contact/contact', 'tables.full_name', 'Full Name', '2020-11-15 21:00:29', '2020-11-15 21:00:29'),
(1990, 1, 'en', 'plugins/contact/contact', 'tables.time', 'Time', '2020-11-15 21:00:29', '2020-11-15 21:00:29'),
(1991, 1, 'en', 'plugins/contact/contact', 'tables.address', 'Address', '2020-11-15 21:00:29', '2020-11-15 21:00:29'),
(1992, 1, 'en', 'plugins/contact/contact', 'tables.subject', 'Subject', '2020-11-15 21:00:29', '2020-11-15 21:00:29'),
(1993, 1, 'en', 'plugins/contact/contact', 'tables.content', 'Content', '2020-11-15 21:00:29', '2020-11-15 21:00:29'),
(1994, 1, 'en', 'plugins/contact/contact', 'contact_information', 'Contact information', '2020-11-15 21:00:29', '2020-11-15 21:00:29'),
(1995, 1, 'en', 'plugins/contact/contact', 'replies', 'Replies', '2020-11-15 21:00:29', '2020-11-15 21:00:29'),
(1996, 1, 'en', 'plugins/contact/contact', 'email.header', 'Email', '2020-11-15 21:00:29', '2020-11-15 21:00:29'),
(1997, 1, 'en', 'plugins/contact/contact', 'email.title', 'New contact from your site', '2020-11-15 21:00:29', '2020-11-15 21:00:29'),
(1998, 1, 'en', 'plugins/contact/contact', 'email.success', 'Send message successfully!', '2020-11-15 21:00:29', '2020-11-15 21:00:29'),
(1999, 1, 'en', 'plugins/contact/contact', 'email.failed', 'Can\'t send message on this time, please try again later!', '2020-11-15 21:00:29', '2020-11-15 21:00:29'),
(2000, 1, 'en', 'plugins/contact/contact', 'form.name.required', 'Name is required', '2020-11-15 21:00:29', '2020-11-15 21:00:29'),
(2001, 1, 'en', 'plugins/contact/contact', 'form.email.required', 'Email is required', '2020-11-15 21:00:29', '2020-11-15 21:00:29'),
(2002, 1, 'en', 'plugins/contact/contact', 'form.email.email', 'The email address is not valid', '2020-11-15 21:00:29', '2020-11-15 21:00:29'),
(2003, 1, 'en', 'plugins/contact/contact', 'form.content.required', 'Content is required', '2020-11-15 21:00:29', '2020-11-15 21:00:29'),
(2004, 1, 'en', 'plugins/contact/contact', 'contact_sent_from', 'This contact information sent from', '2020-11-15 21:00:29', '2020-11-15 21:00:29'),
(2005, 1, 'en', 'plugins/contact/contact', 'sender', 'Sender', '2020-11-15 21:00:29', '2020-11-15 21:00:29'),
(2006, 1, 'en', 'plugins/contact/contact', 'sender_email', 'Email', '2020-11-15 21:00:29', '2020-11-15 21:00:29'),
(2007, 1, 'en', 'plugins/contact/contact', 'sender_address', 'Address', '2020-11-15 21:00:29', '2020-11-15 21:00:29'),
(2008, 1, 'en', 'plugins/contact/contact', 'sender_phone', 'Phone', '2020-11-15 21:00:29', '2020-11-15 21:00:29'),
(2009, 1, 'en', 'plugins/contact/contact', 'message_content', 'Message content', '2020-11-15 21:00:29', '2020-11-15 21:00:29'),
(2010, 1, 'en', 'plugins/contact/contact', 'sent_from', 'Email sent from', '2020-11-15 21:00:29', '2020-11-15 21:00:29'),
(2011, 1, 'en', 'plugins/contact/contact', 'form_name', 'Name', '2020-11-15 21:00:29', '2020-11-15 21:00:29'),
(2012, 1, 'en', 'plugins/contact/contact', 'form_email', 'Email', '2020-11-15 21:00:29', '2020-11-15 21:00:29'),
(2013, 1, 'en', 'plugins/contact/contact', 'form_address', 'Address', '2020-11-15 21:00:29', '2020-11-15 21:00:29'),
(2014, 1, 'en', 'plugins/contact/contact', 'form_subject', 'Subject', '2020-11-15 21:00:29', '2020-11-15 21:00:29'),
(2015, 1, 'en', 'plugins/contact/contact', 'form_phone', 'Phone', '2020-11-15 21:00:29', '2020-11-15 21:00:29'),
(2016, 1, 'en', 'plugins/contact/contact', 'form_message', 'Message', '2020-11-15 21:00:29', '2020-11-15 21:00:29'),
(2017, 1, 'en', 'plugins/contact/contact', 'required_field', 'The field with (<span style=\"color: red\">*</span>) is required.', '2020-11-15 21:00:29', '2020-11-15 21:00:29'),
(2018, 1, 'en', 'plugins/contact/contact', 'send_btn', 'Send message', '2020-11-15 21:00:29', '2020-11-15 21:00:29'),
(2019, 1, 'en', 'plugins/contact/contact', 'new_msg_notice', 'You have <span class=\"bold\">:count</span> New Messages', '2020-11-15 21:00:29', '2020-11-15 21:00:29'),
(2020, 1, 'en', 'plugins/contact/contact', 'view_all', 'View all', '2020-11-15 21:00:29', '2020-11-15 21:00:29'),
(2021, 1, 'en', 'plugins/contact/contact', 'statuses.read', 'Read', '2020-11-15 21:00:29', '2020-11-15 21:00:29'),
(2022, 1, 'en', 'plugins/contact/contact', 'statuses.unread', 'Unread', '2020-11-15 21:00:29', '2020-11-15 21:00:29'),
(2023, 1, 'en', 'plugins/contact/contact', 'phone', 'Phone', '2020-11-15 21:00:29', '2020-11-15 21:00:29'),
(2024, 1, 'en', 'plugins/contact/contact', 'address', 'Address', '2020-11-15 21:00:29', '2020-11-15 21:00:29'),
(2025, 1, 'en', 'plugins/contact/contact', 'message', 'Message', '2020-11-15 21:00:29', '2020-11-15 21:00:29'),
(2026, 1, 'en', 'plugins/contact/contact', 'settings.email.title', 'Contact', '2020-11-15 21:00:29', '2020-11-15 21:00:29'),
(2027, 1, 'en', 'plugins/contact/contact', 'settings.email.description', 'Contact email configuration', '2020-11-15 21:00:29', '2020-11-15 21:00:29'),
(2028, 1, 'en', 'plugins/contact/contact', 'settings.email.templates.notice_title', 'Send notice to administrator', '2020-11-15 21:00:29', '2020-11-15 21:00:29'),
(2029, 1, 'en', 'plugins/contact/contact', 'settings.email.templates.notice_description', 'Email template to send notice to administrator when system get new contact', '2020-11-15 21:00:29', '2020-11-15 21:00:29'),
(2030, 1, 'en', 'plugins/contact/contact', 'no_reply', 'No reply yet!', '2020-11-15 21:00:29', '2020-11-15 21:00:29'),
(2031, 1, 'en', 'plugins/contact/contact', 'reply', 'Reply', '2020-11-15 21:00:29', '2020-11-15 21:00:29'),
(2032, 1, 'en', 'plugins/contact/contact', 'send', 'Send', '2020-11-15 21:00:29', '2020-11-15 21:00:29'),
(2033, 1, 'en', 'plugins/contact/contact', 'shortcode_name', 'Contact form', '2020-11-15 21:00:29', '2020-11-15 21:00:29'),
(2034, 1, 'en', 'plugins/contact/contact', 'shortcode_description', 'Add a contact form', '2020-11-15 21:00:29', '2020-11-15 21:00:29'),
(2035, 1, 'en', 'plugins/contact/contact', 'shortcode_content_description', 'Add shortcode [contact-form][/contact-form] to editor?', '2020-11-15 21:00:29', '2020-11-15 21:00:29'),
(2036, 1, 'en', 'plugins/contact/contact', 'message_sent_success', 'Message sent successfully!', '2020-11-15 21:00:29', '2020-11-15 21:00:29'),
(2037, 1, 'vi', 'plugins/contact/contact', 'menu', 'Liên hệ', '2020-11-15 21:00:29', '2020-11-15 21:00:29'),
(2038, 1, 'vi', 'plugins/contact/contact', 'model', 'Liên hệ', '2020-11-15 21:00:29', '2020-11-15 21:00:29'),
(2039, 1, 'vi', 'plugins/contact/contact', 'models', 'Liên hệ', '2020-11-15 21:00:29', '2020-11-15 21:00:29'),
(2040, 1, 'vi', 'plugins/contact/contact', 'list', 'Danh sách liên hệ', '2020-11-15 21:00:29', '2020-11-15 21:00:29'),
(2041, 1, 'vi', 'plugins/contact/contact', 'edit', 'Xem liên hệ', '2020-11-15 21:00:29', '2020-11-15 21:00:29'),
(2042, 1, 'vi', 'plugins/contact/contact', 'tables.phone', 'Điện thoại', '2020-11-15 21:00:29', '2020-11-15 21:00:29'),
(2043, 1, 'vi', 'plugins/contact/contact', 'tables.email', 'Email', '2020-11-15 21:00:29', '2020-11-15 21:00:29'),
(2044, 1, 'vi', 'plugins/contact/contact', 'tables.full_name', 'Họ tên', '2020-11-15 21:00:29', '2020-11-15 21:00:29'),
(2045, 1, 'vi', 'plugins/contact/contact', 'tables.time', 'Thời gian', '2020-11-15 21:00:29', '2020-11-15 21:00:29'),
(2046, 1, 'vi', 'plugins/contact/contact', 'tables.address', 'Địa địa chỉ', '2020-11-15 21:00:29', '2020-11-15 21:00:29'),
(2047, 1, 'vi', 'plugins/contact/contact', 'tables.subject', 'Tiêu đề', '2020-11-15 21:00:29', '2020-11-15 21:00:29'),
(2048, 1, 'vi', 'plugins/contact/contact', 'tables.content', 'Nội dung', '2020-11-15 21:00:29', '2020-11-15 21:00:29'),
(2049, 1, 'vi', 'plugins/contact/contact', 'notices.no_select', 'Chọn ít nhất 1 liên hệ để thực hiện hành động này!', '2020-11-15 21:00:29', '2020-11-15 21:00:29'),
(2050, 1, 'vi', 'plugins/contact/contact', 'notices.update_success_message', 'Cập nhật thành công', '2020-11-15 21:00:29', '2020-11-15 21:00:29'),
(2051, 1, 'vi', 'plugins/contact/contact', 'cannot_delete', 'Không thể xóa liên hệ này', '2020-11-15 21:00:29', '2020-11-15 21:00:29'),
(2052, 1, 'vi', 'plugins/contact/contact', 'deleted', 'Liên hệ đã được xóa', '2020-11-15 21:00:29', '2020-11-15 21:00:29'),
(2053, 1, 'vi', 'plugins/contact/contact', 'contact_information', 'Thông tin liên hệ', '2020-11-15 21:00:29', '2020-11-15 21:00:29'),
(2054, 1, 'vi', 'plugins/contact/contact', 'email.title', 'Thông tin liên hệ mới', '2020-11-15 21:00:29', '2020-11-15 21:00:29'),
(2055, 1, 'vi', 'plugins/contact/contact', 'email.success', 'Gửi tin nhắn thành công!', '2020-11-15 21:00:29', '2020-11-15 21:00:29'),
(2056, 1, 'vi', 'plugins/contact/contact', 'email.failed', 'Có lỗi trong quá trình gửi tin nhắn!', '2020-11-15 21:00:29', '2020-11-15 21:00:29'),
(2057, 1, 'vi', 'plugins/contact/contact', 'email.header', 'Email', '2020-11-15 21:00:29', '2020-11-15 21:00:29'),
(2058, 1, 'vi', 'plugins/contact/contact', 'form.name.required', 'Tên là bắt buộc', '2020-11-15 21:00:29', '2020-11-15 21:00:29'),
(2059, 1, 'vi', 'plugins/contact/contact', 'form.email.required', 'Email là bắt buộc', '2020-11-15 21:00:29', '2020-11-15 21:00:29'),
(2060, 1, 'vi', 'plugins/contact/contact', 'form.email.email', 'Địa chỉ email không hợp lệ', '2020-11-15 21:00:29', '2020-11-15 21:00:29'),
(2061, 1, 'vi', 'plugins/contact/contact', 'form.content.required', 'Nội dung là bắt buộc', '2020-11-15 21:00:29', '2020-11-15 21:00:29'),
(2062, 1, 'vi', 'plugins/contact/contact', 'form.g-recaptcha-response.required', 'Hãy xác minh không phải là robot trước khi gửi tin nhắn.', '2020-11-15 21:00:29', '2020-11-15 21:00:29'),
(2063, 1, 'vi', 'plugins/contact/contact', 'form.g-recaptcha-response.captcha', 'Bạn chưa xác minh không phải là robot thành công.', '2020-11-15 21:00:29', '2020-11-15 21:00:29'),
(2064, 1, 'vi', 'plugins/contact/contact', 'confirm_not_robot', 'Xác nhận không phải người máy', '2020-11-15 21:00:29', '2020-11-15 21:00:29'),
(2065, 1, 'vi', 'plugins/contact/contact', 'contact_sent_from', 'Liên hệ này được gửi từ', '2020-11-15 21:00:29', '2020-11-15 21:00:29'),
(2066, 1, 'vi', 'plugins/contact/contact', 'form_address', 'Địa chỉ', '2020-11-15 21:00:29', '2020-11-15 21:00:29'),
(2067, 1, 'vi', 'plugins/contact/contact', 'form_email', 'Thư điện tử', '2020-11-15 21:00:29', '2020-11-15 21:00:29'),
(2068, 1, 'vi', 'plugins/contact/contact', 'form_message', 'Thông điệp', '2020-11-15 21:00:29', '2020-11-15 21:00:29'),
(2069, 1, 'vi', 'plugins/contact/contact', 'form_name', 'Họ tên', '2020-11-15 21:00:29', '2020-11-15 21:00:29'),
(2070, 1, 'vi', 'plugins/contact/contact', 'form_phone', 'Số điện thoại', '2020-11-15 21:00:29', '2020-11-15 21:00:29'),
(2071, 1, 'vi', 'plugins/contact/contact', 'message_content', 'Nội dung thông điệp', '2020-11-15 21:00:29', '2020-11-15 21:00:29'),
(2072, 1, 'vi', 'plugins/contact/contact', 'required_field', 'Những trường có dấu (<span style=\"color: red\">*</span>) là bắt buộc.', '2020-11-15 21:00:29', '2020-11-15 21:00:29'),
(2073, 1, 'vi', 'plugins/contact/contact', 'send_btn', 'Gửi tin nhắn', '2020-11-15 21:00:29', '2020-11-15 21:00:29'),
(2074, 1, 'vi', 'plugins/contact/contact', 'sender', 'Người gửi', '2020-11-15 21:00:29', '2020-11-15 21:00:29'),
(2075, 1, 'vi', 'plugins/contact/contact', 'sender_address', 'Địa chỉ', '2020-11-15 21:00:29', '2020-11-15 21:00:29'),
(2076, 1, 'vi', 'plugins/contact/contact', 'sender_email', 'Thư điện tử', '2020-11-15 21:00:29', '2020-11-15 21:00:29'),
(2077, 1, 'vi', 'plugins/contact/contact', 'sender_phone', 'Số điện thoại', '2020-11-15 21:00:29', '2020-11-15 21:00:29'),
(2078, 1, 'vi', 'plugins/contact/contact', 'sent_from', 'Thư được gửi từ', '2020-11-15 21:00:29', '2020-11-15 21:00:29'),
(2079, 1, 'vi', 'plugins/contact/contact', 'mark_as_read', 'Đánh dấu đã đọc', '2020-11-15 21:00:29', '2020-11-15 21:00:29'),
(2080, 1, 'vi', 'plugins/contact/contact', 'mark_as_unread', 'Đánh dấu chưa đọc', '2020-11-15 21:00:29', '2020-11-15 21:00:29'),
(2081, 1, 'vi', 'plugins/contact/contact', 'address', 'Địa chỉ', '2020-11-15 21:00:30', '2020-11-15 21:00:30'),
(2082, 1, 'vi', 'plugins/contact/contact', 'message', 'Liên hệ', '2020-11-15 21:00:30', '2020-11-15 21:00:30'),
(2083, 1, 'vi', 'plugins/contact/contact', 'new_msg_notice', 'Bạn có <span class=\"bold\">:count</span> tin nhắn mới', '2020-11-15 21:00:30', '2020-11-15 21:00:30'),
(2084, 1, 'vi', 'plugins/contact/contact', 'phone', 'Điện thoại', '2020-11-15 21:00:30', '2020-11-15 21:00:30'),
(2085, 1, 'vi', 'plugins/contact/contact', 'statuses.read', 'Đã đọc', '2020-11-15 21:00:30', '2020-11-15 21:00:30'),
(2086, 1, 'vi', 'plugins/contact/contact', 'statuses.unread', 'Chưa đọc', '2020-11-15 21:00:30', '2020-11-15 21:00:30'),
(2087, 1, 'vi', 'plugins/contact/contact', 'view_all', 'Xem tất cả', '2020-11-15 21:00:30', '2020-11-15 21:00:30'),
(2088, 1, 'vi', 'plugins/contact/contact', 'settings.email.title', 'Liên hệ', '2020-11-15 21:00:30', '2020-11-15 21:00:30'),
(2089, 1, 'vi', 'plugins/contact/contact', 'settings.email.description', 'Cấu hình thông tin cho mục liên hệ', '2020-11-15 21:00:30', '2020-11-15 21:00:30'),
(2090, 1, 'vi', 'plugins/contact/contact', 'settings.email.templates.notice_title', 'Thông báo tới admin', '2020-11-15 21:00:30', '2020-11-15 21:00:30'),
(2091, 1, 'vi', 'plugins/contact/contact', 'settings.email.templates.notice_description', 'Mẫu nội dung email gửi tới admin khi có liên hệ mới', '2020-11-15 21:00:30', '2020-11-15 21:00:30'),
(2092, 1, 'en', 'plugins/cookie-consent/cookie-consent', 'theme_options.name', 'Cookie Consent', '2020-11-15 21:00:30', '2020-11-15 21:00:30'),
(2093, 1, 'en', 'plugins/cookie-consent/cookie-consent', 'theme_options.description', 'Cookie consent settings', '2020-11-15 21:00:30', '2020-11-15 21:00:30'),
(2094, 1, 'en', 'plugins/cookie-consent/cookie-consent', 'theme_options.enable', 'Enable cookie consent?', '2020-11-15 21:00:30', '2020-11-15 21:00:30'),
(2095, 1, 'en', 'plugins/cookie-consent/cookie-consent', 'theme_options.message', 'Message', '2020-11-15 21:00:30', '2020-11-15 21:00:30'),
(2096, 1, 'en', 'plugins/cookie-consent/cookie-consent', 'theme_options.button_text', 'Button text', '2020-11-15 21:00:30', '2020-11-15 21:00:30'),
(2097, 1, 'en', 'plugins/cookie-consent/cookie-consent', 'theme_options.max_width', 'Max width (px)', '2020-11-15 21:00:30', '2020-11-15 21:00:30'),
(2098, 1, 'en', 'plugins/cookie-consent/cookie-consent', 'theme_options.background_color', 'Background color', '2020-11-15 21:00:30', '2020-11-15 21:00:30'),
(2099, 1, 'en', 'plugins/cookie-consent/cookie-consent', 'theme_options.text_color', 'Text color', '2020-11-15 21:00:30', '2020-11-15 21:00:30'),
(2100, 1, 'en', 'plugins/cookie-consent/cookie-consent', 'message', 'Your experience on this site will be improved by allowing cookies.', '2020-11-15 21:00:30', '2020-11-15 21:00:30'),
(2101, 1, 'en', 'plugins/cookie-consent/cookie-consent', 'button_text', 'Allow cookies', '2020-11-15 21:00:30', '2020-11-15 21:00:30'),
(2102, 1, 'en', 'plugins/language/language', 'name', 'Languages', '2020-11-15 21:00:30', '2020-11-15 21:00:30'),
(2103, 1, 'en', 'plugins/language/language', 'choose_language', 'Choose a language', '2020-11-15 21:00:30', '2020-11-15 21:00:30'),
(2104, 1, 'en', 'plugins/language/language', 'select_language', 'Select language', '2020-11-15 21:00:30', '2020-11-15 21:00:30'),
(2105, 1, 'en', 'plugins/language/language', 'choose_language_helper', 'You can choose a language in the list or directly edit it below.', '2020-11-15 21:00:30', '2020-11-15 21:00:30'),
(2106, 1, 'en', 'plugins/language/language', 'language_name', 'Language name', '2020-11-15 21:00:30', '2020-11-15 21:00:30'),
(2107, 1, 'en', 'plugins/language/language', 'language_name_helper', 'The name is how it is displayed on your site (for example: English).', '2020-11-15 21:00:30', '2020-11-15 21:00:30'),
(2108, 1, 'en', 'plugins/language/language', 'locale', 'Locale', '2020-11-15 21:00:30', '2020-11-15 21:00:30'),
(2109, 1, 'en', 'plugins/language/language', 'locale_helper', 'Laravel Locale for the language (for example: <code>en</code>).', '2020-11-15 21:00:30', '2020-11-15 21:00:30'),
(2110, 1, 'en', 'plugins/language/language', 'language_code', 'Language code', '2020-11-15 21:00:30', '2020-11-15 21:00:30'),
(2111, 1, 'en', 'plugins/language/language', 'language_code_helper', 'Language code - preferably 2-letters ISO 639-1 (for example: en)', '2020-11-15 21:00:30', '2020-11-15 21:00:30'),
(2112, 1, 'en', 'plugins/language/language', 'text_direction', 'Text direction', '2020-11-15 21:00:30', '2020-11-15 21:00:30'),
(2113, 1, 'en', 'plugins/language/language', 'text_direction_helper', 'Choose the text direction for the language', '2020-11-15 21:00:30', '2020-11-15 21:00:30'),
(2114, 1, 'en', 'plugins/language/language', 'left_to_right', 'Left to right', '2020-11-15 21:00:30', '2020-11-15 21:00:30'),
(2115, 1, 'en', 'plugins/language/language', 'right_to_left', 'Right to left', '2020-11-15 21:00:30', '2020-11-15 21:00:30'),
(2116, 1, 'en', 'plugins/language/language', 'flag', 'Flag', '2020-11-15 21:00:30', '2020-11-15 21:00:30'),
(2117, 1, 'en', 'plugins/language/language', 'flag_helper', 'Choose a flag for the language.', '2020-11-15 21:00:30', '2020-11-15 21:00:30'),
(2118, 1, 'en', 'plugins/language/language', 'order', 'Order', '2020-11-15 21:00:30', '2020-11-15 21:00:30'),
(2119, 1, 'en', 'plugins/language/language', 'order_helper', 'Position of the language in the language switcher', '2020-11-15 21:00:30', '2020-11-15 21:00:30'),
(2120, 1, 'en', 'plugins/language/language', 'add_new_language', 'Add new language', '2020-11-15 21:00:30', '2020-11-15 21:00:30'),
(2121, 1, 'en', 'plugins/language/language', 'code', 'Code', '2020-11-15 21:00:30', '2020-11-15 21:00:30'),
(2122, 1, 'en', 'plugins/language/language', 'default_language', 'Is default?', '2020-11-15 21:00:30', '2020-11-15 21:00:30'),
(2123, 1, 'en', 'plugins/language/language', 'actions', 'Actions', '2020-11-15 21:00:30', '2020-11-15 21:00:30'),
(2124, 1, 'en', 'plugins/language/language', 'translations', 'Translations', '2020-11-15 21:00:30', '2020-11-15 21:00:30'),
(2125, 1, 'en', 'plugins/language/language', 'edit', 'Edit', '2020-11-15 21:00:30', '2020-11-15 21:00:30'),
(2126, 1, 'en', 'plugins/language/language', 'edit_tooltip', 'Edit this language', '2020-11-15 21:00:30', '2020-11-15 21:00:30'),
(2127, 1, 'en', 'plugins/language/language', 'delete', 'Delete', '2020-11-15 21:00:30', '2020-11-15 21:00:30'),
(2128, 1, 'en', 'plugins/language/language', 'delete_tooltip', 'Delete this language and all its associated data', '2020-11-15 21:00:30', '2020-11-15 21:00:30'),
(2129, 1, 'en', 'plugins/language/language', 'choose_default_language', 'Choose :language as default language', '2020-11-15 21:00:30', '2020-11-15 21:00:30'),
(2130, 1, 'en', 'plugins/language/language', 'current_language', 'Current record\'s language', '2020-11-15 21:00:30', '2020-11-15 21:00:30'),
(2131, 1, 'en', 'plugins/language/language', 'edit_related', 'Edit related language for this record', '2020-11-15 21:00:30', '2020-11-15 21:00:30'),
(2132, 1, 'en', 'plugins/language/language', 'add_language_for_item', 'Add other language version for this record', '2020-11-15 21:00:30', '2020-11-15 21:00:30'),
(2133, 1, 'en', 'plugins/language/language', 'settings', 'Settings', '2020-11-15 21:00:30', '2020-11-15 21:00:30'),
(2134, 1, 'en', 'plugins/language/language', 'language_hide_default', 'Hide default language from URL?', '2020-11-15 21:00:30', '2020-11-15 21:00:30'),
(2135, 1, 'en', 'plugins/language/language', 'language_display_flag_only', 'Flag only', '2020-11-15 21:00:30', '2020-11-15 21:00:30'),
(2136, 1, 'en', 'plugins/language/language', 'language_display_name_only', 'Name only', '2020-11-15 21:00:30', '2020-11-15 21:00:30'),
(2137, 1, 'en', 'plugins/language/language', 'language_display_all', 'Display all flag and name', '2020-11-15 21:00:30', '2020-11-15 21:00:30'),
(2138, 1, 'en', 'plugins/language/language', 'language_display', 'Language display', '2020-11-15 21:00:30', '2020-11-15 21:00:30'),
(2139, 1, 'en', 'plugins/language/language', 'switcher_display', 'Switcher language display', '2020-11-15 21:00:30', '2020-11-15 21:00:30'),
(2140, 1, 'en', 'plugins/language/language', 'language_switcher_display_dropdown', 'Dropdown', '2020-11-15 21:00:30', '2020-11-15 21:00:30'),
(2141, 1, 'en', 'plugins/language/language', 'language_switcher_display_list', 'List', '2020-11-15 21:00:30', '2020-11-15 21:00:30'),
(2142, 1, 'en', 'plugins/language/language', 'current_language_edit_notification', 'You are editing \"<strong class=\"current_language_text\">:language</strong>\" version', '2020-11-15 21:00:30', '2020-11-15 21:00:30'),
(2143, 1, 'en', 'plugins/language/language', 'confirm-change-language', 'Confirm change language', '2020-11-15 21:00:30', '2020-11-15 21:00:30'),
(2144, 1, 'en', 'plugins/language/language', 'confirm-change-language-message', 'Do you really want to change language to \"<strong class=\"change_to_language_text\"></strong>\" ? This action will be override \"<strong class=\"change_to_language_text\"></strong>\" version if it\'s existed!', '2020-11-15 21:00:30', '2020-11-15 21:00:30'),
(2145, 1, 'en', 'plugins/language/language', 'confirm-change-language-btn', 'Confirm change', '2020-11-15 21:00:30', '2020-11-15 21:00:30'),
(2146, 1, 'en', 'plugins/language/language', 'hide_languages', 'Hide languages', '2020-11-15 21:00:30', '2020-11-15 21:00:30'),
(2147, 1, 'en', 'plugins/language/language', 'hide_languages_description', 'You can completely hide content in specific languages from visitors and search engines, but still view it yourself. This allows reviewing translations that are in progress.', '2020-11-15 21:00:30', '2020-11-15 21:00:30'),
(2148, 1, 'en', 'plugins/language/language', 'hide_languages_helper_display_hidden', '{0} All languages are currently displayed.|{1} :language is currently hidden to visitors.|[2, Inf] :language are currently hidden to visitors.', '2020-11-15 21:00:30', '2020-11-15 21:00:30'),
(2149, 1, 'en', 'plugins/language/language', 'show_all', 'Show all', '2020-11-15 21:00:30', '2020-11-15 21:00:30'),
(2150, 1, 'en', 'plugins/language/language', 'change_language', 'Language', '2020-11-15 21:00:30', '2020-11-15 21:00:30'),
(2151, 1, 'en', 'plugins/language/language', 'language_show_default_item_if_current_version_not_existed', 'Show item in default language if it is not existed in current language', '2020-11-15 21:00:30', '2020-11-15 21:00:30'),
(2152, 1, 'en', 'plugins/language/language', 'select_flag', 'Select a flag...', '2020-11-15 21:00:30', '2020-11-15 21:00:30'),
(2153, 1, 'en', 'plugins/language/language', 'delete_confirmation_message', 'Do you really want to delete this language? It also deletes all items in this language and cannot rollback!', '2020-11-15 21:00:30', '2020-11-15 21:00:30'),
(2154, 1, 'en', 'plugins/language/language', 'added_already', 'This language was added already!', '2020-11-15 21:00:30', '2020-11-15 21:00:30'),
(2155, 1, 'vi', 'plugins/language/language', 'name', 'Ngôn ngữ', '2020-11-15 21:00:30', '2020-11-15 21:00:30'),
(2156, 1, 'vi', 'plugins/language/language', 'choose_language', 'Chọn một ngôn ngữ', '2020-11-15 21:00:30', '2020-11-15 21:00:30'),
(2157, 1, 'vi', 'plugins/language/language', 'select_language', 'Chọn ngôn ngữ', '2020-11-15 21:00:30', '2020-11-15 21:00:30'),
(2158, 1, 'vi', 'plugins/language/language', 'choose_language_helper', 'Bạn có thể chọn 1 ngôn ngữ trong danh sách hoặc nhập trực tiếp nội dung xuống các mục dưới', '2020-11-15 21:00:30', '2020-11-15 21:00:30'),
(2159, 1, 'vi', 'plugins/language/language', 'full_name', 'Tên đầy đủ', '2020-11-15 21:00:30', '2020-11-15 21:00:30'),
(2160, 1, 'vi', 'plugins/language/language', 'full_name_helper', 'Tên ngôn ngữ sẽ được hiển thị trên website (ví dụ: Tiếng Anh).', '2020-11-15 21:00:30', '2020-11-15 21:00:30'),
(2161, 1, 'vi', 'plugins/language/language', 'locale', 'Locale', '2020-11-15 21:00:30', '2020-11-15 21:00:30'),
(2162, 1, 'vi', 'plugins/language/language', 'locale_helper', 'Laravel Locale cho ngôn ngữ này (ví dụ: <code>en</code>). Bạn sẽ cần tạo trong <code>/resources/lang/en</code> nếu nó không có sẵn cho ngôn ngữ này.', '2020-11-15 21:00:30', '2020-11-15 21:00:30'),
(2163, 1, 'vi', 'plugins/language/language', 'language_code', 'Mã ngôn ngữ', '2020-11-15 21:00:30', '2020-11-15 21:00:30'),
(2164, 1, 'vi', 'plugins/language/language', 'language_code_helper', 'Mã ngôn ngữ - ưu tiên dạng 2-kí tự theo chuẩn ISO 639-1 (ví dụ: en)', '2020-11-15 21:00:30', '2020-11-15 21:00:30'),
(2165, 1, 'vi', 'plugins/language/language', 'text_direction', 'Hướng viết chữ', '2020-11-15 21:00:30', '2020-11-15 21:00:30'),
(2166, 1, 'vi', 'plugins/language/language', 'text_direction_helper', 'Chọn hướng viết chữ cho ngôn ngữ này', '2020-11-15 21:00:30', '2020-11-15 21:00:30'),
(2167, 1, 'vi', 'plugins/language/language', 'left_to_right', 'Trái qua phải', '2020-11-15 21:00:30', '2020-11-15 21:00:30'),
(2168, 1, 'vi', 'plugins/language/language', 'right_to_left', 'Phải qua trái', '2020-11-15 21:00:30', '2020-11-15 21:00:30'),
(2169, 1, 'vi', 'plugins/language/language', 'flag', 'Cờ', '2020-11-15 21:00:30', '2020-11-15 21:00:30'),
(2170, 1, 'vi', 'plugins/language/language', 'flag_helper', 'Chọn 1 cờ cho ngôn ngữ này', '2020-11-15 21:00:30', '2020-11-15 21:00:30'),
(2171, 1, 'vi', 'plugins/language/language', 'order', 'Sắp xếp', '2020-11-15 21:00:30', '2020-11-15 21:00:30'),
(2172, 1, 'vi', 'plugins/language/language', 'order_helper', 'Vị trí của ngôn ngữ hiển thị trong mục chuyển đổi ngôn ngữ', '2020-11-15 21:00:30', '2020-11-15 21:00:30'),
(2173, 1, 'vi', 'plugins/language/language', 'add_new_language', 'Thêm ngôn ngữ mới', '2020-11-15 21:00:30', '2020-11-15 21:00:30'),
(2174, 1, 'vi', 'plugins/language/language', 'code', 'Mã', '2020-11-15 21:00:30', '2020-11-15 21:00:30'),
(2175, 1, 'vi', 'plugins/language/language', 'default_language', 'Ngôn ngữ mặc định', '2020-11-15 21:00:30', '2020-11-15 21:00:30'),
(2176, 1, 'vi', 'plugins/language/language', 'actions', 'Hành động', '2020-11-15 21:00:30', '2020-11-15 21:00:30'),
(2177, 1, 'vi', 'plugins/language/language', 'translations', 'Dịch', '2020-11-15 21:00:30', '2020-11-15 21:00:30'),
(2178, 1, 'vi', 'plugins/language/language', 'edit', 'Sửa', '2020-11-15 21:00:30', '2020-11-15 21:00:30'),
(2179, 1, 'vi', 'plugins/language/language', 'edit_tooltip', 'Sửa ngôn ngữ này', '2020-11-15 21:00:30', '2020-11-15 21:00:30'),
(2180, 1, 'vi', 'plugins/language/language', 'delete', 'Xóa', '2020-11-15 21:00:30', '2020-11-15 21:00:30'),
(2181, 1, 'vi', 'plugins/language/language', 'delete_tooltip', 'Xóa ngôn ngữ này và các dữ liệu liên quan', '2020-11-15 21:00:30', '2020-11-15 21:00:30'),
(2182, 1, 'vi', 'plugins/language/language', 'choose_default_language', 'Chọn :language làm ngôn ngữ mặc định', '2020-11-15 21:00:30', '2020-11-15 21:00:30'),
(2183, 1, 'vi', 'plugins/language/language', 'add_language_for_item', 'Thêm ngôn ngữ khác cho bản ghi này', '2020-11-15 21:00:30', '2020-11-15 21:00:30'),
(2184, 1, 'vi', 'plugins/language/language', 'current_language', 'Ngôn ngữ hiện tại của bản ghi', '2020-11-15 21:00:30', '2020-11-15 21:00:30'),
(2185, 1, 'vi', 'plugins/language/language', 'edit_related', 'Sửa bản ngôn ngữ khác của bản ghi này', '2020-11-15 21:00:30', '2020-11-15 21:00:30'),
(2186, 1, 'vi', 'plugins/language/language', 'confirm-change-language', 'Xác nhận thay đổi ngôn ngữ', '2020-11-15 21:00:30', '2020-11-15 21:00:30'),
(2187, 1, 'vi', 'plugins/language/language', 'confirm-change-language-btn', 'Xác nhận thay đổi', '2020-11-15 21:00:30', '2020-11-15 21:00:30'),
(2188, 1, 'vi', 'plugins/language/language', 'confirm-change-language-message', 'Bạn có chắc chắn muốn thay đổi ngôn ngữ sang tiếng \"<strong class=\"change_to_language_text\"></strong>\" ? Điều này sẽ ghi đè bản ghi tiếng \"<strong class=\"change_to_language_text\"></strong>\" nếu nó đã tồn tại!', '2020-11-15 21:00:30', '2020-11-15 21:00:30'),
(2189, 1, 'vi', 'plugins/language/language', 'current_language_edit_notification', 'Bạn đang chỉnh sửa phiên bản tiếng \"<strong class=\"current_language_text\">:language</strong>\"', '2020-11-15 21:00:30', '2020-11-15 21:00:30'),
(2190, 1, 'vi', 'plugins/language/language', 'hide_languages', 'Ẩn ngôn ngữ', '2020-11-15 21:00:30', '2020-11-15 21:00:30'),
(2191, 1, 'vi', 'plugins/language/language', 'hide_languages_description', 'Bạn có thể hoàn toàn ẩn ngôn ngữ cụ thể đối với người truy cập và công cụ tìm kiếm, nhưng sẽ vẫn hiển thị trong trang quản trị. Điều này cho phép bạn biết những ngôn ngữ nào đang được xử lý.', '2020-11-15 21:00:30', '2020-11-15 21:00:30'),
(2192, 1, 'vi', 'plugins/language/language', 'hide_languages_helper_display_hidden', '{0} Tất cả ngôn ngữ đang được hiển thị.|{1} :language đang bị ẩn đối với người truy cập.|[2, Inf]  :language đang bị ẩn đối với người truy cập.', '2020-11-15 21:00:30', '2020-11-15 21:00:30'),
(2193, 1, 'vi', 'plugins/language/language', 'language_display', 'Hiển thị ngôn ngữ', '2020-11-15 21:00:30', '2020-11-15 21:00:30'),
(2194, 1, 'vi', 'plugins/language/language', 'language_display_all', 'Hiển thị cả cờ và tên ngôn ngữ', '2020-11-15 21:00:30', '2020-11-15 21:00:30'),
(2195, 1, 'vi', 'plugins/language/language', 'language_display_flag_only', 'Chỉ hiển thị cờ', '2020-11-15 21:00:30', '2020-11-15 21:00:30'),
(2196, 1, 'vi', 'plugins/language/language', 'language_display_name_only', 'Chỉ hiển thị tên', '2020-11-15 21:00:30', '2020-11-15 21:00:30'),
(2197, 1, 'vi', 'plugins/language/language', 'language_hide_default', 'Ẩn ngôn ngữ mặc định trên URL', '2020-11-15 21:00:30', '2020-11-15 21:00:30'),
(2198, 1, 'vi', 'plugins/language/language', 'language_switcher_display_dropdown', 'Dropdown', '2020-11-15 21:00:30', '2020-11-15 21:00:30'),
(2199, 1, 'vi', 'plugins/language/language', 'language_switcher_display_list', 'Danh sách', '2020-11-15 21:00:30', '2020-11-15 21:00:30'),
(2200, 1, 'vi', 'plugins/language/language', 'settings', 'Cài đặt', '2020-11-15 21:00:30', '2020-11-15 21:00:30'),
(2201, 1, 'vi', 'plugins/language/language', 'switcher_display', 'Hiển thị bộ chuyển đổi ngôn ngữ', '2020-11-15 21:00:30', '2020-11-15 21:00:30'),
(2202, 1, 'vi', 'plugins/language/language', 'menu', 'Ngôn ngữ', '2020-11-15 21:00:30', '2020-11-15 21:00:30'),
(2203, 1, 'vi', 'plugins/language/language', 'change_language', 'Ngôn ngữ', '2020-11-15 21:00:30', '2020-11-15 21:00:30'),
(2204, 1, 'vi', 'plugins/language/language', 'show_all', 'Hiển thị tất cả', '2020-11-15 21:00:30', '2020-11-15 21:00:30'),
(2205, 1, 'en', 'plugins/location/city', 'name', 'Cities', '2020-11-15 21:00:30', '2020-11-15 21:00:30'),
(2206, 1, 'en', 'plugins/location/city', 'create', 'New city', '2020-11-15 21:00:30', '2020-11-15 21:00:30'),
(2207, 1, 'en', 'plugins/location/city', 'edit', 'Edit city', '2020-11-15 21:00:30', '2020-11-15 21:00:30'),
(2208, 1, 'en', 'plugins/location/city', 'state', 'State', '2020-11-15 21:00:30', '2020-11-15 21:00:30'),
(2209, 1, 'en', 'plugins/location/city', 'select_state', 'Select a state...', '2020-11-15 21:00:30', '2020-11-15 21:00:30'),
(2210, 1, 'en', 'plugins/location/city', 'select_city', 'Select a city...', '2020-11-15 21:00:30', '2020-11-15 21:00:30'),
(2211, 1, 'en', 'plugins/location/city', 'country', 'Country', '2020-11-15 21:00:30', '2020-11-15 21:00:30'),
(2212, 1, 'en', 'plugins/location/city', 'select_country', 'Select a country...', '2020-11-15 21:00:30', '2020-11-15 21:00:30'),
(2213, 1, 'en', 'plugins/location/city', 'city', 'City', '2020-11-15 21:00:30', '2020-11-15 21:00:30'),
(2214, 1, 'en', 'plugins/location/country', 'name', 'Countries', '2020-11-15 21:00:30', '2020-11-15 21:00:30'),
(2215, 1, 'en', 'plugins/location/country', 'create', 'New country', '2020-11-15 21:00:30', '2020-11-15 21:00:30'),
(2216, 1, 'en', 'plugins/location/country', 'edit', 'Edit country', '2020-11-15 21:00:30', '2020-11-15 21:00:30'),
(2217, 1, 'en', 'plugins/location/country', 'nationality', 'Nationality', '2020-11-15 21:00:30', '2020-11-15 21:00:30'),
(2218, 1, 'en', 'plugins/location/location', 'name', 'Locations', '2020-11-15 21:00:30', '2020-11-15 21:00:30'),
(2219, 1, 'en', 'plugins/location/location', 'create', 'New location', '2020-11-15 21:00:30', '2020-11-15 21:00:30'),
(2220, 1, 'en', 'plugins/location/location', 'edit', 'Edit location', '2020-11-15 21:00:30', '2020-11-15 21:00:30'),
(2221, 1, 'en', 'plugins/location/location', 'all_states', 'All states', '2020-11-15 21:00:30', '2020-11-15 21:00:30'),
(2222, 1, 'en', 'plugins/location/location', 'abbreviation', 'Abbreviation', '2020-11-15 21:00:30', '2020-11-15 21:00:30'),
(2223, 1, 'en', 'plugins/location/location', 'abbreviation_placeholder', 'E.g: CA', '2020-11-15 21:00:30', '2020-11-15 21:00:30'),
(2224, 1, 'en', 'plugins/location/state', 'name', 'States', '2020-11-15 21:00:30', '2020-11-15 21:00:30'),
(2225, 1, 'en', 'plugins/location/state', 'create', 'New state', '2020-11-15 21:00:30', '2020-11-15 21:00:30'),
(2226, 1, 'en', 'plugins/location/state', 'edit', 'Edit state', '2020-11-15 21:00:30', '2020-11-15 21:00:30'),
(2227, 1, 'en', 'plugins/location/state', 'country', 'Country', '2020-11-15 21:00:30', '2020-11-15 21:00:30'),
(2228, 1, 'en', 'plugins/location/state', 'select_country', 'Select a country...', '2020-11-15 21:00:30', '2020-11-15 21:00:30'),
(2229, 1, 'en', 'plugins/location/state', 'state', 'State', '2020-11-15 21:00:30', '2020-11-15 21:00:30'),
(2230, 1, 'vi', 'plugins/location/city', 'name', 'Quận/huyện', '2020-11-15 21:00:30', '2020-11-15 21:00:30'),
(2231, 1, 'vi', 'plugins/location/city', 'create', 'Thêm quận/huyện', '2020-11-15 21:00:30', '2020-11-15 21:00:30'),
(2232, 1, 'vi', 'plugins/location/city', 'edit', 'Sửa quận/huyện', '2020-11-15 21:00:30', '2020-11-15 21:00:30'),
(2233, 1, 'vi', 'plugins/location/city', 'state', 'Tỉnh', '2020-11-15 21:00:30', '2020-11-15 21:00:30'),
(2234, 1, 'vi', 'plugins/location/city', 'select_state', 'Lựa chọn tỉnh/thành phố...', '2020-11-15 21:00:30', '2020-11-15 21:00:30'),
(2235, 1, 'vi', 'plugins/location/city', 'select_city', 'Lựa chọn quận/huyện...', '2020-11-15 21:00:30', '2020-11-15 21:00:30'),
(2236, 1, 'vi', 'plugins/location/city', 'country', 'Quốc gia', '2020-11-15 21:00:30', '2020-11-15 21:00:30'),
(2237, 1, 'vi', 'plugins/location/city', 'select_country', 'Lựa chọn quốc gia...', '2020-11-15 21:00:30', '2020-11-15 21:00:30'),
(2238, 1, 'vi', 'plugins/location/city', 'city', 'Quận/huyện', '2020-11-15 21:00:30', '2020-11-15 21:00:30'),
(2239, 1, 'vi', 'plugins/location/country', 'name', 'Quốc gia', '2020-11-15 21:00:30', '2020-11-15 21:00:30'),
(2240, 1, 'vi', 'plugins/location/country', 'create', 'Thêm quốc gia', '2020-11-15 21:00:30', '2020-11-15 21:00:30'),
(2241, 1, 'vi', 'plugins/location/country', 'edit', 'Sửa quốc gia', '2020-11-15 21:00:30', '2020-11-15 21:00:30'),
(2242, 1, 'vi', 'plugins/location/country', 'nationality', 'Quốc tịch', '2020-11-15 21:00:30', '2020-11-15 21:00:30'),
(2243, 1, 'vi', 'plugins/location/location', 'name', 'Địa điểm', '2020-11-15 21:00:30', '2020-11-15 21:00:30'),
(2244, 1, 'vi', 'plugins/location/location', 'create', 'Thêm địa điểm', '2020-11-15 21:00:30', '2020-11-15 21:00:30'),
(2245, 1, 'vi', 'plugins/location/location', 'edit', 'Sửa địa điểm', '2020-11-15 21:00:30', '2020-11-15 21:00:30'),
(2246, 1, 'vi', 'plugins/location/location', 'all_states', 'Tất cả tỉnh thành', '2020-11-15 21:00:30', '2020-11-15 21:00:30'),
(2247, 1, 'vi', 'plugins/location/state', 'name', 'Tỉnh/thành phố', '2020-11-15 21:00:30', '2020-11-15 21:00:30'),
(2248, 1, 'vi', 'plugins/location/state', 'create', 'Thêm tỉnh/thành phố', '2020-11-15 21:00:30', '2020-11-15 21:00:30'),
(2249, 1, 'vi', 'plugins/location/state', 'edit', 'Sửa tỉnh/thành phố', '2020-11-15 21:00:30', '2020-11-15 21:00:30'),
(2250, 1, 'vi', 'plugins/location/state', 'country', 'Quốc gia', '2020-11-15 21:00:30', '2020-11-15 21:00:30'),
(2251, 1, 'vi', 'plugins/location/state', 'select_country', 'Lựa chọn quốc gia...', '2020-11-15 21:00:30', '2020-11-15 21:00:30'),
(2252, 1, 'vi', 'plugins/location/state', 'state', 'Tỉnh/thành phố', '2020-11-15 21:00:30', '2020-11-15 21:00:30'),
(2253, 1, 'en', 'plugins/payment/payment', 'payments', 'Payments', '2020-11-15 21:00:30', '2020-11-15 21:00:30'),
(2254, 1, 'en', 'plugins/payment/payment', 'checkout_success', 'Checkout successfully!', '2020-11-15 21:00:30', '2020-11-15 21:00:30'),
(2255, 1, 'en', 'plugins/payment/payment', 'view_payment', 'View payment #', '2020-11-15 21:00:30', '2020-11-15 21:00:30'),
(2256, 1, 'en', 'plugins/payment/payment', 'charge_id', 'Charge ID', '2020-11-15 21:00:30', '2020-11-15 21:00:30'),
(2257, 1, 'en', 'plugins/payment/payment', 'amount', 'Amount', '2020-11-15 21:00:30', '2020-11-15 21:00:30'),
(2258, 1, 'en', 'plugins/payment/payment', 'currency', 'Currency', '2020-11-15 21:00:30', '2020-11-15 21:00:30'),
(2259, 1, 'en', 'plugins/payment/payment', 'user', 'User', '2020-11-15 21:00:30', '2020-11-15 21:00:30'),
(2260, 1, 'en', 'plugins/payment/payment', 'stripe', 'Stripe', '2020-11-15 21:00:30', '2020-11-15 21:00:30'),
(2261, 1, 'en', 'plugins/payment/payment', 'paypal', 'PayPal', '2020-11-15 21:00:30', '2020-11-15 21:00:30'),
(2262, 1, 'en', 'plugins/payment/payment', 'action', 'Action', '2020-11-15 21:00:30', '2020-11-15 21:00:30'),
(2263, 1, 'en', 'plugins/payment/payment', 'payment_via_card', 'Payment via card', '2020-11-15 21:00:30', '2020-11-15 21:00:30'),
(2264, 1, 'en', 'plugins/payment/payment', 'card_number', 'Card number', '2020-11-15 21:00:30', '2020-11-15 21:00:30'),
(2265, 1, 'en', 'plugins/payment/payment', 'full_name', 'Full name', '2020-11-15 21:00:30', '2020-11-15 21:00:30'),
(2266, 1, 'en', 'plugins/payment/payment', 'payment_via_paypal', 'Payment via PayPal', '2020-11-15 21:00:30', '2020-11-15 21:00:30'),
(2267, 1, 'en', 'plugins/payment/payment', 'mm_yy', 'MM/YY', '2020-11-15 21:00:30', '2020-11-15 21:00:30'),
(2268, 1, 'en', 'plugins/payment/payment', 'cvc', 'CVC', '2020-11-15 21:00:30', '2020-11-15 21:00:30'),
(2269, 1, 'en', 'plugins/payment/payment', 'details', 'Details', '2020-11-15 21:00:30', '2020-11-15 21:00:30'),
(2270, 1, 'en', 'plugins/payment/payment', 'payer_name', 'Payer Name', '2020-11-15 21:00:30', '2020-11-15 21:00:30'),
(2271, 1, 'en', 'plugins/payment/payment', 'email', 'Email', '2020-11-15 21:00:30', '2020-11-15 21:00:30'),
(2272, 1, 'en', 'plugins/payment/payment', 'phone', 'Phone', '2020-11-15 21:00:30', '2020-11-15 21:00:30'),
(2273, 1, 'en', 'plugins/payment/payment', 'country', 'Country', '2020-11-15 21:00:30', '2020-11-15 21:00:30'),
(2274, 1, 'en', 'plugins/payment/payment', 'shipping_address', 'Shipping Address', '2020-11-15 21:00:30', '2020-11-15 21:00:30'),
(2275, 1, 'en', 'plugins/payment/payment', 'payment_details', 'Payment Details', '2020-11-15 21:00:30', '2020-11-15 21:00:30'),
(2276, 1, 'en', 'plugins/payment/payment', 'card', 'Card', '2020-11-15 21:00:30', '2020-11-15 21:00:30'),
(2277, 1, 'en', 'plugins/payment/payment', 'address', 'Address', '2020-11-15 21:00:30', '2020-11-15 21:00:30'),
(2278, 1, 'en', 'plugins/payment/payment', 'could_not_get_stripe_token', 'Could not get Stripe token to make a charge.', '2020-11-15 21:00:30', '2020-11-15 21:00:30'),
(2279, 1, 'en', 'plugins/payment/payment', 'payment_id', 'Payment ID', '2020-11-15 21:00:30', '2020-11-15 21:00:30'),
(2280, 1, 'en', 'plugins/payment/payment', 'payment_methods', 'Payment methods', '2020-11-15 21:00:30', '2020-11-15 21:00:30'),
(2281, 1, 'en', 'plugins/payment/payment', 'transactions', 'Transactions', '2020-11-15 21:00:30', '2020-11-15 21:00:30'),
(2282, 1, 'en', 'plugins/payment/payment', 'payment_methods_description', 'Setup payment methods for website', '2020-11-15 21:00:31', '2020-11-15 21:00:31'),
(2283, 1, 'en', 'plugins/payment/payment', 'paypal_description', 'Customer can buy product and pay directly via PayPal', '2020-11-15 21:00:31', '2020-11-15 21:00:31'),
(2284, 1, 'en', 'plugins/payment/payment', 'use', 'Use', '2020-11-15 21:00:31', '2020-11-15 21:00:31'),
(2285, 1, 'en', 'plugins/payment/payment', 'stripe_description', 'Customer can buy product and pay directly using Visa, Credit card via Stripe', '2020-11-15 21:00:31', '2020-11-15 21:00:31'),
(2286, 1, 'en', 'plugins/payment/payment', 'edit', 'Edit', '2020-11-15 21:00:31', '2020-11-15 21:00:31'),
(2287, 1, 'en', 'plugins/payment/payment', 'settings', 'Settings', '2020-11-15 21:00:31', '2020-11-15 21:00:31'),
(2288, 1, 'en', 'plugins/payment/payment', 'activate', 'Activate', '2020-11-15 21:00:31', '2020-11-15 21:00:31'),
(2289, 1, 'en', 'plugins/payment/payment', 'deactivate', 'Deactivate', '2020-11-15 21:00:31', '2020-11-15 21:00:31'),
(2290, 1, 'en', 'plugins/payment/payment', 'update', 'Update', '2020-11-15 21:00:31', '2020-11-15 21:00:31'),
(2291, 1, 'en', 'plugins/payment/payment', 'configuration_instruction', 'Configuration instruction for :name', '2020-11-15 21:00:31', '2020-11-15 21:00:31'),
(2292, 1, 'en', 'plugins/payment/payment', 'configuration_requirement', 'To use :name, you need', '2020-11-15 21:00:31', '2020-11-15 21:00:31'),
(2293, 1, 'en', 'plugins/payment/payment', 'service_registration', 'Register with :name', '2020-11-15 21:00:31', '2020-11-15 21:00:31'),
(2294, 1, 'en', 'plugins/payment/payment', 'after_service_registration_msg', 'After registration at :name, you will have Client ID, Client Secret', '2020-11-15 21:00:31', '2020-11-15 21:00:31'),
(2295, 1, 'en', 'plugins/payment/payment', 'enter_client_id_and_secret', 'Enter Client ID, Secret into the box in right hand', '2020-11-15 21:00:31', '2020-11-15 21:00:31'),
(2296, 1, 'en', 'plugins/payment/payment', 'method_name', 'Method name', '2020-11-15 21:00:31', '2020-11-15 21:00:31'),
(2297, 1, 'en', 'plugins/payment/payment', 'please_provide_information', 'Please provide information', '2020-11-15 21:00:31', '2020-11-15 21:00:31'),
(2298, 1, 'en', 'plugins/payment/payment', 'client_id', 'Client ID', '2020-11-15 21:00:31', '2020-11-15 21:00:31'),
(2299, 1, 'en', 'plugins/payment/payment', 'client_secret', 'Client Secret', '2020-11-15 21:00:31', '2020-11-15 21:00:31'),
(2300, 1, 'en', 'plugins/payment/payment', 'secret', 'Secret', '2020-11-15 21:00:31', '2020-11-15 21:00:31'),
(2301, 1, 'en', 'plugins/payment/payment', 'stripe_key', 'Stripe Key', '2020-11-15 21:00:31', '2020-11-15 21:00:31'),
(2302, 1, 'en', 'plugins/payment/payment', 'stripe_secret', 'Stripe Secret', '2020-11-15 21:00:31', '2020-11-15 21:00:31'),
(2303, 1, 'en', 'plugins/payment/payment', 'stripe_after_service_registration_msg', 'After registration at :name, you will have Public, Secret keys', '2020-11-15 21:00:31', '2020-11-15 21:00:31'),
(2304, 1, 'en', 'plugins/payment/payment', 'stripe_enter_client_id_and_secret', 'Enter Public, Secret keys into the box in right hand', '2020-11-15 21:00:31', '2020-11-15 21:00:31'),
(2305, 1, 'en', 'plugins/payment/payment', 'pay_online_via', 'Pay online via :name', '2020-11-15 21:00:31', '2020-11-15 21:00:31'),
(2306, 1, 'en', 'plugins/payment/payment', 'sandbox_mode', 'Sandbox mode', '2020-11-15 21:00:31', '2020-11-15 21:00:31'),
(2307, 1, 'en', 'plugins/payment/payment', 'deactivate_payment_method', 'Deactivate payment method', '2020-11-15 21:00:31', '2020-11-15 21:00:31'),
(2308, 1, 'en', 'plugins/payment/payment', 'deactivate_payment_method_description', 'Do you really want to deactivate this payment method?', '2020-11-15 21:00:31', '2020-11-15 21:00:31'),
(2309, 1, 'en', 'plugins/payment/payment', 'agree', 'Agree', '2020-11-15 21:00:31', '2020-11-15 21:00:31'),
(2310, 1, 'en', 'plugins/payment/payment', 'name', 'Payments', '2020-11-15 21:00:31', '2020-11-15 21:00:31'),
(2311, 1, 'en', 'plugins/payment/payment', 'create', 'New payment', '2020-11-15 21:00:31', '2020-11-15 21:00:31'),
(2312, 1, 'en', 'plugins/payment/payment', 'go_back', 'Go back', '2020-11-15 21:00:31', '2020-11-15 21:00:31'),
(2313, 1, 'en', 'plugins/payment/payment', 'information', 'Information', '2020-11-15 21:00:31', '2020-11-15 21:00:31'),
(2314, 1, 'en', 'plugins/payment/payment', 'methods.paypal', 'PayPal', '2020-11-15 21:00:31', '2020-11-15 21:00:31'),
(2315, 1, 'en', 'plugins/payment/payment', 'methods.stripe', 'Stripe', '2020-11-15 21:00:31', '2020-11-15 21:00:31'),
(2316, 1, 'en', 'plugins/payment/payment', 'methods.cod', 'Cash on delivery (COD)', '2020-11-15 21:00:31', '2020-11-15 21:00:31'),
(2317, 1, 'en', 'plugins/payment/payment', 'methods.bank_transfer', 'Bank transfer', '2020-11-15 21:00:31', '2020-11-15 21:00:31'),
(2318, 1, 'en', 'plugins/payment/payment', 'statuses.pending', 'Pending', '2020-11-15 21:00:31', '2020-11-15 21:00:31'),
(2319, 1, 'en', 'plugins/payment/payment', 'statuses.completed', 'Completed', '2020-11-15 21:00:31', '2020-11-15 21:00:31'),
(2320, 1, 'en', 'plugins/payment/payment', 'statuses.refunding', 'Refunding', '2020-11-15 21:00:31', '2020-11-15 21:00:31'),
(2321, 1, 'en', 'plugins/payment/payment', 'statuses.refunded', 'Refunded', '2020-11-15 21:00:31', '2020-11-15 21:00:31'),
(2322, 1, 'en', 'plugins/payment/payment', 'statuses.fraud', 'Fraud', '2020-11-15 21:00:31', '2020-11-15 21:00:31'),
(2323, 1, 'en', 'plugins/payment/payment', 'statuses.failed', 'Failed', '2020-11-15 21:00:31', '2020-11-15 21:00:31'),
(2324, 1, 'en', 'plugins/payment/payment', 'payment_methods_instruction', 'Guide customers to pay directly. You can choose to pay by delivery or bank transfer', '2020-11-15 21:00:31', '2020-11-15 21:00:31'),
(2325, 1, 'en', 'plugins/payment/payment', 'payment_method_description', 'Payment guide - (Displayed on the notice of successful purchase and payment page)', '2020-11-15 21:00:31', '2020-11-15 21:00:31'),
(2326, 1, 'en', 'plugins/payment/payment', 'payment_via_cod', 'Cash on delivery (COD)', '2020-11-15 21:00:31', '2020-11-15 21:00:31'),
(2327, 1, 'en', 'plugins/payment/payment', 'payment_via_bank_transfer', 'Bank transfer', '2020-11-15 21:00:31', '2020-11-15 21:00:31'),
(2328, 1, 'en', 'plugins/payment/payment', 'payment_pending', 'Checkout successfully. Your payment is pending and will be checked by our staff.', '2020-11-15 21:00:31', '2020-11-15 21:00:31'),
(2329, 1, 'en', 'plugins/payment/payment', 'created_at', 'Created At', '2020-11-15 21:00:31', '2020-11-15 21:00:31'),
(2330, 1, 'en', 'plugins/payment/payment', 'payment_channel', 'Payment Channel', '2020-11-15 21:00:31', '2020-11-15 21:00:31'),
(2331, 1, 'en', 'plugins/payment/payment', 'total', 'Total', '2020-11-15 21:00:31', '2020-11-15 21:00:31'),
(2332, 1, 'en', 'plugins/payment/payment', 'status', 'Status', '2020-11-15 21:00:31', '2020-11-15 21:00:31'),
(2333, 1, 'en', 'plugins/payment/payment', 'default_payment_method', 'Default payment method', '2020-11-15 21:00:31', '2020-11-15 21:00:31'),
(2334, 1, 'en', 'plugins/payment/payment', 'turn_off_success', 'Turn off payment method successfully!', '2020-11-15 21:00:31', '2020-11-15 21:00:31'),
(2335, 1, 'en', 'plugins/payment/payment', 'saved_payment_method_success', 'Saved payment method successfully!', '2020-11-15 21:00:31', '2020-11-15 21:00:31'),
(2336, 1, 'en', 'plugins/payment/payment', 'saved_payment_settings_success', 'Saved payment settings successfully!', '2020-11-15 21:00:31', '2020-11-15 21:00:31'),
(2337, 1, 'en', 'plugins/payment/payment', 'payment_name', 'Name', '2020-11-15 21:00:31', '2020-11-15 21:00:31'),
(2338, 1, 'en', 'plugins/payment/payment', 'callback_url', 'Callback URL', '2020-11-15 21:00:31', '2020-11-15 21:00:31'),
(2339, 1, 'en', 'plugins/payment/payment', 'return_url', 'Return URL', '2020-11-15 21:00:31', '2020-11-15 21:00:31'),
(2340, 1, 'en', 'plugins/payment/payment', 'payment_not_found', 'Payment not found!', '2020-11-15 21:00:31', '2020-11-15 21:00:31'),
(2341, 1, 'vi', 'plugins/payment/payment', 'payments', 'Thanh toán', '2020-11-15 21:00:31', '2020-11-15 21:00:31');
INSERT INTO `translations` (`id`, `status`, `locale`, `group`, `key`, `value`, `created_at`, `updated_at`) VALUES
(2342, 1, 'vi', 'plugins/payment/payment', 'checkout_success', 'Thanh toán thành công!', '2020-11-15 21:00:31', '2020-11-15 21:00:31'),
(2343, 1, 'vi', 'plugins/payment/payment', 'view_payment', 'Xem thanh toán #', '2020-11-15 21:00:31', '2020-11-15 21:00:31'),
(2344, 1, 'vi', 'plugins/payment/payment', 'charge_id', 'Mã thanh toán', '2020-11-15 21:00:31', '2020-11-15 21:00:31'),
(2345, 1, 'vi', 'plugins/payment/payment', 'amount', 'Số tiền', '2020-11-15 21:00:31', '2020-11-15 21:00:31'),
(2346, 1, 'vi', 'plugins/payment/payment', 'currency', 'Loại tiền tệ', '2020-11-15 21:00:31', '2020-11-15 21:00:31'),
(2347, 1, 'vi', 'plugins/payment/payment', 'user', 'Người dùng', '2020-11-15 21:00:31', '2020-11-15 21:00:31'),
(2348, 1, 'vi', 'plugins/payment/payment', 'stripe', 'Stripe', '2020-11-15 21:00:31', '2020-11-15 21:00:31'),
(2349, 1, 'vi', 'plugins/payment/payment', 'paypal', 'PayPal', '2020-11-15 21:00:31', '2020-11-15 21:00:31'),
(2350, 1, 'vi', 'plugins/payment/payment', 'action', 'Hành động', '2020-11-15 21:00:31', '2020-11-15 21:00:31'),
(2351, 1, 'vi', 'plugins/payment/payment', 'payment_via_card', 'Thanh toán qua thẻ', '2020-11-15 21:00:31', '2020-11-15 21:00:31'),
(2352, 1, 'vi', 'plugins/payment/payment', 'card_number', 'Số thẻ', '2020-11-15 21:00:31', '2020-11-15 21:00:31'),
(2353, 1, 'vi', 'plugins/payment/payment', 'full_name', 'Họ tên', '2020-11-15 21:00:31', '2020-11-15 21:00:31'),
(2354, 1, 'vi', 'plugins/payment/payment', 'payment_via_paypal', 'Thanh toán qua PayPal', '2020-11-15 21:00:31', '2020-11-15 21:00:31'),
(2355, 1, 'vi', 'plugins/payment/payment', 'mm_yy', 'MM/YY', '2020-11-15 21:00:31', '2020-11-15 21:00:31'),
(2356, 1, 'vi', 'plugins/payment/payment', 'cvc', 'CVC', '2020-11-15 21:00:31', '2020-11-15 21:00:31'),
(2357, 1, 'vi', 'plugins/payment/payment', 'details', 'Chi tiết', '2020-11-15 21:00:31', '2020-11-15 21:00:31'),
(2358, 1, 'vi', 'plugins/payment/payment', 'payer_name', 'Tên người mua', '2020-11-15 21:00:31', '2020-11-15 21:00:31'),
(2359, 1, 'vi', 'plugins/payment/payment', 'email', 'Email', '2020-11-15 21:00:31', '2020-11-15 21:00:31'),
(2360, 1, 'vi', 'plugins/payment/payment', 'phone', 'Điện thoại', '2020-11-15 21:00:31', '2020-11-15 21:00:31'),
(2361, 1, 'vi', 'plugins/payment/payment', 'country', 'Quốc gia', '2020-11-15 21:00:31', '2020-11-15 21:00:31'),
(2362, 1, 'vi', 'plugins/payment/payment', 'shipping_address', 'Địa chỉ giao hàng', '2020-11-15 21:00:31', '2020-11-15 21:00:31'),
(2363, 1, 'vi', 'plugins/payment/payment', 'payment_details', 'Chi tiết thanh toán', '2020-11-15 21:00:31', '2020-11-15 21:00:31'),
(2364, 1, 'vi', 'plugins/payment/payment', 'card', 'Thẻ', '2020-11-15 21:00:31', '2020-11-15 21:00:31'),
(2365, 1, 'vi', 'plugins/payment/payment', 'address', 'Địa chỉ', '2020-11-15 21:00:31', '2020-11-15 21:00:31'),
(2366, 1, 'vi', 'plugins/payment/payment', 'could_not_get_stripe_token', 'Không thể lấy mã Stripe để thanh toán.', '2020-11-15 21:00:31', '2020-11-15 21:00:31'),
(2367, 1, 'vi', 'plugins/payment/payment', 'payment_id', 'Mã thanh toán', '2020-11-15 21:00:31', '2020-11-15 21:00:31'),
(2368, 1, 'vi', 'plugins/payment/payment', 'payment_methods', 'Phương thức thanh toán', '2020-11-15 21:00:31', '2020-11-15 21:00:31'),
(2369, 1, 'vi', 'plugins/payment/payment', 'transactions', 'Lịch sử giao dịch', '2020-11-15 21:00:31', '2020-11-15 21:00:31'),
(2370, 1, 'vi', 'plugins/payment/payment', 'payment_methods_description', 'Cài đặt các phương thức thanh toán cho website', '2020-11-15 21:00:31', '2020-11-15 21:00:31'),
(2371, 1, 'vi', 'plugins/payment/payment', 'paypal_description', 'Khách hàng có thể mua hàng và thanh toán trực tiếp thông qua cổng thanh toán PayPal', '2020-11-15 21:00:31', '2020-11-15 21:00:31'),
(2372, 1, 'vi', 'plugins/payment/payment', 'use', 'Dùng', '2020-11-15 21:00:31', '2020-11-15 21:00:31'),
(2373, 1, 'vi', 'plugins/payment/payment', 'stripe_description', 'Khách hàng có thể mua hàng và thanh toán bằng Visa, Credit card thông qua cổng thanh toán Stripe', '2020-11-15 21:00:31', '2020-11-15 21:00:31'),
(2374, 1, 'vi', 'plugins/payment/payment', 'edit', 'Chỉnh sửa', '2020-11-15 21:00:31', '2020-11-15 21:00:31'),
(2375, 1, 'vi', 'plugins/payment/payment', 'settings', 'Cài đặt', '2020-11-15 21:00:31', '2020-11-15 21:00:31'),
(2376, 1, 'vi', 'plugins/payment/payment', 'activate', 'Kích hoạt', '2020-11-15 21:00:31', '2020-11-15 21:00:31'),
(2377, 1, 'vi', 'plugins/payment/payment', 'deactivate', 'Huỷ kích hoạt', '2020-11-15 21:00:31', '2020-11-15 21:00:31'),
(2378, 1, 'vi', 'plugins/payment/payment', 'update', 'Cập nhật', '2020-11-15 21:00:31', '2020-11-15 21:00:31'),
(2379, 1, 'vi', 'plugins/payment/payment', 'configuration_instruction', 'Hướng dẫn cấu hình :name', '2020-11-15 21:00:31', '2020-11-15 21:00:31'),
(2380, 1, 'vi', 'plugins/payment/payment', 'configuration_requirement', 'Để sử dụng :name bạn cần', '2020-11-15 21:00:31', '2020-11-15 21:00:31'),
(2381, 1, 'vi', 'plugins/payment/payment', 'service_registration', 'Đăng ký dịch vụ với :name', '2020-11-15 21:00:31', '2020-11-15 21:00:31'),
(2382, 1, 'vi', 'plugins/payment/payment', 'after_service_registration_msg', 'Sau khi hoàn tất các bước đăng ký tại :name, bạn sẽ có các thông số Client ID, Client Secret', '2020-11-15 21:00:31', '2020-11-15 21:00:31'),
(2383, 1, 'vi', 'plugins/payment/payment', 'enter_client_id_and_secret', 'Nhập các thông số Client ID, Secret vào ô bên phải', '2020-11-15 21:00:31', '2020-11-15 21:00:31'),
(2384, 1, 'vi', 'plugins/payment/payment', 'method_name', 'Tên phương thức', '2020-11-15 21:00:31', '2020-11-15 21:00:31'),
(2385, 1, 'vi', 'plugins/payment/payment', 'please_provide_information', 'Xin vui lòng cung cấp thông tin', '2020-11-15 21:00:31', '2020-11-15 21:00:31'),
(2386, 1, 'vi', 'plugins/payment/payment', 'client_id', 'Client ID', '2020-11-15 21:00:31', '2020-11-15 21:00:31'),
(2387, 1, 'vi', 'plugins/payment/payment', 'client_secret', 'Client Secret', '2020-11-15 21:00:31', '2020-11-15 21:00:31'),
(2388, 1, 'vi', 'plugins/payment/payment', 'stripe_key', 'Stripe Key', '2020-11-15 21:00:31', '2020-11-15 21:00:31'),
(2389, 1, 'vi', 'plugins/payment/payment', 'stripe_secret', 'Stripe Secret', '2020-11-15 21:00:31', '2020-11-15 21:00:31'),
(2390, 1, 'vi', 'plugins/payment/payment', 'stripe_after_service_registration_msg', 'After registration at :name, you will have Public, Secret keys', '2020-11-15 21:00:31', '2020-11-15 21:00:31'),
(2391, 1, 'vi', 'plugins/payment/payment', 'stripe_enter_client_id_and_secret', 'Enter Public, Secret keys into the box in right hand', '2020-11-15 21:00:31', '2020-11-15 21:00:31'),
(2392, 1, 'vi', 'plugins/payment/payment', 'secret', 'Secret', '2020-11-15 21:00:31', '2020-11-15 21:00:31'),
(2393, 1, 'vi', 'plugins/payment/payment', 'pay_online_via', 'Thanh toán online qua :name', '2020-11-15 21:00:31', '2020-11-15 21:00:31'),
(2394, 1, 'vi', 'plugins/payment/payment', 'sandbox_mode', 'Chế độ thử nghiệm', '2020-11-15 21:00:31', '2020-11-15 21:00:31'),
(2395, 1, 'vi', 'plugins/payment/payment', 'deactivate_payment_method', 'Huỷ kích hoạt phương thức', '2020-11-15 21:00:31', '2020-11-15 21:00:31'),
(2396, 1, 'vi', 'plugins/payment/payment', 'deactivate_payment_method_description', 'Bạn có chắc chắn muốn huỷ phương thức thành toán này?', '2020-11-15 21:00:31', '2020-11-15 21:00:31'),
(2397, 1, 'vi', 'plugins/payment/payment', 'agree', 'Đồng ý', '2020-11-15 21:00:31', '2020-11-15 21:00:31'),
(2398, 1, 'vi', 'plugins/payment/payment', 'name', 'Thanh toán', '2020-11-15 21:00:31', '2020-11-15 21:00:31'),
(2399, 1, 'vi', 'plugins/payment/payment', 'create', 'Thêm thanh toán mới', '2020-11-15 21:00:31', '2020-11-15 21:00:31'),
(2400, 1, 'vi', 'plugins/payment/payment', 'go_back', 'Trở lại', '2020-11-15 21:00:31', '2020-11-15 21:00:31'),
(2401, 1, 'vi', 'plugins/payment/payment', 'information', 'Thông tin', '2020-11-15 21:00:31', '2020-11-15 21:00:31'),
(2402, 1, 'vi', 'plugins/payment/payment', 'methods.paypal', 'PayPal', '2020-11-15 21:00:31', '2020-11-15 21:00:31'),
(2403, 1, 'vi', 'plugins/payment/payment', 'methods.stripe', 'Stripe', '2020-11-15 21:00:31', '2020-11-15 21:00:31'),
(2404, 1, 'vi', 'plugins/payment/payment', 'methods.cod', 'Thanh toán khi giao hàng (COD)', '2020-11-15 21:00:31', '2020-11-15 21:00:31'),
(2405, 1, 'vi', 'plugins/payment/payment', 'methods.bank_transfer', 'Chuyển khoản qua ngân hàng', '2020-11-15 21:00:31', '2020-11-15 21:00:31'),
(2406, 1, 'vi', 'plugins/payment/payment', 'statuses.pending', 'Chưa hoàn tất', '2020-11-15 21:00:31', '2020-11-15 21:00:31'),
(2407, 1, 'vi', 'plugins/payment/payment', 'statuses.completed', 'Đã hoàn thành', '2020-11-15 21:00:31', '2020-11-15 21:00:31'),
(2408, 1, 'vi', 'plugins/payment/payment', 'statuses.refunding', 'Đang hoàn tiền', '2020-11-15 21:00:31', '2020-11-15 21:00:31'),
(2409, 1, 'vi', 'plugins/payment/payment', 'statuses.refunded', 'Đã hoàn tiền', '2020-11-15 21:00:31', '2020-11-15 21:00:31'),
(2410, 1, 'vi', 'plugins/payment/payment', 'statuses.fraud', 'Gian lận', '2020-11-15 21:00:31', '2020-11-15 21:00:31'),
(2411, 1, 'vi', 'plugins/payment/payment', 'statuses.failed', 'Thất bại', '2020-11-15 21:00:31', '2020-11-15 21:00:31'),
(2412, 1, 'vi', 'plugins/payment/payment', 'payment_methods_instruction', 'Hướng dẫn khách hàng thanh toán trực tiếp. Có thể chọn thanh toán khi giao hàng hoặc chuyển khoản', '2020-11-15 21:00:31', '2020-11-15 21:00:31'),
(2413, 1, 'vi', 'plugins/payment/payment', 'payment_method_description', 'Hướng dẫn thanh toán – (Hiển thị ở trang thông báo mua hàng thành công và trang thanh toán)', '2020-11-15 21:00:31', '2020-11-15 21:00:31'),
(2414, 1, 'vi', 'plugins/payment/payment', 'payment_via_cod', 'Thanh toán khi nhận hàng (COD)', '2020-11-15 21:00:31', '2020-11-15 21:00:31'),
(2415, 1, 'vi', 'plugins/payment/payment', 'payment_via_bank_transfer', 'Chuyển khoản qua ngân hàng', '2020-11-15 21:00:31', '2020-11-15 21:00:31'),
(2416, 1, 'vi', 'plugins/payment/payment', 'payment_pending', 'Thực hiện thành công. Thanh toán của bạn đang được xử lý và sẽ được xác nhận bởi nhân viên.', '2020-11-15 21:00:31', '2020-11-15 21:00:31'),
(2417, 1, 'vi', 'plugins/payment/payment', 'created_at', 'Ngày tạo', '2020-11-15 21:00:31', '2020-11-15 21:00:31'),
(2418, 1, 'vi', 'plugins/payment/payment', 'payment_channel', 'Phương thức thanh toán', '2020-11-15 21:00:31', '2020-11-15 21:00:31'),
(2419, 1, 'vi', 'plugins/payment/payment', 'total', 'Tổng cộng', '2020-11-15 21:00:31', '2020-11-15 21:00:31'),
(2420, 1, 'vi', 'plugins/payment/payment', 'status', 'Trạng thái', '2020-11-15 21:00:31', '2020-11-15 21:00:31'),
(2421, 1, 'vi', 'plugins/payment/payment', 'default_payment_method', 'Phương thức thanh toán mặc định', '2020-11-15 21:00:31', '2020-11-15 21:00:31'),
(2422, 1, 'en', 'plugins/real-estate/account-property', 'draft_properties', 'Draft Properties', '2020-11-15 21:00:31', '2020-11-15 21:00:31'),
(2423, 1, 'en', 'plugins/real-estate/account-property', 'pending_properties', 'Pending Properties', '2020-11-15 21:00:31', '2020-11-15 21:00:31'),
(2424, 1, 'en', 'plugins/real-estate/account-property', 'published_properties', 'Published Properties', '2020-11-15 21:00:31', '2020-11-15 21:00:31'),
(2425, 1, 'en', 'plugins/real-estate/account-property', 'properties', 'Properties', '2020-11-15 21:00:31', '2020-11-15 21:00:31'),
(2426, 1, 'en', 'plugins/real-estate/account-property', 'write_property', 'Write a property', '2020-11-15 21:00:31', '2020-11-15 21:00:31'),
(2427, 1, 'en', 'plugins/real-estate/account', 'create', 'New account', '2020-11-15 21:00:31', '2020-11-15 21:00:31'),
(2428, 1, 'en', 'plugins/real-estate/account', 'edit', 'Edit account \":name\"', '2020-11-15 21:00:31', '2020-11-15 21:00:31'),
(2429, 1, 'en', 'plugins/real-estate/account', 'name', 'Accounts', '2020-11-15 21:00:31', '2020-11-15 21:00:31'),
(2430, 1, 'en', 'plugins/real-estate/account', 'confirmation_subject', 'Email verification', '2020-11-15 21:00:31', '2020-11-15 21:00:31'),
(2431, 1, 'en', 'plugins/real-estate/account', 'confirmation_subject_title', 'Verify your email', '2020-11-15 21:00:31', '2020-11-15 21:00:31'),
(2432, 1, 'en', 'plugins/real-estate/account', 'not_confirmed', 'The given email address has not been confirmed. <a href=\":resend_link\">Resend confirmation link.</a>', '2020-11-15 21:00:31', '2020-11-15 21:00:31'),
(2433, 1, 'en', 'plugins/real-estate/account', 'confirmation_successful', 'You successfully confirmed your email address.', '2020-11-15 21:00:31', '2020-11-15 21:00:31'),
(2434, 1, 'en', 'plugins/real-estate/account', 'confirmation_info', 'Please confirm your email address.', '2020-11-15 21:00:31', '2020-11-15 21:00:31'),
(2435, 1, 'en', 'plugins/real-estate/account', 'confirmation_resent', 'We sent you another confirmation email. You should receive it shortly.', '2020-11-15 21:00:31', '2020-11-15 21:00:31'),
(2436, 1, 'en', 'plugins/real-estate/account', 'form.email', 'Email', '2020-11-15 21:00:31', '2020-11-15 21:00:31'),
(2437, 1, 'en', 'plugins/real-estate/account', 'form.password', 'Password', '2020-11-15 21:00:31', '2020-11-15 21:00:31'),
(2438, 1, 'en', 'plugins/real-estate/account', 'form.password_confirmation', 'Password confirmation', '2020-11-15 21:00:31', '2020-11-15 21:00:31'),
(2439, 1, 'en', 'plugins/real-estate/account', 'form.change_password', 'Change password?', '2020-11-15 21:00:31', '2020-11-15 21:00:31'),
(2440, 1, 'en', 'plugins/real-estate/account', 'forgot_password', 'Forgot password', '2020-11-15 21:00:31', '2020-11-15 21:00:31'),
(2441, 1, 'en', 'plugins/real-estate/account', 'login', 'Login', '2020-11-15 21:00:31', '2020-11-15 21:00:31'),
(2442, 1, 'en', 'plugins/real-estate/account', 'buy_credits', 'Buy credits', '2020-11-15 21:00:31', '2020-11-15 21:00:31'),
(2443, 1, 'en', 'plugins/real-estate/account', 'credits', 'credits', '2020-11-15 21:00:31', '2020-11-15 21:00:31'),
(2444, 1, 'en', 'plugins/real-estate/account', 'account_settings', 'Account settings', '2020-11-15 21:00:31', '2020-11-15 21:00:31'),
(2445, 1, 'en', 'plugins/real-estate/account', 'update_profile_success', 'Update profile successfully!', '2020-11-15 21:00:31', '2020-11-15 21:00:31'),
(2446, 1, 'en', 'plugins/real-estate/account', 'security', 'Security', '2020-11-15 21:00:31', '2020-11-15 21:00:31'),
(2447, 1, 'en', 'plugins/real-estate/account', 'packages', 'Packages', '2020-11-15 21:00:31', '2020-11-15 21:00:31'),
(2448, 1, 'en', 'plugins/real-estate/account', 'transactions', 'Transactions', '2020-11-15 21:00:31', '2020-11-15 21:00:31'),
(2449, 1, 'en', 'plugins/real-estate/account', 'subscribe_package', 'Subscribe package \":name\"', '2020-11-15 21:00:31', '2020-11-15 21:00:31'),
(2450, 1, 'en', 'plugins/real-estate/category', 'name', 'Categories', '2020-11-15 21:00:31', '2020-11-15 21:00:31'),
(2451, 1, 'en', 'plugins/real-estate/category', 'create', 'New category', '2020-11-15 21:00:31', '2020-11-15 21:00:31'),
(2452, 1, 'en', 'plugins/real-estate/category', 'edit', 'Edit category', '2020-11-15 21:00:31', '2020-11-15 21:00:31'),
(2453, 1, 'en', 'plugins/real-estate/category', 'menu', 'Property categories', '2020-11-15 21:00:31', '2020-11-15 21:00:31'),
(2454, 1, 'en', 'plugins/real-estate/consult', 'name', 'Consults', '2020-11-15 21:00:31', '2020-11-15 21:00:31'),
(2455, 1, 'en', 'plugins/real-estate/consult', 'edit', 'View consult', '2020-11-15 21:00:31', '2020-11-15 21:00:31'),
(2456, 1, 'en', 'plugins/real-estate/consult', 'statuses.read', 'Read', '2020-11-15 21:00:31', '2020-11-15 21:00:31'),
(2457, 1, 'en', 'plugins/real-estate/consult', 'statuses.unread', 'Unread', '2020-11-15 21:00:31', '2020-11-15 21:00:31'),
(2458, 1, 'en', 'plugins/real-estate/consult', 'phone', 'Phone', '2020-11-15 21:00:31', '2020-11-15 21:00:31'),
(2459, 1, 'en', 'plugins/real-estate/consult', 'settings.email.title', 'Consult', '2020-11-15 21:00:31', '2020-11-15 21:00:31'),
(2460, 1, 'en', 'plugins/real-estate/consult', 'settings.email.description', 'Consult email configuration', '2020-11-15 21:00:31', '2020-11-15 21:00:31'),
(2461, 1, 'en', 'plugins/real-estate/consult', 'settings.email.templates.notice_title', 'Send notice to administrator', '2020-11-15 21:00:31', '2020-11-15 21:00:31'),
(2462, 1, 'en', 'plugins/real-estate/consult', 'settings.email.templates.notice_description', 'Email template to send notice to administrator when system get new consult', '2020-11-15 21:00:31', '2020-11-15 21:00:31'),
(2463, 1, 'en', 'plugins/real-estate/consult', 'content', 'Details', '2020-11-15 21:00:31', '2020-11-15 21:00:31'),
(2464, 1, 'en', 'plugins/real-estate/consult', 'consult_information', 'Consult information', '2020-11-15 21:00:31', '2020-11-15 21:00:31'),
(2465, 1, 'en', 'plugins/real-estate/consult', 'email.header', 'Email', '2020-11-15 21:00:31', '2020-11-15 21:00:31'),
(2466, 1, 'en', 'plugins/real-estate/consult', 'email.title', 'New consult from your site', '2020-11-15 21:00:31', '2020-11-15 21:00:31'),
(2467, 1, 'en', 'plugins/real-estate/consult', 'email.success', 'Send consult successfully!', '2020-11-15 21:00:31', '2020-11-15 21:00:31'),
(2468, 1, 'en', 'plugins/real-estate/consult', 'email.failed', 'Can\'t send request on this time, please try again later!', '2020-11-15 21:00:31', '2020-11-15 21:00:31'),
(2469, 1, 'en', 'plugins/real-estate/consult', 'form.name.required', 'Name is required', '2020-11-15 21:00:31', '2020-11-15 21:00:31'),
(2470, 1, 'en', 'plugins/real-estate/consult', 'form.email.required', 'Email is required', '2020-11-15 21:00:31', '2020-11-15 21:00:31'),
(2471, 1, 'en', 'plugins/real-estate/consult', 'form.email.email', 'The email address is not valid', '2020-11-15 21:00:31', '2020-11-15 21:00:31'),
(2472, 1, 'en', 'plugins/real-estate/consult', 'form.content.required', 'Content is required', '2020-11-15 21:00:31', '2020-11-15 21:00:31'),
(2473, 1, 'en', 'plugins/real-estate/consult', 'form.g-recaptcha-response.required', 'Please confirm you are not a robot before sending the message.', '2020-11-15 21:00:31', '2020-11-15 21:00:31'),
(2474, 1, 'en', 'plugins/real-estate/consult', 'form.g-recaptcha-response.captcha', 'You are not confirm robot yet.', '2020-11-15 21:00:31', '2020-11-15 21:00:31'),
(2475, 1, 'en', 'plugins/real-estate/consult', 'consult_sent_from', 'This consult information sent from', '2020-11-15 21:00:31', '2020-11-15 21:00:31'),
(2476, 1, 'en', 'plugins/real-estate/consult', 'time', 'Time', '2020-11-15 21:00:31', '2020-11-15 21:00:31'),
(2477, 1, 'en', 'plugins/real-estate/consult', 'consult_id', 'Consult ID', '2020-11-15 21:00:31', '2020-11-15 21:00:31'),
(2478, 1, 'en', 'plugins/real-estate/consult', 'form_name', 'Name', '2020-11-15 21:00:31', '2020-11-15 21:00:31'),
(2479, 1, 'en', 'plugins/real-estate/consult', 'form_email', 'Email', '2020-11-15 21:00:31', '2020-11-15 21:00:31'),
(2480, 1, 'en', 'plugins/real-estate/consult', 'form_phone', 'Phone', '2020-11-15 21:00:31', '2020-11-15 21:00:31'),
(2481, 1, 'en', 'plugins/real-estate/consult', 'mark_as_read', 'Mark as read', '2020-11-15 21:00:32', '2020-11-15 21:00:32'),
(2482, 1, 'en', 'plugins/real-estate/consult', 'mark_as_unread', 'Mark as unread', '2020-11-15 21:00:32', '2020-11-15 21:00:32'),
(2483, 1, 'en', 'plugins/real-estate/consult', 'new_consult_notice', 'You have <span class=\"bold\">:count</span> New Consults', '2020-11-15 21:00:32', '2020-11-15 21:00:32'),
(2484, 1, 'en', 'plugins/real-estate/consult', 'view_all', 'View all', '2020-11-15 21:00:32', '2020-11-15 21:00:32'),
(2485, 1, 'en', 'plugins/real-estate/consult', 'project', 'Project', '2020-11-15 21:00:32', '2020-11-15 21:00:32'),
(2486, 1, 'en', 'plugins/real-estate/consult', 'property', 'Property', '2020-11-15 21:00:32', '2020-11-15 21:00:32'),
(2487, 1, 'en', 'plugins/real-estate/currency', 'currencies', 'Currencies', '2020-11-15 21:00:32', '2020-11-15 21:00:32'),
(2488, 1, 'en', 'plugins/real-estate/currency', 'setting_description', 'List of currencies using on website', '2020-11-15 21:00:32', '2020-11-15 21:00:32'),
(2489, 1, 'en', 'plugins/real-estate/currency', 'name', 'Name', '2020-11-15 21:00:32', '2020-11-15 21:00:32'),
(2490, 1, 'en', 'plugins/real-estate/currency', 'symbol', 'Symbol', '2020-11-15 21:00:32', '2020-11-15 21:00:32'),
(2491, 1, 'en', 'plugins/real-estate/currency', 'number_of_decimals', 'Number of decimals', '2020-11-15 21:00:32', '2020-11-15 21:00:32'),
(2492, 1, 'en', 'plugins/real-estate/currency', 'exchange_rate', 'Exchange rate', '2020-11-15 21:00:32', '2020-11-15 21:00:32'),
(2493, 1, 'en', 'plugins/real-estate/currency', 'is_prefix_symbol', 'Position of symbol', '2020-11-15 21:00:32', '2020-11-15 21:00:32'),
(2494, 1, 'en', 'plugins/real-estate/currency', 'is_default', 'Is default?', '2020-11-15 21:00:32', '2020-11-15 21:00:32'),
(2495, 1, 'en', 'plugins/real-estate/currency', 'remove', 'Remove', '2020-11-15 21:00:32', '2020-11-15 21:00:32'),
(2496, 1, 'en', 'plugins/real-estate/currency', 'new_currency', 'Add a new currency', '2020-11-15 21:00:32', '2020-11-15 21:00:32'),
(2497, 1, 'en', 'plugins/real-estate/currency', 'save_settings', 'Save settings', '2020-11-15 21:00:32', '2020-11-15 21:00:32'),
(2498, 1, 'en', 'plugins/real-estate/currency', 'before_number', 'Before number', '2020-11-15 21:00:32', '2020-11-15 21:00:32'),
(2499, 1, 'en', 'plugins/real-estate/currency', 'after_number', 'After number', '2020-11-15 21:00:32', '2020-11-15 21:00:32'),
(2500, 1, 'en', 'plugins/real-estate/dashboard', 'joined_on', 'Joined :date', '2020-11-15 21:00:32', '2020-11-15 21:00:32'),
(2501, 1, 'en', 'plugins/real-estate/dashboard', 'dob', 'Born :date', '2020-11-15 21:00:32', '2020-11-15 21:00:32'),
(2502, 1, 'en', 'plugins/real-estate/dashboard', 'email', 'Email', '2020-11-15 21:00:32', '2020-11-15 21:00:32'),
(2503, 1, 'en', 'plugins/real-estate/dashboard', 'email_or_username', 'Email/Username', '2020-11-15 21:00:32', '2020-11-15 21:00:32'),
(2504, 1, 'en', 'plugins/real-estate/dashboard', 'password', 'Password', '2020-11-15 21:00:32', '2020-11-15 21:00:32'),
(2505, 1, 'en', 'plugins/real-estate/dashboard', 'password-confirmation', 'Confirm Password', '2020-11-15 21:00:32', '2020-11-15 21:00:32'),
(2506, 1, 'en', 'plugins/real-estate/dashboard', 'remember-me', 'Remember Me', '2020-11-15 21:00:32', '2020-11-15 21:00:32'),
(2507, 1, 'en', 'plugins/real-estate/dashboard', 'login-title', 'Login', '2020-11-15 21:00:32', '2020-11-15 21:00:32'),
(2508, 1, 'en', 'plugins/real-estate/dashboard', 'login-cta', 'Login', '2020-11-15 21:00:32', '2020-11-15 21:00:32'),
(2509, 1, 'en', 'plugins/real-estate/dashboard', 'register-title', 'Register', '2020-11-15 21:00:32', '2020-11-15 21:00:32'),
(2510, 1, 'en', 'plugins/real-estate/dashboard', 'register-cta', 'Register', '2020-11-15 21:00:32', '2020-11-15 21:00:32'),
(2511, 1, 'en', 'plugins/real-estate/dashboard', 'forgot-password-cta', 'Forgot Your Password?', '2020-11-15 21:00:32', '2020-11-15 21:00:32'),
(2512, 1, 'en', 'plugins/real-estate/dashboard', 'name', 'Name', '2020-11-15 21:00:32', '2020-11-15 21:00:32'),
(2513, 1, 'en', 'plugins/real-estate/dashboard', 'reset-password-title', 'Reset Password', '2020-11-15 21:00:32', '2020-11-15 21:00:32'),
(2514, 1, 'en', 'plugins/real-estate/dashboard', 'reset-password-cta', 'Reset Password', '2020-11-15 21:00:32', '2020-11-15 21:00:32'),
(2515, 1, 'en', 'plugins/real-estate/dashboard', 'cancel-link', 'Cancel', '2020-11-15 21:00:32', '2020-11-15 21:00:32'),
(2516, 1, 'en', 'plugins/real-estate/dashboard', 'logout-cta', 'Logout', '2020-11-15 21:00:32', '2020-11-15 21:00:32'),
(2517, 1, 'en', 'plugins/real-estate/dashboard', 'header_profile_link', 'Profile', '2020-11-15 21:00:32', '2020-11-15 21:00:32'),
(2518, 1, 'en', 'plugins/real-estate/dashboard', 'header_settings_link', 'Settings', '2020-11-15 21:00:32', '2020-11-15 21:00:32'),
(2519, 1, 'en', 'plugins/real-estate/dashboard', 'header_logout_link', 'Logout', '2020-11-15 21:00:32', '2020-11-15 21:00:32'),
(2520, 1, 'en', 'plugins/real-estate/dashboard', 'unknown_state', 'Unknown', '2020-11-15 21:00:32', '2020-11-15 21:00:32'),
(2521, 1, 'en', 'plugins/real-estate/dashboard', 'close', 'Close', '2020-11-15 21:00:32', '2020-11-15 21:00:32'),
(2522, 1, 'en', 'plugins/real-estate/dashboard', 'save', 'Save', '2020-11-15 21:00:32', '2020-11-15 21:00:32'),
(2523, 1, 'en', 'plugins/real-estate/dashboard', 'loading', 'Loading...', '2020-11-15 21:00:32', '2020-11-15 21:00:32'),
(2524, 1, 'en', 'plugins/real-estate/dashboard', 'new_image', 'New image', '2020-11-15 21:00:32', '2020-11-15 21:00:32'),
(2525, 1, 'en', 'plugins/real-estate/dashboard', 'change_profile_image', 'Change avatar', '2020-11-15 21:00:32', '2020-11-15 21:00:32'),
(2526, 1, 'en', 'plugins/real-estate/dashboard', 'save_cropped_image_failed', 'Save cropped image failed!', '2020-11-15 21:00:32', '2020-11-15 21:00:32'),
(2527, 1, 'en', 'plugins/real-estate/dashboard', 'failed_to_crop_image', 'Failed to crop image', '2020-11-15 21:00:32', '2020-11-15 21:00:32'),
(2528, 1, 'en', 'plugins/real-estate/dashboard', 'failed_to_load_data', 'Failed to load data', '2020-11-15 21:00:32', '2020-11-15 21:00:32'),
(2529, 1, 'en', 'plugins/real-estate/dashboard', 'read_image_failed', 'Read image failed', '2020-11-15 21:00:32', '2020-11-15 21:00:32'),
(2530, 1, 'en', 'plugins/real-estate/dashboard', 'update_avatar_success', 'Update avatar successfully!', '2020-11-15 21:00:32', '2020-11-15 21:00:32'),
(2531, 1, 'en', 'plugins/real-estate/dashboard', 'change_avatar_description', 'Click on image to change avatar', '2020-11-15 21:00:32', '2020-11-15 21:00:32'),
(2532, 1, 'en', 'plugins/real-estate/dashboard', 'notices.error', 'Error!', '2020-11-15 21:00:32', '2020-11-15 21:00:32'),
(2533, 1, 'en', 'plugins/real-estate/dashboard', 'notices.success', 'Success!', '2020-11-15 21:00:32', '2020-11-15 21:00:32'),
(2534, 1, 'en', 'plugins/real-estate/dashboard', 'sidebar_title', 'Personal settings', '2020-11-15 21:00:32', '2020-11-15 21:00:32'),
(2535, 1, 'en', 'plugins/real-estate/dashboard', 'sidebar_information', 'Account Information', '2020-11-15 21:00:32', '2020-11-15 21:00:32'),
(2536, 1, 'en', 'plugins/real-estate/dashboard', 'sidebar_security', 'Security', '2020-11-15 21:00:32', '2020-11-15 21:00:32'),
(2537, 1, 'en', 'plugins/real-estate/dashboard', 'sidebar_packages', 'Packages', '2020-11-15 21:00:32', '2020-11-15 21:00:32'),
(2538, 1, 'en', 'plugins/real-estate/dashboard', 'sidebar_transactions', 'Transactions', '2020-11-15 21:00:32', '2020-11-15 21:00:32'),
(2539, 1, 'en', 'plugins/real-estate/dashboard', 'account_field_title', 'Account Information', '2020-11-15 21:00:32', '2020-11-15 21:00:32'),
(2540, 1, 'en', 'plugins/real-estate/dashboard', 'profile-picture', 'Profile picture', '2020-11-15 21:00:32', '2020-11-15 21:00:32'),
(2541, 1, 'en', 'plugins/real-estate/dashboard', 'uploading', 'Uploading...', '2020-11-15 21:00:32', '2020-11-15 21:00:32'),
(2542, 1, 'en', 'plugins/real-estate/dashboard', 'phone', 'Phone', '2020-11-15 21:00:32', '2020-11-15 21:00:32'),
(2543, 1, 'en', 'plugins/real-estate/dashboard', 'first_name', 'First name', '2020-11-15 21:00:32', '2020-11-15 21:00:32'),
(2544, 1, 'en', 'plugins/real-estate/dashboard', 'last_name', 'Last name', '2020-11-15 21:00:32', '2020-11-15 21:00:32'),
(2545, 1, 'en', 'plugins/real-estate/dashboard', 'description', 'Short description', '2020-11-15 21:00:32', '2020-11-15 21:00:32'),
(2546, 1, 'en', 'plugins/real-estate/dashboard', 'description_placeholder', 'Tell something about yourself...', '2020-11-15 21:00:32', '2020-11-15 21:00:32'),
(2547, 1, 'en', 'plugins/real-estate/dashboard', 'verified', 'Verified', '2020-11-15 21:00:32', '2020-11-15 21:00:32'),
(2548, 1, 'en', 'plugins/real-estate/dashboard', 'verify_require_desc', 'Please verify email by link we sent to you.', '2020-11-15 21:00:32', '2020-11-15 21:00:32'),
(2549, 1, 'en', 'plugins/real-estate/dashboard', 'birthday', 'Birthday', '2020-11-15 21:00:32', '2020-11-15 21:00:32'),
(2550, 1, 'en', 'plugins/real-estate/dashboard', 'year_lc', 'year', '2020-11-15 21:00:32', '2020-11-15 21:00:32'),
(2551, 1, 'en', 'plugins/real-estate/dashboard', 'month_lc', 'month', '2020-11-15 21:00:32', '2020-11-15 21:00:32'),
(2552, 1, 'en', 'plugins/real-estate/dashboard', 'day_lc', 'day', '2020-11-15 21:00:32', '2020-11-15 21:00:32'),
(2553, 1, 'en', 'plugins/real-estate/dashboard', 'gender', 'Gender', '2020-11-15 21:00:32', '2020-11-15 21:00:32'),
(2554, 1, 'en', 'plugins/real-estate/dashboard', 'gender_male', 'Male', '2020-11-15 21:00:32', '2020-11-15 21:00:32'),
(2555, 1, 'en', 'plugins/real-estate/dashboard', 'gender_female', 'Female', '2020-11-15 21:00:32', '2020-11-15 21:00:32'),
(2556, 1, 'en', 'plugins/real-estate/dashboard', 'gender_other', 'Other', '2020-11-15 21:00:32', '2020-11-15 21:00:32'),
(2557, 1, 'en', 'plugins/real-estate/dashboard', 'security_title', 'Security', '2020-11-15 21:00:32', '2020-11-15 21:00:32'),
(2558, 1, 'en', 'plugins/real-estate/dashboard', 'packages_title', 'Packages', '2020-11-15 21:00:32', '2020-11-15 21:00:32'),
(2559, 1, 'en', 'plugins/real-estate/dashboard', 'transactions_title', 'Transactions', '2020-11-15 21:00:32', '2020-11-15 21:00:32'),
(2560, 1, 'en', 'plugins/real-estate/dashboard', 'current_password', 'Current password', '2020-11-15 21:00:32', '2020-11-15 21:00:32'),
(2561, 1, 'en', 'plugins/real-estate/dashboard', 'password_new', 'New password', '2020-11-15 21:00:32', '2020-11-15 21:00:32'),
(2562, 1, 'en', 'plugins/real-estate/dashboard', 'password_new_confirmation', 'Confirmation password', '2020-11-15 21:00:32', '2020-11-15 21:00:32'),
(2563, 1, 'en', 'plugins/real-estate/dashboard', 'password_update_btn', 'Update password', '2020-11-15 21:00:32', '2020-11-15 21:00:32'),
(2564, 1, 'en', 'plugins/real-estate/dashboard', 'activity_logs', 'Activity Logs', '2020-11-15 21:00:32', '2020-11-15 21:00:32'),
(2565, 1, 'en', 'plugins/real-estate/dashboard', 'oops', 'Oops!', '2020-11-15 21:00:32', '2020-11-15 21:00:32'),
(2566, 1, 'en', 'plugins/real-estate/dashboard', 'no_activity_logs', 'You have no activity logs yet', '2020-11-15 21:00:32', '2020-11-15 21:00:32'),
(2567, 1, 'en', 'plugins/real-estate/dashboard', 'actions.create_property', 'You have created property \":name\"', '2020-11-15 21:00:32', '2020-11-15 21:00:32'),
(2568, 1, 'en', 'plugins/real-estate/dashboard', 'actions.update_property', 'You have updated property \":name\"', '2020-11-15 21:00:32', '2020-11-15 21:00:32'),
(2569, 1, 'en', 'plugins/real-estate/dashboard', 'actions.delete_property', 'You have deleted property \":name\"', '2020-11-15 21:00:32', '2020-11-15 21:00:32'),
(2570, 1, 'en', 'plugins/real-estate/dashboard', 'actions.update_setting', 'You have updated your settings', '2020-11-15 21:00:32', '2020-11-15 21:00:32'),
(2571, 1, 'en', 'plugins/real-estate/dashboard', 'actions.update_security', 'You have updated your security settings', '2020-11-15 21:00:32', '2020-11-15 21:00:32'),
(2572, 1, 'en', 'plugins/real-estate/dashboard', 'actions.your_property_updated_by_admin', 'Your property \":name\" is updated by administrator', '2020-11-15 21:00:32', '2020-11-15 21:00:32'),
(2573, 1, 'en', 'plugins/real-estate/dashboard', 'actions.changed_avatar', 'You have changed your avatar', '2020-11-15 21:00:32', '2020-11-15 21:00:32'),
(2574, 1, 'en', 'plugins/real-estate/dashboard', 'load_more', 'Load more', '2020-11-15 21:00:32', '2020-11-15 21:00:32'),
(2575, 1, 'en', 'plugins/real-estate/dashboard', 'loading_more', 'Loading...', '2020-11-15 21:00:32', '2020-11-15 21:00:32'),
(2576, 1, 'en', 'plugins/real-estate/dashboard', 'back-to-login', 'Back to login page', '2020-11-15 21:00:32', '2020-11-15 21:00:32'),
(2577, 1, 'en', 'plugins/real-estate/dashboard', 'no_transactions', 'No transactions', '2020-11-15 21:00:32', '2020-11-15 21:00:32'),
(2578, 1, 'en', 'plugins/real-estate/dashboard', 'approved_properties', 'Approved properties', '2020-11-15 21:00:32', '2020-11-15 21:00:32'),
(2579, 1, 'en', 'plugins/real-estate/dashboard', 'pending_approve_properties', 'Pending approve properties', '2020-11-15 21:00:32', '2020-11-15 21:00:32'),
(2580, 1, 'en', 'plugins/real-estate/dashboard', 'rejected_properties', 'Rejected properties', '2020-11-15 21:00:32', '2020-11-15 21:00:32'),
(2581, 1, 'en', 'plugins/real-estate/dashboard', 'your_credits', 'Your Credits', '2020-11-15 21:00:32', '2020-11-15 21:00:32'),
(2582, 1, 'en', 'plugins/real-estate/dashboard', 'credits', 'credits', '2020-11-15 21:00:32', '2020-11-15 21:00:32'),
(2583, 1, 'en', 'plugins/real-estate/dashboard', 'per_post', 'per post', '2020-11-15 21:00:32', '2020-11-15 21:00:32'),
(2584, 1, 'en', 'plugins/real-estate/dashboard', 'free', 'Free', '2020-11-15 21:00:32', '2020-11-15 21:00:32'),
(2585, 1, 'en', 'plugins/real-estate/dashboard', 'posts', 'post(s)', '2020-11-15 21:00:32', '2020-11-15 21:00:32'),
(2586, 1, 'en', 'plugins/real-estate/dashboard', 'total', 'Total', '2020-11-15 21:00:32', '2020-11-15 21:00:32'),
(2587, 1, 'en', 'plugins/real-estate/dashboard', 'purchase', 'Purchase', '2020-11-15 21:00:32', '2020-11-15 21:00:32'),
(2588, 1, 'en', 'plugins/real-estate/dashboard', 'select_facility', 'Select facility', '2020-11-15 21:00:32', '2020-11-15 21:00:32'),
(2589, 1, 'en', 'plugins/real-estate/dashboard', 'distance', 'Distance (Km)', '2020-11-15 21:00:32', '2020-11-15 21:00:32'),
(2590, 1, 'en', 'plugins/real-estate/dashboard', 'add_new', 'Add new', '2020-11-15 21:00:32', '2020-11-15 21:00:32'),
(2591, 1, 'en', 'plugins/real-estate/facility', 'name', 'Facilities', '2020-11-15 21:00:32', '2020-11-15 21:00:32'),
(2592, 1, 'en', 'plugins/real-estate/facility', 'create', 'New facility', '2020-11-15 21:00:32', '2020-11-15 21:00:32'),
(2593, 1, 'en', 'plugins/real-estate/facility', 'edit', 'Edit facility', '2020-11-15 21:00:32', '2020-11-15 21:00:32'),
(2594, 1, 'en', 'plugins/real-estate/feature', 'name', 'Features', '2020-11-15 21:00:32', '2020-11-15 21:00:32'),
(2595, 1, 'en', 'plugins/real-estate/feature', 'create', 'New feature', '2020-11-15 21:00:32', '2020-11-15 21:00:32'),
(2596, 1, 'en', 'plugins/real-estate/feature', 'edit', 'Edit feature', '2020-11-15 21:00:32', '2020-11-15 21:00:32'),
(2597, 1, 'en', 'plugins/real-estate/feature', 'messages.request.name_required', 'Name is required', '2020-11-15 21:00:32', '2020-11-15 21:00:32'),
(2598, 1, 'en', 'plugins/real-estate/feature', 'form.help_block', 'Property feature information', '2020-11-15 21:00:32', '2020-11-15 21:00:32'),
(2599, 1, 'en', 'plugins/real-estate/feature', 'form.name', 'Title', '2020-11-15 21:00:32', '2020-11-15 21:00:32'),
(2600, 1, 'en', 'plugins/real-estate/feature', 'form.icon', 'Icon', '2020-11-15 21:00:32', '2020-11-15 21:00:32'),
(2601, 1, 'en', 'plugins/real-estate/investor', 'name', 'Investors', '2020-11-15 21:00:32', '2020-11-15 21:00:32'),
(2602, 1, 'en', 'plugins/real-estate/investor', 'create', 'New investor', '2020-11-15 21:00:32', '2020-11-15 21:00:32'),
(2603, 1, 'en', 'plugins/real-estate/investor', 'edit', 'Edit investor', '2020-11-15 21:00:32', '2020-11-15 21:00:32'),
(2604, 1, 'en', 'plugins/real-estate/package', 'name', 'Packages', '2020-11-15 21:00:32', '2020-11-15 21:00:32'),
(2605, 1, 'en', 'plugins/real-estate/package', 'create', 'New package', '2020-11-15 21:00:32', '2020-11-15 21:00:32'),
(2606, 1, 'en', 'plugins/real-estate/package', 'edit', 'Edit package', '2020-11-15 21:00:32', '2020-11-15 21:00:32'),
(2607, 1, 'en', 'plugins/real-estate/package', 'price', 'Price', '2020-11-15 21:00:32', '2020-11-15 21:00:32'),
(2608, 1, 'en', 'plugins/real-estate/package', 'currency', 'Currency', '2020-11-15 21:00:32', '2020-11-15 21:00:32'),
(2609, 1, 'en', 'plugins/real-estate/package', 'percent_save', 'Percent save', '2020-11-15 21:00:32', '2020-11-15 21:00:32'),
(2610, 1, 'en', 'plugins/real-estate/package', 'number_of_listings', 'Number of listings', '2020-11-15 21:00:32', '2020-11-15 21:00:32'),
(2611, 1, 'en', 'plugins/real-estate/package', 'add_credit_success', 'Add credit successfully!', '2020-11-15 21:00:32', '2020-11-15 21:00:32'),
(2612, 1, 'en', 'plugins/real-estate/package', 'setup_payment_methods', 'Please setup payment methods (PayPal, Stripe, COD, Bank transfer)', '2020-11-15 21:00:32', '2020-11-15 21:00:32'),
(2613, 1, 'en', 'plugins/real-estate/package', 'add_credit_warning', 'Please add your credit to create your own posts here:', '2020-11-15 21:00:32', '2020-11-15 21:00:32'),
(2614, 1, 'en', 'plugins/real-estate/package', 'add_credit', 'Add credit', '2020-11-15 21:00:32', '2020-11-15 21:00:32'),
(2615, 1, 'en', 'plugins/real-estate/package', 'account_limit', 'Limit purchase by account', '2020-11-15 21:00:32', '2020-11-15 21:00:32'),
(2616, 1, 'en', 'plugins/real-estate/package', 'account_limit_placeholder', 'An account can purchase x times', '2020-11-15 21:00:32', '2020-11-15 21:00:32'),
(2617, 1, 'en', 'plugins/real-estate/package', 'subscribe_package', 'Subscribe package', '2020-11-15 21:00:32', '2020-11-15 21:00:32'),
(2618, 1, 'en', 'plugins/real-estate/project', 'name', 'Projects', '2020-11-15 21:00:32', '2020-11-15 21:00:32'),
(2619, 1, 'en', 'plugins/real-estate/project', 'create', 'New project', '2020-11-15 21:00:32', '2020-11-15 21:00:32'),
(2620, 1, 'en', 'plugins/real-estate/project', 'edit', 'Edit project', '2020-11-15 21:00:32', '2020-11-15 21:00:32'),
(2621, 1, 'en', 'plugins/real-estate/project', 'form.general_info', 'General information', '2020-11-15 21:00:32', '2020-11-15 21:00:32'),
(2622, 1, 'en', 'plugins/real-estate/project', 'form.name', 'Name', '2020-11-15 21:00:32', '2020-11-15 21:00:32'),
(2623, 1, 'en', 'plugins/real-estate/project', 'form.description', 'Description', '2020-11-15 21:00:32', '2020-11-15 21:00:32'),
(2624, 1, 'en', 'plugins/real-estate/project', 'form.basic_info', 'Basic information', '2020-11-15 21:00:32', '2020-11-15 21:00:32'),
(2625, 1, 'en', 'plugins/real-estate/project', 'form.location', 'Location', '2020-11-15 21:00:32', '2020-11-15 21:00:32'),
(2626, 1, 'en', 'plugins/real-estate/project', 'form.investor', 'Investor', '2020-11-15 21:00:32', '2020-11-15 21:00:32'),
(2627, 1, 'en', 'plugins/real-estate/project', 'form.number_block', 'Number blocks', '2020-11-15 21:00:32', '2020-11-15 21:00:32'),
(2628, 1, 'en', 'plugins/real-estate/project', 'form.number_floor', 'Number floors', '2020-11-15 21:00:32', '2020-11-15 21:00:32'),
(2629, 1, 'en', 'plugins/real-estate/project', 'form.number_flat', 'Number flats', '2020-11-15 21:00:32', '2020-11-15 21:00:32'),
(2630, 1, 'en', 'plugins/real-estate/project', 'form.date_finish', 'Finish date', '2020-11-15 21:00:32', '2020-11-15 21:00:32'),
(2631, 1, 'en', 'plugins/real-estate/project', 'form.date_sell', 'Open sell date', '2020-11-15 21:00:32', '2020-11-15 21:00:32'),
(2632, 1, 'en', 'plugins/real-estate/project', 'form.images', 'Images', '2020-11-15 21:00:32', '2020-11-15 21:00:32'),
(2633, 1, 'en', 'plugins/real-estate/project', 'form.price_from', 'Lowest price', '2020-11-15 21:00:32', '2020-11-15 21:00:32'),
(2634, 1, 'en', 'plugins/real-estate/project', 'form.price_to', 'Max price', '2020-11-15 21:00:32', '2020-11-15 21:00:32'),
(2635, 1, 'en', 'plugins/real-estate/project', 'form.currency', 'Currency', '2020-11-15 21:00:32', '2020-11-15 21:00:32'),
(2636, 1, 'en', 'plugins/real-estate/project', 'form.city', 'City', '2020-11-15 21:00:32', '2020-11-15 21:00:32'),
(2637, 1, 'en', 'plugins/real-estate/project', 'form.category', 'Category', '2020-11-15 21:00:32', '2020-11-15 21:00:32'),
(2638, 1, 'en', 'plugins/real-estate/project', 'statuses.not_available', 'Not available', '2020-11-15 21:00:32', '2020-11-15 21:00:32'),
(2639, 1, 'en', 'plugins/real-estate/project', 'statuses.pre_sale', 'Preparing selling', '2020-11-15 21:00:32', '2020-11-15 21:00:32'),
(2640, 1, 'en', 'plugins/real-estate/project', 'statuses.selling', 'Selling', '2020-11-15 21:00:32', '2020-11-15 21:00:32'),
(2641, 1, 'en', 'plugins/real-estate/project', 'statuses.sold', 'Sold', '2020-11-15 21:00:32', '2020-11-15 21:00:32'),
(2642, 1, 'en', 'plugins/real-estate/project', 'statuses.building', 'Building', '2020-11-15 21:00:32', '2020-11-15 21:00:32'),
(2643, 1, 'en', 'plugins/real-estate/property', 'name', 'Properties', '2020-11-15 21:00:32', '2020-11-15 21:00:32'),
(2644, 1, 'en', 'plugins/real-estate/property', 'create', 'New property', '2020-11-15 21:00:32', '2020-11-15 21:00:32'),
(2645, 1, 'en', 'plugins/real-estate/property', 'edit', 'Edit property', '2020-11-15 21:00:32', '2020-11-15 21:00:32'),
(2646, 1, 'en', 'plugins/real-estate/property', 'form.main_info', 'General information', '2020-11-15 21:00:32', '2020-11-15 21:00:32'),
(2647, 1, 'en', 'plugins/real-estate/property', 'form.basic_info', 'Basic information', '2020-11-15 21:00:32', '2020-11-15 21:00:32'),
(2648, 1, 'en', 'plugins/real-estate/property', 'form.name', 'Title', '2020-11-15 21:00:32', '2020-11-15 21:00:32'),
(2649, 1, 'en', 'plugins/real-estate/property', 'form.type', 'Type', '2020-11-15 21:00:32', '2020-11-15 21:00:32'),
(2650, 1, 'en', 'plugins/real-estate/property', 'form.images', 'Images', '2020-11-15 21:00:32', '2020-11-15 21:00:32'),
(2651, 1, 'en', 'plugins/real-estate/property', 'form.location', 'Property location', '2020-11-15 21:00:32', '2020-11-15 21:00:32'),
(2652, 1, 'en', 'plugins/real-estate/property', 'form.number_bedroom', 'Number bedrooms', '2020-11-15 21:00:32', '2020-11-15 21:00:32'),
(2653, 1, 'en', 'plugins/real-estate/property', 'form.number_bathroom', 'Number bathrooms', '2020-11-15 21:00:32', '2020-11-15 21:00:32'),
(2654, 1, 'en', 'plugins/real-estate/property', 'form.number_floor', 'Number floors', '2020-11-15 21:00:32', '2020-11-15 21:00:32'),
(2655, 1, 'en', 'plugins/real-estate/property', 'form.square', 'Square (m2)', '2020-11-15 21:00:32', '2020-11-15 21:00:32'),
(2656, 1, 'en', 'plugins/real-estate/property', 'form.price', 'Price', '2020-11-15 21:00:32', '2020-11-15 21:00:32'),
(2657, 1, 'en', 'plugins/real-estate/property', 'form.features', 'Features', '2020-11-15 21:00:32', '2020-11-15 21:00:32'),
(2658, 1, 'en', 'plugins/real-estate/property', 'form.project', 'Project', '2020-11-15 21:00:32', '2020-11-15 21:00:32'),
(2659, 1, 'en', 'plugins/real-estate/property', 'form.date', 'Date information', '2020-11-15 21:00:32', '2020-11-15 21:00:32'),
(2660, 1, 'en', 'plugins/real-estate/property', 'form.currency', 'Currency', '2020-11-15 21:00:32', '2020-11-15 21:00:32'),
(2661, 1, 'en', 'plugins/real-estate/property', 'form.city', 'City', '2020-11-15 21:00:32', '2020-11-15 21:00:32'),
(2662, 1, 'en', 'plugins/real-estate/property', 'form.period', 'Period', '2020-11-15 21:00:32', '2020-11-15 21:00:32'),
(2663, 1, 'en', 'plugins/real-estate/property', 'form.category', 'Category', '2020-11-15 21:00:32', '2020-11-15 21:00:32'),
(2664, 1, 'en', 'plugins/real-estate/property', 'statuses.not_available', 'Not available', '2020-11-15 21:00:32', '2020-11-15 21:00:32'),
(2665, 1, 'en', 'plugins/real-estate/property', 'statuses.pre_sale', 'Preparing selling', '2020-11-15 21:00:32', '2020-11-15 21:00:32'),
(2666, 1, 'en', 'plugins/real-estate/property', 'statuses.selling', 'Selling', '2020-11-15 21:00:32', '2020-11-15 21:00:32'),
(2667, 1, 'en', 'plugins/real-estate/property', 'statuses.sold', 'Sold', '2020-11-15 21:00:32', '2020-11-15 21:00:32'),
(2668, 1, 'en', 'plugins/real-estate/property', 'statuses.renting', 'Renting', '2020-11-15 21:00:32', '2020-11-15 21:00:32'),
(2669, 1, 'en', 'plugins/real-estate/property', 'statuses.rented', 'Rented', '2020-11-15 21:00:32', '2020-11-15 21:00:32'),
(2670, 1, 'en', 'plugins/real-estate/property', 'statuses.building', 'Building', '2020-11-15 21:00:32', '2020-11-15 21:00:32'),
(2671, 1, 'en', 'plugins/real-estate/property', 'types.sale', 'Sale', '2020-11-15 21:00:32', '2020-11-15 21:00:32'),
(2672, 1, 'en', 'plugins/real-estate/property', 'types.rent', 'Rent', '2020-11-15 21:00:32', '2020-11-15 21:00:32'),
(2673, 1, 'en', 'plugins/real-estate/property', 'periods.day', 'Day', '2020-11-15 21:00:32', '2020-11-15 21:00:32'),
(2674, 1, 'en', 'plugins/real-estate/property', 'periods.month', 'Month', '2020-11-15 21:00:32', '2020-11-15 21:00:32'),
(2675, 1, 'en', 'plugins/real-estate/property', 'periods.year', 'Year', '2020-11-15 21:00:32', '2020-11-15 21:00:32'),
(2676, 1, 'en', 'plugins/real-estate/property', 'moderation_status', 'Moderation status', '2020-11-15 21:00:32', '2020-11-15 21:00:32'),
(2677, 1, 'en', 'plugins/real-estate/property', 'moderation-statuses.pending', 'Pending', '2020-11-15 21:00:32', '2020-11-15 21:00:32'),
(2678, 1, 'en', 'plugins/real-estate/property', 'moderation-statuses.approved', 'Approved', '2020-11-15 21:00:32', '2020-11-15 21:00:32'),
(2679, 1, 'en', 'plugins/real-estate/property', 'moderation-statuses.rejected', 'Rejected', '2020-11-15 21:00:32', '2020-11-15 21:00:32'),
(2680, 1, 'en', 'plugins/real-estate/real-estate', 'name', 'Real Estate', '2020-11-15 21:00:32', '2020-11-15 21:00:32'),
(2681, 1, 'en', 'plugins/real-estate/real-estate', 'settings', 'Settings', '2020-11-15 21:00:32', '2020-11-15 21:00:32'),
(2682, 1, 'en', 'plugins/real-estate/real-estate', 'google_map', 'Google Map', '2020-11-15 21:00:32', '2020-11-15 21:00:32'),
(2683, 1, 'en', 'plugins/real-estate/real-estate', 'google_map_description', 'Settings for Google Map to search location', '2020-11-15 21:00:32', '2020-11-15 21:00:32'),
(2684, 1, 'en', 'plugins/real-estate/real-estate', 'api_key', 'API key (optional)', '2020-11-15 21:00:32', '2020-11-15 21:00:32'),
(2685, 1, 'en', 'plugins/real-estate/real-estate', 'api_key_helper', 'Insert google maps key', '2020-11-15 21:00:32', '2020-11-15 21:00:32'),
(2686, 1, 'en', 'plugins/real-estate/settings', 'title', 'Accounts', '2020-11-15 21:00:32', '2020-11-15 21:00:32'),
(2687, 1, 'en', 'plugins/real-estate/settings', 'description', 'Settings for members', '2020-11-15 21:00:32', '2020-11-15 21:00:32'),
(2688, 1, 'en', 'plugins/real-estate/settings', 'verify_account_email', 'Verify account\'s email?', '2020-11-15 21:00:32', '2020-11-15 21:00:32'),
(2689, 1, 'vi', 'plugins/real-estate/account-property', 'draft_properties', 'Draft Properties', '2020-11-15 21:00:33', '2020-11-15 21:00:33'),
(2690, 1, 'vi', 'plugins/real-estate/account-property', 'pending_properties', 'Pending Properties', '2020-11-15 21:00:33', '2020-11-15 21:00:33'),
(2691, 1, 'vi', 'plugins/real-estate/account-property', 'published_properties', 'Published Properties', '2020-11-15 21:00:33', '2020-11-15 21:00:33'),
(2692, 1, 'vi', 'plugins/real-estate/account-property', 'properties', 'Properties', '2020-11-15 21:00:33', '2020-11-15 21:00:33'),
(2693, 1, 'vi', 'plugins/real-estate/account-property', 'write_property', 'Write a property', '2020-11-15 21:00:33', '2020-11-15 21:00:33'),
(2694, 1, 'vi', 'plugins/real-estate/account', 'create', 'Thêm tài khoản', '2020-11-15 21:00:33', '2020-11-15 21:00:33'),
(2695, 1, 'vi', 'plugins/real-estate/account', 'edit', 'Sửa tài khoản', '2020-11-15 21:00:33', '2020-11-15 21:00:33'),
(2696, 1, 'vi', 'plugins/real-estate/account', 'name', 'Tài khoản', '2020-11-15 21:00:33', '2020-11-15 21:00:33'),
(2697, 1, 'vi', 'plugins/real-estate/account', 'confirmation_subject', 'Xác nhận email', '2020-11-15 21:00:33', '2020-11-15 21:00:33'),
(2698, 1, 'vi', 'plugins/real-estate/account', 'confirmation_subject_title', 'Xác nhận email của bạn', '2020-11-15 21:00:33', '2020-11-15 21:00:33'),
(2699, 1, 'vi', 'plugins/real-estate/account', 'not_confirmed', 'Email của bạn chưa được xác thực. <a href=\":resend_link\">Gửi lại liên kết xác thực.</a>', '2020-11-15 21:00:33', '2020-11-15 21:00:33'),
(2700, 1, 'vi', 'plugins/real-estate/account', 'confirmation_successful', 'Xác nhận địa chỉ email thành công', '2020-11-15 21:00:33', '2020-11-15 21:00:33'),
(2701, 1, 'vi', 'plugins/real-estate/account', 'confirmation_info', 'Vui lòng xác nhận email của bạn', '2020-11-15 21:00:33', '2020-11-15 21:00:33'),
(2702, 1, 'vi', 'plugins/real-estate/account', 'confirmation_resent', 'Chúng tôi đã gửi một email xác nhận khác. Bạn sẽ nhận được chúng trong giây lát.', '2020-11-15 21:00:33', '2020-11-15 21:00:33'),
(2703, 1, 'vi', 'plugins/real-estate/account', 'form.email', 'Email', '2020-11-15 21:00:33', '2020-11-15 21:00:33'),
(2704, 1, 'vi', 'plugins/real-estate/account', 'form.password', 'Mật khẩu', '2020-11-15 21:00:33', '2020-11-15 21:00:33'),
(2705, 1, 'vi', 'plugins/real-estate/account', 'form.password_confirmation', 'Xác nhận mật khẩu', '2020-11-15 21:00:33', '2020-11-15 21:00:33'),
(2706, 1, 'vi', 'plugins/real-estate/account', 'form.change_password', 'Đổi mật khẩu', '2020-11-15 21:00:33', '2020-11-15 21:00:33'),
(2707, 1, 'vi', 'plugins/real-estate/account', 'forgot_password', 'Quên mật khẩu', '2020-11-15 21:00:33', '2020-11-15 21:00:33'),
(2708, 1, 'vi', 'plugins/real-estate/account', 'login', 'Đăng nhập', '2020-11-15 21:00:33', '2020-11-15 21:00:33'),
(2709, 1, 'vi', 'plugins/real-estate/account', 'buy_credits', 'Mua tín dụng', '2020-11-15 21:00:33', '2020-11-15 21:00:33'),
(2710, 1, 'vi', 'plugins/real-estate/account', 'credits', 'tín dụng', '2020-11-15 21:00:33', '2020-11-15 21:00:33'),
(2711, 1, 'vi', 'plugins/real-estate/account', 'account_settings', 'Cài đặt tài khoản', '2020-11-15 21:00:33', '2020-11-15 21:00:33'),
(2712, 1, 'vi', 'plugins/real-estate/account', 'update_profile_success', 'Cập nhật thông tin tài khoản thành công!', '2020-11-15 21:00:33', '2020-11-15 21:00:33'),
(2713, 1, 'vi', 'plugins/real-estate/account', 'security', 'Bảo mật', '2020-11-15 21:00:33', '2020-11-15 21:00:33'),
(2714, 1, 'vi', 'plugins/real-estate/account', 'packages', 'Gói', '2020-11-15 21:00:33', '2020-11-15 21:00:33'),
(2715, 1, 'vi', 'plugins/real-estate/account', 'transactions', 'Giao dịch', '2020-11-15 21:00:33', '2020-11-15 21:00:33'),
(2716, 1, 'vi', 'plugins/real-estate/account', 'subscribe_package', 'Đăng ký gói \":name\"', '2020-11-15 21:00:33', '2020-11-15 21:00:33'),
(2717, 1, 'vi', 'plugins/real-estate/category', 'name', 'Categories', '2020-11-15 21:00:33', '2020-11-15 21:00:33'),
(2718, 1, 'vi', 'plugins/real-estate/category', 'create', 'New category', '2020-11-15 21:00:33', '2020-11-15 21:00:33'),
(2719, 1, 'vi', 'plugins/real-estate/category', 'edit', 'Edit category', '2020-11-15 21:00:33', '2020-11-15 21:00:33'),
(2720, 1, 'vi', 'plugins/real-estate/consult', 'name', 'Tư vấn', '2020-11-15 21:00:33', '2020-11-15 21:00:33'),
(2721, 1, 'vi', 'plugins/real-estate/consult', 'edit', 'Xem tư vấn', '2020-11-15 21:00:33', '2020-11-15 21:00:33'),
(2722, 1, 'vi', 'plugins/real-estate/consult', 'statuses.read', 'Đã đọc', '2020-11-15 21:00:33', '2020-11-15 21:00:33'),
(2723, 1, 'vi', 'plugins/real-estate/consult', 'statuses.unread', 'Chưa đọc', '2020-11-15 21:00:33', '2020-11-15 21:00:33'),
(2724, 1, 'vi', 'plugins/real-estate/consult', 'phone', 'Điện thoại', '2020-11-15 21:00:33', '2020-11-15 21:00:33');
INSERT INTO `translations` (`id`, `status`, `locale`, `group`, `key`, `value`, `created_at`, `updated_at`) VALUES
(2725, 1, 'vi', 'plugins/real-estate/consult', 'settings.email.title', 'Tư vấn', '2020-11-15 21:00:33', '2020-11-15 21:00:33'),
(2726, 1, 'vi', 'plugins/real-estate/consult', 'settings.email.description', 'Cấu hình email cho tư vấn', '2020-11-15 21:00:33', '2020-11-15 21:00:33'),
(2727, 1, 'vi', 'plugins/real-estate/consult', 'settings.email.templates.notice_title', 'Gửi thông báo tới quản trị viên', '2020-11-15 21:00:33', '2020-11-15 21:00:33'),
(2728, 1, 'vi', 'plugins/real-estate/consult', 'settings.email.templates.notice_description', 'Mẫu email gửi tới quản trị viên khi có yêu cầu tư vấn mới', '2020-11-15 21:00:33', '2020-11-15 21:00:33'),
(2729, 1, 'vi', 'plugins/real-estate/consult', 'content', 'Chi tiết', '2020-11-15 21:00:33', '2020-11-15 21:00:33'),
(2730, 1, 'vi', 'plugins/real-estate/consult', 'consult_information', 'Nội dung yêu cầu tư vấn', '2020-11-15 21:00:33', '2020-11-15 21:00:33'),
(2731, 1, 'vi', 'plugins/real-estate/consult', 'email.header', 'Email', '2020-11-15 21:00:33', '2020-11-15 21:00:33'),
(2732, 1, 'vi', 'plugins/real-estate/consult', 'email.title', 'Yêu cầu tư vấn mới', '2020-11-15 21:00:33', '2020-11-15 21:00:33'),
(2733, 1, 'vi', 'plugins/real-estate/consult', 'email.success', 'Gửi yêu cầu tư vấn thành công!', '2020-11-15 21:00:33', '2020-11-15 21:00:33'),
(2734, 1, 'vi', 'plugins/real-estate/consult', 'email.failed', 'Gửi yêu cầu tư vấn thất bại, vui lòng thử lại sau!', '2020-11-15 21:00:33', '2020-11-15 21:00:33'),
(2735, 1, 'vi', 'plugins/real-estate/consult', 'form.name.required', 'Tên là bắt buộc', '2020-11-15 21:00:33', '2020-11-15 21:00:33'),
(2736, 1, 'vi', 'plugins/real-estate/consult', 'form.email.required', 'Email là bắt buộc', '2020-11-15 21:00:33', '2020-11-15 21:00:33'),
(2737, 1, 'vi', 'plugins/real-estate/consult', 'form.email.email', 'Địa chỉ email không hợp lệ', '2020-11-15 21:00:33', '2020-11-15 21:00:33'),
(2738, 1, 'vi', 'plugins/real-estate/consult', 'form.content.required', 'Nội dung là bắt buộc', '2020-11-15 21:00:33', '2020-11-15 21:00:33'),
(2739, 1, 'vi', 'plugins/real-estate/consult', 'form.g-recaptcha-response.required', 'Hãy xác minh không phải là robot trước khi gửi tin nhắn.', '2020-11-15 21:00:33', '2020-11-15 21:00:33'),
(2740, 1, 'vi', 'plugins/real-estate/consult', 'form.g-recaptcha-response.captcha', 'Bạn chưa xác minh không phải là robot thành công.', '2020-11-15 21:00:33', '2020-11-15 21:00:33'),
(2741, 1, 'vi', 'plugins/real-estate/consult', 'confirm_not_robot', 'Xác nhận không phải người máy', '2020-11-15 21:00:33', '2020-11-15 21:00:33'),
(2742, 1, 'vi', 'plugins/real-estate/consult', 'consult_sent_from', 'Yêu cầu tư vấn này được gửi từ', '2020-11-15 21:00:33', '2020-11-15 21:00:33'),
(2743, 1, 'vi', 'plugins/real-estate/consult', 'time', 'Thời gian', '2020-11-15 21:00:33', '2020-11-15 21:00:33'),
(2744, 1, 'vi', 'plugins/real-estate/consult', 'consult_id', 'Mã yêu cầu tư vấn', '2020-11-15 21:00:33', '2020-11-15 21:00:33'),
(2745, 1, 'vi', 'plugins/real-estate/consult', 'form_name', 'Tên', '2020-11-15 21:00:33', '2020-11-15 21:00:33'),
(2746, 1, 'vi', 'plugins/real-estate/consult', 'form_email', 'Email', '2020-11-15 21:00:33', '2020-11-15 21:00:33'),
(2747, 1, 'vi', 'plugins/real-estate/consult', 'form_phone', 'Điện thoại', '2020-11-15 21:00:33', '2020-11-15 21:00:33'),
(2748, 1, 'vi', 'plugins/real-estate/consult', 'mark_as_read', 'Đánh dấu đã đọc', '2020-11-15 21:00:33', '2020-11-15 21:00:33'),
(2749, 1, 'vi', 'plugins/real-estate/consult', 'mark_as_unread', 'Đánh dấu chưa đọc', '2020-11-15 21:00:33', '2020-11-15 21:00:33'),
(2750, 1, 'vi', 'plugins/real-estate/consult', 'new_consult_notice', 'Bạn có <span class=\"bold\">:count</span> yêu cầu tư vấn mới', '2020-11-15 21:00:33', '2020-11-15 21:00:33'),
(2751, 1, 'vi', 'plugins/real-estate/consult', 'view_all', 'Xem tất cả', '2020-11-15 21:00:33', '2020-11-15 21:00:33'),
(2752, 1, 'vi', 'plugins/real-estate/consult', 'project', 'Dự án', '2020-11-15 21:00:33', '2020-11-15 21:00:33'),
(2753, 1, 'vi', 'plugins/real-estate/consult', 'property', 'Nhà ở - Căn hộ', '2020-11-15 21:00:33', '2020-11-15 21:00:33'),
(2754, 1, 'vi', 'plugins/real-estate/currency', 'currencies', 'Tiền tệ', '2020-11-15 21:00:33', '2020-11-15 21:00:33'),
(2755, 1, 'vi', 'plugins/real-estate/currency', 'setting_description', 'Các loại tiền tệ được sử dụng trên website.', '2020-11-15 21:00:33', '2020-11-15 21:00:33'),
(2756, 1, 'vi', 'plugins/real-estate/currency', 'name', 'Tên', '2020-11-15 21:00:33', '2020-11-15 21:00:33'),
(2757, 1, 'vi', 'plugins/real-estate/currency', 'symbol', 'Ký hiệu', '2020-11-15 21:00:33', '2020-11-15 21:00:33'),
(2758, 1, 'vi', 'plugins/real-estate/currency', 'number_of_decimals', 'Số thập phân', '2020-11-15 21:00:33', '2020-11-15 21:00:33'),
(2759, 1, 'vi', 'plugins/real-estate/currency', 'exchange_rate', 'Tỷ giá', '2020-11-15 21:00:33', '2020-11-15 21:00:33'),
(2760, 1, 'vi', 'plugins/real-estate/currency', 'is_prefix_symbol', 'Vị trí ký hiệu', '2020-11-15 21:00:33', '2020-11-15 21:00:33'),
(2761, 1, 'vi', 'plugins/real-estate/currency', 'is_default', 'Mặc định?', '2020-11-15 21:00:33', '2020-11-15 21:00:33'),
(2762, 1, 'vi', 'plugins/real-estate/currency', 'remove', 'Xoá', '2020-11-15 21:00:33', '2020-11-15 21:00:33'),
(2763, 1, 'vi', 'plugins/real-estate/currency', 'new_currency', 'Thêm tiền tệ mới', '2020-11-15 21:00:33', '2020-11-15 21:00:33'),
(2764, 1, 'vi', 'plugins/real-estate/currency', 'save_settings', 'Lưu cài đặt', '2020-11-15 21:00:33', '2020-11-15 21:00:33'),
(2765, 1, 'vi', 'plugins/real-estate/currency', 'before_number', 'Trước số', '2020-11-15 21:00:33', '2020-11-15 21:00:33'),
(2766, 1, 'vi', 'plugins/real-estate/currency', 'after_number', 'Sau số', '2020-11-15 21:00:33', '2020-11-15 21:00:33'),
(2767, 1, 'vi', 'plugins/real-estate/dashboard', 'joined_on', 'Tham gia từ :date', '2020-11-15 21:00:33', '2020-11-15 21:00:33'),
(2768, 1, 'vi', 'plugins/real-estate/dashboard', 'dob', 'Ngày sinh :date', '2020-11-15 21:00:33', '2020-11-15 21:00:33'),
(2769, 1, 'vi', 'plugins/real-estate/dashboard', 'email', 'Email', '2020-11-15 21:00:33', '2020-11-15 21:00:33'),
(2770, 1, 'vi', 'plugins/real-estate/dashboard', 'email_or_username', 'Email/Tên đăng nhập', '2020-11-15 21:00:33', '2020-11-15 21:00:33'),
(2771, 1, 'vi', 'plugins/real-estate/dashboard', 'password', 'Mật khẩu', '2020-11-15 21:00:33', '2020-11-15 21:00:33'),
(2772, 1, 'vi', 'plugins/real-estate/dashboard', 'password-confirmation', 'Xác nhận mật khẩu', '2020-11-15 21:00:33', '2020-11-15 21:00:33'),
(2773, 1, 'vi', 'plugins/real-estate/dashboard', 'remember-me', 'Ghi nhớ tài khoản', '2020-11-15 21:00:33', '2020-11-15 21:00:33'),
(2774, 1, 'vi', 'plugins/real-estate/dashboard', 'login-title', 'Đăng nhập', '2020-11-15 21:00:33', '2020-11-15 21:00:33'),
(2775, 1, 'vi', 'plugins/real-estate/dashboard', 'login-cta', 'Đăng nhập', '2020-11-15 21:00:33', '2020-11-15 21:00:33'),
(2776, 1, 'vi', 'plugins/real-estate/dashboard', 'register-title', 'Đăng ký', '2020-11-15 21:00:33', '2020-11-15 21:00:33'),
(2777, 1, 'vi', 'plugins/real-estate/dashboard', 'register-cta', 'Đăng ký', '2020-11-15 21:00:33', '2020-11-15 21:00:33'),
(2778, 1, 'vi', 'plugins/real-estate/dashboard', 'forgot-password-cta', 'Quên mật khẩu?', '2020-11-15 21:00:33', '2020-11-15 21:00:33'),
(2779, 1, 'vi', 'plugins/real-estate/dashboard', 'name', 'Tên', '2020-11-15 21:00:33', '2020-11-15 21:00:33'),
(2780, 1, 'vi', 'plugins/real-estate/dashboard', 'reset-password-title', 'Khôi phục mật khẩu', '2020-11-15 21:00:33', '2020-11-15 21:00:33'),
(2781, 1, 'vi', 'plugins/real-estate/dashboard', 'reset-password-cta', 'Khôi phục mật khẩu', '2020-11-15 21:00:33', '2020-11-15 21:00:33'),
(2782, 1, 'vi', 'plugins/real-estate/dashboard', 'cancel-link', 'Hủy bỏ', '2020-11-15 21:00:33', '2020-11-15 21:00:33'),
(2783, 1, 'vi', 'plugins/real-estate/dashboard', 'logout-cta', 'Đăng xuất', '2020-11-15 21:00:33', '2020-11-15 21:00:33'),
(2784, 1, 'vi', 'plugins/real-estate/dashboard', 'header_profile_link', 'Tài khoản', '2020-11-15 21:00:33', '2020-11-15 21:00:33'),
(2785, 1, 'vi', 'plugins/real-estate/dashboard', 'header_settings_link', 'Cài đặt', '2020-11-15 21:00:33', '2020-11-15 21:00:33'),
(2786, 1, 'vi', 'plugins/real-estate/dashboard', 'header_logout_link', 'Đăng xuất', '2020-11-15 21:00:33', '2020-11-15 21:00:33'),
(2787, 1, 'vi', 'plugins/real-estate/dashboard', 'unknown_state', 'Không xác nhận được', '2020-11-15 21:00:33', '2020-11-15 21:00:33'),
(2788, 1, 'vi', 'plugins/real-estate/dashboard', 'close', 'Đóng', '2020-11-15 21:00:33', '2020-11-15 21:00:33'),
(2789, 1, 'vi', 'plugins/real-estate/dashboard', 'save', 'Lưu', '2020-11-15 21:00:33', '2020-11-15 21:00:33'),
(2790, 1, 'vi', 'plugins/real-estate/dashboard', 'loading', 'Đang tải...', '2020-11-15 21:00:33', '2020-11-15 21:00:33'),
(2791, 1, 'vi', 'plugins/real-estate/dashboard', 'new_image', 'Ảnh mới', '2020-11-15 21:00:33', '2020-11-15 21:00:33'),
(2792, 1, 'vi', 'plugins/real-estate/dashboard', 'change_profile_image', 'Đổi ảnh đại diện', '2020-11-15 21:00:33', '2020-11-15 21:00:33'),
(2793, 1, 'vi', 'plugins/real-estate/dashboard', 'save_cropped_image_failed', 'Lưu hình ảnh không thành công!', '2020-11-15 21:00:33', '2020-11-15 21:00:33'),
(2794, 1, 'vi', 'plugins/real-estate/dashboard', 'failed_to_crop_image', 'Có lỗi trong quá trình xử lý ảnh', '2020-11-15 21:00:33', '2020-11-15 21:00:33'),
(2795, 1, 'vi', 'plugins/real-estate/dashboard', 'failed_to_load_data', 'Lỗi tải dữ liệu', '2020-11-15 21:00:33', '2020-11-15 21:00:33'),
(2796, 1, 'vi', 'plugins/real-estate/dashboard', 'read_image_failed', 'Đọc hình ảnh thất bại', '2020-11-15 21:00:33', '2020-11-15 21:00:33'),
(2797, 1, 'vi', 'plugins/real-estate/dashboard', 'update_avatar_success', 'Cập nhật ảnh đại diện thành công!', '2020-11-15 21:00:33', '2020-11-15 21:00:33'),
(2798, 1, 'vi', 'plugins/real-estate/dashboard', 'change_avatar_description', 'Click lên ảnh để chỉnh sửa ảnh đại diện', '2020-11-15 21:00:33', '2020-11-15 21:00:33'),
(2799, 1, 'vi', 'plugins/real-estate/dashboard', 'notices.error', 'Lỗi!', '2020-11-15 21:00:33', '2020-11-15 21:00:33'),
(2800, 1, 'vi', 'plugins/real-estate/dashboard', 'notices.success', 'Thành công!', '2020-11-15 21:00:33', '2020-11-15 21:00:33'),
(2801, 1, 'vi', 'plugins/real-estate/dashboard', 'sidebar_title', 'Cài đặt cá nhân', '2020-11-15 21:00:33', '2020-11-15 21:00:33'),
(2802, 1, 'vi', 'plugins/real-estate/dashboard', 'sidebar_information', 'Thông tin tài khoản', '2020-11-15 21:00:33', '2020-11-15 21:00:33'),
(2803, 1, 'vi', 'plugins/real-estate/dashboard', 'sidebar_security', 'Bảo mật', '2020-11-15 21:00:33', '2020-11-15 21:00:33'),
(2804, 1, 'vi', 'plugins/real-estate/dashboard', 'sidebar_packages', 'Gói', '2020-11-15 21:00:33', '2020-11-15 21:00:33'),
(2805, 1, 'vi', 'plugins/real-estate/dashboard', 'sidebar_transactions', 'Giao dịch', '2020-11-15 21:00:33', '2020-11-15 21:00:33'),
(2806, 1, 'vi', 'plugins/real-estate/dashboard', 'account_field_title', 'Thông tin tài khoản', '2020-11-15 21:00:33', '2020-11-15 21:00:33'),
(2807, 1, 'vi', 'plugins/real-estate/dashboard', 'profile-picture', 'Ảnh đại diện', '2020-11-15 21:00:33', '2020-11-15 21:00:33'),
(2808, 1, 'vi', 'plugins/real-estate/dashboard', 'uploading', 'Đang tải lên...', '2020-11-15 21:00:33', '2020-11-15 21:00:33'),
(2809, 1, 'vi', 'plugins/real-estate/dashboard', 'phone', 'Điện thoại', '2020-11-15 21:00:33', '2020-11-15 21:00:33'),
(2810, 1, 'vi', 'plugins/real-estate/dashboard', 'first_name', 'Họ', '2020-11-15 21:00:33', '2020-11-15 21:00:33'),
(2811, 1, 'vi', 'plugins/real-estate/dashboard', 'last_name', 'Tên', '2020-11-15 21:00:33', '2020-11-15 21:00:33'),
(2812, 1, 'vi', 'plugins/real-estate/dashboard', 'description', 'Mô tả ngắn', '2020-11-15 21:00:33', '2020-11-15 21:00:33'),
(2813, 1, 'vi', 'plugins/real-estate/dashboard', 'description_placeholder', 'Mô tả đôi chút về bạn...', '2020-11-15 21:00:33', '2020-11-15 21:00:33'),
(2814, 1, 'vi', 'plugins/real-estate/dashboard', 'verified', 'Đã xác thực', '2020-11-15 21:00:33', '2020-11-15 21:00:33'),
(2815, 1, 'vi', 'plugins/real-estate/dashboard', 'verify_require_desc', 'Vui lòng xác nhận email theo liên kết chúng tôi đã gửi cho bạn.', '2020-11-15 21:00:33', '2020-11-15 21:00:33'),
(2816, 1, 'vi', 'plugins/real-estate/dashboard', 'birthday', 'Ngày sinh', '2020-11-15 21:00:33', '2020-11-15 21:00:33'),
(2817, 1, 'vi', 'plugins/real-estate/dashboard', 'year_lc', 'năm', '2020-11-15 21:00:33', '2020-11-15 21:00:33'),
(2818, 1, 'vi', 'plugins/real-estate/dashboard', 'month_lc', 'tháng', '2020-11-15 21:00:33', '2020-11-15 21:00:33'),
(2819, 1, 'vi', 'plugins/real-estate/dashboard', 'day_lc', 'ngày', '2020-11-15 21:00:33', '2020-11-15 21:00:33'),
(2820, 1, 'vi', 'plugins/real-estate/dashboard', 'gender', 'Giới tính', '2020-11-15 21:00:33', '2020-11-15 21:00:33'),
(2821, 1, 'vi', 'plugins/real-estate/dashboard', 'gender_male', 'Nam', '2020-11-15 21:00:33', '2020-11-15 21:00:33'),
(2822, 1, 'vi', 'plugins/real-estate/dashboard', 'gender_female', 'Nữ', '2020-11-15 21:00:33', '2020-11-15 21:00:33'),
(2823, 1, 'vi', 'plugins/real-estate/dashboard', 'gender_other', 'Khác', '2020-11-15 21:00:33', '2020-11-15 21:00:33'),
(2824, 1, 'vi', 'plugins/real-estate/dashboard', 'security_title', 'Bảo mật', '2020-11-15 21:00:33', '2020-11-15 21:00:33'),
(2825, 1, 'vi', 'plugins/real-estate/dashboard', 'packages_title', 'Gói', '2020-11-15 21:00:33', '2020-11-15 21:00:33'),
(2826, 1, 'vi', 'plugins/real-estate/dashboard', 'transactions_title', 'Giao dịch', '2020-11-15 21:00:33', '2020-11-15 21:00:33'),
(2827, 1, 'vi', 'plugins/real-estate/dashboard', 'current_password', 'Mật khẩu hiện tại', '2020-11-15 21:00:33', '2020-11-15 21:00:33'),
(2828, 1, 'vi', 'plugins/real-estate/dashboard', 'password_new', 'Mật khẩu mới', '2020-11-15 21:00:33', '2020-11-15 21:00:33'),
(2829, 1, 'vi', 'plugins/real-estate/dashboard', 'password_new_confirmation', 'Xác nhận mật khẩu', '2020-11-15 21:00:33', '2020-11-15 21:00:33'),
(2830, 1, 'vi', 'plugins/real-estate/dashboard', 'password_update_btn', 'Cập nhật mật khẩu', '2020-11-15 21:00:33', '2020-11-15 21:00:33'),
(2831, 1, 'vi', 'plugins/real-estate/dashboard', 'activity_logs', 'Lịch sử hoạt động', '2020-11-15 21:00:33', '2020-11-15 21:00:33'),
(2832, 1, 'vi', 'plugins/real-estate/dashboard', 'oops', 'Oops!', '2020-11-15 21:00:33', '2020-11-15 21:00:33'),
(2833, 1, 'vi', 'plugins/real-estate/dashboard', 'no_activity_logs', 'Chưa có hoạt động nào cả', '2020-11-15 21:00:33', '2020-11-15 21:00:33'),
(2834, 1, 'vi', 'plugins/real-estate/dashboard', 'actions.create_property', 'Tạo thành công \":name\"', '2020-11-15 21:00:33', '2020-11-15 21:00:33'),
(2835, 1, 'vi', 'plugins/real-estate/dashboard', 'actions.update_property', 'Cập nhật thành công \":name\"', '2020-11-15 21:00:33', '2020-11-15 21:00:33'),
(2836, 1, 'vi', 'plugins/real-estate/dashboard', 'actions.delete_property', 'Xóa thành công \":name\"', '2020-11-15 21:00:33', '2020-11-15 21:00:33'),
(2837, 1, 'vi', 'plugins/real-estate/dashboard', 'actions.update_setting', 'Cập nhật cài đặt thành công', '2020-11-15 21:00:33', '2020-11-15 21:00:33'),
(2838, 1, 'vi', 'plugins/real-estate/dashboard', 'actions.update_security', 'Cập nhật cài đặt thành công', '2020-11-15 21:00:33', '2020-11-15 21:00:33'),
(2839, 1, 'vi', 'plugins/real-estate/dashboard', 'actions.your_property_updated_by_admin', 'Tin \":name\" đã được cập nhật bởi quản trị viên', '2020-11-15 21:00:33', '2020-11-15 21:00:33'),
(2840, 1, 'vi', 'plugins/real-estate/dashboard', 'actions.changed_avatar', 'Đổi ảnh đại diện thành công', '2020-11-15 21:00:33', '2020-11-15 21:00:33'),
(2841, 1, 'vi', 'plugins/real-estate/dashboard', 'load_more', 'Tải thêm', '2020-11-15 21:00:33', '2020-11-15 21:00:33'),
(2842, 1, 'vi', 'plugins/real-estate/dashboard', 'loading_more', 'Đang tải...', '2020-11-15 21:00:33', '2020-11-15 21:00:33'),
(2843, 1, 'vi', 'plugins/real-estate/dashboard', 'back-to-login', 'Trở lại trang đăng nhập', '2020-11-15 21:00:33', '2020-11-15 21:00:33'),
(2844, 1, 'vi', 'plugins/real-estate/dashboard', 'no_transactions', 'Chưa có giao dịch', '2020-11-15 21:00:33', '2020-11-15 21:00:33'),
(2845, 1, 'vi', 'plugins/real-estate/dashboard', 'approved_properties', 'Tin đã được duyệt', '2020-11-15 21:00:33', '2020-11-15 21:00:33'),
(2846, 1, 'vi', 'plugins/real-estate/dashboard', 'pending_approve_properties', 'Các tin đang chờ xét duyệt', '2020-11-15 21:00:33', '2020-11-15 21:00:33'),
(2847, 1, 'vi', 'plugins/real-estate/dashboard', 'rejected_properties', 'Các tin đã bị từ chối', '2020-11-15 21:00:33', '2020-11-15 21:00:33'),
(2848, 1, 'vi', 'plugins/real-estate/dashboard', 'your_credits', 'Tín dụng của bạn', '2020-11-15 21:00:33', '2020-11-15 21:00:33'),
(2849, 1, 'vi', 'plugins/real-estate/dashboard', 'add_new', 'Thêm mới', '2020-11-15 21:00:33', '2020-11-15 21:00:33'),
(2850, 1, 'vi', 'plugins/real-estate/dashboard', 'credits', 'tín dụng', '2020-11-15 21:00:33', '2020-11-15 21:00:33'),
(2851, 1, 'vi', 'plugins/real-estate/dashboard', 'distance', 'Khoảng cách(km)', '2020-11-15 21:00:33', '2020-11-15 21:00:33'),
(2852, 1, 'vi', 'plugins/real-estate/dashboard', 'free', 'Miễn phí', '2020-11-15 21:00:33', '2020-11-15 21:00:33'),
(2853, 1, 'vi', 'plugins/real-estate/dashboard', 'per_post', 'trên mỗi tin', '2020-11-15 21:00:33', '2020-11-15 21:00:33'),
(2854, 1, 'vi', 'plugins/real-estate/dashboard', 'posts', 'tin', '2020-11-15 21:00:33', '2020-11-15 21:00:33'),
(2855, 1, 'vi', 'plugins/real-estate/dashboard', 'purchase', 'Mua', '2020-11-15 21:00:33', '2020-11-15 21:00:33'),
(2856, 1, 'vi', 'plugins/real-estate/dashboard', 'select_facility', 'Lựa chọn tiện ích', '2020-11-15 21:00:33', '2020-11-15 21:00:33'),
(2857, 1, 'vi', 'plugins/real-estate/dashboard', 'total', 'Tổng cộng', '2020-11-15 21:00:33', '2020-11-15 21:00:33'),
(2858, 1, 'vi', 'plugins/real-estate/facility', 'name', 'Facilities', '2020-11-15 21:00:33', '2020-11-15 21:00:33'),
(2859, 1, 'vi', 'plugins/real-estate/facility', 'create', 'New facility', '2020-11-15 21:00:33', '2020-11-15 21:00:33'),
(2860, 1, 'vi', 'plugins/real-estate/facility', 'edit', 'Edit facility', '2020-11-15 21:00:33', '2020-11-15 21:00:33'),
(2861, 1, 'vi', 'plugins/real-estate/feature', 'name', 'Tiện ích', '2020-11-15 21:00:33', '2020-11-15 21:00:33'),
(2862, 1, 'vi', 'plugins/real-estate/feature', 'create', 'Thêm tiện ích', '2020-11-15 21:00:33', '2020-11-15 21:00:33'),
(2863, 1, 'vi', 'plugins/real-estate/feature', 'edit', 'Sửa tiện ích', '2020-11-15 21:00:33', '2020-11-15 21:00:33'),
(2864, 1, 'vi', 'plugins/real-estate/feature', 'messages.request.name_required', 'Tên là thông tin bắt buộc', '2020-11-15 21:00:33', '2020-11-15 21:00:33'),
(2865, 1, 'vi', 'plugins/real-estate/feature', 'form.help_block', 'Thông tin về các tiện ích', '2020-11-15 21:00:33', '2020-11-15 21:00:33'),
(2866, 1, 'vi', 'plugins/real-estate/feature', 'form.name', 'Tiêu đề', '2020-11-15 21:00:33', '2020-11-15 21:00:33'),
(2867, 1, 'vi', 'plugins/real-estate/investor', 'name', 'Nhà đầu tư', '2020-11-15 21:00:33', '2020-11-15 21:00:33'),
(2868, 1, 'vi', 'plugins/real-estate/investor', 'create', 'Thêm nhà đầu tư', '2020-11-15 21:00:33', '2020-11-15 21:00:33'),
(2869, 1, 'vi', 'plugins/real-estate/investor', 'edit', 'Sửa nhà đầu tư', '2020-11-15 21:00:33', '2020-11-15 21:00:33'),
(2870, 1, 'vi', 'plugins/real-estate/package', 'name', 'Gói', '2020-11-15 21:00:33', '2020-11-15 21:00:33'),
(2871, 1, 'vi', 'plugins/real-estate/package', 'create', 'Thêm gói', '2020-11-15 21:00:33', '2020-11-15 21:00:33'),
(2872, 1, 'vi', 'plugins/real-estate/package', 'edit', 'Sửa gói', '2020-11-15 21:00:33', '2020-11-15 21:00:33'),
(2873, 1, 'vi', 'plugins/real-estate/package', 'price', 'Giá', '2020-11-15 21:00:33', '2020-11-15 21:00:33'),
(2874, 1, 'vi', 'plugins/real-estate/package', 'currency', 'Tiền tệ', '2020-11-15 21:00:33', '2020-11-15 21:00:33'),
(2875, 1, 'vi', 'plugins/real-estate/package', 'percent_save', 'Phần trăm tiết kiệm', '2020-11-15 21:00:33', '2020-11-15 21:00:33'),
(2876, 1, 'vi', 'plugins/real-estate/package', 'number_of_listings', 'Số tin đăng', '2020-11-15 21:00:33', '2020-11-15 21:00:33'),
(2877, 1, 'vi', 'plugins/real-estate/package', 'add_credit_success', 'Thêm tín dụng thành công!', '2020-11-15 21:00:33', '2020-11-15 21:00:33'),
(2878, 1, 'vi', 'plugins/real-estate/package', 'setup_payment_methods', 'Vui lòng thiết lập phương thức thanh toán (PayPal, Stripe, COD, Bank transfer)', '2020-11-15 21:00:33', '2020-11-15 21:00:33'),
(2879, 1, 'vi', 'plugins/real-estate/package', 'add_credit_warning', 'Vui lòng thêm tín dụng để đăng tin của bạn tại đây', '2020-11-15 21:00:33', '2020-11-15 21:00:33'),
(2880, 1, 'vi', 'plugins/real-estate/package', 'add_credit', 'Thêm tín dụng', '2020-11-15 21:00:33', '2020-11-15 21:00:33'),
(2881, 1, 'vi', 'plugins/real-estate/package', 'account_limit', 'Giới hạn số gói có thể mua theo tài khoản', '2020-11-15 21:00:33', '2020-11-15 21:00:33'),
(2882, 1, 'vi', 'plugins/real-estate/package', 'account_limit_placeholder', 'Mỗi tài khoản có thể mua x lần', '2020-11-15 21:00:33', '2020-11-15 21:00:33'),
(2883, 1, 'vi', 'plugins/real-estate/package', 'subscribe_package', 'Đăng ký tin', '2020-11-15 21:00:33', '2020-11-15 21:00:33'),
(2884, 1, 'vi', 'plugins/real-estate/project', 'name', 'Dự án', '2020-11-15 21:00:33', '2020-11-15 21:00:33'),
(2885, 1, 'vi', 'plugins/real-estate/project', 'create', 'Thêm dự án', '2020-11-15 21:00:33', '2020-11-15 21:00:33'),
(2886, 1, 'vi', 'plugins/real-estate/project', 'edit', 'Sửa', '2020-11-15 21:00:33', '2020-11-15 21:00:33'),
(2887, 1, 'vi', 'plugins/real-estate/project', 'form.general_info', 'Thông tin chung', '2020-11-15 21:00:33', '2020-11-15 21:00:33'),
(2888, 1, 'vi', 'plugins/real-estate/project', 'form.name', 'Tên dự án', '2020-11-15 21:00:33', '2020-11-15 21:00:33'),
(2889, 1, 'vi', 'plugins/real-estate/project', 'form.description', 'Mô tả', '2020-11-15 21:00:33', '2020-11-15 21:00:33'),
(2890, 1, 'vi', 'plugins/real-estate/project', 'form.basic_info', 'Thông tin cơ bản', '2020-11-15 21:00:33', '2020-11-15 21:00:33'),
(2891, 1, 'vi', 'plugins/real-estate/project', 'form.location', 'Địa chỉ', '2020-11-15 21:00:33', '2020-11-15 21:00:33'),
(2892, 1, 'vi', 'plugins/real-estate/project', 'form.investor', 'Chủ đầu tư', '2020-11-15 21:00:33', '2020-11-15 21:00:33'),
(2893, 1, 'vi', 'plugins/real-estate/project', 'form.number_block', 'Số block', '2020-11-15 21:00:33', '2020-11-15 21:00:33'),
(2894, 1, 'vi', 'plugins/real-estate/project', 'form.number_floor', 'Số tầng', '2020-11-15 21:00:33', '2020-11-15 21:00:33'),
(2895, 1, 'vi', 'plugins/real-estate/project', 'form.number_flat', 'Số căn hộ', '2020-11-15 21:00:33', '2020-11-15 21:00:33'),
(2896, 1, 'vi', 'plugins/real-estate/project', 'form.date_finish', 'Ngày hoàn thành', '2020-11-15 21:00:33', '2020-11-15 21:00:33'),
(2897, 1, 'vi', 'plugins/real-estate/project', 'form.date_sell', 'Ngày mở bán', '2020-11-15 21:00:34', '2020-11-15 21:00:34'),
(2898, 1, 'vi', 'plugins/real-estate/project', 'form.images', 'Hình ảnh', '2020-11-15 21:00:34', '2020-11-15 21:00:34'),
(2899, 1, 'vi', 'plugins/real-estate/project', 'form.price_from', 'Giá thấp nhất', '2020-11-15 21:00:34', '2020-11-15 21:00:34'),
(2900, 1, 'vi', 'plugins/real-estate/project', 'form.price_to', 'Giá cao nhất', '2020-11-15 21:00:34', '2020-11-15 21:00:34'),
(2901, 1, 'vi', 'plugins/real-estate/project', 'form.currency', 'Loại tiền', '2020-11-15 21:00:34', '2020-11-15 21:00:34'),
(2902, 1, 'vi', 'plugins/real-estate/project', 'form.city', 'Thành phố', '2020-11-15 21:00:34', '2020-11-15 21:00:34'),
(2903, 1, 'vi', 'plugins/real-estate/project', 'form.category', 'Loại dự án', '2020-11-15 21:00:34', '2020-11-15 21:00:34'),
(2904, 1, 'vi', 'plugins/real-estate/project', 'statuses.not_available', 'Không khả dụng', '2020-11-15 21:00:34', '2020-11-15 21:00:34'),
(2905, 1, 'vi', 'plugins/real-estate/project', 'statuses.pre_sale', 'Chuẩn bị mở bán', '2020-11-15 21:00:34', '2020-11-15 21:00:34'),
(2906, 1, 'vi', 'plugins/real-estate/project', 'statuses.selling', 'Đang bán', '2020-11-15 21:00:34', '2020-11-15 21:00:34'),
(2907, 1, 'vi', 'plugins/real-estate/project', 'statuses.sold', 'Đã bán', '2020-11-15 21:00:34', '2020-11-15 21:00:34'),
(2908, 1, 'vi', 'plugins/real-estate/project', 'statuses.building', 'Đang xây dựng', '2020-11-15 21:00:34', '2020-11-15 21:00:34'),
(2909, 1, 'vi', 'plugins/real-estate/property', 'name', 'Nhà - Căn hộ', '2020-11-15 21:00:34', '2020-11-15 21:00:34'),
(2910, 1, 'vi', 'plugins/real-estate/property', 'create', 'Thêm mới', '2020-11-15 21:00:34', '2020-11-15 21:00:34'),
(2911, 1, 'vi', 'plugins/real-estate/property', 'edit', 'Sửa', '2020-11-15 21:00:34', '2020-11-15 21:00:34'),
(2912, 1, 'vi', 'plugins/real-estate/property', 'form.main_info', 'Thông tin', '2020-11-15 21:00:34', '2020-11-15 21:00:34'),
(2913, 1, 'vi', 'plugins/real-estate/property', 'form.basic_info', 'Thông tin cơ bản', '2020-11-15 21:00:34', '2020-11-15 21:00:34'),
(2914, 1, 'vi', 'plugins/real-estate/property', 'form.description', 'Mô tả', '2020-11-15 21:00:34', '2020-11-15 21:00:34'),
(2915, 1, 'vi', 'plugins/real-estate/property', 'form.name', 'Tiêu đề', '2020-11-15 21:00:34', '2020-11-15 21:00:34'),
(2916, 1, 'vi', 'plugins/real-estate/property', 'form.type', 'Loại', '2020-11-15 21:00:34', '2020-11-15 21:00:34'),
(2917, 1, 'vi', 'plugins/real-estate/property', 'form.images', 'Hình ảnh', '2020-11-15 21:00:34', '2020-11-15 21:00:34'),
(2918, 1, 'vi', 'plugins/real-estate/property', 'form.button_add_image', 'Thêm ảnh', '2020-11-15 21:00:34', '2020-11-15 21:00:34'),
(2919, 1, 'vi', 'plugins/real-estate/property', 'form.location', 'Địa chỉ', '2020-11-15 21:00:34', '2020-11-15 21:00:34'),
(2920, 1, 'vi', 'plugins/real-estate/property', 'form.number_bedroom', 'Số phòng ngủ', '2020-11-15 21:00:34', '2020-11-15 21:00:34'),
(2921, 1, 'vi', 'plugins/real-estate/property', 'form.number_bathroom', 'Số phòng tắm', '2020-11-15 21:00:34', '2020-11-15 21:00:34'),
(2922, 1, 'vi', 'plugins/real-estate/property', 'form.number_floor', 'Số tầng', '2020-11-15 21:00:34', '2020-11-15 21:00:34'),
(2923, 1, 'vi', 'plugins/real-estate/property', 'form.square', 'Diện tích (m2)', '2020-11-15 21:00:34', '2020-11-15 21:00:34'),
(2924, 1, 'vi', 'plugins/real-estate/property', 'form.price', 'Giá', '2020-11-15 21:00:34', '2020-11-15 21:00:34'),
(2925, 1, 'vi', 'plugins/real-estate/property', 'form.features', 'Tiện ích', '2020-11-15 21:00:34', '2020-11-15 21:00:34'),
(2926, 1, 'vi', 'plugins/real-estate/property', 'form.project', 'Dự án', '2020-11-15 21:00:34', '2020-11-15 21:00:34'),
(2927, 1, 'vi', 'plugins/real-estate/property', 'form.date', 'Thông tin thời gian', '2020-11-15 21:00:34', '2020-11-15 21:00:34'),
(2928, 1, 'vi', 'plugins/real-estate/property', 'form.currency', 'Loại tiền', '2020-11-15 21:00:34', '2020-11-15 21:00:34'),
(2929, 1, 'vi', 'plugins/real-estate/property', 'form.city', 'Thành phố', '2020-11-15 21:00:34', '2020-11-15 21:00:34'),
(2930, 1, 'vi', 'plugins/real-estate/property', 'form.period', 'Chu kỳ', '2020-11-15 21:00:34', '2020-11-15 21:00:34'),
(2931, 1, 'vi', 'plugins/real-estate/property', 'form.category', 'Loại nhà', '2020-11-15 21:00:34', '2020-11-15 21:00:34'),
(2932, 1, 'vi', 'plugins/real-estate/property', 'statuses.not_available', 'Không khả dụng', '2020-11-15 21:00:34', '2020-11-15 21:00:34'),
(2933, 1, 'vi', 'plugins/real-estate/property', 'statuses.pre_sale', 'Chuẩn bị mở bán', '2020-11-15 21:00:34', '2020-11-15 21:00:34'),
(2934, 1, 'vi', 'plugins/real-estate/property', 'statuses.selling', 'Đang bán', '2020-11-15 21:00:34', '2020-11-15 21:00:34'),
(2935, 1, 'vi', 'plugins/real-estate/property', 'statuses.sold', 'Đã bán', '2020-11-15 21:00:34', '2020-11-15 21:00:34'),
(2936, 1, 'vi', 'plugins/real-estate/property', 'statuses.renting', 'Đang mở thuê', '2020-11-15 21:00:34', '2020-11-15 21:00:34'),
(2937, 1, 'vi', 'plugins/real-estate/property', 'statuses.rented', 'Đã cho thuê', '2020-11-15 21:00:34', '2020-11-15 21:00:34'),
(2938, 1, 'vi', 'plugins/real-estate/property', 'statuses.building', 'Đang xây dựng', '2020-11-15 21:00:34', '2020-11-15 21:00:34'),
(2939, 1, 'vi', 'plugins/real-estate/property', 'types.sale', 'Nhà bán', '2020-11-15 21:00:34', '2020-11-15 21:00:34'),
(2940, 1, 'vi', 'plugins/real-estate/property', 'types.rent', 'Nhà cho thuê', '2020-11-15 21:00:34', '2020-11-15 21:00:34'),
(2941, 1, 'vi', 'plugins/real-estate/property', 'periods.day', 'Ngày', '2020-11-15 21:00:34', '2020-11-15 21:00:34'),
(2942, 1, 'vi', 'plugins/real-estate/property', 'periods.month', 'Tháng', '2020-11-15 21:00:34', '2020-11-15 21:00:34'),
(2943, 1, 'vi', 'plugins/real-estate/property', 'periods.year', 'Năm', '2020-11-15 21:00:34', '2020-11-15 21:00:34'),
(2944, 1, 'vi', 'plugins/real-estate/real-estate', 'name', 'Bất động sản', '2020-11-15 21:00:34', '2020-11-15 21:00:34'),
(2945, 1, 'vi', 'plugins/real-estate/real-estate', 'settings', 'Cài đặt', '2020-11-15 21:00:34', '2020-11-15 21:00:34'),
(2946, 1, 'vi', 'plugins/real-estate/settings', 'title', 'Accounts', '2020-11-15 21:00:34', '2020-11-15 21:00:34'),
(2947, 1, 'vi', 'plugins/real-estate/settings', 'description', 'Settings for members', '2020-11-15 21:00:34', '2020-11-15 21:00:34'),
(2948, 1, 'vi', 'plugins/real-estate/settings', 'verify_account_email', 'Verify account\'s email?', '2020-11-15 21:00:34', '2020-11-15 21:00:34'),
(2949, 1, 'en', 'plugins/social-login/social-login', 'settings.title', 'Social Login settings', '2020-11-15 21:00:34', '2020-11-15 21:00:34'),
(2950, 1, 'en', 'plugins/social-login/social-login', 'settings.description', 'Configure social login options', '2020-11-15 21:00:34', '2020-11-15 21:00:34'),
(2951, 1, 'en', 'plugins/social-login/social-login', 'settings.facebook.title', 'Facebook login settings', '2020-11-15 21:00:34', '2020-11-15 21:00:34'),
(2952, 1, 'en', 'plugins/social-login/social-login', 'settings.facebook.description', 'Enable/disable & configure app credentials for Facebook login', '2020-11-15 21:00:34', '2020-11-15 21:00:34'),
(2953, 1, 'en', 'plugins/social-login/social-login', 'settings.facebook.app_id', 'App ID', '2020-11-15 21:00:34', '2020-11-15 21:00:34'),
(2954, 1, 'en', 'plugins/social-login/social-login', 'settings.facebook.app_secret', 'App Secret', '2020-11-15 21:00:34', '2020-11-15 21:00:34'),
(2955, 1, 'en', 'plugins/social-login/social-login', 'settings.facebook.helper', 'Please go to https://developers.facebook.com to create new app update App ID, App Secret. Callback URL is :callback', '2020-11-15 21:00:34', '2020-11-15 21:00:34'),
(2956, 1, 'en', 'plugins/social-login/social-login', 'settings.google.title', 'Google login settings', '2020-11-15 21:00:34', '2020-11-15 21:00:34'),
(2957, 1, 'en', 'plugins/social-login/social-login', 'settings.google.description', 'Enable/disable & configure app credentials for Google login', '2020-11-15 21:00:34', '2020-11-15 21:00:34'),
(2958, 1, 'en', 'plugins/social-login/social-login', 'settings.google.app_id', 'App ID', '2020-11-15 21:00:34', '2020-11-15 21:00:34'),
(2959, 1, 'en', 'plugins/social-login/social-login', 'settings.google.app_secret', 'App Secret', '2020-11-15 21:00:34', '2020-11-15 21:00:34'),
(2960, 1, 'en', 'plugins/social-login/social-login', 'settings.google.helper', 'Please go to https://console.developers.google.com/apis/dashboard to create new app update App ID, App Secret. Callback URL is :callback', '2020-11-15 21:00:34', '2020-11-15 21:00:34'),
(2961, 1, 'en', 'plugins/social-login/social-login', 'settings.github.title', 'Github login settings', '2020-11-15 21:00:34', '2020-11-15 21:00:34'),
(2962, 1, 'en', 'plugins/social-login/social-login', 'settings.github.description', 'Enable/disable & configure app credentials for Github login', '2020-11-15 21:00:34', '2020-11-15 21:00:34'),
(2963, 1, 'en', 'plugins/social-login/social-login', 'settings.github.app_id', 'App ID', '2020-11-15 21:00:34', '2020-11-15 21:00:34'),
(2964, 1, 'en', 'plugins/social-login/social-login', 'settings.github.app_secret', 'App Secret', '2020-11-15 21:00:34', '2020-11-15 21:00:34'),
(2965, 1, 'en', 'plugins/social-login/social-login', 'settings.github.helper', 'Please go to https://github.com/settings/developers to create new app update App ID, App Secret. Callback URL is :callback', '2020-11-15 21:00:34', '2020-11-15 21:00:34'),
(2966, 1, 'en', 'plugins/social-login/social-login', 'settings.linkedin.title', 'Linkedin login settings', '2020-11-15 21:00:34', '2020-11-15 21:00:34'),
(2967, 1, 'en', 'plugins/social-login/social-login', 'settings.linkedin.description', 'Enable/disable & configure app credentials for Linkedin login', '2020-11-15 21:00:34', '2020-11-15 21:00:34'),
(2968, 1, 'en', 'plugins/social-login/social-login', 'settings.linkedin.app_id', 'App ID', '2020-11-15 21:00:34', '2020-11-15 21:00:34'),
(2969, 1, 'en', 'plugins/social-login/social-login', 'settings.linkedin.app_secret', 'App Secret', '2020-11-15 21:00:34', '2020-11-15 21:00:34'),
(2970, 1, 'en', 'plugins/social-login/social-login', 'settings.linkedin.helper', 'Please go to https://www.linkedin.com/developers/apps/new to create new app update App ID, App Secret. Callback URL is :callback', '2020-11-15 21:00:34', '2020-11-15 21:00:34'),
(2971, 1, 'en', 'plugins/social-login/social-login', 'settings.enable', 'Enable?', '2020-11-15 21:00:34', '2020-11-15 21:00:34'),
(2972, 1, 'en', 'plugins/social-login/social-login', 'menu', 'Social Login', '2020-11-15 21:00:34', '2020-11-15 21:00:34'),
(2973, 1, 'en', 'plugins/testimonials/forms', 'name', 'Customer name', '2020-11-15 21:00:34', '2020-11-15 21:00:34'),
(2974, 1, 'en', 'plugins/testimonials/forms', 'company', 'Company/Working place', '2020-11-15 21:00:34', '2020-11-15 21:00:34'),
(2975, 1, 'en', 'plugins/testimonials/forms', 'avatar', 'Avatar', '2020-11-15 21:00:34', '2020-11-15 21:00:34'),
(2976, 1, 'en', 'plugins/testimonials/forms', 'title', 'Title', '2020-11-15 21:00:34', '2020-11-15 21:00:34'),
(2977, 1, 'en', 'plugins/testimonials/forms', 'content', 'Content', '2020-11-15 21:00:34', '2020-11-15 21:00:34'),
(2978, 1, 'en', 'plugins/testimonials/forms', 'publish', 'Publish', '2020-11-15 21:00:34', '2020-11-15 21:00:34'),
(2979, 1, 'en', 'plugins/testimonials/forms', 'unpublish', 'Unpublish', '2020-11-15 21:00:34', '2020-11-15 21:00:34'),
(2980, 1, 'en', 'plugins/testimonials/testimonials', 'name', 'Testimonials', '2020-11-15 21:00:34', '2020-11-15 21:00:34'),
(2981, 1, 'en', 'plugins/testimonials/testimonials', 'create', 'New testimonials', '2020-11-15 21:00:34', '2020-11-15 21:00:34'),
(2982, 1, 'en', 'plugins/testimonials/testimonials', 'edit', 'Edit testimonials', '2020-11-15 21:00:34', '2020-11-15 21:00:34'),
(2983, 1, 'vi', 'plugins/testimonials/forms', 'name', 'Tên khách hàng', '2020-11-15 21:00:34', '2020-11-15 21:00:34'),
(2984, 1, 'vi', 'plugins/testimonials/forms', 'company', 'Công ty/Nơi làm việc', '2020-11-15 21:00:34', '2020-11-15 21:00:34'),
(2985, 1, 'vi', 'plugins/testimonials/forms', 'avatar', 'Avatar', '2020-11-15 21:00:34', '2020-11-15 21:00:34'),
(2986, 1, 'vi', 'plugins/testimonials/forms', 'title', 'Tiêu đề', '2020-11-15 21:00:34', '2020-11-15 21:00:34'),
(2987, 1, 'vi', 'plugins/testimonials/forms', 'content', 'Nội dung', '2020-11-15 21:00:34', '2020-11-15 21:00:34'),
(2988, 1, 'vi', 'plugins/testimonials/forms', 'publish', 'Xuất bản', '2020-11-15 21:00:34', '2020-11-15 21:00:34'),
(2989, 1, 'vi', 'plugins/testimonials/forms', 'unpublish', 'Không xuất bản', '2020-11-15 21:00:34', '2020-11-15 21:00:34'),
(2990, 1, 'vi', 'plugins/testimonials/testimonials', 'name', 'Nhận xét khách hàng', '2020-11-15 21:00:34', '2020-11-15 21:00:34'),
(2991, 1, 'vi', 'plugins/testimonials/testimonials', 'create', 'Tạo mới', '2020-11-15 21:00:34', '2020-11-15 21:00:34'),
(2992, 1, 'vi', 'plugins/testimonials/testimonials', 'edit', 'Sửa nhận xét', '2020-11-15 21:00:34', '2020-11-15 21:00:34'),
(2993, 1, 'en', 'plugins/translation/translation', 'translations', 'Translations', '2020-11-15 21:00:34', '2020-11-15 21:00:34'),
(2994, 1, 'en', 'plugins/translation/translation', 'translations_description', 'Translate all words in system.', '2020-11-15 21:00:34', '2020-11-15 21:00:34'),
(2995, 1, 'en', 'plugins/translation/translation', 'export_warning', 'Warning, translations are not visible until they are exported back to the resources/lang file, using \'php artisan cms:translations:export\' command or publish button.', '2020-11-15 21:00:34', '2020-11-15 21:00:34'),
(2996, 1, 'en', 'plugins/translation/translation', 'import_done', 'Done importing, processed :counter items! Reload this page to refresh the groups!', '2020-11-15 21:00:34', '2020-11-15 21:00:34'),
(2997, 1, 'en', 'plugins/translation/translation', 'translation_manager', 'Translations Manager', '2020-11-15 21:00:34', '2020-11-15 21:00:34'),
(2998, 1, 'en', 'plugins/translation/translation', 'done_publishing', 'Done publishing the translations for group', '2020-11-15 21:00:34', '2020-11-15 21:00:34'),
(2999, 1, 'en', 'plugins/translation/translation', 'append_translation', 'Append new translations', '2020-11-15 21:00:34', '2020-11-15 21:00:34'),
(3000, 1, 'en', 'plugins/translation/translation', 'replace_translation', 'Replace existing translations', '2020-11-15 21:00:34', '2020-11-15 21:00:34'),
(3001, 1, 'en', 'plugins/translation/translation', 'import_group', 'Import group', '2020-11-15 21:00:34', '2020-11-15 21:00:34'),
(3002, 1, 'en', 'plugins/translation/translation', 'confirm_publish_group', 'Are you sure you want to publish the translations group \":group\"? This will overwrite existing language files.', '2020-11-15 21:00:34', '2020-11-15 21:00:34'),
(3003, 1, 'en', 'plugins/translation/translation', 'publish_translations', 'Publish translations', '2020-11-15 21:00:34', '2020-11-15 21:00:34'),
(3004, 1, 'en', 'plugins/translation/translation', 'back', 'Back', '2020-11-15 21:00:34', '2020-11-15 21:00:34'),
(3005, 1, 'en', 'plugins/translation/translation', 'edit_title', 'Enter translation', '2020-11-15 21:00:34', '2020-11-15 21:00:34'),
(3006, 1, 'en', 'plugins/translation/translation', 'choose_group_msg', 'Choose a group to display the group translations. If no groups are visible, make sure you have imported the translations.', '2020-11-15 21:00:34', '2020-11-15 21:00:34'),
(3007, 1, 'en', 'plugins/translation/translation', 'choose_a_group', 'Choose a group', '2020-11-15 21:00:34', '2020-11-15 21:00:34'),
(3008, 1, 'en', 'plugins/translation/translation', 'locales', 'Locales', '2020-11-15 21:00:34', '2020-11-15 21:00:34'),
(3009, 1, 'en', 'plugins/translation/translation', 'theme-translations', 'Theme translations', '2020-11-15 21:00:34', '2020-11-15 21:00:34'),
(3010, 1, 'en', 'plugins/translation/translation', 'admin-translations', 'Admin translations', '2020-11-15 21:00:34', '2020-11-15 21:00:34'),
(3011, 1, 'en', 'plugins/translation/translation', 'translate_from', 'Translate from', '2020-11-15 21:00:34', '2020-11-15 21:00:34'),
(3012, 1, 'en', 'plugins/translation/translation', 'to', 'to', '2020-11-15 21:00:34', '2020-11-15 21:00:34'),
(3013, 1, 'en', 'plugins/translation/translation', 'no_other_languages', 'No other language to translate!', '2020-11-15 21:00:34', '2020-11-15 21:00:34'),
(3014, 1, 'en', 'plugins/translation/translation', 'edit', 'Edit', '2020-11-15 21:00:34', '2020-11-15 21:00:34'),
(3015, 1, 'en', 'plugins/translation/translation', 'delete', 'Delete', '2020-11-15 21:00:34', '2020-11-15 21:00:34'),
(3016, 1, 'en', 'plugins/translation/translation', 'locale', 'Locale', '2020-11-15 21:00:34', '2020-11-15 21:00:34'),
(3017, 1, 'en', 'plugins/translation/translation', 'name', 'Name', '2020-11-15 21:00:34', '2020-11-15 21:00:34'),
(3018, 1, 'en', 'plugins/translation/translation', 'default_locale', 'Default locale?', '2020-11-15 21:00:34', '2020-11-15 21:00:34'),
(3019, 1, 'en', 'plugins/translation/translation', 'actions', 'Actions', '2020-11-15 21:00:34', '2020-11-15 21:00:34'),
(3020, 1, 'en', 'plugins/translation/translation', 'choose_language', 'Choose language', '2020-11-15 21:00:34', '2020-11-15 21:00:34'),
(3021, 1, 'en', 'plugins/translation/translation', 'add_new_language', 'Add new language', '2020-11-15 21:00:34', '2020-11-15 21:00:34'),
(3022, 1, 'en', 'plugins/translation/translation', 'select_language', 'Select language', '2020-11-15 21:00:34', '2020-11-15 21:00:34'),
(3023, 1, 'en', 'plugins/translation/translation', 'flag', 'Flag', '2020-11-15 21:00:34', '2020-11-15 21:00:34'),
(3024, 1, 'en', 'plugins/translation/translation', 'confirm_delete_message', 'Do you really want to delete this locale? It will delete all files/folders for this local in /resources/lang!', '2020-11-15 21:00:34', '2020-11-15 21:00:34'),
(3025, 1, 'vi', 'auth', 'failed', 'Không tìm thấy thông tin đăng nhập hợp lệ.', '2020-11-15 21:00:34', '2020-11-15 21:00:34'),
(3026, 1, 'vi', 'auth', 'throttle', 'Đăng nhập không đúng quá nhiều lần. Vui lòng thử lại sau :seconds giây.', '2020-11-15 21:00:34', '2020-11-15 21:00:34'),
(3027, 1, 'vi', 'pagination', 'previous', '&laquo; Trước', '2020-11-15 21:00:34', '2020-11-15 21:00:34'),
(3028, 1, 'vi', 'pagination', 'next', 'Sau &raquo;', '2020-11-15 21:00:34', '2020-11-15 21:00:34'),
(3029, 1, 'vi', 'passwords', 'reset', 'Mật khẩu đã được cập nhật!', '2020-11-15 21:00:34', '2020-11-15 21:00:34'),
(3030, 1, 'vi', 'passwords', 'sent', 'Chúng tôi đã gửi cho bạn đường dẫn thay đổi mật khẩu!', '2020-11-15 21:00:34', '2020-11-15 21:00:34'),
(3031, 1, 'vi', 'passwords', 'token', 'Mã xác nhận mật khẩu không hợp lệ.', '2020-11-15 21:00:34', '2020-11-15 21:00:34'),
(3032, 1, 'vi', 'passwords', 'user', 'Không tìm thấy thành viên với địa chỉ email này.', '2020-11-15 21:00:34', '2020-11-15 21:00:34'),
(3033, 1, 'vi', 'validation', 'accepted', 'Trường :attribute phải được chấp nhận.', '2020-11-15 21:00:34', '2020-11-15 21:00:34'),
(3034, 1, 'vi', 'validation', 'active_url', 'Trường :attribute không phải là một URL hợp lệ.', '2020-11-15 21:00:34', '2020-11-15 21:00:34'),
(3035, 1, 'vi', 'validation', 'after', 'Trường :attribute phải là một ngày sau ngày :date.', '2020-11-15 21:00:34', '2020-11-15 21:00:34'),
(3036, 1, 'vi', 'validation', 'after_or_equal', 'Trường :attribute phải là một ngày sau hoặc bằng ngày :date.', '2020-11-15 21:00:34', '2020-11-15 21:00:34'),
(3037, 1, 'vi', 'validation', 'alpha', 'Trường :attribute chỉ có thể chứa các chữ cái.', '2020-11-15 21:00:34', '2020-11-15 21:00:34'),
(3038, 1, 'vi', 'validation', 'alpha_dash', 'Trường :attribute chỉ có thể chứa chữ cái, số và dấu gạch ngang.', '2020-11-15 21:00:34', '2020-11-15 21:00:34'),
(3039, 1, 'vi', 'validation', 'alpha_num', 'Trường :attribute chỉ có thể chứa chữ cái và số.', '2020-11-15 21:00:34', '2020-11-15 21:00:34'),
(3040, 1, 'vi', 'validation', 'array', 'Kiểu dữ liệu của trường :attribute phải là dạng mảng.', '2020-11-15 21:00:34', '2020-11-15 21:00:34'),
(3041, 1, 'vi', 'validation', 'before', 'Trường :attribute phải là một ngày trước ngày :date.', '2020-11-15 21:00:34', '2020-11-15 21:00:34'),
(3042, 1, 'vi', 'validation', 'before_or_equal', 'Trường :attribute phải là một ngày trước hoặc bằng ngày :date.', '2020-11-15 21:00:34', '2020-11-15 21:00:34'),
(3043, 1, 'vi', 'validation', 'between.numeric', 'Trường :attribute phải nằm trong khoảng :min - :max.', '2020-11-15 21:00:34', '2020-11-15 21:00:34'),
(3044, 1, 'vi', 'validation', 'between.file', 'Dung lượng tập tin trong trường :attribute phải từ :min - :max kB.', '2020-11-15 21:00:34', '2020-11-15 21:00:34'),
(3045, 1, 'vi', 'validation', 'between.string', 'Trường :attribute phải từ :min - :max ký tự.', '2020-11-15 21:00:34', '2020-11-15 21:00:34'),
(3046, 1, 'vi', 'validation', 'between.array', 'Trường :attribute phải có từ :min - :max phần tử.', '2020-11-15 21:00:34', '2020-11-15 21:00:34'),
(3047, 1, 'vi', 'validation', 'boolean', 'Trường :attribute phải là true hoặc false.', '2020-11-15 21:00:34', '2020-11-15 21:00:34'),
(3048, 1, 'vi', 'validation', 'confirmed', 'Giá trị xác nhận trong trường :attribute không khớp.', '2020-11-15 21:00:34', '2020-11-15 21:00:34'),
(3049, 1, 'vi', 'validation', 'date', 'Trường :attribute không phải là định dạng của ngày-tháng.', '2020-11-15 21:00:34', '2020-11-15 21:00:34'),
(3050, 1, 'vi', 'validation', 'date_equals', 'Trường :attribute phải là một ngày bằng với :date.', '2020-11-15 21:00:34', '2020-11-15 21:00:34'),
(3051, 1, 'vi', 'validation', 'date_format', 'Trường :attribute không giống với định dạng :format.', '2020-11-15 21:00:34', '2020-11-15 21:00:34'),
(3052, 1, 'vi', 'validation', 'different', 'Trường :attribute và :other phải khác nhau.', '2020-11-15 21:00:34', '2020-11-15 21:00:34'),
(3053, 1, 'vi', 'validation', 'digits', 'Độ dài của trường :attribute phải gồm :digits chữ số.', '2020-11-15 21:00:34', '2020-11-15 21:00:34'),
(3054, 1, 'vi', 'validation', 'digits_between', 'Độ dài của trường :attribute phải nằm trong khoảng :min and :max chữ số.', '2020-11-15 21:00:34', '2020-11-15 21:00:34'),
(3055, 1, 'vi', 'validation', 'dimensions', 'The :attribute has invalid image dimensions.', '2020-11-15 21:00:34', '2020-11-15 21:00:34'),
(3056, 1, 'vi', 'validation', 'distinct', 'The :attribute field has a duplicate value.', '2020-11-15 21:00:34', '2020-11-15 21:00:34'),
(3057, 1, 'vi', 'validation', 'email', 'Trường :attribute phải là một địa chỉ email hợp lệ.', '2020-11-15 21:00:34', '2020-11-15 21:00:34'),
(3058, 1, 'vi', 'validation', 'ends_with', 'Trường :attribute phải kết thúc bằng một trong những giá trị sau: :values', '2020-11-15 21:00:34', '2020-11-15 21:00:34'),
(3059, 1, 'vi', 'validation', 'exists', 'Giá trị đã chọn trong trường :attribute không hợp lệ.', '2020-11-15 21:00:34', '2020-11-15 21:00:34'),
(3060, 1, 'vi', 'validation', 'file', 'Trường :attribute phải là một tập tin.', '2020-11-15 21:00:34', '2020-11-15 21:00:34'),
(3061, 1, 'vi', 'validation', 'filled', 'Trường :attribute không được bỏ trống.', '2020-11-15 21:00:34', '2020-11-15 21:00:34'),
(3062, 1, 'vi', 'validation', 'gt.numeric', 'Trường :attribute phải lớn hơn :max.', '2020-11-15 21:00:34', '2020-11-15 21:00:34'),
(3063, 1, 'vi', 'validation', 'gt.file', 'Dung lượng tập tin trong trường :attribute phải lớn hơn :max KB.', '2020-11-15 21:00:34', '2020-11-15 21:00:34'),
(3064, 1, 'vi', 'validation', 'gt.string', 'Trường :attribute phải lớn hơn :max ký tự.', '2020-11-15 21:00:34', '2020-11-15 21:00:34'),
(3065, 1, 'vi', 'validation', 'gt.array', 'Trường :attribute phải lớn hơn :max phần tử.', '2020-11-15 21:00:34', '2020-11-15 21:00:34'),
(3066, 1, 'vi', 'validation', 'gte.numeric', 'Trường :attribute phải lớn hơn hoặc bằng :max.', '2020-11-15 21:00:34', '2020-11-15 21:00:34'),
(3067, 1, 'vi', 'validation', 'gte.file', 'Dung lượng tập tin trong trường :attribute phải lớn hơn hoặc bằng :max KB.', '2020-11-15 21:00:34', '2020-11-15 21:00:34'),
(3068, 1, 'vi', 'validation', 'gte.string', 'Trường :attribute phải lớn hơn hoặc bằng :max ký tự.', '2020-11-15 21:00:34', '2020-11-15 21:00:34'),
(3069, 1, 'vi', 'validation', 'gte.array', 'Trường :attribute phải lớn hơn hoặc bằng :max phần tử.', '2020-11-15 21:00:34', '2020-11-15 21:00:34'),
(3070, 1, 'vi', 'validation', 'image', 'Các tập tin trong trường :attribute phải là định dạng hình ảnh.', '2020-11-15 21:00:34', '2020-11-15 21:00:34'),
(3071, 1, 'vi', 'validation', 'in', 'Giá trị đã chọn trong trường :attribute không hợp lệ.', '2020-11-15 21:00:34', '2020-11-15 21:00:34'),
(3072, 1, 'vi', 'validation', 'in_array', 'The :attribute field does not exist in :other.', '2020-11-15 21:00:34', '2020-11-15 21:00:34'),
(3073, 1, 'vi', 'validation', 'integer', 'Trường :attribute phải là một số nguyên.', '2020-11-15 21:00:34', '2020-11-15 21:00:34'),
(3074, 1, 'vi', 'validation', 'ip', 'Trường :attribute phải là một địa chỉa IP.', '2020-11-15 21:00:34', '2020-11-15 21:00:34'),
(3075, 1, 'vi', 'validation', 'ipv4', 'Trường :attribute phải là địa chỉ IPv4 hợp lệ.', '2020-11-15 21:00:34', '2020-11-15 21:00:34'),
(3076, 1, 'vi', 'validation', 'ipv6', 'Trường :attribute phải là địa chỉ IPv6 hợp lệ.', '2020-11-15 21:00:34', '2020-11-15 21:00:34'),
(3077, 1, 'vi', 'validation', 'json', 'Trường :attribute phải là chuỗi JSON hợp lệ.', '2020-11-15 21:00:34', '2020-11-15 21:00:34'),
(3078, 1, 'vi', 'validation', 'lt.numeric', 'Trường :attribute phải nhỏ hơn là :min.', '2020-11-15 21:00:34', '2020-11-15 21:00:34'),
(3079, 1, 'vi', 'validation', 'lt.file', 'Dung lượng tập tin trong trường :attribute phải nhỏ hơn :min KB.', '2020-11-15 21:00:34', '2020-11-15 21:00:34'),
(3080, 1, 'vi', 'validation', 'lt.string', 'Trường :attribute phải có nhỏ hơn :min ký tự.', '2020-11-15 21:00:34', '2020-11-15 21:00:34'),
(3081, 1, 'vi', 'validation', 'lt.array', 'Trường :attribute phải có nhỏ hơn :min phần tử.', '2020-11-15 21:00:34', '2020-11-15 21:00:34'),
(3082, 1, 'vi', 'validation', 'lte.numeric', 'Trường :attribute phải nhỏ hơn hoặc bằng là :min.', '2020-11-15 21:00:34', '2020-11-15 21:00:34'),
(3083, 1, 'vi', 'validation', 'lte.file', 'Dung lượng tập tin trong trường :attribute phải nhỏ hơn hoặc bằng :min KB.', '2020-11-15 21:00:34', '2020-11-15 21:00:34'),
(3084, 1, 'vi', 'validation', 'lte.string', 'Trường :attribute phải có nhỏ hơn hoặc bằng :min ký tự.', '2020-11-15 21:00:34', '2020-11-15 21:00:34'),
(3085, 1, 'vi', 'validation', 'lte.array', 'Trường :attribute phải có nhỏ hơn hoặc bằng :min phần tử.', '2020-11-15 21:00:34', '2020-11-15 21:00:34'),
(3086, 1, 'vi', 'validation', 'max.numeric', 'Trường :attribute không được lớn hơn :max.', '2020-11-15 21:00:34', '2020-11-15 21:00:34'),
(3087, 1, 'vi', 'validation', 'max.file', 'Dung lượng tập tin trong trường :attribute không được lớn hơn :max KB.', '2020-11-15 21:00:34', '2020-11-15 21:00:34'),
(3088, 1, 'vi', 'validation', 'max.string', 'Trường :attribute không được lớn hơn :max ký tự.', '2020-11-15 21:00:34', '2020-11-15 21:00:34'),
(3089, 1, 'vi', 'validation', 'max.array', 'Trường :attribute không được lớn hơn :max phần tử.', '2020-11-15 21:00:34', '2020-11-15 21:00:34'),
(3090, 1, 'vi', 'validation', 'mimes', 'Trường :attribute phải là một tập tin có định dạng: :values.', '2020-11-15 21:00:34', '2020-11-15 21:00:34'),
(3091, 1, 'vi', 'validation', 'mimetypes', 'Trường :attribute phải là một tệp có định dạng là: :values.', '2020-11-15 21:00:35', '2020-11-15 21:00:35'),
(3092, 1, 'vi', 'validation', 'min.numeric', 'Trường :attribute phải tối thiểu là :min.', '2020-11-15 21:00:35', '2020-11-15 21:00:35'),
(3093, 1, 'vi', 'validation', 'min.file', 'Dung lượng tập tin trong trường :attribute phải tối thiểu :min KB.', '2020-11-15 21:00:35', '2020-11-15 21:00:35'),
(3094, 1, 'vi', 'validation', 'min.string', 'Trường :attribute phải có tối thiểu :min ký tự.', '2020-11-15 21:00:35', '2020-11-15 21:00:35');
INSERT INTO `translations` (`id`, `status`, `locale`, `group`, `key`, `value`, `created_at`, `updated_at`) VALUES
(3095, 1, 'vi', 'validation', 'min.array', 'Trường :attribute phải có tối thiểu :min phần tử.', '2020-11-15 21:00:35', '2020-11-15 21:00:35'),
(3096, 1, 'vi', 'validation', 'not_in', 'Giá trị đã chọn trong trường :attribute không hợp lệ.', '2020-11-15 21:00:35', '2020-11-15 21:00:35'),
(3097, 1, 'vi', 'validation', 'not_regex', 'Trường :attribute định dạng không hợp lệ.', '2020-11-15 21:00:35', '2020-11-15 21:00:35'),
(3098, 1, 'vi', 'validation', 'numeric', 'Trường :attribute phải là một số.', '2020-11-15 21:00:35', '2020-11-15 21:00:35'),
(3099, 1, 'vi', 'validation', 'password', 'Mật khẩu không đúng.', '2020-11-15 21:00:35', '2020-11-15 21:00:35'),
(3100, 1, 'vi', 'validation', 'present', 'The :attribute field must be present.', '2020-11-15 21:00:35', '2020-11-15 21:00:35'),
(3101, 1, 'vi', 'validation', 'regex', 'Định dạng trường :attribute không hợp lệ.', '2020-11-15 21:00:35', '2020-11-15 21:00:35'),
(3102, 1, 'vi', 'validation', 'required', 'Trường :attribute không được bỏ trống.', '2020-11-15 21:00:35', '2020-11-15 21:00:35'),
(3103, 1, 'vi', 'validation', 'required_if', 'Trường :attribute không được bỏ trống khi trường :other là :value.', '2020-11-15 21:00:35', '2020-11-15 21:00:35'),
(3104, 1, 'vi', 'validation', 'required_unless', 'The :attribute field is required unless :other is in :values.', '2020-11-15 21:00:35', '2020-11-15 21:00:35'),
(3105, 1, 'vi', 'validation', 'required_with', 'Trường :attribute không được bỏ trống khi trường :values có giá trị.', '2020-11-15 21:00:35', '2020-11-15 21:00:35'),
(3106, 1, 'vi', 'validation', 'required_with_all', 'The :attribute field is required when :values is present.', '2020-11-15 21:00:35', '2020-11-15 21:00:35'),
(3107, 1, 'vi', 'validation', 'required_without', 'Trường :attribute không được bỏ trống khi trường :values không có giá trị.', '2020-11-15 21:00:35', '2020-11-15 21:00:35'),
(3108, 1, 'vi', 'validation', 'required_without_all', 'Trường :attribute không được bỏ trống khi tất cả :values không có giá trị.', '2020-11-15 21:00:35', '2020-11-15 21:00:35'),
(3109, 1, 'vi', 'validation', 'same', 'Trường :attribute và :other phải giống nhau.', '2020-11-15 21:00:35', '2020-11-15 21:00:35'),
(3110, 1, 'vi', 'validation', 'size.numeric', 'Trường :attribute phải bằng :size.', '2020-11-15 21:00:35', '2020-11-15 21:00:35'),
(3111, 1, 'vi', 'validation', 'size.file', 'Dung lượng tập tin trong trường :attribute phải bằng :size kB.', '2020-11-15 21:00:35', '2020-11-15 21:00:35'),
(3112, 1, 'vi', 'validation', 'size.string', 'Trường :attribute phải chứa :size ký tự.', '2020-11-15 21:00:35', '2020-11-15 21:00:35'),
(3113, 1, 'vi', 'validation', 'size.array', 'Trường :attribute phải chứa :size phần tử.', '2020-11-15 21:00:35', '2020-11-15 21:00:35'),
(3114, 1, 'vi', 'validation', 'starts_with', 'Trường :attribute phải được bắt đầu bằng một trong những giá trị sau: :values', '2020-11-15 21:00:35', '2020-11-15 21:00:35'),
(3115, 1, 'vi', 'validation', 'string', 'Trường :attribute phải là một chuỗi.', '2020-11-15 21:00:35', '2020-11-15 21:00:35'),
(3116, 1, 'vi', 'validation', 'timezone', 'Trường :attribute phải là một múi giờ hợp lệ.', '2020-11-15 21:00:35', '2020-11-15 21:00:35'),
(3117, 1, 'vi', 'validation', 'unique', 'Trường :attribute đã có trong hệ thống.', '2020-11-15 21:00:35', '2020-11-15 21:00:35'),
(3118, 1, 'vi', 'validation', 'uploaded', 'Trường :attribute không thể tải lên.', '2020-11-15 21:00:35', '2020-11-15 21:00:35'),
(3119, 1, 'vi', 'validation', 'url', 'Trường :attribute không giống với định dạng một URL.', '2020-11-15 21:00:35', '2020-11-15 21:00:35'),
(3120, 1, 'vi', 'validation', 'uuid', 'Trường :attribute không phải là một chuỗi UUID hợp lẹ.', '2020-11-15 21:00:35', '2020-11-15 21:00:35'),
(3121, 1, 'vi', 'validation', 'custom.attribute-name.rule-name', 'custom-message', '2020-11-15 21:00:35', '2020-11-15 21:00:35'),
(3122, 1, 'vi', 'validation', 'attributes.name', 'tên', '2020-11-15 21:00:35', '2020-11-15 21:00:35'),
(3123, 1, 'vi', 'validation', 'attributes.username', 'tên đăng nhập', '2020-11-15 21:00:35', '2020-11-15 21:00:35'),
(3124, 1, 'vi', 'validation', 'attributes.email', 'email', '2020-11-15 21:00:35', '2020-11-15 21:00:35'),
(3125, 1, 'vi', 'validation', 'attributes.first_name', 'tên', '2020-11-15 21:00:35', '2020-11-15 21:00:35'),
(3126, 1, 'vi', 'validation', 'attributes.last_name', 'họ', '2020-11-15 21:00:35', '2020-11-15 21:00:35'),
(3127, 1, 'vi', 'validation', 'attributes.password', 'mật khẩu', '2020-11-15 21:00:35', '2020-11-15 21:00:35'),
(3128, 1, 'vi', 'validation', 'attributes.password_confirmation', 'xác nhận mật khẩu', '2020-11-15 21:00:35', '2020-11-15 21:00:35'),
(3129, 1, 'vi', 'validation', 'attributes.city', 'thành phố', '2020-11-15 21:00:35', '2020-11-15 21:00:35'),
(3130, 1, 'vi', 'validation', 'attributes.country', 'quốc gia', '2020-11-15 21:00:35', '2020-11-15 21:00:35'),
(3131, 1, 'vi', 'validation', 'attributes.address', 'địa chỉ', '2020-11-15 21:00:35', '2020-11-15 21:00:35'),
(3132, 1, 'vi', 'validation', 'attributes.phone', 'số điện thoại', '2020-11-15 21:00:35', '2020-11-15 21:00:35'),
(3133, 1, 'vi', 'validation', 'attributes.mobile', 'di động', '2020-11-15 21:00:35', '2020-11-15 21:00:35'),
(3134, 1, 'vi', 'validation', 'attributes.age', 'tuổi', '2020-11-15 21:00:35', '2020-11-15 21:00:35'),
(3135, 1, 'vi', 'validation', 'attributes.sex', 'giới tính', '2020-11-15 21:00:35', '2020-11-15 21:00:35'),
(3136, 1, 'vi', 'validation', 'attributes.gender', 'giới tính', '2020-11-15 21:00:35', '2020-11-15 21:00:35'),
(3137, 1, 'vi', 'validation', 'attributes.year', 'năm', '2020-11-15 21:00:35', '2020-11-15 21:00:35'),
(3138, 1, 'vi', 'validation', 'attributes.month', 'tháng', '2020-11-15 21:00:35', '2020-11-15 21:00:35'),
(3139, 1, 'vi', 'validation', 'attributes.day', 'ngày', '2020-11-15 21:00:35', '2020-11-15 21:00:35'),
(3140, 1, 'vi', 'validation', 'attributes.hour', 'giờ', '2020-11-15 21:00:35', '2020-11-15 21:00:35'),
(3141, 1, 'vi', 'validation', 'attributes.minute', 'phút', '2020-11-15 21:00:35', '2020-11-15 21:00:35'),
(3142, 1, 'vi', 'validation', 'attributes.second', 'giây', '2020-11-15 21:00:35', '2020-11-15 21:00:35'),
(3143, 1, 'vi', 'validation', 'attributes.title', 'tiêu đề', '2020-11-15 21:00:35', '2020-11-15 21:00:35'),
(3144, 1, 'vi', 'validation', 'attributes.content', 'nội dung', '2020-11-15 21:00:35', '2020-11-15 21:00:35'),
(3145, 1, 'vi', 'validation', 'attributes.body', 'nội dung', '2020-11-15 21:00:35', '2020-11-15 21:00:35'),
(3146, 1, 'vi', 'validation', 'attributes.description', 'mô tả', '2020-11-15 21:00:35', '2020-11-15 21:00:35'),
(3147, 1, 'vi', 'validation', 'attributes.excerpt', 'trích dẫn', '2020-11-15 21:00:35', '2020-11-15 21:00:35'),
(3148, 1, 'vi', 'validation', 'attributes.date', 'ngày', '2020-11-15 21:00:35', '2020-11-15 21:00:35'),
(3149, 1, 'vi', 'validation', 'attributes.time', 'thời gian', '2020-11-15 21:00:35', '2020-11-15 21:00:35'),
(3150, 1, 'vi', 'validation', 'attributes.subject', 'tiêu đề', '2020-11-15 21:00:35', '2020-11-15 21:00:35'),
(3151, 1, 'vi', 'validation', 'attributes.message', 'lời nhắn', '2020-11-15 21:00:35', '2020-11-15 21:00:35'),
(3152, 1, 'vi', 'validation', 'attributes.available', 'có sẵn', '2020-11-15 21:00:35', '2020-11-15 21:00:35'),
(3153, 1, 'vi', 'validation', 'attributes.size', 'kích thước', '2020-11-15 21:00:35', '2020-11-15 21:00:35');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `permissions` text COLLATE utf8mb4_unicode_ci,
  `last_login` timestamp NULL DEFAULT NULL,
  `first_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `username` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `avatar_id` int(10) UNSIGNED DEFAULT NULL,
  `super_user` tinyint(1) NOT NULL DEFAULT '0',
  `manage_supers` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `permissions`, `last_login`, `first_name`, `last_name`, `username`, `avatar_id`, `super_user`, `manage_supers`) VALUES
(1, 'admin@botble.com', NULL, '$2y$10$UUkfl0t1jC9tLMuBj0ReX.hXAzxLb00rzYrZDcpJpNT/.t8vDlT4m', '3ivGWGYlhS639xuZ8V69VdBJiEPhUr4I86iE48eASOmj3tfOw0yVVk6BEA9L', '2019-11-15 04:53:30', '2020-11-16 08:53:10', NULL, '2020-11-16 08:53:10', 'System', 'Admin', 'botble', 161, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `user_meta`
--

CREATE TABLE `user_meta` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_meta`
--

INSERT INTO `user_meta` (`id`, `key`, `value`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'admin-locale', 'en', 1, '2019-11-17 20:19:14', '2019-11-30 19:25:04');

-- --------------------------------------------------------

--
-- Table structure for table `widgets`
--

CREATE TABLE `widgets` (
  `id` int(10) UNSIGNED NOT NULL,
  `widget_id` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sidebar_id` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `theme` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `position` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `data` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `widgets`
--

INSERT INTO `widgets` (`id`, `widget_id`, `sidebar_id`, `theme`, `position`, `data`, `created_at`, `updated_at`) VALUES
(20, 'CustomMenuWidget', 'footer_sidebar', 'flex-home', 0, '{\"id\":\"CustomMenuWidget\",\"name\":\"About\",\"menu_id\":\"about\"}', '2019-11-17 22:09:57', '2019-11-17 22:09:57'),
(21, 'CustomMenuWidget', 'footer_sidebar', 'flex-home', 1, '{\"id\":\"CustomMenuWidget\",\"name\":\"More information\",\"menu_id\":\"more-information\"}', '2019-11-17 22:09:57', '2019-11-17 22:09:57'),
(22, 'CustomMenuWidget', 'footer_sidebar', 'flex-home', 2, '{\"id\":\"CustomMenuWidget\",\"name\":\"News\",\"menu_id\":\"news\"}', '2019-11-17 22:09:57', '2019-11-17 22:09:57'),
(24, 'CategoriesWidget', 'primary_sidebar', 'flex-home', 0, '{\"id\":\"CategoriesWidget\",\"name\":\"Categories\"}', '2019-11-18 03:50:44', '2019-11-18 03:50:44'),
(25, 'RecentPostsWidget', 'primary_sidebar', 'flex-home', 1, '{\"id\":\"RecentPostsWidget\",\"name\":\"Recent posts\",\"number_display\":\"5\"}', '2019-11-18 03:50:45', '2019-11-18 03:50:45'),
(30, 'CategoriesWidget', 'primary_sidebar', 'flex-home-vi', 0, '{\"id\":\"CategoriesWidget\",\"name\":\"Chuy\\u00ean m\\u1ee5c\"}', '2019-11-21 07:53:12', '2019-11-21 07:53:12'),
(31, 'RecentPostsWidget', 'primary_sidebar', 'flex-home-vi', 1, '{\"id\":\"RecentPostsWidget\",\"name\":\"B\\u00e0i vi\\u1ebft m\\u1edbi nh\\u1ea5t\",\"number_display\":\"5\"}', '2019-11-21 07:53:12', '2019-11-21 07:53:12'),
(41, 'CustomMenuWidget', 'footer_sidebar', 'flex-home-vi', 0, '{\"id\":\"CustomMenuWidget\",\"name\":\"Gi\\u1edbi thi\\u1ec7u\",\"menu_id\":\"ve-chung-toi\"}', '2019-11-21 07:53:51', '2019-11-21 07:53:51'),
(42, 'CustomMenuWidget', 'footer_sidebar', 'flex-home-vi', 1, '{\"id\":\"CustomMenuWidget\",\"name\":\" Th\\u00f4ng tin th\\u00eam\",\"menu_id\":\"thong-tin-them\"}', '2019-11-21 07:53:51', '2019-11-21 07:53:51'),
(43, 'CustomMenuWidget', 'footer_sidebar', 'flex-home-vi', 2, '{\"id\":\"CustomMenuWidget\",\"name\":\"Tin t\\u1ee9c\",\"menu_id\":\"tin-tuc\"}', '2019-11-21 07:53:51', '2019-11-21 07:53:51');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `activations`
--
ALTER TABLE `activations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `activations_user_id_index` (`user_id`);

--
-- Indexes for table `audit_histories`
--
ALTER TABLE `audit_histories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `audit_histories_user_id_index` (`user_id`),
  ADD KEY `audit_histories_module_index` (`module`);

--
-- Indexes for table `careers`
--
ALTER TABLE `careers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cities`
--
ALTER TABLE `cities`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `cities_slug_unique` (`slug`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact_replies`
--
ALTER TABLE `contact_replies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dashboard_widgets`
--
ALTER TABLE `dashboard_widgets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dashboard_widget_settings`
--
ALTER TABLE `dashboard_widget_settings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `dashboard_widget_settings_user_id_index` (`user_id`),
  ADD KEY `dashboard_widget_settings_widget_id_index` (`widget_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `languages`
--
ALTER TABLE `languages`
  ADD PRIMARY KEY (`lang_id`);

--
-- Indexes for table `language_meta`
--
ALTER TABLE `language_meta`
  ADD PRIMARY KEY (`lang_meta_id`),
  ADD KEY `language_meta_lang_meta_content_id_index` (`reference_id`);

--
-- Indexes for table `media_files`
--
ALTER TABLE `media_files`
  ADD PRIMARY KEY (`id`),
  ADD KEY `media_files_user_id_index` (`user_id`);

--
-- Indexes for table `media_folders`
--
ALTER TABLE `media_folders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `media_folders_user_id_index` (`user_id`);

--
-- Indexes for table `media_settings`
--
ALTER TABLE `media_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `menus_slug_unique` (`slug`);

--
-- Indexes for table `menu_locations`
--
ALTER TABLE `menu_locations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menu_nodes`
--
ALTER TABLE `menu_nodes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `menu_nodes_menu_id_index` (`menu_id`),
  ADD KEY `menu_nodes_parent_id_index` (`parent_id`),
  ADD KEY `menu_nodes_related_id_index` (`reference_id`);

--
-- Indexes for table `meta_boxes`
--
ALTER TABLE `meta_boxes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `meta_boxes_content_id_index` (`reference_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `newsletters`
--
ALTER TABLE `newsletters`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notes`
--
ALTER TABLE `notes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `notes_user_id_index` (`user_id`),
  ADD KEY `notes_reference_id_index` (`reference_id`),
  ADD KEY `notes_created_by_index` (`created_by`);

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
  ADD PRIMARY KEY (`id`);

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
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_personal_access_clients_client_id_index` (`client_id`);

--
-- Indexes for table `oauth_refresh_tokens`
--
ALTER TABLE `oauth_refresh_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `post_categories`
--
ALTER TABLE `post_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `post_tags`
--
ALTER TABLE `post_tags`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `revisions`
--
ALTER TABLE `revisions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `revisions_revisionable_id_revisionable_type_index` (`revisionable_id`,`revisionable_type`);

--
-- Indexes for table `re_accounts`
--
ALTER TABLE `re_accounts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `vendors_email_unique` (`email`),
  ADD UNIQUE KEY `re_accounts_username_unique` (`username`);

--
-- Indexes for table `re_account_activity_logs`
--
ALTER TABLE `re_account_activity_logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `re_account_packages`
--
ALTER TABLE `re_account_packages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `re_account_password_resets`
--
ALTER TABLE `re_account_password_resets`
  ADD KEY `vendor_password_resets_email_index` (`email`),
  ADD KEY `vendor_password_resets_token_index` (`token`);

--
-- Indexes for table `re_categories`
--
ALTER TABLE `re_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `re_consults`
--
ALTER TABLE `re_consults`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `re_currencies`
--
ALTER TABLE `re_currencies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `re_facilities`
--
ALTER TABLE `re_facilities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `re_facilities_distances`
--
ALTER TABLE `re_facilities_distances`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `re_features`
--
ALTER TABLE `re_features`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `re_investors`
--
ALTER TABLE `re_investors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `re_packages`
--
ALTER TABLE `re_packages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `re_projects`
--
ALTER TABLE `re_projects`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `re_properties`
--
ALTER TABLE `re_properties`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `re_tags`
--
ALTER TABLE `re_tags`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_slug_unique` (`slug`),
  ADD KEY `roles_created_by_index` (`created_by`),
  ADD KEY `roles_updated_by_index` (`updated_by`);

--
-- Indexes for table `role_users`
--
ALTER TABLE `role_users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `role_users_user_id_index` (`user_id`),
  ADD KEY `role_users_role_id_index` (`role_id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `slugs`
--
ALTER TABLE `slugs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `states`
--
ALTER TABLE `states`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `translations`
--
ALTER TABLE `translations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_meta`
--
ALTER TABLE `user_meta`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_meta_user_id_index` (`user_id`);

--
-- Indexes for table `widgets`
--
ALTER TABLE `widgets`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `activations`
--
ALTER TABLE `activations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `audit_histories`
--
ALTER TABLE `audit_histories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `careers`
--
ALTER TABLE `careers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `cities`
--
ALTER TABLE `cities`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `contact_replies`
--
ALTER TABLE `contact_replies`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `dashboard_widgets`
--
ALTER TABLE `dashboard_widgets`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `dashboard_widget_settings`
--
ALTER TABLE `dashboard_widget_settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

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
-- AUTO_INCREMENT for table `languages`
--
ALTER TABLE `languages`
  MODIFY `lang_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `language_meta`
--
ALTER TABLE `language_meta`
  MODIFY `lang_meta_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=184;

--
-- AUTO_INCREMENT for table `media_files`
--
ALTER TABLE `media_files`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=162;

--
-- AUTO_INCREMENT for table `media_folders`
--
ALTER TABLE `media_folders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `media_settings`
--
ALTER TABLE `media_settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `menus`
--
ALTER TABLE `menus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `menu_locations`
--
ALTER TABLE `menu_locations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `menu_nodes`
--
ALTER TABLE `menu_nodes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `meta_boxes`
--
ALTER TABLE `meta_boxes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=79;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT for table `newsletters`
--
ALTER TABLE `newsletters`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `notes`
--
ALTER TABLE `notes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `post_categories`
--
ALTER TABLE `post_categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `post_tags`
--
ALTER TABLE `post_tags`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `revisions`
--
ALTER TABLE `revisions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `re_accounts`
--
ALTER TABLE `re_accounts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `re_account_activity_logs`
--
ALTER TABLE `re_account_activity_logs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `re_account_packages`
--
ALTER TABLE `re_account_packages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `re_categories`
--
ALTER TABLE `re_categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `re_consults`
--
ALTER TABLE `re_consults`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `re_currencies`
--
ALTER TABLE `re_currencies`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `re_facilities`
--
ALTER TABLE `re_facilities`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `re_facilities_distances`
--
ALTER TABLE `re_facilities_distances`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2258;

--
-- AUTO_INCREMENT for table `re_features`
--
ALTER TABLE `re_features`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `re_investors`
--
ALTER TABLE `re_investors`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `re_packages`
--
ALTER TABLE `re_packages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `re_projects`
--
ALTER TABLE `re_projects`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `re_properties`
--
ALTER TABLE `re_properties`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `re_tags`
--
ALTER TABLE `re_tags`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `role_users`
--
ALTER TABLE `role_users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=240;

--
-- AUTO_INCREMENT for table `slugs`
--
ALTER TABLE `slugs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=103;

--
-- AUTO_INCREMENT for table `states`
--
ALTER TABLE `states`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tags`
--
ALTER TABLE `tags`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `translations`
--
ALTER TABLE `translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3154;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `user_meta`
--
ALTER TABLE `user_meta`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `widgets`
--
ALTER TABLE `widgets`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
