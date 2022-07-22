/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 100413
 Source Host           : localhost:3306
 Source Schema         : gtn_ecommerce

 Target Server Type    : MySQL
 Target Server Version : 100413
 File Encoding         : 65001

 Date: 04/08/2020 22:00:17
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for admin
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of admin
-- ----------------------------
BEGIN;
INSERT INTO `admin` VALUES (2, 'mahendrawardana', '6001c26274f43ac7c6b2be2662a027f6', 'mahendra.adi.wardana@gmail.com', 'Mahendra Wardana');
INSERT INTO `admin` VALUES (32, 'geren', '34bb77f37a397c3db7cc819f9ce0fa9f', 'gerenmekantara@gmail.com', 'geren');
COMMIT;

-- ----------------------------
-- Table structure for blog
-- ----------------------------
DROP TABLE IF EXISTS `blog`;
CREATE TABLE `blog` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
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
  `created_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of blog
-- ----------------------------
BEGIN;
INSERT INTO `blog` VALUES (29, NULL, 7, 2, '3 Hal yang Tak Diketahui Trader Pemula Dari Trading Forex', 'blog-1.jpg', '3 Hal yang Tak Diketahui Trader Pemula Dari Trading Forex', '<p>Ukuran seseorang bisa disebut amatir atau pro dalam&nbsp;<strong><a href=\"http://foreximf.com/product/forex/\" target=\"_blank\" rel=\"noopener\">forex trading</a></strong>&nbsp;bukan dilihat dari penghasilan utamanya yang bersumber dari trading forex.</p>\r\n<p>Justru lebih dari itu, pro atau tidaknya seorang trader adalah tentang bagaimana ia memperlakukan aktifitas trading-nya; serius atau main-main saja, atau justru lebih parah lagi; ia kira ia serius, tetapi ia tak tahu bagaimana sebenarnya trading yang serius itu.</p>\r\n<p>Berikut adalah hal-hal yang tak dipahami dan bahkan tak banyak dilakukan oleh para trader forex pemula yang mungkin perlu Anda ketahui agar tidak termasuk di dalamnya.</p>\r\n<h2>1. Membangun strategi dan trading plan, serta betul-betul menjalankannya</h2>\r\n<p>Tahapan paling penting dalam mempersiapkan dan memastikan bahwa Anda akan terlibat di pasar forex untuk jangka waktu yang panjang adalah dengan membangun&nbsp;strategi forex&nbsp;dan&nbsp;<a href=\"http://www.foreximf.com/blog/strategi-forex/bagaimana-menyusun-trading-plan-yang-baik/\" target=\"_blank\" rel=\"noopener\">trading plan</a>, serta memastikan bahwa Anda betul-betul menjalankannya.</p>\r\n<p>Di saat Anda yakin bahwa Anda telah cukup belajar dan melakukan berbagai riset, sudah memahami tingkat risiko, sudah melakukan uji coba lewat demo account dan berhasil meraup keutungan secara konsisten dalam (misalnya) tiga bulan berturut-turut, maka saat itulah Anda sudah siap membangun strategi dan trading plan.</p>\r\n<p>Apa pun gaya trading Anda, yang terpenting untuk Anda adalah&nbsp;<a href=\"http://www.foreximf.com/blog/strategi-forex/penggunaan-sinyal-trading/\" target=\"_blank\" rel=\"noopener\">strategi forex yang digunakan bisa menghasilkan profit secara konsisten</a>&nbsp;dengan arti; keuntungan yang diperoleh secara konsisten bisa melampaui kerugian yang diderita.</p>\r\n<p>Jangan lupa, jalankan trading plan Anda dengan baik, jangan dilanggar meskipun hanya sekali.</p>\r\n<h2>2. Memperlakukan demo account layaknya real account</h2>\r\n<p>Forex semakin populer dan semakin banyak orang yang ingin menjadi trader forex yang sukses, tetapi sedikit orang yang mau berlatih dengan serius lewat demo account. Padahal untuk bisa menjadi trader yang sukses, Anda butuh&nbsp;<a href=\"http://www.foreximf.com/trading-account/demo/?utm_source=artikel-trader-amatir&amp;utm_medium=anchor1&amp;utm_campaign=opendemo\" target=\"_blank\" rel=\"noopener\">berlatih untuk bisa menghasilkan profit konsisten</a>.</p>\r\n<p>Sarana untuk berlatih menghasilkan profit secara konsisten adalah&nbsp;<a href=\"http://www.foreximf.com/trading-account/demo/?utm_source=artikel-trader-amatir&amp;utm_medium=anchor2&amp;utm_campaign=opendemo\" target=\"_blank\" rel=\"noopener\">demo account</a>, di mana Anda bisa mengaplikasikan setiap hal yang Anda pelajari, mengeksekusi strategi dan trading plan yang sudah Anda siapkan.</p>\r\n<p>Sangat penting untuk benar-benar mengaplikasikan strategi dan trading plan Anda meskipun hanya di demo account, karena hal itu akan membentuk kebiasaan dan pada gilirannya akan membentuk karakter Anda sebagai trader yang disiplin.</p>\r\n<p>Jika Anda sudah bisa melakukan transaksi yang profitable di demo account setidaknya selama sebulan (tentu saja dengan trading plan yang benar), sebaiknya tidak menunda terlalu lama untuk segera melakukan&nbsp;<a href=\"http://www.foreximf.com/trading-account/real/?utm_source=artikel-trader-amatir&amp;utm_medium=anchor&amp;utm_campaign=openreal\" target=\"_blank\" rel=\"noopener\">live trading dengan real account</a>.</p>\r\n<p>Disarankan untuk tidak menunda lebih dari sebulan untuk segera melakukan transaksi di real account.</p>\r\n<h2>3. Kunci menjadi trader forex sukses</h2>\r\n<p>Di saat Anda sudah siap beralih dari demo ke real account, selalu ingat langkah-langkah lanjutan di bawah ini:</p>\r\n<ol>\r\n<li>Selalu patuhi strategi dan trading plan Anda.</li>\r\n<li>Selalu batasi resiko dengan stop-loss (SL). Jika tidak, hampir bisa dipastikan Anda akan gagal.</li>\r\n<li>Batasi resiko per transaksi maksimal 10% dari equity.</li>\r\n<li>Selalu obyektif. Jangan libatkan emosi saat trading.</li>\r\n<li>Jangan mecoba untuk &ldquo;balas dendam&rdquo;, yaitu ingin secepat mungkin membalas kerugian yang diderita sebelumnya.</li>\r\n<li>Lakukan transaksi hanya jika sudah ada konfirmasi dari strategi Anda.</li>\r\n<li>Jangan takut rugi! Semua trader handal kelas dunia pernah rugi dan mereka tetap survive</li>\r\n</ol>\r\n<p>Inilah jalan yang bisa Anda tempuh jika Anda benar-benar ingin menjadi trader forex yang sukses. Tentu saja aka nada naik-turun dalam perjalanan trading Anda, tetapi menyerah bukanlah pilihan.</p>\r\n<p>Jika Anda bisa menjadikan pengalaman buruk sebagai pelajaran, maka di kemudian hari Anda akan bisa mengetahui apa yang tidak boleh Anda lakukan sebagai trader.</p>\r\n<p>Jika Anda membutuhkan bantuan untuk belajar trading layaknya seorang Pro, ikuti webinar forex yang rutin diadakan oleh kami, FOREXimf. Selain itu, Anda juga bisa mengambil kelas offline di kantor kami.</p>\r\n<p>Caranya?</p>', 'yes', NULL, '3-hal-yang-tak-diketahui-trader-pemula-dari-trading-forex', '3 Hal yang Tak Diketahui Trader Pemula Dari Trading Forex', '3 Hal yang Tak Diketahui Trader Pemula Dari Trading Forex', '3 Hal yang Tak Diketahui Trader Pemula Dari Trading Forex', '2020-02-13 04:41:06');
INSERT INTO `blog` VALUES (30, NULL, 7, 2, 'Mengapa Anda Harus Memperkuat Modal Trading Di Akhir Tahun?', 'blog-2.jpg', 'Mengapa Anda Harus Memperkuat Modal Trading Di Akhir Tahun?', '<p style=\"text-align: justify;\">Dalam artikel sebelumnya, kami membahas Alasan kenapa Anda harus&nbsp;<a href=\"http://www.foreximf.com/blog/trading-forex/gandakan-bonus-akhir-tahun-dengan-trading-forex\">memanfaatkan bonus tahunan untuk trading forex</a>. Nah, bagaimana jika Anda sudah trading sebelumnya?</p>\r\n<p style=\"text-align: justify;\">Jawaban sederhananya adalah Anda bisa mempergunakan sebagian bonus itu untuk memperkuat modal Anda. Lalu, mengapa Anda perlu memperkuat modal?</p>\r\n<p style=\"text-align: justify;\">Berikut tiga&nbsp;<strong>alasan mengapa Anda perlu memperkuat modal untuk menghadapi market di akhir tahun 2019 hingga 2020</strong>.</p>\r\n<h3 style=\"text-align: justify;\">1. Semakin kuat modal = semakin leluasa berstrategi</h3>\r\n<p style=\"text-align: justify;\">Jika dianalogikan dengan medan pertempuran, modal itu ibarat amunisi bagi pasukan Anda yang akan bertempur. Semakin banyak amunisi yang dimiliki pasukan Anda, maka akan semakin leluasa Anda dalam menentukan strategi dan melepaskan tembakan. Dengan demikian, peluang Anda memenangkan pertempuran juga akan semakin besar.</p>\r\n<h3>2. Antisipasi fluktuasi akibat faktor berita ekonomi</h3>\r\n<p>Brexit masih belum final. Masih terjadi &ldquo;tarik-ulur&rdquo; dalam&nbsp;<em>deal</em>&nbsp;antara Inggris dengan Uni Eropa. Seperti yang telah diketahui, tenggat waktu untuk eksekusi Brexit berkali-kali diundur.</p>\r\n<h3>3. Peluang teknikal jangka menengah dan jangka panjang</h3>\r\n<p>Ada setidaknya satu peluang jangka menengah dan satu peluang jangka panjang yang layak Anda manfaatkan, jika Anda memiliki cukup modal untuk menahan/mengantisipasi fluktuasi harga yang mungkin akan terjadi.</p>\r\n<p>Pertama, peluang jangka menengah di minyak mentah (crude oil/CLS).</p>', 'yes', NULL, 'mengapa-anda-harus-memperkuat-modal-trading-di-akhir-tahun', 'Mengapa Anda Harus Memperkuat Modal Trading Di Akhir Tahun?', 'Mengapa Anda Harus Memperkuat Modal Trading Di Akhir Tahun?', 'Mengapa Anda Harus Memperkuat Modal Trading Di Akhir Tahun?', '2020-02-13 04:43:54');
INSERT INTO `blog` VALUES (31, NULL, 7, 2, 'Trading dengan Leverage 1:400? Ini Tips Agar Tidak Overtrade', 'blog-3.jpg', 'Trading dengan Leverage 1:400? Ini Tips Agar Tidak Overtrade', '<p>Dalam trading, leverage berarti &ldquo;daya ungkit&rdquo;. Sederhananya, dengan leverage Anda&nbsp;<strong>bisa melakukan transaksi dengan nilai yang jauh lebih besar daripada modal yang dikeluarkan</strong>.</p>\r\n<p>Contohnya, dengan modal sebesar $250, Anda bisa melakukan transaksi senilai $100,000.</p>\r\n<p>Kok bisa?</p>\r\n<p>Itu karena dalam kasus tersebut, leverage yang diterapkan adalah&nbsp;<strong>1:400</strong>. Dengan demikian, modal kita memiliki kekuatan&nbsp;<strong>400 kali lebih besar</strong>. Itu sebabnya dengan&nbsp;<strong>modal $250 Anda bisa bertransaksi senilai $100,000</strong>.</p>', 'yes', NULL, 'trading-dengan-leverage-1:400-ini-tips-agar-tidak-overtrade', 'Trading dengan Leverage 1:400? Ini Tips Agar Tidak Overtrade', 'Trading dengan Leverage 1:400? Ini Tips Agar Tidak Overtrade', 'Trading dengan Leverage 1:400? Ini Tips Agar Tidak Overtrade', '2020-02-13 04:45:18');
INSERT INTO `blog` VALUES (32, NULL, 7, 2, 'Apa Itu Signal Forex, Bagaimana Manfaat dan Keuntungannya?', 'blog-4.jpg', 'Apa Itu Signal Forex, Bagaimana Manfaat dan Keuntungannya?', '<p style=\"text-align: justify;\"><strong>Signal forex</strong>&nbsp;merupakan suatu layanan yang diberikan secara khusus oleh forex market analyst dan trader professional&nbsp;kepada klien-nya sebagai acuan untuk membuka posisi buy atau sell di salah satu atau banyak pair mata uang dengan level harga dan jangka waktu tertentu yang memiliki potensi untuk menghasilkan profit.</p>\r\n<p style=\"text-align: justify;\">Tentunya signal forex yang diberikan pun bukanlah sembarang signal trading, terutama signal yang setiap hari dikeluarkan oleh tim market analyst FOREXimf yang telah melalui proses analisa yang matang berdasarkan data dan kondisi pasar yang terjadi di market secara real-time.</p>\r\n<p style=\"text-align: justify;\">Selain itu, setiap sinyal forex yang dikeluarkan selalu diiringi dengan strategi yang telah terbukti dan teruji dalam berbagai kondisi sehingga termasuk dalam kategori&nbsp;<strong>sinyal forex akurat</strong>.</p>\r\n<p style=\"text-align: justify;\">Dengan tingkat akurasi sinyal forex yang cukup tinggi, yaitu hingga 70% &ndash;&nbsp;<a href=\"http://www.foreximf.com/services/signal/trade-with-ease/?utm_source=artikel&amp;utm_medium=penggunaan-signal-trading-1&amp;utm_campaign=signal-foreximf\">signal forex yang diberikan kepada lebih dari 2000 nasabah FOREXimf saat ini telah menghasilkan 1,800++ pips lebih dan terus bertambah</a>.</p>', 'yes', 1, 'apa-itu-signal-forex--bagaimana-manfaat-dan-keuntungannya', 'Apa Itu Signal Forex, Bagaimana Manfaat dan Keuntungannya?', 'Apa Itu Signal Forex, Bagaimana Manfaat dan Keuntungannya?', 'Apa Itu Signal Forex, Bagaimana Manfaat dan Keuntungannya?', '2020-02-13 04:46:24');
INSERT INTO `blog` VALUES (33, NULL, 7, 2, 'Berapa Akurasi Signal Trading yang Bagus?', 'blog-5.jpg', 'Berapa Akurasi Signal Trading yang Bagus?', '<p>Suatu sore, ketika saya tengah tenggelam dalam keasyikan melakukan backtesting sebuah sistem trading yang katanya bisa menghasilkan&nbsp;<strong><a href=\"http://www.foreximf.com/services/signal/high-accuracy/?utm_source=artikel&amp;utm_medium=signal-follower-independent-1&amp;utm_campaign=signal-foreximf\" target=\"_blank\" rel=\"noopener\">signal trading forex akurat</a></strong>, seorang kenalan menghubungi saya melalui WhatsApp.</p>\r\n<p>&ldquo;Dab, ada waktu nggak sore ini?&rdquo;&nbsp;katanya.<br />&ldquo;Ada apa Dab?&rdquo;, jawab saya.</p>\r\n<p>Kami memang sering saling menyapa dengan sebutan &ldquo;dab&rdquo;, sebuah kata dalam bahasa prokem Yogya yang artinya &ldquo;Mas&rdquo;&nbsp;(kakak laki-laki).</p>\r\n<p>Saya cukup lama tinggal di Yogyakarta, sejak SMA hingga lulus kuliah. Di sanalah kami berkenalan dan kemudian menjadi cukup akrab.</p>\r\n<p>Sebenarnya saya malas diganggu ketika sedang &ldquo;on fire&rdquo;&nbsp;mengerjakan sesuatu. Distraksi sekecil apa pun bisa serta-merta memadamkan semangat saya. Sulit bagi saya untuk bisa kembali menemukan momentum.</p>\r\n<p>Itulah sebabnya saya senantiasa mengenakan headset dan menyalakan musik di kantor ketika sedang mengerjakan sesuatu, supaya saya tak perlu terdistraksi oleh bunyi apa pun.</p>\r\n<p>Biasanya saya pilih Mozart atau jazz.</p>\r\n<p>Lagipula bisa menenangkan saya, membuat saya bisa berpikir lebih lancar.</p>\r\n<p>&ldquo;Aku pengen sinau trading,&rdquo;&nbsp;katanya.</p>\r\n<p>&ldquo;Sinau&rdquo;&nbsp;adalah kata dalam bahasa Jawa yang artinya belajar. Saya paham dia hanya berbasa-basi untuk menghormati saya.</p>\r\n<p>Lha wong dia memang sudah bisa dan biasa trading, kok. Cukup berpengalaman, malah. Tetapi berbeda dengan saya, ia lebih banyak trading saham. Ia pernah trading forex tetapi tidak begitu berhasil.</p>\r\n<p>Saya mengerti ia hanya ingin berdiskusi dan saya suka berdiskusi tentang trading karena bisa memperkaya pengetahuan dan memperluas wawasan saya.</p>\r\n<p>&ldquo;OK. Jam piro? Dimana?&rdquo;</p>\r\n<p>&ldquo;Habis maghrib, di tempat kita biasa ngopi dulu.&rdquo;</p>\r\n<p>Ia menyebutkan sebuah coffee shop yang cukup terkenal di Bandung.</p>\r\n<p>&ldquo;Gimana?&rdquo; lanjutnya.</p>\r\n<p>&ldquo;OK. Sip,&rdquo; balasku menutup percakapan.</p>\r\n<p>&mdash;</p>\r\n<p>Petang itu kami pun bertemu. Setelah sejenak berbasa-basi dan tertawa tentang kisah-kisah jenaka masa lalu, kami memulai percakapan sesungguhnya.</p>\r\n<p>Tentang trading, seperti yang sebelumnya telah kami bicarakan melalui WhasApp. Ia memulai dengan memperlihatkan demo account di laptop yang ia bawa.</p>\r\n<p>&ldquo;Dab, aku pengen trading forex lagi, tapi pengalaman loss yang terakhir cukup membuatku harus lebih berhati-hati,&rdquo; katanya membuka percakapan.</p>\r\n<p>&ldquo;Loss dalam trading itu biasa Dab,&rdquo; kata saya.</p>\r\n<p>&ldquo;Dirimu sebagai trader berpengalaman pasti pahamlah.&rdquo;</p>\r\n<p>&ldquo;Iyo, bener. Tapi karater forex ini beda dengan saham, Dab. Aku kan masih baru di forex. Jadi sepertinya harus sinau lagi pada dirimu,&rdquo; katanya.</p>\r\n<p>&ldquo;Halah, gombalmu!&rdquo; kataku. Kami tertawa bersama.</p>\r\n<p>&ldquo;Jadi, kemarin aku googling strategi forex, lalu aku menemukan ini,&rdquo; katanya sambil memutar laptopnya hingga layarnya menghadap kepadaku.</p>\r\n<p>Layar itu memperlihatkan situs sebuah trading signal provider berbayar.</p>\r\n<p>&ldquo;Bagaimana menurutmu? Aku tertarik berlangganan,&rdquo; katanya meminta pendapat saya.</p>\r\n<p>&ldquo;Tidak ada masalah. Tapi kalau bisa, coba lihat track record mereka dulu. Ada program trial-nya tidak?&rdquo; kata saya.</p>\r\n<p>&ldquo;Hm&hellip; tidak ada.&rdquo;&nbsp;balasanya.</p>\r\n<p>&ldquo;Kalau begitu, jangan pilih yang itu. Cari yang ada program trial-nya.&rdquo;&nbsp;timpal saya.</p>\r\n<p>Ia pun kembali bertanya, &ldquo;Memangnya ada yang seperti itu?&rdquo;</p>\r\n<p>&ldquo;Ada, bahkan trading signal-nya gratis,&rdquo;&nbsp;jawab saya.</p>\r\n<p>&ldquo;Ah, mosok?&rdquo; Ketidakpercayaan jelas terlihat di wajahnya.</p>\r\n<p>&ldquo;Kamu coba program&nbsp;<a href=\"http://www.foreximf.com/services/signal/high-accuracy/?utm_source=artikel&amp;utm_medium=signal-follower-independent-2&amp;utm_campaign=signal-foreximf\" target=\"_blank\" rel=\"noopener\"><strong>trading signal trial</strong></a>&nbsp;dari FOREXimf.com deh, trial selama 7 hari &ndash; Gratis. Setelah itu, kalau kamu cocok dan puas, bisa lanjut seumur hidupmu dan tetap gratis,&rdquo; kata saya.</p>\r\n<p>&ldquo;Yang bener, Dab?&rdquo; katanya, masih kurang yakin.</p>\r\n<p>&ldquo;Iya, bener. Kamu cukup buka live account saja di situ dan trading signal akan kamu dapatkan cuma-cuma selama kamu jadi nasabah aktif di sana. Tidak hanya itu, kamu juga bisa berdiskusi dengan tim Market Analyst seperti kita diskusi saat ini,&rdquo; jawabku.</p>\r\n<p>&ldquo;Wah, menarik, Dab!&rdquo; katanya antusias sambil menjentikkan jarinya.</p>\r\n<p>Saya tahu dia antusias, karena kebiasannya menjentikkan jari itu ketika mendengar atau melihat sesuatu yang menurutnya bagus.</p>\r\n<p>&ldquo;Iyalah. Makanya daftar aja sekarang!&rdquo;</p>\r\n<p>&ldquo;Sip, sip. Tapi nanti dulu. Sebenarnya aku mau tanya padamu, menurutmu lebih baik mana: signal follower atau independent trader?&rdquo; tanyanya.</p>\r\n<p>Saya balik bertanya, &ldquo;yang kamu maksud dengan independent trader itu yang seperti apa?&rdquo;</p>\r\n<p>&ldquo;Ya&hellip; trader yang mandiri. Yang tidak bergantung pada orang lain kalau mau trading &ndash; yang bisa menganalisa sendiri, mengambil keputusan sendiri,&rdquo; jawabnya.</p>\r\n<p>&ldquo;Independent trader itu baik, signal follower pun tak buruk,&rdquo; jawab saya.</p>\r\n<p>Saya melanjutkan, &ldquo;Keuntungan menjadi independent trader adalah kita tidak perlu mengeluarkan biaya lebih untuk bisa mendapatkan trading signal.</p>\r\n<p>Tetapi untuk menjadi seorang trader yang mandiri tentu tidak instan. Ada waktu dan mungkin bahkan biaya yang harus kita sediakan.</p>\r\n<p>Kita juga harus betul-betul berkomitmen untuk itu. Kamu tahu sendiri bagaimana upayaku selama bertahun-tahun, bahkan hingga satu dekade lebih, mendedikasikan diriku mempelajari forex trading.&rdquo;</p>\r\n<p>Ia manggut-manggut tanda setuju.</p>\r\n<p>Saya melanjutkan, &ldquo;di sisi lain, menjadi signal follower juga tidak salah. Asalkan, tidak mengikuti secara buta.</p>\r\n<p>Artinya, kalau kita mau jadi signal follower, setidaknya kita harus tahu dasar-dasar analisa dan trading dulu.</p>\r\n<p>Di antaranya dan yang paling penting adalah money management dan risk management.</p>\r\n<p>Jadi, di saat kita mau mengikuti trading signal yang diberikan oleh signal provider, kita tahu di mana batasan resikonya hingga berapa lot maksimal yang boleh kita pergunakan.&rdquo;</p>\r\n<p>&ldquo;Nah, di FOREXimf.com, kamu bisa mendapatkan semua itu. Trading signal diberikan tiap kali tim Market Analyst berhasil mendapatkan sinyal yang confirmed, dan kamu bisa berdiskusi dengan mereka tentang posisi yang akan kamu ambil.</p>\r\n<p>Jadi itu semacam one stop trading service, kamu dapat trading signal, edukasi sekaligus konsultasi. Enak, kan?&rdquo;</p>\r\n<p>&ldquo;Jadi, sekali lagi, menjadi signal follower tidak ada salahnya, bahan sama baiknya dengan trader mandiri, asalkan, ya itu tadi:&nbsp;<strong>kita sebaiknya punya dasar pengetahuannya dulu</strong>.</p>\r\n<p>Dengan konsep di FOREXimf.com, kamu secara tidak langsung &lsquo;dilatih&rsquo; untuk bisa mengenali peluang secara mandiri juga.</p>\r\n<p>Jadi dua-duanya bisa dapat: pertama mungkin jadi signal follower dulu, kemudian menjadi independent trader karena setiap trading signal yang dikirim selalu disertai penjelasan secara teknikal, apa yang menjadi alasan teknikalnya.</p>\r\n<p>Misalnya, ada pola candlestick tertentu, atau sinya indikator tertentu.&rdquo;</p>\r\n<p>&ldquo;Pada gilirannya, karena terbiasa &lsquo;dididik&rsquo; melalui trading signal, akhirnya kamu akan jadi trader mandiri juga, Dab.</p>\r\n<p>Nantinya, kalau kamu melihat ada peluang, kamu bisa konsultasikan juga dengan tim Market Analyst FOREXimf.com. Biar kamu lebih yakin.&rdquo;</p>\r\n<p>&ldquo;Nah, kalau kamu sudah benar-benar mandiri, trading signal dari FOREXimf.com sudah menjadi semacam &lsquo;asisten pribadi&rsquo;-mu yang tugasnya memberikan informasi setiap peluang yang muncul seandainya kamu sedang tidak ada waktu mantengin chart.</p>\r\n<p>Tinggal tunggu kabar dari tim Market Analyst FOREXimf.com, kamu tingga cek, menurutmu valid atau tidak. Enak, to?&rdquo; saya menjelaskan panjang lebar.</p>\r\n<p>Matanya berbinar. &ldquo;Berapa biayanya?&rdquo; tanyanya.</p>\r\n<p>&ldquo;Kamu ini lho&hellip;. Kan tadi sudah kukatakan: GRATIS.</p>\r\n<p>Kamu bisa coba dulu selama 7 hari, lalu setelah kamu buka live account, kamu bisa dapat semua layanan itu GRATIS,&rdquo; jawab saya.</p>\r\n<p>&ldquo;Wah, kenapa aku nggak tahu dari dulu?&rdquo; katanya.</p>\r\n<p>&ldquo;Lha, kamu selama ini ke mana saja?&rdquo;</p>\r\n<p>Lalu kami kembali tertawa bersama-sama.</p>\r\n<p>&mdash;</p>\r\n<p>Beberapa waktu kemudian, ada pesan di WhatsApp saya, &ldquo;Dab, aku sudah&nbsp;<strong><a href=\"http://www.foreximf.com/services/signal/trade-with-ease/?utm_source=artikel&amp;utm_medium=signal-follower-independent-1&amp;utm_campaign=signal-foreximf\" target=\"_blank\" rel=\"noopener\">pakai signal trading dari FOREXimf, dan terbukti sampai saat ini saya telah menghasilkan 1,800++ pips</a></strong>.</p>', 'yes', 4, 'berapa-akurasi-signal-trading-yang-bagus', 'Berapa Akurasi Signal Trading yang Bagus?', 'Berapa Akurasi Signal Trading yang Bagus?', 'Berapa Akurasi Signal Trading yang Bagus?', '2020-02-13 04:47:30');
INSERT INTO `blog` VALUES (34, NULL, 7, 2, 'Loss Gara-Gara Salah Signal Trading? (Ini Alasannya)', 'blog-6.jpg', 'Loss Gara-Gara Salah Signal Trading? (Ini Alasannya)', '<p style=\"text-align: justify;\">Salah satu metode analisa dalam trading forex adalah analisa teknikal dan&nbsp;<em>charting&nbsp;</em>alias&nbsp;<strong>analisa teknikal yang memanfaatkan grafik pergerakan harga</strong>&nbsp;(price chart/chart) yang merupakan salah satu metode analisa teknikal paling populer.</p>\r\n<p style=\"text-align: justify;\">Para&nbsp;<em>chartist&nbsp;</em>mempergunakan chart untuk kemudian memanfaatkannya untuk memproduksi&nbsp;<strong><a href=\"http://www.foreximf.com/services/signal/high-accuracy/?utm_source=artikel&amp;utm_medium=loss-karena-signal&amp;utm_campaign=signal-foreximf\" target=\"_blank\" rel=\"noopener\">signal trading akurat</a></strong>. Atau, setidaknya diharapkan untuk menjadi akurat, atau mendekati akurat.</p>\r\n<p style=\"text-align: justify;\">Permasalahan yang sering dijumpai kemudian biasanya adalah kemunculan&nbsp;<em>false signal</em>, atau sinyal palsu alias salah. Sinyal palsu semacam ini biasa muncul dari indikator teknikal, baik itu yang standar maupun yang&nbsp;<em>custom</em>.</p>\r\n<p style=\"text-align: justify;\">Jika false signal terlalu sering muncul, cukup sering seorang trader merasa tertipu oleh indikator teknikal yang ia pergunakan, sehingga akhirnya ia memutuskan untuk tidak lagi mempergunakan indikator teknikal tersebut.</p>\r\n<p style=\"text-align: justify;\">Tidak bisa dipungkiri bahwa memang indikator teknikal tidak mungkin bisa sempurna, dalam arti selalu benar.</p>\r\n<p style=\"text-align: justify;\">Lebih jauh lagi, trader yang mempergunakan indikator tersebut pun adalah manusia biasa yang bisa jadi salah menginterpretasikan kondisi indikator teknikal saat ia akan membuka posisi.</p>\r\n<p style=\"text-align: justify;\">Jadi, memang bisa jadi indikator teknikalnya yang kurang berkualitas, bisa pula ada faktor&nbsp;<em>human error</em>, di mana interpretasi seorang trader berbeda dengan apa yang terjadi sesungguhnya.</p>\r\n<p style=\"text-align: justify;\">Dalam tulisan ini, kita akan membatasi pembahasan pada&nbsp;<strong>menghindari false signal</strong>&nbsp;pada indikator teknikal standar yang ada di MetaTrader.</p>\r\n<p style=\"text-align: justify;\">Kalau kita mau membahas semua indikator custom yang beredar di dunia trading forex, saya khawatir itu akan membutuhkan waktu setidaknya dua periode jabatan presiden RI.</p>\r\n<h2 style=\"text-align: justify;\">Pahami apa itu indikator teknikal</h2>\r\n<p style=\"text-align: justify;\">Berdasarkan definisi MetaTrader, indikator teknikal adalah &ldquo;manipulasi matematis&rdquo; atas harga dan/atau volume yang bertujuan untuk memperkirakan pergerakan harga di masa datang.</p>\r\n<p style=\"text-align: justify;\">Keputusan trading mengenai bagaimana dan kapan waktunya untuk membuka atau menutup posisi bisa dibuat berdasarkan sinyal-sinyal dari indikator teknikal.</p>\r\n<p style=\"text-align: justify;\">Menurut fungsinya, indikator teknikal bisa dibagi ke dalam dua kelompok:</p>\r\n<ul style=\"text-align: justify;\">\r\n<li>Indikator trend</li>\r\n<li>Indikator osilator</li>\r\n</ul>\r\n<p style=\"text-align: justify;\">Indikator trend membantu kita untuk mengamati arah harga dan mendeteksi perubahan arah secara langsung ataupun dengan jeda waktu tertentu. Sedangkan osilator memungkinkan kita mencari &ldquo;momentum pembalikan&rdquo; arah.</p>\r\n<p style=\"text-align: justify;\">Perhatikan kata&nbsp;<strong>manipulasi matematis</strong>&nbsp;dalam definisi indikator teknikal di atas. Artinya, indikator teknikal sebenarnya adalah &ldquo;produk&rdquo; dari pergerakan harga yang telah terjadi, di mana ia&nbsp;mengolah data yang ada dan kemudian dengan algoritma tertentu ia akan memberikan signal yang kemudian di interpretasi sebagai sinyal jual atau beli dalam trading forex.</p>\r\n<p style=\"text-align: justify;\">Dengan demikian, permasalahannya kemudian adalah interpretasi dari penggunan indikator tersebut, yaitu trader.</p>\r\n<h2 style=\"text-align: justify;\">Kesalahan dalam membaca indikator teknikal</h2>\r\n<p style=\"text-align: justify;\">Indikator teknikal tidak hanya memanfaatkan data pergerakan harga yang telah terjadi, tetapi juga pergerakan harga yang sedang terjadi.</p>\r\n<p style=\"text-align: justify;\">Itulah mengapa &ndash; kalau Anda perhatikan &ndash; indikator teknikal senantiasa bergerak atau berubah (naik-turun, muncul-hilang, atau berubah warna) mengikuti pergerakan harga terkini.</p>\r\n<p style=\"text-align: justify;\">Ambil contoh, Parabolic SAR.</p>\r\n<p style=\"text-align: justify;\">Anda akan sering menemukan titik SAR muncul di bawah bar/candlestick, tetapi kemudian titik tersebut hilang dan berpindah tempat ke atas bar/candlestick yang Anda amati.</p>\r\n<p style=\"text-align: justify;\">Itu karena sebelumnya (berdasarkan algoritma pemrogramannya) titik SAR memang semestinya berada di bawah bar/candlestick, tetapi karena harga terus berubah dan membuat perhitungan SAR-nya pun berubah, maka titik SAR kemudian &ldquo;berpindah tempat&rdquo;.</p>\r\n<p style=\"text-align: justify;\">Intinya, indikator teknikal bisa berubah sesuai dengan kondisi market.</p>\r\n<p style=\"text-align: justify;\">Contoh kasus Parabolic SAR di atas hanya salah satu contoh saja. Mungkin Anda sering mendengar ada rekan trader Anda yang berceloteh,&nbsp;<em>&ldquo;Wah, stochastic-nya nipu! Tadi udah crossing naik, eh dia turun lagi!&rdquo;</em></p>\r\n<p style=\"text-align: justify;\">Sebenarnya, saudara-saudara, stochastic tidak menipu. Kitalah yang sering salah menginterpretasi kondisi stochastic. Bahwa sinyal dari stochastic bisa gagal, ya. Tetapi dia tidak menipu.</p>\r\n<h2 style=\"text-align: justify;\">Tunggu Konfirmasi Closing Bar/Candlestick</h2>\r\n<p style=\"text-align: justify;\">Untuk menghindari salah paham atau salah interpretasi yang melahirkan false signal, Anda perlu menunggu sampai sinyal yang muncul dari indikator teknikal itu betul-betul terkonfirmasi.</p>\r\n<p style=\"text-align: justify;\">Di atas sudah saya jelaskan bahwa indikator teknikal bisa berubah mengikuti perkembangan harga terkini, maka kuncinya adalah Anda harus menunggu hingga bar/candlestick yang Anda pergunakan betul-betul sudah komplit.</p>\r\n<p style=\"text-align: justify;\">Maksudnya bagaimana?</p>\r\n<p style=\"text-align: justify;\">Komplit di sini maksudnya adalah sudah&nbsp;<em>closed</em>.</p>\r\n<p style=\"text-align: justify;\">Mari kembali ke tuduhan stochastic menipu tadi.</p>\r\n<p style=\"text-align: justify;\">Contohnya, jika Anda mempergunakan&nbsp;<em>candlestick</em>&nbsp;<em>time frame&nbsp;</em>H1, maka untuk mengonfirmasi sinyal dari&nbsp;<em>stochastic</em>&nbsp;pastikan umur&nbsp;candlestick-nya sudah satu jam. Tunggu hingga candlestick tersebut closed, persis satu jam.</p>\r\n<p style=\"text-align: justify;\">Sinyal yang diberikan oleh stochastic (buy atau sell) akan lebih confirmed jika candlestick-nya sudah betul-betul closed.</p>\r\n<h2 style=\"text-align: justify;\">Pergunakan Beberapa Indikator</h2>\r\n<p style=\"text-align: justify;\">Cara lain untuk meminimalisir false signal&nbsp;adalah dengan mengombinasikan beberapa indikator teknikal. Cara ini cukup banyak dipergunakan oleh trader-trader berpengalaman. Kombinasi beberapa indikator inilah yang kemudian biasa disebut sebagai&nbsp;<strong>strategi trading</strong>.</p>\r\n<p style=\"text-align: justify;\">Dengan mempergunakan beberapa indikator teknikal, Anda akan bisa melihat sudut pandang lain. Misalnya Anda memadukan&nbsp;<em>Moving Average</em>&nbsp;(MA) dengan&nbsp;<em>stochastic</em>.</p>\r\n<p style=\"text-align: justify;\">Ketika stochastic memperlihatkan sinyal buy tetapi&nbsp; MA justru mengarah ke bawah, Anda bisa berhati-hati karena sinyal buy yang muncul mungkin tidak terlalu kuat, atau mungkin false, karena melawan trend yang sedang terjadi.</p>\r\n<p style=\"text-align: justify;\">Tetapi ingat, sebaiknya tidak mempergunakan terlalu banyak indikator untuk menghindari kebingungan. Disarankan untuk mempergunakan maksimal tiga indikator berbeda dalam satu chart.</p>\r\n<p style=\"text-align: justify;\">Selamat mencoba.</p>', 'yes', 4, 'loss-gara-gara-salah-signal-trading-ini-alasannya', 'Loss Gara-Gara Salah Signal Trading? (Ini Alasannya)', 'Loss Gara-Gara Salah Signal Trading? (Ini Alasannya)', 'Loss Gara-Gara Salah Signal Trading? (Ini Alasannya)', '2020-02-13 04:48:23');
INSERT INTO `blog` VALUES (35, NULL, 7, 1, 'French Finance Minister: We can not wait indefinitely until UK makes a decision to leave EU', 'blog-1.jpg', 'French Finance Minister: We can not wait indefinitely until UK makes a decision to leave EU', '<p>The French finance minister pointed out that EU should take a stand towards the Brexit, noting that it can not wait indefinitely until UK makes a decision to leave the European Union while continuing to postpone unnecessarily and a strong cause other than disagreement in domestic political trends.</p>', 'yes', 1, 'french-finance-minister:-we-can-not-wait-indefinitely-until-uk-makes-a-decision-to-leave-eu', 'French Finance Minister: We can not wait indefinitely until UK makes a decision to leave EU', 'French Finance Minister: We can not wait indefinitely until UK makes a decision to leave EU', 'French Finance Minister: We can not wait indefinitely until UK makes a decision to leave EU', '2020-02-13 05:49:37');
INSERT INTO `blog` VALUES (36, NULL, 7, 2, '123', 'blog-2.jpg', '123', '<p>123</p>', 'yes', NULL, '123', '123', '12123', '123123', '2020-05-05 16:48:20');
COMMIT;

-- ----------------------------
-- Table structure for blog_category
-- ----------------------------
DROP TABLE IF EXISTS `blog_category`;
CREATE TABLE `blog_category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `thumbnail` varchar(255) DEFAULT NULL,
  `thumbnail_alt` varchar(255) DEFAULT NULL,
  `use` enum('yes','no') DEFAULT NULL,
  `meta_keywords` varchar(255) DEFAULT NULL,
  `meta_title` varchar(255) DEFAULT NULL,
  `meta_description` text NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of blog_category
