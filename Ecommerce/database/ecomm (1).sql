-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 25, 2020 at 06:29 AM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.3.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ecomm`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `cat_slug` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `name`, `cat_slug`) VALUES
(1, 'Laptops', 'laptops'),
(2, 'Desktop PC', 'desktop-pc'),
(3, 'Tablets', 'tablets'),
(4, 'Smart Phones', ''),
(16, 'Motherboard', 'motherboard'),
(17, 'Processor', 'procie'),
(18, 'Memory', 'memory'),
(19, 'Graphic Card', 'vcard'),
(20, 'PSU', 'psu\r\n'),
(21, 'Accessories', 'etc');

-- --------------------------------------------------------

--
-- Table structure for table `details`
--

CREATE TABLE `details` (
  `id` int(11) NOT NULL,
  `sales_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `details`
--

INSERT INTO `details` (`id`, `sales_id`, `product_id`, `quantity`) VALUES
(14, 9, 11, 2),
(15, 9, 13, 5),
(16, 9, 3, 2),
(17, 9, 1, 3),
(18, 10, 13, 3),
(19, 10, 2, 4),
(20, 10, 19, 5),
(21, 11, 11, 2),
(22, 12, 15, 1),
(23, 12, 31, 1),
(24, 12, 36, 1),
(25, 12, 35, 1),
(26, 12, 37, 1),
(27, 12, 29, 1),
(28, 13, 56, 1),
(29, 13, 34, 1),
(30, 14, 70, 1),
(31, 14, 66, 4),
(32, 15, 32, 1),
(33, 15, 10, 1),
(34, 15, 66, 1),
(35, 16, 70, 1),
(36, 16, 67, 1),
(37, 16, 29, 1),
(38, 16, 7, 1),
(39, 16, 2, 1),
(40, 17, 70, 1),
(41, 17, 28, 1),
(42, 17, 37, 1),
(43, 17, 65, 1),
(44, 18, 36, 5),
(45, 18, 32, 3),
(46, 19, 66, 1),
(47, 20, 11, 1),
(48, 20, 34, 1),
(49, 21, 38, 2),
(50, 21, 34, 1),
(51, 21, 70, 1),
(52, 22, 36, 1),
(53, 22, 50, 3),
(54, 22, 69, 1),
(55, 23, 62, 1),
(56, 24, 50, 7),
(57, 24, 55, 1),
(58, 24, 61, 1),
(59, 24, 70, 1),
(60, 24, 68, 1),
(61, 25, 2, 1),
(62, 25, 39, 1),
(63, 25, 67, 1),
(64, 25, 65, 1),
(65, 26, 2, 1),
(66, 26, 65, 1),
(67, 26, 59, 1),
(68, 27, 36, 1),
(69, 27, 41, 1),
(70, 27, 64, 1),
(71, 27, 67, 1),
(72, 27, 70, 1),
(73, 28, 10, 1),
(74, 29, 50, 1),
(75, 29, 61, 1),
(76, 29, 69, 1);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `name` text NOT NULL,
  `description` text NOT NULL,
  `slug` varchar(200) NOT NULL,
  `price` double NOT NULL,
  `photo` varchar(200) NOT NULL,
  `date_view` date NOT NULL,
  `counter` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `category_id`, `name`, `description`, `slug`, `price`, `photo`, `date_view`, `counter`) VALUES
