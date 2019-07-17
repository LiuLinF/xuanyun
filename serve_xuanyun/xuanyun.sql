set names utf8;
drop database if exists xy;
create database xy charset=utf8;
use xy;
#1.用户信息表（xy_user）

create table xy_user(
	uid int primary key not null auto_increment,  #编号
	uname varchar(32),  #用户名
	upwd varchar(32),   #密码
	email varchar(64),  #邮箱
	phone varchar(16) not null unique,   #手机号
	user_name varchar(32)   #真实姓名
);
#用户信息表（xy_user）添加数据
insert into xy_user values
	(1,"mm4521","123456","123456@qq.com",1234567890,"狗蛋"),
	(null,"SIVANT","123456","123456@qq.com",123456789,"狗蛋"),
	(null,"T.R.Y空间设计工作室","123456","123456@qq.com",123456787,"狗蛋"),
	(null,"无霜","123456","123456@qq.com",12345678970,"狗蛋"),
	(null,"柒上设计表现机构","123456","123456@qq.com",12345567890,"狗蛋"),
	(null,"本末设计表现","123456","123456@qq.com",12345687890,"狗蛋"),
	(null,"蒙流纯牛奶","123456","123456@qq.com",12345677890,"狗蛋");

#2.模板类型表（xy_template_family）
create table xy_template_family(
	fid int primary key auto_increment,  #编号
	template_type varchar(32)  #模板类型
);
#模板类别表（xy_template_family）插入数据
insert into xy_template_family values
	(1,"VIP模型"),
	(null,"收费模型"),
	(null,"免费模型"),
	(null,"家装别墅"),
	(null,"单体模型"),
	(null,"酒店餐饮"),
	(null,"商业空间"),
	(null,"公共空间"),
	(null,"办公空间"),
	(null,"休闲娱乐"),
	(null,"室外建筑");

#3.商品详情图表 （xy_template_pic）
create table xy_template_pic(
	pid int primary key auto_increment,  #编号
	template_title varchar(32),  #模板标题
	product_id varchar(32) unique,  #商品ID 唯一 
	copyright varchar(32),  #版权 
	shelf_time bigint,   #上架时间
	p_lg varchar(128),  #商品详情图 大图
	collect int,   #收藏量
	downloads int, #下载量
	view int,      #观看量
	name varchar(64),  #用户名
	user_pic varchar(128),  #用户头像
	uploading int,   #上传作品量
	spec varchar(64)  #详细说明
);
#商品详情图表 （xy_template_pic） 插入数据
insert into xy_template_pic values
	(1,"北欧客餐厅全景模型","ID：M0000154542","版权所属 :  炫我科技","2019-06-14 09:00:03","http://127.0.0.1:3000/img/index/commodity_details/1.jpg",10,12,13,"mm4521","http://127.0.0.1:3000/img/index/product_vip/user_pic/getHeader.png",99,"暂无"),
	(null,"现代客餐厅全景模型","ID：M00001536391","版权所属 :  炫我科技","2019-06-12 09:00:17","http://127.0.0.1:3000/img/index/	commodity_details/1.jpg",107,14,13,"柒上设计表现机构","http://127.0.0.1:3000/img/index/product_vip/user_pic/ranshang.png",999,"暂无"),
	(null,"现代卧室全景模型","ID：M0000154591","版权所属 :  炫我科技","2019-06-15 09:00:34","http://127.0.0.1:3000/img/index/commodity_details/1.jpg",107,14,13,"SIVANT","http://127.0.0.1:3000/img/index/product_vip/user_pic/SIVANT.png",999,"暂无"),
	(null,"现代轻奢客厅餐厅模型","ID：M0000154457","版权所属 :  炫我科技","2019-06-13 15:15:17","http://127.0.0.1:3000/img/index/commodity_details/1.jpg",107,14,13,"蒙流纯牛奶","http://127.0.0.1:3000/img/index/product_vip/user_pic/SIVANT.png",999,"暂无");