-- ----------------------------
BEGIN;
INSERT INTO `blog_category` VALUES (7, 'Campaign', '<p>Campaign</p>', 'campaign.jpeg', 'Campaign', 'yes', 'Campaign', 'Campaign', 'Campaign');
INSERT INTO `blog_category` VALUES (8, 'K3 Pariwisata', '<p>K3 Pariwisata</p>', 'k3-pariwisata.jpeg', 'K3 Pariwisata', 'yes', 'K3 Pariwisata', 'K3 Pariwisata', 'K3 Pariwisata');
INSERT INTO `blog_category` VALUES (9, 'K3 Perhotelan', '<p>K3 Pariwisata</p>', 'k3-perhotelan1.jpeg', 'K3 Pariwisata', 'yes', 'K3 Pariwisata', 'K3 Pariwisata', 'K3 Pariwisata');
INSERT INTO `blog_category` VALUES (10, 'K3 Rumah Sakit', '<p>K3 Rumah Sakit</p>', 'k3-rumah-sakit.jpeg', 'K3 Rumah Sakit', 'yes', 'K3 Rumah Sakit', 'K3 Rumah Sakit', 'K3 Rumah Sakit');
INSERT INTO `blog_category` VALUES (11, 'Profesi Milenial', '<p>Profesi Milenial</p>', 'profesi-milenial.jpeg', 'Profesi Milenial', 'yes', 'Profesi Milenial', 'Profesi Milenial', 'Profesi Milenial');
INSERT INTO `blog_category` VALUES (12, 'Stress Management', '<p>Stress Management</p>', 'stress-management.jpeg', 'Stress Management', 'yes', 'Stress Management', 'Stress Management', 'Stress Management');
INSERT INTO `blog_category` VALUES (13, 'Gizi Pekerja', '<p>Gizi Pekerja</p>', 'gizi-pekerja.jpeg', 'Gizi Pekerja', 'yes', 'Gizi Pekerja', 'Gizi Pekerja', 'Gizi Pekerja');
INSERT INTO `blog_category` VALUES (14, 'Undang Undang', '<p>Undang Undang</p>', 'undang-undang.jpeg', 'Undang Undang', 'yes', 'Undang Undang', 'Undang Undang', 'Undang Undang');
COMMIT;