(1, 1, 'DELL Inspiron 15 7000 15.6', '<p>15-inch laptop ideal for gamers. Featuring the latest Intel&reg; processors for superior gaming performance, and life-like NVIDIA&reg; GeForce&reg; graphics and an advanced thermal cooling design.</p>\r\n', 'dell-inspiron-15-7000-15-6', 899, 'dell-inspiron-15-7000-15-6.jpg', '2020-10-13', 2),
(2, 1, 'MICROSOFT Surface Pro 4 & Typecover - 128 GB', '<p>Surface Pro 4 powers through everything you need to do, while being lighter than ever before</p>\r\n\r\n<p>The 12.3 PixelSense screen has extremely high contrast and low glare so you can work through the day without straining your eyes</p>\r\n\r\n<p>keyboard is not included and needed to be purchased separately</p>\r\n\r\n<p>Features an Intel Core i5 6th Gen (Skylake) Core,Wireless: 802.11ac Wi-Fi wireless networking; IEEE 802.11a/b/g/n compatible Bluetooth 4.0 wireless technology</p>\r\n\r\n<p>Ships in Consumer packaging.</p>\r\n', 'microsoft-surface-pro-4-typecover-128-gb', 799, 'microsoft-surface-pro-4-typecover-128-gb.jpg', '2020-11-09', 2),
(3, 1, 'DELL Inspiron 15 5000 15.6', '<p>Dell&#39;s 15.6-inch, midrange notebook is a bland, chunky block. It has long been the case that the Inspiron lineup lacks any sort of aesthetic muse, and the Inspiron 15 5000 follows this trend. It&#39;s a plastic, silver slab bearing Dell&#39;s logo in a mirror sheen.</p>\r\n\r\n<p>Lifting the lid reveals the 15.6-inch, 1080p screen surrounded by an almost offensively thick bezel and a plastic deck with a faux brushed-metal look. There&#39;s a fingerprint reader on the power button, and the keyboard is a black collection of island-style keys.</p>\r\n', 'dell-inspiron-15-5000-15-6', 599, 'dell-inspiron-15-5000-15-6.jpg', '2018-05-12', 1),
(4, 1, 'LENOVO Ideapad 320s-14IKB 14\" Laptop - Grey', '<p>- Made for portability with a slim, lightweight chassis design&nbsp;<br />\r\n<br />\r\n- Powerful processing helps you create and produce on the go&nbsp;<br />\r\n<br />\r\n- Full HD screen ensures crisp visuals for movies, web pages, photos and more&nbsp;<br />\r\n<br />\r\n- Enjoy warm, sparkling sound courtesy of two Harman speakers and Dolby Audio&nbsp;<br />\r\n<br />\r\n- Fast data transfer and high-quality video connection with USB-C and HDMI ports&nbsp;<br />\r\n<br />\r\nThe Lenovo&nbsp;<strong>IdeaPad 320s-14IKB 14&quot; Laptop</strong>&nbsp;is part of our Achieve range, which has the latest tech to help you develop your ideas and work at your best. It&#39;s great for editing complex documents, business use, editing photos, and anything else you do throughout the day.</p>\r\n', 'lenovo-ideapad-320s-14ikb-14-laptop-grey', 399, 'lenovo-ideapad-320s-14ikb-14-laptop-grey.jpg', '2018-05-10', 3),
(5, 3, 'APPLE 9.7\" iPad - 32 GB, Gold', '<p>9.7 inch Retina Display, 2048 x 1536 Resolution, Wide Color and True Tone Display</p>\r\n\r\n<p>Apple iOS 9, A9X chip with 64bit architecture, M9 coprocessor</p>\r\n\r\n<p>12 MP iSight Camera, True Tone Flash, Panorama (up to 63MP), Four-Speaker Audio</p>\r\n\r\n<p>Up to 10 Hours of Battery Life</p>\r\n\r\n<p>iPad Pro Supports Apple Smart Keyboard and Apple Pencil</p>\r\n', 'apple-9-7-ipad-32-gb-gold', 339, 'apple-9-7-ipad-32-gb-gold.jpg', '2020-10-13', 2),
(6, 1, 'DELL Inspiron 15 5000 15', '<p>15-inch laptop delivering an exceptional viewing experience, a head-turning finish and an array of options designed to elevate your entertainment, wherever you go.</p>\r\n', 'dell-inspiron-15-5000-15', 449.99, 'dell-inspiron-15-5000-15.jpg', '0000-00-00', 0),
(7, 3, 'APPLE 10.5\" iPad Pro - 64 GB, Space Grey (2017)', '<p>4K video recording at 30 fps</p>\r\n\r\n<p>12-megapixel camera</p>\r\n\r\n<p>Fingerprint resistant coating</p>\r\n\r\n<p>Antireflective coating</p>\r\n\r\n<p>Face Time video calling</p>\r\n', 'apple-10-5-ipad-pro-64-gb-space-grey-2017', 619, 'apple-10-5-ipad-pro-64-gb-space-grey-2017.jpg', '2020-10-13', 3),
(8, 1, 'ASUS Transformer Mini T102HA 10.1\" 2 in 1 - Silver', '<p>Versatile Windows 10 device with keyboard and pen included, 2-in-1 functionality: use as both laptop and tablet.Update Windows periodically to ensure that your applications have the latest security settings.</p>\r\n\r\n<p>All day battery life, rated up to 11 hours of video playback; 128GB Solid State storage. Polymer Battery.With up to 11 hours between charges, you can be sure that Transformer Mini T102HA will be right there whenever you need it. You can charge T102HA via its micro USB port, so you can use a mobile charger or any power bank with a micro USB connector.</p>\r\n', 'asus-transformer-mini-t102ha-10-1-2-1-silver', 549.99, 'asus-transformer-mini-t102ha-10-1-2-1-silver.jpg', '0000-00-00', 0),
(9, 2, 'PC SPECIALIST Vortex Core Lite Gaming PC', '<p>- Top performance for playing eSports and more&nbsp;<br />\r\n<br />\r\n- NVIDIA GeForce GTX graphics deliver smooth visuals&nbsp;<br />\r\n<br />\r\n- GeForce Experience delivers updates straight to your PC&nbsp;<br />\r\n<br />\r\nThe PC Specialist&nbsp;<strong>Vortex Core Lite&nbsp;</strong>is part of our Gaming range, bringing you the most impressive PCs available today. It has spectacular graphics and fast processing performance to suit the most exacting players.</p>\r\n', 'pc-specialist-vortex-core-lite-gaming-pc', 599.99, 'pc-specialist-vortex-core-lite-gaming-pc.jpg', '0000-00-00', 0),
(10, 2, 'DELL Inspiron 5675 Gaming PC - Recon Blue', '<p>All-new gaming desktop featuring powerful AMD Ryzen&trade; processors, graphics ready for VR, LED lighting and a meticulous design for optimal cooling.</p>\r\n', 'dell-inspiron-5675-gaming-pc-recon-blue', 599.99, 'dell-inspiron-5675-gaming-pc-recon-blue.jpg', '2020-11-11', 1),
(11, 2, 'HP Barebones OMEN X 900-099nn Gaming PC', '<p>What&#39;s inside matters.</p>\r\n\r\n<p>Without proper cooling, top tierperformance never reaches its fullpotential.</p>\r\n\r\n<p>Nine lighting zones accentuate theaggressive lines and smooth blackfinish of this unique galvanized steelcase.</p>\r\n', 'hp-barebones-omen-x-900-099nn-gaming-pc', 489.98, 'hp-barebones-omen-x-900-099nn-gaming-pc.jpg', '2020-10-14', 2),
(12, 2, 'ACER Aspire GX-781 Gaming PC', '<p>- GTX 1050 graphics card lets you play huge games in great resolutions&nbsp;<br />\r\n<br />\r\n- Latest generation Core&trade; i5 processor can handle demanding media software&nbsp;<br />\r\n<br />\r\n- Superfast SSD storage lets you load programs in no time&nbsp;<br />\r\n<br />\r\nThe Acer&nbsp;<strong>Aspire&nbsp;GX-781 Gaming PC&nbsp;</strong>is part of our Gaming range, which offers the most powerful PCs available today. It has outstanding graphics and processing performance to suit the most demanding gamer.|<br />\r\n<br />\r\n<br />\r\n(price can will increased on november 20, 2020)</p>\r\n', 'acer-aspire-gx-781-gaming-pc', 749.99, 'acer-aspire-gx-781-gaming-pc.jpg', '2018-05-12', 3),
(13, 2, 'HP Pavilion Power 580-015na Gaming PC', '<p>Features the latest quad core Intel i5 processor and discrete graphics. With this power, you&rsquo;re ready to take on any activity from making digital art to conquering new worlds in VR.</p>\r\n\r\n<p>Choose the performance and storage you need. Boot up in seconds with to 128 GB SSD.</p>\r\n\r\n<p>Ditch the dull grey box, this desktop comes infused with style. A new angular bezel and bold green and black design give your workspace just the right amount of attitude.</p>\r\n\r\n<p>Up to 3 times faster performance - GeForce GTX 10-series graphics cards are powered by Pascal to deliver twice the performance of previous-generation graphics cards.</p>\r\n', 'hp-pavilion-power-580-015na-gaming-pc', 799.99, 'hp-pavilion-power-580-015na-gaming-pc.jpg', '2018-05-12', 1),
(14, 2, 'LENOVO Legion Y520 Gaming PC', '<p>- Multi-task with ease thanks to Intel&reg; i5 processor&nbsp;<br />\r\n<br />\r\n- Prepare for battle with NVIDIA GeForce GTX graphics card&nbsp;<br />\r\n<br />\r\n- VR ready for the next-generation of immersive gaming and entertainment<br />\r\n<br />\r\n- Tool-less upgrade helps you personalise your system to your own demands&nbsp;<br />\r\n<br />\r\nPart of our Gaming range, which features the most powerful PCs available today, the Lenovo&nbsp;<strong>Legion Y520 Gaming PC</strong>&nbsp;has superior graphics and processing performance to suit the most demanding gamer.</p>\r\n', 'lenovo-legion-y520-gaming-pc', 899.99, 'lenovo-legion-y520-gaming-pc.jpg', '2018-05-10', 13),
(15, 2, 'PC SPECIALIST Vortex Minerva XT-R Gaming PC', '<p>- NVIDIA GeForce GTX graphics for stunning gaming visuals<br />\r\n<br />\r\n- Made for eSports with a speedy 7th generation Intel&reg; Core&trade; i5 processor<br />\r\n<br />\r\n- GeForce technology lets you directly update drivers, record your gaming and more<br />\r\n<br />\r\nThe PC Specialist&nbsp;<strong>Vortex Minerva XT-R Gaming PC</strong>&nbsp;is part of our Gaming range, which offers the most powerful PCs available. Its high-performance graphics and processing are made to meet the needs of serious gamers.</p>\r\n', 'pc-specialist-vortex-minerva-xt-r-gaming-pc', 999.99, 'pc-specialist-vortex-minerva-xt-r-gaming-pc.jpg', '2020-10-12', 1),
(16, 2, 'PC SPECIALIST Vortex Core II Gaming PC', '<p>Processor: Intel&reg; CoreTM i3-6100 Processor- Dual-core- 3.7 GHz- 3 MB cache</p>\r\n\r\n<p>Memory (RAM): 8 GB DDR4 HyperX, Storage: 1 TB HDD, 7200 rpm</p>\r\n\r\n<p>Graphics card: NVIDIA GeForce GTX 950 (2 GB GDDR5), Motherboard: ASUS H110M-R</p>\r\n\r\n<p>USB: USB 3.0 x 3- USB 2.0 x 5, Video interface: HDMI x 1- DisplayPort x 1- DVI x 2, Audio interface: 3.5 mm jack, Optical disc drive: DVD/RW, Expansion card slot PCIe: (x1) x 2</p>\r\n\r\n<p>Sound: 5.1 Surround Sound support PSU Corsair: VS350, 350W, Colour: Black- Green highlights, Box contents: PC Specialist Vortex Core- AC power cable</p>\r\n', 'pc-specialist-vortex-core-ii-gaming-pc', 649.99, 'pc-specialist-vortex-core-ii-gaming-pc.jpg', '2020-10-13', 1),
(17, 3, 'AMAZON Fire 7 Tablet with Alexa (2017) - 8 GB, Black', '<p>The next generation of our best-selling Fire tablet ever - now thinner, lighter, and with longer battery life and an improved display. More durable than the latest iPad</p>\r\n\r\n<p>Beautiful 7&quot; IPS display with higher contrast and sharper text, a 1.3 GHz quad-core processor, and up to 8 hours of battery life. 8 or 16 GB of internal storage and a microSD slot for up to 256 GB of expandable storage.</p>\r\n', 'amazon-fire-7-tablet-alexa-2017-8-gb-black', 49.99, 'amazon-fire-7-tablet-alexa-2017-8-gb-black.jpg', '2020-10-14', 1),
(18, 3, 'AMAZON Fire HD 8 Tablet with Alexa (2017) - 16 GB, Black', '<p>Take your personal assistant with you wherever you go with this Amazon Fire HD 8 tablet featuring Alexa voice-activated cloud service. The slim design of the tablet is easy to handle, and the ample 8-inch screen is ideal for work or play. This Amazon Fire HD 8 features super-sharp high-definition graphics for immersive streaming.</p>\r\n', 'amazon-fire-hd-8-tablet-alexa-2017-16-gb-black', 79.99, 'amazon-fire-hd-8-tablet-alexa-2017-16-gb-black.jpg', '2018-05-12', 2),
(19, 3, 'AMAZON Fire HD 8 Tablet with Alexa (2017) - 32 GB, Black', '<p>The next generation of our best-reviewed Fire tablet, with up to 12 hours of battery life, a vibrant 8&quot; HD display, a 1.3 GHz quad-core processor, 1.5 GB of RAM, and Dolby Audio. More durable than the latest iPad.</p>\r\n\r\n<p>16 or 32 GB of internal storage and a microSD slot for up to 256 GB of expandable storage.</p>\r\n', 'amazon-fire-hd-8-tablet-alexa-2017-32-gb-black', 99.99, 'amazon-fire-hd-8-tablet-alexa-2017-32-gb-black.jpg', '2018-05-10', 1),
(20, 3, 'APPLE 9.7\" iPad - 32 GB, Space Grey', '<p>9.7-inch Retina display, wide color and true tone</p>\r\n\r\n<p>A9 third-generation chip with 64-bit architecture</p>\r\n\r\n<p>M9 motion coprocessor</p>\r\n\r\n<p>1.2MP FaceTime HD camera</p>\r\n\r\n<p>8MP iSight camera</p>\r\n\r\n<p>Touch ID</p>\r\n\r\n<p>Apple Pay</p>\r\n', 'apple-9-7-ipad-32-gb-space-grey', 339, 'apple-9-7-ipad-32-gb-space-grey.jpg', '2018-05-12', 1),
(27, 1, 'Dell XPS 15 9560', '<p>The world&rsquo;s smallest 15.6-inch performance laptop packs powerhouse performance and a stunning InfinityEdge display &mdash; all in our most powerful XPS laptop. Featuring the latest Intel&reg; processors.</p>\r\n\r\n<h2>Operating system</h2>\r\n\r\n<p><strong>Available with Windows 10 Home&nbsp;</strong>- Get the best combination of Windows features you know and new improvements you&#39;ll love.</p>\r\n\r\n<h2>Innovation that inspires.</h2>\r\n\r\n<p>When you&rsquo;re at the forefront of ingenuity, you get noticed. That&rsquo;s why it&rsquo;s no surprise the XPS 15 was honored. The winning streak continues.</p>\r\n\r\n<h2>Meet the smallest 15.6-inch laptop on the planet.</h2>\r\n\r\n<p><strong>The world&rsquo;s only 15.6-inch InfinityEdge display*:</strong>&nbsp;The virtually borderless display maximizes screen space by accommodating a 15.6-inch display inside a laptop closer to the size of a 14-inch, thanks to a bezel measuring just 5.7mm.<br />\r\n&nbsp;<br />\r\n<strong>Operating System: Windows 10 Pro.</strong><br />\r\n<br />\r\n<strong>One-of-a-kind design:</strong>&nbsp;Measuring in at a slim 11-17mm and starting at just 4 pounds (1.8 kg) with a solid state drive, the XPS 15 is one of the world&rsquo;s lightest 15-inch performance-class laptop.</p>\r\n\r\n<h2>A stunning view, wherever you go.</h2>\r\n\r\n<p><strong>Dazzling detail:</strong>&nbsp;With the UltraSharp 4K Ultra HD display (3840 x 2160), you can see each detail of every pixel without needing to zoom in. And with 6 million more pixels than Full HD and 3 million more than the MacBook Pro, you can edit images with pinpoint accuracy without worrying about blurriness or jagged lines.<br />\r\n<br />\r\n<strong>Industry-leading color:</strong>&nbsp;The XPS 15 is the only laptop with 100% Adobe RGB color, covering a wider color gamut and producing shades of color outside conventional panels so you can see more of what you see in real life. And with over 1 billion colors, images appear smoother and color gradients are amazingly lifelike with more depth and dimension. Included is Dell PremierColor software, which automatically remaps content not already in Adobe RGB format for onscreen colors that appear amazingly accurate and true to life.<br />\r\n<br />\r\n<strong>Easy collaboration:</strong>&nbsp;See your screen from nearly every angle with an IGZO IPS panel, providing a wide viewing angle of up to 170&deg;.&nbsp;<br />\r\n<br />\r\n<strong>Brighten your day:</strong>&nbsp;With 350 nit brightness, it&rsquo;s brighter than a typical laptop.<br />\r\n<br />\r\n<strong>Touch-friendly:</strong>&nbsp;Tap, swipe and pinch your way around the screen. The optional touch display lets you interact naturally with your technology.</p>\r\n', 'dell-xps-15-9560', 1599, 'dell-xps-15-9560.jpg', '2018-07-09', 9),
(28, 4, 'Samsung Note 8', '<p>See the bigger picture and communicate in a whole new way. With the Galaxy Note8 in your hand, bigger things are just waiting to happen.&nbsp;</p>\r\n\r\n<h3>The Infinity Display that&#39;s larger than life.&nbsp;</h3>\r\n\r\n<p>More screen means more space to do great things. Go big with the Galaxy Note8&#39;s 6.3&quot; screen. It&#39;s the largest ever screen on a Note device and it still fits easily in your hand.</p>\r\n\r\n<p>*Infinity Display: a near bezel-less, full-frontal glass, edge-to-edge screen.</p>\r\n\r\n<p>*Screen measured diagonally as a full rectangle without accounting for the rounded corners.</p>\r\n\r\n<p>Use the S Pen to express yourself in ways that make a difference. Draw your own emojis to show how you feel or write a message on a photo and send it as a handwritten note. Do things that matter with the S Pen.</p>\r\n\r\n<p>*Image simulated for illustration purpose only.</p>\r\n', 'samsung-note-8', 829, 'samsung-note-8.jpg', '2020-11-13', 1),
(29, 4, 'Samsung Galaxy S9+ [128 GB]', '<h2>The revolutionary camera that adapts like the human eye.&nbsp;</h2>\r\n\r\n<h3>Capture stunning pictures in bright daylight and super low light.</h3>\r\n\r\n<p>Our category-defining Dual Aperture lens adapts like the human eye. It&#39;s able to automatically switch between various lighting conditions with ease&mdash;making your photos look great whether it&#39;s bright or dark, day or night.</p>\r\n\r\n<p>*Dual Aperture supports F1.5 and F2.4 modes. Installed on the rear camera (Galaxy S9)/rear wide camera (Galaxy S9+).</p>\r\n\r\n<p><img alt=\"\" src=\"https://www.samsung.com/global/galaxy/galaxy-s9/images/galaxy-s9_slow_gif_visual_l.jpg\" style=\"height:464px; width:942px\" />Add music. Make GIFs. Get likes</p>\r\n\r\n<p>Super Slow-mo lets you see the things you could have missed in the blink of an eye. Set the video to music or turn it into a looping GIF, and share it with a tap. Then sit back and watch the reactions roll in.</p>\r\n', 'samsung-galaxy-s9-128-gb', 889.99, 'samsung-galaxy-s9-128-gb.jpg', '2020-10-14', 1),
(30, 1, 'MSI GT 76 Titan', '<ul>\r\n	<li>CPU : Intel Core i7-7820HK 2.90 GHz Processor (8M Cache, up to 3.90 GHz)</li>\r\n	<li>OS : Windows 10</li>\r\n	<li>DISPLAY : 17.3&quot; FHD (1920*1080), 120Hz wideview 94%NTSC color Anti-Glare 3ms</li>\r\n	<li>CHIPSET : Intel&reg; CM238</li>\r\n	<li>GRAPHICS : GeForce&reg; GTX 1070 with 8GB GDDR5</li>\r\n	<li>MEMORY : 16GB DDR4-2400, 4 Slots, Max 64GB</li>\r\n	<li>STORAGE : Super Raid 4-256GB NVMe SSD +1TB (SATA) 7200rpm</li>\r\n</ul>\r\n', 'msi-gt-76-titan', 2999, 'msi-gt-76-titan_1602531527.jpg', '2020-11-09', 3),
(31, 2, 'Night Blade Series', '<ul>\r\n	<li>Windows 10 Home</li>\r\n	<li>Intel&reg; 8th Gen Core&trade; i7-8700 processor with DDR4 memory</li>\r\n	<li>Up to MSI GeForce&reg; GTX 1070 Graphics</li>\r\n	<li>Silent Storm Cooling not only cool but also silent</li>\r\n	<li>Audio Boost 3: reward your ears with true quality</li>\r\n	<li>Nahimic 3 Audio Enhancer</li>\r\n	<li>Mystic Light LED design - fantastic light effect with 16.8 millions color</li>\r\n	<li>Exclusive Gaming Center application</li>\r\n	<li>Intel&reg; 8th Gen Core&trade; i7-8700 processor with DDR4 memory</li>\r\n	<li>Up to MSI GeForce&reg; GTX 1070 Graphics</li>\r\n</ul>\r\n', 'night-blade-series', 1200, 'night-blade-series_1602531547.png', '2020-10-12', 3),
(32, 1, 'ROG Zephyrus GX531GS', '<ul>\r\n	<li>Category: AAA Gaming</li>\r\n	<li>Operating System: Windows 10 Pro - ASUS recommends Windows 10 Pro</li>\r\n	<li>Processor:Intel&reg; Core&trade; i7-8750H</li>\r\n	<li>Graphics: NVIDIA&reg; GeForce&reg; GTX 1070 (Max-Q)8GB GDDR5 VRAM</li>\r\n	<li>Memory:DDR4 2666MHz SDRAM Up to 24 GB (8 GB on board memory)</li>\r\n	<li>Storage: M.2 NVMe PCIE 3.0 x2 512GB/1TB SSD</li>\r\n	<li>Display:15.6-inch Full HD (1920x1080) IPS-level panel, 144Hz, 3ms, 100% sRGB, Pantone&reg; Validated</li>\r\n</ul>\r\n', 'rog-zephyrus-gx531gs', 2199, 'rog-zephyrus-gx531gs.png', '2020-11-13', 1),
(33, 1, 'ALIENWARE m17', '<ul>\r\n	<li>Windows&reg; OS</li>\r\n	<li>Up to 8th Generation Intel&reg; Core&trade; i9-8950HK, Overclocking up to 5.0GHz</li>\r\n	<li>Up to NVIDIA&reg; GeForce RTX&trade; 2080 8GB GDDR6 with Max-Q Design</li>\r\n	<li>Up to 32GB 2x16GB DDR4 at 2666MHz</li>\r\n	<li>Up to 1TB PCIe M.2 SSD + 1TB PCIe M.2 SSD</li>\r\n</ul>\r\n', 'alienware-m17', 1499, 'alienware-m17.jpg', '0000-00-00', 0),
(34, 2, 'ALIENWARE AURORA', '<ul>\r\n	<li>Up to Intel&reg; Core&trade; i9 9900K (8-Core/16-Thread, Overclocked up to 4.7GHz across all cores)</li>\r\n	<li>Windows 10 Home</li>\r\n	<li>Up to Dual NVIDIA GeForce&reg; RTX 2080</li>\r\n	<li>Up to 64GB Dual Channel HyperX&trade; DDR4 XMP at 3200MHz</li>\r\n	<li>Up to 1TB M.2 PCIe NVMe SSD (Boot) + 2TB 7200RPM SATA 6Gb/s (Storage)</li>\r\n</ul>\r\n', 'alienware-aurora', 1499, 'alienware-aurora_1602531748.jpg', '2020-10-14', 1),
(35, 1, 'Predator Helios 500', '<ul>\r\n	<li>Windows 10 Home</li>\r\n	<li>AMD Ryzen 7 2700 processor Octa-core 3.20 GHz</li>\r\n	<li>17.3&quot; Full HD (1920 x 1080) 16:9 IPS</li>\r\n	<li>16 GB, DDR4 SDRAM</li>\r\n	<li>256 GB SSD</li>\r\n</ul>\r\n', 'predator-helios-500', 2499, 'predator-helios-500.png', '2020-10-13', 1),
(36, 1, 'TUF Gaming fx505', '<ul>\r\n	<li>CPU: Intel Core i7-8750H.</li>\r\n	<li>GPU: NVIDIA GeForce GTX 1060 (6GB GDDR5)</li>\r\n	<li>Display: 15.6&rdquo;, Full HD (1920 x 1080), 144 Hz, IPS.</li>\r\n	<li>Storage: 512GB SSD + 1000GB HDD.</li>\r\n	<li>RAM: 32GB DDR4, 2666 MHz.</li>\r\n	<li>Weight: 2.20 kg (4.9 lbs)</li>\r\n</ul>\r\n', 'tuf-gaming-fx505', 800, 'tuf-gaming-fx505.jpg', '2020-11-09', 2),
(37, 1, 'MSI GF63', '<ul>\r\n	<li>Display: 15.6&quot; Full HD (1920 x 1080) IPS-Level 120Hz 3ms 94% NTSC (100% sRGB) Display</li>\r\n	<li>Graphics Card: NVIDIA GeForce GTX 1650 Max-Q 4GB GDDR5</li>\r\n	<li>Processor: 9th Gen Intel Coffee Lake Core i5-9300H Quad Core (2.4GHz-4.1GHz, 8MB Intel Smart Cache, 45W)</li>\r\n	<li>RAM: 8GB DDR4 2666MHz | Hard Drive: 256GB PCIe NVMe SSD</li>\r\n	<li>OS: Microsoft Windows 10 (64-bit) Multi-language</li>\r\n</ul>\r\n', 'msi-gf63', 900, 'msi-gf63.jpg', '2020-11-13', 2),
(38, 16, 'GIGABYTE X570 AORUS MASTER AMD Ryzen 3000 PCIe 4.0 SATA 6Gb/s USB 3.2 AMD X570 ATX Motherboard', '<ul>\r\n	<li>Supports AMD 3rd Gen Ryzen / 2nd Gen Ryzen / Ryzen with Radeon Vega Graphics Processors</li>\r\n	<li>Dual Channel ECC / Non-ECC Unbuffered DDR4, 4 DIMMs</li>\r\n	<li>Direct 14 Phases Infineon Digital VRM Solution with 50A PowIRstage</li>\r\n	<li>Advanced Thermal Design - Fins-Array Heatsink &amp; Direct Touch Heatpipe</li>\r\n	<li>Triple Ultra-Fast NVMe PCIe 4.0/3.0 x4 M.2 with Triple Thermal Guards</li>\r\n	<li>Intel Wi-Fi 6 802.11 ax &amp; BT 5 with AORUS Antenna</li>\r\n	<li>ALC1220-VB &amp; ESS SABRE 9118 DAC, 125dB Rear</li>\r\n	<li>Realtek 2.5GbE + Intel Gigabit LAN</li>\r\n	<li>USB TurboCharger for Mobile Device Fast Charge Support</li>\r\n	<li>RGB FUSION 2.0 with Multi-Zone Addressable LED Light Show Design</li>\r\n	<li>Smart Fan 5 - Hybrid Fan Headers with FAN STOP and Noise Detection</li>\r\n	<li>1 x Front Panel &amp; 1 x Rear USB 3.2 Gen 2 Type-C</li>\r\n	<li>Integrated I/O Shield</li>\r\n	<li>Q-Flash Plus Update BIOS Without Installing CPU, Memory, GPU</li>\r\n</ul>\r\n', 'gigabyte-x570-aorus-master-amd-ryzen-3000-pcie-4-0-sata-6gb-s-usb-3-2-amd-x570-atx-motherboard', 420.08, 'gigabyte-x570-aorus-master-amd-ryzen-3000-pcie-4-0-sata-6gb-s-usb-3-2-amd-x570-atx-motherboard.jpg', '2020-10-14', 1),
(39, 16, 'ASRock X570 TAICHI AM4 AMD Premium X570 SATA 6Gb/s ATX AMD Motherboard', '<ul>\r\n	<li>AMD Premium X570</li>\r\n	<li>Supports AMD AM4 socket Ryzen 2000 and 3000 series processors</li>\r\n	<li>AMD Ryzen series CPUs (Matisse) support DDR4 4666+(OC)/ 4400(OC)/ 4300(OC)/ 4266(OC)/ 4200(OC)/ 4133(OC)/ 3466(OC)/ 3200/ 2933/ 2667/ 2400/ 2133 ECC &amp; non-ECC, un-buffered memory</li>\r\n	<li>AMD Ryzen series CPUs (Pinnacle Ridge) support DDR4 3600+(OC)/ 3466(OC)/ 3200(OC)/ 2933/ 2667/ 2400/ 2133 ECC &amp; non-ECC, un-buffered memory</li>\r\n	<li>AMD Ryzen series CPUs (Picasso) support DDR4 3466+(OC)/ 3200(OC)/ 2933/ 2667/ 2400/ 2133 non-ECC, un-buffered memory</li>\r\n</ul>\r\n', 'asrock-x570-taichi-am4-amd-premium-x570-sata-6gb-s-atx-amd-motherboard', 352.11, 'asrock-x570-taichi-am4-amd-premium-x570-sata-6gb-s-atx-amd-motherboard.jpg', '2020-11-09', 1),
(40, 13, 'dfds', '<p>sdfsdfds</p>\r\n', 'dfds', 0, '', '0000-00-00', 0),
(41, 16, 'ASUS ROG STRIX B450-F GAMING AM4 AMD B450 SATA 6Gb/s ATX AMD Motherboard', '<ul>\r\n	<li>Powered by 2nd generation AMD Ryzen AM4 processors to maximize connectivity and speed with dual NVMe M.2, USB 3.1 Gen2, gigabit LAN and up to 64GB of DDR4 (3200 MHz)</li>\r\n	<li>5-Way Optimization with Auto-Tuning and Fan Xpert 4 automatically tailors overclocking profiles to your unique build for maximum OC performance and dynamic system cooling</li>\r\n	<li>Aura Sync RGB lighting plus 2 additional RGB headers provides a nearly endless spectrum of colors with the ability to synchronize effects across an ever-expanding ecosystem of enabled products</li>\r\n	<li>Industry-leading 8-channel HD audio with the ROG exclusive SupremeFX S1220A driven by Japanese capacitors</li>\r\n	<li>Pre-mounted I/O shield ensures streamlined installation and represents ROG&#39;s attention to detail and quality</li>\r\n</ul>\r\n', 'asus-rog-strix-b450-f-gaming-am4-amd-b450-sata-6gb-s-atx-amd-motherboard', 157.97, 'asus-rog-strix-b450-f-gaming-am4-amd-b450-sata-6gb-s-atx-amd-motherboard.jpg', '2020-11-09', 1),
(42, 16, 'MSI MEG X570 ACE Gaming Motherboard AMD AM4 SATA 6Gb/s M.2 USB 3.2 Gen 2 Wi-Fi 6 ATX', '<ul>\r\n	<li>AMD X570</li>\r\n	<li>Supports 2nd and 3rd Gen AMD Ryzen / Ryzen with Radeon Vega Graphics and 2nd Gen AMD Ryzen with Radeon Graphics Desktop Processors for AM4 socket</li>\r\n	<li>3rd Gen AMD Ryzen Processors support DDR4 5000+/ 4800/ 4733/ 4600/ 4533/ 4400/ 4266/ 4133/ 4000/ 3866/ 3733/ 3600/ 3466/ 3200/ 3066/ 3000/ 2933/ 2800/ 2667 MHz by A-XMP OC MODE, and 3200/ 3066/ 3000/ 2933/ 2800/ 2667/ 2400/ 2133/ 1866 MHz by JEDEC</li>\r\n	<li>2nd Gen AMD Ryzen Processors, 1st and 2nd Gen AMD Ryzen with Radeon Vega Graphics Processors support DDR4 3600/ 3466/ 3200/ 3066/ 3000/ 2933/ 2800/ 2667 MHz by A-XMP OC MODE, and 3200/ 3066/ 3000/ 2933/ 2800/ 2667/ 2400/ 2133/ 1866 MHz by JEDEC</li>\r\n</ul>\r\n', 'msi-meg-x570-ace-gaming-motherboard-amd-am4-sata-6gb-s-m-2-usb-3-2-gen-2-wi-fi-6-atx', 436.26, 'msi-meg-x570-ace-gaming-motherboard-amd-am4-sata-6gb-s-m-2-usb-3-2-gen-2-wi-fi-6-atx.jpg', '0000-00-00', 0),
(43, 16, 'ASUS TUF Gaming X570-PRO ', '<ul>\r\n	<li>AMD AM4 Socket: Ready for 3rd and 2nd Gen AMD Ryzen / 3rd, 2nd and 1st Gen AMD Ryzen with Radeon Graphics Processors</li>\r\n	<li>Enhanced Power Solution: 12+2 Dr. MOS power stages, 6-layer PCB, ProCool sockets, military-grade TUF components, and Digi+ VRM for maximum durability</li>\r\n	<li>Comprehensive Cooling: Active chipset heatsink, VRM heatsink, M.2 heatsink, hybrid fan headers and Fan Xpert 4</li>\r\n	<li>Next-Gen Connectivity: Dual PCIe 4.0 M.2 and USB 3.2 Gen 2 Type-A / Type-C</li>\r\n	<li>Gaming Networking: Exclusive onboard 2.5G Intel LAN, Intel WiFi 6, Bluetooth 5.1, TUF LANGuard and TurboLAN technology</li>\r\n	<li>Realtek S1200A Codec: Pristine audio quality with unprecedented 108dB signal-to-noise ratio for stereo line-out and 103dB SNR for line-in</li>\r\n	<li>Aura Sync RGB: Synchronize LED lighting with a vast portfolio of compatible PC gear, including addressable RGB strips</li>\r\n	<li>TUF Gaming Alliance: ASUS hardware ecosystem ensures the best compatibility and complementary aesthetics from components to case</li>\r\n</ul>\r\n', 'asus-tuf-gaming-x570-pro', 263.86, 'asus-tuf-gaming-x570-pro-wifi-6-amd-am4-3rd-gen-ryzen-atx-gaming-motherboard-pcie-4-0-2-5gb-lan-bios-flashback-hdmi-usb-3-2-gen-2-addressable-gen-2-rgb-header-and-aura-sync.jpg', '0000-00-00', 0),
(44, 16, 'MSI MPG X570 GAMING PRO CARBON WIFI Motherboard', '<ul>\r\n	<li>Supports 2nd and 3rd Gen AMD Ryzen / Ryzen with Radeon Vega Graphics Desktop Processors for AM4 socket</li>\r\n	<li>On-board Wi-Fi 6 (802.11ax) with mu-mimo support. supports Bluetooth 5.1</li>\r\n	<li>Mystic light rgb lets you customize the lighting with 16.8 million colors and 29 effects with support for additional rgb and rainbow led strips</li>\r\n	<li>Audio boost 4 technology with nahimic 3 software enhancement for immersive experiences</li>\r\n	<li>Frozr heatsink with patented fan design &ndash; propeller blade technology and double ball bearings. Operating system: Support for windows 10 64-bit</li>\r\n</ul>\r\n', 'msi-mpg-x570-gaming-pro-carbon-wifi-motherboard', 316.71, 'msi-mpg-x570-gaming-pro-carbon-wifi-motherboard.jpg', '0000-00-00', 0),
(45, 16, 'ASUS TUF B450M-PLUS GAMING', '<ul>\r\n	<li>AMD B450</li>\r\n	<li>AMD AM4 Socket AMD Ryzen 2nd Generation / Ryzen with Radeon Vega Graphics / Ryzen 1st Generation Processors</li>\r\n	<li>Supports CPU up to 8 cores*</li>\r\n	<li>* Due to CPU limitation, CPU cores supported varies by processor.</li>\r\n	<li>** Refer to www.asus.com for the AMD CPU support list.</li>\r\n	<li>DDR4 3200(O.C)/ 3000(O.C)/ 2800(O.C)/ 2666/ 2400/ 2133</li>\r\n	<li>* Refer to www.asus.com for the Memory QVL (Qualified Vendors List).</li>\r\n</ul>\r\n', 'asus-tuf-b450m-plus-gaming', 116.12, 'asus-tuf-b450m-plus-gaming.jpg', '0000-00-00', 0),
(46, 16, 'GIGABYTE X470 AORUS ULTRA GAMING ', '<ul>\r\n	<li>Brand: GIGABYTE</li>\r\n	<li>Expansion Slots: PCI Express 2.0 x16, PCI Express 3.0 x16</li>\r\n	<li>Capacity per Module: 6 GB</li>\r\n	<li>Socket Type: Socket AM4 Number of Memory Slots: 4</li>\r\n	<li>Compatible CPU Brand: AMD</li>\r\n	<li>Input/Output Ports: USB 2.0, HDMI, USB 3.1, USB 3.0, Ethernet (RJ-45)</li>\r\n	<li>Memory Type: DDR4 SDRAM</li>\r\n	<li>Form Factor: ATX</li>\r\n	<li>Features: On-Board Video Chipset, On-Board Audio, Multi-GPU Support</li>\r\n	<li>Custom Bundle: No</li>\r\n	<li>Appropriate For: Serious Gaming</li>\r\n</ul>\r\n', 'gigabyte-x470-aorus-ultra-gaming', 390.88, 'gigabyte-x470-aorus-ultra-gaming.jpg', '0000-00-00', 0),
(47, 16, 'ASRock Z390 STEEL LEGEND LGA 1151', '<ul>\r\n	<li>Intel Z390</li>\r\n	<li>Supports 9th and 8th Gen Intel Core Processors (Socket 1151)</li>\r\n	<li>* Not backward compatible with older generation of LGA 1151 CPUs</li>\r\n	<li>Supports DDR4 4266+(OC)/ 4133(OC)/ 4000(OC)/ 3866(OC)/ 3800(OC)/ 3733(OC)/ 3600(OC)/ 3200(OC)/ 2933(OC)/ 2800(OC)/ 2666/ 2400/ 2133 non-ECC, un-buffered memory</li>\r\n</ul>\r\n', 'asrock-z390-steel-legend-lga-1151', 178.5, 'asrock-z390-steel-legend-lga-1151.jpg', '0000-00-00', 0),
(48, 16, 'ASUS TUF B365M-PLUS GAMING (WI-FI)', '<ul>\r\n	<li>Intel B365</li>\r\n	<li>Intel Socket 1151 9th/8th Gen Intel Core, Pentium Gold and Celeron Processors</li>\r\n	<li>DDR4 2666/ 2400/ 2133 MHz</li>\r\n</ul>\r\n', 'asus-tuf-b365m-plus-gaming-wi-fi', 125.99, 'asus-tuf-b365m-plus-gaming-wi-fi.jpg', '0000-00-00', 0),
(49, 16, 'GIGABYTE Z490 AORUS ULTRA LGA', '<ul>\r\n	<li>Supports 10th Gen Intel Core Series Processors</li>\r\n	<li>Direct 12 Phases Digital VRM with 50A Smart Power Stage with Tantalum Polymer Capacitors Array</li>\r\n	<li>Next Generations VRM Cooling Fins Array and Direct Touch Heatpipe with Nanocarbon coating</li>\r\n	<li>Shielded Xtreme Memory Design with Tantalum Polymer Capacitors Array</li>\r\n	<li>Dual Channel Non-ECC Unbuffered DDR4, 4 DIMMs</li>\r\n	<li>Intel 2.5 GbE LAN</li>\r\n	<li>3 x M.2 AORUS Next Generation Thermal Guard</li>\r\n	<li>Intel WiFi 6 and Bluetooth 5 2x2 with AORUS Antenna</li>\r\n	<li>AMP UP Audio ALC1220-VB AUDIO DAC</li>\r\n	<li>RGB Fusion 2.0</li>\r\n	<li>Smart Fan 5 Hybrid Fan Headers with smart fan functions (Fan Stop, PWM Controls, Noise Detection)</li>\r\n	<li>Rear 3 x USB 3.2 Gen 2 Type A, 1 x USB 3.2 Gen 2 Type C, 2 x USB 3.2 Gen 1 Type A, 4 x USB 2.0</li>\r\n	<li>Front 1 x USB 3.1 Gen 2 Type C, 2 x USB 3.2 Gen 1, 4 x USB 2.0</li>\r\n	<li>Integrated I/O Shield</li>\r\n	<li>Q-Flash Plus Update BIOS Without Installing CPU, Memory or GPU</li>\r\n	<li>Hi-Res Audio Certified, PCIe 4.0 Grade Design</li>\r\n</ul>\r\n', 'gigabyte-z490-aorus-ultra-lga', 350.8, 'gigabyte-z490-aorus-ultra-lga.jpg', '0000-00-00', 0),
(50, 16, 'GIGABYTE Z390 AORUS MASTER LGA', '<ul>\r\n	<li>Supports Intel 8th &amp; 9th Gen Core i9/i7/i5/i3, Celeron, and Pentium Processors</li>\r\n	<li>Dual Channel DDR4, 4 DIMMs</li>\r\n	<li>Support for DDR4 4400(O.C.)/ 4333(O.C.)/ 4266(O.C.)/ 4133(O.C.)/ 4000(O.C.)/ 3866(O.C.)/ 3800(O.C.)/ 3733(O.C.)/ 3666(O.C.)/ 3600(O.C.)/ 3466(O.C.)/ 3400(O.C.)/ 3333(O.C.)/ 3300(O.C.)/ 3200(O.C.)/ 3000(O.C.)/ 2800(O.C.)/ 2666/ 2400/ 2133 MHz memory modules</li>\r\n	<li>Integrated I/O Shield</li>\r\n	<li>Intel Optane Memory Ready</li>\r\n	<li>12 Phases IR Digital VRM Solution with PowIRstage</li>\r\n	<li>Advanced Thermal Design with Fins-Array Heatsink &amp; Direct Touch Heatpipe</li>\r\n	<li>Intel 802.11 ac 2x2 Wave 2 WI-FI</li>\r\n	<li>AMP-UP Audio with ALC1220 &amp; High-End ESS SABRE 9118 DAC</li>\r\n	<li>USB TurboCharger for Mobile Device Fast Charge</li>\r\n	<li>Intel Gigabit LAN</li>\r\n	<li>RGB FUSION with Multi-Zone Addressable LED Light Show Design, Supports Addressable LED &amp; RGB LED Strips</li>\r\n	<li>Smart Fan 5 with Hybrid Fan Headers with FAN STOP</li>\r\n	<li>Front USB 3.1 Gen 2 Type-C Header</li>\r\n	<li>Triple M.2 with Triple Thermal Guards</li>\r\n	<li>CEC 2019 Ready</li>\r\n</ul>\r\n', 'gigabyte-z390-aorus-master-lga', 528.02, 'gigabyte-z390-aorus-master-lga.jpg', '2020-11-11', 2),
(51, 16, 'ASUS ROG Strix Z390-I Gaming Motherboard', '<ul>\r\n	<li>Designed for 9th and 8th generation Intel Core processors to maximize connectivity and speed with dual M.2, USB 3.1 Gen 2, 802.11 ac Wi-Fi and ASUS OptiMem II for better DRAM overclocking stability with Double Capacity DIMMs to enable up to 64GB of DDR4</li>\r\n	<li>Revamped 5-Way Optimization overclocks intelligently based on smart prediction and thermal telemetry while FanXpert 4 delivers dynamic system cooling</li>\r\n	<li>Gamer&#39;s Guardian ensures component longevity with SafeSlot, ESD Guards and DRAM Overcurrent Protection while innovative M.2 double-decker heatsink shrouds the main M.2 slot and provides shared cooling for both the M.2 and PCH</li>\r\n	<li>Pre-mounted I/O shield ensures streamlined installation and represents ROG&#39;s attention to detail and quality</li>\r\n</ul>\r\n', 'asus-rog-strix-z390-i-gaming-motherboard', 449.83, 'asus-rog-strix-z390-i-gaming-motherboard.jpg', '2020-11-06', 1),
(52, 16, 'ASUS TUF Z390-Plus Gaming (Wi-Fi) ', '<ul>\r\n	<li>Designed for 9th and 8th generation Intel Core processors to maximize connectivity and speed with dual M.2, Gigabit LAN, USB 3.1 Gen2</li>\r\n	<li>Military-Grade TUF Components like TUF LANGuard, TUF Chokes, TUF Capacitors, and TUF MOSFETs maximize system durability</li>\r\n	<li>Gamer&#39;s Guardian with SafeSlot and FanXpert 4 provides hardware-level safeguards for maximum performance with dynamic system cooling</li>\r\n	<li>8-channel HD Gaming Audio with TUF Gaming Headphone featuring Realtek S1200A high definition audio codec driven by Japanese capacitors for warm, immersive sound</li>\r\n	<li>ASUS OptiMem II improves memory stability and performance by improving trace isolation between PCB layers to maintain signal integrity even at higher frequencies</li>\r\n</ul>\r\n', 'asus-tuf-z390-plus-gaming-wi-fi', 205.43, 'asus-tuf-z390-plus-gaming-wi-fi.jpg', '0000-00-00', 0),
(53, 16, 'ASUS ROG STRIX Z490-A GAMING ', '<ul>\r\n	<li>Intel LGA 1200 socket: Designed to unleash the maximum performance of 10th Gen Intel Core processors</li>\r\n	<li>Robust Power Solution: 12+2 Dr. MOS power stages with ProCool II power connector, high-quality alloy chokes and durable capacitors to provide reliable power when pushing CPU performance to the limit</li>\r\n	<li>Optimized Thermal Design: VRM heatsink, PCH fanless heatsink, M.2 heatsink, hybrid fan headers and Fan Xpert 4 utility</li>\r\n	<li>High-performance Gaming Networking: On-board Intel 2.5Gb Ethernet with ASUS LANGuard</li>\r\n	<li>Best Gaming Connectivity: Supports HDMI 1.4 and DisplayPort 1.4 output, and featuring dual M.2, front panel USB 3.2 Gen 1 Type-C connector</li>\r\n	<li>Industry-leading Gaming Audio: High fidelity audio with the SupremeFX S1220A codec, DTS Sound Unbound and Sonic Studio III draws you deeper into the game action</li>\r\n</ul>\r\n', 'asus-rog-strix-z490-gaming', 288.28, 'asus-rog-strix-z490-gaming.jpg', '2020-10-13', 1),
(54, 17, 'AMD RYZEN 5 3600 6-Core 3.6 GHz', '<ul>\r\n	<li>3rd Gen Ryzen</li>\r\n	<li>Socket AM4</li>\r\n	<li>Max Boost Frequency 4.2 GHz</li>\r\n	<li>DDR4 Support</li>\r\n	<li>L2 Cache 3MB</li>\r\n	<li>L3 Cache 32MB</li>\r\n	<li>Thermal Design Power 65W</li>\r\n	<li>With Wraith Stealth cooler</li>\r\n</ul>\r\n', 'amd-ryzen-5-3600-6-core-3-6-ghz', 229.74, 'amd-ryzen-5-3600-6-core-3-6-ghz.jpg', '2020-11-06', 1),
(55, 17, 'AMD RYZEN 7 3700X 8-Core 3.6 GHz', '<ul>\r\n	<li>3rd Gen Ryzen</li>\r\n	<li>Socket AM4</li>\r\n	<li>Max Boost Frequency 4.4 GHz</li>\r\n	<li>DDR4 Support</li>\r\n	<li>L2 Cache 4MB</li>\r\n	<li>L3 Cache 32MB</li>\r\n	<li>Thermal Design Power 65W</li>\r\n	<li>With Wraith Prism cooler</li>\r\n</ul>\r\n', 'amd-ryzen-7-3700x-8-core-3-6-ghz', 373.35, 'amd-ryzen-7-3700x-8-core-3-6-ghz.jpg', '2020-11-06', 1),
(56, 17, 'Intel Core i9-10850KA Comet Lake 10-Core 3.6 GHz  Avengers Limited Edition ', '<ul>\r\n	<li>10-core/20 threads</li>\r\n	<li>Up to 5.2 GHz Unlocked</li>\r\n	<li>Intel UHD Graphics 630</li>\r\n	<li>Compatible with Intel 400 series chipset based motherboards</li>\r\n	<li>Intel Turbo Boost Max Technology 3.0 Support</li>\r\n	<li>Avengers Limited Special Edition Box</li>\r\n</ul>\r\n', 'intel-core-i9-10850ka-comet-lake-10-core-3-6-ghz-avengers-limited-edition', 583.93, 'intel-core-i9-10850ka-comet-lake-10-core-3-6-ghz-avengers-limited-edition_1602554329.jpg', '2020-10-13', 1),
(57, 17, 'Intel Core i7-10700 Comet Lake 8-Core 2.9 GHz', '<ul>\r\n	<li>14nm Comet Lake 65W</li>\r\n	<li>16MB L3 Cache</li>\r\n	<li>Intel UHD Graphics 630</li>\r\n</ul>\r\n', 'intel-core-i7-10700-comet-lake-8-core-2-9-ghz', 388.75, 'intel-core-i7-10700-comet-lake-8-core-2-9-ghz.jpg', '0000-00-00', 0),
(58, 17, 'Intel Core i5-7400 Kaby Lake Quad-Core 3.0 GHz', '<ul>\r\n	<li>For A Great VR Experience</li>\r\n	<li>OS Support - Windows 10 ONLY</li>\r\n	<li>Max Turbo Frequency 3.50 GHz</li>\r\n	<li>Intel HD Graphics 630</li>\r\n	<li>DDR4 &amp; DDR3L Support</li>\r\n	<li>Display Resolution up to 4096 x 2304</li>\r\n	<li>Socket LGA 1151</li>\r\n</ul>\r\n', 'intel-core-i5-7400-kaby-lake-quad-core-3-0-ghz', 223.14, 'intel-core-i5-7400-kaby-lake-quad-core-3-0-ghz.jpg', '0000-00-00', 0),
(59, 17, 'Intel Core i7-6700K 8M Skylake Quad-Core 4.0 GHz', '<ul>\r\n	<li>Max Turbo Frequency 4.2 GHz</li>\r\n	<li>8MB L3 Cache</li>\r\n	<li>4 x 256KB L2 Cache</li>\r\n	<li>Socket LGA 1151</li>\r\n	<li>DDR4 &amp; DDR3L Support</li>\r\n	<li>Display Resolution up to 4096 x 2304</li>\r\n	<li>Intel Turbo Boost Technology</li>\r\n	<li>Compatible with Intel 100 Series Chipset Motherboards</li>\r\n	<li>Intel HD Graphics 530</li>\r\n</ul>\r\n', 'intel-core-i7-6700k-8m-skylake-quad-core-4-0-ghz', 333.6, 'intel-core-i7-6700k-8m-skylake-quad-core-4-0-ghz.jpg', '2020-11-09', 2),
(60, 17, 'AMD RYZEN 5 2600 6-Core 3.4 GHz (3.9 GHz Max Boost)', '<ul>\r\n	<li>2nd Gen Ryzen</li>\r\n	<li>AMD StoreMI Technology</li>\r\n	<li>AMD SenseMI Technology</li>\r\n	<li>AMD Ryzen Master Utility</li>\r\n	<li>Socket AM4</li>\r\n	<li>Max Boost Frequency 3.9 GHz</li>\r\n	<li>DDR4 Support</li>\r\n	<li>Unlocked Processor</li>\r\n	<li>Thermal Design Power 65W</li>\r\n	<li>AMD Wraith Stealth Cooler Included</li>\r\n</ul>\r\n', 'amd-ryzen-5-2600-6-core-3-4-ghz-3-9-ghz-max-boost', 179.19, 'amd-ryzen-5-2600-6-core-3-4-ghz-3-9-ghz-max-boost.jpg', '0000-00-00', 0),
(61, 17, 'Intel Core i9-9900K Coffee Lake 8-Core, 16-Thread, 3.6 GHz (5.0 GHz Turbo)', '<ul>\r\n	<li>9th Gen Intel Processor</li>\r\n	<li>Intel UHD Graphics 630</li>\r\n	<li>Only Compatible with Intel 300 Series Motherboard</li>\r\n	<li>Socket LGA 1151 (300 Series)</li>\r\n	<li>Max Turbo Frequency 5.0 GHz</li>\r\n	<li>Unlocked Processor</li>\r\n	<li>DDR4 Support</li>\r\n	<li>Intel Optane Memory and SSD Supported</li>\r\n	<li>Cooling device not included - Processor Only</li>\r\n	<li>Intel Turbo Boost Technology 2.0 and Intel vPro technology offer pro-level performance for gaming, creating, and overall productivity</li>\r\n</ul>\r\n', 'intel-core-i9-9900k-coffee-lake-8-core-16-thread-3-6-ghz-5-0-ghz-turbo', 633.26, 'intel-core-i9-9900k-coffee-lake-8-core-16-thread-3-6-ghz-5-0-ghz-turbo_1602554608.jpg', '2020-11-11', 1),
(62, 17, 'AMD RYZEN 9 3900X 12-Core 3.8 GHz (4.6 GHz Max Boost)', '<ul>\r\n	<li>3rd Gen Ryzen</li>\r\n	<li>Socket AM4</li>\r\n	<li>Max Boost Frequency 4.6 GHz</li>\r\n	<li>DDR4 Support</li>\r\n	<li>L2 Cache 6MB</li>\r\n	<li>L3 Cache 64MB</li>\r\n	<li>Thermal Design Power 105W</li>\r\n	<li>With Wraith Prism cooler</li>\r\n</ul>\r\n', 'amd-ryzen-9-3900x-12-core-3-8-ghz-4-6-ghz-max-boost', 534.69, 'amd-ryzen-9-3900x-12-core-3-8-ghz-4-6-ghz-max-boost_1602555749.jpg', '2020-10-14', 1),
(63, 17, 'AMD RYZEN 5 3400G 4-Core 3.7 GHz (4.2 GHz Max Boost)', '<ul>\r\n	<li>Built-In Radeon RX Vega 11 Graphics</li>\r\n	<li>2nd GEN with Radeon Graphic</li>\r\n	<li>Socket AM4</li>\r\n	<li>Max Boost Frequency 4.2 GHz</li>\r\n	<li>L2 Cache 2MB</li>\r\n	<li>L3 Cache 4MB</li>\r\n	<li>Thermal Design Power 65W</li>\r\n	<li>With Wraith Spire cooler</li>\r\n</ul>\r\n', 'amd-ryzen-5-3400g-4-core-3-7-ghz-4-2-ghz-max-boost', 170.15, 'amd-ryzen-5-3400g-4-core-3-7-ghz-4-2-ghz-max-boost.jpg', '0000-00-00', 0),
(64, 17, 'AMD Ryzen 9 3950X 16-Core 3.5 GHz', '<ul>\r\n	<li>3rd Gen Ryzen</li>\r\n	<li>Socket AM4</li>\r\n	<li>Max Boost Frequency 4.7 GHz</li>\r\n	<li>DDR4 Support</li>\r\n	<li>L2 Cache 8MB</li>\r\n	<li>L3 Cache 64MB</li>\r\n	<li>Thermal Design Power 105W</li>\r\n</ul>\r\n', 'amd-ryzen-9-3950x-16-core-3-5-ghz', 868.88, 'amd-ryzen-9-3950x-16-core-3-5-ghz.jpg', '2020-11-09', 1),
(65, 17, 'AMD Ryzen Threadripper 3970X 32-Core 3.7 GHz', '<ul>\r\n	<li>7nm 280W</li>\r\n	<li>128MB L3 Cache</li>\r\n	<li>16MB L2 Cache</li>\r\n</ul>\r\n', 'amd-ryzen-threadripper-3970x-32-core-3-7-ghz', 3078.14, 'amd-ryzen-threadripper-3970x-32-core-3-7-ghz.jpg', '2020-11-09', 2),
(66, 18, 'G.SKILL Ripjaws V Series 16GB (2 x 8GB) 288-Pin DDR4 SDRAM DDR4 3600', '<ul>\r\n	<li>DDR4 3600 (PC4 28800)</li>\r\n	<li>Timing 16-19-19-39</li>\r\n	<li>CAS Latency 16</li>\r\n	<li>Voltage 1.35V</li>\r\n</ul>\r\n', 'g-skill-ripjaws-v-series-16gb-2-x-8gb-288-pin-ddr4-sdram-ddr4-3600', 95.98, 'g-skill-ripjaws-v-series-16gb-2-x-8gb-288-pin-ddr4-sdram-ddr4-3600.jpg', '2020-10-13', 4),
(67, 18, 'G.SKILL Trident Z Royal Series 32GB (2 x 16GB) 288-Pin RGB DDR4 SDRAM DDR4 3200', '<ul>\r\n	<li>DDR4 3200 (PC4 25600)</li>\r\n	<li>Timing 16-18-18-38</li>\r\n	<li>CAS Latency 16</li>\r\n	<li>Voltage 1.35V</li>\r\n</ul>\r\n', 'g-skill-trident-z-royal-series-32gb-2-x-16gb-288-pin-rgb-ddr4-sdram-ddr4-3200', 194.9, 'g-skill-trident-z-royal-series-32gb-2-x-16gb-288-pin-rgb-ddr4-sdram-ddr4-3200.jpg', '2020-11-09', 2),
(68, 18, 'G.SKILL Trident Z Neo (For AMD Ryzen) Series 16GB (2 x 8GB) 288-Pin RGB DDR4 SDRAM DDR4 3600', '<ul>\r\n	<li>DDR4 3600 (PC4 28800)</li>\r\n	<li>Timing 16-19-19-39</li>\r\n	<li>CAS Latency 16</li>\r\n	<li>Voltage 1.35V</li>\r\n	<li>Compatible with AMD Ryzen 3000 Series CPUs &amp; AMD X570 Motherboards</li>\r\n</ul>\r\n', 'g-skill-trident-z-neo-amd-ryzen-series-16gb-2-x-8gb-288-pin-rgb-ddr4-sdram-ddr4-3600', 142.18, 'g-skill-trident-z-neo-amd-ryzen-series-16gb-2-x-8gb-288-pin-rgb-ddr4-sdram-ddr4-3600.jpg', '2020-11-06', 1),
(69, 18, 'CORSAIR Vengeance RGB Pro 64GB (2 x 32GB) 288-Pin DDR4 SDRAM DDR4 3200', '<ul>\r\n	<li>DDR4 3200 (PC4 25600)</li>\r\n	<li>Timing 16-20-20-38</li>\r\n	<li>CAS Latency 16</li>\r\n	<li>Voltage 1.35V</li>\r\n</ul>\r\n', 'corsair-vengeance-rgb-pro-64gb-2-x-32gb-288-pin-ddr4-sdram-ddr4-3200', 322.77, 'corsair-vengeance-rgb-pro-64gb-2-x-32gb-288-pin-ddr4-sdram-ddr4-3200.jpg', '2020-11-11', 3),
(70, 19, 'ASUS TUF Gaming GeForce RTX 3080 TUF', '<ul>\r\n	<li>10GB 320-Bit GDDR6X</li>\r\n	<li>2 x HDMI 2.1 3 x DisplayPort 1.4a</li>\r\n	<li>8704 CUDA Cores</li>\r\n	<li>PCI Express 4.0 x16</li>\r\n</ul>\r\n', 'asus-tuf-gaming-geforce-rtx-3080-tuf', 972.38, 'asus-tuf-gaming-geforce-rtx-3080-tuf.jpg', '2020-11-09', 1),
(71, 20, 'df', '<p>dasdasd</p>\r\n', 'df', 2311, 'df_1602606550.PNG', '0000-00-00', 0),
(72, 21, 'mouse', '<p>logitech with aimbot</p>\r\n', 'mouse', 2300, 'mouse.jpg', '2020-10-13', 2),
(73, 21, 'keyboard', '<p>random keybaord</p>\r\n\r\n<p>&nbsp;</p>\r\n', 'keyboard', 1000, '', '0000-00-00', 0);