#4.轮播图表 （xy_carousel）
create table xy_carousel(
	cid int primary key auto_increment,
	c_img varchar(128),
	img_title varchar(64)
);
#轮播图表 （xy_carousel） 插入数据
insert into xy_carousel values
	(1,"http://127.0.0.1:3000/img/index/carousel/1.jpg","合作伙伴持续征集中"),
	(null,"http://127.0.0.1:3000/img/index/carousel/2.jpg","云模型VIP"),
	(null,"http://127.0.0.1:3000/img/index/carousel/3.jpg","北欧客餐厅全景模型"),
	(null,"http://127.0.0.1:3000/img/index/carousel/4.jpg","现代沙发组合模型"),
	(null,"http://127.0.0.1:3000/img/index/carousel/5.jpg","中式园林规划模型"),
	(null,"http://127.0.0.1:3000/img/index/carousel/6.jpg","现代客餐厅全景模型");

#5.首页商品栏目表_VIP （xy_index_product_vip）
create table xy_index_product_vip(
	sid int primary key auto_increment, #编号
	name varchar(64),  #用户名
	user_pic varchar(128),  #用户头像
	product_pic varchar(128),  #商品图片
	cardPrice varchar(128),   #会员卡价格
	sort smallint,  #排序
	fid int  #商品类型
); 
#首页商品栏目表_VIP 插入数据
insert into xy_index_product_vip values
(1,"mm4521","http://127.0.0.1:3000/img/index/product_vip/user_pic/getHeader.png","http://127.0.0.1:3000/img/index/product_vip/product_pic/vip1.jpg","VIP",1,1),
(null,"SIVANT","http://127.0.0.1:3000/img/index/product_vip/user_pic/SIVANT.png","http://127.0.0.1:3000/img/index/product_vip/product_pic/vip2.jpg","VIP",2,1),
(null,"T.R.Y空间设计工作室","http://127.0.0.1:3000/img/index/product_vip/user_pic/TRY.png","http://127.0.0.1:3000/img/index/product_vip/product_pic/vip3.jpg","VIP",3,1),
(null,"无霜","http://127.0.0.1:3000/img/index/product_vip/user_pic/wushuang.png","http://127.0.0.1:3000/img/index/product_vip/product_pic/vip4.jpg","VIP",4,1),
(null,"柒上设计表现机构","http://127.0.0.1:3000/img/index/product_vip/user_pic/ranshang.png","http://127.0.0.1:3000/img/index/product_vip/product_pic/vip5.jpg","VIP",5,1),
(null,"T.R.Y空间设计工作室","http://127.0.0.1:3000/img/index/product_vip/user_pic/TRY.png","http://127.0.0.1:3000/img/index/product_vip/product_pic/vip6.jpg","VIP",6,1),
(null,"本末设计表现","http://127.0.0.1:3000/img/index/product_vip/user_pic/benmo.png","http://127.0.0.1:3000/img/index/product_vip/product_pic/vip7.jpg","VIP",7,1),
(null,"T.R.Y空间设计工作室","http://127.0.0.1:3000/img/index/product_vip/user_pic/TRY.png","http://127.0.0.1:3000/img/index/product_vip/product_pic/vip8.jpg","VIP",8,1);

