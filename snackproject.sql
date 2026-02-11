create table S_USERS (
             USER_NO varchar2(100) primary key --사용자넘버
            ,USER_ID varchar2(100) not null --사용자아이디
            ,USER_PW varchar2(100) not null --사용자비밀번호
            ,USER_NAME varchar2(20) not null --사용자이름
            ,TEL number(30) not null --폰번호
            ,EMAIL varchar2(100) --이메일
            ,ADDRESS varchar2(300) not null --주소
);

create table S_LOGIN (
             LOGIN_NO varchar2(100) primary key --로그인넘버
            ,LOGIN_ID varchar2(100) not null --아이디
            ,LOGIN_PW varchar2(100) not null --비밀번호
);

insert into S_LOGIN (LOGIN_NO, LOGIN_ID, LOGIN_PW)
values ('L0001', 'asd', 1234);

DROP TABLE KIND;
create table KIND ( --상품종류
             KIND_NO varchar2(100) primary key --상품넘버
            ,KIND varchar2(100) --간식종류
);

insert into KIND (KIND_NO, KIND)
values ('K0001', '과자');
insert into KIND (KIND_NO, KIND)
values ('K0002', '초콜릿');
insert into KIND (KIND_NO, KIND)
values ('K0003', '젤리');

create table S_PRODUCT (
             SPRODUCT_NO VARCHAR2(30) PRIMARY KEY --상품넘버
            ,SPRODUCT_NAME VARCHAR2(50) NOT NULL--상품명
            ,SPRODUCT_PRICE NUMBER(30) NOT NULL--상품가격
            ,KCAL VARCHAR2(30) NOT NULL--칼로리
            ,EDATE DATE DEFAULT SYSDATE NOT NULL--유통기한 Expiration date
);

alter table S_PRODUCT add KIND VARCHAR2(20);
alter table S_PRODUCT add RIVIEW VARCHAR2(20);

insert into S_PRODUCT (SPRODUCT_NO, SPRODUCT_NAME, SPRODUCT_PRICE, KCAL, EDATE, KIND)
VALUES ('S0001', '홈런볼', 1400, '324KCAL', sysdate, 'K0001');
insert into S_PRODUCT (SPRODUCT_NO, SPRODUCT_NAME, SPRODUCT_PRICE, KCAL, EDATE, KIND)
VALUES ('S0002', '사또밥', 1200, '247KCAL', sysdate, 'K0001');
insert into S_PRODUCT (SPRODUCT_NO, SPRODUCT_NAME, SPRODUCT_PRICE, KCAL, EDATE, KIND)
VALUES ('S0003', '스윙칩', 1800, '482KCAL', sysdate, 'K0001');
insert into S_PRODUCT (SPRODUCT_NO, SPRODUCT_NAME, SPRODUCT_PRICE, KCAL, EDATE, KIND)
VALUES ('S0004', '페레로로쉐', 3400, '543KCAL', sysdate, 'K0002');
insert into S_PRODUCT (SPRODUCT_NO, SPRODUCT_NAME, SPRODUCT_PRICE, KCAL, EDATE, KIND)
VALUES ('S0005', '두바이초콜릿', 12000, '1158KCAL', sysdate, 'K0002');
insert into S_PRODUCT (SPRODUCT_NO, SPRODUCT_NAME, SPRODUCT_PRICE, KCAL, EDATE, KIND)
VALUES ('S0006', '가나초콜릿', 1000, '246KCAL', sysdate, 'K0002');
insert into S_PRODUCT (SPRODUCT_NO, SPRODUCT_NAME, SPRODUCT_PRICE, KCAL, EDATE, KIND)
VALUES ('S0007', '하리보', 700, '125KCAL', sysdate, 'K0003');
insert into S_PRODUCT (SPRODUCT_NO, SPRODUCT_NAME, SPRODUCT_PRICE, KCAL, EDATE, KIND)
VALUES ('S0008', '줄넘기젤리', 400, '75KCAL', sysdate, 'K0003');
insert into S_PRODUCT (SPRODUCT_NO, SPRODUCT_NAME, SPRODUCT_PRICE, KCAL, EDATE, KIND)
VALUES ('S0009', '수수깡젤리', 2500, '267KCAL', sysdate, 'K0003');

UPDATE S_PRODUCT
SET RIVIEW = 43
WHERE SPRODUCT_NO = 'S0009';

ALTER table S_PRODUCT RENAME COLUMN RIVIEW to REVIEW;

SELECT * from S_USERS;
SELECT * from S_LOGIN;
SELECT * from KIND;
SELECT * from S_PRODUCT;