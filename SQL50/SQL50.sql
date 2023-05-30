CREATE TABLE `Student`(
	`s_id` VARCHAR(20),
    `s_name` VARCHAR(20) NOT NULL DEFAULT '',
    `s_birth` VARCHAR(20) NOT NULL DEFAULT '',
    `s_sex` VARCHAR(10) NOT NULL DEFAULT '',
    PRIMARY KEY (`s_id`)
    );
CREATE TABLE `Course`(
	`c_id` VARCHAR(20),
    `c_name` VARCHAR(20) NOT NULL DEFAULT '',
    `t_id` VARCHAR(20) NOT NULL,
    PRIMARY KEY (`c_id`)
    );
CREATE TABLE `Teacher`(
	`t_id` VARCHAR(20),
	`t_name` VARCHAR(20) NOT NULL DEFAULT '',
	PRIMARY KEY(`t_id`)
	);
CREATE TABLE `Score`(
	`s_id` VARCHAR(20),
	`c_id` VARCHAR(20),
	`s_score` INT(3),
	PRIMARY KEY(`s_id`,`c_id`)
	);
INSERT INTO Student VALUES('01' , ' 赵 雷 ' , '1990-01-01' , ' 男 ');
INSERT INTO Student VALUES('02' , ' 钱 电 ' , '1990-12-21' , ' 男 ');
INSERT INTO Student VALUES('03' , ' 孙 风 ' , '1990-05-20' , ' 男 ');
INSERT INTO Student VALUES('04' , ' 李 云 ' , '1990-08-06' , ' 男 ');
INSERT INTO Student VALUES('05' , ' 周 梅 ' , '1991-12-01' , ' 女 ');
INSERT INTO Student VALUES('06' , ' 吴 兰 ' , '1992-03-01' , ' 女 ');
INSERT INTO Student VALUES('07' , ' 郑 竹 ' , '1989-07-01' , ' 女 ');
INSERT INTO Student VALUES('08' , ' 王 菊 ' , '1990-01-20' , ' 女 ');
INSERT INTO Course VALUES('01' , ' 语 文 ' , '02');
INSERT INTO Course VALUES('02' , ' 数 学 ' , '01');
INSERT INTO Course VALUES('03' , ' 英 语 ' , '03');
INSERT INTO Teacher VALUES('01' , ' 张 三 ');
INSERT INTO Teacher VALUES('02' , ' 李 四 ');
INSERT INTO Teacher VALUES('03' , ' 王 五 ');
INSERT INTO Score VALUES('01' , '01' , 80);
INSERT INTO Score VALUES('01' , '02' , 90);
INSERT INTO Score VALUES('01' , '03' , 99);
INSERT INTO Score VALUES('02' , '01' , 70);
INSERT INTO Score VALUES('02' , '02' , 60);
INSERT INTO Score VALUES('02' , '03' , 80);
INSERT INTO Score VALUES('03' , '01' , 80);
INSERT INTO Score VALUES('03' , '02' , 80);
INSERT INTO Score VALUES('03' , '03' , 80);
INSERT INTO Score VALUES('04' , '01' , 50);    
INSERT INTO Score VALUES('04' , '02' , 30);
INSERT INTO Score VALUES('04' , '03' , 20);
INSERT INTO Score VALUES('05' , '01' , 76);
INSERT INTO Score VALUES('05' , '02' , 87);
INSERT INTO Score VALUES('06' , '01' , 31);
INSERT INTO Score VALUES('06' , '03' , 34);
INSERT INTO Score VALUES('07' , '02' , 89);
INSERT INTO Score VALUES('07' , '03' , 98);


    
    
    
    
    
    