-- --------------------------------------------------------

--
-- Table structure for table `sales`
--

CREATE TABLE `sales` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `pay_id` varchar(50) NOT NULL,
  `sales_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sales`
--

INSERT INTO `sales` (`id`, `user_id`, `pay_id`, `sales_date`) VALUES
(9, 9, 'PAY-1RT494832H294925RLLZ7TZA', '2018-05-10'),
(10, 9, 'PAY-21700797GV667562HLLZ7ZVY', '2018-05-10'),
(11, 13, 'PAYID-L6CKMMQ9HX381882D892464T', '2020-10-12'),
(12, 18, 'PAYID-L6CLIVA37G66418DE999821M', '2020-10-12'),
(13, 18, 'PAYID-L6CRCNY9JB44950UN6492522', '2020-10-13'),
(14, 13, 'PAYID-L6CRDKA8TU70240YC338051V', '2020-10-13'),
(15, 13, 'PAYID-L6CRDVY22G899876U712894F', '2020-10-13'),
(16, 13, 'PAYID-L6CREFQ0LE13438XK146381S', '2020-10-13'),
(17, 19, 'PAYID-L6CRIAQ14J50265C5061062P', '2020-11-13'),
(18, 19, 'PAYID-L6CRJWI0G0133807T125023G', '2020-11-13'),
(19, 18, 'PAYID-L6CT4XA3YT081050W8181152', '2020-10-13'),
(20, 18, 'PAYID-L6C5JMY2VG83719RS125824L', '2020-10-13'),
(21, 18, 'PAYID-L6DKGNI5NK57977S5712471P', '2020-10-14'),
(22, 18, 'PAYID-L6DKKUI7P6913006T685102G', '2020-10-14'),
(23, 18, 'PAYID-L6DKP5Q6090376354951193C', '2020-10-14'),
(24, 18, 'PAYID-L6SWK7Q8GD279063M740011F', '2020-11-06'),
(25, 18, 'PAYID-L6UMZTA9C00477851159882X', '2020-11-09'),
(26, 18, 'PAYID-L6UNBCA5T4076438B6717704', '2020-11-09'),
(27, 18, 'PAYID-L6UNEGY72V22186GK411240B', '2020-11-09'),
(28, 18, 'PAYID-L6VX2YQ8BV57449817118029', '2020-11-11'),
(29, 24, 'PAYID-L6VYZYQ5SY54243HP484860A', '2020-11-11');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `email` varchar(200) NOT NULL,
  `password` varchar(60) NOT NULL,
  `type` int(1) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `address` text NOT NULL,
  `contact_info` varchar(100) NOT NULL,
  `photo` varchar(200) NOT NULL,
  `status` int(1) NOT NULL,
  `activate_code` varchar(15) NOT NULL,
  `reset_code` varchar(15) NOT NULL,
  `created_on` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `password`, `type`, `firstname`, `lastname`, `address`, `contact_info`, `photo`, `status`, `activate_code`, `reset_code`, `created_on`) VALUES
