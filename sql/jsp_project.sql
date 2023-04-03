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
   username   	varchar2(50),
   userphone   	varchar2(20)
);

INSERT INTO "member" VALUES (mnum_seq.NEXTVAL,'test','test','test','test');
INSERT INTO "member" VALUES (mnum_seq.NEXTVAL,'test2','test2','test2','test2');

SELECT * FROM "member";



--------------------portfolio 테이블--------------------




--------------------coverletter 테이블--------------------



--------------------resumes 테이블--------------------