#6.首页商品栏目表_收费 （xy_index_product_charge）
create table xy_index_product_charge(
	sid int primary key auto_increment, #编号
	name varchar(64),  #用户名
	user_pic varchar(128),  #用户头像
	product_pic varchar(128),  #商品图片
	Price_img varchar(128),   #价格图片
	price DECIMAL(10,1),  #价格
	sort smallint,  #排序
	fid int  #商品类型
); 
#首页商品栏目表_收费 插入数据
insert into xy_index_product_charge values
(1,"mm4521","http://127.0.0.1:3000/img/index/product_vip/user_pic/getHeader.png","http://127.0.0.1:3000/img/index/product_vip/product_pic/vip1.jpg","http://127.0.0.1:3000/img/index/product_vip/product_pic/jindou.png","2.8",1,2),
(null,"SIVANT","http://127.0.0.1:3000/img/index/product_vip/user_pic/SIVANT.png","http://127.0.0.1:3000/img/index/product_vip/product_pic/vip2.jpg","http://127.0.0.1:3000/img/index/product_vip/product_pic/jindou.png","2.8",2,2),
(null,"T.R.Y空间设计工作室","http://127.0.0.1:3000/img/index/product_vip/user_pic/TRY.png","http://127.0.0.1:3000/img/index/product_vip/product_pic/vip3.jpg","http://127.0.0.1:3000/img/index/product_vip/product_pic/jindou.png","2.8",3,2),
(null,"无霜","http://127.0.0.1:3000/img/index/product_vip/user_pic/wushuang","http://127.0.0.1:3000/img/index/product_vip/product_pic/vip4.jpg","http://127.0.0.1:3000/img/index/product_vip/product_pic/jindou.png","2.8",4,2),
(null,"柒上设计表现机构","http://127.0.0.1:3000/img/index/product_vip/user_pic/ranshang.png","http://127.0.0.1:3000/img/index/product_vip/product_pic/vip5.jpg","http://127.0.0.1:3000/img/index/product_vip/product_pic/jindou.png","2.8",5,2),
(null,"T.R.Y空间设计工作室","http://127.0.0.1:3000/img/index/product_vip/user_pic/TRY.png","http://127.0.0.1:3000/img/index/product_vip/product_pic/vip6.jpg","http://127.0.0.1:3000/img/index/product_vip/product_pic/jindou.png","2.8",6,2),
(null,"本末设计表现","http://127.0.0.1:3000/img/index/product_vip/user_pic/benmo.png","http://127.0.0.1:3000/img/index/product_vip/product_pic/vip7.jpg","http://127.0.0.1:3000/img/index/product_vip/product_pic/jindou.png","2.8",7,2),
(null,"T.R.Y空间设计工作室","http://127.0.0.1:3000/img/index/product_vip/user_pic/TRY.png","http://127.0.0.1:3000/img/index/product_vip/product_pic/vip8.jpg","http://127.0.0.1:3000/img/index/product_vip/product_pic/jindou.png","2.8",8,2);

#7.首页商品栏目表_免费 （xy_index_productFree）
create table xy_index_productFree(
	sid int primary key auto_increment, #编号
	name varchar(64),  #用户名
	user_pic varchar(128),  #用户头像
	product_pic varchar(128),  #商品图片
	price DECIMAL(10,1),  #价格
	sort smallint,  #排序
	fid int  #商品类型
); 
#首页商品栏目表_免费 插入数据
insert into xy_index_productFree values
(1,"mm4521","http://127.0.0.1:3000/img/index/product_vip/user_pic/getHeader.png","http://127.0.0.1:3000/img/index/product_vip/product_pic/vip1.jpg","免费",1,3),
(null,"SIVANT","http://127.0.0.1:3000/img/index/product_vip/user_pic/SIVANT.png","http://127.0.0.1:3000/img/index/product_vip/product_pic/vip2.jpg","免费",2,3),
(null,"T.R.Y空间设计工作室","http://127.0.0.1:3000/img/index/product_vip/user_pic/TRY.png","http://127.0.0.1:3000/img/index/product_vip/product_pic/vip3.jpg","免费",3,3),
(null,"无霜","http://127.0.0.1:3000/img/index/product_vip/user_pic/wushuang","http://127.0.0.1:3000/img/index/product_vip/product_pic/vip4.jpg","免费",4,3),
(null,"柒上设计表现机构","http://127.0.0.1:3000/img/index/product_vip/user_pic/ranshang.png","http://127.0.0.1:3000/img/index/product_vip/product_pic/vip5.jpg","免费",5,3),
(null,"T.R.Y空间设计工作室","http://127.0.0.1:3000/img/index/product_vip/user_pic/TRY.png","http://127.0.0.1:3000/img/index/product_vip/product_pic/vip6.jpg","免费",6,3),
(null,"本末设计表现","http://127.0.0.1:3000/img/index/product_vip/user_pic/benmo.png","http://127.0.0.1:3000/img/index/product_vip/product_pic/vip7.jpg","免费",7,3),
(null,"T.R.Y空间设计工作室","http://127.0.0.1:3000/img/index/product_vip/user_pic/TRY.png","http://127.0.0.1:3000/img/index/product_vip/product_pic/vip8.jpg","免费",8,3);

