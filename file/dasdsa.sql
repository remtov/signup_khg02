drop table ko_kim_signup;
CREATE TABLE ko_kim_signup
(
	-- signupnum
	signupnum number(5,0) NOT NULL PRIMARY KEY,
	-- signupname
	signupname varchar2(16) NOT NULL,
	-- id
	signupid varchar2(100) NOT NULL UNIQUE,
	-- password
	signuppassword varchar2(100) NOT NULL,
	-- email
	-- 
	signupemail varchar2(100) NOT NULL,	-- nickname
	signupnickname varchar2(100)  NOT NULL UNIQUE,
	-- identyfy
	signuppersonallity number(14,0) not null  UNIQUE,
	-- phonenum
	signupphone  number(17,0) NOT NULL,
	-- when the time to sign up
	signupdate number(10,0) NOT NULL,
	-- interest things
	signupconcern varchar2(100)
	
);
create SEQUENCE signupnum start with 1 INCREMENT by 1;

