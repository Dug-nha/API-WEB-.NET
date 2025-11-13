create database if not exists Management_movie;
use Management_movie;
create table if not exists Movie(
id_movie int auto_increment primary key,
movie_name varchar(255),
movie_number varchar(255) not null,
duration float,
year_of_release year,
performer varchar(500),
age int,
director varchar(155),
link_movie varchar(500),
link_trailer varchar(500),
poster blob,
content text,
descriptions text,
img mediumblob,
country varchar(200),
category varchar(500)
);
create table if not exists Users(
id_user int auto_increment primary key,
user_name varchar(255) not null,
passwork varchar(155) not null,
account_type varchar(155),
age int,
phone_number varchar(11) not null,
email varchar(25)
);
create table if not exists Category(
id_category int auto_increment primary key,
name_category varchar(200)
);
create table if not exists Country(
id_country int auto_increment primary key,
name_country varchar(300)
);
drop table Users;
drop table Country;
drop table Movie;
insert into Movie(
    movie_name, movie_number, duration, year_of_release, performer, age, director, 
    link_movie, link_trailer, content, descriptions, img, country, category
)
values (
    "The Spider Man", "M0001", 1.36, 2012, 
    "Andrew Garfield, Emma Stone", 13, "Marc Webb", 
    "", "", 
    "Người Nhện Siêu Đẳng 1 là phần mở đầu của loạt phim Spider-Man mới do đạo diễn Marc Webb thực hiện", 
    "Tính cách Peter Parker được xây dựng khác biệt: không còn là cậu bé nhút nhát mà trở nên nghịch ngợm, thông minh và có chiều sâu cảm xúc hơn",
    "", "Mỹ", "Hành động, viễn tưởng"
),
(
  "Pirates of the Caribbean 1", "MV002", 1.6, 2003,
  " Johnny Depp, Orlando Bloom, Geoffrey Rush ", 22, "Gore Verbinsk","", "",
  "Phần 1 của loạt phim Cướp Biển Vùng Caribe có tên là Pirates of the Caribbean: The Curse of the Black Pearl, ra mắt năm 2003. Đây là phần mở đầu đầy hấp dẫn, đưa khán giả vào thế giới huyền bí của cướp biển, lời nguyền và những cuộc phiêu lưu kỳ ảo.",
  "Bối cảnh: Thế kỷ 18 tại vùng biển Caribe, nơi những tên cướp biển hoành hành và truyền thuyết về tàu Ngọc Trai Đen (Black Pearl) lan truyền khắp nơi.", "",
  "Mỹ", "Phưu lưu, Viễn tưởng"
),
(
  "Alice in Wonderland", "MV003", 1.02, 2010,
  "Mia Wasikowska,Johnny Depp,Helena Bonham Carter, Anne Hathaway ", 13, "Tim Burton", "","",
  "Alice ở Xứ Sở Thần Tiên là một tác phẩm kinh điển được chuyển thể nhiều lần, nổi bật nhất là phiên bản điện ảnh năm 2010 do Tim Burton đạo diễn, và sắp tới là bản nhạc kịch mới do Sabrina Carpenter thủ vai chính.",
  "Là một trong những câu chuyện cổ tích kỳ ảo nổi tiếng nhất thế giới, với hình ảnh chú thỏ trắng, bàn tiệc trà điên loạn, và những nhân vật kỳ quái mang tính biểu tượng.", "",
  "Mỹ", "Nhạc kịch, "
),
(
  "Harry Potter", "MV004", 1.5, 2001,
  "Daniel Radcliffe, Rupert Grint, Emma Watson, Alan Rickman ", 24, "Chris Columbus", "", "",
  "là loạt tiểu thuyết và phim kỳ ảo nổi tiếng toàn cầu của nhà văn J.K. Rowling, xoay quanh hành trình của cậu bé phù thủy Harry Potter tại trường Hogwarts và cuộc chiến chống lại chúa tể hắc ám Voldemort.",
  "Thế giới phù thủy được xây dựng chi tiết với các trường học, môn học, sinh vật huyền bí, và hệ thống pháp luật riêng.","",
  "Mỹ", "Phưu lưu, Huyền bí"
),
(
  "One Piece", "MV005", 1.8, 2023,
  "	Iñaki Godoy, Mackenyu, Emily Rudd", 2, "Steven Maeda","", "",
  "Monkey D. Luffy (Iñaki Godoy) bắt đầu hành trình trở thành Vua Hải Tặc.",
  "Bản live-action One Piece của Netflix ra mắt ngày 31/8/2023 đã nhận được nhiều lời khen từ cả fan lẫn giới phê bình, được đánh giá là một trong những chuyển thể anime thành công nhất.", "",
  "Nam Phi", "Hành đông, Phiêu lưu"
);
select * from Movie;
select * from Movie where movie_name = "The Spider Man , => truy xuất từng dòng 1";
delete from Movie where id_movie = 1;
insert into Users(
 user_name, passwork, account_type, age, phone_number, email
)
values
("Dũng Nha", "Dug.06012003", "Admin", 22, "0329843820", "had72691@gmail.com"),
("Việt DK", "018721Dk", "PowerUser", 29, "055345279", "dk2704@gmail.com"),
("Lâm TH", "LAM05092001", "ReadOnly", 24, "0357269445", "lamth@gmail.com"),
("Linh NT", "Lynn.09052003@", "ReadOnly", 22, "0372756674", "lynn0905@gmail.com"),
("Đạt Dut", "Dat050520023@", "User", 22, "0345311496", "Dut0550@gmail.com");
select * from Users;
