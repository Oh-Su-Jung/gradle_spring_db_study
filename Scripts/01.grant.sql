-- ���� �߰� �� ���� �ο�


-- ������ Ȯ��
SELECT USER FROM DUAL;

-- ���� ����
DROP USER spring5 CASCADE;
CREATE USER spring5 IDENTIFIED BY rootroot;

-- ���� �߰�
GRANT CONNECT, RESOURCE, CREATE SYNONYM, CREATE VIEW TO spring5;

-- ���� Ȯ��
SELECT *
  FROM DBA_USERS
WHERE USERNAME = 'SPRING5';