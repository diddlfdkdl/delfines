drop table member;

create table member(
	mnum 	int(5)		primary key auto_increment,	#회원번호
	userid 	varchar(16) 	not null unique,		#아이디
	pwd 	varchar(10) 	not null,				#비밀번호
	name 	varchar(20) 	not null,				#이름
    tel 	varchar(12) 	null,					#연락처
    post1   varchar(3)	null,						#우편번호1
	post2   varchar(3)	null,						#우편번호2
	addr1   varchar(500)	null,					#신수조
	addr2   varchar(500)	null					#구주소
);

insert into member(userid, pwd, name, tel, post1, post2, addr1, addr2)
values('admin', '1234', '관리자', 'tel', 'p1', 'p2', 'addr1', 'addr2');

commit;