#8.首页商品栏目表_别墅 （xy_index_product_villa）
create table xy_index_product_villa(
	sid int primary key auto_increment, #编号
	name varchar(64),  #用户名
	user_pic varchar(128),  #用户头像
	product_pic varchar(128),  #商品图片
	Price_img varchar(128),   #价格图片
	price DECIMAL(10,1),  #价格
	sort smallint,  #排序
	fid int  #商品类型
); 
#首页商品栏目表_别墅 插入数据
insert into xy_index_product_villa values
(1,"mm4521","http://127.0.0.1:3000/img/index/product_vip/user_pic/getHeader.png","http://127.0.0.1:3000/img/index/product_vip/product_pic/vip1.jpg",null,"VIP",1,4),
(null,"SIVANT","http://127.0.0.1:3000/img/index/product_vip/user_pic/SIVANT.png","http://127.0.0.1:3000/img/index/product_vip/product_pic/vip2.jpg",null,"VIP",2,4),
(null,"T.R.Y空间设计工作室","http://127.0.0.1:3000/img/index/product_vip/user_pic/TRY.png","http://127.0.0.1:3000/img/index/product_vip/product_pic/vip3.jpg",null,"VIP",3,4),
(null,"无霜","http://127.0.0.1:3000/img/index/product_vip/user_pic/wushuang","http://127.0.0.1:3000/img/index/product_vip/product_pic/vip4.jpg",null,"VIP",4,4),
(null,"柒上设计表现机构","http://127.0.0.1:3000/img/index/product_vip/user_pic/ranshang.png","http://127.0.0.1:3000/img/index/product_vip/product_pic/vip5.jpg","http://127.0.0.1:3000/img/index/product_vip/product_pic/jindou.png","2.8",5,4),
(null,"T.R.Y空间设计工作室","http://127.0.0.1:3000/img/index/product_vip/user_pic/TRY.png","http://127.0.0.1:3000/img/index/product_vip/product_pic/vip6.jpg",null,"VIP",6,4),
(null,"本末设计表现","http://127.0.0.1:3000/img/index/product_vip/user_pic/benmo.png","http://127.0.0.1:3000/img/index/product_vip/product_pic/vip7.jpg",null,"VIP",7,4),
(null,"T.R.Y空间设计工作室","http://127.0.0.1:3000/img/index/product_vip/user_pic/TRY.png","http://127.0.0.1:3000/img/index/product_vip/product_pic/vip8.jpg","http://127.0.0.1:3000/img/index/product_vip/product_pic/jindou.png","2.8",8,4);

