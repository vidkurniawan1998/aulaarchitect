-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jul 03, 2020 at 07:17 PM
-- Server version: 10.4.13-MariaDB
-- PHP Version: 7.2.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `intiru_craftify`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `email`, `name`) VALUES
(2, 'mahendrawardana', '6001c26274f43ac7c6b2be2662a027f6', 'mahendra.adi.wardana@gmail.com', 'Mahendra Wardana'),
(32, 'geren', '34bb77f37a397c3db7cc819f9ce0fa9f', 'gerenmekantara@gmail.com', 'geren');

-- --------------------------------------------------------

--
-- Table structure for table `blog`
--

CREATE TABLE `blog` (
  `id` int(11) NOT NULL,
  `id_team` int(11) DEFAULT NULL,
  `id_blog_category` int(11) DEFAULT NULL,
  `id_language` int(11) DEFAULT NULL,
  `title` varchar(255) NOT NULL,
  `thumbnail` text DEFAULT NULL,
  `thumbnail_alt` text DEFAULT NULL,
  `description` text NOT NULL,
  `use` enum('yes','no') DEFAULT 'no',
  `views` int(11) DEFAULT NULL,
  `slug` text DEFAULT NULL,
  `meta_title` varchar(255) NOT NULL,
  `meta_description` varchar(255) NOT NULL,
  `meta_keywords` varchar(255) NOT NULL,
  `created_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `blog`
--

INSERT INTO `blog` (`id`, `id_team`, `id_blog_category`, `id_language`, `title`, `thumbnail`, `thumbnail_alt`, `description`, `use`, `views`, `slug`, `meta_title`, `meta_description`, `meta_keywords`, `created_at`) VALUES
(29, NULL, 7, 2, '3 Hal yang Tak Diketahui Trader Pemula Dari Trading Forex', 'blog-single-post-02.jpg', '3 Hal yang Tak Diketahui Trader Pemula Dari Trading Forex', '<p>Ukuran seseorang bisa disebut amatir atau pro dalam&nbsp;<strong><a href=\"http://foreximf.com/product/forex/\" target=\"_blank\" rel=\"noopener\">forex trading</a></strong>&nbsp;bukan dilihat dari penghasilan utamanya yang bersumber dari trading forex.</p>\r\n<p>Justru lebih dari itu, pro atau tidaknya seorang trader adalah tentang bagaimana ia memperlakukan aktifitas trading-nya; serius atau main-main saja, atau justru lebih parah lagi; ia kira ia serius, tetapi ia tak tahu bagaimana sebenarnya trading yang serius itu.</p>\r\n<p>Berikut adalah hal-hal yang tak dipahami dan bahkan tak banyak dilakukan oleh para trader forex pemula yang mungkin perlu Anda ketahui agar tidak termasuk di dalamnya.</p>\r\n<h2>1. Membangun strategi dan trading plan, serta betul-betul menjalankannya</h2>\r\n<p>Tahapan paling penting dalam mempersiapkan dan memastikan bahwa Anda akan terlibat di pasar forex untuk jangka waktu yang panjang adalah dengan membangun&nbsp;strategi forex&nbsp;dan&nbsp;<a href=\"http://www.foreximf.com/blog/strategi-forex/bagaimana-menyusun-trading-plan-yang-baik/\" target=\"_blank\" rel=\"noopener\">trading plan</a>, serta memastikan bahwa Anda betul-betul menjalankannya.</p>\r\n<p>Di saat Anda yakin bahwa Anda telah cukup belajar dan melakukan berbagai riset, sudah memahami tingkat risiko, sudah melakukan uji coba lewat demo account dan berhasil meraup keutungan secara konsisten dalam (misalnya) tiga bulan berturut-turut, maka saat itulah Anda sudah siap membangun strategi dan trading plan.</p>\r\n<p>Apa pun gaya trading Anda, yang terpenting untuk Anda adalah&nbsp;<a href=\"http://www.foreximf.com/blog/strategi-forex/penggunaan-sinyal-trading/\" target=\"_blank\" rel=\"noopener\">strategi forex yang digunakan bisa menghasilkan profit secara konsisten</a>&nbsp;dengan arti; keuntungan yang diperoleh secara konsisten bisa melampaui kerugian yang diderita.</p>\r\n<p>Jangan lupa, jalankan trading plan Anda dengan baik, jangan dilanggar meskipun hanya sekali.</p>\r\n<h2>2. Memperlakukan demo account layaknya real account</h2>\r\n<p>Forex semakin populer dan semakin banyak orang yang ingin menjadi trader forex yang sukses, tetapi sedikit orang yang mau berlatih dengan serius lewat demo account. Padahal untuk bisa menjadi trader yang sukses, Anda butuh&nbsp;<a href=\"http://www.foreximf.com/trading-account/demo/?utm_source=artikel-trader-amatir&amp;utm_medium=anchor1&amp;utm_campaign=opendemo\" target=\"_blank\" rel=\"noopener\">berlatih untuk bisa menghasilkan profit konsisten</a>.</p>\r\n<p>Sarana untuk berlatih menghasilkan profit secara konsisten adalah&nbsp;<a href=\"http://www.foreximf.com/trading-account/demo/?utm_source=artikel-trader-amatir&amp;utm_medium=anchor2&amp;utm_campaign=opendemo\" target=\"_blank\" rel=\"noopener\">demo account</a>, di mana Anda bisa mengaplikasikan setiap hal yang Anda pelajari, mengeksekusi strategi dan trading plan yang sudah Anda siapkan.</p>\r\n<p>Sangat penting untuk benar-benar mengaplikasikan strategi dan trading plan Anda meskipun hanya di demo account, karena hal itu akan membentuk kebiasaan dan pada gilirannya akan membentuk karakter Anda sebagai trader yang disiplin.</p>\r\n<p>Jika Anda sudah bisa melakukan transaksi yang profitable di demo account setidaknya selama sebulan (tentu saja dengan trading plan yang benar), sebaiknya tidak menunda terlalu lama untuk segera melakukan&nbsp;<a href=\"http://www.foreximf.com/trading-account/real/?utm_source=artikel-trader-amatir&amp;utm_medium=anchor&amp;utm_campaign=openreal\" target=\"_blank\" rel=\"noopener\">live trading dengan real account</a>.</p>\r\n<p>Disarankan untuk tidak menunda lebih dari sebulan untuk segera melakukan transaksi di real account.</p>\r\n<h2>3. Kunci menjadi trader forex sukses</h2>\r\n<p>Di saat Anda sudah siap beralih dari demo ke real account, selalu ingat langkah-langkah lanjutan di bawah ini:</p>\r\n<ol>\r\n<li>Selalu patuhi strategi dan trading plan Anda.</li>\r\n<li>Selalu batasi resiko dengan stop-loss (SL). Jika tidak, hampir bisa dipastikan Anda akan gagal.</li>\r\n<li>Batasi resiko per transaksi maksimal 10% dari equity.</li>\r\n<li>Selalu obyektif. Jangan libatkan emosi saat trading.</li>\r\n<li>Jangan mecoba untuk &ldquo;balas dendam&rdquo;, yaitu ingin secepat mungkin membalas kerugian yang diderita sebelumnya.</li>\r\n<li>Lakukan transaksi hanya jika sudah ada konfirmasi dari strategi Anda.</li>\r\n<li>Jangan takut rugi! Semua trader handal kelas dunia pernah rugi dan mereka tetap survive</li>\r\n</ol>\r\n<p>Inilah jalan yang bisa Anda tempuh jika Anda benar-benar ingin menjadi trader forex yang sukses. Tentu saja aka nada naik-turun dalam perjalanan trading Anda, tetapi menyerah bukanlah pilihan.</p>\r\n<p>Jika Anda bisa menjadikan pengalaman buruk sebagai pelajaran, maka di kemudian hari Anda akan bisa mengetahui apa yang tidak boleh Anda lakukan sebagai trader.</p>\r\n<p>Jika Anda membutuhkan bantuan untuk belajar trading layaknya seorang Pro, ikuti webinar forex yang rutin diadakan oleh kami, FOREXimf. Selain itu, Anda juga bisa mengambil kelas offline di kantor kami.</p>\r\n<p>Caranya?</p>', 'yes', NULL, '3-hal-yang-tak-diketahui-trader-pemula-dari-trading-forex', '3 Hal yang Tak Diketahui Trader Pemula Dari Trading Forex', '3 Hal yang Tak Diketahui Trader Pemula Dari Trading Forex', '3 Hal yang Tak Diketahui Trader Pemula Dari Trading Forex', '2020-02-13 04:41:06'),
(30, NULL, 7, 2, 'Mengapa Anda Harus Memperkuat Modal Trading Di Akhir Tahun?', 'blog-single-post-03.jpg', 'Mengapa Anda Harus Memperkuat Modal Trading Di Akhir Tahun?', '<p style=\"text-align: justify;\">Dalam artikel sebelumnya, kami membahas Alasan kenapa Anda harus&nbsp;<a href=\"http://www.foreximf.com/blog/trading-forex/gandakan-bonus-akhir-tahun-dengan-trading-forex\">memanfaatkan bonus tahunan untuk trading forex</a>. Nah, bagaimana jika Anda sudah trading sebelumnya?</p>\r\n<p style=\"text-align: justify;\">Jawaban sederhananya adalah Anda bisa mempergunakan sebagian bonus itu untuk memperkuat modal Anda. Lalu, mengapa Anda perlu memperkuat modal?</p>\r\n<p style=\"text-align: justify;\">Berikut tiga&nbsp;<strong>alasan mengapa Anda perlu memperkuat modal untuk menghadapi market di akhir tahun 2019 hingga 2020</strong>.</p>\r\n<h3 style=\"text-align: justify;\">1. Semakin kuat modal = semakin leluasa berstrategi</h3>\r\n<p style=\"text-align: justify;\">Jika dianalogikan dengan medan pertempuran, modal itu ibarat amunisi bagi pasukan Anda yang akan bertempur. Semakin banyak amunisi yang dimiliki pasukan Anda, maka akan semakin leluasa Anda dalam menentukan strategi dan melepaskan tembakan. Dengan demikian, peluang Anda memenangkan pertempuran juga akan semakin besar.</p>\r\n<h3>2. Antisipasi fluktuasi akibat faktor berita ekonomi</h3>\r\n<p>Brexit masih belum final. Masih terjadi &ldquo;tarik-ulur&rdquo; dalam&nbsp;<em>deal</em>&nbsp;antara Inggris dengan Uni Eropa. Seperti yang telah diketahui, tenggat waktu untuk eksekusi Brexit berkali-kali diundur.</p>\r\n<h3>3. Peluang teknikal jangka menengah dan jangka panjang</h3>\r\n<p>Ada setidaknya satu peluang jangka menengah dan satu peluang jangka panjang yang layak Anda manfaatkan, jika Anda memiliki cukup modal untuk menahan/mengantisipasi fluktuasi harga yang mungkin akan terjadi.</p>\r\n<p>Pertama, peluang jangka menengah di minyak mentah (crude oil/CLS).</p>', 'yes', NULL, 'mengapa-anda-harus-memperkuat-modal-trading-di-akhir-tahun', 'Mengapa Anda Harus Memperkuat Modal Trading Di Akhir Tahun?', 'Mengapa Anda Harus Memperkuat Modal Trading Di Akhir Tahun?', 'Mengapa Anda Harus Memperkuat Modal Trading Di Akhir Tahun?', '2020-02-13 04:43:54'),
(31, NULL, 7, 2, 'Trading dengan Leverage 1:400? Ini Tips Agar Tidak Overtrade', 'blog-single-post-04.jpg', 'Trading dengan Leverage 1:400? Ini Tips Agar Tidak Overtrade', '<p>Dalam trading, leverage berarti &ldquo;daya ungkit&rdquo;. Sederhananya, dengan leverage Anda&nbsp;<strong>bisa melakukan transaksi dengan nilai yang jauh lebih besar daripada modal yang dikeluarkan</strong>.</p>\r\n<p>Contohnya, dengan modal sebesar $250, Anda bisa melakukan transaksi senilai $100,000.</p>\r\n<p>Kok bisa?</p>\r\n<p>Itu karena dalam kasus tersebut, leverage yang diterapkan adalah&nbsp;<strong>1:400</strong>. Dengan demikian, modal kita memiliki kekuatan&nbsp;<strong>400 kali lebih besar</strong>. Itu sebabnya dengan&nbsp;<strong>modal $250 Anda bisa bertransaksi senilai $100,000</strong>.</p>', 'yes', NULL, 'trading-dengan-leverage-1:400-ini-tips-agar-tidak-overtrade', 'Trading dengan Leverage 1:400? Ini Tips Agar Tidak Overtrade', 'Trading dengan Leverage 1:400? Ini Tips Agar Tidak Overtrade', 'Trading dengan Leverage 1:400? Ini Tips Agar Tidak Overtrade', '2020-02-13 04:45:18'),
(32, NULL, 7, 2, 'Apa Itu Signal Forex, Bagaimana Manfaat dan Keuntungannya?', 'blog-single-post-05.jpg', 'Apa Itu Signal Forex, Bagaimana Manfaat dan Keuntungannya?', '<p style=\"text-align: justify;\"><strong>Signal forex</strong>&nbsp;merupakan suatu layanan yang diberikan secara khusus oleh forex market analyst dan trader professional&nbsp;kepada klien-nya sebagai acuan untuk membuka posisi buy atau sell di salah satu atau banyak pair mata uang dengan level harga dan jangka waktu tertentu yang memiliki potensi untuk menghasilkan profit.</p>\r\n<p style=\"text-align: justify;\">Tentunya signal forex yang diberikan pun bukanlah sembarang signal trading, terutama signal yang setiap hari dikeluarkan oleh tim market analyst FOREXimf yang telah melalui proses analisa yang matang berdasarkan data dan kondisi pasar yang terjadi di market secara real-time.</p>\r\n<p style=\"text-align: justify;\">Selain itu, setiap sinyal forex yang dikeluarkan selalu diiringi dengan strategi yang telah terbukti dan teruji dalam berbagai kondisi sehingga termasuk dalam kategori&nbsp;<strong>sinyal forex akurat</strong>.</p>\r\n<p style=\"text-align: justify;\">Dengan tingkat akurasi sinyal forex yang cukup tinggi, yaitu hingga 70% &ndash;&nbsp;<a href=\"http://www.foreximf.com/services/signal/trade-with-ease/?utm_source=artikel&amp;utm_medium=penggunaan-signal-trading-1&amp;utm_campaign=signal-foreximf\">signal forex yang diberikan kepada lebih dari 2000 nasabah FOREXimf saat ini telah menghasilkan 1,800++ pips lebih dan terus bertambah</a>.</p>', 'yes', 1, 'apa-itu-signal-forex--bagaimana-manfaat-dan-keuntungannya', 'Apa Itu Signal Forex, Bagaimana Manfaat dan Keuntungannya?', 'Apa Itu Signal Forex, Bagaimana Manfaat dan Keuntungannya?', 'Apa Itu Signal Forex, Bagaimana Manfaat dan Keuntungannya?', '2020-02-13 04:46:24'),
(33, NULL, 7, 2, 'Berapa Akurasi Signal Trading yang Bagus?', 'blog-single-post-06.jpg', 'Berapa Akurasi Signal Trading yang Bagus?', '<p>Suatu sore, ketika saya tengah tenggelam dalam keasyikan melakukan backtesting sebuah sistem trading yang katanya bisa menghasilkan&nbsp;<strong><a href=\"http://www.foreximf.com/services/signal/high-accuracy/?utm_source=artikel&amp;utm_medium=signal-follower-independent-1&amp;utm_campaign=signal-foreximf\" target=\"_blank\" rel=\"noopener\">signal trading forex akurat</a></strong>, seorang kenalan menghubungi saya melalui WhatsApp.</p>\r\n<p>&ldquo;Dab, ada waktu nggak sore ini?&rdquo;&nbsp;katanya.<br />&ldquo;Ada apa Dab?&rdquo;, jawab saya.</p>\r\n<p>Kami memang sering saling menyapa dengan sebutan &ldquo;dab&rdquo;, sebuah kata dalam bahasa prokem Yogya yang artinya &ldquo;Mas&rdquo;&nbsp;(kakak laki-laki).</p>\r\n<p>Saya cukup lama tinggal di Yogyakarta, sejak SMA hingga lulus kuliah. Di sanalah kami berkenalan dan kemudian menjadi cukup akrab.</p>\r\n<p>Sebenarnya saya malas diganggu ketika sedang &ldquo;on fire&rdquo;&nbsp;mengerjakan sesuatu. Distraksi sekecil apa pun bisa serta-merta memadamkan semangat saya. Sulit bagi saya untuk bisa kembali menemukan momentum.</p>\r\n<p>Itulah sebabnya saya senantiasa mengenakan headset dan menyalakan musik di kantor ketika sedang mengerjakan sesuatu, supaya saya tak perlu terdistraksi oleh bunyi apa pun.</p>\r\n<p>Biasanya saya pilih Mozart atau jazz.</p>\r\n<p>Lagipula bisa menenangkan saya, membuat saya bisa berpikir lebih lancar.</p>\r\n<p>&ldquo;Aku pengen sinau trading,&rdquo;&nbsp;katanya.</p>\r\n<p>&ldquo;Sinau&rdquo;&nbsp;adalah kata dalam bahasa Jawa yang artinya belajar. Saya paham dia hanya berbasa-basi untuk menghormati saya.</p>\r\n<p>Lha wong dia memang sudah bisa dan biasa trading, kok. Cukup berpengalaman, malah. Tetapi berbeda dengan saya, ia lebih banyak trading saham. Ia pernah trading forex tetapi tidak begitu berhasil.</p>\r\n<p>Saya mengerti ia hanya ingin berdiskusi dan saya suka berdiskusi tentang trading karena bisa memperkaya pengetahuan dan memperluas wawasan saya.</p>\r\n<p>&ldquo;OK. Jam piro? Dimana?&rdquo;</p>\r\n<p>&ldquo;Habis maghrib, di tempat kita biasa ngopi dulu.&rdquo;</p>\r\n<p>Ia menyebutkan sebuah coffee shop yang cukup terkenal di Bandung.</p>\r\n<p>&ldquo;Gimana?&rdquo; lanjutnya.</p>\r\n<p>&ldquo;OK. Sip,&rdquo; balasku menutup percakapan.</p>\r\n<p>&mdash;</p>\r\n<p>Petang itu kami pun bertemu. Setelah sejenak berbasa-basi dan tertawa tentang kisah-kisah jenaka masa lalu, kami memulai percakapan sesungguhnya.</p>\r\n<p>Tentang trading, seperti yang sebelumnya telah kami bicarakan melalui WhasApp. Ia memulai dengan memperlihatkan demo account di laptop yang ia bawa.</p>\r\n<p>&ldquo;Dab, aku pengen trading forex lagi, tapi pengalaman loss yang terakhir cukup membuatku harus lebih berhati-hati,&rdquo; katanya membuka percakapan.</p>\r\n<p>&ldquo;Loss dalam trading itu biasa Dab,&rdquo; kata saya.</p>\r\n<p>&ldquo;Dirimu sebagai trader berpengalaman pasti pahamlah.&rdquo;</p>\r\n<p>&ldquo;Iyo, bener. Tapi karater forex ini beda dengan saham, Dab. Aku kan masih baru di forex. Jadi sepertinya harus sinau lagi pada dirimu,&rdquo; katanya.</p>\r\n<p>&ldquo;Halah, gombalmu!&rdquo; kataku. Kami tertawa bersama.</p>\r\n<p>&ldquo;Jadi, kemarin aku googling strategi forex, lalu aku menemukan ini,&rdquo; katanya sambil memutar laptopnya hingga layarnya menghadap kepadaku.</p>\r\n<p>Layar itu memperlihatkan situs sebuah trading signal provider berbayar.</p>\r\n<p>&ldquo;Bagaimana menurutmu? Aku tertarik berlangganan,&rdquo; katanya meminta pendapat saya.</p>\r\n<p>&ldquo;Tidak ada masalah. Tapi kalau bisa, coba lihat track record mereka dulu. Ada program trial-nya tidak?&rdquo; kata saya.</p>\r\n<p>&ldquo;Hm&hellip; tidak ada.&rdquo;&nbsp;balasanya.</p>\r\n<p>&ldquo;Kalau begitu, jangan pilih yang itu. Cari yang ada program trial-nya.&rdquo;&nbsp;timpal saya.</p>\r\n<p>Ia pun kembali bertanya, &ldquo;Memangnya ada yang seperti itu?&rdquo;</p>\r\n<p>&ldquo;Ada, bahkan trading signal-nya gratis,&rdquo;&nbsp;jawab saya.</p>\r\n<p>&ldquo;Ah, mosok?&rdquo; Ketidakpercayaan jelas terlihat di wajahnya.</p>\r\n<p>&ldquo;Kamu coba program&nbsp;<a href=\"http://www.foreximf.com/services/signal/high-accuracy/?utm_source=artikel&amp;utm_medium=signal-follower-independent-2&amp;utm_campaign=signal-foreximf\" target=\"_blank\" rel=\"noopener\"><strong>trading signal trial</strong></a>&nbsp;dari FOREXimf.com deh, trial selama 7 hari &ndash; Gratis. Setelah itu, kalau kamu cocok dan puas, bisa lanjut seumur hidupmu dan tetap gratis,&rdquo; kata saya.</p>\r\n<p>&ldquo;Yang bener, Dab?&rdquo; katanya, masih kurang yakin.</p>\r\n<p>&ldquo;Iya, bener. Kamu cukup buka live account saja di situ dan trading signal akan kamu dapatkan cuma-cuma selama kamu jadi nasabah aktif di sana. Tidak hanya itu, kamu juga bisa berdiskusi dengan tim Market Analyst seperti kita diskusi saat ini,&rdquo; jawabku.</p>\r\n<p>&ldquo;Wah, menarik, Dab!&rdquo; katanya antusias sambil menjentikkan jarinya.</p>\r\n<p>Saya tahu dia antusias, karena kebiasannya menjentikkan jari itu ketika mendengar atau melihat sesuatu yang menurutnya bagus.</p>\r\n<p>&ldquo;Iyalah. Makanya daftar aja sekarang!&rdquo;</p>\r\n<p>&ldquo;Sip, sip. Tapi nanti dulu. Sebenarnya aku mau tanya padamu, menurutmu lebih baik mana: signal follower atau independent trader?&rdquo; tanyanya.</p>\r\n<p>Saya balik bertanya, &ldquo;yang kamu maksud dengan independent trader itu yang seperti apa?&rdquo;</p>\r\n<p>&ldquo;Ya&hellip; trader yang mandiri. Yang tidak bergantung pada orang lain kalau mau trading &ndash; yang bisa menganalisa sendiri, mengambil keputusan sendiri,&rdquo; jawabnya.</p>\r\n<p>&ldquo;Independent trader itu baik, signal follower pun tak buruk,&rdquo; jawab saya.</p>\r\n<p>Saya melanjutkan, &ldquo;Keuntungan menjadi independent trader adalah kita tidak perlu mengeluarkan biaya lebih untuk bisa mendapatkan trading signal.</p>\r\n<p>Tetapi untuk menjadi seorang trader yang mandiri tentu tidak instan. Ada waktu dan mungkin bahkan biaya yang harus kita sediakan.</p>\r\n<p>Kita juga harus betul-betul berkomitmen untuk itu. Kamu tahu sendiri bagaimana upayaku selama bertahun-tahun, bahkan hingga satu dekade lebih, mendedikasikan diriku mempelajari forex trading.&rdquo;</p>\r\n<p>Ia manggut-manggut tanda setuju.</p>\r\n<p>Saya melanjutkan, &ldquo;di sisi lain, menjadi signal follower juga tidak salah. Asalkan, tidak mengikuti secara buta.</p>\r\n<p>Artinya, kalau kita mau jadi signal follower, setidaknya kita harus tahu dasar-dasar analisa dan trading dulu.</p>\r\n<p>Di antaranya dan yang paling penting adalah money management dan risk management.</p>\r\n<p>Jadi, di saat kita mau mengikuti trading signal yang diberikan oleh signal provider, kita tahu di mana batasan resikonya hingga berapa lot maksimal yang boleh kita pergunakan.&rdquo;</p>\r\n<p>&ldquo;Nah, di FOREXimf.com, kamu bisa mendapatkan semua itu. Trading signal diberikan tiap kali tim Market Analyst berhasil mendapatkan sinyal yang confirmed, dan kamu bisa berdiskusi dengan mereka tentang posisi yang akan kamu ambil.</p>\r\n<p>Jadi itu semacam one stop trading service, kamu dapat trading signal, edukasi sekaligus konsultasi. Enak, kan?&rdquo;</p>\r\n<p>&ldquo;Jadi, sekali lagi, menjadi signal follower tidak ada salahnya, bahan sama baiknya dengan trader mandiri, asalkan, ya itu tadi:&nbsp;<strong>kita sebaiknya punya dasar pengetahuannya dulu</strong>.</p>\r\n<p>Dengan konsep di FOREXimf.com, kamu secara tidak langsung &lsquo;dilatih&rsquo; untuk bisa mengenali peluang secara mandiri juga.</p>\r\n<p>Jadi dua-duanya bisa dapat: pertama mungkin jadi signal follower dulu, kemudian menjadi independent trader karena setiap trading signal yang dikirim selalu disertai penjelasan secara teknikal, apa yang menjadi alasan teknikalnya.</p>\r\n<p>Misalnya, ada pola candlestick tertentu, atau sinya indikator tertentu.&rdquo;</p>\r\n<p>&ldquo;Pada gilirannya, karena terbiasa &lsquo;dididik&rsquo; melalui trading signal, akhirnya kamu akan jadi trader mandiri juga, Dab.</p>\r\n<p>Nantinya, kalau kamu melihat ada peluang, kamu bisa konsultasikan juga dengan tim Market Analyst FOREXimf.com. Biar kamu lebih yakin.&rdquo;</p>\r\n<p>&ldquo;Nah, kalau kamu sudah benar-benar mandiri, trading signal dari FOREXimf.com sudah menjadi semacam &lsquo;asisten pribadi&rsquo;-mu yang tugasnya memberikan informasi setiap peluang yang muncul seandainya kamu sedang tidak ada waktu mantengin chart.</p>\r\n<p>Tinggal tunggu kabar dari tim Market Analyst FOREXimf.com, kamu tingga cek, menurutmu valid atau tidak. Enak, to?&rdquo; saya menjelaskan panjang lebar.</p>\r\n<p>Matanya berbinar. &ldquo;Berapa biayanya?&rdquo; tanyanya.</p>\r\n<p>&ldquo;Kamu ini lho&hellip;. Kan tadi sudah kukatakan: GRATIS.</p>\r\n<p>Kamu bisa coba dulu selama 7 hari, lalu setelah kamu buka live account, kamu bisa dapat semua layanan itu GRATIS,&rdquo; jawab saya.</p>\r\n<p>&ldquo;Wah, kenapa aku nggak tahu dari dulu?&rdquo; katanya.</p>\r\n<p>&ldquo;Lha, kamu selama ini ke mana saja?&rdquo;</p>\r\n<p>Lalu kami kembali tertawa bersama-sama.</p>\r\n<p>&mdash;</p>\r\n<p>Beberapa waktu kemudian, ada pesan di WhatsApp saya, &ldquo;Dab, aku sudah&nbsp;<strong><a href=\"http://www.foreximf.com/services/signal/trade-with-ease/?utm_source=artikel&amp;utm_medium=signal-follower-independent-1&amp;utm_campaign=signal-foreximf\" target=\"_blank\" rel=\"noopener\">pakai signal trading dari FOREXimf, dan terbukti sampai saat ini saya telah menghasilkan 1,800++ pips</a></strong>.</p>', 'yes', 4, 'berapa-akurasi-signal-trading-yang-bagus', 'Berapa Akurasi Signal Trading yang Bagus?', 'Berapa Akurasi Signal Trading yang Bagus?', 'Berapa Akurasi Signal Trading yang Bagus?', '2020-02-13 04:47:30'),
(34, NULL, 7, 2, 'Loss Gara-Gara Salah Signal Trading? (Ini Alasannya)', 'blog-single-post-07.jpg', 'Loss Gara-Gara Salah Signal Trading? (Ini Alasannya)', '<p style=\"text-align: justify;\">Salah satu metode analisa dalam trading forex adalah analisa teknikal dan&nbsp;<em>charting&nbsp;</em>alias&nbsp;<strong>analisa teknikal yang memanfaatkan grafik pergerakan harga</strong>&nbsp;(price chart/chart) yang merupakan salah satu metode analisa teknikal paling populer.</p>\r\n<p style=\"text-align: justify;\">Para&nbsp;<em>chartist&nbsp;</em>mempergunakan chart untuk kemudian memanfaatkannya untuk memproduksi&nbsp;<strong><a href=\"http://www.foreximf.com/services/signal/high-accuracy/?utm_source=artikel&amp;utm_medium=loss-karena-signal&amp;utm_campaign=signal-foreximf\" target=\"_blank\" rel=\"noopener\">signal trading akurat</a></strong>. Atau, setidaknya diharapkan untuk menjadi akurat, atau mendekati akurat.</p>\r\n<p style=\"text-align: justify;\">Permasalahan yang sering dijumpai kemudian biasanya adalah kemunculan&nbsp;<em>false signal</em>, atau sinyal palsu alias salah. Sinyal palsu semacam ini biasa muncul dari indikator teknikal, baik itu yang standar maupun yang&nbsp;<em>custom</em>.</p>\r\n<p style=\"text-align: justify;\">Jika false signal terlalu sering muncul, cukup sering seorang trader merasa tertipu oleh indikator teknikal yang ia pergunakan, sehingga akhirnya ia memutuskan untuk tidak lagi mempergunakan indikator teknikal tersebut.</p>\r\n<p style=\"text-align: justify;\">Tidak bisa dipungkiri bahwa memang indikator teknikal tidak mungkin bisa sempurna, dalam arti selalu benar.</p>\r\n<p style=\"text-align: justify;\">Lebih jauh lagi, trader yang mempergunakan indikator tersebut pun adalah manusia biasa yang bisa jadi salah menginterpretasikan kondisi indikator teknikal saat ia akan membuka posisi.</p>\r\n<p style=\"text-align: justify;\">Jadi, memang bisa jadi indikator teknikalnya yang kurang berkualitas, bisa pula ada faktor&nbsp;<em>human error</em>, di mana interpretasi seorang trader berbeda dengan apa yang terjadi sesungguhnya.</p>\r\n<p style=\"text-align: justify;\">Dalam tulisan ini, kita akan membatasi pembahasan pada&nbsp;<strong>menghindari false signal</strong>&nbsp;pada indikator teknikal standar yang ada di MetaTrader.</p>\r\n<p style=\"text-align: justify;\">Kalau kita mau membahas semua indikator custom yang beredar di dunia trading forex, saya khawatir itu akan membutuhkan waktu setidaknya dua periode jabatan presiden RI.</p>\r\n<h2 style=\"text-align: justify;\">Pahami apa itu indikator teknikal</h2>\r\n<p style=\"text-align: justify;\">Berdasarkan definisi MetaTrader, indikator teknikal adalah &ldquo;manipulasi matematis&rdquo; atas harga dan/atau volume yang bertujuan untuk memperkirakan pergerakan harga di masa datang.</p>\r\n<p style=\"text-align: justify;\">Keputusan trading mengenai bagaimana dan kapan waktunya untuk membuka atau menutup posisi bisa dibuat berdasarkan sinyal-sinyal dari indikator teknikal.</p>\r\n<p style=\"text-align: justify;\">Menurut fungsinya, indikator teknikal bisa dibagi ke dalam dua kelompok:</p>\r\n<ul style=\"text-align: justify;\">\r\n<li>Indikator trend</li>\r\n<li>Indikator osilator</li>\r\n</ul>\r\n<p style=\"text-align: justify;\">Indikator trend membantu kita untuk mengamati arah harga dan mendeteksi perubahan arah secara langsung ataupun dengan jeda waktu tertentu. Sedangkan osilator memungkinkan kita mencari &ldquo;momentum pembalikan&rdquo; arah.</p>\r\n<p style=\"text-align: justify;\">Perhatikan kata&nbsp;<strong>manipulasi matematis</strong>&nbsp;dalam definisi indikator teknikal di atas. Artinya, indikator teknikal sebenarnya adalah &ldquo;produk&rdquo; dari pergerakan harga yang telah terjadi, di mana ia&nbsp;mengolah data yang ada dan kemudian dengan algoritma tertentu ia akan memberikan signal yang kemudian di interpretasi sebagai sinyal jual atau beli dalam trading forex.</p>\r\n<p style=\"text-align: justify;\">Dengan demikian, permasalahannya kemudian adalah interpretasi dari penggunan indikator tersebut, yaitu trader.</p>\r\n<h2 style=\"text-align: justify;\">Kesalahan dalam membaca indikator teknikal</h2>\r\n<p style=\"text-align: justify;\">Indikator teknikal tidak hanya memanfaatkan data pergerakan harga yang telah terjadi, tetapi juga pergerakan harga yang sedang terjadi.</p>\r\n<p style=\"text-align: justify;\">Itulah mengapa &ndash; kalau Anda perhatikan &ndash; indikator teknikal senantiasa bergerak atau berubah (naik-turun, muncul-hilang, atau berubah warna) mengikuti pergerakan harga terkini.</p>\r\n<p style=\"text-align: justify;\">Ambil contoh, Parabolic SAR.</p>\r\n<p style=\"text-align: justify;\">Anda akan sering menemukan titik SAR muncul di bawah bar/candlestick, tetapi kemudian titik tersebut hilang dan berpindah tempat ke atas bar/candlestick yang Anda amati.</p>\r\n<p style=\"text-align: justify;\">Itu karena sebelumnya (berdasarkan algoritma pemrogramannya) titik SAR memang semestinya berada di bawah bar/candlestick, tetapi karena harga terus berubah dan membuat perhitungan SAR-nya pun berubah, maka titik SAR kemudian &ldquo;berpindah tempat&rdquo;.</p>\r\n<p style=\"text-align: justify;\">Intinya, indikator teknikal bisa berubah sesuai dengan kondisi market.</p>\r\n<p style=\"text-align: justify;\">Contoh kasus Parabolic SAR di atas hanya salah satu contoh saja. Mungkin Anda sering mendengar ada rekan trader Anda yang berceloteh,&nbsp;<em>&ldquo;Wah, stochastic-nya nipu! Tadi udah crossing naik, eh dia turun lagi!&rdquo;</em></p>\r\n<p style=\"text-align: justify;\">Sebenarnya, saudara-saudara, stochastic tidak menipu. Kitalah yang sering salah menginterpretasi kondisi stochastic. Bahwa sinyal dari stochastic bisa gagal, ya. Tetapi dia tidak menipu.</p>\r\n<h2 style=\"text-align: justify;\">Tunggu Konfirmasi Closing Bar/Candlestick</h2>\r\n<p style=\"text-align: justify;\">Untuk menghindari salah paham atau salah interpretasi yang melahirkan false signal, Anda perlu menunggu sampai sinyal yang muncul dari indikator teknikal itu betul-betul terkonfirmasi.</p>\r\n<p style=\"text-align: justify;\">Di atas sudah saya jelaskan bahwa indikator teknikal bisa berubah mengikuti perkembangan harga terkini, maka kuncinya adalah Anda harus menunggu hingga bar/candlestick yang Anda pergunakan betul-betul sudah komplit.</p>\r\n<p style=\"text-align: justify;\">Maksudnya bagaimana?</p>\r\n<p style=\"text-align: justify;\">Komplit di sini maksudnya adalah sudah&nbsp;<em>closed</em>.</p>\r\n<p style=\"text-align: justify;\">Mari kembali ke tuduhan stochastic menipu tadi.</p>\r\n<p style=\"text-align: justify;\">Contohnya, jika Anda mempergunakan&nbsp;<em>candlestick</em>&nbsp;<em>time frame&nbsp;</em>H1, maka untuk mengonfirmasi sinyal dari&nbsp;<em>stochastic</em>&nbsp;pastikan umur&nbsp;candlestick-nya sudah satu jam. Tunggu hingga candlestick tersebut closed, persis satu jam.</p>\r\n<p style=\"text-align: justify;\">Sinyal yang diberikan oleh stochastic (buy atau sell) akan lebih confirmed jika candlestick-nya sudah betul-betul closed.</p>\r\n<h2 style=\"text-align: justify;\">Pergunakan Beberapa Indikator</h2>\r\n<p style=\"text-align: justify;\">Cara lain untuk meminimalisir false signal&nbsp;adalah dengan mengombinasikan beberapa indikator teknikal. Cara ini cukup banyak dipergunakan oleh trader-trader berpengalaman. Kombinasi beberapa indikator inilah yang kemudian biasa disebut sebagai&nbsp;<strong>strategi trading</strong>.</p>\r\n<p style=\"text-align: justify;\">Dengan mempergunakan beberapa indikator teknikal, Anda akan bisa melihat sudut pandang lain. Misalnya Anda memadukan&nbsp;<em>Moving Average</em>&nbsp;(MA) dengan&nbsp;<em>stochastic</em>.</p>\r\n<p style=\"text-align: justify;\">Ketika stochastic memperlihatkan sinyal buy tetapi&nbsp; MA justru mengarah ke bawah, Anda bisa berhati-hati karena sinyal buy yang muncul mungkin tidak terlalu kuat, atau mungkin false, karena melawan trend yang sedang terjadi.</p>\r\n<p style=\"text-align: justify;\">Tetapi ingat, sebaiknya tidak mempergunakan terlalu banyak indikator untuk menghindari kebingungan. Disarankan untuk mempergunakan maksimal tiga indikator berbeda dalam satu chart.</p>\r\n<p style=\"text-align: justify;\">Selamat mencoba.</p>', 'yes', 4, 'loss-gara-gara-salah-signal-trading-ini-alasannya', 'Loss Gara-Gara Salah Signal Trading? (Ini Alasannya)', 'Loss Gara-Gara Salah Signal Trading? (Ini Alasannya)', 'Loss Gara-Gara Salah Signal Trading? (Ini Alasannya)', '2020-02-13 04:48:23'),
(35, NULL, 7, 1, 'French Finance Minister: We can not wait indefinitely until UK makes a decision to leave EU', 'blog-single-post-08.jpg', 'French Finance Minister: We can not wait indefinitely until UK makes a decision to leave EU', '<p>The French finance minister pointed out that EU should take a stand towards the Brexit, noting that it can not wait indefinitely until UK makes a decision to leave the European Union while continuing to postpone unnecessarily and a strong cause other than disagreement in domestic political trends.</p>', 'yes', 1, 'french-finance-minister:-we-can-not-wait-indefinitely-until-uk-makes-a-decision-to-leave-eu', 'French Finance Minister: We can not wait indefinitely until UK makes a decision to leave EU', 'French Finance Minister: We can not wait indefinitely until UK makes a decision to leave EU', 'French Finance Minister: We can not wait indefinitely until UK makes a decision to leave EU', '2020-02-13 05:49:37'),
(36, NULL, 7, 2, '123', 'blog-single-post.jpg', '123', '<p>123</p>', 'yes', NULL, '123', '123', '12123', '123123', '2020-05-05 16:48:20');

-- --------------------------------------------------------

--
-- Table structure for table `blog_category`
--

CREATE TABLE `blog_category` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `thumbnail` varchar(255) DEFAULT NULL,
  `thumbnail_alt` varchar(255) DEFAULT NULL,
  `use` enum('yes','no') DEFAULT NULL,
  `meta_keywords` varchar(255) DEFAULT NULL,
  `meta_title` varchar(255) DEFAULT NULL,
  `meta_description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `blog_category`
--

INSERT INTO `blog_category` (`id`, `title`, `description`, `thumbnail`, `thumbnail_alt`, `use`, `meta_keywords`, `meta_title`, `meta_description`) VALUES
(7, 'Campaign', '<p>Campaign</p>', 'campaign.jpeg', 'Campaign', 'yes', 'Campaign', 'Campaign', 'Campaign'),
(8, 'K3 Pariwisata', '<p>K3 Pariwisata</p>', 'k3-pariwisata.jpeg', 'K3 Pariwisata', 'yes', 'K3 Pariwisata', 'K3 Pariwisata', 'K3 Pariwisata'),
(9, 'K3 Perhotelan', '<p>K3 Pariwisata</p>', 'k3-perhotelan1.jpeg', 'K3 Pariwisata', 'yes', 'K3 Pariwisata', 'K3 Pariwisata', 'K3 Pariwisata'),
(10, 'K3 Rumah Sakit', '<p>K3 Rumah Sakit</p>', 'k3-rumah-sakit.jpeg', 'K3 Rumah Sakit', 'yes', 'K3 Rumah Sakit', 'K3 Rumah Sakit', 'K3 Rumah Sakit'),
(11, 'Profesi Milenial', '<p>Profesi Milenial</p>', 'profesi-milenial.jpeg', 'Profesi Milenial', 'yes', 'Profesi Milenial', 'Profesi Milenial', 'Profesi Milenial'),
(12, 'Stress Management', '<p>Stress Management</p>', 'stress-management.jpeg', 'Stress Management', 'yes', 'Stress Management', 'Stress Management', 'Stress Management'),
(13, 'Gizi Pekerja', '<p>Gizi Pekerja</p>', 'gizi-pekerja.jpeg', 'Gizi Pekerja', 'yes', 'Gizi Pekerja', 'Gizi Pekerja', 'Gizi Pekerja'),
(14, 'Undang Undang', '<p>Undang Undang</p>', 'undang-undang.jpeg', 'Undang Undang', 'yes', 'Undang Undang', 'Undang Undang', 'Undang Undang');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `id_language` int(11) DEFAULT NULL,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `thumbnail` varchar(255) DEFAULT NULL,
  `thumbnail_alt` varchar(255) DEFAULT NULL,
  `use` enum('yes','no') DEFAULT NULL,
  `view_top_menu` enum('yes','no') DEFAULT NULL,
  `meta_keywords` varchar(255) DEFAULT NULL,
  `meta_title` varchar(255) DEFAULT NULL,
  `meta_description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `id_language`, `title`, `description`, `thumbnail`, `thumbnail_alt`, `use`, `view_top_menu`, `meta_keywords`, `meta_title`, `meta_description`) VALUES
(23, 2, 'Tas', '<p>-</p>', NULL, '-', 'yes', 'yes', 'Tas', 'Tas', 'Tas'),
(24, 2, 'Sandal', '<p>-</p>', NULL, '-', 'yes', 'yes', 'Sandal', 'Sandal', 'Sandal'),
(25, 2, 'Dekorasi', '<p>Hias Dinding</p>', NULL, 'Hias Dinding', 'yes', 'no', 'Hias Dinding', 'Hias Dinding', 'Hias Dinding');

-- --------------------------------------------------------

--
-- Table structure for table `comment`
--

CREATE TABLE `comment` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `thumbnail` varchar(255) DEFAULT NULL,
  `thumbnail_alt` varchar(255) DEFAULT NULL,
  `use` enum('yes','no') NOT NULL,
  `date` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `comment`
--

INSERT INTO `comment` (`id`, `title`, `description`, `thumbnail`, `thumbnail_alt`, `use`, `date`) VALUES
(3, 'Alexander', 'Praesent mattis commodo augue Aliquam ornare hendrerit augue Cras tellus In pulvinar lectus a est.', 'alexander.jpeg', 'Alexander', 'yes', ''),
(4, 'Westley', 'Praesent mattis commodo augue Aliquam ornare hendrerit augue Cras tellus In pulvinar lectus a est.', 'westley.jpeg', 'Westley', 'yes', ''),
(5, 'Westley Uy', 'Praesent mattis commodo augue Aliquam ornare hendrerit augue Cras tellus In pulvinar lectus a est.', 'westley-uy.jpeg', 'Westley', 'yes', ''),
(6, 'Mahendra', 'Praesent mattis commodo augue Aliquam ornare hendrerit augue Cras tellus In pulvinar lectus a est.', 'mahendra.jpeg', 'Praesent mattis commodo augue Aliquam ornare hendrerit augue Cras tellus In pulvinar lectus a est.', 'yes', '');

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `message` text NOT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `dictionary`
--

CREATE TABLE `dictionary` (
  `id` int(11) NOT NULL,
  `id_language` int(11) DEFAULT NULL,
  `dict_variable` varchar(255) DEFAULT NULL,
  `dict_word` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dictionary`
--

INSERT INTO `dictionary` (`id`, `id_language`, `dict_variable`, `dict_word`) VALUES
(92, 1, 'back', 'Back'),
(93, 2, 'back', 'Kembali'),
(94, 1, 'book_now', 'Book Now'),
(95, 2, 'book_now', 'Pesan Sekarang'),
(96, 1, 'development_by', 'Development By'),
(97, 2, 'development_by', 'Dikembangkan Oleh'),
(98, 1, 'email', 'Email'),
(99, 2, 'email', 'Email'),
(100, 1, 'free_trial', 'Free Trial'),
(101, 2, 'free_trial', 'Gratis Dicoba'),
(102, 1, 'handphone', 'Phone Number'),
(103, 2, 'handphone', 'Nomer Handphone'),
(104, 1, 'message', 'Message'),
(105, 2, 'message', 'Pesan'),
(106, 1, 'message_send', 'Send Message'),
(107, 2, 'message_send', 'Kirim Pesan'),
(108, 1, 'name', 'Name'),
(109, 2, 'name', 'Nama'),
(110, 1, 'request_send', 'Send Request'),
(111, 2, 'request_send', 'Kirim Permintaan'),
(112, 1, 'security_code', 'Security Code'),
(113, 2, 'security_code', 'Kode Keamanan'),
(114, 1, 'social_media', 'Social Media'),
(115, 2, 'social_media', 'Media Sosial'),
(116, 1, 'top_menu', 'Top Menu'),
(117, 2, 'top_menu', 'Menu Utama');

-- --------------------------------------------------------

--
-- Table structure for table `email`
--

CREATE TABLE `email` (
  `id` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `use` enum('yes','no') NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `email`
--

INSERT INTO `email` (`id`, `email`, `use`) VALUES
(3, 'mahendra.adi.wardana@gmail.com', 'yes');

-- --------------------------------------------------------

--
-- Table structure for table `free_ebook`
--

CREATE TABLE `free_ebook` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `message` text DEFAULT NULL,
  `status_send` enum('yes','no') DEFAULT NULL,
  `send_date` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `free_ebook`
--

INSERT INTO `free_ebook` (`id`, `name`, `email`, `phone`, `message`, `status_send`, `send_date`, `created_at`) VALUES
(4, 'Mahendra Wardana', 'mahendra.adi.wardana@gmail.com', '081934364063', 'testasdf asdf ad', 'yes', '2020-02-14 02:41:05', '2020-02-14 01:36:46');

-- --------------------------------------------------------

--
-- Table structure for table `free_trial`
--

CREATE TABLE `free_trial` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `message` text DEFAULT NULL,
  `status_free` enum('yes','no') DEFAULT NULL,
  `created_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `free_trial`
--

INSERT INTO `free_trial` (`id`, `name`, `email`, `phone`, `message`, `status_free`, `created_at`) VALUES
(1, 'Mahendra Wardana', 'mahendra.adi.wardana@gmail.com', '081934364063', 'test', 'no', '2020-02-13 23:41:42'),
(2, 'Mahendra Wardana', 'mahendra.adi.wardana@gmail.com', '081934364063', 'test', 'no', '2020-02-13 23:53:24'),
(3, 'Mahendra Wardana', 'mahendra.adi.wardana@gmail.com', '081934364063', 'asdfasdfas test', 'no', '2020-02-13 23:56:21');

-- --------------------------------------------------------

--
-- Table structure for table `gallery`
--

CREATE TABLE `gallery` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `thumbnail` varchar(255) NOT NULL,
  `thumbnail_alt` text DEFAULT NULL,
  `use` enum('yes','no') DEFAULT 'no'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `gallery`
--

INSERT INTO `gallery` (`id`, `title`, `description`, `thumbnail`, `thumbnail_alt`, `use`) VALUES
(5, 'Mengapa1', '21', 'mengapa1.jpeg', '1', 'yes'),
(7, '1', '2', '1.jpeg', 'tes', 'yes'),
(8, 'af', '', 'af.jpeg', 'fa', 'yes'),
(9, 'af1', '', 'af1.jpeg', 'fa', 'yes'),
(10, 'asdf', '', 'asdf.jpeg', 'asdf', 'yes'),
(11, 'asdf 1', '', 'asdf-1.jpeg', 'asdf', 'yes'),
(12, 'asdfasdf', '', 'asdfasdf.jpeg', 'asdfadf', 'yes'),
(13, 'asdf', '', 'asdf.jpeg', 'asdfasdf', 'yes'),
(14, 'asdfasdf', '', 'asdfasdf.jpeg', 'asdfasdf', 'yes');

-- --------------------------------------------------------

--
-- Table structure for table `language`
--

CREATE TABLE `language` (
  `id` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `thumbnail` varchar(255) DEFAULT NULL,
  `code` char(10) DEFAULT NULL,
  `use` enum('yes','no') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `language`
--

INSERT INTO `language` (`id`, `title`, `thumbnail`, `code`, `use`) VALUES
(1, 'English', 'english.png', 'en', 'no'),
(2, 'Indonesia', 'indonesia.png', 'id', 'yes'),
(3, 'Chinese', 'chinese.png', 'zh', 'no'),
(4, 'Japan', 'japan.jpg', 'jp', 'no');

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` int(11) NOT NULL,
  `id_language` int(11) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `title_sub` varchar(255) DEFAULT NULL,
  `title_menu` varchar(255) DEFAULT NULL,
  `thumbnail` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `meta_title` varchar(255) DEFAULT NULL,
  `meta_keywords` varchar(255) DEFAULT NULL,
  `meta_description` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `status_seo` enum('yes','no') DEFAULT 'yes',
  `status_thumbnail` enum('yes','no') DEFAULT 'no',
  `status_file` enum('yes','no') DEFAULT 'no',
  `data_1` text DEFAULT NULL,
  `data_1_status` enum('yes','no') DEFAULT 'no',
  `file` text DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `controller_method` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `id_language`, `title`, `title_sub`, `title_menu`, `thumbnail`, `description`, `meta_title`, `meta_keywords`, `meta_description`, `type`, `status_seo`, `status_thumbnail`, `status_file`, `data_1`, `data_1_status`, `file`, `slug`, `controller_method`) VALUES
(16, 2, 'Beranda', '-', 'Beranda', 'beranda.jpeg', '<p>Lorem ipsum dolor sit amet, ex eam mundi populo accusamus, aliquam quaestio petentium te cum. <br> Vim ei oblique tacimates, usu cu iudico graeco. Graeci eripuit inimicus vel eu, eu mel unum laoreet splendide, cu integre apeirian has.</p>', 'Craftify', 'Craftify', 'Craftify', 'home', 'yes', NULL, 'no', 'null', 'no', NULL, 'beranda', 'home'),
(17, 2, 'Pengaduan', 'Pengaduan', 'Pengaduan', NULL, '<div class=\"col-md-8 offset-md-2 col-xs-12\">\r\n<div class=\"row\">\r\n<div class=\"col-12\">\r\n<h1 class=\"mb-3\">Kontak Pengaduan Pasar Sukawati</h1>\r\n<hr></div>\r\n<div class=\"col-md-6\">\r\n<h3 class=\"text-uppercase mt-3\">Lokasi</h3>\r\n<p>Jalan Raya Sukawati, Sukawati, Kec. Sukawati, Kabupaten Gianyar, Bali 80582</p>\r\n</div>\r\n<div class=\"col-md-6\">\r\n<h3 class=\"text-uppercase mt-3\">Pengaduan</h3>\r\n<p>Anda kurang puas atau ada keluhan saat belanja ? Hubungi Pengelola Pasar Sukawati <a href=\"tel:0361290132\">0361 290132</a></p>\r\n</div>\r\n<div class=\"col-md-6\">\r\n<h3 class=\"text-uppercase mt-3\">Jam Buka</h3>\r\n<p>SETIAP HARI :<br> PUKUL 06:00 – 13:00 WITA</p>\r\n</div>\r\n<div class=\"col-md-6\">\r\n<h3 class=\"text-uppercase mt-3\">Waktu Pengantaran</h3>\r\n<p>SETIAP HARI :<br> PUKUL 07:00 - 13:00 WITA</p>\r\n</div>\r\n</div>\r\n</div>\r\n<div id=\"gtx-trans\" xss=removed> </div>', 'Pengaduan', 'Pengaduan', 'Pengaduan', 'report', 'yes', NULL, 'no', 'null', 'no', NULL, 'pengaduan', 'testimonial'),
(18, 2, 'List Shop', '', '', NULL, '<p>-</p>', 'List Shop', 'List Shop', 'List Shop', 'list_shop', 'yes', NULL, 'no', 'null', 'no', NULL, '', NULL),
(23, 2, 'Petunjuk Pemesanan', 'Ikuti Tahap - Tahap dibawah untuk melakukan pemesanan.', '', NULL, '<div class=\"col-lg-7 text-center\">\r\n<figure><img src=\"http://pasarsukawati.com/assets/template_admin/tinymce/plugins/filemanager/../../../../../upload/images/cara-pemesanan-pasar-sukawati-online.png\" alt=\"Tahapan Pemesanan Pasar Sukawati Online\" width=\"100%\"></figure>\r\n</div>\r\n<div class=\"col-lg-5\">\r\n<ul>\r\n<li>\r\n<h3>#01. Pilih Merchant</h3>\r\n<p>Pilih Merchant Sesuai dengan Kategori yang Anda Inginkan</p>\r\n</li>\r\n<li>\r\n<h3>#02. Transaksi</h3>\r\n<p>Hubungi Nomor Yang Telah Tersedia dan Transfer Ke Rekening BRI Pejual</p>\r\n</li>\r\n<li>\r\n<h3>#03. Nikmati</h3>\r\n<p>Kirimkan Bukti Transfer dan Pesananmu Siap Diantarkan</p>\r\n</li>\r\n</ul>\r\n</div>', 'Cara Pemesanan di Pasar Sukawati Online', 'pasar sukawati online, daftar tahapan pemesanan, pesan sembako online', 'Ikuti Daftar tahapan untuk melakukan pemesanan secara online di Pasar Sukawati .com', 'order', 'yes', NULL, 'no', 'null', 'no', NULL, '', NULL),
(28, 2, 'Footer', '', NULL, NULL, '<p class=\"top-btn-text\">Tertarik dengan <strong>Produk</strong> yang Kita tawarkan kepada Anda ? Silahkan Pesan Sekarang dengan menekan tombol disamping</p>', NULL, NULL, NULL, 'footer', 'no', NULL, 'no', 'null', 'no', NULL, NULL, NULL),
(35, 2, 'Kategori Toko', 'Daftar Kategori yang ada di Pasar Sukawati.com', 'Kategori', NULL, '<p>-</p>', 'Kategori Toko Pasar Sukawati', 'kategori toko sukawati, pasar sukawati online, ', 'Daftar kategori toko di pasar sukawati online yang dapat Anda temukan secara konvesional, kini tersedia di pasar sukawati online', 'category', 'yes', NULL, 'no', '{\"title\":[\"Berapa Persen Profit Yang Dijanjikan ?\",\"Apakah ada jaminan Tidak Akan Rugi Atau Loss?\",\"Apakah Dana Saya Bisa Di Tarik Kapan Saja ?\",\"Apakah ada pembagian keuntungan ?\",\"Apakah Ada Biaya Tambahan Lainnya ?\"],\"description\":[\"Robot ini tidak bisa menjanjikan nilai profit tetap. Besarnya profit sangat tergantung dari kondisi pasar dan volume perdagangan yang terjadi di seluruh dunia. Namun jika mengacu pada hasil tes 5 tahun ke belakang (Back Test), software ini mampu memberikan profit 50% - 80% per tahun.\",\"Apabila pengguna software ROBOT mengikuti rules dan settingan default maka kerugian atau resiko Loss kemungkinan sangat kecil.\",\"Tentu saja bisa, Karena kami bukan Broker atau pengepul dana. Dana yang ada didalam akun adalah atas nama anda sendiri dengan broker pilihan anda, sehingga proses deposit dan penarikan dana ada dikendali anda.\",\"Tidak, Keuntungan dari hasil perdagangan adalah seluruhnya milik anda. Tidak ada pemotongan maupun pengurangan.\",\"Ya, setiap penggunan kami akan dikenakan biaya maintenance setiap bulannya.\"],\"images\":[\"\",\"\",\"\",\"\",\"\"]}', 'no', NULL, 'kategori', 'faq'),
(36, 2, 'Blog', '', NULL, NULL, '<p>Berikut daftar manfaat dari Produk ini : </p>', NULL, NULL, NULL, 'blog', 'yes', NULL, 'no', '{\"title\":[\"Segera miliki robot autopilot ini dengan membeli dari kami.\",\"Buat Akun Trading Di salah satu Broker Sesuai Pilihan Anda Sendiri\",\"Selanjutnya kami menjalankan Software ROBOT pada akun anda.\"],\"description\":[\"\",\"\",\"\"]}', 'no', NULL, NULL, NULL),
(38, 2, 'LOKASI PASAR SUKAWATI', '', 'Lokasi', NULL, '<div class=\"col-md-6\">\r\n<div class=\"row\">\r\n<div class=\"col-12\">\r\n<h1 class=\"mb-3\">LOKASI PASAR SUKAWATI</h1>\r\n<hr></div>\r\n<div class=\"col-md-6\">\r\n<h3 class=\"text-uppercase mt-3\">Lokasi</h3>\r\n<p>Jalan Raya Sukawati, Sukawati, Kec. Sukawati, Kabupaten Gianyar, Bali 80582</p>\r\n</div>\r\n<div class=\"col-md-6\">\r\n<h3 class=\"text-uppercase mt-3\">Pengaduan</h3>\r\n<p>Anda kurang puas atau ada keluhan saat belanja ? Hubungi Pengelola Pasar Sukawati <a href=\"tel:0361290132\">0361 290132</a></p>\r\n</div>\r\n<div class=\"col-md-6\">\r\n<h3 class=\"text-uppercase mt-3\">Jam Buka</h3>\r\n<p>SETIAP HARI :<br> PUKUL 06:00 – 13:00 WITA</p>\r\n</div>\r\n<div class=\"col-md-6\">\r\n<h3 class=\"text-uppercase mt-3\">Waktu Pengantaran</h3>\r\n<p>SETIAP HARI :<br> PUKUL 07:00 - 13:00 WITA</p>\r\n</div>\r\n</div>\r\n</div>', 'Lokasi', 'Lokasi', 'Lokasi', 'location', 'yes', NULL, 'no', '{\"title\":[\"TRADING <strong>OTOMATIS<\\/strong> & <strong>SERVER<\\/strong> 24\\/5\",\"<strong>MANAJEMEN RESIKO<\\/strong>\",\"<strong>AMAN<\\/strong> DAN <strong>TERUJI<\\/strong>\",\"CUSTOMER <strong>SERVICE<\\/strong>\",\"\",\"\",\"\",\"\"],\"description\":[\"Trading otomatis dengan software Robot Autopilot dengan server bekerja 24 jam \\/ 5 hari kerja (jam operasional pasar)\",\"Manajemen Resiko yang minim dengan penggunaan <i>rule trade<\\/i> yang baik dari service yang Kami berikan.\",\"Aman dan sudah teruji oleh tim ahli di bidang Forex\",\"Layanan Customer Services terbaik, siap melayani Anda.\",\"\",\"\",\"\",\"\"],\"images\":[\"trading-otomatis-dan-server-24-5.png\",\"manajemen-resiko.png\",\"aman-dan-teruji.png\",\"customer-service.png\",\"\",\"\",\"\",\"\"]}', 'no', NULL, 'lokasi', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `id_language` int(11) DEFAULT NULL,
  `id_category` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `title_sub` varchar(255) DEFAULT NULL,
  `use` enum('yes','no') DEFAULT NULL,
  `best_seller` enum('yes','no') DEFAULT NULL,
  `new_status` enum('yes','no') DEFAULT NULL,
  `description` text NOT NULL,
  `thumbnail` varchar(255) NOT NULL,
  `thumbnail_alt` varchar(255) NOT NULL,
  `price` int(11) DEFAULT NULL,
  `price_old` int(11) DEFAULT NULL,
  `meta_title` varchar(255) NOT NULL,
  `meta_description` varchar(255) NOT NULL,
  `meta_keywords` varchar(255) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `id_language`, `id_category`, `title`, `title_sub`, `use`, `best_seller`, `new_status`, `description`, `thumbnail`, `thumbnail_alt`, `price`, `price_old`, `meta_title`, `meta_description`, `meta_keywords`, `created_at`, `updated_at`) VALUES
(43, 2, 23, 'Clutch Pandan', 'Clutch Asli Bali', 'yes', 'yes', 'no', '<p>Yeeyyy lagi promo nihh<br>Clutch pandan hanya 125K<br>Harga normal 150K<br>Buruan di order yuk sebelum kehabisan karena stok terbatas<br>Klik link di bio ya untuk order</p>', 'clutch-pandan1.jpg', 'Clutch Pandan Asli Bali', 125000, 150000, 'Clutch Pandan', 'Clutch Pandan', 'Clutch Pandan', '2020-07-03 17:22:45', '2020-07-03 17:42:54'),
(44, 2, 23, 'Pandan Handbags', 'Back to nature ', 'yes', 'yes', 'no', '<p>Back to nature with “pandan” handbags</p>', 'pandan-handbags.jpg', 'Pandan Handbags', 200000, NULL, 'Pandan Handbags', 'Pandan Handbags', 'Pandan Handbags', '2020-07-03 17:37:08', NULL),
(45, 2, 23, 'Clutch Lontar', 'Clutch lontar', 'yes', 'yes', 'no', '<p>Clutch lontar</p>', 'clutch-lontar.jpg', 'Clutch lontar', 100000, NULL, 'Clutch lontar', 'Clutch lontar', 'Clutch lontar', '2020-07-03 17:38:35', NULL),
(46, 2, 23, 'Clutch Pandan', 'Clutch pandan', 'yes', 'yes', 'no', '<p>Yeeyyy lagi promo nihh<br>Clutch pandan hanya 125K<br>Harga normal 150K<br>Buruan di order yuk sebelum kehabisan<br>Klik link di bio ya untuk order<br>????</p>', 'clutch-pandan2.jpg', 'Clutch pandan', 120000, 150000, 'Clutch pandan', 'Clutch pandan', 'Clutch pandan', '2020-07-03 17:44:32', NULL),
(47, 2, 24, 'Pretty Sky Blue', 'Pretty Sky Blue', 'yes', 'no', 'yes', '<p>Pretty Sky Blue<br>Sandal santai dengan desain elegan, sangat nyaman digunakan<br>.<br>Size 37-41<br>Only 99K<br>Yuk order sekarang ????</p>', 'pretty-sky-blue.jpg', 'Pretty Sky Blue', 99000, 0, 'Pretty Sky Blue', 'Pretty Sky Blue', 'Pretty Sky Blue', '2020-07-03 17:45:32', NULL),
(48, 2, 24, 'Thumbelina Navy Blue', 'Thumbelina Navy Blue', 'yes', 'no', 'yes', '<p>Thumbelina Navy Blue</p>', 'thumbelina-navy-blue.jpg', 'Thumbelina Navy Blue', 99000, 0, 'Thumbelina Navy Blue', 'Thumbelina Navy Blue', 'Thumbelina Navy Blue', '2020-07-03 17:54:23', NULL),
(49, 2, 24, 'Pretty Yin Yang', 'Pretty Yin Yang', 'yes', 'yes', 'no', '<p>Pretty Yin Yang<br>Sandal santai dengan desain elegan, sangat nyaman digunakan<br>.<br>Size 37-41<br>Only 99K<br>Yuk order sekarang ????</p>', 'pretty-yin-yang.jpg', 'Pretty Yin Yang', 99000, 0, 'Pretty Yin Yang', 'Pretty Yin Yang', 'Pretty Yin Yang', '2020-07-03 17:55:29', NULL),
(50, 2, 24, 'Pretty PurpleBlue', 'Pretty PurpleBlue', 'yes', 'yes', 'no', '<p>Pretty PurpleBlue<br>.<br>Sandal santai, nyaman dipakai<br>Only 104K</p>', 'pretty-purpleblue.jpg', 'Pretty PurpleBlue', 104000, 0, 'Pretty PurpleBlue', 'Pretty PurpleBlue', 'Pretty PurpleBlue', '2020-07-03 17:56:19', NULL),
(51, 2, 25, 'Shell', 'Shell', 'yes', 'yes', 'no', '<p>Bosen dengan tampilan rumah?<br>Yuk dekor rumah .<br>Wall decoration by craftify.id tersedia ukuran 20cm-50cm<br>Harga menyesuaikan ukuran .<br>Buruan diorder sebelum sold out ????</p>', 'shell.jpg', 'Shell', 100000, 120000, 'Shell', 'Shell', 'Shell', '2020-07-03 17:57:11', NULL),
(52, 2, 25, 'Shell 2', 'Shell 2', 'yes', 'yes', 'no', '<p>Bosen dengan tampilan rumah?<br>Yuk dekor rumah .<br>Wall decoration by craftify.id tersedia ukuran 20cm-50cm<br>Harga menyesuaikan ukuran<br>Bisa req warna sesuai keinginan ????<br>.<br>Buruan diorder sebelum sold out<br>.<br>Order klik link d bio guys</p>', 'shell-2.jpg', 'Shell 2', 140000, 170000, 'Shell 2', 'Shell 2', 'Shell 2', '2020-07-03 18:02:56', NULL),
(53, 2, 25, 'Shell 3', 'Shell 3', 'yes', 'no', 'yes', '<p>Bosen dengan tampilan rumah?<br>Yuk dekor rumah .<br>Wall decoration by craftify.id tersedia ukuran 20cm-50cm<br>Harga menyesuaikan ukuran<br>Bisa req warna sesuai keinginan ????<br>.<br>Buruan diorder sebelum sold out<br>.<br>Order klik link d bio guys</p>', 'shell-3.jpg', 'Shell 3', 130000, 0, 'Shell 3', 'Shell 3', 'Shell 3', '2020-07-03 18:04:00', NULL),
(54, 2, 25, 'Seashell', 'Seashell', 'yes', 'yes', 'no', '<p>Hei dear semoga kalian ndak pernah bosan kepoin store kami ya<br>.<br>Seashell dipadukan dengan bulu angsa lucu kan, menambah kesan etnik dirumah<br>Tersedia size 40x40 ya dear<br>Harga sangat terjangkau<br>.<br>Cus buruan diorder ????</p>', 'seashell.jpg', 'Seashell', 100000, 60000, 'Seashell', 'Seashell', 'Seashell', '2020-07-03 19:13:53', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `reservation`
--

CREATE TABLE `reservation` (
  `id` int(11) NOT NULL,
  `id_tour` int(11) DEFAULT NULL,
  `title` varchar(255) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` int(50) NOT NULL,
  `address` text DEFAULT NULL,
  `country` varchar(255) NOT NULL,
  `tour_start` varchar(255) NOT NULL,
  `total_adult` int(50) NOT NULL,
  `total_children` int(50) NOT NULL,
  `message` int(50) NOT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `reservation`
--

INSERT INTO `reservation` (`id`, `id_tour`, `title`, `first_name`, `last_name`, `email`, `phone`, `address`, `country`, `tour_start`, `total_adult`, `total_children`, `message`, `created_at`) VALUES
(1, NULL, 'mr', 'kusuma', 'wardana', 'kadek.kusuma.wardana@gmail.com', 895616869, NULL, 'indonesia', 'besok', 1, 1, 1, '0000-00-00 00:00:00'),
(2, 3, 'Mr.', 'Mahendra', 'Wardana', 'mahendra.adi.wardana@gmail.com', 2147483647, 'Jalan Ratna', 'Indonesia', '06/10/2019 6:27 AM', 1, 0, 0, '2019-10-06 06:29:50');

-- --------------------------------------------------------

--
-- Table structure for table `shop`
--

CREATE TABLE `shop` (
  `id` int(11) NOT NULL,
  `id_language` int(11) DEFAULT NULL,
  `id_category` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `title_sub` varchar(255) DEFAULT NULL,
  `use` enum('yes','no') DEFAULT NULL,
  `description` text NOT NULL,
  `thumbnail` varchar(255) NOT NULL,
  `thumbnail_alt` varchar(255) NOT NULL,
  `whatsapp` varchar(255) DEFAULT NULL,
  `recommend_shop` enum('yes','no') DEFAULT NULL,
  `meta_title` varchar(255) NOT NULL,
  `meta_description` varchar(255) NOT NULL,
  `meta_keywords` varchar(255) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `slider`
--

CREATE TABLE `slider` (
  `id` int(11) NOT NULL,
  `id_language` int(11) DEFAULT NULL,
  `title` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `thumbnail` varchar(255) NOT NULL,
  `thumbnail_alt` varchar(255) DEFAULT NULL,
  `align` varchar(255) DEFAULT NULL,
  `url` varchar(255) NOT NULL,
  `use` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `slider`
--

INSERT INTO `slider` (`id`, `id_language`, `title`, `description`, `thumbnail`, `thumbnail_alt`, `align`, `url`, `use`) VALUES
(9, 2, 'Pasar Sukawati', 'Belanja Semua Keperluan Anda dan Gudangnya Oleh-Oleh Khas Bali di Pasar Sukawati .com untuk Lebih Cepat dalam Pemesanan', 'pasar-sukawati3.jpg', 'Suasana Pasar Sukawati Tempat Belanja Keperluan Sehari-Hari', 'center', '-', 'yes'),
(10, 2, 'Berbagai Kebutuhan Ruamah Tangga', 'Penuhi kebutuhan rumah tangga anda dengan berbelanja di Pasar Umum Sukawati', 'berbagai-kebutuhan-ruamah-tangga.JPG', 'Berbagai Kebutuhan Ruamah Tangga', 'left', '-', 'yes'),
(11, 2, 'Gudang Oleh-Oleh Khas Bali', 'Berbelanja oleh-oleh khas Bali dengan harga terjangkau di Pasar Seni Sukawati', 'gudang-oleh-oleh-khas-bali.jpg', 'Gudang Oleh-Oleh Khas Bali', 'right', '-', 'yes');

-- --------------------------------------------------------

--
-- Table structure for table `team`
--

CREATE TABLE `team` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `position` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `thumbnail` varchar(255) NOT NULL,
  `thumbnail_alt` text DEFAULT NULL,
  `use` enum('yes','no') DEFAULT 'no',
  `meta_title` varchar(255) DEFAULT NULL,
  `meta_description` text DEFAULT NULL,
  `meta_keywords` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `team`
--

INSERT INTO `team` (`id`, `title`, `position`, `description`, `thumbnail`, `thumbnail_alt`, `use`, `meta_title`, `meta_description`, `meta_keywords`) VALUES
(15, 'Etick Pristyan Dewi', 'Team Hore', '<p>1</p>', 'etick-pristyan-dewi.jpeg', NULL, 'yes', '1', '2', '3'),
(16, 'Ida Ayu Indira Dwika Lestari', 'CEO', '2', 'ida-ayu-indira-dwika-lestari.jpeg', NULL, 'yes', NULL, NULL, NULL),
(17, 'Made Awi', 'CPO', '3', 'made-awi.jpeg', NULL, 'yes', NULL, NULL, NULL),
(18, 'Irwan', 'COO', '4', 'irwan.jpeg', NULL, 'yes', NULL, NULL, NULL),
(19, 'Gung De', 'CIO', '5', 'gung-de.jpeg', NULL, 'yes', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tour`
--

CREATE TABLE `tour` (
  `id` int(11) NOT NULL,
  `id_language` int(11) DEFAULT NULL,
  `id_category` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `title_sub` varchar(255) DEFAULT NULL,
  `use` enum('yes','no') DEFAULT NULL,
  `description` text NOT NULL,
  `thumbnail` varchar(255) NOT NULL,
  `thumbnail_alt` varchar(255) NOT NULL,
  `meta_title` varchar(255) NOT NULL,
  `meta_description` varchar(255) NOT NULL,
  `meta_keywords` varchar(255) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tour_gallery`
--

CREATE TABLE `tour_gallery` (
  `id` int(11) NOT NULL,
  `id_tour` int(11) DEFAULT NULL,
  `title` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `thumbnail` varchar(255) NOT NULL,
  `thumbnail_alt` text DEFAULT NULL,
  `use` enum('yes','no') DEFAULT 'no'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tour_gallery`
--

INSERT INTO `tour_gallery` (`id`, `id_tour`, `title`, `description`, `thumbnail`, `thumbnail_alt`, `use`) VALUES
(5, NULL, 'Mengapa1', '21', 'mengapa11.jpeg', '1', 'yes'),
(7, NULL, '1', '2', '15.jpeg', 'tes', 'yes'),
(9, 3, '11', '', '11.jpeg', '31', 'yes'),
(10, 3, '1', '', '1.jpeg', '2', 'yes'),
(11, 3, '2', '', '2.jpeg', '3', 'yes'),
(12, 3, 'Gili Gili Fast Boat', '', 'gili-gili-fast-boat.jpeg', '2', 'yes'),
(13, 3, '1', '', '1.jpeg', '2', 'yes'),
(14, 3, '1 2', '', '1-2.jpeg', '2', 'yes'),
(15, 4, '1', '', '1.jpeg', 'test', 'yes'),
(16, 5, '1', '', '1.jpeg', '2', 'yes');

-- --------------------------------------------------------

--
-- Table structure for table `video`
--

CREATE TABLE `video` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `video` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `video`
--

INSERT INTO `video` (`id`, `title`, `description`, `video`) VALUES
(3, 'kusuma', 'film eksklusif kusuma ', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/GOEf6IaCnjU\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `blog`
--
ALTER TABLE `blog`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `blog_category`
--
ALTER TABLE `blog_category`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `comment`
--
ALTER TABLE `comment`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `dictionary`
--
ALTER TABLE `dictionary`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `email`
--
ALTER TABLE `email`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `free_ebook`
--
ALTER TABLE `free_ebook`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `free_trial`
--
ALTER TABLE `free_trial`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `gallery`
--
ALTER TABLE `gallery`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `language`
--
ALTER TABLE `language`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `reservation`
--
ALTER TABLE `reservation`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `shop`
--
ALTER TABLE `shop`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `slider`
--
ALTER TABLE `slider`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `team`
--
ALTER TABLE `team`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `tour`
--
ALTER TABLE `tour`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `tour_gallery`
--
ALTER TABLE `tour_gallery`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `video`
--
ALTER TABLE `video`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `blog`
--
ALTER TABLE `blog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `blog_category`
--
ALTER TABLE `blog_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `comment`
--
ALTER TABLE `comment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `dictionary`
--
ALTER TABLE `dictionary`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=118;

--
-- AUTO_INCREMENT for table `email`
--
ALTER TABLE `email`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `free_ebook`
--
ALTER TABLE `free_ebook`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `free_trial`
--
ALTER TABLE `free_trial`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `gallery`
--
ALTER TABLE `gallery`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `language`
--
ALTER TABLE `language`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT for table `reservation`
--
ALTER TABLE `reservation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `shop`
--
ALTER TABLE `shop`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `slider`
--
ALTER TABLE `slider`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `team`
--
ALTER TABLE `team`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `tour`
--
ALTER TABLE `tour`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tour_gallery`
--
ALTER TABLE `tour_gallery`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `video`
--
ALTER TABLE `video`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
