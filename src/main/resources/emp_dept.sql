DROP TABLE if exists emp;
DROP TABLE if exists dept;

CREATE TABLE dept (	
	deptno INTEGER, 
	dname VARCHAR(30), 
	loc VARCHAR(30), 
	PRIMARY KEY (deptno)
); 

CREATE TABLE emp(	
	empno INTEGER, 
	ename VARCHAR(30), 
	job VARCHAR(30), 
	mgr INTEGER, 
	hiredate DATE, 
	sal INTEGER, 
	comm INTEGER, 
	deptno INTEGER, 
	PRIMARY KEY (empno),
	FOREIGN KEY (deptno) REFERENCES dept(deptno)
);
 

INSERT INTO dept (deptno,dname,loc) VALUES (10,'ACCOUNTING','NEW YORK');
INSERT INTO dept (deptno,dname,loc) VALUES (20,'RESEARCH','DALLAS');
INSERT INTO dept (deptno,dname,loc) VALUES (30,'SALES','CHICAGO');
INSERT INTO dept (deptno,dname,loc) VALUES (40,'OPERATIONS','BOSTON');

INSERT INTO emp (empno,ename,job,mgr,hiredate,sal,comm,deptno) VALUES (7369,'SMITH','CLERK',7902,'1980-12-17',800,null,20);
INSERT INTO emp (empno,ename,job,mgr,hiredate,sal,comm,deptno) VALUES (7499,'ALLEN','SALESMAN',7698,'1981-02-20',1600,300,30);
INSERT INTO emp (empno,ename,job,mgr,hiredate,sal,comm,deptno) VALUES (7521,'WARD','SALESMAN',7698,'1981-02-22', 1250,500,30);
INSERT INTO emp (empno,ename,job,mgr,hiredate,sal,comm,deptno) VALUES (7566,'JONES','MANAGER',7839,'1981-04-02',2975,null,20);
INSERT INTO emp (empno,ename,job,mgr,hiredate,sal,comm,deptno) VALUES (7654,'MARTIN','SALESMAN',7698,'1981-09-28',1250,1400,30);
INSERT INTO emp (empno,ename,job,mgr,hiredate,sal,comm,deptno) VALUES (7698,'BLAKE','MANAGER',7839,'1981-05-01',2850,null,30);
INSERT INTO emp (empno,ename,job,mgr,hiredate,sal,comm,deptno) VALUES (7782,'CLARK','MANAGER',7839,'1981-06-09',2450,null,10);
INSERT INTO emp (empno,ename,job,mgr,hiredate,sal,comm,deptno) VALUES (7788,'SCOTT','ANALYST',7566,'1987-04-19',3000,null,20);
INSERT INTO emp (empno,ename,job,mgr,hiredate,sal,comm,deptno) VALUES (7839,'KING','PRESIDENT',null,'1981-11-17',5000,null,10);
INSERT INTO emp (empno,ename,job,mgr,hiredate,sal,comm,deptno) VALUES (7844,'TURNER','SALESMAN',7698,'1981-09-08',1500,0,30);
INSERT INTO emp (empno,ename,job,mgr,hiredate,sal,comm,deptno) VALUES (7876,'ADAMS','CLERK',7788,'1987-05-23',1100,null,20);
INSERT INTO emp (empNO,ENAME,JOB,MGR,HIREDATE,SAL,COMM,deptno) VALUES (7900,'JAMES','CLERK',7698,'1981-12-03',950,null,30);
INSERT INTO emp (empno,ename,job,mgr,hiredate,sal,comm,deptno) VALUES (7902,'FORD','ANALYST',7566,'1981-12-03',3000,null,20);
INSERT INTO emp (empNO,ENAME,JOB,MGR,HIREDATE,SAL,COMM,deptno) VALUES (7934,'MILLER','CLERK',7782,'1982-01-23',1300,null,10);

commit;