-- ----------------------------
-- Table structure for category
-- ----------------------------
DROP TABLE IF EXISTS `category`;
CREATE TABLE `category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_language` int(11) DEFAULT NULL,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `thumbnail` varchar(255) DEFAULT NULL,
  `thumbnail_alt` varchar(255) DEFAULT NULL,
  `use` enum('yes','no') DEFAULT NULL,
  `view_top_menu` enum('yes','no') DEFAULT NULL,
  `meta_keywords` varchar(255) DEFAULT NULL,
  `meta_title` varchar(255) DEFAULT NULL,
  `meta_description` text NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of category
-- ----------------------------
BEGIN;
INSERT INTO `category` VALUES (23, 2, 'Men', '<p>-</p>', NULL, '-', 'yes', 'yes', 'Tas', 'Tas', 'Tas');
INSERT INTO `category` VALUES (24, 2, 'Women', '<p>-</p>', NULL, '-', 'yes', 'yes', 'Sandal', 'Sandal', 'Sandal');
INSERT INTO `category` VALUES (25, 2, 'Running', '<p>Hias Dinding</p>', NULL, 'Hias Dinding', 'yes', 'yes', 'Hias Dinding', 'Hias Dinding', 'Hias Dinding');
INSERT INTO `category` VALUES (26, 2, 'Training', '<p>-</p>', NULL, '-', 'yes', 'yes', 'Training', 'Training', 'Training');
COMMIT;

