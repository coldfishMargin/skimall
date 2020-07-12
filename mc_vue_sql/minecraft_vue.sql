#设置客户端连接服务器端的编码为UTF8
SET NAMES UTF8;
#丢弃数据库polar 如果存在的话
DROP DATABASE IF EXISTS polar;
#创建一个新的数据库polar 设置存储的编码为UTF8
CREATE DATABASE polar CHARSET=UTF8; 
#进入刚刚创建的数据库polar
USE polar;
#创建保存用户数据的表polar_user
CREATE TABLE polar_user(
	uid INT PRIMARY KEY AUTO_INCREMENT,
	uname VARCHAR(16) UNIQUE,
	upwd VARCHAR(32),
	phone VARCHAR(32),
	email VARCHAR(32),
	user_name VARCHAR(8) DEFAULT'NULL',
	sex VARCHAR(2) DEFAULT'-1'
);
#插入数据
INSERT INTO polar_user VALUES('null','张三三',123456,'15092811932','1023506504@qq.com',DEFAULT,DEFAULT);
INSERT INTO polar_user VALUES('null','李四',123456,'15092811932','1023506504@qq.com',DEFAULT,DEFAULT);
#创建导航条目
CREATE TABLE polar_nav(
	nid INT PRIMARY KEY AUTO_INCREMENT,
	nname VARCHAR(32) UNIQUE
);
INSERT INTO polar_nav VALUES('NULL','首页');
INSERT INTO polar_nav VALUES('NULL','论坛');
INSERT INTO polar_nav VALUES('NULL','分享');
INSERT INTO polar_nav VALUES('NULL','资源');
INSERT INTO polar_nav VALUES('NULL','茶馆');
#创建女士商品条目
CREATE TABLE polar_shop_lady(
	sid INT PRIMARY KEY AUTO_INCREMENT,
	sname VARCHAR(32),
	image VARCHAR(100),
	smoney INT,
	details VARCHAR(300)
	
);
INSERT INTO polar_shop_lady VALUES("null","滑雪大佛","woman2.jpg",429,"与以市场定位为基础的电子市场竞争，以过程为中心进行交付。有能力地联合以原则为中心的内部。");
INSERT INTO polar_shop_lady VALUES("null","滑雪面膜","woman1.jpg",59,"与以市场定位为基础的电子市场竞争，以过程为中心进行交付。有能力地联合以原则为中心的内部。");
INSERT INTO polar_shop_lady VALUES("null","滑雪哑光头盔","woman3.jpg",69,"与以市场定位为基础的电子市场竞争，以过程为中心进行交付。有能力地联合以原则为中心的内部。");
INSERT INTO polar_shop_lady VALUES("null","滑雪靴Advant","lady4.jpg",189,"与以市场定位为基础的电子市场竞争，以过程为中心进行交付。有能力地联合以原则为中心的内部。");
INSERT INTO polar_shop_lady VALUES("null","保护脊Dainese","lady5.jpg",89,"与以市场定位为基础的电子市场竞争，以过程为中心进行交付。有能力地联合以原则为中心的内部。");
INSERT INTO polar_shop_lady VALUES("null","头盔滑雪Md5","lady6.jpg",119,"与以市场定位为基础的电子市场竞争，以过程为中心进行交付。有能力地联合以原则为中心的内部。");
INSERT INTO polar_shop_lady VALUES("null","滑雪大佛","woman2.jpg",429,"与以市场定位为基础的电子市场竞争，以过程为中心进行交付。有能力地联合以原则为中心的内部。");
INSERT INTO polar_shop_lady VALUES("null","滑雪面膜","woman1.jpg",59,"与以市场定位为基础的电子市场竞争，以过程为中心进行交付。有能力地联合以原则为中心的内部。");
INSERT INTO polar_shop_lady VALUES("null","滑雪哑光头盔","woman3.jpg",69,"与以市场定位为基础的电子市场竞争，以过程为中心进行交付。有能力地联合以原则为中心的内部。");
INSERT INTO polar_shop_lady VALUES("null","滑雪靴Advant","lady4.jpg",189,"与以市场定位为基础的电子市场竞争，以过程为中心进行交付。有能力地联合以原则为中心的内部。");
INSERT INTO polar_shop_lady VALUES("null","保护脊Dainese","lady5.jpg",89,"与以市场定位为基础的电子市场竞争，以过程为中心进行交付。有能力地联合以原则为中心的内部。");
INSERT INTO polar_shop_lady VALUES("null","头盔滑雪Md5","lady6.jpg",119,"与以市场定位为基础的电子市场竞争，以过程为中心进行交付。有能力地联合以原则为中心的内部。");
INSERT INTO polar_shop_lady VALUES("null","滑雪大佛","woman2.jpg",429,"与以市场定位为基础的电子市场竞争，以过程为中心进行交付。有能力地联合以原则为中心的内部。");
INSERT INTO polar_shop_lady VALUES("null","滑雪面膜","woman1.jpg",59,"与以市场定位为基础的电子市场竞争，以过程为中心进行交付。有能力地联合以原则为中心的内部。");
INSERT INTO polar_shop_lady VALUES("null","滑雪哑光头盔","woman3.jpg",69,"与以市场定位为基础的电子市场竞争，以过程为中心进行交付。有能力地联合以原则为中心的内部。");
INSERT INTO polar_shop_lady VALUES("null","滑雪靴Advant","lady4.jpg",189,"与以市场定位为基础的电子市场竞争，以过程为中心进行交付。有能力地联合以原则为中心的内部。");
INSERT INTO polar_shop_lady VALUES("null","保护脊Dainese","lady5.jpg",89,"与以市场定位为基础的电子市场竞争，以过程为中心进行交付。有能力地联合以原则为中心的内部。");
INSERT INTO polar_shop_lady VALUES("null","头盔滑雪Md5","lady6.jpg",119,"与以市场定位为基础的电子市场竞争，以过程为中心进行交付。有能力地联合以原则为中心的内部。");
INSERT INTO polar_shop_lady VALUES("null","滑雪大佛","woman2.jpg",429,"与以市场定位为基础的电子市场竞争，以过程为中心进行交付。有能力地联合以原则为中心的内部。");
INSERT INTO polar_shop_lady VALUES("null","滑雪面膜","woman1.jpg",59,"与以市场定位为基础的电子市场竞争，以过程为中心进行交付。有能力地联合以原则为中心的内部。");
INSERT INTO polar_shop_lady VALUES("null","滑雪哑光头盔","woman3.jpg",69,"与以市场定位为基础的电子市场竞争，以过程为中心进行交付。有能力地联合以原则为中心的内部。");
INSERT INTO polar_shop_lady VALUES("null","滑雪靴Advant","lady4.jpg",189,"与以市场定位为基础的电子市场竞争，以过程为中心进行交付。有能力地联合以原则为中心的内部。");
INSERT INTO polar_shop_lady VALUES("null","保护脊Dainese","lady5.jpg",89,"与以市场定位为基础的电子市场竞争，以过程为中心进行交付。有能力地联合以原则为中心的内部。");
INSERT INTO polar_shop_lady VALUES("null","头盔滑雪Md5","lady6.jpg",119,"与以市场定位为基础的电子市场竞争，以过程为中心进行交付。有能力地联合以原则为中心的内部。");
INSERT INTO polar_shop_lady VALUES("null","滑雪大佛","woman2.jpg",429,"与以市场定位为基础的电子市场竞争，以过程为中心进行交付。有能力地联合以原则为中心的内部。");
INSERT INTO polar_shop_lady VALUES("null","滑雪面膜","woman1.jpg",59,"与以市场定位为基础的电子市场竞争，以过程为中心进行交付。有能力地联合以原则为中心的内部。");
INSERT INTO polar_shop_lady VALUES("null","滑雪哑光头盔","woman3.jpg",69,"与以市场定位为基础的电子市场竞争，以过程为中心进行交付。有能力地联合以原则为中心的内部。");
INSERT INTO polar_shop_lady VALUES("null","滑雪靴Advant","lady4.jpg",189,"与以市场定位为基础的电子市场竞争，以过程为中心进行交付。有能力地联合以原则为中心的内部。");
INSERT INTO polar_shop_lady VALUES("null","保护脊Dainese","lady5.jpg",89,"与以市场定位为基础的电子市场竞争，以过程为中心进行交付。有能力地联合以原则为中心的内部。");
INSERT INTO polar_shop_lady VALUES("null","头盔滑雪Md5","lady6.jpg",119,"与以市场定位为基础的电子市场竞争，以过程为中心进行交付。有能力地联合以原则为中心的内部。");
#创建女士商品推荐条目
CREATE TABLE polar_shop_lady_tj(
	sid INT PRIMARY KEY AUTO_INCREMENT,
	sname VARCHAR(32),
	image VARCHAR(100),
	smoney INT ,
	details VARCHAR(300)
	
);
INSERT INTO polar_shop_lady_tj VALUES("null","坎迪滑雪板","lady7.jpg",759,"与以市场定位为基础的电子市场竞争，以过程为中心进行交付。有能力地联合以原则为中心的内部。");
INSERT INTO polar_shop_lady_tj VALUES("null","Soul7滑雪板","lady9.jpg",249,"与以市场定位为基础的电子市场竞争，以过程为中心进行交付。有能力地联合以原则为中心的内部。");
INSERT INTO polar_shop_lady_tj VALUES("null","滑雪哑光头盔","woman3.jpg",69,"与以市场定位为基础的电子市场竞争，以过程为中心进行交付。有能力地联合以原则为中心的内部。");
INSERT INTO polar_shop_lady_tj VALUES("null","滑雪靴x pro","nan1.jpg",219,"与以市场定位为基础的电子市场竞争，以过程为中心进行交付。有能力地联合以原则为中心的内部。");