#9.首页商品栏目表_单体模型 （xy_index_monomer_model）
create table xy_index_monomer_model(
	sid int primary key auto_increment, #编号
	name varchar(64),  #用户名
	user_pic varchar(128),  #用户头像
	product_pic varchar(128),  #商品图片
	Price_img varchar(128),   #价格图片
	price DECIMAL(10,1),  #价格
	sort smallint,  #排序
	fid int  #商品类型
); 
#首页商品栏目表_单体模型 插入数据
insert into xy_index_monomer_model values
(1,"mm4521","http://127.0.0.1:3000/img/index/product_vip/user_pic/getHeader.png","http://127.0.0.1:3000/img/index/product_vip/product_pic/vip1.jpg",null,"VIP",1,5),
(null,"SIVANT","http://127.0.0.1:3000/img/index/product_vip/user_pic/SIVANT.png","http://127.0.0.1:3000/img/index/product_vip/product_pic/vip2.jpg",null,"VIP",2,5),
(null,"T.R.Y空间设计工作室","http://127.0.0.1:3000/img/index/product_vip/user_pic/TRY.png","http://127.0.0.1:3000/img/index/product_vip/product_pic/vip3.jpg",null,"VIP",3,5),
(null,"无霜","http://127.0.0.1:3000/img/index/product_vip/user_pic/wushuang","http://127.0.0.1:3000/img/index/product_vip/product_pic/vip4.jpg",null,"VIP",4,5),
(null,"柒上设计表现机构","http://127.0.0.1:3000/img/index/product_vip/user_pic/ranshang.png","http://127.0.0.1:3000/img/index/product_vip/product_pic/vip5.jpg",null,"VIP",5,5),
(null,"T.R.Y空间设计工作室","http://127.0.0.1:3000/img/index/product_vip/user_pic/TRY.png","http://127.0.0.1:3000/img/index/product_vip/product_pic/vip6.jpg",null,"VIP",6,5),
(null,"本末设计表现","http://127.0.0.1:3000/img/index/product_vip/user_pic/benmo.png","http://127.0.0.1:3000/img/index/product_vip/product_pic/vip7.jpg",null,"VIP",7,5),
(null,"T.R.Y空间设计工作室","http://127.0.0.1:3000/img/index/product_vip/user_pic/TRY.png","http://127.0.0.1:3000/img/index/product_vip/product_pic/vip8.jpg",null,"VIP",8,5);

#10.首页商品栏目表_酒店餐饮 （xy_index_catering ）
create table xy_index_catering(
	sid int primary key auto_increment, #编号
	name varchar(64),  #用户名
	user_pic varchar(128),  #用户头像
	product_pic varchar(128),  #商品图片
	Price_img varchar(128),   #价格图片
	price DECIMAL(10,1),  #价格
	sort smallint,  #排序
	fid int  #商品类型
); 
#首页商品栏目表_酒店餐饮 插入数据
insert into xy_index_catering values
(1,"mm4521","http://127.0.0.1:3000/img/index/product_vip/user_pic/getHeader.png","http://127.0.0.1:3000/img/index/product_vip/product_pic/vip1.jpg",null,"VIP",1,6),
(null,"SIVANT","http://127.0.0.1:3000/img/index/product_vip/user_pic/SIVANT.png","http://127.0.0.1:3000/img/index/product_vip/product_pic/vip2.jpg","http://127.0.0.1:3000/img/index/product_vip/product_pic/jindou.png","2.8",2,6),
(null,"T.R.Y空间设计工作室","http://127.0.0.1:3000/img/index/product_vip/user_pic/TRY.png","http://127.0.0.1:3000/img/index/product_vip/product_pic/vip3.jpg",null,"VIP",3,6),
(null,"无霜","http://127.0.0.1:3000/img/index/product_vip/user_pic/wushuang","http://127.0.0.1:3000/img/index/product_vip/product_pic/vip4.jpg",null,"VIP",4,6),
(null,"柒上设计表现机构","http://127.0.0.1:3000/img/index/product_vip/user_pic/ranshang.png","http://127.0.0.1:3000/img/index/product_vip/product_pic/vip5.jpg",null,"VIP",5,6),
(null,"T.R.Y空间设计工作室","http://127.0.0.1:3000/img/index/product_vip/user_pic/TRY.png","http://127.0.0.1:3000/img/index/product_vip/product_pic/vip6.jpg","http://127.0.0.1:3000/img/index/product_vip/product_pic/jindou.png",6,6,6),
(null,"本末设计表现","http://127.0.0.1:3000/img/index/product_vip/user_pic/benmo.png","http://127.0.0.1:3000/img/index/product_vip/product_pic/vip7.jpg",null,"VIP",7,6),
(null,"T.R.Y空间设计工作室","http://127.0.0.1:3000/img/index/product_vip/user_pic/TRY.png","http://127.0.0.1:3000/img/index/product_vip/product_pic/vip8.jpg",null,"VIP",8,6);