-- ----------------------------
-- Table structure for comment
-- ----------------------------
DROP TABLE IF EXISTS `comment`;
CREATE TABLE `comment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `thumbnail` varchar(255) DEFAULT NULL,
  `thumbnail_alt` varchar(255) DEFAULT NULL,
  `use` enum('yes','no') NOT NULL,
  `date` varchar(255) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of comment
-- ----------------------------
BEGIN;
INSERT INTO `comment` VALUES (3, 'Alexander', 'Praesent mattis commodo augue Aliquam ornare hendrerit augue Cras tellus In pulvinar lectus a est.', 'alexander.jpeg', 'Alexander', 'yes', '');
INSERT INTO `comment` VALUES (4, 'Westley', 'Praesent mattis commodo augue Aliquam ornare hendrerit augue Cras tellus In pulvinar lectus a est.', 'westley.jpeg', 'Westley', 'yes', '');
INSERT INTO `comment` VALUES (5, 'Westley Uy', 'Praesent mattis commodo augue Aliquam ornare hendrerit augue Cras tellus In pulvinar lectus a est.', 'westley-uy.jpeg', 'Westley', 'yes', '');
INSERT INTO `comment` VALUES (6, 'Mahendra', 'Praesent mattis commodo augue Aliquam ornare hendrerit augue Cras tellus In pulvinar lectus a est.', 'mahendra.jpeg', 'Praesent mattis commodo augue Aliquam ornare hendrerit augue Cras tellus In pulvinar lectus a est.', 'yes', '');
COMMIT;

-- ----------------------------
-- Table structure for contact
-- ----------------------------
DROP TABLE IF EXISTS `contact`;
CREATE TABLE `contact` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `message` text NOT NULL,
  `created_at` datetime NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of contact
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for dictionary
-- ----------------------------
DROP TABLE IF EXISTS `dictionary`;
CREATE TABLE `dictionary` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_language` int(11) DEFAULT NULL,
  `dict_variable` varchar(255) DEFAULT NULL,
  `dict_word` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=118 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of dictionary
