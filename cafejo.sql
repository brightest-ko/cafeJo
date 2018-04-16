--------------------------------------------------------
--  파일이 생성됨 - 목요일-2월-16-2017   
--------------------------------------------------------
DROP TABLE "CAFEJO"."EVENT" cascade constraints;
DROP TABLE "CAFEJO"."EVENTMEMBER" cascade constraints;
DROP TABLE "CAFEJO"."MEMBER" cascade constraints;
DROP TABLE "CAFEJO"."MENU" cascade constraints;
DROP TABLE "CAFEJO"."NOTICE" cascade constraints;
DROP TABLE "CAFEJO"."QNA" cascade constraints;
DROP TABLE "CAFEJO"."STORE" cascade constraints;
DROP SEQUENCE "CAFEJO"."EVENTMEMBER_SEQ";
DROP SEQUENCE "CAFEJO"."EVENT_SEQ";
DROP SEQUENCE "CAFEJO"."MENU_SEQ";
DROP SEQUENCE "CAFEJO"."NOTICE_SEQ";
DROP SEQUENCE "CAFEJO"."QNA_SEQ";
DROP SEQUENCE "CAFEJO"."STORE_SEQ";
--------------------------------------------------------
--  DDL for Table EVENT
--------------------------------------------------------

  CREATE TABLE "CAFEJO"."EVENT" 
   (	"EVENTNUM" NUMBER, 
	"ETITLE" VARCHAR2(100 BYTE), 
	"ECONTENT" VARCHAR2(4000 BYTE), 
	"FILENAME" VARCHAR2(50 BYTE), 
	"EHIT" NUMBER, 
	"EVENTDATE" DATE, 
	"EVENTCOUNT" NUMBER, 
	"EVENTNOWCOUNT" NUMBER, 
	"EVENTFINISH" VARCHAR2(20 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table EVENTMEMBER
--------------------------------------------------------

  CREATE TABLE "CAFEJO"."EVENTMEMBER" 
   (	"EMNUM" NUMBER, 
	"USERID" VARCHAR2(20 BYTE), 
	"USERNAME" VARCHAR2(10 BYTE), 
	"HP" VARCHAR2(13 BYTE), 
	"MAIL" VARCHAR2(20 BYTE), 
	"EVENTNUM" NUMBER, 
	"EVENTMEMBERDATE" DATE
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table MEMBER
--------------------------------------------------------

  CREATE TABLE "CAFEJO"."MEMBER" 
   (	"USERID" VARCHAR2(20 BYTE), 
	"PASSWD" VARCHAR2(20 BYTE), 
	"USERNAME" VARCHAR2(10 BYTE), 
	"GENDER" VARCHAR2(2 BYTE), 
	"BIRTH" VARCHAR2(20 BYTE), 
	"HP" VARCHAR2(13 BYTE), 
	"HPGET" VARCHAR2(10 BYTE), 
	"JOINDATE" DATE, 
	"MAIL" VARCHAR2(20 BYTE), 
	"MAILGET" VARCHAR2(10 BYTE), 
	"GRADE" VARCHAR2(10 BYTE) DEFAULT USER, 
	"CANCELMEMBER" VARCHAR2(10 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table MENU
--------------------------------------------------------

  CREATE TABLE "CAFEJO"."MENU" 
   (	"NUM" NUMBER, 
	"KIND" VARCHAR2(20 BYTE), 
	"MENUNAME" VARCHAR2(20 BYTE), 
	"HOTNCOLD" VARCHAR2(10 BYTE), 
	"DESCRIPTION" VARCHAR2(2000 BYTE), 
	"CALORY" NUMBER(10,2), 
	"SACCHARIDE" NUMBER(10,2), 
	"PROTEIN" NUMBER(10,2), 
	"CAFFEINE" NUMBER(10,2), 
	"FAT" NUMBER(10,2), 
	"SODIUM" NUMBER(10,2), 
	"MENUDATE" DATE, 
	"FILENAME" VARCHAR2(50 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table NOTICE
--------------------------------------------------------

  CREATE TABLE "CAFEJO"."NOTICE" 
   (	"NNUM" NUMBER, 
	"NTITLE" VARCHAR2(100 BYTE), 
	"NCONTENT" VARCHAR2(4000 BYTE), 
	"NHIT" NUMBER, 
	"NOTICEDATE" DATE
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table QNA
--------------------------------------------------------

  CREATE TABLE "CAFEJO"."QNA" 
   (	"QREFID" VARCHAR2(20 BYTE), 
	"USERID" VARCHAR2(20 BYTE), 
	"USERNAME" VARCHAR2(10 BYTE), 
	"HP" VARCHAR2(13 BYTE), 
	"MAIL" VARCHAR2(20 BYTE), 
	"QNUM" NUMBER, 
	"QTITLE" VARCHAR2(100 BYTE), 
	"QCONTENT" VARCHAR2(200 BYTE), 
	"QNADATE" DATE, 
	"QREF" NUMBER, 
	"QLEVEL" NUMBER, 
	"QREPLY" VARCHAR2(10 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table STORE
--------------------------------------------------------

  CREATE TABLE "CAFEJO"."STORE" 
   (	"STORENUM" NUMBER, 
	"STORENAME" VARCHAR2(20 BYTE), 
	"STORECALL" VARCHAR2(13 BYTE), 
	"OLDADRESS" VARCHAR2(200 BYTE), 
	"NEWADRESS" VARCHAR2(200 BYTE), 
	"STORETIME" VARCHAR2(200 BYTE), 
	"CAROK" VARCHAR2(20 BYTE), 
	"STOREMORE" VARCHAR2(200 BYTE), 
	"STOREDATE" DATE
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Sequence EVENTMEMBER_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "CAFEJO"."EVENTMEMBER_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 21 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence EVENT_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "CAFEJO"."EVENT_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 21 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence MENU_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "CAFEJO"."MENU_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 21 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence NOTICE_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "CAFEJO"."NOTICE_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 21 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence QNA_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "CAFEJO"."QNA_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 21 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence STORE_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "CAFEJO"."STORE_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 21 CACHE 20 NOORDER  NOCYCLE ;
REM INSERTING into CAFEJO.EVENT
SET DEFINE OFF;
Insert into CAFEJO.EVENT (EVENTNUM,ETITLE,ECONTENT,FILENAME,EHIT,EVENTDATE,EVENTCOUNT,EVENTNOWCOUNT,EVENTFINISH) values (1,'[CafeJo] 첫 텀블러 출시기념 선착순 50명에게 쏜다!','※회원정보로 이벤트선물을 보내드립니다.<br />꼭, 회원정보를 올바르게 입력해주세요.','1487044405386main12.jpg',15,to_date('17/02/14','RR/MM/DD'),50,3,'startevent');
Insert into CAFEJO.EVENT (EVENTNUM,ETITLE,ECONTENT,FILENAME,EHIT,EVENTDATE,EVENTCOUNT,EVENTNOWCOUNT,EVENTFINISH) values (2,'[CafeJo] 연말연시 럭키박스 이벤트','*회원정보를 꼭 확인하고 참여바랍니다.','1487058381529coffee-cup-with-some-beans.jpg',54,to_date('17/02/14','RR/MM/DD'),0,3,'startevent');
REM INSERTING into CAFEJO.EVENTMEMBER
SET DEFINE OFF;
Insert into CAFEJO.EVENTMEMBER (EMNUM,USERID,USERNAME,HP,MAIL,EVENTNUM,EVENTMEMBERDATE) values (3,'aaaa','에이','11111111111',null,1,to_date('17/02/16','RR/MM/DD'));
Insert into CAFEJO.EVENTMEMBER (EMNUM,USERID,USERNAME,HP,MAIL,EVENTNUM,EVENTMEMBERDATE) values (6,'aaaa','에이','11111111111',null,2,to_date('17/02/16','RR/MM/DD'));
Insert into CAFEJO.EVENTMEMBER (EMNUM,USERID,USERNAME,HP,MAIL,EVENTNUM,EVENTMEMBERDATE) values (1,'chakanlady','손님1','01094589584','gobaksa4@naver.com',2,to_date('17/02/16','RR/MM/DD'));
Insert into CAFEJO.EVENTMEMBER (EMNUM,USERID,USERNAME,HP,MAIL,EVENTNUM,EVENTMEMBERDATE) values (2,'chakanlady','손님1','01094589584','gobaksa4@naver.com',1,to_date('17/02/16','RR/MM/DD'));
Insert into CAFEJO.EVENTMEMBER (EMNUM,USERID,USERNAME,HP,MAIL,EVENTNUM,EVENTMEMBERDATE) values (4,'kk','케이케이','12356464678',null,1,to_date('17/02/16','RR/MM/DD'));
Insert into CAFEJO.EVENTMEMBER (EMNUM,USERID,USERNAME,HP,MAIL,EVENTNUM,EVENTMEMBERDATE) values (5,'kk','케이케이','12356464678',null,2,to_date('17/02/16','RR/MM/DD'));
REM INSERTING into CAFEJO.MEMBER
SET DEFINE OFF;
Insert into CAFEJO.MEMBER (USERID,PASSWD,USERNAME,GENDER,BIRTH,HP,HPGET,JOINDATE,MAIL,MAILGET,GRADE,CANCELMEMBER) values ('cafejoadmin','admin','어드민','여','1995-9-27','01012345678','yeshpget',to_date('17/02/10','RR/MM/DD'),'1234@naver.com','yesmailget','ADMIN','signup');
Insert into CAFEJO.MEMBER (USERID,PASSWD,USERNAME,GENDER,BIRTH,HP,HPGET,JOINDATE,MAIL,MAILGET,GRADE,CANCELMEMBER) values ('hee','hee','고희조','여','2017-2-10','01094589584','yeshpget',to_date('17/02/10','RR/MM/DD'),null,'yesmailget','USER','signup');
Insert into CAFEJO.MEMBER (USERID,PASSWD,USERNAME,GENDER,BIRTH,HP,HPGET,JOINDATE,MAIL,MAILGET,GRADE,CANCELMEMBER) values ('chakanlady','admin','손님1','여','1995-9-27','01094589584','yeshpget',to_date('17/02/13','RR/MM/DD'),'aaaa@naver.com','yesmailget','USER','signup');
Insert into CAFEJO.MEMBER (USERID,PASSWD,USERNAME,GENDER,BIRTH,HP,HPGET,JOINDATE,MAIL,MAILGET,GRADE,CANCELMEMBER) values ('kk','kk','케이케이','남','2017-2-10','12356464678','yeshpget',to_date('17/02/10','RR/MM/DD'),null,'yesmailget','USER','signup');
Insert into CAFEJO.MEMBER (USERID,PASSWD,USERNAME,GENDER,BIRTH,HP,HPGET,JOINDATE,MAIL,MAILGET,GRADE,CANCELMEMBER) values ('aaaa','aaaa','에이','남','2017-2-10','11111111111','yeshpget',to_date('17/02/10','RR/MM/DD'),null,'yesmailget','USER','signup');
Insert into CAFEJO.MEMBER (USERID,PASSWD,USERNAME,GENDER,BIRTH,HP,HPGET,JOINDATE,MAIL,MAILGET,GRADE,CANCELMEMBER) values ('hohoho','hohoho','호호호','남','2017-2-10','01010101010','yeshpget',to_date('17/02/10','RR/MM/DD'),null,'yesmailget','USER','signup');
Insert into CAFEJO.MEMBER (USERID,PASSWD,USERNAME,GENDER,BIRTH,HP,HPGET,JOINDATE,MAIL,MAILGET,GRADE,CANCELMEMBER) values ('admin','admin','어드민','남','2017-2-10','11111111111','yeshpget',to_date('17/02/10','RR/MM/DD'),null,'yesmailget','ADMIN','signup');
REM INSERTING into CAFEJO.MENU
SET DEFINE OFF;
Insert into CAFEJO.MENU (NUM,KIND,MENUNAME,HOTNCOLD,DESCRIPTION,CALORY,SACCHARIDE,PROTEIN,CAFFEINE,FAT,SODIUM,MENUDATE,FILENAME) values (1,'coffee','에소프레소 꼰빠냐','HOT','따뜻한 꼰빠냐 한잔<br /><br />!!CafeJo의 특급비밀이야~같이 먹어보세요!!<br />플레인 스콘플레인 스콘',10,0,0,10,0,0,to_date('17/02/13','RR/MM/DD'),'1486988298632hot_espresso con panna.jpg');
Insert into CAFEJO.MENU (NUM,KIND,MENUNAME,HOTNCOLD,DESCRIPTION,CALORY,SACCHARIDE,PROTEIN,CAFFEINE,FAT,SODIUM,MENUDATE,FILENAME) values (2,'coffee','카페라떼','HOT','진하고 풍부한 에스프레소에 시원한 스팀밀크가 어우러져 부드럽게즐길수 있는 커피<br /><br />!!CafeJo의 특급비밀이야~같이 먹어보세요!!<br />플레인 스콘플레인 스콘',126,9,9,5,10,0,to_date('17/02/13','RR/MM/DD'),'1486988340039ice_cafelatte.jpg');
Insert into CAFEJO.MENU (NUM,KIND,MENUNAME,HOTNCOLD,DESCRIPTION,CALORY,SACCHARIDE,PROTEIN,CAFFEINE,FAT,SODIUM,MENUDATE,FILENAME) values (3,'coffee','카페모카','HOT','진한 초콜릿이 에스프레소와 스팀우유에 섞인 너무 달지 않은 커피 음료<br /> ※고속도로 휴게소 매장의 경우 휘핑크림 미 제공',422,40,11,10,50,0,to_date('17/02/13','RR/MM/DD'),'1486988385899ice_caffemocha.jpg');
Insert into CAFEJO.MENU (NUM,KIND,MENUNAME,HOTNCOLD,DESCRIPTION,CALORY,SACCHARIDE,PROTEIN,CAFFEINE,FAT,SODIUM,MENUDATE,FILENAME) values (4,'coffee','카푸치노','HOT','에스프레소에 스팀 우유와 거품을 넣은 커피로 향과 맛이 라떼 보다 진하며 부드러운 거품이 일품인 커피 음료<br />!!CafeJo의 특급비밀이야~같이 먹어보세요!!<br />플레인 스콘플레인 스콘',80,5,0,5,5,5,to_date('17/02/13','RR/MM/DD'),'1486988417359ice_cappuccino.jpg');
Insert into CAFEJO.MENU (NUM,KIND,MENUNAME,HOTNCOLD,DESCRIPTION,CALORY,SACCHARIDE,PROTEIN,CAFFEINE,FAT,SODIUM,MENUDATE,FILENAME) values (5,'beverage','그린티라떼','COLD','쌉쌀한 그린티와 우유가 섞여 부드러운 그린티 라떼',40,10,0,2,10,0,to_date('17/02/14','RR/MM/DD'),'1487058175328greenteelatte.jpg');
Insert into CAFEJO.MENU (NUM,KIND,MENUNAME,HOTNCOLD,DESCRIPTION,CALORY,SACCHARIDE,PROTEIN,CAFFEINE,FAT,SODIUM,MENUDATE,FILENAME) values (6,'beverage','자몽에이드','HOT','자몽에이드',50,10,0,0,12,0,to_date('17/02/14','RR/MM/DD'),'1487058291178jamong.jpg');
Insert into CAFEJO.MENU (NUM,KIND,MENUNAME,HOTNCOLD,DESCRIPTION,CALORY,SACCHARIDE,PROTEIN,CAFFEINE,FAT,SODIUM,MENUDATE,FILENAME) values (7,'dessert','티라미슈','HOT','달콤 쌉쌀한 티라미슈',10,0,0,0,0,0,to_date('17/02/13','RR/MM/DD'),'1487206806365tira.jpg');
Insert into CAFEJO.MENU (NUM,KIND,MENUNAME,HOTNCOLD,DESCRIPTION,CALORY,SACCHARIDE,PROTEIN,CAFFEINE,FAT,SODIUM,MENUDATE,FILENAME) values (8,'coffee','아메리카노','HOT','에스프레소를 물에 희석시킨 커피로 진한 향과 맛을 부드럽게 즐기는 커피 음료<br /><br />!!CafeJo의 특급비밀이야~같이 먹어보세요!!<br />플레인 스콘플레인 스콘',5,0,0,10,0,0,to_date('17/02/13','RR/MM/DD'),'1486971980997ice_americano.jpg');
Insert into CAFEJO.MENU (NUM,KIND,MENUNAME,HOTNCOLD,DESCRIPTION,CALORY,SACCHARIDE,PROTEIN,CAFFEINE,FAT,SODIUM,MENUDATE,FILENAME) values (9,'coffee','에소프레소','HOT','신선한 원두에서 느낄 수있는 풍부한 크레마와 첫맛에서 느껴지는 부드러운 신맛, 드신 후 입안 가득 퍼지는 중후한 바디감이 매력적인 커피 음료.',20,0,0,10,0,0,to_date('17/02/13','RR/MM/DD'),'1486972052553hot_espresso.jpg');
Insert into CAFEJO.MENU (NUM,KIND,MENUNAME,HOTNCOLD,DESCRIPTION,CALORY,SACCHARIDE,PROTEIN,CAFFEINE,FAT,SODIUM,MENUDATE,FILENAME) values (10,'coffee','카페모카','HOT','진한 초콜릿이 에스프레소와 스팀우유에 섞인 너무 달지 않은 커피 음료 ※고속도로 휴게소 매장의 경우 휘핑크림 미 제공',422.5,36,11,10,8,0,to_date('17/02/13','RR/MM/DD'),'1486988196082hot_caffemocha.jpg');
Insert into CAFEJO.MENU (NUM,KIND,MENUNAME,HOTNCOLD,DESCRIPTION,CALORY,SACCHARIDE,PROTEIN,CAFFEINE,FAT,SODIUM,MENUDATE,FILENAME) values (11,'coffee','카푸치노','HOT','에스프레소에 스팀 우유와 거품을 넣은 커피로 향과 맛이 라떼 보다 진하며 부드러운 거품이 일품인 커피 음료',79,5,3,4,3,3,to_date('17/02/13','RR/MM/DD'),'1486988228294hot_cappuccino.jpg');
Insert into CAFEJO.MENU (NUM,KIND,MENUNAME,HOTNCOLD,DESCRIPTION,CALORY,SACCHARIDE,PROTEIN,CAFFEINE,FAT,SODIUM,MENUDATE,FILENAME) values (12,'coffee','캬라멜마끼야또','HOT','에스프레소에 달콤한 시럽과 스팀 우유가 섞여 풍부한 거품과 카라멜 소스로 토핑을 한 달콤한 커피음료',220,29.3,6,8,5,0,to_date('17/02/13','RR/MM/DD'),'1486988264189hot_caramelmacchiato.jpg');
Insert into CAFEJO.MENU (NUM,KIND,MENUNAME,HOTNCOLD,DESCRIPTION,CALORY,SACCHARIDE,PROTEIN,CAFFEINE,FAT,SODIUM,MENUDATE,FILENAME) values (13,'coffee','카페라뗴','HOT','맛있는 카페라떼 한잔 하실레예?',10,0,0,50,0,0,to_date('17/02/10','RR/MM/DD'),'1486713681806hot_cafelatte.jpg');
Insert into CAFEJO.MENU (NUM,KIND,MENUNAME,HOTNCOLD,DESCRIPTION,CALORY,SACCHARIDE,PROTEIN,CAFFEINE,FAT,SODIUM,MENUDATE,FILENAME) values (14,'dessert','프레즐','HOT','프레즐',10,20,30,0,20,50,to_date('17/02/15','RR/MM/DD'),'1487206678619pre.jpg');
REM INSERTING into CAFEJO.NOTICE
SET DEFINE OFF;
Insert into CAFEJO.NOTICE (NNUM,NTITLE,NCONTENT,NHIT,NOTICEDATE) values (1,'CafeJo에 오신것을 환영합니다.','CafeJo는 최고의 원두를 사용하여 최고의 커피를 만드는 브랜드가 될 것임을 약속드립니다.<br />감사합니다.<br />카페조 회원여러분.',6,to_date('17/02/13','RR/MM/DD'));
Insert into CAFEJO.NOTICE (NNUM,NTITLE,NCONTENT,NHIT,NOTICEDATE) values (2,'공지1','공지1',2,to_date('17/02/13','RR/MM/DD'));
Insert into CAFEJO.NOTICE (NNUM,NTITLE,NCONTENT,NHIT,NOTICEDATE) values (3,'공지2','공지2',1,to_date('17/02/13','RR/MM/DD'));
Insert into CAFEJO.NOTICE (NNUM,NTITLE,NCONTENT,NHIT,NOTICEDATE) values (4,'공지3','공지3',1,to_date('17/02/13','RR/MM/DD'));
Insert into CAFEJO.NOTICE (NNUM,NTITLE,NCONTENT,NHIT,NOTICEDATE) values (5,'공지4','공지4',1,to_date('17/02/13','RR/MM/DD'));
Insert into CAFEJO.NOTICE (NNUM,NTITLE,NCONTENT,NHIT,NOTICEDATE) values (6,'공지5','공지5',1,to_date('17/02/13','RR/MM/DD'));
Insert into CAFEJO.NOTICE (NNUM,NTITLE,NCONTENT,NHIT,NOTICEDATE) values (7,'[CafeJo] 공지6','공지6',4,to_date('17/02/13','RR/MM/DD'));
Insert into CAFEJO.NOTICE (NNUM,NTITLE,NCONTENT,NHIT,NOTICEDATE) values (8,'[CafeJo] 공지7','공지7',4,to_date('17/02/13','RR/MM/DD'));
Insert into CAFEJO.NOTICE (NNUM,NTITLE,NCONTENT,NHIT,NOTICEDATE) values (9,'[CafeJo] 공지8','공지8',3,to_date('17/02/13','RR/MM/DD'));
Insert into CAFEJO.NOTICE (NNUM,NTITLE,NCONTENT,NHIT,NOTICEDATE) values (10,'[CafeJo] 공지8','공지8',4,to_date('17/02/13','RR/MM/DD'));
Insert into CAFEJO.NOTICE (NNUM,NTITLE,NCONTENT,NHIT,NOTICEDATE) values (11,'[CafeJo] 공지9','공지9',7,to_date('17/02/13','RR/MM/DD'));
Insert into CAFEJO.NOTICE (NNUM,NTITLE,NCONTENT,NHIT,NOTICEDATE) values (12,'[CafeJo] 에버랜드XCafeJo 할로윈 세트메뉴 출시!','[CafeJo] 에버랜드XCafeJo 할로윈 세트메뉴 출시!',3,to_date('17/02/16','RR/MM/DD'));
Insert into CAFEJO.NOTICE (NNUM,NTITLE,NCONTENT,NHIT,NOTICEDATE) values (13,'[CafeJo] 해피 프라이스 데이 이벤트!','[CafeJo] 해피 프라이스 데이 이벤트!',1,to_date('17/02/16','RR/MM/DD'));
Insert into CAFEJO.NOTICE (NNUM,NTITLE,NCONTENT,NHIT,NOTICEDATE) values (14,'[CafeJo] 앵콜 이벤트!! 신규 회원을 위한 특별한 혜택','[CafeJo] 앵콜 이벤트!! 신규 회원을 위한 특별한 혜택',1,to_date('17/02/16','RR/MM/DD'));
Insert into CAFEJO.NOTICE (NNUM,NTITLE,NCONTENT,NHIT,NOTICEDATE) values (15,'[CafeJo] 오늘도 cafejo를 사랑해주신 고객님께 진심으로 감사드리며 설연휴 관련 공지를 알려드립니다.','오늘도 cafejo를 사랑해주신 고객님께 진심으로 감사드리며 설연휴 관련 공지를 알려드립니다.',4,to_date('17/02/16','RR/MM/DD'));
Insert into CAFEJO.NOTICE (NNUM,NTITLE,NCONTENT,NHIT,NOTICEDATE) values (16,'[CafeJo] 전 매장 메뉴가격 조정 안내','**가격조정안내**<br /><br />CafeJo 커피를 사랑해 주시는 고객님께 진심으로 감사말씀 드립니다.<br />',5,to_date('17/02/16','RR/MM/DD'));
REM INSERTING into CAFEJO.QNA
SET DEFINE OFF;
Insert into CAFEJO.QNA (QREFID,USERID,USERNAME,HP,MAIL,QNUM,QTITLE,QCONTENT,QNADATE,QREF,QLEVEL,QREPLY) values ('chakanlady','chakanlady','손님1','01094589584','gobaksa4@naver.com',1,'첫번째 문의입니다^^','잘부탁드립니다.',to_date('17/02/16','RR/MM/DD'),1,0,'yesreply');
Insert into CAFEJO.QNA (QREFID,USERID,USERNAME,HP,MAIL,QNUM,QTITLE,QCONTENT,QNADATE,QREF,QLEVEL,QREPLY) values ('chakanlady','chakanlady','손님1','01094589584','gobaksa4@naver.com',2,'두번째 창업 문의 입니다.^^','두번째 창업 문의 입니다.^^',to_date('17/02/16','RR/MM/DD'),2,0,'yesreply');
Insert into CAFEJO.QNA (QREFID,USERID,USERNAME,HP,MAIL,QNUM,QTITLE,QCONTENT,QNADATE,QREF,QLEVEL,QREPLY) values ('chakanlady','chakanlady','손님1','01094589584','gobaksa4@naver.com',3,'세번째 문의 입니다.','세번째 문의 입니다.',to_date('17/02/16','RR/MM/DD'),3,0,'noreply');
Insert into CAFEJO.QNA (QREFID,USERID,USERNAME,HP,MAIL,QNUM,QTITLE,QCONTENT,QNADATE,QREF,QLEVEL,QREPLY) values ('aaaa','aaaa','에이','11111111111',null,4,'이정도면 창업이 가능 할까요?','이정도면 창업이 가능 할까요?',to_date('17/02/16','RR/MM/DD'),4,0,'yesreply');
Insert into CAFEJO.QNA (QREFID,USERID,USERNAME,HP,MAIL,QNUM,QTITLE,QCONTENT,QNADATE,QREF,QLEVEL,QREPLY) values ('kk','kk','케이케이','12356464678',null,5,'창업 가능할까요?','창업 가능할까요?',to_date('17/02/16','RR/MM/DD'),5,0,'noreply');
Insert into CAFEJO.QNA (QREFID,USERID,USERNAME,HP,MAIL,QNUM,QTITLE,QCONTENT,QNADATE,QREF,QLEVEL,QREPLY) values ('aaaa','aaaa','에이','11111111111',null,6,'창업을 하고자 합니다.','창업을 하고자 합니다.',to_date('17/02/16','RR/MM/DD'),6,0,'noreply');
Insert into CAFEJO.QNA (QREFID,USERID,USERNAME,HP,MAIL,QNUM,QTITLE,QCONTENT,QNADATE,QREF,QLEVEL,QREPLY) values ('chakanlady','admin','어드민','11111111111',null,7,'전화로 답변 드렸습니다^^','전화로 답변 드렸습니다^^',to_date('17/02/16','RR/MM/DD'),1,1,'thisreply');
Insert into CAFEJO.QNA (QREFID,USERID,USERNAME,HP,MAIL,QNUM,QTITLE,QCONTENT,QNADATE,QREF,QLEVEL,QREPLY) values ('chakanlady','admin','어드민','11111111111',null,8,'걱정하지마세요^^ 저희 CafeJo 창업팀이 도와드리겠습니다.','걱정하지마세요^^ 저희 CafeJo 창업팀이 도와드리겠습니다.',to_date('17/02/16','RR/MM/DD'),2,1,'thisreply');
Insert into CAFEJO.QNA (QREFID,USERID,USERNAME,HP,MAIL,QNUM,QTITLE,QCONTENT,QNADATE,QREF,QLEVEL,QREPLY) values ('aaaa','admin','어드민','11111111111',null,9,'창업 충분히 가능합니다!','창업 충분히 가능합니다!',to_date('17/02/16','RR/MM/DD'),4,1,'thisreply');
REM INSERTING into CAFEJO.STORE
SET DEFINE OFF;
Insert into CAFEJO.STORE (STORENUM,STORENAME,STORECALL,OLDADRESS,NEWADRESS,STORETIME,CAROK,STOREMORE,STOREDATE) values (1,'대구 비산점','053-355-1234','대구광역시 서구 비산7동 1287-2','대구광역시 서구 비산7동 1287-2','10','10',null,to_date('17/02/15','RR/MM/DD'));
Insert into CAFEJO.STORE (STORENUM,STORENAME,STORECALL,OLDADRESS,NEWADRESS,STORETIME,CAROK,STOREMORE,STOREDATE) values (2,'일산 마두점','031-902-1234','경기도 고양시 일산동구 마두동 911-5','경기도 고양시 일산동구 산두로 5-12','평일.주말 : 24시간','불가능',null,to_date('17/02/15','RR/MM/DD'));
Insert into CAFEJO.STORE (STORENUM,STORENAME,STORECALL,OLDADRESS,NEWADRESS,STORETIME,CAROK,STOREMORE,STOREDATE) values (3,'강남점','02-950-9595','서울특별시 강남구 역삼동 649-14','서울특별시 강남구 테헤란로 119','평일: 9~10','가능',null,to_date('17/02/15','RR/MM/DD'));
Insert into CAFEJO.STORE (STORENUM,STORENAME,STORECALL,OLDADRESS,NEWADRESS,STORETIME,CAROK,STOREMORE,STOREDATE) values (4,'남양주점','031-000-1234','경기도 남양주시 별내4로 62','경기도 남양주시 별내4로 62','365일 24시간','가능',null,to_date('17/02/16','RR/MM/DD'));
Insert into CAFEJO.STORE (STORENUM,STORENAME,STORECALL,OLDADRESS,NEWADRESS,STORETIME,CAROK,STOREMORE,STOREDATE) values (5,'일산 웨스턴돔점','031-000-1234','경기도 고양시 일산동구 장항동 867','경기도 고양시 일산동구 장항동 867','365일 24시간','가능',null,sysdate);
--------------------------------------------------------
--  DDL for Index SYS_C0011657
--------------------------------------------------------

  CREATE UNIQUE INDEX "CAFEJO"."SYS_C0011657" ON "CAFEJO"."MEMBER" ("USERID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index SYS_C0011670
--------------------------------------------------------

  CREATE UNIQUE INDEX "CAFEJO"."SYS_C0011670" ON "CAFEJO"."MENU" ("NUM") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index SYS_C0011685
--------------------------------------------------------

  CREATE UNIQUE INDEX "CAFEJO"."SYS_C0011685" ON "CAFEJO"."QNA" ("QNUM") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index SYS_C0011710
--------------------------------------------------------

  CREATE UNIQUE INDEX "CAFEJO"."SYS_C0011710" ON "CAFEJO"."STORE" ("STORENUM") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index SYS_C0011720
--------------------------------------------------------

  CREATE UNIQUE INDEX "CAFEJO"."SYS_C0011720" ON "CAFEJO"."NOTICE" ("NNUM") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index SYS_C0011729
--------------------------------------------------------

  CREATE UNIQUE INDEX "CAFEJO"."SYS_C0011729" ON "CAFEJO"."EVENT" ("EVENTNUM") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index SYS_C0011735
--------------------------------------------------------

  CREATE UNIQUE INDEX "CAFEJO"."SYS_C0011735" ON "CAFEJO"."EVENTMEMBER" ("EMNUM") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  Constraints for Table EVENT
--------------------------------------------------------

  ALTER TABLE "CAFEJO"."EVENT" MODIFY ("ETITLE" NOT NULL ENABLE);
 
  ALTER TABLE "CAFEJO"."EVENT" MODIFY ("ECONTENT" NOT NULL ENABLE);
 
  ALTER TABLE "CAFEJO"."EVENT" MODIFY ("FILENAME" NOT NULL ENABLE);
 
  ALTER TABLE "CAFEJO"."EVENT" MODIFY ("EHIT" NOT NULL ENABLE);
 
  ALTER TABLE "CAFEJO"."EVENT" MODIFY ("EVENTDATE" NOT NULL ENABLE);
 
  ALTER TABLE "CAFEJO"."EVENT" MODIFY ("EVENTCOUNT" NOT NULL ENABLE);
 
  ALTER TABLE "CAFEJO"."EVENT" MODIFY ("EVENTNOWCOUNT" NOT NULL ENABLE);
 
  ALTER TABLE "CAFEJO"."EVENT" MODIFY ("EVENTFINISH" NOT NULL ENABLE);
 
  ALTER TABLE "CAFEJO"."EVENT" ADD PRIMARY KEY ("EVENTNUM")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table EVENTMEMBER
--------------------------------------------------------

  ALTER TABLE "CAFEJO"."EVENTMEMBER" MODIFY ("USERID" NOT NULL ENABLE);
 
  ALTER TABLE "CAFEJO"."EVENTMEMBER" MODIFY ("USERNAME" NOT NULL ENABLE);
 
  ALTER TABLE "CAFEJO"."EVENTMEMBER" MODIFY ("HP" NOT NULL ENABLE);
 
  ALTER TABLE "CAFEJO"."EVENTMEMBER" MODIFY ("EVENTNUM" NOT NULL ENABLE);
 
  ALTER TABLE "CAFEJO"."EVENTMEMBER" MODIFY ("EVENTMEMBERDATE" NOT NULL ENABLE);
 
  ALTER TABLE "CAFEJO"."EVENTMEMBER" ADD PRIMARY KEY ("EMNUM")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table MEMBER
--------------------------------------------------------

  ALTER TABLE "CAFEJO"."MEMBER" MODIFY ("PASSWD" NOT NULL ENABLE);
 
  ALTER TABLE "CAFEJO"."MEMBER" MODIFY ("USERNAME" NOT NULL ENABLE);
 
  ALTER TABLE "CAFEJO"."MEMBER" MODIFY ("GENDER" NOT NULL ENABLE);
 
  ALTER TABLE "CAFEJO"."MEMBER" MODIFY ("BIRTH" NOT NULL ENABLE);
 
  ALTER TABLE "CAFEJO"."MEMBER" MODIFY ("HP" NOT NULL ENABLE);
 
  ALTER TABLE "CAFEJO"."MEMBER" MODIFY ("HPGET" NOT NULL ENABLE);
 
  ALTER TABLE "CAFEJO"."MEMBER" MODIFY ("JOINDATE" NOT NULL ENABLE);
 
  ALTER TABLE "CAFEJO"."MEMBER" MODIFY ("MAILGET" NOT NULL ENABLE);
 
  ALTER TABLE "CAFEJO"."MEMBER" ADD PRIMARY KEY ("USERID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table MENU
--------------------------------------------------------

  ALTER TABLE "CAFEJO"."MENU" MODIFY ("KIND" NOT NULL ENABLE);
 
  ALTER TABLE "CAFEJO"."MENU" MODIFY ("MENUNAME" NOT NULL ENABLE);
 
  ALTER TABLE "CAFEJO"."MENU" MODIFY ("HOTNCOLD" NOT NULL ENABLE);
 
  ALTER TABLE "CAFEJO"."MENU" MODIFY ("DESCRIPTION" NOT NULL ENABLE);
 
  ALTER TABLE "CAFEJO"."MENU" MODIFY ("CALORY" NOT NULL ENABLE);
 
  ALTER TABLE "CAFEJO"."MENU" MODIFY ("SACCHARIDE" NOT NULL ENABLE);
 
  ALTER TABLE "CAFEJO"."MENU" MODIFY ("PROTEIN" NOT NULL ENABLE);
 
  ALTER TABLE "CAFEJO"."MENU" MODIFY ("CAFFEINE" NOT NULL ENABLE);
 
  ALTER TABLE "CAFEJO"."MENU" MODIFY ("FAT" NOT NULL ENABLE);
 
  ALTER TABLE "CAFEJO"."MENU" MODIFY ("SODIUM" NOT NULL ENABLE);
 
  ALTER TABLE "CAFEJO"."MENU" MODIFY ("MENUDATE" NOT NULL ENABLE);
 
  ALTER TABLE "CAFEJO"."MENU" MODIFY ("FILENAME" NOT NULL ENABLE);
 
  ALTER TABLE "CAFEJO"."MENU" ADD PRIMARY KEY ("NUM")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table NOTICE
--------------------------------------------------------

  ALTER TABLE "CAFEJO"."NOTICE" MODIFY ("NTITLE" NOT NULL ENABLE);
 
  ALTER TABLE "CAFEJO"."NOTICE" MODIFY ("NCONTENT" NOT NULL ENABLE);
 
  ALTER TABLE "CAFEJO"."NOTICE" MODIFY ("NHIT" NOT NULL ENABLE);
 
  ALTER TABLE "CAFEJO"."NOTICE" MODIFY ("NOTICEDATE" NOT NULL ENABLE);
 
  ALTER TABLE "CAFEJO"."NOTICE" ADD PRIMARY KEY ("NNUM")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table QNA
--------------------------------------------------------

  ALTER TABLE "CAFEJO"."QNA" MODIFY ("QREFID" NOT NULL ENABLE);
 
  ALTER TABLE "CAFEJO"."QNA" MODIFY ("USERID" NOT NULL ENABLE);
 
  ALTER TABLE "CAFEJO"."QNA" MODIFY ("USERNAME" NOT NULL ENABLE);
 
  ALTER TABLE "CAFEJO"."QNA" MODIFY ("HP" NOT NULL ENABLE);
 
  ALTER TABLE "CAFEJO"."QNA" MODIFY ("QTITLE" NOT NULL ENABLE);
 
  ALTER TABLE "CAFEJO"."QNA" MODIFY ("QCONTENT" NOT NULL ENABLE);
 
  ALTER TABLE "CAFEJO"."QNA" MODIFY ("QNADATE" NOT NULL ENABLE);
 
  ALTER TABLE "CAFEJO"."QNA" MODIFY ("QREF" NOT NULL ENABLE);
 
  ALTER TABLE "CAFEJO"."QNA" MODIFY ("QLEVEL" NOT NULL ENABLE);
 
  ALTER TABLE "CAFEJO"."QNA" ADD PRIMARY KEY ("QNUM")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table STORE
--------------------------------------------------------

  ALTER TABLE "CAFEJO"."STORE" MODIFY ("STORENAME" NOT NULL ENABLE);
 
  ALTER TABLE "CAFEJO"."STORE" MODIFY ("STORECALL" NOT NULL ENABLE);
 
  ALTER TABLE "CAFEJO"."STORE" MODIFY ("NEWADRESS" NOT NULL ENABLE);
 
  ALTER TABLE "CAFEJO"."STORE" MODIFY ("STORETIME" NOT NULL ENABLE);
 
  ALTER TABLE "CAFEJO"."STORE" MODIFY ("CAROK" NOT NULL ENABLE);
 
  ALTER TABLE "CAFEJO"."STORE" MODIFY ("STOREDATE" NOT NULL ENABLE);
 
  ALTER TABLE "CAFEJO"."STORE" ADD PRIMARY KEY ("STORENUM")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table EVENTMEMBER
--------------------------------------------------------

  ALTER TABLE "CAFEJO"."EVENTMEMBER" ADD FOREIGN KEY ("USERID")
	  REFERENCES "CAFEJO"."MEMBER" ("USERID") ENABLE;
 
  ALTER TABLE "CAFEJO"."EVENTMEMBER" ADD FOREIGN KEY ("EVENTNUM")
	  REFERENCES "CAFEJO"."EVENT" ("EVENTNUM") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table QNA
--------------------------------------------------------

  ALTER TABLE "CAFEJO"."QNA" ADD FOREIGN KEY ("QREFID")
	  REFERENCES "CAFEJO"."MEMBER" ("USERID") ENABLE;