#11.首页商品栏目表_商业空间 （xy_index_commercial_space ）
create table xy_index_commercial_space(
	sid int primary key auto_increment, #编号
	name varchar(64),  #用户名
	user_pic varchar(128),  #用户头像
	product_pic varchar(128),  #商品图片
	Price_img varchar(128),   #价格图片
	price DECIMAL(10,1),  #价格
	sort smallint,  #排序
	fid int  #商品类型
); 
#首页商品栏目表_商业空间 插入数据
insert into xy_index_commercial_space values
(1,"mm4521","http://127.0.0.1:3000/img/index/product_vip/user_pic/getHeader.png","http://127.0.0.1:3000/img/index/product_vip/product_pic/vip1.jpg","http://127.0.0.1:3000/img/index/product_vip/product_pic/jindou.png","2.8",1,7),
(null,"SIVANT","http://127.0.0.1:3000/img/index/product_vip/user_pic/SIVANT.png","http://127.0.0.1:3000/img/index/product_vip/product_pic/vip2.jpg","http://127.0.0.1:3000/img/index/product_vip/product_pic/jindou.png","2.8",2,7),
(null,"T.R.Y空间设计工作室","http://127.0.0.1:3000/img/index/product_vip/user_pic/TRY.png","http://127.0.0.1:3000/img/index/product_vip/product_pic/vip3.jpg","http://127.0.0.1:3000/img/index/product_vip/product_pic/jindou.png","2.8",3,7),
(null,"无霜","http://127.0.0.1:3000/img/index/product_vip/user_pic/wushuang","http://127.0.0.1:3000/img/index/product_vip/product_pic/vip4.jpg",null,"VIP",4,7),
(null,"柒上设计表现机构","http://127.0.0.1:3000/img/index/product_vip/user_pic/ranshang.png","http://127.0.0.1:3000/img/index/product_vip/product_pic/vip5.jpg",null,"VIP",5,7),
(null,"T.R.Y空间设计工作室","http://127.0.0.1:3000/img/index/product_vip/user_pic/TRY.png","http://127.0.0.1:3000/img/index/product_vip/product_pic/vip6.jpg","http://127.0.0.1:3000/img/index/product_vip/product_pic/jindou.png",6,6,7),
(null,"本末设计表现","http://127.0.0.1:3000/img/index/product_vip/user_pic/benmo.png","http://127.0.0.1:3000/img/index/product_vip/product_pic/vip7.jpg",null,"VIP",7,7),
(null,"T.R.Y空间设计工作室","http://127.0.0.1:3000/img/index/product_vip/user_pic/TRY.png","http://127.0.0.1:3000/img/index/product_vip/product_pic/vip8.jpg",null,"VIP",8,7);