-- ----------------------------
BEGIN;
INSERT INTO `dictionary` VALUES (92, 1, 'back', 'Back');
INSERT INTO `dictionary` VALUES (93, 2, 'back', 'Kembali');
INSERT INTO `dictionary` VALUES (94, 1, 'book_now', 'Book Now');
INSERT INTO `dictionary` VALUES (95, 2, 'book_now', 'Pesan Sekarang');
INSERT INTO `dictionary` VALUES (96, 1, 'development_by', 'Development By');
INSERT INTO `dictionary` VALUES (97, 2, 'development_by', 'Dikembangkan Oleh');
INSERT INTO `dictionary` VALUES (98, 1, 'email', 'Email');
INSERT INTO `dictionary` VALUES (99, 2, 'email', 'Email');
INSERT INTO `dictionary` VALUES (100, 1, 'free_trial', 'Free Trial');
INSERT INTO `dictionary` VALUES (101, 2, 'free_trial', 'Gratis Dicoba');
INSERT INTO `dictionary` VALUES (102, 1, 'handphone', 'Phone Number');
INSERT INTO `dictionary` VALUES (103, 2, 'handphone', 'Nomer Handphone');
INSERT INTO `dictionary` VALUES (104, 1, 'message', 'Message');
INSERT INTO `dictionary` VALUES (105, 2, 'message', 'Pesan');
INSERT INTO `dictionary` VALUES (106, 1, 'message_send', 'Send Message');
INSERT INTO `dictionary` VALUES (107, 2, 'message_send', 'Kirim Pesan');
INSERT INTO `dictionary` VALUES (108, 1, 'name', 'Name');
INSERT INTO `dictionary` VALUES (109, 2, 'name', 'Nama');
INSERT INTO `dictionary` VALUES (110, 1, 'request_send', 'Send Request');
INSERT INTO `dictionary` VALUES (111, 2, 'request_send', 'Kirim Permintaan');
INSERT INTO `dictionary` VALUES (112, 1, 'security_code', 'Security Code');
INSERT INTO `dictionary` VALUES (113, 2, 'security_code', 'Kode Keamanan');
INSERT INTO `dictionary` VALUES (114, 1, 'social_media', 'Social Media');
INSERT INTO `dictionary` VALUES (115, 2, 'social_media', 'Media Sosial');
INSERT INTO `dictionary` VALUES (116, 1, 'top_menu', 'Top Menu');
INSERT INTO `dictionary` VALUES (117, 2, 'top_menu', 'Menu Utama');
COMMIT;

