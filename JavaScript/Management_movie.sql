create database if not exists Manage_movie;
use Manage_movie;
create table if not exists Movie(
id_movie varchar(50) not null primary key,
movie_name varchar(255) not null,
duration float,
year_of_release year,
age int,
category varchar(200),
director varchar(155),
performer varchar(500),
country varchar(155),
poster blob,
img mediumblob,
content text,
descriptions text,
link_movie text,
link_trailer text
);
insert into Movie(
  id_movie, movie_name, duration, year_of_release, age, category, director, performer, country, poster, img, content, descriptions, link_movie, link_trailer
)
values
();
drop table Movie;
create table Users(
id_user int auto_increment primary key,
user_name varchar(150) not null,
passwords varchar(155) not null,
account_type varchar(100),
age int,
phone_number varchar(15) not null,
email varchar(25) not null,
id_movie varchar(255),
foreign key (id_movie) references Movie(id_movie)
);
drop table Users;
insert into Users(
   user_name, passwords, account_type, age, phone_number, email, id_movie
)
values
();
create table Category(
id int auto_increment primary key,
name_category varchar(455),
id_movie varchar(200),
foreign key (id_movie) references Movie(id_movie)
);
insert into Category(
  name_category, id_movie
)
values
();
create table Country(
id int auto_increment primary key,
name_country varchar(200),
id_movie varchar(200),
foreign key (id_movie) references Movie(id_movie)
);
insert into Country(
 name_country, id_movie
)
values
();

