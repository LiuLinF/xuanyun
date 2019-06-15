set names utf8;
drop database if exists xy;
create database xy charset=utf8;
use xy;
#1.用户信息表（xy_user）

create table xy_user(
	uid int primary key not null auto_increment,
	uname varchar(32),
	upwd varchar(32),
	email varchar(64),
	phone varchar(16) not null unique,
	enterprise varchar(32),
	user_name varchar(32),
	render_type int
);
#2.模板类别表（xy_template_family）

create table xy_template_family(
	fid int primary key auto_increment,
	fname varchar(32)
);
#3.模板表（xy_template）

create table xy_template(
	lid int primary key auto_increment,
	product_id int,
	l_img varchar(128),
	luser int,
	title varchar(128),
	subtitle varchar(128),
	price decimal(10,2),
	promise varchar(64),
	template_name varchar(32),
	sold_count int,
	is_onsale boolean
);
#4.商品详情图表 （xy_template_pic）

create table xy_template_pic(
	pid int primary key auto_increment,
	product_id int,
	template_name varchar(32),
	p_lg varchar(128),
	spec varchar(64),
	enshrine int,
	shelf_time bigint,
	copyright varchar(32),
	details VARCHAR(1024)
);
#5.轮播图表 （xy_carousel）

create table xy_carousel(
	cid int primary key auto_increment,
	c_img varchar(128),
	img_title varchar(64),
	img_href varchar(128)
);
#6.首页商品栏目表 （xy_index_product）

create table xy_index_product_vip(
	sid int primary key auto_increment,
	s_title varchar(64),
	s_details varchar(128),
	pic varchar(128),
	price decimal(10,2),
	href varchar(128)
);