-- ----------------------------
-- Table structure for email
-- ----------------------------
DROP TABLE IF EXISTS `email`;
CREATE TABLE `email` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(255) NOT NULL,
  `use` enum('yes','no') NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of email
-- ----------------------------
BEGIN;
INSERT INTO `email` VALUES (3, 'mahendra.adi.wardana@gmail.com', 'yes');
COMMIT;

-- ----------------------------
-- Table structure for gallery
-- ----------------------------
DROP TABLE IF EXISTS `gallery`;
CREATE TABLE `gallery` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `thumbnail` varchar(255) NOT NULL,
  `thumbnail_alt` text DEFAULT NULL,
  `use` enum('yes','no') DEFAULT 'no',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of gallery
-- ----------------------------
BEGIN;
INSERT INTO `gallery` VALUES (5, 'Mengapa1', '21', 'blog-1.jpg', '1', 'yes');
INSERT INTO `gallery` VALUES (7, '1', '2', 'blog-2.jpg', 'tes', 'yes');
INSERT INTO `gallery` VALUES (8, 'af', '', 'blog-3.jpg', 'fa', 'yes');
INSERT INTO `gallery` VALUES (9, 'af1', '', 'blog-4.jpg', 'fa', 'yes');
INSERT INTO `gallery` VALUES (10, 'asdf', '', 'blog-5.jpg', 'asdf', 'yes');
INSERT INTO `gallery` VALUES (11, 'asdf 1', '', 'blog-6.jpg', 'asdf', 'yes');
INSERT INTO `gallery` VALUES (12, 'asdfasdf', '', 'blog-1.jpg', 'asdfadf', 'yes');
INSERT INTO `gallery` VALUES (13, 'asdf', '', 'blog-2.jpg', 'asdfasdf', 'yes');
INSERT INTO `gallery` VALUES (14, 'asdfasdf', '', 'blog-3.jpg', 'asdfasdf', 'yes');
COMMIT;

-- ----------------------------
-- Table structure for language
-- ----------------------------
DROP TABLE IF EXISTS `language`;
CREATE TABLE `language` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `thumbnail` varchar(255) DEFAULT NULL,
  `code` char(10) DEFAULT NULL,
  `use` enum('yes','no') DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of language
-- ----------------------------
BEGIN;
INSERT INTO `language` VALUES (1, 'English', 'english.png', 'en', 'no');
INSERT INTO `language` VALUES (2, 'Indonesia', 'indonesia.png', 'id', 'yes');
INSERT INTO `language` VALUES (3, 'Chinese', 'chinese.png', 'zh', 'no');
INSERT INTO `language` VALUES (4, 'Japan', 'japan.jpg', 'jp', 'no');
COMMIT;

-- ----------------------------
-- Table structure for pages
-- ----------------------------
DROP TABLE IF EXISTS `pages`;
CREATE TABLE `pages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_language` int(11) DEFAULT NULL,
  `id_product` int(11) DEFAULT NULL,
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
  `controller_method` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of pages
-- ----------------------------
BEGIN;
INSERT INTO `pages` VALUES (16, 2, NULL, 'Pusat Penjualan Sepatu di Bali', '-', 'Beranda', 'beranda.jpeg', '<p>Selamat datang di Pusat Penjualan Sepatu di Bali yang di dukung oleh Red System</p>', 'Pusat Penjualan Sepatu di Bali', 'Pusat Penjualan Sepatu di Bali', 'Pusat Penjualan Sepatu di Bali', 'home', 'yes', NULL, 'no', 'null', 'no', NULL, 'beranda', 'home');
INSERT INTO `pages` VALUES (17, 2, NULL, 'Tentang Kami', 'Pengaduan', 'Tentang Kami', NULL, '<div class=\"col-md-8 offset-md-2 col-xs-12\">\r\n<div class=\"row\">\r\n<div class=\"col-12\">\r\n<h1 class=\"mb-3\">Kontak Pengaduan Pasar Sukawati</h1>\r\n<hr></div>\r\n<div class=\"col-md-6\">\r\n<h3 class=\"text-uppercase mt-3\">Lokasi</h3>\r\n<p>Jalan Raya Sukawati, Sukawati, Kec. Sukawati, Kabupaten Gianyar, Bali 80582</p>\r\n</div>\r\n<div class=\"col-md-6\">\r\n<h3 class=\"text-uppercase mt-3\">Pengaduan</h3>\r\n<p>Anda kurang puas atau ada keluhan saat belanja ? Hubungi Pengelola Pasar Sukawati <a href=\"tel:0361290132\">0361 290132</a></p>\r\n</div>\r\n<div class=\"col-md-6\">\r\n<h3 class=\"text-uppercase mt-3\">Jam Buka</h3>\r\n<p>SETIAP HARI :<br> PUKUL 06:00 – 13:00 WITA</p>\r\n</div>\r\n<div class=\"col-md-6\">\r\n<h3 class=\"text-uppercase mt-3\">Waktu Pengantaran</h3>\r\n<p>SETIAP HARI :<br> PUKUL 07:00 - 13:00 WITA</p>\r\n</div>\r\n</div>\r\n</div>\r\n<div id=\"gtx-trans\"> </div>', 'Pengaduan', 'Pengaduan', 'Pengaduan', 'about_us', 'yes', NULL, 'no', 'null', 'no', NULL, 'tentang-kami', 'testimonial');
INSERT INTO `pages` VALUES (18, 2, NULL, 'List Shop', '', '', NULL, '<p>-</p>', 'List Shop', 'List Shop', 'List Shop', 'list_shop', 'yes', NULL, 'no', 'null', 'no', NULL, '', NULL);
INSERT INTO `pages` VALUES (23, 2, NULL, 'Petunjuk Pemesanan', 'Ikuti Tahap - Tahap dibawah untuk melakukan pemesanan.', 'Cara Belanja', NULL, '<h2>Top Products</h2>\r\n<p class=\"lead\">Est falli invenire interpretaris id, magna libris sensibus mel id.</p>\r\n<p>Per eu nostrud feugiat. Et quo molestiae persecuti neglegentur. At zril definitionem mei, vel ei choro volumus. An tota nulla soluta has, ei nec essent audiam, te nisl dignissim vel. Ex velit audire perfecto pro, ei mei doming vivendo legendos. Cu sit magna zril, an odio delectus constituto vis. Vis ludus omnesque ne, est veri quaeque ad.</p>\r\n<h2>Top Brands</h2>\r\n<p class=\"lead\">Est falli invenire interpretaris id, magna libris sensibus mel id.</p>\r\n<p>Per eu nostrud feugiat. Et quo molestiae persecuti neglegentur. At zril definitionem mei, vel ei choro volumus. An tota nulla soluta has, ei nec essent audiam, te nisl dignissim vel. Ex velit audire perfecto pro, ei mei doming vivendo legendos. Cu sit magna zril, an odio delectus constituto vis. Vis ludus omnesque ne, est veri quaeque ad.</p>\r\n<h2>+5000 products</h2>\r\n<p class=\"lead\">Est falli invenire interpretaris id, magna libris sensibus mel id.</p>\r\n<p>Per eu nostrud feugiat. Et quo molestiae persecuti neglegentur. At zril definitionem mei, vel ei choro volumus. An tota nulla soluta has, ei nec essent audiam, te nisl dignissim vel. Ex velit audire perfecto pro, ei mei doming vivendo legendos. Cu sit magna zril, an odio delectus constituto vis. Vis ludus omnesque ne, est veri quaeque ad.</p>', 'Cara Belanja', 'Cara Belanja', 'Cara Belanja', 'order', 'yes', NULL, 'no', 'null', 'no', NULL, 'cara-belanja', NULL);
INSERT INTO `pages` VALUES (28, 2, NULL, 'Footer', '', NULL, NULL, '<p class=\"top-btn-text\">Tertarik dengan <strong>Produk</strong> yang Kita tawarkan kepada Anda ? Silahkan Pesan Sekarang dengan menekan tombol disamping</p>', NULL, NULL, NULL, 'footer', 'no', NULL, 'no', 'null', 'no', NULL, NULL, NULL);
INSERT INTO `pages` VALUES (35, 2, NULL, 'Kategori Produk', '', 'Kategori', NULL, '<p>Lorem ipsum dolor sit amet conse ctetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Lorem ipsum dolor sit amet conse ctetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliqui.</p>', 'Semua Produk', 'Semua Produk', 'Semua Produk', 'category', 'yes', NULL, 'no', '{\"title\":[\"Berapa Persen Profit Yang Dijanjikan ?\",\"Apakah ada jaminan Tidak Akan Rugi Atau Loss?\",\"Apakah Dana Saya Bisa Di Tarik Kapan Saja ?\",\"Apakah ada pembagian keuntungan ?\",\"Apakah Ada Biaya Tambahan Lainnya ?\",\"\",\"\"],\"description\":[\"Robot ini tidak bisa menjanjikan nilai profit tetap. Besarnya profit sangat tergantung dari kondisi pasar dan volume perdagangan yang terjadi di seluruh dunia. Namun jika mengacu pada hasil tes 5 tahun ke belakang (Back Test), software ini mampu memberikan profit 50% - 80% per tahun.\",\"Apabila pengguna software ROBOT mengikuti rules dan settingan default maka kerugian atau resiko Loss kemungkinan sangat kecil.\",\"Tentu saja bisa, Karena kami bukan Broker atau pengepul dana. Dana yang ada didalam akun adalah atas nama anda sendiri dengan broker pilihan anda, sehingga proses deposit dan penarikan dana ada dikendali anda.\",\"Tidak, Keuntungan dari hasil perdagangan adalah seluruhnya milik anda. Tidak ada pemotongan maupun pengurangan.\",\"Ya, setiap penggunan kami akan dikenakan biaya maintenance setiap bulannya.\",\"\",\"\"],\"images\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\"]}', 'no', NULL, 'kategori', 'faq');
INSERT INTO `pages` VALUES (36, 2, NULL, 'Blog', '', '', NULL, '<p>Berikut daftar manfaat dari Produk ini : </p>', 'Blog', 'Blog', 'Blog', 'blog', 'yes', NULL, 'no', '{\"title\":[\"Segera miliki robot autopilot ini dengan membeli dari kami.\",\"Buat Akun Trading Di salah satu Broker Sesuai Pilihan Anda Sendiri\",\"Selanjutnya kami menjalankan Software ROBOT pada akun anda.\"],\"description\":[\"\",\"\",\"\"],\"images\":[\"\",\"\",\"\"]}', 'no', NULL, '', NULL);
INSERT INTO `pages` VALUES (38, 2, NULL, 'LOKASI PASAR SUKAWATI', '', 'Lokasi', NULL, '<div class=\"col-md-6\">\r\n<div class=\"row\">\r\n<div class=\"col-12\">\r\n<h1 class=\"mb-3\">LOKASI PASAR SUKAWATI</h1>\r\n<hr></div>\r\n<div class=\"col-md-6\">\r\n<h3 class=\"text-uppercase mt-3\">Lokasi</h3>\r\n<p>Jalan Raya Sukawati, Sukawati, Kec. Sukawati, Kabupaten Gianyar, Bali 80582</p>\r\n</div>\r\n<div class=\"col-md-6\">\r\n<h3 class=\"text-uppercase mt-3\">Pengaduan</h3>\r\n<p>Anda kurang puas atau ada keluhan saat belanja ? Hubungi Pengelola Pasar Sukawati <a href=\"tel:0361290132\">0361 290132</a></p>\r\n</div>\r\n<div class=\"col-md-6\">\r\n<h3 class=\"text-uppercase mt-3\">Jam Buka</h3>\r\n<p>SETIAP HARI :<br> PUKUL 06:00 – 13:00 WITA</p>\r\n</div>\r\n<div class=\"col-md-6\">\r\n<h3 class=\"text-uppercase mt-3\">Waktu Pengantaran</h3>\r\n<p>SETIAP HARI :<br> PUKUL 07:00 - 13:00 WITA</p>\r\n</div>\r\n</div>\r\n</div>', 'Lokasi', 'Lokasi', 'Lokasi', 'contact_us', 'yes', NULL, 'no', '{\"title\":[\"TRADING <strong>OTOMATIS<\\/strong> & <strong>SERVER<\\/strong> 24\\/5\",\"<strong>MANAJEMEN RESIKO<\\/strong>\",\"<strong>AMAN<\\/strong> DAN <strong>TERUJI<\\/strong>\",\"CUSTOMER <strong>SERVICE<\\/strong>\",\"\",\"\",\"\",\"\"],\"description\":[\"Trading otomatis dengan software Robot Autopilot dengan server bekerja 24 jam \\/ 5 hari kerja (jam operasional pasar)\",\"Manajemen Resiko yang minim dengan penggunaan <i>rule trade<\\/i> yang baik dari service yang Kami berikan.\",\"Aman dan sudah teruji oleh tim ahli di bidang Forex\",\"Layanan Customer Services terbaik, siap melayani Anda.\",\"\",\"\",\"\",\"\"],\"images\":[\"trading-otomatis-dan-server-24-5.png\",\"manajemen-resiko.png\",\"aman-dan-teruji.png\",\"customer-service.png\",\"\",\"\",\"\",\"\"]}', 'no', NULL, 'lokasi', NULL);
INSERT INTO `pages` VALUES (39, 2, NULL, 'Galeri Foto', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'gallery_photo', 'yes', 'no', 'no', NULL, 'no', NULL, NULL, NULL);
INSERT INTO `pages` VALUES (40, 2, 48, 'ARMOR AIR COLOR 720', 'Lightweight cushioning and durable support with a Phylon midsole', '', 'armor-air-color-720.jpg', '<p>-</p>', NULL, NULL, NULL, 'home_product_row', 'no', 'no', 'no', 'null', 'no', NULL, '', NULL);
COMMIT;