#创建男士商品条目
CREATE TABLE polar_shop_man(
	sid INT PRIMARY KEY AUTO_INCREMENT,
	sname VARCHAR(32),
	image VARCHAR(100),
	smoney INT,
	details VARCHAR(300)
	
);
INSERT INTO polar_shop_man VALUES("null","滑雪面膜","woman1.jpg",59,"与以市场定位为基础的电子市场竞争，以过程为中心进行交付。有能力地联合以原则为中心的内部。");

INSERT INTO polar_shop_man VALUES("null","滑雪面膜","woman1.jpg",59,"与以市场定位为基础的电子市场竞争，以过程为中心进行交付。有能力地联合以原则为中心的内部。");
INSERT INTO polar_shop_man VALUES("null","滑雪面膜","woman1.jpg",59,"与以市场定位为基础的电子市场竞争，以过程为中心进行交付。有能力地联合以原则为中心的内部。");
INSERT INTO polar_shop_man VALUES("null","滑雪靴x pro","nan1.jpg",219,"与以市场定位为基础的电子市场竞争，以过程为中心进行交付。有能力地联合以原则为中心的内部。");
INSERT INTO polar_shop_man VALUES("null","保护山黑色短裤","nan2.jpg",49,"与以市场定位为基础的电子市场竞争，以过程为中心进行交付。有能力地联合以原则为中心的内部。");
INSERT INTO polar_shop_man VALUES("null","假面滑雪Oakley","nan3.jpg",39,"与以市场定位为基础的电子市场竞争，以过程为中心进行交付。有能力地联合以原则为中心的内部。");
INSERT INTO polar_shop_man VALUES("null","坎迪滑雪板","nan4.jpg",750,"与以市场定位为基础的电子市场竞争，以过程为中心进行交付。有能力地联合以原则为中心的内部。");
INSERT INTO polar_shop_man VALUES("null","滑雪头盔Mod5","nan5.jpg",119,"与以市场定位为基础的电子市场竞争，以过程为中心进行交付。有能力地联合以原则为中心的内部。");
INSERT INTO polar_shop_man VALUES("null","滑雪靴x pro","nan1.jpg",219,"与以市场定位为基础的电子市场竞争，以过程为中心进行交付。有能力地联合以原则为中心的内部。");
INSERT INTO polar_shop_man VALUES("null","保护山黑色短裤","nan2.jpg",49,"与以市场定位为基础的电子市场竞争，以过程为中心进行交付。有能力地联合以原则为中心的内部。");
INSERT INTO polar_shop_man VALUES("null","滑雪面膜","woman1.jpg",59,"与以市场定位为基础的电子市场竞争，以过程为中心进行交付。有能力地联合以原则为中心的内部。");
INSERT INTO polar_shop_man VALUES("null","滑雪面膜","woman1.jpg",59,"与以市场定位为基础的电子市场竞争，以过程为中心进行交付。有能力地联合以原则为中心的内部。");
INSERT INTO polar_shop_man VALUES("null","滑雪靴x pro","nan1.jpg",219,"与以市场定位为基础的电子市场竞争，以过程为中心进行交付。有能力地联合以原则为中心的内部。");
INSERT INTO polar_shop_man VALUES("null","保护山黑色短裤","nan2.jpg",49,"与以市场定位为基础的电子市场竞争，以过程为中心进行交付。有能力地联合以原则为中心的内部。");
INSERT INTO polar_shop_man VALUES("null","假面滑雪Oakley","nan3.jpg",39,"与以市场定位为基础的电子市场竞争，以过程为中心进行交付。有能力地联合以原则为中心的内部。");
INSERT INTO polar_shop_man VALUES("null","坎迪滑雪板","nan4.jpg",750,"与以市场定位为基础的电子市场竞争，以过程为中心进行交付。有能力地联合以原则为中心的内部。");
INSERT INTO polar_shop_man VALUES("null","滑雪头盔Mod5","nan5.jpg",119,"与以市场定位为基础的电子市场竞争，以过程为中心进行交付。有能力地联合以原则为中心的内部。");
INSERT INTO polar_shop_man VALUES("null","滑雪靴x pro","nan1.jpg",219,"与以市场定位为基础的电子市场竞争，以过程为中心进行交付。有能力地联合以原则为中心的内部。");
INSERT INTO polar_shop_man VALUES("null","保护山黑色短裤","nan2.jpg",49,"与以市场定位为基础的电子市场竞争，以过程为中心进行交付。有能力地联合以原则为中心的内部。");
INSERT INTO polar_shop_man VALUES("null","假面滑雪Oakley","nan3.jpg",39,"与以市场定位为基础的电子市场竞争，以过程为中心进行交付。有能力地联合以原则为中心的内部。");
INSERT INTO polar_shop_man VALUES("null","坎迪滑雪板","nan4.jpg",750,"与以市场定位为基础的电子市场竞争，以过程为中心进行交付。有能力地联合以原则为中心的内部。");
INSERT INTO polar_shop_man VALUES("null","滑雪头盔Mod5","nan5.jpg",119,"与以市场定位为基础的电子市场竞争，以过程为中心进行交付。有能力地联合以原则为中心的内部。");
INSERT INTO polar_shop_man VALUES("null","假面滑雪Oakley","nan3.jpg",39,"与以市场定位为基础的电子市场竞争，以过程为中心进行交付。有能力地联合以原则为中心的内部。");
INSERT INTO polar_shop_man VALUES("null","坎迪滑雪板","nan4.jpg",750,"与以市场定位为基础的电子市场竞争，以过程为中心进行交付。有能力地联合以原则为中心的内部。");
INSERT INTO polar_shop_man VALUES("null","滑雪头盔Mod5","nan5.jpg",119,"与以市场定位为基础的电子市场竞争，以过程为中心进行交付。有能力地联合以原则为中心的内部。");
INSERT INTO polar_shop_man VALUES("null","保护山黑色短裤","nan2.jpg",49,"与以市场定位为基础的电子市场竞争，以过程为中心进行交付。有能力地联合以原则为中心的内部。");
INSERT INTO polar_shop_man VALUES("null","假面滑雪Oakley","nan3.jpg",39,"与以市场定位为基础的电子市场竞争，以过程为中心进行交付。有能力地联合以原则为中心的内部。");
INSERT INTO polar_shop_man VALUES("null","坎迪滑雪板","nan4.jpg",750,"与以市场定位为基础的电子市场竞争，以过程为中心进行交付。有能力地联合以原则为中心的内部。");
INSERT INTO polar_shop_man VALUES("null","滑雪头盔Mod5","nan5.jpg",119,"与以市场定位为基础的电子市场竞争，以过程为中心进行交付。有能力地联合以原则为中心的内部。");
#创建孩童商品条目
CREATE TABLE polar_shop_wear(
	sid INT PRIMARY KEY AUTO_INCREMENT,
	sname VARCHAR(32),
	image VARCHAR(100),
	smoney INT,
	details VARCHAR(300)
	
);
INSERT INTO polar_shop_wear VALUES("null","保护山黑色短裤","nan2.jpg",49,"与以市场定位为基础的电子市场竞争，以过程为中心进行交付。有能力地联合以原则为中心的内部。");
INSERT INTO polar_shop_wear VALUES("null","滑雪靴x pro","nan1.jpg",219,"与以市场定位为基础的电子市场竞争，以过程为中心进行交付。有能力地联合以原则为中心的内部。");
INSERT INTO polar_shop_wear VALUES("null","保护山黑色短裤","nan2.jpg",49,"与以市场定位为基础的电子市场竞争，以过程为中心进行交付。有能力地联合以原则为中心的内部。");
INSERT INTO polar_shop_wear VALUES("null","滑雪靴x pro","nan1.jpg",219,"与以市场定位为基础的电子市场竞争，以过程为中心进行交付。有能力地联合以原则为中心的内部。");
INSERT INTO polar_shop_wear VALUES("null","滑雪面膜","woman1.jpg",59,"与以市场定位为基础的电子市场竞争，以过程为中心进行交付。有能力地联合以原则为中心的内部。");
INSERT INTO polar_shop_wear VALUES("null","假面滑雪Oakley","nan3.jpg",39,"与以市场定位为基础的电子市场竞争，以过程为中心进行交付。有能力地联合以原则为中心的内部。");
INSERT INTO polar_shop_wear VALUES("null","坎迪滑雪板","nan4.jpg",750,"与以市场定位为基础的电子市场竞争，以过程为中心进行交付。有能力地联合以原则为中心的内部。");
INSERT INTO polar_shop_wear VALUES("null","滑雪头盔Mod5","nan5.jpg",119,"与以市场定位为基础的电子市场竞争，以过程为中心进行交付。有能力地联合以原则为中心的内部。");
INSERT INTO polar_shop_wear VALUES("null","保护山黑色短裤","nan2.jpg",49,"与以市场定位为基础的电子市场竞争，以过程为中心进行交付。有能力地联合以原则为中心的内部。");
INSERT INTO polar_shop_wear VALUES("null","滑雪靴x pro","nan1.jpg",219,"与以市场定位为基础的电子市场竞争，以过程为中心进行交付。有能力地联合以原则为中心的内部。");
INSERT INTO polar_shop_wear VALUES("null","滑雪面膜","woman1.jpg",59,"与以市场定位为基础的电子市场竞争，以过程为中心进行交付。有能力地联合以原则为中心的内部。");
INSERT INTO polar_shop_wear VALUES("null","保护山黑色短裤","nan2.jpg",49,"与以市场定位为基础的电子市场竞争，以过程为中心进行交付。有能力地联合以原则为中心的内部。");
INSERT INTO polar_shop_wear VALUES("null","滑雪靴x pro","nan1.jpg",219,"与以市场定位为基础的电子市场竞争，以过程为中心进行交付。有能力地联合以原则为中心的内部。");
INSERT INTO polar_shop_wear VALUES("null","滑雪面膜","woman1.jpg",59,"与以市场定位为基础的电子市场竞争，以过程为中心进行交付。有能力地联合以原则为中心的内部。");
INSERT INTO polar_shop_wear VALUES("null","假面滑雪Oakley","nan3.jpg",39,"与以市场定位为基础的电子市场竞争，以过程为中心进行交付。有能力地联合以原则为中心的内部。");
INSERT INTO polar_shop_wear VALUES("null","坎迪滑雪板","nan4.jpg",750,"与以市场定位为基础的电子市场竞争，以过程为中心进行交付。有能力地联合以原则为中心的内部。");
INSERT INTO polar_shop_wear VALUES("null","滑雪头盔Mod5","nan5.jpg",119,"与以市场定位为基础的电子市场竞争，以过程为中心进行交付。有能力地联合以原则为中心的内部。");
INSERT INTO polar_shop_wear VALUES("null","假面滑雪Oakley","nan3.jpg",39,"与以市场定位为基础的电子市场竞争，以过程为中心进行交付。有能力地联合以原则为中心的内部。");
INSERT INTO polar_shop_wear VALUES("null","坎迪滑雪板","nan4.jpg",750,"与以市场定位为基础的电子市场竞争，以过程为中心进行交付。有能力地联合以原则为中心的内部。");
INSERT INTO polar_shop_wear VALUES("null","保护山黑色短裤","nan2.jpg",49,"与以市场定位为基础的电子市场竞争，以过程为中心进行交付。有能力地联合以原则为中心的内部。");
INSERT INTO polar_shop_wear VALUES("null","滑雪靴x pro","nan1.jpg",219,"与以市场定位为基础的电子市场竞争，以过程为中心进行交付。有能力地联合以原则为中心的内部。");
INSERT INTO polar_shop_wear VALUES("null","滑雪面膜","woman1.jpg",59,"与以市场定位为基础的电子市场竞争，以过程为中心进行交付。有能力地联合以原则为中心的内部。");
INSERT INTO polar_shop_wear VALUES("null","假面滑雪Oakley","nan3.jpg",39,"与以市场定位为基础的电子市场竞争，以过程为中心进行交付。有能力地联合以原则为中心的内部。");
INSERT INTO polar_shop_wear VALUES("null","坎迪滑雪板","nan4.jpg",750,"与以市场定位为基础的电子市场竞争，以过程为中心进行交付。有能力地联合以原则为中心的内部。");
INSERT INTO polar_shop_wear VALUES("null","滑雪头盔Mod5","nan5.jpg",119,"与以市场定位为基础的电子市场竞争，以过程为中心进行交付。有能力地联合以原则为中心的内部。");
INSERT INTO polar_shop_wear VALUES("null","滑雪头盔Mod5","nan5.jpg",119,"与以市场定位为基础的电子市场竞争，以过程为中心进行交付。有能力地联合以原则为中心的内部。");
INSERT INTO polar_shop_wear VALUES("null","滑雪面膜","woman1.jpg",59,"与以市场定位为基础的电子市场竞争，以过程为中心进行交付。有能力地联合以原则为中心的内部。");
INSERT INTO polar_shop_wear VALUES("null","假面滑雪Oakley","nan3.jpg",39,"与以市场定位为基础的电子市场竞争，以过程为中心进行交付。有能力地联合以原则为中心的内部。");
INSERT INTO polar_shop_wear VALUES("null","坎迪滑雪板","nan4.jpg",750,"与以市场定位为基础的电子市场竞争，以过程为中心进行交付。有能力地联合以原则为中心的内部。");
INSERT INTO polar_shop_wear VALUES("null","滑雪头盔Mod5","nan5.jpg",119,"与以市场定位为基础的电子市场竞争，以过程为中心进行交付。有能力地联合以原则为中心的内部。");
#创建购物车表
CREATE TABLE polar_shop_cart(
	sid INT PRIMARY KEY AUTO_INCREMENT,
	uname VARCHAR(32),
	upwd VARCHAR(32),
	title VARCHAR(64),
	image VARCHAR(100),
	smoney INT,
	num VARCHAR(32),
	time VARCHAR(30),
	num_smoney INT
	
);
INSERT INTO polar_shop_cart VALUES("null","张三三",123456,"坎迪滑雪板","nan5.jpg",119,1,1593870910000,119);
INSERT INTO polar_shop_cart VALUES("null","张三三",123456,"坎迪滑雪板","nan5.jpg",119,1,1593870910000,119);
#创建购物记录表
CREATE TABLE polar_shop_state(
	sid INT PRIMARY KEY AUTO_INCREMENT,
	uname VARCHAR(32),
	upwd VARCHAR(32),
	title VARCHAR(64),
	image VARCHAR(100),
	smoney INT,
	num VARCHAR(32),
	time VARCHAR(30),
	num_smoney INT,
	state INT
);
# status  1为确认购买,2为后台发货,3为确认收货
INSERT INTO polar_shop_state VALUES("null","张三三",123456,"坎迪滑雪板","nan5.jpg",119,1,1593870910000,119,1);