#12.首页商品栏目表_公共空间 （xy_index_public_space ）
create table xy_index_public_space(
	sid int primary key auto_increment, #编号
	name varchar(64),  #用户名
	user_pic varchar(128),  #用户头像
	product_pic varchar(128),  #商品图片
	Price_img varchar(128),   #价格图片
	price DECIMAL(10,1),  #价格
	sort smallint,  #排序
	fid int  #商品类型
); 
#首页商品栏目表_公共空间 插入数据
insert into xy_index_public_space values
(1,"mm4521","http://127.0.0.1:3000/img/index/product_vip/user_pic/getHeader.png","http://127.0.0.1:3000/img/index/product_vip/product_pic/vip1.jpg",null,"VIP",1,8),
(null,"SIVANT","http://127.0.0.1:3000/img/index/product_vip/user_pic/SIVANT.png","http://127.0.0.1:3000/img/index/product_vip/product_pic/vip2.jpg","http://127.0.0.1:3000/img/index/product_vip/product_pic/jindou.png","2.8",2,8),
(null,"T.R.Y空间设计工作室","http://127.0.0.1:3000/img/index/product_vip/user_pic/TRY.png","http://127.0.0.1:3000/img/index/product_vip/product_pic/vip3.jpg","http://127.0.0.1:3000/img/index/product_vip/product_pic/jindou.png","2.8",3,8),
(null,"无霜","http://127.0.0.1:3000/img/index/product_vip/user_pic/wushuang","http://127.0.0.1:3000/img/index/product_vip/product_pic/vip4.jpg",null,"VIP",4,8),
(null,"柒上设计表现机构","http://127.0.0.1:3000/img/index/product_vip/user_pic/ranshang.png","http://127.0.0.1:3000/img/index/product_vip/product_pic/vip5.jpg",null,"VIP",5,8),
(null,"T.R.Y空间设计工作室","http://127.0.0.1:3000/img/index/product_vip/user_pic/TRY.png","http://127.0.0.1:3000/img/index/product_vip/product_pic/vip6.jpg","http://127.0.0.1:3000/img/index/product_vip/product_pic/jindou.png",6,6,8),
(null,"本末设计表现","http://127.0.0.1:3000/img/index/product_vip/user_pic/benmo.png","http://127.0.0.1:3000/img/index/product_vip/product_pic/vip7.jpg","http://127.0.0.1:3000/img/index/product_vip/product_pic/jindou.png","2.8",7,8),
(null,"T.R.Y空间设计工作室","http://127.0.0.1:3000/img/index/product_vip/user_pic/TRY.png","http://127.0.0.1:3000/img/index/product_vip/product_pic/vip8.jpg","http://127.0.0.1:3000/img/index/product_vip/product_pic/jindou.png","2.8",8,8);

#13.首页商品栏目表_公共空间 （xy_index_office_space ）
create table xy_index_office_space(
	sid int primary key auto_increment, #编号
	name varchar(64),  #用户名
	user_pic varchar(128),  #用户头像
	product_pic varchar(128),  #商品图片
	Price_img varchar(128),   #价格图片
	price DECIMAL(10,1),  #价格
	sort smallint,  #排序
	fid int  #商品类型
); 
#首页商品栏目表_公共空间 插入数据
insert into xy_index_office_space values
(1,"mm4521","http://127.0.0.1:3000/img/index/product_vip/user_pic/getHeader.png","http://127.0.0.1:3000/img/index/product_vip/product_pic/vip1.jpg",null,"VIP",1,9),
(null,"SIVANT","http://127.0.0.1:3000/img/index/product_vip/user_pic/SIVANT.png","http://127.0.0.1:3000/img/index/product_vip/product_pic/vip2.jpg","http://127.0.0.1:3000/img/index/product_vip/product_pic/jindou.png","2.8",2,9),
(null,"T.R.Y空间设计工作室","http://127.0.0.1:3000/img/index/product_vip/user_pic/TRY.png","http://127.0.0.1:3000/img/index/product_vip/product_pic/vip3.jpg","http://127.0.0.1:3000/img/index/product_vip/product_pic/jindou.png","2.8",3,9),
(null,"无霜","http://127.0.0.1:3000/img/index/product_vip/user_pic/wushuang","http://127.0.0.1:3000/img/index/product_vip/product_pic/vip4.jpg",null,"VIP",4,9),
(null,"柒上设计表现机构","http://127.0.0.1:3000/img/index/product_vip/user_pic/ranshang.png","http://127.0.0.1:3000/img/index/product_vip/product_pic/vip5.jpg",null,"VIP",5,9),
(null,"T.R.Y空间设计工作室","http://127.0.0.1:3000/img/index/product_vip/user_pic/TRY.png","http://127.0.0.1:3000/img/index/product_vip/product_pic/vip6.jpg","http://127.0.0.1:3000/img/index/product_vip/product_pic/jindou.png",6,6,9),
(null,"本末设计表现","http://127.0.0.1:3000/img/index/product_vip/user_pic/benmo.png","http://127.0.0.1:3000/img/index/product_vip/product_pic/vip7.jpg","http://127.0.0.1:3000/img/index/p