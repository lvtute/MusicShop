/*
Navicat MySQL Data Transfer

Source Server         : musicshop
Source Server Version : 50051
Source Host           : localhost:3306
Source Database       : musicshop

Target Server Type    : MYSQL
Target Server Version : 50051
File Encoding         : 65001

Date: 2017-03-28 15:07:09
*/
create database musicshop;
use musicshop;
SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for bill
-- ----------------------------
DROP TABLE IF EXISTS `bill`;
CREATE TABLE `bill` (
`bill_id`  bigint(20) NOT NULL ,
`user_id`  bigint(20) NULL DEFAULT NULL ,
`total`  decimal(10,0) NULL DEFAULT NULL ,
`payment`  varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL ,
`address`  longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL ,
`date`  timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP ,
`name`  varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL ,
`phone`  varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL ,
PRIMARY KEY (`bill_id`)
)
ENGINE=MyISAM
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_unicode_ci

;

-- ----------------------------
-- Records of bill
-- ----------------------------
BEGIN;
INSERT INTO `bill` VALUES ('1488468815884', '1', '9000000', 'Bank transfer', '25 Nguyễn Xuân Ôn, P.2, Q.Bình Thạnh', '2017-03-23 21:03:25', null, null), ('1490686629467', '3', '29300000', 'Bank transfer', 'abc', '2017-03-28 14:37:09', 'abc', '0935526224'), ('1490687358000', '1', '20900000', 'Bank transfer', 'tự tìm google nha', '2017-03-28 14:49:18', 'tên gì kệ tui', '0935526224'), ('1490687595700', '3', '3865000', 'Live', 'việt nam, trái đất, hệ mặt trời', '2017-03-28 14:53:15', 'quang siêu cute', '09999999999'), ('1490683071125', '1', '55440000', 'Bank transfer', 'test', '2017-03-28 13:37:51', 'test', '0935526224');
COMMIT;

-- ----------------------------
-- Table structure for bill_detail
-- ----------------------------
DROP TABLE IF EXISTS `bill_detail`;
CREATE TABLE `bill_detail` (
`bill_detail_id`  bigint(20) NOT NULL ,
`bill_id`  bigint(20) NULL DEFAULT NULL ,
`product_id`  bigint(20) NULL DEFAULT NULL ,
`price`  double NULL DEFAULT NULL ,
`quantity`  int(11) NULL DEFAULT NULL ,
PRIMARY KEY (`bill_detail_id`)
)
ENGINE=MyISAM
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_unicode_ci

;

-- ----------------------------
-- Records of bill_detail
-- ----------------------------
BEGIN;
INSERT INTO `bill_detail` VALUES ('0', '1488468815884', '2', '9000000', '1'), ('1490683071143', '1490683071125', '14', '55440000', '1'), ('1490687358050', '1490687358000', '6', '20900000', '1');
COMMIT;

-- ----------------------------
-- Table structure for brand
-- ----------------------------
DROP TABLE IF EXISTS `brand`;
CREATE TABLE `brand` (
`brand_id`  bigint(20) NOT NULL ,
`brand_name`  varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL ,
PRIMARY KEY (`brand_id`)
)
ENGINE=MyISAM
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_unicode_ci

;

-- ----------------------------
-- Records of brand
-- ----------------------------
BEGIN;
INSERT INTO `brand` VALUES ('1', 'Taylor'), ('2', 'Fender'), ('3', 'Takamine'), ('4', 'Epiphone'), ('5', 'Gibson'), ('6', 'Roland'), ('7', 'Casio'), ('8', 'Kawai'), ('1490664585545', 'SViet'), ('9', 'Yamaha'), ('10', 'Suzuki'), ('11', 'Deviser');
COMMIT;

