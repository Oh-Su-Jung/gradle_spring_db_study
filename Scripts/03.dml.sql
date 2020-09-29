/*INSERT ALL
	INTO MEMBER values('이소미', 'somi', '1234', 'gmd@naver.com', '010-2362-5157', 0, sysdate)
	INTO MEMBER values('하상오', 'sang12', '1234', 'ha12@naver.com', '010-5629-8888', 1, sysdate)
	INTO MEMBER values('김윤승', 'light', '1234', 'youn1004@naver.com', '010-9999-8282', 0, sysdate)
	SELECT 1 FROM DUAL;*/
	
INSERT INTO MEMBER(EMAIL, PASSWORD, NAME, REGDATE) VALUES('test@test.co.kr', '1111', 'test', '2020-09-28');

SELECT ID, EMAIL, PASSWORD, NAME, REGDATE FROM MEMBER where EMAIL = 'test@test.co.kr';

SELECT ID, EMAIL, PASSWORD, NAME, REGDATE FROM MEMBER;

UPCATE MEMBER SET EMAIL WHERE ID = ?;

DELETE FROM MEMBER WHERE ID = ?;

SELECT ID, EMAIL, PASSWORD, NAME, REGDATE FROM member;