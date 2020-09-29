SELECT NAME, USERID, PWD, EMAIL, PHONE, ADMIN, JOINDATE
  FROM MEMBER;
  
INSERT INTO MEMBER(NAME, USERID, PWD, EMAIL, PHONE, ADMIN)
VALUES('�ڱԿ�', 'parkgy', '1234', 'pgy@gmail.com', '010-1111-2222', 0);
  
SELECT NAME, USERID, PWD, EMAIL, PHONE, ADMIN, JOINDATE
  FROM MEMBER
 WHERE USERID = 'parkgy';

UPDATE MEMBER
   SET NAME='��ä��', PWD='5678', EMAIL='mcw@gamil.com', PHONE='010-3333-5555', ADMIN=1, JOINDATE='2020-08-20'
 WHERE USERID = 'parkgy';
 
DELETE
  FROM MEMBER
 WHERE USERID = 'parkgy';
 
-- usercheck
SELECT PWD FROM MEMBER WHERE USERID = 'somi';
  

-- login
SELECT NAME, USERID, EMAIL, PHONE, ADMIN, JOINDATE 
  FROM MEMBER
 WHERE USERID = 'somi' AND pwd = '1111';
 

SELECT TITLE_NO, TITLE_NAME FROM TITLE;

SELECT MAX(TITLE_NO)+1 FROM TITLE;


SELECT DEPT_NO, DEPT_NAME, FLOOR FROM DEPARTMENT;


CREATE OR REPLACE VIEW VW_EMPLOYEE_JOIN AS 
SELECT e.EMP_NO, e.EMP_NAME, e.TNO, e.MANAGER , e.SALARY, e.DNO, e.REGDATE, e.EMAIL , e.TEL , e.PIC_URL,  t.TITLE_NAME, d.DEPT_NAME, m.EMP_NAME MANAGER_NAME
  FROM EMPLOYEE e JOIN TITLE t ON e.TNO = t.TITLE_NO 
       LEFT JOIN EMPLOYEE m ON e.MANAGER = m.EMP_NO 
       JOIN DEPARTMENT d ON e.DNO = d.DEPT_NO; 


SELECT EMP_NO, EMP_NAME, TNO, MANAGER, SALARY, DNO, REGDATE, EMAIL, TEL, PIC_URL, TITLE_NAME, DEPT_NAME, MANAGER_NAME 
  FROM VW_EMPLOYEE_JOIN;
  
 
 
INSERT INTO EMPLOYEE(EMP_NO, EMP_NAME, TNO, MANAGER, SALARY, DNO, REGDATE, EMAIL, PASSWD) VALUES(1004, 'õ��', 5, 3426, 1500000, 1, '2020-09-09', 'test6@test.co.kr', '1234');

SELECT * FROM EMPLOYEE;

DELETE FROM EMPLOYEE WHERE EMP_NO = 1004;



SELECT EMP_NO, EMP_NAME, TNO, MANAGER, SALARY, DNO, REGDATE, EMAIL, TEL, PIC_URL, TITLE_NAME, DEPT_NAME, MANAGER_NAME  FROM VW_EMPLOYEE_JOIN WHERE DNO = 4;


DROP SEQUENCE tri_test_seq;
DROP TABLE TRI_TEST;

CREATE TABLE tri_test(
	NO NUMBER PRIMARY KEY,
	TXT VARCHAR2(20)
);

CREATE SEQUENCE tri_test_seq
	START WITH 1
	INCREMENT BY 1;
	

-- Ʈ���Ÿ� �̿��Ͽ� �ڵ����� ��ȣ�� �Էµǵ��� 
CREATE OR REPLACE TRIGGER TRI_TRI_TEST_AUTOSEQ
BEFORE INSERT ON tri_test --���̺� �μ�Ʈ���� �����ϰ� �μ�Ʈó��
FOR EACH ROW
BEGIN 
	IF Inserting AND :NEW.NO IS NULL THEN --�μ�Ʈ������ �Էµ� ���ο�(new) ��(no)�� ���ٸ�
		SELECT tri_test_seq.NEXTVAL INTO :NEW.NO FROM DUAL; --no�� �־��ְڴ�
	END IF;
END;

INSERT INTO TRI_TEST values(NULL, 'test');

SELECT * FROM TRI_TEST;

INSERT INTO TRI_TEST(TXT ) values('test');