-- ----------------------------
-- Table structure for category
-- ----------------------------
DROP TABLE IF EXISTS `category`;
CREATE TABLE `category` (
`category_id`  bigint(11) NOT NULL AUTO_INCREMENT ,
`category_name`  varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL ,
PRIMARY KEY (`category_id`)
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_unicode_ci
/*!50003 AUTO_INCREMENT=8 */

;

-- ----------------------------
-- Records of category
-- ----------------------------
BEGIN;
INSERT INTO `category` VALUES ('1', 'Guitar Acoustic'), ('2', 'Guitar Bass'), ('3', 'Guitar Classic'), ('4', 'Guitar Electric'), ('5', 'Ukulele'), ('6', 'Piano'), ('7', 'Organ');
COMMIT;

-- ----------------------------
-- Table structure for contact
-- ----------------------------
DROP TABLE IF EXISTS `contact`;
CREATE TABLE `contact` (
`contact_id`  bigint(20) NOT NULL ,
`contact_name`  varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL ,
`contact_web`  varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL ,
`contact_email`  varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL ,
`contact_title`  varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL ,
`contact_message`  longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL ,
`contact_date`  timestamp NULL DEFAULT NULL ,
PRIMARY KEY (`contact_id`)
)
ENGINE=MyISAM
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_unicode_ci

;

-- ----------------------------
-- Records of contact
-- ----------------------------
BEGIN;
INSERT INTO `contact` VALUES ('1490502122133', 'Quang max cute', 'quang.com', 'dangquangkdc@gmail.com', 'Giao diện web', ' Giao diện web cũng được', null), ('1490503630308', 'test', 'test', 'dangquangkdc@gmail.com', 'test', ' test', '2017-03-26 11:47:10');
COMMIT;

-- ----------------------------
-- Table structure for newsletter
-- ----------------------------
DROP TABLE IF EXISTS `newsletter`;
CREATE TABLE `newsletter` (
`newsletter_id`  bigint(20) NOT NULL ,
`newsletter_email`  varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL ,
`date`  timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP ,
PRIMARY KEY (`newsletter_id`)
)
ENGINE=MyISAM
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_unicode_ci

;

-- ----------------------------
-- Records of newsletter
-- ----------------------------
BEGIN;
INSERT INTO `newsletter` VALUES ('1490505766760', 'dangquangkdc@gmail.com', '2017-03-26 12:22:46');
COMMIT;

-- ----------------------------
-- Table structure for product
-- ----------------------------
DROP TABLE IF EXISTS `product`;
CREATE TABLE `product` (
`product_id`  bigint(20) NOT NULL ,
`category_id`  bigint(20) NULL DEFAULT NULL ,
`product_name`  varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL ,
`brand_id`  bigint(20) NULL DEFAULT NULL ,
`product_image`  varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL ,
`product_image_forward`  varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL ,
`product_image_back`  varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL ,
`product_price`  decimal(10,0) NULL DEFAULT NULL ,
`product_description`  longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL ,
PRIMARY KEY (`product_id`)
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_unicode_ci

;

-- ----------------------------
-- Records of product
-- ----------------------------
BEGIN;
INSERT INTO `product` VALUES ('1', '1', 'Guitar Baby Taylor', '1', 'images/pr.jpg', 'images/pr.jpg', 'images/pr1.jpg', '8500000', 'Trong những năm trước, cây đàn Baby Taylor với kích thước ¾ đã làm nên danh mục đàn dành cho du lịch thêm hoàn hảo và hôm nay càng trở nên phổ biến hơn bao giờ hết. Tâm điểm của cây đàn là âm thanh guitar thực thụ và mời gọi sự trải nghiệm chơi đàn. Với gỗ sapele mặt sau và các mặt bên, và mặt top gỗ spruce (hoặc mahogany). Luôn thú vị khi bạn dùng cây đàn này.'), ('2', '1', 'Guitar Fender Stratacoustic', '2', 'images/pr2.jpg', 'images/pr2.jpg', 'images/pr3.jpg', '8150000', 'Fender® Stratacoustic™ có thùng đàn dáng Stratocaster® bắt mắt, thiết kế đầu đàn và cần đàn hình chữ C hoàn hảo cho những tay guitar điện đang tìm kiếm một nhạc cụ đa năng. Những đặc điểm khác gồm preamp  Fishman® với tuner tích hợp, cần đàn hoàn hảo bằng gỗ phong và được lựa chọn qua 2 phiên bản: Black hoặc Walnut Stain'), ('3', '1', 'Guitar Takamine P4DC', '3', 'images/pr4.jpg', 'images/pr4.jpg', 'images/pr5.jpg', '29300000', 'Đàn guitar Takamine là một thương hiệu Guitar của Nhật Bản. Takamine  Janpan được biết đến với các dòng sản phẩm Acoustic Guitar và Classical/ Nylon-string Guitar.'), ('4', '6', 'Piano Kawai K-300', '8', 'images/pr6.jpg', 'images/pr6.jpg', 'images/pr7.jpg', '138000000', 'Piano Kawai K-300: Kế thừa cây đàn upright piano từng đạt giải thưởng cao cấp\r\nPiano Kawai K-300 được chế tạo dựa trên thành công của cây đàn K-3 thế hệ trước từng được vinh dự nhận giải thưởng “Đàn piano cơ của năm” trong 4 năm liên tiếp. K-300 tự hào kế thừa di sản vẻ vang này.'), ('5', '7', 'Organ Casio CTK-3200', '7', 'images/pr8.jpg', 'images/pr8.jpg', 'images/pr9.jpg', '3865000', 'Đàn Organ Casio CTK-3200 mới 100% Chính hãng - Chỉ còn 2.965.000 vnd Rẻ Nhất Thị Trường\r\nĐàn Organ Casio CTK-3200 là một dòng đàn organ giá rẻ dành cho những người mới học và dành cho các cơ sở giáo dục. Organ CTK-3200 có 61 phím cảm âm, 150 điệu mẫu, 110 bài hát mẫu, chức năng sampling (tự dạy học) và bộ máy hiện đại, cây đàn giúp người chơi thể hiện cảm xúc của mình cho mọi người xung quanh. Hệ thống kết nối với CD hay máy nghe nhạc MP3 được cải thiện tối tân. Và những bài nhạc mà bạn ưa thích sẽ được chơi trên bàn phím cảm âm thực thụ và có thể lưu lại được'), ('6', '6', 'Piano Roland FP-30', '6', 'images/pr10.jpg', 'images/pr10.jpg', 'images/pr11.jpg', '20900000', 'Nhẹ nhàng và dễ di chuyển, sản phẩm này rất lý tưởng cho các buổi biểu diễn cũng như các lớp học âm nhạc. Thêm vào đó, nhiều âm thanh vượt trội, được xây dựng  các chức năng thực hành và ghi âm, hỗ trợ  Bluetooth để hoạt động với các ứng dụng âm nhạc phổ biến, Roland FP -30 thực sự cung cấp một trải nghiệm âm nhạc cao cấp.'), ('7', '2', 'FENDER DELUXE ACTIVE', '2', 'images/bass5.jpg', 'images/bass5.jpg', 'images/bass6.jpg', '9910000', 'The Deluxe Active Jazz Bass® V guitar was designed for the working five-string bassist, with classic styling and modern features including an alder body, \"C\"-shaped maple neck with rosewood fretboard, two dual-coil ceramic Noiseless™ five-string Jazz Bass pickups with nickel-plated pole pieces, three-band active EQ with treble, mid and bass boost/cut, four-ply brown shell pickguard and a variety of finishes (see specifications).'), ('8', '2', 'FENDER AMERICAN ELITE', '2', 'images/bass3.jpg', 'images/bass3.jpg', 'images/bass4.jpg', '49430000', 'Packed to the gills with our latest revolutionary innovations, the American Elite Jazz Bass V is an active 5-string bass for the modern bassist who demands cutting-edge tone technology along with timeless style and fast, smooth playing feel.'), ('9', '2', 'Fender AERODYNE™ Jazz', '2', 'images/bass1.jpg', 'images/bass1.jpg', 'images/bass2.jpg', '21080000', 'Những tay chơi bass vượt trội tìm kiếm cây bass nhẹ chơi nhạc tốt với mẫu mã bắt mắt sẽ yêu thích cây guitar Aerodyne™Jazz Bass®. Mẫu Jazz Bass đặc biệt này có biên thân đàn gỗ basswood với biên màu kem khắc phần trên và không có pickguard. Cần đàn gỗ maple có bàn phím gỗ rosewood, đầu đàn cùng màu sơn và dát đốm chỉ mặt bên.'), ('10', '4', 'Gibson ES 175', '5', 'images/bb1.png', 'images/bb1.png', 'images/bb1.png', '63800000', 'Một trong những cây đàn guitar được sử dụng rộng rãi nhất trong nhạc jazz, ES-175 là một cây đàn guitar bán mộc, mặt cong, thân rỗng được trang bị tới hai pick-up humbucking. Độ sâu của thân đàn ES-175 tạo ra các âm thanh dày, sâu mà các nghệ sĩ nhạc jazz yêu thích; còn độ mỏng của cần đàn cho phép chạy hợp âm và solo nhanh hơn. Pick-up ở ngựa đàn (bridge) có thể tạo ra âm thanh mỏng hơn, ít chất jazz hơn, nhờ đó, và ES-175s cũng có thể được sử dụng trong nhạc blues và rock.'), ('11', '4', 'Epiphone Les Paul', '4', 'images/bb.png', 'images/bb.png', 'images/bb.png', '3800000', 'Được thiết kế theo dòng đàn huyền thoại Les Paul Custom 1961. Năm 1961, hầu như bất cứ ai chọn dòng nhạc hard rock, metal lúc bây giờ mới thịnh hành đều yêu quý và muốn sỡ hữu một cây Les Paul Custom. Giờ đây, G-400 Custom đã hồi sinh lại dòng đàn này cho những ai thích sưu tầm hay biểu diễn'), ('12', '4', 'Epiphone Custom Pro Ltd SB', '4', 'images/electric1.png', 'images/electric1.png', 'images/electric1.png', '13400000', 'Được thiết kế theo dòng đàn huyền thoại Les Paul Custom 1961. Năm 1961, hầu như bất cứ ai chọn dòng nhạc hard rock, metal lúc bây giờ mới thịnh hành đều yêu quý và muốn sỡ hữu một cây Les Paul Custom. Giờ đây, G-400 Custom đã hồi sinh lại dòng đàn này cho những ai thích sưu tầm hay biểu diễn'), ('13', '4', 'Electric Guitar Red', '4', 'images/electric2.png', 'images/electric2.png', 'images/electric2.png', '50000000', 'Được thiết kế theo dòng đàn huyền thoại Les Paul Custom 1961. Năm 1961, hầu như bất cứ ai chọn dòng nhạc hard rock, metal lúc bây giờ mới thịnh hành đều yêu quý và muốn sỡ hữu một cây Les Paul Custom. Giờ đây, G-400 Custom đã hồi sinh lại dòng đàn này cho những ai thích sưu tầm hay biểu diễn'), ('14', '6', 'PIANO ROLAND FP-80', '6', 'images/piano4.jpg', 'images/piano4.jpg', 'images/piano5.jpg', '55440000', 'Thời trang và tính di động cao, đàn piano Điện Roland FP-80 mang lại một trải nghiệm âm nhạc phong phú và bổ ích cho những ai yêu thích piano. Công nghệ âm thanh Piano SuperNATURAL nổi tiếng và Ivory Feel-S Keyboard tạo nên cảm hứng và giai điệu đích thực, trong khi đó hệ thống loa đa kênh được trang bị với công nghệ Acoustic Projection của Roland mang lại cho bạn âm thanh lôi cuốn.Với nhiều tính năng nhịp điệu thông minh làm cho nó trở nên đơn giản hơn nhằm tạo ra âm nhạc tuyệt vời, cung cấp sự năng động và mạnh mẽ cho bài biểu diễn của bạn trong thời gian thực. '), ('15', '6', 'PIANO YAMAHA P-115', '9', 'images/piano2.jpg', 'images/piano2.jpg', 'images/piano3.jpg', '15000000', 'Dòng P-115 được hãng Yamaha phát triển từ thành công của những dòng piano điện P –series. Dòng piano này sở hữu nhiều tính năng độc đáo như bàn phím chuẩn GHS (Graded Hammer Standard) - Phím cảm ứng với lực đánh của người chơi; tính năng Pianist Style hỗ trợ người chơi, giúp phần trình diễn trở nên nhiều màu sắc hơn như thể đang chơi song tấu; kết nối ngoài đa dạng.'), ('16', '6', 'PIANO YAMAHA GB1K ', '9', 'images/piano1.jpg', 'images/piano1.jpg', 'images/piano1.jpg', '317000000', 'Đàn piano grand Yamaha GB1K có dáng hình nhỏ gọn cùng mức giá phải chăng sẽ là một lựa chọn lý tưởng nhất, phù hợp cho các địa điểm có không gian hạn chế. GB1K mang đầy đủ âm sắc cộng hưởng, khả năng chơi nhạc của nó có thể sánh ngang bằng các model đàn piano grand có kích thước lớn hơn.'), ('17', '5', 'Suzuki Ukulele SUK-5', '10', 'images/ukulele1.jpg', 'images/ukulele1.jpg', 'images/ukulele1.jpg', '1370000', 'UKULELE SUK-5một cây đàn nổi bật với thiết kế nhỏ gọn, chức năng đơn giản, cây đàn Ukulele được xem là một lựa chọn tuyệt vời cho những người yêu nhạc và thích học đàn.'), ('18', '5', 'DEVISER UKULELE UK-24-30', '11', 'images/ukulele2.jpg', 'images/ukulele2.jpg', 'images/ukulele2.jpg', '870000', 'Ukulele Soprano Deviser UK-24-30 là cây đàn được yêu thích nhất hiện nay, bằng gỗ mahogany, có chiều dài 60cm (24inch), thích hợp với người có bàn tay khá lớn. Dây đàn được làm bằng sợi nilon cao cấp, lỗ thoát âm trang trí bắt mắt.'), ('19', '5', 'DEVISER UKULELE UK-21-20', '11', 'images/ukulele3.jpg', 'images/ukulele2.jpg', 'images/ukulele2.jpg', '520000', 'Đàn Ukulele Soprano Deviser UK-21-20 có chiều dài 53cm (21inch), thích hợp với người mới tập chơi uke, người có bàn tay nhỏ và trẻ em. Soprano là giọng nữ có âm vực cao nhất trong tất cả các loại giọng và dòng đàn uke soprano này cũng vậy. Đây là cây ukulele hoàn hảo cho người mới bắt đầu học ukulele với một ngân sách tiết kiệm tối đa.'), ('20', '3', 'Guitar Takamine H5', '3', 'images/classic1.jpg', 'images/classic1.jpg', 'images/classic1.jpg', '23800000', 'The H5 Hirade concert classic is handcrafted in our pro series facility that has been building precision quality instruments over five decades.\r\n\r\nA sterling example of the luthier’s art, these classical guitars that bear the name of Master Luthier Mass Hirade are still built by hand in our Takamine pro facility in Japan. This guitar features a solid cedar top for warmth and broad dynamic range and a solid rosewood back for excellent projection. These instruments are designed and built to stand beside the finest classical guitars made today.'), ('21', '1', 'Guitar Taylor 314CE', '1', 'images/acoustic1.jpg', 'images/acoustic1.jpg', 'images/acoustic2.jpg', '46100000', 'Cây guitar Taylor 314ce đáp ứng nhiều phong cách chơi nhạc đa nhạc nhờ vào thiết kế body medium-size Grand Aditoritum. Với gỗ Sapele mang lại phản ứng âm sống động, cùng với mặt top gỗ Sitka Spruce, mang lại độ sáng và rõ rang, cung cấp âm sắc dứt khoát.\r\n\r\nÂm sắc từ dây đàn Elixir® HD Light mang lại âm thanh vượt trội ở âm vực cao, âm vực thấp đầy đủ hơn, và độ cân bằng ấm áp. Các chi tiết trang trí bao gồm viền đen, pickquard đen, các họa tiết khảm hình diamond trên fretboard.'), ('22', '7', 'Organ Roland XPS-30', '6', 'images/organ1.jpg', 'images/organ2.jpg', 'images/organ3.jpg', '22660000', 'Keyboard Roland XPS-30 bắt đầu với thiết lập tính năng tuyệt vời của XPS-10 và bổ sung thêm nhiều cải tiến mạnh mẽ mà chắc chắn người chơi sẽ rất yêu thích. Các yếu tố cần thiết như tiếng acoustic và piano điện tốt hơn, thiết lập dạng sóng nội bộ có thể dễ dàng mở rộng với các bộ sưu tập âm thanh miễn phí từ trang website Axial.roland.com của Roland.'), ('23', '1', 'Guitar Taylor 614CE', '1', 'images/tayloracoustic1.jpg', 'images/tayloracoustic1.jpg', 'images/tayloracoustic2.jpg', '83600000', 'Đặc điểm chung Đàn Guitar Taylor 614CE\r\nBắt mắt, âm thanh tuyệt hảo, cây guitar làm từ gỗ như một chỉ huy ấn tượng trên sân khấu. Giai điệu tươi sáng, rõ ràng khiến những cây guitar thuộc series này trở thành sản phẩm ưc thích trong bất kì buổi diễn hay ban nhạc nào, trong khi sự đa dạng về màu sắc và tùy chọn sunburst phục vụ tốt hơn để nâng cao con âm thanh tự nhiên. Những dấu ấn nổi bật khác bao gồm viền trắng sắc nét và cần đàn khảm họa tiết Twisted Oval. Đặc điểm: Hình dạng: Grand Auditorium – hoàn hảo cho mọi mục đích chơi acoustic Khung: Forward Shifted với Relief Rout Loại gỗ: Big Leaf Maple: tươi sang, sắt nét và hoàn mỹ Đường cắt: phong cách Venice: đường cắt phổ biến, cong dịu dàng Điện tử: hệ thống Expression: khuếch trương độ trầm âm thanh acoustic. Các bố trí: 600 Series: các chi tiết, khả năng chơi nhạc và các chi tiết trang trí xác định rõ trong từng series'), ('24', '1', 'Guitar Takamine P7NC', '3', 'images/acoustic5.jpg', 'images/acoustic3.jpg', 'images/acoustic4.jpg', '60420000', 'Built with the performer in mind, the P7NC features Takamine’s proprietary CTP-3 Cool Tube™ preamp system paired with the unique Palathetic™ under-saddle pickup for peerless amplified response. The dual-channel CTP-3 provides low-voltage tube tone, variable from bright and brilliant to thick and warm, three-band EQ with semi-parametric midrange, auxiliary input and volume (for use when a second pickup is added), and an onboard chromatic tuner.');
COMMIT;

-- ----------------------------
-- Table structure for review
-- ----------------------------
DROP TABLE IF EXISTS `review`;
CREATE TABLE `review` (
`review_id`  bigint(20) NOT NULL ,
`product_id`  bigint(20) NULL DEFAULT NULL ,
`review_name`  varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL ,
`review_email`  varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL ,
`review_star`  int(11) NULL DEFAULT NULL ,
`review_message`  longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL ,
PRIMARY KEY (`review_id`)
)
ENGINE=MyISAM
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_unicode_ci

;

-- ----------------------------
-- Records of review
-- ----------------------------
BEGIN;
INSERT INTO `review` VALUES ('1490201148301', '1', 'Quang', 'dangquangkdc@gmail.com', '5', 'The GD100RSCE is a full size acoustic electric guitar specifically engineered for the serious player. Carefully selected tone woods of mahogany and spruce create a sound that is well balanced and articulate, especially for finger pickers. It features a gloss finish and upgraded features traditionally found on guitars costing much more.'), ('1490201320318', '1', 'Quang siêu cute', 'dangquangkdc@gmail.com', '2', ' Sản phẩm cũng được, khá đẹp ^^'), ('1490442620582', '2', 'Quang đẹp trai', 'quangcute@protonmail.com', '4', ' Cây đàn này được rất nhiều chọn để quánh cafe :3'), ('1490444655206', '2', 'Quang cute', 'dangquangkdc@gmail.com', '3', ' Mình test thử thôi chứ ko đánh giá đâu :)))'), ('1490445109940', '2', 'Quang cute', 'dangquangkdc@gmail.com', '3', ' Mình test thử thôi chứ ko đánh giá đâu :)))'), ('1490202226404', '1', 'Quang', 'dangquangkdc@gmail.com', '1', 'The GD100RSCE is a full size acoustic electric guitar specifically engineered for the serious player. '), ('1490445318522', '3', 'Vô danh', 'mail@mail.com', '5', ' Sản phẩm cũng được :3'), ('1490455827023', '4', 'Quang quyền quý', 'dangquangkdc@gmail.com', '4', ' Đàn bao ngon :)))'), ('1490509844040', '24', 'Quang review', 'dangquangkdc@gmail.com', '5', ' Quá sắc sảo :3'), ('1490661562334', '21', 'test', 'dangquangkdc@gmail.com', '2', ' cũng được');
COMMIT;

-- ----------------------------
-- Table structure for useradmin
-- ----------------------------
DROP TABLE IF EXISTS `useradmin`;
CREATE TABLE `useradmin` (
`user_ad_id`  bigint(20) NOT NULL ,
`user_ad_email`  varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL ,
`user_ad_pass`  varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL ,
`user_ad_role`  bit(1) NULL DEFAULT NULL ,
PRIMARY KEY (`user_ad_id`)
)
ENGINE=MyISAM
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_unicode_ci

;

-- ----------------------------
-- Records of useradmin
-- ----------------------------
BEGIN;
INSERT INTO `useradmin` VALUES ('1', 'admin', '123', '');
COMMIT;

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
`user_id`  bigint(20) NOT NULL ,
`user_name`  varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL ,
`user_email`  varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL ,
`user_pass`  varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL ,
`user_role`  bit(1) NULL DEFAULT NULL ,
`user_phone`  varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL ,
PRIMARY KEY (`user_id`)
)
ENGINE=MyISAM
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_unicode_ci

;

-- ----------------------------
-- Records of users
-- ----------------------------
BEGIN;
INSERT INTO `users` VALUES ('1', 'quangcute', 'dangquangkdc', '123', '\0', '0935526224'), ('2', 'quangdeptrai', null, '1234', '', null), ('1488431413954', 'dangquangkdc', null, '123456', '\0', null), ('1488394819194', 'quang', null, '123456', '\0', null), ('1490237767162', 'dangquang', null, '123', '\0', null), ('1490249636892', 'a', 'a', 'a', '\0', 'a'), ('1490249751501', 'b', 'b', 'b', '\0', 'b'), ('1490263429251', 'test', 'a', 'a', '\0', 'a'), ('1490274751771', 'test1', 'dangquangkdc@gmail.com', 'a', '\0', 'a'), ('1490661762866', 'tuanvu', 'tuanvu7795@gmail.com', '123', '\0', '01687841467');
COMMIT;

-- ----------------------------
-- Auto increment value for category
-- ----------------------------
ALTER TABLE `category` AUTO_INCREMENT=8;
