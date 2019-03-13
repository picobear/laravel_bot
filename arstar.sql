-- phpMyAdmin SQL Dump
-- version 4.4.14
-- http://www.phpmyadmin.net
--
-- Host: localhost:3306
-- Generation Time: Mar 13, 2019 at 07:24 PM
-- Server version: 5.7.24
-- PHP Version: 7.2.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `arstar`
--

-- --------------------------------------------------------

--
-- Table structure for table `arstar_index`
--

CREATE TABLE IF NOT EXISTS `arstar_index` (
  `id` bigint(20) unsigned NOT NULL,
  `created_at` date DEFAULT NULL,
  `created_time` time NOT NULL,
  `text` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPACT;

--
-- Dumping data for table `arstar_index`
--

INSERT INTO `arstar_index` (`id`, `created_at`, `created_time`, `text`) VALUES
(1, '2019-03-14', '19:23:07', '牡羊座'),
(2, '2019-03-14', '19:23:08', '金牛座'),
(3, '2019-03-14', '19:23:08', '雙子座'),
(4, '2019-03-14', '19:23:08', '巨蟹座'),
(5, '2019-03-14', '19:23:09', '獅子座'),
(6, '2019-03-14', '19:23:09', '處女座'),
(7, '2019-03-14', '19:23:09', '天秤座'),
(8, '2019-03-14', '19:23:10', '天蠍座'),
(9, '2019-03-14', '19:23:10', '射手座'),
(10, '2019-03-14', '19:23:10', '摩羯座'),
(11, '2019-03-14', '19:23:11', '水瓶座'),
(12, '2019-03-14', '19:23:11', '雙魚座');

-- --------------------------------------------------------

--
-- Table structure for table `arstar_parser_career_horoscopes`
--

CREATE TABLE IF NOT EXISTS `arstar_parser_career_horoscopes` (
  `id` bigint(20) unsigned NOT NULL,
  `gid` bigint(20) NOT NULL,
  `score` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `text` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPACT;

--
-- Dumping data for table `arstar_parser_career_horoscopes`
--

INSERT INTO `arstar_parser_career_horoscopes` (`id`, `gid`, `score`, `text`) VALUES
(1, 1, '★★☆☆☆', '心直口快，容易因為一時口快說出其他同事的秘密，招惹一些不必要的麻煩。'),
(2, 2, '★★★★☆', '人際關係良好，工作上遇到難題容易得到同事的幫助，讓你輕鬆度過難關。'),
(3, 3, '★★★★☆', '努力付出就會有回報，多勞多得，多做富挑戰性的工作，會很有收穫。'),
(4, 4, '★★★★★', '今日事業走在激烈競爭的軌跡中，所以會異常地忙碌，但所遇貴人頗多，辦事順利。'),
(5, 5, '★★★★☆', '親和力和幽默感增強，與同事相處時多找一些有趣的話題可拉近大家的距離，為你累積超強的人氣。'),
(6, 6, '★★☆☆☆', '今日事業運不好，心情有點苦悶，一旦受到負面情緒的影響，容易造成小狀況不斷，尤其是涉及金錢方面的問題，要謹慎些。'),
(7, 7, '★★☆☆☆', '挫折感較大，內心渴望有收獲卻事與願違，產生負面思考的機率很高！'),
(8, 8, '★★★★☆', '事業運不錯，是個試煉自己膽識的日子，該爭則爭，該接受則接受，要建立自己的原則。'),
(9, 9, '★★★☆☆', '表現得十分活躍，很容易博得上級和同事的好感，但要注意在表現自己的同時還需把自己的本職工作做好。'),
(10, 10, '★☆☆☆☆', '事業運不佳，事情一堆卻進展很慢甚至停頓，有點應接不暇的感覺，經手之事務必小心處理，免得產生後遺症。'),
(11, 11, '★★☆☆☆', '處理好人際關係是重點，話出口前多思考，小心因一時口快而傷害到他人！'),
(12, 12, '★★★☆☆', '多留意人與人之間的關係，注意相互溝通與良好禮儀，說話不能太直唷！');

-- --------------------------------------------------------

--
-- Table structure for table `arstar_parser_love_horoscopes`
--

CREATE TABLE IF NOT EXISTS `arstar_parser_love_horoscopes` (
  `id` bigint(20) unsigned NOT NULL,
  `gid` bigint(20) NOT NULL,
  `score` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `text` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPACT;

--
-- Dumping data for table `arstar_parser_love_horoscopes`
--

INSERT INTO `arstar_parser_love_horoscopes` (`id`, `gid`, `score`, `text`) VALUES
(1, 1, '★★☆☆☆', '單身者穿粉紅色的衣服可提升戀愛運；有伴侶的人心裡苦悶可找朋友聊聊，會獲得安慰。'),
(2, 2, '★★★★☆', '單身者有機會在聯誼中結識志趣相投的異性朋友，可望深入交往；已婚者感情甜蜜。'),
(3, 3, '★★★☆☆', '有讓你心動的異性出現，但不宜直接表白，用眼神或小動作給對方一些暗示較有效。'),
(4, 4, '★★★★☆', '異性緣很好，單身者有機緣遇到心動的對象；戀愛中人也能有快樂充實的一天。'),
(5, 5, '★★★☆☆', '已婚者感情進展平穩，兩人多在一起做家務、聊心事，可增進彼此的感情。'),
(6, 6, '★★★★☆', '很有魅力，異性緣佳，但太多的桃花又會讓你感到困惑，應懂得拒絕才好唷！'),
(7, 7, '★★★☆☆', '夫妻之間容易有些小摩擦，需要多多磨合，更多的包容和耐心是不二法門。'),
(8, 8, '★★★☆☆', '享受孤單的日子，今日適合獨處，冷靜回顧相處上的優劣並加以檢討一番。'),
(9, 9, '★★☆☆☆', '外力干擾多多的一天，少跟人接觸，省得聽到莫名其妙的風涼話。'),
(10, 10, '★★☆☆☆', '單身者想戀愛的話就得積極尋找新的機會，太過隨緣被動容易錯過好姻緣唷！'),
(11, 11, '★★★★☆', '有機會碰見讓你極度著迷的對象，容易因為心裡一熱，就不顧一切地投入愛河。'),
(12, 12, '★★★★☆', '和喜歡的對象接觸機會增多，要把握時機多多表現自己，讓對方注意到你喔！');

-- --------------------------------------------------------

--
-- Table structure for table `arstar_parser_overall_horoscopes`
--

CREATE TABLE IF NOT EXISTS `arstar_parser_overall_horoscopes` (
  `id` bigint(20) unsigned NOT NULL,
  `gid` bigint(20) NOT NULL,
  `score` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `text` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPACT;

--
-- Dumping data for table `arstar_parser_overall_horoscopes`
--

INSERT INTO `arstar_parser_overall_horoscopes` (`id`, `gid`, `score`, `text`) VALUES
(1, 1, '★★☆☆☆', '小心因說話欠妥當而使自己陷入情感風波，對方醋罈子一翻可得讓你吃不了兜著走；確定好理財方向，對你的投資之路頗有好處；金融機構任職者工作顯得越來越辛苦，且稍不留心就會有虧損。'),
(2, 2, '★★★★☆', '智商走強，不管工作如何紛亂繁雜，還是能做出令人滿意的成績，眾人的好評成了你前進的動力。投資上會有新的局面，看準契機，財源滾滾而來就不在話下。美食愛好者有機會與戀人大飽口福，享受愜意的生活。'),
(3, 3, '★★★☆☆', '今天你特別注重個人形象，容易給人眼前一亮的感覺。對求職者特別有利，穿著打扮容易給人留下深刻的第一印象，再加上得體的談吐，有機會進入形象良好的公司任職。因請客而有一筆不小的支出。'),
(4, 4, '★★★★★', '今天的你顯得很有親和力，在不知不覺中就能成為大家聚集的焦點；在異性群裡，你也會變得很受歡迎；今天的工作運頗好，可說是順風順水，從事拜訪工作的人，易獲得成功；財運並無大的波動，基本保持收支的平衡。'),
(5, 5, '★★★☆☆', '多去讚美你的伴侶，這樣即使為你做再多的事他也心甘情願；工作中與同事配合默契十足，事情完成得很好，心裡有強烈的成就感；買東西討價還價時看到賣主不好的神色或是聽到對方譏諷的言辭，心中憤憤不平，易與人發生口角。'),
(6, 6, '★★★★☆', '已婚者的異性緣太好會讓另一半有失落感，還是能躲則躲，讓對方知道你對他十分重視；行事有失冷靜，會因此造成無法挽救的損失；易得他人幫助，懷著感恩的心能讓你過得更踏實。'),
(7, 7, '★★☆☆☆', '今天較感性，想要沉浸在自己的感情世界裡，不想再理會那些凡塵俗事。財運方面表現較差，一些過往債務需要清算，讓你頭疼不已。精神狀態不佳，工作起來也不順利，休息時可與好友出去玩樂一番，別把自己憋壞了。'),
(8, 8, '★★★★☆', '已婚者的異性緣過於外顯，而你的含糊其辭會給追求者留下更多的幻想空間，易引來不必要的麻煩。出門在外者可於關鍵時刻得到貴人的幫助，要懂得知恩圖報。財運一般，借助別人提供的投資消息會讓你的財運好轉。'),
(9, 9, '★★★☆☆', '感情上太過追求完美，讓愛情運勢陷入低潮，將心思放在學習上，比胡思亂想有用得多；對從事業務工作的人來講，今天是踏踏實實穩守老客戶的一天；與人交往時表現過於自大，會讓人對你產生距離感。'),
(10, 10, '★☆☆☆☆', '好勝心太重易與同事發生利益之爭而互不相讓，最後可能兩敗俱傷；與公婆或岳父母相處時，千萬別因對方不好聽的話而大動肝火，有誤會和他們說明就是；對孩子的教育方式別太嚴苛，小心施壓得越重他的叛逆心就越強。'),
(11, 11, '★★☆☆☆', '工作中由於同事的失誤導致你受牽連，心裡很不舒暢，需懂得適時釋懷。曾經的戀人今天突然回心轉意，讓愛重新出發，幸福之餘也要想想上次分手的原因會不會再出現。找個安靜的角落，讓心沉靜下來。'),
(12, 12, '★★★☆☆', '對於感情上出現的小問題能及時修復，別在心裡留下疙瘩；外出工作者要注意交通安全，以免發生意外；父母對於你的戀人有些不滿意，如有誤會應盡快調和好，以免以後家人給你們的結合造成壓力。');

-- --------------------------------------------------------

--
-- Table structure for table `arstar_parser_wealth_horoscopes`
--

CREATE TABLE IF NOT EXISTS `arstar_parser_wealth_horoscopes` (
  `id` bigint(20) unsigned NOT NULL,
  `gid` bigint(20) NOT NULL,
  `score` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `text` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPACT;

--
-- Dumping data for table `arstar_parser_wealth_horoscopes`
--

INSERT INTO `arstar_parser_wealth_horoscopes` (`id`, `gid`, `score`, `text`) VALUES
(1, 1, '★★★☆☆', '最怕與人發生財務紛爭，倘若與人發生財務糾紛容易引發一連串的惡鬥。'),
(2, 2, '★★★☆☆', '你對金錢的慾望是那麼強大，可行動的步調太緩慢，要小心你的動作不夠快而喪失了機會。'),
(3, 3, '★★☆☆☆', '財運不太穩定，特別要注意好大喜功所造成的負債，要控制個人物慾，寅吃卯糧就不好！'),
(4, 4, '★★★☆☆', '財運普通，一分耕耘有一分收穫。花錢時要評估一番，可別出手太闊！'),
(5, 5, '★★★☆☆', '切忌投機取巧，理財適合穩當操作！'),
(6, 6, '★★★★☆', '偏財運不錯，抽獎多有驚喜。'),
(7, 7, '★☆☆☆☆', '財運欠佳，凡事謹慎為宜，股票族的朋友莫聽信小道消息，也不宜有任何的舉動。'),
(8, 8, '★★★☆☆', '適合規劃、記帳的一天，仔細查看帳本，檢討並調整花錢的習慣。'),
(9, 9, '★★★★☆', '正財運還不錯，但需要努力的開發才會看見成效。'),
(10, 10, '★☆☆☆☆', '花費上盡量的控制，非必要性商品就少買點。'),
(11, 11, '★☆☆☆☆', '財運不穩定，使用支票、信用卡、簽約時要特別小心！'),
(12, 12, '★★★☆☆', '投機財賺得這麼辛苦，不如不要。');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) unsigned NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_03_13_120907_create_arstar_index', 1),
(4, '2019_03_13_121626_create_arstar_parser_overall_horoscopes', 1),
(5, '2019_03_13_121641_create_arstar_parser_love_horoscopes', 1),
(6, '2019_03_13_121740_create_arstar_parser_career_horoscopes', 1),
(7, '2019_03_13_121804_create_arstar_parser_wealth_horoscopes', 1),
(8, '2019_03_13_125320_delete_users_table', 2),
(9, '2019_03_13_125402_delete_password_resets_table', 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `arstar_index`
--
ALTER TABLE `arstar_index`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `arstar_parser_career_horoscopes`
--
ALTER TABLE `arstar_parser_career_horoscopes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `arstar_parser_love_horoscopes`
--
ALTER TABLE `arstar_parser_love_horoscopes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `arstar_parser_overall_horoscopes`
--
ALTER TABLE `arstar_parser_overall_horoscopes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `arstar_parser_wealth_horoscopes`
--
ALTER TABLE `arstar_parser_wealth_horoscopes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `arstar_index`
--
ALTER TABLE `arstar_index`
  MODIFY `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `arstar_parser_career_horoscopes`
--
ALTER TABLE `arstar_parser_career_horoscopes`
  MODIFY `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `arstar_parser_love_horoscopes`
--
ALTER TABLE `arstar_parser_love_horoscopes`
  MODIFY `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `arstar_parser_overall_horoscopes`
--
ALTER TABLE `arstar_parser_overall_horoscopes`
  MODIFY `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `arstar_parser_wealth_horoscopes`
--
ALTER TABLE `arstar_parser_wealth_horoscopes`
  MODIFY `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=10;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