-- ----------------------------
-- Table structure for product
-- ----------------------------
DROP TABLE IF EXISTS `product`;
CREATE TABLE `product` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
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
  `star` tinyint(2) DEFAULT NULL,
  `meta_title` varchar(255) NOT NULL,
  `meta_description` varchar(255) NOT NULL,
  `meta_keywords` varchar(255) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=55 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of product
-- ----------------------------
BEGIN;
INSERT INTO `product` VALUES (46, 2, 23, 'Armor 720', 'Armor 720', 'yes', 'yes', 'no', '<h3>Armor 720</h3>\r\n<p> </p>', 'product-1.jpg', 'Clutch pandan', 120000, 150000, 4, 'Armor 720', 'Armor 720', 'Armor 720', '2020-07-03 17:44:32', '2020-08-04 10:09:49');
INSERT INTO `product` VALUES (47, 2, 24, 'Armor Air 720', 'Armor Air 720', 'yes', 'yes', 'yes', '<h3>Armor Air 720</h3>\r\n<p> </p>', 'product-2.jpg', 'Pretty Sky Blue', 99000, 0, 4, 'Armor Air 720', 'Armor Air 720', 'Armor Air 720', '2020-07-03 17:45:32', '2020-08-04 10:09:30');
INSERT INTO `product` VALUES (48, 2, 24, 'Armor Air 98', 'Armor Air 98', 'yes', 'yes', 'yes', '<h3>Armor Air 98</h3>\r\n<p> </p>', 'product-3.jpg', 'Thumbelina Navy Blue', 99000, 0, 4, 'Armor Air 98', 'Armor Air 98', 'Armor Air 98', '2020-07-03 17:54:23', '2020-08-04 10:09:04');
INSERT INTO `product` VALUES (49, 2, 24, 'Armor Air Alpha', 'Armor Air Alpha', 'yes', 'yes', 'no', '<h3>Armor Air Alpha</h3>\r\n<p> </p>', 'product-4.jpg', 'Pretty Yin Yang', 99000, 0, 5, 'Armor Air Alpha', 'Armor Air Alpha', 'Armor Air Alpha', '2020-07-03 17:55:29', '2020-08-04 10:08:07');
INSERT INTO `product` VALUES (50, 2, 24, 'Armor Air Zoom Alpha', 'Armor Air Zoom Alpha', 'yes', 'yes', 'no', '<h3>Armor Air Zoom Alpha</h3>', 'product-5.jpg', 'Pretty PurpleBlue', 104000, 0, 5, 'Armor Air Zoom Alpha', 'Armor Air Zoom Alpha', 'Armor Air Zoom Alpha', '2020-07-03 17:56:19', '2020-08-04 10:07:36');
INSERT INTO `product` VALUES (51, 2, 25, 'Armor ACG React Terra', 'Armor ACG React Terra', 'yes', 'yes', 'no', '<h3>Armor ACG React Terra</h3>\r\n<p> </p>', 'product-6.jpg', 'Shell', 100000, 120000, 4, 'Armor ACG React Terra', 'Armor ACG React Terra', 'Armor ACG React Terra', '2020-07-03 17:57:11', '2020-08-04 10:06:51');
INSERT INTO `product` VALUES (52, 2, 25, 'Armor Air Wildwood ACG', 'Armor Air Wildwood ACG', 'yes', 'yes', 'no', '<h3>Armor Air Wildwood ACG</h3>\r\n<p> </p>', 'product-7.jpg', 'Shell 2', 140000, 170000, 5, 'Armor Air Wildwood ACG', 'Armor Air Wildwood ACG', 'Armor Air Wildwood ACG', '2020-07-03 18:02:56', '2020-08-04 09:58:49');
INSERT INTO `product` VALUES (53, 2, 25, 'Armor Okwahn II', 'Armor Okwahn II', 'yes', 'no', 'yes', '<h3>Armor Okwahn II</h3>', 'product-8.jpg', 'Shell 3', 130000, 0, 4, 'Armor Okwahn II', 'Armor Okwahn II', 'Armor Okwahn II', '2020-07-03 18:04:00', '2020-08-04 09:56:01');
INSERT INTO `product` VALUES (54, 2, 25, 'Armor Air x Fear', '-', 'yes', 'yes', 'no', '<p>Sed ex labitur adolescens scriptorem. Te saepe verear tibique sed. Et wisi ridens vix, lorem iudico blandit mel cu. Ex vel sint zril oportere, amet wisi aperiri te cum.</p>', 'product-1.jpg', 'Seashell', 100000, 60000, 5, 'Armor Air x Fear', 'Armor Air x Fear', 'Armor Air x Fear', '2020-07-03 19:13:53', '2020-08-04 09:49:26');
COMMIT;