(1, 'admin@admin.com', '$2y$10$N2cQRf1GLOWRBbM/z94r3ObwKAvf4HUZMycfkwCYiTTT6e31oLsq2', 1, 'ZeroOne', 'Gaming', '', '', 'Untitled.png', 1, '', '', '2018-05-01'),
(12, 'christine@gmail.com', '$2y$10$ozW4c8r313YiBsf7HD7m6egZwpvoE983IHfZsPRxrO1hWXfPRpxHO', 0, 'Christine', 'becker', 'demo', '7542214500', 'female3.jpg', 1, '', '', '2018-07-09'),
(13, 'picogaming69@gmail.com', '$2y$10$HFOTAvYmxyWk8aNC7PFLR./7U7ZGCL9VuIXkBahxTbXOVQVESlFFG', 0, 'Monk', '123', '', '', '', 1, 'ny19vWIRdAzj', '', '2020-10-12'),
(14, 'picogaming369@gmail.com', '$2y$10$nuX2iyCB6FJujtmzIa8q2eJZ2klGMa02SZM49zhpP.aIY9VE1WXUW', 0, 'Monk', '123', '', '', '', 1, 'pjeGVYlzPKg5', '', '2020-10-12'),
(15, 'hatdog@gmail.com', '$2y$10$zqWbRH1zD0grAoPSjSNeX.d33ZjgezOxvSYMgPuH.ZbsJ4nXJw9Nq', 0, 'Team ', '23', '', '', '', 1, '9MuPw4c5QRqI', '', '2020-10-12'),
(16, 'leahelbllanc133@gmail.com', '$2y$10$hxy.f5JJbF4Mqi0.zeyUxOKGnk2nt3LzP1kf9.6V5Bwn9FzcA5qLa', 0, 'Monk', 'Two', '', '', '', 1, 'x9w67LBWIhKn', '', '2020-10-12'),
(17, 'leahelbllanc1333@gmail.com', '$2y$10$ufY4FZ08r/laSJAW7D1JaOQvU5bQmginBDq4L1ehQm0TxmBmJIwki', 0, 'Monk', 'Two', '', '', '', 1, 'A1XRzpd8ekTG', '', '2020-10-12'),
(18, 'Ecapudoy@gmail.com', '$2y$10$Gt4WU52sH4dhWOI33p7b/eFkypnqWX3B/jYSNO69fmU8rS0NyJeCG', 0, 'elijah', 'capudoy', 'bulacan', '09207895576', 'thanos1.jpg', 1, 'xV6JGP4ulISw', '', '2020-10-12'),
(19, 'Renegay@gmail.com', '$2y$10$fHlAqxUxNPOlh2kAGY3lf.zsTGHUDNkqx5G3GPIpLoJXS9Qq6wwxW', 0, 'Rene', 'Gay', '', '', '', 0, 'YrZW5Pbksnwa', '', '2020-11-13'),
(20, '123@gmail.com', '$2y$10$1i0DzJHe3bF8vYxhHGn/EuSgRl9uYNLc7fZctUjTeRDFXmMkhpKH.', 0, 'asd', 'asd', '', '', '', 1, 'lybXOUrvjidA', '', '2020-10-14'),
(21, 'asds1@gmail.com', '$2y$10$2/aPCKRU1QfB5wjrnQPtFOq22TqfcdFG6zINr2DzVu0nYqZNuIiWG', 0, 'asd', 'asd', '', '', '', 0, 'h8oVy3EJmw95', '', '2020-10-14'),
(22, 'Jdalton@gmail.com', '$2y$10$ERwGwY966iQP4/g3X.VY2.e.sUBUMVxEcMhX9QLbsrrvDnFtxsEeW', 0, 'John', 'Doe', '', '', '', 0, 'd23hFATpmDbG', '', '2020-11-10'),
(23, 'SuS@gmail.com', '$2y$10$YJyymKCrivwz0DtFnOt3SudclSSf6yDONuYSE30jJ.Lbr/7QdDpge', 0, 'sus', 'picious', '', '', '', 0, 'Ei6TPxlfHML5', '', '2020-11-11'),
(24, 'Jdalton123@gmail.com', '$2y$10$sGI3/SWVmRZ1RppAGwwXiONry386rD5K6hOU/rwTH9lmO8epBjFxy', 0, 'John', 'Dalton', 'tulay', '09213854968498', '', 1, 'WiZNnzLPpet3', '', '2020-11-11');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `details`
--
ALTER TABLE `details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sales`
--
ALTER TABLE `sales`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=74;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `details`
--
ALTER TABLE `details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=74;

--
-- AUTO_INCREMENT for table `sales`
--
ALTER TABLE `sales`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
