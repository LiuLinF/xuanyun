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
#商品详情图表 （xy_details） 插入数据
insert into xy_details values
	(1,"北欧客餐厅全景模型","ID：M0000154542","版权所属 :  炫我科技","2019-06-14 09:00:03","http://127.0.0.1:3000/img/index/commodity_details/1.jpg",10,12,13,"mm4521","http://127.0.0.1:3000/img/index/product_vip/user_pic/getHeader.png",99,"暂无"),
	(null,"现代客餐厅全景模型","ID：M00001536391","版权所属 :  炫我科技","2019-06-12 09:00:17","http://127.0.0.1:3000/img/index/	commodity_details/1.jpg",107,14,13,"柒上设计表现机构","http://127.0.0.1:3000/img/index/product_vip/user_pic/ranshang.png",999,"暂无"),
	(null,"现代卧室全景模型","ID：M0000154591","版权所属 :  炫我科技","2019-06-15 09:00:34","http://127.0.0.1:3000/img/index/commodity_details/1.jpg",107,14,13,"SIVANT","http://127.0.0.1:3000/img/index/product_vip/user_pic/SIVANT.png",999,"暂无"),
	(null,"现代轻奢客厅餐厅模型","ID：M0000154457","版权所属 :  炫我科技","2019-06-13 15:15:17","http://127.0.0.1:3000/img/index/commodity_details/1.jpg",107,14,13,"蒙流纯牛奶","http://127.0.0.1:3000/img/index/product_vip/user_pic/SIVANT.png",999,"暂无");