-- ----------------------------
-- Table structure for product_gallery
-- ----------------------------
DROP TABLE IF EXISTS `product_gallery`;
CREATE TABLE `product_gallery` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_product` int(11) DEFAULT NULL,
  `title` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `thumbnail` varchar(255) NOT NULL,
  `thumbnail_alt` text DEFAULT NULL,
  `use_view` enum('yes','no') DEFAULT 'no',
  `use_thumbnail` enum('yes','no') DEFAULT 'no',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of product_gallery
-- ----------------------------
BEGIN;
INSERT INTO `product_gallery` VALUES (15, 54, '-', '', 'product-1.jpg', '-', 'yes', 'no');
INSERT INTO `product_gallery` VALUES (16, 54, '-', '', 'product-2.jpg', '-', 'yes', 'no');
INSERT INTO `product_gallery` VALUES (17, 54, '-', '', 'product-3.jpg', '-', 'yes', 'yes');
INSERT INTO `product_gallery` VALUES (18, 53, '-', '', 'product-4.jpg', '-', 'yes', 'yes');
INSERT INTO `product_gallery` VALUES (19, 53, '-', '', 'product-5.jpg', '-', 'yes', 'no');
INSERT INTO `product_gallery` VALUES (20, 53, '-', '', 'product-6.jpg', '-', 'yes', 'no');
INSERT INTO `product_gallery` VALUES (21, 52, '-', '', 'product-7.jpg', '-', 'yes', 'yes');
INSERT INTO `product_gallery` VALUES (22, 52, '-', '', 'product-8.jpg', '-', 'yes', 'no');
INSERT INTO `product_gallery` VALUES (23, 52, '-', '', 'product-1.jpg', '-', 'yes', 'no');
INSERT INTO `product_gallery` VALUES (24, 51, '-', '', 'product-2.jpg', '-', 'yes', 'yes');
INSERT INTO `product_gallery` VALUES (25, 51, '-', '', 'product-3.jpg', '-', 'yes', 'no');
INSERT INTO `product_gallery` VALUES (26, 51, '-', '', 'product-4.jpg', '-', 'yes', 'no');
INSERT INTO `product_gallery` VALUES (27, 50, '-', '', 'product-5.jpg', '-', 'yes', 'yes');
INSERT INTO `product_gallery` VALUES (28, 50, '-', '', 'product-6.jpg', '-', 'yes', 'no');
INSERT INTO `product_gallery` VALUES (29, 50, '-', '', 'product-7.jpg', '-', 'yes', 'no');
INSERT INTO `product_gallery` VALUES (30, 49, '-', '', 'product-8.jpg', '-', 'yes', 'yes');
INSERT INTO `product_gallery` VALUES (31, 49, '-', '', 'product-1.jpg', '-', 'yes', 'no');
INSERT INTO `product_gallery` VALUES (32, 49, '-', '', 'product-2.jpg', '-', 'yes', 'no');
INSERT INTO `product_gallery` VALUES (33, 48, '-', '', 'product-3.jpg', '-', 'yes', 'yes');
INSERT INTO `product_gallery` VALUES (34, 48, '-', '', 'product-4.jpg', '-', 'yes', 'no');
INSERT INTO `product_gallery` VALUES (35, 48, '-', '', 'product-5.jpg', '-', 'yes', 'no');
INSERT INTO `product_gallery` VALUES (36, 47, '-', '', 'product-6.jpg', '-', 'yes', 'yes');
INSERT INTO `product_gallery` VALUES (37, 47, '-', '', 'product-7.jpg', '-', 'yes', 'no');
INSERT INTO `product_gallery` VALUES (38, 47, '-', '', 'product-8.jpg', '-', 'yes', 'no');
INSERT INTO `product_gallery` VALUES (39, 46, '-', '', 'product-1.jpg', '-', 'yes', 'yes');
INSERT INTO `product_gallery` VALUES (40, 46, '-', '', 'product-2.jpg', '-', 'yes', 'no');
INSERT INTO `product_gallery` VALUES (41, 46, '-', '', 'product-3.jpg', '-', 'yes', 'no');
COMMIT;

-- ----------------------------
-- Table structure for reservation
-- ----------------------------
DROP TABLE IF EXISTS `reservation`;
CREATE TABLE `reservation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
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
  `created_at` datetime NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of reservation
-- ----------------------------
BEGIN;
INSERT INTO `reservation` VALUES (1, NULL, 'mr', 'kusuma', 'wardana', 'kadek.kusuma.wardana@gmail.com', 895616869, NULL, 'indonesia', 'besok', 1, 1, 1, '0000-00-00 00:00:00');
INSERT INTO `reservation` VALUES (2, 3, 'Mr.', 'Mahendra', 'Wardana', 'mahendra.adi.wardana@gmail.com', 2147483647, 'Jalan Ratna', 'Indonesia', '06/10/2019 6:27 AM', 1, 0, 0, '2019-10-06 06:29:50');
COMMIT;

-- ----------------------------
-- Table structure for shop
-- ----------------------------
DROP TABLE IF EXISTS `shop`;
CREATE TABLE `shop` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
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
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of shop
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for slider
-- ----------------------------
DROP TABLE IF EXISTS `slider`;
CREATE TABLE `slider` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_language` int(11) DEFAULT NULL,
  `title` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `thumbnail` varchar(255) NOT NULL,
  `thumbnail_alt` varchar(255) DEFAULT NULL,
  `align` varchar(255) DEFAULT NULL,
  `url` varchar(255) NOT NULL,
  `use` varchar(255) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of slider
-- ----------------------------
BEGIN;
INSERT INTO `slider` VALUES (12, 2, 'Attack Air\r\nMax 720 Sage Low', 'Limited items available at this price', 'attack-air_max-720-sage-low.jpg', 'thumbnail alt', 'right', 'http://localhost/gtn_ecommerce/', 'yes');
INSERT INTO `slider` VALUES (13, 2, 'Attack Air\r\nVaporMax Flyknit 3', 'Limited items available at this price', 'attack-air_vapormax-flyknit-3.jpg', 'thumbnail alt', 'left', 'http://localhost/gtn_ecommerce/', 'yes');
INSERT INTO `slider` VALUES (14, 2, 'Attack Air\r\nVaporMax Flyknit 3', 'Limited items available at this price', 'attack-air_vapormax-flyknit-31.jpg', 'thumbnail alt', 'center', 'http://localhost/gtn_ecommerce/', 'yes');
COMMIT;

-- ----------------------------
-- Table structure for team
-- ----------------------------
DROP TABLE IF EXISTS `team`;
CREATE TABLE `team` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `position` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `thumbnail` varchar(255) NOT NULL,
  `thumbnail_alt` text DEFAULT NULL,
  `use` enum('yes','no') DEFAULT 'no',
  `meta_title` varchar(255) DEFAULT NULL,
  `meta_description` text DEFAULT NULL,
  `meta_keywords` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of team
-- ----------------------------
BEGIN;
INSERT INTO `team` VALUES (15, 'Etick Pristyan Dewi', 'Team Hore', '<p>1</p>', 'etick-pristyan-dewi.jpeg', NULL, 'yes', '1', '2', '3');
INSERT INTO `team` VALUES (16, 'Ida Ayu Indira Dwika Lestari', 'CEO', '2', 'ida-ayu-indira-dwika-lestari.jpeg', NULL, 'yes', NULL, NULL, NULL);
INSERT INTO `team` VALUES (17, 'Made Awi', 'CPO', '3', 'made-awi.jpeg', NULL, 'yes', NULL, NULL, NULL);
INSERT INTO `team` VALUES (18, 'Irwan', 'COO', '4', 'irwan.jpeg', NULL, 'yes', NULL, NULL, NULL);
INSERT INTO `team` VALUES (19, 'Gung De', 'CIO', '5', 'gung-de.jpeg', NULL, 'yes', NULL, NULL, NULL);
COMMIT;

-- ----------------------------
-- Table structure for tour
-- ----------------------------
DROP TABLE IF EXISTS `tour`;
CREATE TABLE `tour` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
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
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tour
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for tour_gallery
-- ----------------------------
DROP TABLE IF EXISTS `tour_gallery`;
CREATE TABLE `tour_gallery` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_tour` int(11) DEFAULT NULL,
  `title` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `thumbnail` varchar(255) NOT NULL,
  `thumbnail_alt` text DEFAULT NULL,
  `use` enum('yes','no') DEFAULT 'no',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tour_gallery
-- ----------------------------
BEGIN;
INSERT INTO `tour_gallery` VALUES (5, NULL, 'Mengapa1', '21', 'mengapa11.jpeg', '1', 'yes');
INSERT INTO `tour_gallery` VALUES (7, NULL, '1', '2', '15.jpeg', 'tes', 'yes');
INSERT INTO `tour_gallery` VALUES (9, 3, '11', '', '11.jpeg', '31', 'yes');
INSERT INTO `tour_gallery` VALUES (10, 3, '1', '', '1.jpeg', '2', 'yes');
INSERT INTO `tour_gallery` VALUES (11, 3, '2', '', '2.jpeg', '3', 'yes');
INSERT INTO `tour_gallery` VALUES (12, 3, 'Gili Gili Fast Boat', '', 'gili-gili-fast-boat.jpeg', '2', 'yes');
INSERT INTO `tour_gallery` VALUES (13, 3, '1', '', '1.jpeg', '2', 'yes');
INSERT INTO `tour_gallery` VALUES (14, 3, '1 2', '', '1-2.jpeg', '2', 'yes');
INSERT INTO `tour_gallery` VALUES (15, 4, '1', '', '1.jpeg', 'test', 'yes');
INSERT INTO `tour_gallery` VALUES (16, 5, '1', '', '1.jpeg', '2', 'yes');
COMMIT;

-- ----------------------------
-- Table structure for video
-- ----------------------------
DROP TABLE IF EXISTS `video`;
CREATE TABLE `video` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `video` varchar(255) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of video
-- ----------------------------
BEGIN;
INSERT INTO `video` VALUES (3, 'kusuma', 'film eksklusif kusuma ', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/GOEf6IaCnjU\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>');
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
