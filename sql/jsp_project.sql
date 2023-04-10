--------------------"member" 테이블--------------------

CREATE SEQUENCE mnum_seq
       INCREMENT BY 1
       START WITH 10000
       MINVALUE 10000
       MAXVALUE 19999
       NOCYCLE
       NOCACHE
       NOORDER;


CREATE TABLE "member"(
   userid       varchar2(10) PRIMARY KEY,
   userpw      	varchar2(30),
   useremail   	varchar2(50),
   userphone   	varchar2(20)
);

INSERT INTO "member" VALUES (mnum_seq.NEXTVAL,'test','test','test');
INSERT INTO "member" VALUES (mnum_seq.NEXTVAL,'test2','test2','test2');

SELECT * FROM "member";



--------------------portfolio 테이블--------------------
CREATE SEQUENCE 	portfolio_seq
	START WITH 		10000
	INCREMENT BY 	1
	NOCACHE;

CREATE TABLE portfolio(
	pnum			   varchar2(10) PRIMARY KEY ,	
	ptitle			varchar2(225),
	pcontents		CLOB,
	purl			   varchar2(225),
	ppath			   varchar2(225),
	userid			   varchar2(10),
	CONSTRAINT		mnum_fkey	FOREIGN KEY(userid)
	REFERENCES 		"member"(userid)
);

INSERT INTO portfolio
	VALUES 	(portfolio_seq.nextval, 
			   'Portfolio Title', 
			   'Portfolio Content', 
			   'http://example.com', 
			   '/path/to/file', 
			   'user'
            );

SELECT * FROM portfolio;



--------------------coverletter 테이블--------------------
CREATE TABLE coverletter(
	cnum		varchar2(10) PRIMARY KEY ,	
	ctitle		varchar2(300),
	ccontents	varchar2(1500),
	userid		varchar2(10),
	CONSTRAINT	userid_fk	FOREIGN KEY(userid)
	REFERENCES "member"(userid)
);

CREATE SEQUENCE cnum_seq
START WITH 100
INCREMENT BY 1
nocache
;

INSERT INTO coverletter 
VALUES (cnum_seq.nextval,'test','test', 'admin');

SELECT * FROM coverletter;


--------------------resumes 테이블--------------------

--------------------resumes 테이블--------------------
UPDATE resumes SET username ='수정제목11' , gender ='수정제목11' ,
userphone ='수정제목11' ,useremail ='수정제목11' ,hight ='수정제목11' ,school ='수정제목11' ,
major ='수정제목11' ,term ='수정제목11' ,career ='수정제목11' ,etc ='수정제목11' WHERE USERID = 'admin';
CREATE TABLE resumes(
	username		varchar2(100),
	gender			varchar2(100),
	userphone		varchar2(100),
	useremail		varchar2(100),
	hight			varchar2(100),
	school			varchar2(100),
	major			varchar2(100),
	term			varchar2(100),
	career			varchar2(1000),
	etc				varchar2(1000),
	userid			varchar2(100),
	CONSTRAINT	userid_re	FOREIGN KEY(userid)
	REFERENCES "member"(userid)
);

--DROP TABLE resumes;

SELECT * FROM resumes ;


CREATE SEQUENCE rnum_seq
START WITH 1000
INCREMENT BY 1
nocache
;


INSERT INTO resumes
	VALUES (' ','male',' ',' ',' ',' ',' ',' ',' ',' ','10026');