#4.轮播图表 （xy_carousel）
create table xy_carousel(
	cid int primary key auto_increment,
	img_url varchar(128),
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

#2.模板类型表（xy_template_family）
create table xy_template_family(
	fid int primary key auto_increment,  #编号
	template_type varchar(32)  #模板类型
);
#模板类别表（xy_template_family）插入数据
insert into xy_template_family values
	(null,"家装别墅"),
	(null,"单体模型"),
	(null,"商业空间"),
	(null,"公共空间"),
	(null,"办公空间"),
	(null,"休闲娱乐"),
	(null,"室外建筑");
#模板小类别表(xy_template_xiaofamily)
create table xy_template_xiaofamily(
	id int primary key auto_increment,  #编号
	template_type varchar(32),  #模板类型
	fid int
);

insert into xy_template_xiaofamily values
(null,"客餐厅",1),
(null,"卧室",1),
(null,"客厅",1),
(null,"书房",1),
(null,"儿童房",1),
(null,"整体场景",1),
(null,"餐厅",1),
(null,"影音厅",1),
(null,"厨房",1),
(null,"茶室",1),
(null,"地下室",1),
(null,"阳台花园",1),
(null,"衣帽间",1),
(null,"卫浴",1),
(null,"玄关过道",1),
(null,"阳台",1),
(null,"其他",1),
(null,"陈设饰品",2),
(null,"柜子/置物架",2),
(null,"桌椅",2),
(null,"沙发",2),
(null,"沙发端景台条案",2),
(null,"装饰画/挂件",2),
(null,"植物盆栽",2),
(null,"茶几边几",2),
(null,"床具",2),
(null,"灯具",2),
(null,"货架/专柜",2),
(null,"电器",2),
(null,"欧式柜件",2),
(null,"人物",2),
(null,"屏风隔断",2),
(null,"五金构件",2),
(null,"服饰/鞋帽",2),
(null,"厨具/卫浴",2),
(null,"抱枕",2),
(null,"窗帘",2),
(null,"健身器材",2),
(null,"背景墙",2),
(null,"其他",2),
(null,"餐饮",3),
(null,"酒店客房/宾馆",3),
(null,"酒店大厅",3),
(null,"包间",3),
(null,"甜品店",3),
(null,"卫生间",3),
(null,"咖啡店",3),
(null,"电梯过道",3),
(null,"茶楼",3),
(null,"专卖店",4),
(null,"展厅",4),
(null,"售楼处",4),
(null,"商场超市",4),
(null,"婚纱摄影",4),
(null,"橱窗设计",4),
(null,"服装店",4),
(null,"其他",4),
(null,"培训机构",5),
(null,"幼儿园",5),
(null,"图书馆",5),
(null,"医院",5),
(null,"银行",5),
(null,"学校",5),
(null,"其他",5),
(null,"办公大厅",6),
(null,"会议室",6),
(null,"休息接待室",6),
(null,"经理室",6),
(null,"前台",6),
(null,"电梯厅",6),
(null,"会客室",6),
(null,"会所",7),
(null,"酒吧",7),
(null,"KTV",7),
(null,"游泳健身",7),
(null,"电影院",7),
(null,"网吧游戏厅",7),
(null,"娱乐设施",7),
(null,"其他",7),
(null,"建筑景观",8),
(null,"别墅外立面",8),
(null,"公共设施",8),
(null,"园林小品",8),
(null,"园林景观",8),
(null,"店铺门头",8),
(null,"鸟瞰规划",8);

#模板风格表（xy_template_style）
create table xy_template_style(
	id int primary key auto_increment, #编号
	template_title varchar(32)  #模板类型
);

insert into xy_template_style values
(null,"现代"),
(null,"后现代"),
(null,"欧式"),
(null,"北欧"),
(null,"工业风"),
(null,"美式"),
(null,"日式"),
(null,"中式"),
(null,"地中海"),
(null,"混搭"),
(null,"东南亚"),
(null,"港式"),
(null,"简欧"),
(null,"法式"),
(null,"新中式");


create table xy_recentNews_preferential(
	id int primary key auto_increment, #编号
	title varchar(32),
	img_url varchar(128),
	t varchar(32)
);

insert into xy_recentNews_preferential values
(null,"3ds Max效果图25元封顶","http://127.0.0.1:3000/img/index/recent_news/f098025109286903f34d582f38d3cb18.jpg","2019/4/09"),
(null,"新用户注册赠送调整公告(2019)","http://127.0.0.1:3000/img/index/recent_news/c7504d5507bd8fdb0e4d58ab8964cc47.jpg","2019/4/09"),
(null,"效果图立减5元","http://127.0.0.1:3000/img/index/recent_news/be5c3d9470a85137a53a04c18fb3aac0.jpg","2019/4/09"),
(null,"SketchUp效果图25元封顶","http://127.0.0.1:3000/img/index/recent_news/a3dca0690b76a9f3be4e700a2b698e95.jpg","2019/4/09"),
(null,"推荐新用户，推荐一名奖励20元","http://127.0.0.1:3000/img/index/recent_news/dca5af39e4f66a66f955e77a52af5611.jpg","2019/4/02"),
(null,"动画渲染部分5折","http://127.0.0.1:3000/img/index/recent_news/c5192c768e7c80df54c73755b3e6fc36.jpg","2019/4/02"),
(null,"2019新年特惠活动","http://127.0.0.1:3000/img/index/recent_news/bff8a6959367e29509694ff7404a9998.jpg","2019/4/02"),
(null,"2018炫云决战双十二活动","http://127.0.0.1:3000/img/index/recent_news/8c15d4cfd87f81f413220cbe10365877.jpg","2019/2/19");

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
(null,"本末设计表现","http://127.0.0.1:3000/img/index/product_vip/user_pic/benmo.png","http://127.0.0.1:3000/img/index/product_vip/product_pic/vip7.jpg","http://127.0.0.1:3000/img/index/product_vip/product_pic/jindou.png","2.8",7,9),
(null,"T.R.Y空间设计工作室","http://127.0.0.1:3000/img/index/product_vip/user_pic/TRY.png","http://127.0.0.1:3000/img/index/product_vip/product_pic/vip8.jpg","http://127.0.0.1:3000/img/index/product_vip/product_pic/jindou.png","2.8",8,9);

#14.首页商品栏目表_休闲娱乐 （xy_index_leisure ）
create table xy_index_leisure(
	sid int primary key auto_increment, #编号
	name varchar(64),  #用户名
	user_pic varchar(128),  #用户头像
	product_pic varchar(128),  #商品图片
	Price_img varchar(128),   #价格图片
	price DECIMAL(10,1),  #价格
	sort smallint,  #排序
	fid int  #商品类型
); 
#首页商品栏目表_休闲娱乐 插入数据
insert into xy_index_leisure values
(1,"mm4521","http://127.0.0.1:3000/img/index/product_vip/user_pic/getHeader.png","http://127.0.0.1:3000/img/index/product_vip/product_pic/vip1.jpg",null,"VIP",1,10),
(null,"SIVANT","http://127.0.0.1:3000/img/index/product_vip/user_pic/SIVANT.png","http://127.0.0.1:3000/img/index/product_vip/product_pic/vip2.jpg","http://127.0.0.1:3000/img/index/product_vip/product_pic/jindou.png","2.8",2,10),
(null,"T.R.Y空间设计工作室","http://127.0.0.1:3000/img/index/product_vip/user_pic/TRY.png","http://127.0.0.1:3000/img/index/product_vip/product_pic/vip3.jpg","http://127.0.0.1:3000/img/index/product_vip/product_pic/jindou.png","2.8",3,10),
(null,"无霜","http://127.0.0.1:3000/img/index/product_vip/user_pic/wushuang","http://127.0.0.1:3000/img/index/product_vip/product_pic/vip4.jpg",null,"VIP",4,10),
(null,"柒上设计表现机构","http://127.0.0.1:3000/img/index/product_vip/user_pic/ranshang.png","http://127.0.0.1:3000/img/index/product_vip/product_pic/vip5.jpg",null,"VIP",5,10),
(null,"T.R.Y空间设计工作室","http://127.0.0.1:3000/img/index/product_vip/user_pic/TRY.png","http://127.0.0.1:3000/img/index/product_vip/product_pic/vip6.jpg","http://127.0.0.1:3000/img/index/product_vip/product_pic/jindou.png",6,6,10),
(null,"本末设计表现","http://127.0.0.1:3000/img/index/product_vip/user_pic/benmo.png","http://127.0.0.1:3000/img/index/product_vip/product_pic/vip7.jpg","http://127.0.0.1:3000/img/index/product_vip/product_pic/jindou.png","2.8",7,10),
(null,"T.R.Y空间设计工作室","http://127.0.0.1:3000/img/index/product_vip/user_pic/TRY.png","http://127.0.0.1:3000/img/index/product_vip/product_pic/vip8.jpg","http://127.0.0.1:3000/img/index/product_vip/product_pic/jindou.png","2.8",8,10);

#15.首页商品栏目表_室外建筑 （xy_index_outdoor_building ）
create table xy_index_outdoor_building(
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
insert into xy_index_outdoor_building values
(1,"mm4521","http://127.0.0.1:3000/img/index/product_vip/user_pic/getHeader.png","http://127.0.0.1:3000/img/index/product_vip/product_pic/vip1.jpg",null,"VIP",1,11),
(null,"SIVANT","http://127.0.0.1:3000/img/index/product_vip/user_pic/SIVANT.png","http://127.0.0.1:3000/img/index/product_vip/product_pic/vip2.jpg","http://127.0.0.1:3000/img/index/product_vip/product_pic/jindou.png","2.8",2,11),
(null,"T.R.Y空间设计工作室","http://127.0.0.1:3000/img/index/product_vip/user_pic/TRY.png","http://127.0.0.1:3000/img/index/product_vip/product_pic/vip3.jpg","http://127.0.0.1:3000/img/index/product_vip/product_pic/jindou.png","2.8",3,11),
(null,"无霜","http://127.0.0.1:3000/img/index/product_vip/user_pic/wushuang","http://127.0.0.1:3000/img/index/product_vip/product_pic/vip4.jpg",null,"VIP",4,11),
(null,"柒上设计表现机构","http://127.0.0.1:3000/img/index/product_vip/user_pic/ranshang.png","http://127.0.0.1:3000/img/index/product_vip/product_pic/vip5.jpg",null,"VIP",5,11),
(null,"T.R.Y空间设计工作室","http://127.0.0.1:3000/img/index/product_vip/user_pic/TRY.png","http://127.0.0.1:3000/img/index/product_vip/product_pic/vip6.jpg","http://127.0.0.1:3000/img/index/product_vip/product_pic/jindou.png",6,6,11),
(null,"本末设计表现","http://127.0.0.1:3000/img/index/product_vip/user_pic/benmo.png","http://127.0.0.1:3000/img/index/product_vip/product_pic/vip7.jpg","http://127.0.0.1:3000/img/index/product_vip/product_pic/jindou.png","2.8",7,11),
(null,"T.R.Y空间设计工作室","http://127.0.0.1:3000/img/index/product_vip/user_pic/TRY.png","http://127.0.0.1:3000/img/index/product_vip/product_pic/vip8.jpg","http://127.0.0.1:3000/img/index/product_vip/product_pic/jindou.png","2.8",8,11);


#创建首页最新动态表（xy_index_state）
create table xy_index_state(
	sid int primary key auto_increment, #编号
	product_pic varchar(128),  #图片
	title varchar(128),      #标题
	dates varchar(32),		#时间
	texts varchar(128)		#内容
); 

insert into xy_index_state values
(null,"http://127.0.0.1:3000/img/index/index_state1.png","炫云云模型VIP会员下载收费模型享受7折价","2019/06/04","劲爆好消息~炫云云模型VIP会员权限新升级，让您的VIP身份绝对“货真价实”，绝对“尊享”"),
(null,"http://127.0.0.1:3000/img/index/index_state2.png","第二届“征集合作伙伴及上传有奖”第十四期获奖结果公布","2019/06/03","六月大热天悄然来袭，炫云帮您“解暑”这个夏天~~ 参与活动拿现金，这个夏天的冰激凌，炫云来买单。"),
(null,"http://127.0.0.1:3000/img/index/index_state3.png","第二届“征集合作伙伴及上传有奖”第十三期获奖结果公布","2019/06/04","迎接即将到来的520，炫云“以爱之名”送上本周小惊喜啦~~"),
(null,"http://127.0.0.1:3000/img/index/index_state4.png","第二届“征集合作伙伴及上传有奖”第十二期获奖结果公布","2019/06/04","在这个柳絮漫天飞舞的季节，我们休完了近几年来最长的一个五一假期，大家是否还在意犹未尽呢？快快回神备战吧，炫云要给您送上开工小惊喜啦");