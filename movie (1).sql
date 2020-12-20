-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th12 20, 2020 lúc 05:56 AM
-- Phiên bản máy phục vụ: 10.4.11-MariaDB
-- Phiên bản PHP: 7.4.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `movie`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `banner`
--

CREATE TABLE `banner` (
  `banner_id` int(11) NOT NULL,
  `banner_name` varchar(255) NOT NULL,
  `banner_image` varchar(100) NOT NULL,
  `banner_desc` varchar(255) NOT NULL,
  `trailer` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `banner`
--

INSERT INTO `banner` (`banner_id`, `banner_name`, `banner_image`, `banner_desc`, `trailer`) VALUES
(3, 'Shut In', 'poster-phim-kinh-di32335.jpg', '<p><span style=\"color:#f39c12\">Giam Cầm Quỷ Dữ</span></p>', ''),
(4, 'Harley Quinn', 'top-20-phim-chieu-rap-1068x561694.jpg', '<p><span style=\"color:#f39c12\">Birds of Prey (and the Fantabulous Emancipation of One&nbsp;<em>Harley Quinn</em>) is a&nbsp;<em>2020</em></span></p>', ''),
(5, 'COLLECTORS', '5fa5f98aacc399a7a28b458455.jpg', '<p><span style=\"color:#f39c12\"><span style=\"font-size:16px\">Chỉ cần ngửi m&ugrave;i đất, Kang Dong Goo c&oacute; thể t&igrave;m ra được vị tr&iacute; mộ cổ v&agrave; kho b&aacute;u</span></span><br />\r\n&nbsp;</p>', '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `category_movie`
--

CREATE TABLE `category_movie` (
  `id_tl` int(2) NOT NULL,
  `ten_tl` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `category_movie`
--

INSERT INTO `category_movie` (`id_tl`, `ten_tl`, `created_at`, `updated_at`) VALUES
(3, 'Kinh dị ', NULL, NULL),
(4, 'Hài Hước\r\n', NULL, NULL),
(5, 'Hoạt hình', '2020-11-25 08:03:34', '2020-11-25 08:03:34'),
(6, 'Hành động', '2020-11-25 08:10:45', '2020-11-25 08:12:13'),
(7, 'Trinh thám', '2020-11-25 08:13:52', '2020-11-25 08:14:07');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `category_new`
--

CREATE TABLE `category_new` (
  `cate_new_id` int(11) NOT NULL,
  `cate_new_name` varchar(255) NOT NULL,
  `cate_new_slug` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `category_new`
--

INSERT INTO `category_new` (`cate_new_id`, `cate_new_name`, `cate_new_slug`) VALUES
(1, 'Hot', 'hot'),
(2, 'Sao Việt', 'sao-viet'),
(3, 'Quốc tế', 'quoc-te');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `combo`
--

CREATE TABLE `combo` (
  `id_combo` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `desc` text NOT NULL,
  `price` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `combo`
--

INSERT INTO `combo` (`id_combo`, `name`, `desc`, `price`, `created_at`, `updated_at`) VALUES
(2, 'Nguyen thi nguyen', '1Bắp rangx1coca', 45, '2020-11-19 04:11:00', '2020-11-04 13:51:06'),
(3, 'asas', '1Bắp rangx2coca', 135, '2020-11-19 04:11:00', '2020-11-04 13:51:06');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `comment`
--

CREATE TABLE `comment` (
  `id_comment` int(2) NOT NULL,
  `movieId` int(16) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `content` varchar(155) NOT NULL,
  `email` varchar(100) NOT NULL,
  `name` varchar(64) NOT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `comment`
--

INSERT INTO `comment` (`id_comment`, `movieId`, `date`, `content`, `email`, `name`, `updated_at`, `created_at`) VALUES
(1, 53, '2020-12-19 15:17:38', 'Phim hay ', 'thaonguyenvivo2000@gmail.com', 'Thao nguyen', '2020-11-19 21:39:53', '2020-11-19 21:39:53'),
(4, 53, '2020-12-19 15:17:46', 'Cũng được sẽ xem ', 'wixc8657@gmail.com', 'Thanh Tran', '2020-11-24 23:42:22', '2020-11-24 23:42:22'),
(5, 54, '2020-12-19 15:58:14', 'Phim hay', 'thaonguyenvivo2000@gmail.com', 'nguyen nguyenthi', '2020-12-19 08:58:14', '2020-12-19 08:58:14'),
(6, 54, '2020-12-19 15:59:00', 'Cũng được đó', 'nguyenthao@gmail.com', 'thao nguyen', '2020-12-19 08:59:00', '2020-12-19 08:59:00'),
(7, 57, '2020-12-20 03:24:55', 'Phim thú vị đáng xem', 'trangnguyen2323@gmail.com', 'Thùy Trang', '2020-12-19 20:24:55', '2020-12-19 20:24:55'),
(8, 57, '2020-12-20 03:55:36', 'Phim hay nhưng cấu hình không đẹp', 'taiphuc2110@gmail.com', 'Tài Phúc', '2020-12-19 20:55:36', '2020-12-19 20:55:36'),
(9, 57, '2020-12-20 03:56:36', 'Phim hay nhưng cấu hình không đẹp', 'taiphuc2110@gmail.com', 'Tài Phúc', '2020-12-19 20:56:36', '2020-12-19 20:56:36'),
(10, 57, '2020-12-20 04:32:10', 'Phim hay nhưng cấu hình không đẹp', 'taiphuc2110@gmail.com', 'Tài Phúc', '2020-12-19 21:32:10', '2020-12-19 21:32:10');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `contact`
--

CREATE TABLE `contact` (
  `id` int(15) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `content` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `contact`
--

INSERT INTO `contact` (`id`, `name`, `email`, `content`, `created_at`, `updated_at`) VALUES
(1, 'nguyen nguyenthi', 'nguyennttps08870@fpt.edu.vn', 'sấ', '2020-11-23 06:34:30', '2020-11-23 06:34:30'),
(2, 'sdsd', 'admin@gmail.com', NULL, '2020-11-23 06:43:19', '2020-11-23 06:43:19');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `movies`
--

CREATE TABLE `movies` (
  `movieId` int(16) NOT NULL,
  `name` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `trailer` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `row` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `time` int(8) DEFAULT NULL,
  `release_date` date DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `id_tl` int(2) NOT NULL,
  `director` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `actor` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `nation` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `producer` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `language` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `price` int(11) DEFAULT NULL,
  `phimhot` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `movies`
--

INSERT INTO `movies` (`movieId`, `name`, `trailer`, `row`, `content`, `time`, `release_date`, `created_at`, `updated_at`, `id_tl`, `director`, `actor`, `nation`, `producer`, `language`, `price`, `phimhot`) VALUES
(53, 'BẢY VIÊN NGỌC RỒNG: HUYỀN THOẠI BROLY', 'ZLjtKcnhg2s', 'upload/images/5fbe75913f762.jpg', 'Dragon Ball Super: Broly là phần phim lẻ thứ 20 của thương hiệu nổi tiếng này với sự xuất hiện của Super Saiyan huyền thoại Broly vô cùng bá đạo.\r\nTại Giải đấu sức mạnh, Goku và Vegeta đụng độ Broly – người Saiyan có quá khứ bí ẩn cùng chỉ số sức mạnh cao đột biến. Thậm chí dù ở trạng thái người thường, hắn vẫn có thể thản nhiên đánh bại Vegeta và Goku khi họ đã biến hình Super Saiyan...', 120, '2020-11-24', '2020-11-18 08:13:10', '2020-11-25 19:17:17', 5, 'Tatsuya Nagamine', 'Masako Nozawa, Ryō Horikawa, Bin Shimada', 'Nhật Bản', 'Toei Company, 20th Century Fox Japan', 'Thuyết Minh', 300, 0),
(54, 'KHÁCH SẠN MUMBAI - THẢM SÁT KINH HOÀNG', 'oSgqQHSAhH4', 'upload/images/5fbe735031560.jpg', 'Dựa theo câu chuyện có thật về khách sạn Taj Mahal Palacekhi bọn khủng bố tấn công thành phố Mumbai. Nhân viên khách sạn đã mạo hiểm tính mạng, không nề hà hy sinh bản thân để bảo vệ du khách và gia đình họ được an toàn.', 120, '2020-11-07', '2020-11-19 04:11:00', '2020-11-25 08:08:00', 3, 'Anthony Maras', 'Amandeep Singh, Suhail Nayyar', 'Úc', 'A Hamilton And Electric Pictures Production', 'Lồng tiếng Việt', 0, 1),
(55, 'MẬT VỤ THANH TRỪNG', 'iUNiu0eXAwM', 'upload/images/5fbe752d626b5.jpg', 'Collins – một thợ săn tiền thưởng dày dặn kinh nghiệm được cử đến London, Anh để bắt giữ một nhóm những kẻ khủng bố nguy hiểm và đặc vụ CIA phản bội. Liệu trong cuộc chiến cam go này, Collins có giành được chiến thắng?', 120, '2020-11-25', '2020-11-25 00:29:05', '2020-11-25 08:15:57', 7, 'Matthew Hope', 'William Fichtner, Sylvia Hoeks, Milo Gibson', 'Anh', 'Big Book Media', 'Anh', NULL, 1),
(56, 'ÔNG HOÀNG ĐƯỜNG ĐUA: UM BOK DONG', '5aaQ7CaPguQ', 'upload/images/5fbe68c31826d.jpg', 'Trong buổi họp mặt của nhóm bạn thân, một thành viên bất ngờ đề xuất trò chơi chia sẻ điện thoại nhằm tăng tinh thần “đoàn kết”. Từ đó, những góc khuất của từng người dần hé lộ và khiến cho mối quan hệ vốn khắng khít của họ bắt đầu lay chuyển.', 12, '2020-11-25', '2020-11-25 07:22:59', '2020-11-25 07:43:22', 4, 'Kim Yoo-sung', 'Kang So-ra, Rian', 'Hàn Quốc', 'Kim Yoo-sung', 'Hàn Quốc', NULL, 1),
(57, 'CÔNG VIÊN KỲ DIỆU', 'CbsLIlRvNjI', 'upload/images/5fbe721661904.jpg', 'Có bao giờ bạn nghĩ rằng những thứ mình tưởng tượng khi còn bé lại trở thành sự thật? Cô gái năng động June tình cờ phát hiện ra công viên kỳ diệu mà cô sáng tạo thời tuổi thơ. Sau bao năm bị “cô chủ” lãng quên, liệu công viên có thể hồi sinh?', 80, '2020-11-25', '2020-11-25 08:02:46', '2020-11-25 08:06:14', 3, 'Josh Appelbaum', 'Brianna Denski, Jennifer Garner, Mila Kunis, Ken Jeong', 'Mỹ', 'Ilion Animation Studios', 'Anh', NULL, 1),
(59, 'YÊU NHẦM BẠN THÂN', 'A6gZd_SZoCs', 'upload/images/5fbe7689d7797.jpg', 'Phim kể về câu chuyện oái ăm của Palm - anh chàng trót đem lòng yêu Gink nhưng đáng tiếc cô chỉ xếp anh vào vùng \"friend zone\". Chuyện tình đơn phương cứ thế kéo dài không hồi kết khi Palm không thể nói ra tấm lòng mình, còn Gink lại hẹn hò với chàng trai khác...', 80, '2020-11-25', '2020-11-25 08:21:45', '2020-11-25 08:21:45', 4, 'Chayanop Boonprakob', 'Baifern Pimchanok, Nine Naphat', 'Thái Lan', 'GDH', 'Lồng tiếng Việt', NULL, 1),
(60, 'HAI PHƯỢNG', 'AsZj4AFPfcE', 'upload/images/5fbe76d0eb055.jpg', 'Hai Phượng kể về cuộc hành trình đầy gay cấn và gian của khi người mẹ vùng quê tìm cách cứu con mình thoát khỏi đường dây bắt cóc khổng lồ. Không tấc sắc trong tay, người phụ nữ thân cô thế cô làm sao chống lại bọn xã hội đen tàn ác để giành lại nguồn sống của đời mình?\r\n\r\nHai Phượng do \"đả nữ\" Ngô Thanh Vân thủ vai chính sẽ ra rạp vào 22.02.2019.', 80, '2020-11-24', '2020-11-25 08:22:56', '2020-11-25 08:44:01', 6, 'Lê Văn Kiệt', 'Ngô Thanh Vân, Phạm Anh Khoa', 'Việt Nam', 'Studio68', 'Việt', NULL, 1),
(61, 'ĐẠI ÚY MARVEL', 'BET8VleIy4k', 'upload/images/5fbe7725610db.jpg', 'Không chỉ từng là một người người lính thuộc quân đội Mỹ, Carol Denvers còn chính là Captain Marvel. Liệu bộ phim đầu tiên về nữ chiến binh đầy quyền uy và sức mạnh của vũ trụ điện ảnh Marvel có đáp ứng được mong đợi của khán giả?\r\n\r\n Là phim riêng đầu tiên làm về một nữ siêu anh hùng, Captain Marvel gánh trên vai trọng trách khá nặng nề phải vượt qua đối trọng Wonder Woman, cũng như áp lực khi Aquaman của đối thủ DCEU vừa phá mốc tỷ đô . Áp lực đó thuộc về nữ diễn viên chính Brie Larson. Brie đã phải tập luyện suốt nhiều tháng ròng rã để đạt yêu cầu cơ bắp của nhân vật.\r\n\r\nCarol Danvers là một phi công của lực lượng Không quân Hoa Kỳ. Sau một vụ tai nạn, cô được người ngoài hành tinh Kree đưa về cứu chữa. Tại đây, DNA của Carol đã được kết hợp với DNA của người Kree, từ đó giúp cô trở nên siêu khỏe, siêu nhanh.\r\n\r\nTừ đây, Captain Marvel - siêu anh hùng mạnh mẽ nhất vũ trụ ra đời. Mặt khác cùng lúc đó, trận chiến khốc liệt giữa tộc Kree và Skrull đã lan rộng và có những tác động tiêu cực ra toàn cầu, trong đấy có Trái Đất. Liệu hành trình trở thành siêu anh hùng của Carol Danvers sẽ diễn ra như thế nào?\r\n\r\nLấy bối cảnh thập niên 90, Captain Marvel còn có sự góp mặt của những cái tên quen thuộc với vũ trụ điện ảnh Marvel như Samuel L. Jackson - ngài Nick Fury thuở còn chưa chột mắt, Clark Gregg - đặc vụ Couson ngày trẻ và đặc biệt là kẻ đã bị Đội vệ binh dải ngân hà \"xóa sổ\" - Ronan do Lee Pace thể hiện.\r\n\r\nCaptain Marvel sẽ chính thức phá đảo màn ảnh rộng tại các rạp chiếu phim toàn cầu từ 8.3.2019. Trước đó, khán giả có thể xem suất chiếu sớm từ 19h00- 7.3.2019.', 120, '2020-11-25', '2020-11-25 08:24:21', '2020-11-25 08:24:21', 6, 'Anna Boden, Ryan Fleck', 'Brie Larson , Gemma Chan, Samuel L. Jackson, Jude Law, Lee Pace', 'Mỹ', 'Marvel Studios', 'Anh', NULL, 1),
(62, 'VU QUY ĐẠI NÁO', '3q82frr3YW8', 'upload/images/5fbe7763afd46.jpg', 'Trước sức ép lấy chồng của gia đình, Trang và Hiền đã quyết định bỏ trốn. Mặt khác, để kiếm tiền mưu sinh, hai cô gái ế quyết định nhận tổ chức tiệc cưới. Với sự chung tay của cậu bạn thân Hoàng, ca sĩ Tài, dì Hai chủ nhà - Một ekip tổ chức đám cưới độc nhất vô nhị được ra đời.', 80, '2020-11-25', '2020-11-25 08:25:23', '2020-11-25 08:25:23', 4, 'Lê Thiện Viễn', 'Ngọc Trinh, Diệu Nhi, Việt Hương', 'Việt Nam', 'Live On', 'Việt', NULL, 1),
(63, 'CHỊ MƯỜI BA', 'WWB8SM93JJA', 'upload/images/5fbe77a6040ea.png', 'Sau thành công của webdrama Thập Tam Muội, \"hoa hậu hài\" Thu Trang tiến công màn ảnh rộng bằng phim điện ảnh Chị Mười Ba.\r\n\r\nChị Mười Ba tiếp tục kể về nhóm xã hội đen An Cư Nghĩa Đoàn do chị đại Mười Ba (Thu Trang) và đại ca Đường Băng (Tiến Luật) làm thủ lĩnh. Cả hai phải đối đầu cùng đối thủ bí ẩn- đại ca Hắc Hổ. Hắn chính là kẻ bảo kê cho Bi Long (Khương Ngọc) quậy phá suốt bấy lâu nay.', 80, '2020-11-25', '2020-11-25 08:26:30', '2020-11-25 08:26:30', 6, 'Tô Gia Tuấn, Khương Ngọc', 'Thu Trang, Tiến Luật, Diệu Nhi, Khương Ngọc', 'Việt Nam', 'Galaxy M&E', 'Việt', NULL, 0),
(64, 'TIỀN ĐEN', 'zDFPdz9TPa0', 'upload/images/5fbe77f483a42.jpg', 'Từ một người có nguy cơ bị mất việc, Choi Il Hyun – một nhân viên môi giới chứng khoán đã đổi đời nhanh chóng nhờ tham gia vào những giao dịch đen của “Lệnh Bài”. Cũng chính vì thế mà anh chàng lọt vào tầm ngắm của Han Ji Cheol – người đang truy lùng bộ mặt thật sự của “Lệnh Bài”.', 120, '2020-11-25', '2020-11-25 08:27:48', '2020-11-25 08:27:48', 7, 'Park Noo Ri', 'Ryu Jun Yeol, Yoo Ji Tae, Jo Woo Jin', 'Hàn Quốc', 'CJ Entertainment', 'Lồng tiếng Việt', NULL, 0),
(65, 'SHAZAM!', 'H6riBUe4FPM', 'upload/images/5fbf10b508034.jpg', 'Với phương châm trong mỗi chúng ta đều có một người hùng, chỉ cần một chút ma thuật để gợi ra. Shazam! kể về cậu bé Billy Batson nhờ một cơ duyên bất ngờ mà trở thành siêu anh hùng. Chỉ cần hét lên cụm từ SHAZAM!, cậu bé mười bốn tuổi sẽ biến thành một gã đàn ông trưởng thành có sức mạnh siêu nhiên.', 120, '2020-11-26', '2020-11-25 19:19:33', '2020-11-25 19:19:33', 4, 'David F. Sandberg', 'Zachary Levi, Mark Strong', 'Mỹ', 'Warner Bros, DC Entertainment', 'Thuyết Minh', 150, 1),
(66, 'HELLBOY', 'upiI7fnE4z0', 'upload/images/5fddccc3e1f54.jpg', '<p><em>Hellboy (2019)</em>&nbsp;kể cho người nghe c&acirc;u chuyện về nguồn gốc v&agrave; ch&acirc;n mệnh thực sự của&nbsp;<em>Hellboy</em>&nbsp;cũng như qu&aacute; tr&igrave;nh &aacute;c nữ Viviane Nimue t&aacute;i sinh sau hơn 16 thế kỷ bị&nbsp;<em>vua Athur</em>&nbsp;v&agrave;&nbsp;<em>ph&aacute;p sư Merlin</em>&nbsp;phong ấn. Liệu rằng&nbsp;<em>Hellboy</em>&nbsp;c&oacute; bị nữ ho&agrave;ng m&aacute;u n&agrave;y m&ecirc; hoặc v&agrave; quay trở lại ti&ecirc;u diệt lo&agrave;i người hay kh&ocirc;ng? Ra rạp xem phim để r&otilde; nh&eacute; c&aacute;c bạn.</p>\r\n\r\n<p>Phải n&oacute;i l&agrave; để t&oacute;m gọn được cốt truyện như tr&ecirc;n, Ghiền review đ&atilde; cố gắng lắm rồi &iacute; c&aacute;c bạn ạ. Nội dung phim cực kỳ d&agrave;i d&ograve;ng, lan man, đọc sub mệt mỏi lu&ocirc;n. Ch&iacute;nh v&igrave; &ocirc;m đồm qu&aacute; nhiều thứ n&ecirc;n phim g&acirc;y cảm gi&aacute;c kh&oacute; hiểu v&agrave; nh&agrave;m ch&aacute;n cho người xem, nhất l&agrave; trong 1/2 thời lượng đầu của phim, mọi thứ trở n&ecirc;n rối rắm v&agrave; kh&oacute; tập trung lắm.</p>\r\n\r\n<p>Qua được giai đoạn n&agrave;y, bạn sẽ cảm thấy bắt được nhịp phim hơn nhưng l&uacute;c n&agrave;y kiểu như kh&ocirc;ng c&ograve;n nhiều thời gian nữa n&ecirc;n c&aacute;c t&igrave;nh tiết trong phim cứ li&ecirc;n tục nối đu&ocirc;i nhau chạy trước mắt kh&aacute;n giả để rồi pha đ&aacute;nh boss cuối kh&aacute; l&agrave; ch&aacute;n v&agrave; cụt hứng v&ocirc; c&ugrave;ng. Ngẫm lại th&igrave; suốt cả 120 ph&uacute;t vừa qua, kh&ocirc;ng biết m&igrave;nh đ&atilde; coi những g&igrave; v&agrave; điểm nhấn thật sự của phim l&agrave; ở ph&acirc;n đoạn n&agrave;o nữa n&egrave;.</p>', 120, '2020-12-16', NULL, '2020-12-19 02:49:55', 4, 'Neil Marshall', 'David Harbour, Milla Jovovich, Ian McShane', 'Mỹ', 'Nu Boyana FX', 'Thuyết Minh', 50, 0),
(67, 'LẬT MẶT: NHÀ CÓ KHÁCH', 'usxw_nsyaHs', 'upload/images/5fddcd51ef123.jpg', '<p>Nh&agrave; C&oacute; Kh&aacute;ch xoay quanh chuyến trở về nh&agrave; ngỡ rất vui vẻ đầm ấm của Vy c&ugrave;ng Hu&acirc;n v&agrave; nh&oacute;m bạn th&acirc;n gồm Th&ocirc;ng, Phương, B&igrave;nh. Tuy nhi&ecirc;n, trong thời gian thăm nh&agrave;, lần lượt từng người đều gặp những chuyện rất kỳ b&iacute; lạ l&ugrave;ng, đặc biệt l&agrave; Vy rơi v&agrave;o t&igrave;nh thế nguy hiểm. Tất cả những người xung quanh đều &aacute;m chỉ nh&agrave; Vy c&oacute; ma nhưng kh&ocirc;ng ai d&aacute;m n&oacute;i ra v&agrave; chỉ d&aacute;m d&ugrave;ng từ KH&Aacute;CH theo th&ocirc;ng lệ d&acirc;n địa phương ở đ&acirc;y. L&agrave;m sao để c&oacute; thể cứu Vy v&agrave; ngăn những mối nguy hiểm tiếp theo xảy ra? Tai nạn đ&atilde; xảy đến với mẹ của Vy v&agrave; cậu em trai c&oacute; li&ecirc;n quan g&igrave; đến những thế lực hiểm &aacute;c đang đeo b&aacute;m tất cả mọi người? Sự việc c&agrave;ng diễn tiến đ&aacute;ng sợ hơn khiến cơn t&ograve; m&ograve; l&ecirc;n đến đỉnh điểm, v&agrave; cả nh&oacute;m quyết định t&igrave;m cho ra sự thật!</p>', 120, '2020-12-19', NULL, '2020-12-19 02:52:17', 6, 'Lý Hải', 'Huy Khánh, Mạc Văn Khoa, Tú Trinh', 'Việt Nam', 'Lý Hải Production', 'Lồng Tiếng', 50, 0),
(68, 'QUÝ CÔ LỪA ĐẢO', '5sIYUx6lDC8', 'upload/images/5fddce718f4cf.jpg', '<p>Theo d&otilde;i bộ phim, kh&aacute;n giả sẽ được chứng kiến m&agrave;n &quot;song kiếm hợp b&iacute;ch&quot; của hai nữ ng&ocirc;i sao Anne Hathaway v&agrave; Rebel Wilson. Theo đ&oacute;, họ v&agrave;o vai c&aacute;c qu&yacute; c&ocirc; xinh đẹp, sang chảnh lu&ocirc;n mang trong m&igrave;nh mục ti&ecirc;u lừa đảo những g&atilde; đ&agrave;n &ocirc;ng gi&agrave;u c&oacute;...</p>', 120, '2020-12-18', NULL, '2020-12-19 02:58:10', 4, 'Chris Addison', 'Anne Hathaway, Rebel Wilson', 'Mỹ', 'Camp Sugar', 'Thuyết Minh', NULL, 1),
(69, 'FAST & FURIOUS: HOBBS & SHAW', 'pH7leY4mWec', 'upload/images/5fddcd940a10e.jpg', '<p>Trời ơi tin được kh&ocirc;ng?! Ai m&agrave; ngờ được rằng sẽ c&oacute; một ng&agrave;y Luke Hobbs v&agrave; Deckard Shaw lại trở th&agrave;nh đồng minh của nhau để c&ugrave;ng chống lại kẻ &aacute;c, bảo vệ nh&acirc;n loại ch&uacute;ng ta?!</p>', 120, '2020-12-19', NULL, '2020-12-19 02:53:24', 6, 'David Leitch', 'Dwayne Johnson, Jason Statham, Idris Elba', 'Mỹ', 'Universal', 'Thuyết Minh', 50, 1),
(70, 'X-MEN: PHƯỢNG HOÀNG BÓNG TỐI', 'Y_g7FjsZQy0', 'upload/images/5fddcdd654230.jpg', '<p>Jean Grey bắt đầu ph&aacute;t triển sức mạnh phi thường tiềm ẩn trong cơ thể v&agrave; n&oacute; đ&atilde; biến c&ocirc; th&agrave;nh Dark Phoenix. B&acirc;y giờ X-Men sẽ phải xem x&eacute;t cuộc sống của một th&agrave;nh vi&ecirc;n trong nh&oacute;m liệu c&oacute; đ&aacute;ng gi&aacute; hơn tất cả mạng sống con người tr&ecirc;n thế giới?</p>', 120, NULL, NULL, '2020-12-19 02:54:30', 6, 'Simon Kinberg', 'Jennifer Lawrence, Jessica Chastain, Michael Fassbender', 'Mỹ', '20th Century Fox', 'Thuyết Minh', 50, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `news`
--

CREATE TABLE `news` (
  `new_id` int(11) NOT NULL,
  `new_title` varchar(255) NOT NULL,
  `new_slug` varchar(255) NOT NULL,
  `new_desc` text NOT NULL,
  `new_content` text NOT NULL,
  `new_image` varchar(255) NOT NULL,
  `new_meta_keywords` varchar(255) NOT NULL,
  `cate_new_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `news`
--

INSERT INTO `news` (`new_id`, `new_title`, `new_slug`, `new_desc`, `new_content`, `new_image`, `new_meta_keywords`, `cate_new_id`) VALUES
(8, 'Black Panther 2 Khởi Quay Vào Mùa Hè 2021, Marvel Làm Deadpool 3 Với Ryan Reynolds', 'black-panther-2-khoi-quay-vao-mua-he-2021-marvel-lam-deadpool-3-voi-ryan-reynolds', '<p>Như thường lệ, v&agrave;o mỗi cuối tuần, h&agrave;ng loạt tin tức mới xoay quanh c&aacute;c dự &aacute;n của vũ trụ điện ảnh Marvel lại được đăng tải. Tất nhi&ecirc;n, ch&uacute;ng lại tiếp tục khiến &ldquo;d&acirc;n t&igrave;nh&rdquo; phải đứng ngồi kh&ocirc;ng y&ecirc;n v&igrave; qu&aacute; h&aacute;o hức, mong chờ&hellip;</p>', '<p>Mới đ&acirc;y, The Hollywood Reporter đ&atilde; tiết lộ Marvel Studios đang l&ecirc;n kế hoạch sản xuất Black Panther 2 v&agrave;o th&aacute;ng 7.2021.</p>\r\n\r\n<p><img alt=\"\" height=\"338\" src=\"https://www.galaxycine.vn/media/2020/11/21/news3_1605933985744.jpg\" width=\"600\" /></p>\r\n\r\n<p>Trang tin n&agrave;y cũng cho biết th&ecirc;m ng&ocirc;i sao người Mexico - Tenoch Huerta sẽ đảm nhiệm vai phản diện ch&iacute;nh trong phần phim mới n&agrave;y. Tenoch Huerta từng để lại dấu ấn trong một số dự &aacute;n phim ảnh như Here on Earth, Son of Monarchs v&agrave; đặc biệt l&agrave; Narcos: Mexico.</p>\r\n\r\n<p>Trong khi đ&oacute;, nh&acirc;n vật Shuri &ndash; em g&aacute;i của T&rsquo;Challa do nữ diễn vi&ecirc;n Letitia Wright thể hiện được dự b&aacute;o l&agrave; sẽ c&oacute; vai tr&ograve; nổi bật, quan trọng hơn. Tuy nhi&ecirc;n điều n&agrave;y cũng chưa ho&agrave;n to&agrave;n đồng nghĩa với việc Marvel sẽ đưa Shuri sẽ trở th&agrave;nh Black Panther tiếp theo sau sự ra đi của Chadwick Boseman.</p>\r\n\r\n<p>Qua một b&agrave;i phỏng vấn gần đ&acirc;y, Ph&oacute; Gi&aacute;m đốc điều h&agrave;nh của Marvel - Victoria Alonso &ndash; đ&atilde; thẳng thắn n&oacute;i &ldquo;KH&Ocirc;NG&rdquo; khi được hỏi về tin đồn rằng họ sẽ sử dụng CGI để thay thế cho Chadwick Boseman trong Black Panther 2. Như vậy r&otilde; r&agrave;ng Disney v&agrave; Marvel đang l&ecirc;n một một kế hoạch để l&agrave;m thế n&agrave;o tiếp tục ph&aacute;t triển thương hiệu phim m&agrave; vẫn thể hiện được sự t&ocirc;n trọng, tri &acirc;n với Chadwick Boseman.</p>\r\n\r\n<p>Black Panther 2 dự kiến sẽ ra mắt tại c&aacute;c&nbsp;<strong><a href=\"https://www.galaxycine.vn/\">rạp chiếu phim</a>&nbsp;</strong>v&agrave;o th&aacute;ng 5.2022.</p>\r\n\r\n<p><img alt=\"\" height=\"338\" src=\"https://www.galaxycine.vn/media/2020/11/21/news1_1605934016250.jpg\" width=\"600\" /></p>\r\n\r\n<p>Một tin tức kh&aacute;c li&ecirc;n quan đến MCU cũng &ldquo;n&oacute;ng hổi&rdquo; kh&ocirc;ng k&eacute;m đ&oacute; ch&iacute;nh l&agrave; theo Deadline đăng tải, Marvel đang hợp t&aacute;c c&ugrave;ng hai chị em Wendy Molyneux v&agrave; Lizzie Molyneux để viết kịch bản Deadpool 3. Bộ đ&ocirc;i n&agrave;y đ&atilde; được đề cử giải Emmy trong t&aacute;m năm li&ecirc;n tiếp v&agrave; họ đ&atilde; gi&agrave;nh được chiến thắng v&agrave;o năm 2017. Sự xuất hiện của Wendy Molyneux v&agrave; Lizzie Molyneux (bi&ecirc;n kịch của Bob&#39;s Burgers &ndash; một bộ phim hoạt h&igrave;nh sitcom của Mỹ) được cho l&agrave; sẽ g&oacute;p phần tăng th&ecirc;m t&iacute;nh h&agrave;i hước của bộ phim.</p>\r\n\r\n<p>Tất nhi&ecirc;n, vai ch&iacute;nh của phim vẫn do ng&ocirc;i sao Ryan Reynolds tiếp tục đảm nhiệm. Kh&ocirc;ng chỉ vậy, trang tin Deadline c&ograve;n cho biết ở phần 3 n&agrave;y, Ryan Renolds sẽ tham gia nhiều v&agrave; s&acirc;u hơn v&agrave;o qu&aacute; tr&igrave;nh sản xuất của dự &aacute;n. Về vị tr&iacute; đạo diễn, v&igrave; lịch tr&igrave;nh của David Leich (đạo diễn Deadpool 2) đ&atilde; k&iacute;n cho đến năm 2021 n&ecirc;n Marvel buộc phải t&igrave;m kiếm một c&aacute;i t&ecirc;n kh&aacute;c để gửi gắm niềm tin.</p>\r\n\r\n<p>Về nội dung, hẳn c&aacute;c kh&aacute;n giả vẫn c&ograve;n nhớ ở đoạn kết của phần phim trước, với sự gi&uacute;p đỡ của m&aacute;y du h&agrave;nh, Deadpool đ&atilde; c&oacute; thể nhảy v&agrave;o bất kỳ d&ograve;ng thời gian n&agrave;o m&agrave; anh ấy muốn. C&oacute; lẽ đ&acirc;y sẽ ch&iacute;nh l&agrave; cầu nối để MCU đưa anh ch&agrave;ng &ldquo;bất trị&rdquo; n&agrave;y gia nhập đội ngũ của c&aacute;c Avengers. Sẽ ra sao nếu v&agrave;o một ng&agrave;y đẹp trời, Deadpool v&agrave; Doctor Strange v&ocirc; t&igrave;nh gặp nhau khi đang chu du khắp c&aacute;c thực tại nhỉ?</p>\r\n\r\n<p>D&ugrave; thế n&agrave;o đi nữa, việc Deadpool được sản xuất bởi đội ngũ s&aacute;ng tạo của Marvel Studios chắc chắn sẽ tạo n&ecirc;n những chuyến phi&ecirc;u lưu mới kh&ocirc;ng k&eacute;m phần th&uacute; vị v&agrave; hấp dẫn.</p>\r\n\r\n<p><img alt=\"\" height=\"338\" src=\"https://www.galaxycine.vn/media/2020/11/21/news4_1605934047922.jpg\" width=\"600\" /></p>\r\n\r\n<p>Một tin tức kh&aacute;c li&ecirc;n quan đến&nbsp;<a href=\"https://www.galaxycine.vn/phim-dang-chieu\"><strong>phim mới</strong></a>&nbsp;Thor: Love And Thunder. Theo The Hollywood Reporter đưa tin, Thor 4 sẽ c&oacute; d&agrave;n diễn vi&ecirc;n đ&ocirc;ng đảo, đa dạng, phong ph&uacute; đến mức c&oacute; thể v&iacute; phần phim n&agrave;y như Avengers 5.</p>\r\n\r\n<p>Trước đ&oacute;, nh&acirc;n vật Star-Lord do Chris Pratt thể hiện đ&atilde; được x&aacute;c nhận l&agrave; sẽ g&oacute;p mặt trong Thor: Love And Thunder. Trong khi đấy, vai diễn của ng&ocirc;i sao Chris Blae vẫn ho&agrave;n to&agrave;n được giấu k&iacute;n.</p>\r\n\r\n<p>Thor: Love And Thunder dự kiến ​​khởi quay v&agrave;o th&aacute;ng 1.2021 v&agrave; dự kiến ​​ph&aacute;t h&agrave;nh v&agrave;o ng&agrave;y 11.2.2022.</p>\r\n\r\n<p><img alt=\"\" height=\"338\" src=\"https://www.galaxycine.vn/media/2020/11/21/news2_1605934064628.jpg\" width=\"600\" /></p>\r\n\r\n<p>Cuối c&ugrave;ng, The Hollywood Reporter cho biết Guardians of the Galaxy Vol. 3 sẽ bắt đầu sản xuất v&agrave;o cuối năm 2021 dưới sự chỉ đạo của đạo diễn James Gunn.</p>\r\n\r\n<p>Ban đầu, dự &aacute;n n&agrave;y được dự định sẽ ph&aacute;t h&agrave;nh tại&nbsp;<strong><a href=\"https://www.galaxycine.vn/\">rạp chiếu phim</a>&nbsp;</strong>v&agrave;o năm 2020. Tuy nhi&ecirc;n, những rắc rối trong qu&aacute; khứ đ&atilde; khiến James Gunn bị sa thải d&ugrave; cho kịch bản của Guardians of the Galaxy Vol. 3 đ&atilde; ho&agrave;n tất. Sau đấy, ch&iacute;nh Disney lại mời vị đạo diễn n&agrave;y quay trở lại v&agrave; tiếp tục cầm trịch dự &aacute;n. Thế nhưng l&uacute;c bấy giờ, James Gunn đang tham gia v&agrave;o t&aacute;c phẩm The Suicide Squad của DC n&ecirc;n chỉ sau khi ho&agrave;n tất hợp đồng với Warner Bros., anh mới c&oacute; thể quay trở lại tiếp tục thực hiện Vệ Binh Dải Ng&acirc;n H&agrave; 3.</p>\r\n\r\n<p>C&oacute; th&ocirc;ng tin cho rằng, Guardians of the Galaxy Vol. 3 sẽ được &ldquo;xuất kho&rdquo; v&agrave;o năm 2023.</p>', 'news470x247_1605933966437699.png', 'black', 3),
(9, 'Kiều: Hoạn Thư Chính Thức Lộ Diện Với Tạo Hình Đầy Sắc Sảo', 'kieu-hoan-thu-chinh-thuc-lo-dien-voi-tao-hinh-day-sac-sao', '<p>Hoạn Thư &ndash; biểu tượng cho sự ghen tu&ocirc;ng của người phụ nữ nhiều thế kỉ qua được nh&agrave; sản xuất phim điện ảnh &ldquo;Kiều&rdquo; tin tưởng giao cho diễn vi&ecirc;n Cao Th&aacute;i H&agrave;.</p>', '<p><em>&ldquo;Dại chi chẳng giữ lấy nền</em></p>\r\n\r\n<p><em>Tốt chi m&agrave; rước tiếng ghen v&agrave;o m&igrave;nh?&rdquo;</em></p>\r\n\r\n<p>Hoạn Thư &ndash; biểu tượng cho sự ghen tu&ocirc;ng của người phụ nữ nhiều thế kỉ qua được nh&agrave; sản xuất phim điện ảnh &ldquo;Kiều&rdquo; tin tưởng giao cho diễn vi&ecirc;n Cao Th&aacute;i H&agrave;.</p>\r\n\r\n<p>Sự xuất hiện của Hoạn Thư phần n&agrave;o h&eacute; lộ những g&igrave; m&agrave; n&agrave;ng Kiều sắp phải đối mặt. &ldquo;Ghen như Hoạn Thư&rdquo; &ndash; người đ&agrave;n b&agrave; mang tiếng ghen mu&ocirc;n đời n&agrave;y kh&ocirc;ng c&ograve;n xa lạ với người Việt. H&igrave;nh ảnh đầu ti&ecirc;n của Hoạn Thư m&agrave; nh&agrave; sản xuất tiết lộ vừa đủ mở ra c&aacute;i &ldquo;đức&rdquo; ghen kh&ocirc;ng hề tầm thường của ch&iacute;nh thất sinh ra trong nh&agrave; quyền qu&yacute; &ldquo;<em>Ở ăn th&igrave; nết cũng hay - N&oacute;i điều r&agrave;ng buộc th&igrave; tay cũng gi&agrave;</em>&rdquo;. Tuy nhi&ecirc;n, &ldquo;tiếng ghen&rdquo; của Hoạn Thư tr&ecirc;n m&agrave;n bạc sẽ được thể hiện như thế n&agrave;o th&igrave; vẫn l&agrave; một ẩn số.</p>\r\n\r\n<p>Diễn vi&ecirc;n Cao Th&aacute;i H&agrave; l&agrave; gương mặt quen thuộc của điện ảnh Việt với những vai diễn ấn tượng trong c&aacute;c bộ phim truyền h&igrave;nh như:&nbsp;<em>Tiếng S&eacute;t Trong Mưa</em>,&nbsp;<em>Đồng Tiền Quỷ &Aacute;m, Hậu Duệ Mặt Trời</em>&nbsp;(phi&ecirc;n bản Việt),&nbsp;<em>B&atilde;o Ngầm, Vũ Kh&iacute; Sắc Đẹp</em>,&hellip; Đặc biệt, với vai diễn Diệu Ngọc trong phim&nbsp;<em>B&aacute;n Chồng</em>, Cao Th&aacute;i H&agrave; đ&atilde; vinh dự nhận được giải thưởng Nữ diễn vi&ecirc;n phụ xuất sắc phim truyền h&igrave;nh tại lễ trao giải C&aacute;nh Diều 2019.</p>\r\n\r\n<p>Hoạn Thư được đ&aacute;nh gi&aacute; l&agrave; một vai diễn nặng k&iacute;, đ&ograve;i hỏi diễn vi&ecirc;n phải c&oacute; kinh nghiệm diễn xuất mới c&oacute; thể biến h&oacute;a tốt trong những ph&acirc;n đoạn t&acirc;m l&iacute; phức tạp. H&agrave;nh tr&igrave;nh t&igrave;m ra tiểu thư họ Hoạn cũng l&agrave; một b&agrave;i to&aacute;n kh&oacute; với nh&agrave; sản xuất, bởi h&igrave;nh tượng của nh&acirc;n vật n&agrave;y đ&atilde; in s&acirc;u trong tiềm thức của nhiều thế hệ. Qua c&aacute;c v&ograve;ng casting với đ&ocirc;ng đảo ứng vi&ecirc;n ở cả 3 miền Bắc- Trung- Nam, nhưng vẫn chưa t&igrave;m được gương mặt ưng &yacute;, cuối c&ugrave;ng đạo diễn Mai Thu Huyền đ&atilde; ho&agrave;n to&agrave;n bị Cao Th&aacute;i H&agrave; thuyết phục ngay trong buổi gặp thử vai đầu ti&ecirc;n.</p>\r\n\r\n<p><img alt=\"\" height=\"349\" src=\"https://www.galaxycine.vn/media/2020/11/24/1135-hoan-thu_1606209455378.JPG\" width=\"600\" /></p>\r\n\r\n<p>&ldquo;Hoạn Thư c&oacute; thể n&oacute;i l&agrave; 1 vai diễn kh&oacute; nhất trong phim, n&ecirc;n ngay từ đầu t&ocirc;i đ&atilde; ch&uacute; t&acirc;m t&igrave;m kiếm những diễn vi&ecirc;n c&oacute; nội lực tốt về diễn xuất để đảm nhiệm vai n&agrave;y. T&ocirc;i đ&atilde; để &yacute; đến Cao Th&aacute;i H&agrave; từ năm 2016 khi H&agrave; c&ugrave;ng t&ocirc;i v&agrave; Nh&atilde; Phương được đề cử hạng mục Diễn vi&ecirc;n nữ ấn tượng trong giải thưởng VTV Awards, đồng thời t&ocirc;i cũng rất th&iacute;ch khả năng diễn xuất đa dạng của H&agrave; trong những bộ&nbsp;<a href=\"https://www.galaxycine.vn/phim-dang-chieu\">phim mới</a>&nbsp;gần đ&acirc;y. Nhưng c&oacute; lẽ, quyết định quan trọng nhất để t&ocirc;i giao vai Hoạn Thư cho H&agrave; đ&oacute; ch&iacute;nh l&agrave; v&igrave; sự tr&acirc;n trọng v&agrave; chuẩn bị kỹ lưỡng của H&agrave; cho vai diễn n&agrave;y, ngay lần đầu ti&ecirc;n ch&uacute;ng t&ocirc;i gặp mặt. H&agrave; đ&atilde; đầu tư trang điểm, l&agrave;m t&oacute;c, phục trang giống như nh&acirc;n vật để g&acirc;y ấn tượng với t&ocirc;i v&agrave; H&agrave; đ&atilde; thuyết phục t&ocirc;i l&agrave; sẽ d&agrave;nh 100% thời gian cho vai diễn n&agrave;y nếu được chọn. Đối với một nh&agrave; sản xuất v&agrave; đạo diễn như t&ocirc;i th&igrave; kh&ocirc;ng c&oacute; g&igrave; hạnh ph&uacute;c hơn khi c&oacute; được người diễn vi&ecirc;n y&ecirc;u v&agrave; t&acirc;m huyết với nh&acirc;n vật của m&igrave;nh như vậy. Quả thực H&agrave; đ&atilde; khiến t&ocirc;i &lsquo;nổi da g&agrave;&rsquo; trong một số ph&acirc;n đoạn quan trọng. T&ocirc;i tin khi kh&aacute;n giả xem phim sẽ bất ngờ về nh&acirc;n vật Hoạn Thư&quot;, đạo diễn Mai Thu Huyền chia sẻ.</p>\r\n\r\n<p>D&agrave;nh t&igrave;nh y&ecirc;u lớn cho Hoạn Thư n&ecirc;n ngay từ khi vừa đọc kịch bản, Cao Th&aacute;i H&agrave; đ&atilde; tập trung mọi sự đầu tư về h&igrave;nh ảnh v&agrave; tập sống trong t&acirc;m l&iacute; nh&acirc;n vật suốt một thời gian d&agrave;i: &ldquo;H&agrave; v&ocirc; c&ugrave;ng biết ơn chị Mai Thu Huyền đ&atilde; tin tưởng v&agrave; giao vai diễn n&agrave;y cho m&igrave;nh. H&agrave; rất tr&acirc;n trọng cơ hội n&agrave;y, v&igrave; trong sự nghiệp của người diễn vi&ecirc;n kh&ocirc;ng phải l&uacute;c n&agrave;o cũng nhận được một vai c&oacute; nhiều đất diễn như vậy. Hơn thế nữa, để chuẩn bị tốt nhất cho vai diễn trước khi phim bấm m&aacute;y, H&agrave; đ&atilde; được nh&agrave; sản xuất gửi đi học một kho&aacute; huấn luyện diễn xuất ở chỗ chị Kathy Uy&ecirc;n v&agrave; tham gia rất nhiều buổi workshop ph&acirc;n t&iacute;ch t&acirc;m l&iacute; nh&acirc;n vật, cũng như tập luyện trước to&agrave;n bộ c&aacute;c ph&acirc;n đoạn trong kịch bản c&ugrave;ng tổ đạo diễn. Ch&iacute;nh v&igrave; vậy, khi ra bối cảnh quay, H&agrave; đ&atilde; ho&agrave;n to&agrave;n nhập t&acirc;m v&agrave; sống hết m&igrave;nh với cảm x&uacute;c của Hoạn Thư&rdquo;.</p>\r\n\r\n<p>Tạo h&igrave;nh của Cao Th&aacute;i H&agrave; trong poster nh&acirc;n vật Hoạn Thư to&aacute;t l&ecirc;n n&eacute;t sắc sảo, vẻ thanh cao của con nh&agrave; quyền qu&yacute; c&ugrave;ng đ&ocirc;i mắt sắc lạnh mang nhiều t&acirc;m sự. Liệu mi&ecirc;u tả n&agrave;y c&oacute; giống như ch&acirc;n dung m&agrave; người đời vốn khắc s&acirc;u trong tư tưởng suốt nhiều thập kỉ qua về h&igrave;nh ảnh Hoạn Thư ghen tu&ocirc;ng độc &aacute;c? Phim điện ảnh&nbsp;<em><strong>Kiều</strong></em>&nbsp;sẽ sớm mang đến c&acirc;u trả lời cho kh&aacute;n giả.</p>\r\n\r\n<p><em><strong>Kiều</strong></em>&nbsp;dự kiến sẽ ra mắt tại c&aacute;c&nbsp;rạp chiếu phim&nbsp;từ ng&agrave;y 05.03.2021.</p>', '470-hoan-thu_1606209593211851.jpg', 'Kieu', 2),
(12, 'Trốn Chạy: Khi Tình Yêu Thương Mù Quáng Biến Thành Xiềng Xích', 'tron-chay-khi-tinh-yeu-thuong-mu-quang-bien-thanh-xieng-xich', '<p><em><strong>Trốn Chạy</strong></em>&nbsp;l&agrave;&nbsp;phim mới&nbsp;thuộc thể loại kinh dị</p>', '<p><em><strong>Trốn Chạy</strong></em>&nbsp;l&agrave;&nbsp;phim mới&nbsp;thuộc thể loại kinh dị, t&acirc;m l&yacute; giật g&acirc;n đầy hấp dẫn, được mang đến từ vị đạo diễn t&agrave;i năng Aneesh Chaganty của Truy T&igrave;m Tung T&iacute;ch Ảo (Searching).</p>\r\n\r\n<p>Cốt truyện ch&iacute;nh của phim xoay quanh cuộc sống của hai mẹ con Dianne v&agrave; Chloe. Do Chloe bẩm sinh mắc rất nhiều bệnh m&atilde;n t&iacute;nh như hội chứng suy tim, hội chứng dư chất sắt, tiểu đường v&agrave; bại liệt n&ecirc;n c&ocirc; b&eacute; được mẹ m&igrave;nh chăm s&oacute;c v&agrave; học tại nh&agrave; đến tận năm 17 tuổi. Những tưởng cuộc sống của hai mẹ con tr&ocirc;i qua &ecirc;m đềm nhờ t&igrave;nh y&ecirc;u thương v&ocirc; bờ bến của Dianne. Nhưng từ khi Chloe biết được những b&iacute; mật m&agrave; mẹ m&igrave;nh giấu k&iacute;n, c&ocirc; t&igrave;m mọi c&aacute;ch để tho&aacute;t khỏi ng&ocirc;i nh&agrave; m&agrave; m&igrave;nh tưởng v&ocirc; c&ugrave;ng an to&agrave;n. Liệu việc trốn chạy c&oacute; th&agrave;nh c&ocirc;ng khi c&ocirc; thậm ch&iacute; c&ograve;n kh&ocirc;ng thể đi đứng như người b&igrave;nh thường?</p>\r\n\r\n<p>Bi&ecirc;n kịch ki&ecirc;m đạo diễn Aneesh Chaganty chứng tỏ m&igrave;nh rất chắc tay trong việc tạo ra những bộ phim đầy cuốn h&uacute;t. Kịch bản được x&acirc;y dựng tốt, chỉ cần d&agrave;nh v&agrave;i ph&uacute;t ban đầu đ&atilde; giới thiệu cho kh&aacute;n giả ho&agrave;n cảnh đặc biệt của hai mẹ con. Kể từ l&uacute;c Chloe ph&aacute;t hiện ra mẹ m&igrave;nh c&oacute; nhiều điều bất thường, bộ phim trở n&ecirc;n kịch t&iacute;nh từng ph&uacute;t, khi kh&aacute;n giả phải d&otilde;i theo c&ocirc; dần kh&aacute;m ph&aacute; kế hoạch kinh ho&agrave;ng m&agrave; mẹ m&igrave;nh sắp đặt bấy l&acirc;u nay.</p>\r\n\r\n<p><img alt=\"\" height=\"349\" src=\"https://www.galaxycine.vn/media/2020/11/25/1135-tron-chay_1606294274769.jpg\" width=\"600\" /></p>\r\n\r\n<p>Đối với người b&igrave;nh thường khi muốn tho&aacute;t khỏi người mẹ th&ocirc;ng minh, quỷ quyệt đ&atilde; kh&oacute;, th&igrave; việc n&agrave;y đối với một c&ocirc; g&aacute;i tật nguyền như Chole lại c&agrave;ng gian nan hơn gấp bội. Nh&igrave;n c&ocirc; b&eacute; phải khổ sở b&ograve; lết từ ph&ograve;ng n&agrave;y qua ph&ograve;ng kh&aacute;c, hay tự m&igrave;nh phải nhảy cầu thang chỉ để tự do khiến kh&aacute;n giả x&oacute;t xa thật sự. Chẳng cần ai hạnh hạ, ch&iacute;nh căn bệnh trường kỳ của Chloe đ&atilde; khiến c&ocirc; b&eacute; đau đớn c&ugrave;ng cực rồi.</p>\r\n\r\n<p>Một điểm thu h&uacute;t tiếp theo đến từ diễn xuất rất tốt của d&agrave;n diễn vi&ecirc;n. V&agrave;o vai người mẹ thương con đến m&ugrave; qu&aacute;ng l&agrave; &quot;nữ ho&agrave;ng của d&ograve;ng phim kinh dị&quot; Sarah Paulson. Vai diễn b&agrave; mẹ c&oacute; những vấn đề về t&acirc;m l&yacute; v&agrave; muốn sở hữu con m&igrave;nh kh&ocirc;ng thể l&agrave;m kh&oacute; được Sarah, khi c&ocirc; đ&atilde; qu&aacute; quen thuộc với dạng vai n&agrave;y qua c&aacute;c t&aacute;c phẩm American Horror Story, Ratched hay American Crime Story... C&ocirc; nhập t&acirc;m xuất sắc từ cử chỉ, h&agrave;nh động đến những biểu cảm tr&ecirc;n gương mặt. L&agrave; một nh&acirc;n vật phản diện nhưng kh&aacute;n giả kh&oacute; c&oacute; thể gh&eacute;t vai diễn n&agrave;y, v&igrave; bản năng người mẹ của c&ocirc; qu&aacute; lớn v&agrave; mọi sai phạm đều xuất ph&aacute;t từ t&igrave;nh mẫu tử sai tr&aacute;i. C&ograve;n Chloe do diễn vi&ecirc;n trẻ Kiera Allen thủ vai. Kiera đ&atilde; tạo một cảm gi&aacute;c v&ocirc; c&ugrave;ng ch&acirc;n thật với c&aacute;c cảnh khổ sở trong phim, khi ngo&agrave;i đời c&ocirc; cũng d&ugrave;ng xe lăn từ nhỏ v&agrave; qu&aacute; quen với việc sử dụng n&oacute; cũng như những kh&oacute; khăn khi kh&ocirc;ng c&oacute; phương tiện n&agrave;y.</p>\r\n\r\n<p>N&oacute;i t&oacute;m lại, bộ phim rất hấp dẫn khi x&acirc;y dựng một c&acirc;u chuyện đầy kịch t&iacute;nh c&ugrave;ng với d&agrave;n nh&acirc;n vật c&oacute; chiều s&acirc;u.</p>\r\n\r\n<p><em><strong>Trốn Chạy</strong></em>&nbsp;đ&atilde; ra mắt tại c&aacute;c&nbsp;rạp chiếu phim&nbsp;từ ng&agrave;y 20.11.2020.</p>\r\n\r\n<p>&nbsp;</p>', 'preview877.jpg', 'trongchay', 3),
(13, 'Những Sự Thật Thú Vị Về Gia Đình Croods', 'nhung-su-that-thu-vi-ve-gia-dinh-croods', '<p>M&agrave;n ra mắt của Gia Đ&igrave;nh Croods: Kỷ Nguy&ecirc;n Mới ch&iacute;nh thức lập kỷ lục phim c&oacute; doanh thu mở m&agrave;n cao nhất từ sau đại dịch, so&aacute;n ng&ocirc;i vị của&nbsp;Tenet x&aacute;c lập hồi th&aacute;ng 9.</p>', '<p>Tuần vừa qua, m&agrave;n ra mắt của&nbsp;<a href=\"https://www.galaxycine.vn/dat-ve/the-croods-2-a-new-age\"><em><strong>Gia Đ&igrave;nh Croods: Kỷ Nguy&ecirc;n Mớ</strong></em>i</a>&nbsp;dường như đ&atilde; mang đến hy vọng mới cho c&aacute;c&nbsp;<a href=\"https://www.galaxycine.vn/\">rạp chiếu phim</a>&nbsp;tr&ecirc;n thế giới. Kh&ocirc;ng chỉ tại Việt Nam, bom tấn hoạt h&igrave;nh của h&atilde;ng Dreamworks c&ograve;n chiếm ng&ocirc;i vương nhiều ph&ograve;ng v&eacute; ở to&agrave;n cầu. Cuộc phi&ecirc;u lưu của gia đ&igrave;nh tiền sử tr&agrave;n ngập sắc m&agrave;u sinh động v&agrave; tiếng cười rộn r&atilde; được dự đo&aacute;n sẽ tiếp tục chinh phục nhiều kh&aacute;n giả trong dịp lễ cuối năm.</p>\r\n\r\n<p>C&ugrave;ng điểm qua 5 sự thật th&uacute; vị về t&aacute;c phẩm hoạt h&igrave;nh&nbsp;<a href=\"https://www.galaxycine.vn/dat-ve/the-croods-2-a-new-age\"><em><strong>Gia Đ&igrave;nh Croods: Kỷ Nguy&ecirc;n Mới</strong></em></a>:</p>\r\n\r\n<p>1. Phim c&oacute; doanh thu mở m&agrave;n cao nhất từ sau đại dịch Covid-19</p>\r\n\r\n<p><img alt=\"\" height=\"349\" src=\"https://www.galaxycine.vn/media/2020/12/5/1135-cr-3_1607163709985.jpg\" width=\"600\" /></p>\r\n\r\n<p>Năm 2020, hệ thống rạp tại Mỹ chứng kiến một kỳ &quot;ngủ đ&ocirc;ng&quot; ảm đạm chưa từng thấy do ảnh hưởng của dịch Covid-19.&nbsp;<a href=\"https://www.galaxycine.vn/dat-ve/the-croods-2-a-new-age\"><em><strong>Gia Đ&igrave;nh Croods: Kỷ Nguy&ecirc;n Mới</strong></em></a>&nbsp;l&agrave; bộ phim hiếm hoi thu h&uacute;t được sự ch&uacute; &yacute; v&agrave; l&ocirc;i k&eacute;o được kh&aacute;n giả ra rạp kể từ sau khi đại dịch b&ugrave;ng nổ. Trong cuối tuần đầu ti&ecirc;n ra mắt tr&ecirc;n hơn 2000 rạp, phim thu về 9,7 triệu đ&ocirc; la tại Mỹ.&nbsp;<em><strong><a href=\"https://www.galaxycine.vn/dat-ve/the-croods-2-a-new-age\">Gia Đ&igrave;nh Croods: Kỷ Nguy&ecirc;n Mới</a>&nbsp;</strong></em>ch&iacute;nh thức lập kỷ lục phim c&oacute; doanh thu mở m&agrave;n cao nhất từ sau đại dịch, so&aacute;n ng&ocirc;i vị của bom tấn h&agrave;nh động Tenet x&aacute;c lập hồi th&aacute;ng 9 vừa qua.</p>\r\n\r\n<p>2. Phim truyền tải th&ocirc;ng điệp đo&agrave;n kết hợp thời</p>\r\n\r\n<p><img alt=\"\" height=\"349\" src=\"https://www.galaxycine.vn/media/2020/12/5/1135-cr-4_1607163731813.jpg\" width=\"600\" /></p>\r\n\r\n<p>Lấy bối cảnh thời tiền sử, nhưng gia đ&igrave;nh Croods chiếm được l&ograve;ng y&ecirc;u mến của đ&ocirc;ng đảo kh&aacute;n giả nhờ cảm gi&aacute;c gần gũi, được c&aacute;c nh&agrave; l&agrave;m phim truyền tải kh&eacute;o l&eacute;o. Gi&aacute; trị gia đ&igrave;nh trong bộ phim được thể hiện h&agrave;i hước, dễ đồng cảm, khiến bất cứ gia đ&igrave;nh n&agrave;o cũng c&oacute; thể cảm nhận thấy m&igrave;nh trong đ&oacute;.</p>\r\n\r\n<p>Kh&ocirc;ng chỉ c&oacute; vậy, bộ phim c&ograve;n phản ảnh tinh tế vấn đề của cả nh&acirc;n loại hiện nay. Margie Cohn - Chủ tịch h&atilde;ng DreamWorks Animation chia sẻ những th&aacute;ch thức m&agrave; nh&agrave; Crood phải đối mặt trong thế giới của họ, cũng tương tự như những g&igrave; m&agrave; nh&acirc;n loại hiện đang phải trải qua, đặc biệt l&agrave; ở thời điểm hiện tại.</p>\r\n\r\n<p>Đại dịch COVID-19 đ&atilde; nhắc nhở tất cả ch&uacute;ng ta về tầm quan trọng của gia đ&igrave;nh v&agrave; sức mạnh của sự gắn kết, trong bối cảnh cả thế giới đều đang bất ổn. &ldquo;Tất cả c&aacute;c gia đ&igrave;nh đều bắt buộc thay đổi, khi họ phải đương đầu với những th&aacute;ch thức mới, đồng thời bọn trẻ cũng thay đổi khi ch&uacute;ng ng&agrave;y một trưởng th&agrave;nh. Th&ocirc;ng điệp đo&agrave;n kết l&agrave; sức mạnh c&oacute; &yacute; nghĩa cực kỳ quan trọng, đặc biệt l&agrave; trong bối cảnh thế giới ng&agrave;y nay&rdquo;, b&agrave; Cohn nhận x&eacute;t.</p>\r\n\r\n<p>3. Bộ phim thứ 100 trong sự nghiệp Nicolas Cage</p>\r\n\r\n<p><img alt=\"\" height=\"349\" src=\"https://www.galaxycine.vn/media/2020/12/5/1135-cr-2_1607163768760.jpg\" width=\"600\" /></p>\r\n\r\n<p>Nicolas Cage l&agrave; một trong c&aacute;c diễn vi&ecirc;n trở lại với phần 2 của Gia đ&igrave;nh Croods sau 7 năm kể từ phần đầu. Chủ nh&acirc;n giải Oscar v&agrave;o vai Grug, &ocirc;ng bố kh&oacute; t&iacute;nh v&agrave; c&oacute; xu hướng bảo vệ gia đ&igrave;nh một c&aacute;ch th&aacute;i qu&aacute; nhưng cũng cực kỳ t&igrave;nh cảm. Gia Đ&igrave;nh Croods: Kỷ Nguy&ecirc;n Mới đ&aacute;nh dấu bộ phim thứ 100 trong sự nghiệp diễn xuất của nam diễn vi&ecirc;n 56 tuổi. Đ&acirc;y cũng l&agrave; bộ phim hoạt h&igrave;nh đầu ti&ecirc;n Nicolas Cage nhận lời trở lại lồng tiếng cho phần tiếp theo.</p>\r\n\r\n<p>4. Nh&agrave; soạn nhạc điều h&agrave;nh nhạc c&ocirc;ng từ khoảng c&aacute;ch gần 9000 km</p>\r\n\r\n<p><img alt=\"\" height=\"349\" src=\"https://www.galaxycine.vn/media/2020/12/5/1135-cr-5_1607163807921.jpg\" width=\"600\" /></p>\r\n\r\n<p>Qu&aacute; tr&igrave;nh thực hiện bộ phim đ&atilde; gặp kh&ocirc;ng &iacute;t trắc trở, trong đ&oacute; c&oacute; đợt b&ugrave;ng ph&aacute;t dịch Covid-19. Do đ&atilde; ấn định lịch ph&aacute;t h&agrave;nh trong năm 2020, h&atilde;ng Universal c&ugrave;ng đội ngũ l&agrave;m phim phải chạy nước r&uacute;t để ho&agrave;n th&agrave;nh cho kịp tiến độ. Trong suốt thời gian dịch bệnh v&agrave; thậm ch&iacute; l&agrave; phong tỏa, &ecirc;-k&iacute;p l&agrave;m phim vẫn l&agrave;m việc từ nh&agrave; ri&ecirc;ng hết c&ocirc;ng suất. Kh&ocirc;ng thể đến London để trực tiếp thu &acirc;m cho phần nhạc phim, nh&agrave; soạn nhạc Mark Mothersbaugh phải chỉ đạo nhạc trưởng c&ugrave;ng 80 đến 100 nhạc c&ocirc;ng từ xa. &quot;Kh&aacute; kỳ quặc khi ngồi ở Los Angeles v&agrave; điều h&agrave;nh c&ocirc;ng việc ở Abbey Road, nhưng ch&uacute;ng t&ocirc;i cũng đ&atilde; giải quyết được một số vấn đề về mặt kỹ thuật. Khi micro đ&atilde; được đặt đ&uacute;ng vị tr&iacute;, ch&uacute;ng t&ocirc;i bắt tay v&agrave;o c&ocirc;ng việc của m&igrave;nh m&agrave; kh&ocirc;ng gặp phải một trở ngại n&agrave;o&rdquo;, Mark Mothersbaugh chia sẻ.</p>\r\n\r\n<p>5. H&igrave;nh ảnh &quot;Hội chị em sấm s&eacute;t&quot; lấy cảm hứng từ ban nhạc rock huyền thoại</p>\r\n\r\n<p><img alt=\"\" height=\"349\" src=\"https://www.galaxycine.vn/media/2020/12/5/1135-cr-1_1607163809519.jpg\" width=\"600\" /></p>\r\n\r\n<p>Sự xuất hiện của &ldquo;Hội Chị Em Sấm S&eacute;t&rdquo; ở cuối phần&nbsp;<a href=\"https://www.galaxycine.vn/phim-dang-chieu\">phim mới</a>&nbsp;trở th&agrave;nh khoảnh khắc được kh&aacute;n giả đ&aacute;nh gi&aacute; l&agrave; ấn tượng nhất. Nh&oacute;m nữ nh&acirc;n vật &quot;quyền lực&quot; do b&agrave; ngoại cầm đầu đ&atilde; c&oacute; m&agrave;n x&ocirc;ng pha khiến ai cũng phải ngỡ ng&agrave;ng. Gi&aacute;m đốc nghệ thuật của bộ phim - Peter Zaslav tiết lộ, cảnh phim n&agrave;y được &ocirc;ng lấy cảm hứng từ b&igrave;a những album nhạc heavy-metal của c&aacute;c nghệ sĩ rock lừng danh như Iron Maiden v&agrave; Slayer. Những d&ograve;ng chữ khổ lớn được in đậm, đ&uacute;ng theo phong c&aacute;ch những bức vẽ của hoạ sĩ vẽ tranh minh hoạ nổi tiếng nhất thế kỷ 20 Frank Frazetta, được sử dụng để tạo n&ecirc;n h&igrave;nh ảnh những người phụ nữ mạnh mẽ, xuất hiện để l&agrave;m cứu tinh cho c&aacute;nh đ&agrave;n &ocirc;ng.</p>\r\n\r\n<p><a href=\"https://www.galaxycine.vn/dat-ve/the-croods-2-a-new-age\"><em><strong>Gia Đ&igrave;nh Croods: Kỷ Nguy&ecirc;n Mới</strong></em></a>&nbsp;đang chiếu tại c&aacute;c hệ thống rạp tr&ecirc;n to&agrave;n quốc.</p>\r\n\r\n<p>&nbsp;</p>', 'photo1606296532212-16062965327982136600033997.png', 'giadinhcroods', 3);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('thaonguyen@gmail.com', '$2y$10$npZqikldxZQeZIzCI0brIuLNYpDGTf23LH5Fu/VxvUDfgEamobyjC', '2020-06-21 03:46:26'),
('admin@gmail.com', '$2y$10$V8F5wAikZIBrXqtLwP/u3.1OWTd570CSaOQOLK.ZWZHAG0Zag3ga2', '2020-11-10 08:54:18'),
('nguyennttps08770@fpt.edu.vn', '$2y$10$gudgBiui2yfDm4CTdaeT2ufvpC7yo7TKQHyhOshOEk79c1WN5a.m.', '2020-11-10 09:16:52'),
('wixc8657@gmail.com', '$2y$10$kK.1d6/E3TdsLop6CvwzuuA5cyliSYnEF7tSgVq1zW1CkRvkt9n9q', '2020-11-10 09:17:49'),
('nguyennttps08870@fpt.edu.vn', '$2y$10$UGOUUy1CkeYiSq7NHjR7MeP.t3IFPbV5begbx1GgO8hCJ0DtGWMtS', '2020-11-22 01:46:37'),
('thaonguyenvivo2000@gmail.com', '$2y$10$/EtczkdkT9W.euXCCrhrHe5jTyPYzUcz/o10gYadyQYfAuPxsEkEG', '2020-11-24 19:32:22'),
('minhminh@gmail.com', '$2y$10$dIc6h4xSbf54g479w1B.e.xcC7FhiH90tGsN/oQK9C9tj.uO9u.Na', '2020-12-09 21:53:16');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `room`
--

CREATE TABLE `room` (
  `roomId` int(16) NOT NULL,
  `number` int(2) NOT NULL,
  `status` int(2) NOT NULL,
  `theaterId` int(16) NOT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `room`
--

INSERT INTO `room` (`roomId`, `number`, `status`, `theaterId`, `updated_at`, `created_at`) VALUES
(1, 1, 0, 4, '2020-11-24 20:31:25', NULL),
(2, 2, 0, 4, NULL, NULL),
(4, 3, 1, 1, '2020-11-24 21:24:00', NULL),
(6, 4, 0, 1, '2020-11-24 20:12:30', '2020-11-24 20:12:30'),
(7, 4, 0, 1, '2020-11-24 20:31:17', '2020-11-24 20:31:17');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `schedule`
--

CREATE TABLE `schedule` (
  `id_schedule` int(11) NOT NULL,
  `date` date NOT NULL,
  `time` time NOT NULL,
  `movieId` int(16) NOT NULL,
  `roomId` int(16) NOT NULL,
  `updates` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `schedule`
--

INSERT INTO `schedule` (`id_schedule`, `date`, `time`, `movieId`, `roomId`, `updates`) VALUES
(2, '2020-11-03', '00:00:12', 53, 2, '2020-11-11 14:36:23');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `seat`
--

CREATE TABLE `seat` (
  `seatId` int(16) NOT NULL,
  `seatName` varchar(4) COLLATE utf8_unicode_ci NOT NULL,
  `ticketId` int(16) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `theater`
--

CREATE TABLE `theater` (
  `theaterId` int(16) NOT NULL,
  `name` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `address` varchar(256) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `theater`
--

INSERT INTO `theater` (`theaterId`, `name`, `address`, `created_at`, `updated_at`) VALUES
(1, 'Poly Tân Bình', '246 Đường Nguyễn Hồng Đào, Phường 13, Tân Bình, Thành phố Hồ Chí Minh', NULL, '2020-12-19 03:00:41'),
(4, 'Poly Thủ Đức', 'THỦ ĐỨC, 1 Đường Số 17, khu phố 3, Thủ Đức, Thành phố Hồ Chí Minh, Việt Nam', '2020-11-23 08:55:17', '2020-12-19 03:01:38');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `ticket`
--

CREATE TABLE `ticket` (
  `ticketId` int(16) NOT NULL,
  `ticketCode` varchar(8) COLLATE utf8_unicode_ci NOT NULL,
  `ticketPrice` int(32) NOT NULL,
  `ticketSale` date NOT NULL,
  `sheduleId` int(16) NOT NULL,
  `adminId` int(16) DEFAULT NULL,
  `userId` int(16) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` int(16) NOT NULL,
  `name` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `born` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `power` varchar(6) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'user'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `name`, `password`, `email`, `born`, `created_at`, `updated_at`, `remember_token`, `power`) VALUES
(15, 'nguyen nguyenthi', '$2y$10$RXe.jGc.2Al8/NS4WHB/LeCFtKqC8O6.ndixNFjP74wqmmHtLEtva', 'thaonguyenvivo2000@gmail.com', '2020-11-11', '2020-11-25 00:15:06', '2020-11-25 00:15:06', NULL, 'admin'),
(19, 'Minh', '113114', 'minhminh@gmail.com', '2020-08-01', NULL, NULL, NULL, 'user');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `banner`
--
ALTER TABLE `banner`
  ADD PRIMARY KEY (`banner_id`);

--
-- Chỉ mục cho bảng `category_movie`
--
ALTER TABLE `category_movie`
  ADD PRIMARY KEY (`id_tl`);

--
-- Chỉ mục cho bảng `category_new`
--
ALTER TABLE `category_new`
  ADD PRIMARY KEY (`cate_new_id`);

--
-- Chỉ mục cho bảng `combo`
--
ALTER TABLE `combo`
  ADD PRIMARY KEY (`id_combo`);

--
-- Chỉ mục cho bảng `comment`
--
ALTER TABLE `comment`
  ADD PRIMARY KEY (`id_comment`),
  ADD KEY `bl-movie` (`movieId`);

--
-- Chỉ mục cho bảng `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `movies`
--
ALTER TABLE `movies`
  ADD PRIMARY KEY (`movieId`),
  ADD KEY `fk_movie_category` (`id_tl`);

--
-- Chỉ mục cho bảng `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`new_id`),
  ADD KEY `cate_new_id` (`cate_new_id`);

--
-- Chỉ mục cho bảng `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Chỉ mục cho bảng `room`
--
ALTER TABLE `room`
  ADD PRIMARY KEY (`roomId`),
  ADD KEY `theater` (`theaterId`);

--
-- Chỉ mục cho bảng `schedule`
--
ALTER TABLE `schedule`
  ADD PRIMARY KEY (`id_schedule`),
  ADD KEY `movie` (`movieId`) USING BTREE,
  ADD KEY `room` (`roomId`);

--
-- Chỉ mục cho bảng `seat`
--
ALTER TABLE `seat`
  ADD PRIMARY KEY (`seatId`),
  ADD KEY `ticket` (`ticketId`);

--
-- Chỉ mục cho bảng `theater`
--
ALTER TABLE `theater`
  ADD PRIMARY KEY (`theaterId`) USING BTREE;

--
-- Chỉ mục cho bảng `ticket`
--
ALTER TABLE `ticket`
  ADD PRIMARY KEY (`ticketId`),
  ADD KEY `schedule` (`sheduleId`),
  ADD KEY `admin` (`adminId`),
  ADD KEY `user` (`userId`) USING BTREE;

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `banner`
--
ALTER TABLE `banner`
  MODIFY `banner_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `category_movie`
--
ALTER TABLE `category_movie`
  MODIFY `id_tl` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `category_new`
--
ALTER TABLE `category_new`
  MODIFY `cate_new_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `combo`
--
ALTER TABLE `combo`
  MODIFY `id_combo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `comment`
--
ALTER TABLE `comment`
  MODIFY `id_comment` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT cho bảng `contact`
--
ALTER TABLE `contact`
  MODIFY `id` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `movies`
--
ALTER TABLE `movies`
  MODIFY `movieId` int(16) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;

--
-- AUTO_INCREMENT cho bảng `news`
--
ALTER TABLE `news`
  MODIFY `new_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT cho bảng `room`
--
ALTER TABLE `room`
  MODIFY `roomId` int(16) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `schedule`
--
ALTER TABLE `schedule`
  MODIFY `id_schedule` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `seat`
--
ALTER TABLE `seat`
  MODIFY `seatId` int(16) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `theater`
--
ALTER TABLE `theater`
  MODIFY `theaterId` int(16) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `ticket`
--
ALTER TABLE `ticket`
  MODIFY `ticketId` int(16) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` int(16) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `movies`
--
ALTER TABLE `movies`
  ADD CONSTRAINT `fk_movie_category` FOREIGN KEY (`id_tl`) REFERENCES `category_movie` (`id_tl`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Các ràng buộc cho bảng `news`
--
ALTER TABLE `news`
  ADD CONSTRAINT `news_ibfk_1` FOREIGN KEY (`cate_new_id`) REFERENCES `category_new` (`cate_new_id`);

--
-- Các ràng buộc cho bảng `room`
--
ALTER TABLE `room`
  ADD CONSTRAINT `room_ibfk_1` FOREIGN KEY (`theaterId`) REFERENCES `theater` (`theaterId`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `schedule`
--
ALTER TABLE `schedule`
  ADD CONSTRAINT `schedule_ibfk_1` FOREIGN KEY (`movieId`) REFERENCES `movies` (`movieId`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `schedule_ibfk_2` FOREIGN KEY (`roomId`) REFERENCES `room` (`roomId`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `seat`
--
ALTER TABLE `seat`
  ADD CONSTRAINT `seat_ibfk_1` FOREIGN KEY (`ticketId`) REFERENCES `ticket` (`ticketId`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `ticket`
--
ALTER TABLE `ticket`
  ADD CONSTRAINT `ticket_ibfk_1` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `ticket_ibfk_2` FOREIGN KEY (`sheduleId`) REFERENCES `schedule` (`id_schedule`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
