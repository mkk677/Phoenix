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
	mnum 		varchar2(10) PRIMARY KEY,
   userid       varchar2(10) ,
   userpw      	varchar2(30),
   useremail   	varchar2(50),
   userphone   	varchar2(20)
);

INSERT INTO "member" VALUES (mnum_seq.NEXTVAL,'test','test','test','test');
INSERT INTO "member" VALUES (mnum_seq.NEXTVAL,'test2','test2','test2','test2');

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
	mnum			   varchar2(10),
	CONSTRAINT		mnum_fkey	FOREIGN KEY(mnum)
	REFERENCES 		"member"(mnum)
);

INSERT INTO portfolio
	VALUES 	(portfolio_seq.nextval, 
			   'Portfolio Title', 
			   'Portfolio Content', 
			   'http://example.com', 
			   '/path/to/file', 
			   10000
            );

SELECT * FROM portfolio;



--------------------coverletter 테이블--------------------
CREATE TABLE coverletter(
	cnum		varchar2(10) PRIMARY KEY ,	
	ctitle		varchar2(300),
	ccontents	varchar2(1500),
	mnum		varchar2(10),
	CONSTRAINT	mnum_fk	FOREIGN KEY(mnum)
	REFERENCES "member"(mnum)
);

CREATE SEQUENCE cnum_seq
START WITH 100
INCREMENT BY 1
nocache
;

INSERT INTO coverletter 
VALUES (cnum_seq.nextval,'test','test', 10000);

SELECT * FROM coverletter;


--------------------resumes 테이블--------------------
