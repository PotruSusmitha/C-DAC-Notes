### 2 Display the Highest, Lowest, Total & Average salary of all employee. Label the columns Maximum, Minimum, Total and Average respectively for each Department. Also round the result to the nearest whole number.

mysql> select min(SAL)"Minimum",max(SAL)"Maximum",sum(SAL)"TOTAL",avg(SAL)"Average" from EMP;
 
 OR
 
 SELECT sal,max(sal) "maximum",min(sal)"minimum",floor(sum(sal))"total", floor(avg(sal)) "Average" 
FROM emp;
+---------+---------+----------+-------------+
| Minimum | Maximum | TOTAL    | Average     |
+---------+---------+----------+-------------+
|  800.00 | 5000.00 | 29025.00 | 2073.214286 |
+---------+---------+----------+-------------+
1 row in set (0.02 sec)

### 3  Display Department no and number of managers working in that department. Label the column as ?Total Number of Managers? for each department.

mysql> SELECT deptno,count(mgr)"Total no of managers for each dept" FROM EMP  GROUP BY deptno;
+--------+------------------------------------+
| deptno | Total no of managers for each dept |
+--------+------------------------------------+
|     20 |                                  5 |
|     30 |                                  6 |
|     10 |                                  2 |
+--------+------------------------------------+
3 rows in set (0.23 sec)

### 4 Get the Department number, and sum of Salary of all non managers WHERE the sum is greater than 20000.


mysql> SELECT deptno,sum(sal) FROM EMP WHERE job !='MANAGER' GROUP BY deptno HAVING sum(sal)>7000;
+--------+----------+
| deptno | sum(sal) |
+--------+----------+
|     20 |  7900.00 |
+--------+----------+
1 row in set (0.02 sec)


### Q-2 -1 To find all managers with salary >1500

mysql> SELECT * FROM EMP  WHERE  sal >1500 and job='MANAGER';
+-------+-------+---------+------+------------+---------+------+--------+
| EMPNO | ENAME | JOB     | MGR  | HIREDATE   | SAL     | COMM | DEPTNO |
+-------+-------+---------+------+------------+---------+------+--------+
|  7566 | JONES | MANAGER | 7839 | 1981-04-02 | 2975.00 | NULL |     20 |
|  7698 | BLAKE | MANAGER | 7839 | 1981-05-01 | 2850.00 | NULL |     30 |
|  7782 | CLARK | MANAGER | 7839 | 1981-06-09 | 2450.00 | NULL |     10 |
+-------+-------+---------+------+------------+---------+------+--------+
3 rows in set (0.02 sec)


### 2 ist all employees with sal >1360 and < 3000

mysql> SELECT * FROM EMP 
    -> WHERE sal>=1360 and sal<=3000;
+-------+--------+----------+------+------------+---------+--------+--------+
| EMPNO | ENAME  | JOB      | MGR  | HIREDATE   | SAL     | COMM   | DEPTNO |
+-------+--------+----------+------+------------+---------+--------+--------+
|  7499 | ALLEN  | SALESMAN | 7698 | 1981-02-20 | 1600.00 | 300.00 |     30 |
|  7566 | JONES  | MANAGER  | 7839 | 1981-04-02 | 2975.00 |   NULL |     20 |
|  7698 | BLAKE  | MANAGER  | 7839 | 1981-05-01 | 2850.00 |   NULL |     30 |
|  7782 | CLARK  | MANAGER  | 7839 | 1981-06-09 | 2450.00 |   NULL |     10 |
|  7788 | SCOTT  | ANALYST  | 7566 | 1982-12-09 | 3000.00 |   NULL |     20 |
|  7844 | TURNER | SALESMAN | 7698 | 1981-09-08 | 1500.00 |   0.00 |     30 |
|  7902 | FORD   | ANALYST  | 7566 | 1981-12-03 | 3000.00 |   NULL |     20 |
+-------+--------+----------+------+------------+---------+--------+--------+
7 rows in set (0.00 sec)

### 3

mysql> SELECT * FROM EMP
    -> WHERE sal > 1250 and sal < 3000;
+-------+--------+----------+------+------------+---------+--------+--------+
| EMPNO | ENAME  | JOB      | MGR  | HIREDATE   | SAL     | COMM   | DEPTNO |
+-------+--------+----------+------+------------+---------+--------+--------+
|  7499 | ALLEN  | SALESMAN | 7698 | 1981-02-20 | 1600.00 | 300.00 |     30 |
|  7566 | JONES  | MANAGER  | 7839 | 1981-04-02 | 2975.00 |   NULL |     20 |
|  7698 | BLAKE  | MANAGER  | 7839 | 1981-05-01 | 2850.00 |   NULL |     30 |
|  7782 | CLARK  | MANAGER  | 7839 | 1981-06-09 | 2450.00 |   NULL |     10 |
|  7844 | TURNER | SALESMAN | 7698 | 1981-09-08 | 1500.00 |   0.00 |     30 |
|  7934 | MILLER | CLERK    | 7782 | 1982-01-23 | 1300.00 |   NULL |     10 |
+-------+--------+----------+------+------------+---------+--------+--------+
6 rows in set (0.02 sec)

### 4

mysql> SELECT * FROM EMP
    -> WHERE sal=3000 or sal=1250 or sal=2500;
+-------+--------+----------+------+------------+---------+---------+--------+
| EMPNO | ENAME  | JOB      | MGR  | HIREDATE   | SAL     | COMM    | DEPTNO |
+-------+--------+----------+------+------------+---------+---------+--------+
|  7521 | WARD   | SALESMAN | 7698 | 1981-02-22 | 1250.00 |  500.00 |     30 |
|  7654 | MARTIN | SALESMAN | 7698 | 1981-09-28 | 1250.00 | 1400.00 |     30 |
|  7788 | SCOTT  | ANALYST  | 7566 | 1982-12-09 | 3000.00 |    NULL |     20 |
|  7902 | FORD   | ANALYST  | 7566 | 1981-12-03 | 3000.00 |    NULL |     20 |
+-------+--------+----------+------+------------+---------+---------+--------+
4 rows in set (0.00 sec)

### 5

mysql> SELECT * FROM EMP 
    -> WHERE ename="SMITH";
+-------+-------+-------+------+------------+--------+------+--------+
| EMPNO | ENAME | JOB   | MGR  | HIREDATE   | SAL    | COMM | DEPTNO |
+-------+-------+-------+------+------------+--------+------+--------+
|  7369 | SMITH | CLERK | 7902 | 1980-12-17 | 800.00 | NULL |     20 |
+-------+-------+-------+------+------------+--------+------+--------+
1 row in set (0.09 sec)

### 6

mysql> SELECT * FROM EMP 
    -> WHERE ENAME LIKE"S%";
+-------+-------+---------+------+------------+---------+------+--------+
| EMPNO | ENAME | JOB     | MGR  | HIREDATE   | SAL     | COMM | DEPTNO |
+-------+-------+---------+------+------------+---------+------+--------+
|  7369 | SMITH | CLERK   | 7902 | 1980-12-17 |  800.00 | NULL |     20 |
|  7788 | SCOTT | ANALYST | 7566 | 1982-12-09 | 3000.00 | NULL |     20 |
+-------+-------+---------+------+------------+---------+------+--------+
2 rows in set (0.10 sec)


### 7

mysql> SELECT * FROM EMP
    -> WHERE ename LIKE "%s";
+-------+-------+---------+------+------------+---------+------+--------+
| EMPNO | ENAME | JOB     | MGR  | HIREDATE   | SAL     | COMM | DEPTNO |
+-------+-------+---------+------+------------+---------+------+--------+
|  7566 | JONES | MANAGER | 7839 | 1981-04-02 | 2975.00 | NULL |     20 |
|  7876 | ADAMS | CLERK   | 7788 | 1983-01-12 | 1100.00 | NULL |     20 |
|  7900 | JAMES | CLERK   | 7698 | 1981-12-03 |  950.00 | NULL |     30 |
+-------+-------+---------+------+------------+---------+------+--------+
3 rows in set (0.00 sec)

### 8

mysql> SELECT * FROM EMP WHERE ename LIKE "_I%";
+-------+--------+-----------+------+------------+---------+------+--------+
| EMPNO | ENAME  | JOB       | MGR  | HIREDATE   | SAL     | COMM | DEPTNO |
+-------+--------+-----------+------+------------+---------+------+--------+
|  7839 | KING   | PRESIDENT | NULL | 1981-11-17 | 5000.00 | NULL |     10 |
|  7934 | MILLER | CLERK     | 7782 | 1982-01-23 | 1300.00 | NULL |     10 |
+-------+--------+-----------+------+------------+---------+------+--------+
2 rows in set (0.00 sec)

### 9

mysql> SELECT * FROM EMP WHERE ename LIKE "A%L%N";
+-------+-------+----------+------+------------+---------+--------+--------+
| EMPNO | ENAME | JOB      | MGR  | HIREDATE   | SAL     | COMM   | DEPTNO |
+-------+-------+----------+------+------------+---------+--------+--------+
|  7499 | ALLEN | SALESMAN | 7698 | 1981-02-20 | 1600.00 | 300.00 |     30 |
+-------+-------+----------+------+------------+---------+--------+--------+
1 row in set (0.00 sec)

### 10

mysql> SELECT * FROM EMP  WHERE ename LIKE "A_B%P%";
Empty set (0.01 sec)


### 11

mysql> SELECT * FROM EMP WHERE ename LIKE "A%" OR ename LIKE "S%" OR ename LIKE "W%";
+-------+-------+----------+------+------------+---------+--------+--------+
| EMPNO | ENAME | JOB      | MGR  | HIREDATE   | SAL     | COMM   | DEPTNO |
+-------+-------+----------+------+------------+---------+--------+--------+
|  7369 | SMITH | CLERK    | 7902 | 1980-12-17 |  800.00 |   NULL |     20 |
|  7499 | ALLEN | SALESMAN | 7698 | 1981-02-20 | 1600.00 | 300.00 |     30 |
|  7521 | WARD  | SALESMAN | 7698 | 1981-02-22 | 1250.00 | 500.00 |     30 |
|  7788 | SCOTT | ANALYST  | 7566 | 1982-12-09 | 3000.00 |   NULL |     20 |
|  7876 | ADAMS | CLERK    | 7788 | 1983-01-12 | 1100.00 |   NULL |     20 |
+-------+-------+----------+------+------------+---------+--------+--------+
5 rows in set (0.00 sec)

### 12
mysql> select max(sal),min(sal),job from EMP group by job;
+----------+----------+-----------+
| max(sal) | min(sal) | job       |
+----------+----------+-----------+
|  1300.00 |   800.00 | CLERK     |
|  1600.00 |  1250.00 | SALESMAN  |
|  2975.00 |  2450.00 | MANAGER   |
|  3000.00 |  3000.00 | ANALYST   |
|  5000.00 |  5000.00 | PRESIDENT |
+----------+----------+-----------+
5 rows in set (0.53 sec)

### 13

mysql> SELECT * FROM EMP WHERE COMM is NULL;
+-------+--------+-----------+------+------------+---------+------+--------+
| EMPNO | ENAME  | JOB       | MGR  | HIREDATE   | SAL     | COMM | DEPTNO |
+-------+--------+-----------+------+------------+---------+------+--------+
|  7369 | SMITH  | CLERK     | 7902 | 1980-12-17 |  800.00 | NULL |     20 |
|  7566 | JONES  | MANAGER   | 7839 | 1981-04-02 | 2975.00 | NULL |     20 |
|  7698 | BLAKE  | MANAGER   | 7839 | 1981-05-01 | 2850.00 | NULL |     30 |
|  7782 | CLARK  | MANAGER   | 7839 | 1981-06-09 | 2450.00 | NULL |     10 |
|  7788 | SCOTT  | ANALYST   | 7566 | 1982-12-09 | 3000.00 | NULL |     20 |
|  7839 | KING   | PRESIDENT | NULL | 1981-11-17 | 5000.00 | NULL |     10 |
|  7876 | ADAMS  | CLERK     | 7788 | 1983-01-12 | 1100.00 | NULL |     20 |
|  7900 | JAMES  | CLERK     | 7698 | 1981-12-03 |  950.00 | NULL |     30 |
|  7902 | FORD   | ANALYST   | 7566 | 1981-12-03 | 3000.00 | NULL |     20 |
|  7934 | MILLER | CLERK     | 7782 | 1982-01-23 | 1300.00 | NULL |     10 |
+-------+--------+-----------+------+------------+---------+------+--------+
10 rows in set (0.02 sec)

### 14

mysql> SELECT SUM(sal) FROM EMP WHERE deptno=10;
+----------+
| SUM(sal) |
+----------+
|  8750.00 |
+----------+
1 row in set (0.00 sec)

### 15

mysql> select max(sal),avg(sal) from EMP group by DEPTNO;
+----------+-------------+
| max(sal) | avg(sal)    |
+----------+-------------+
|  3000.00 | 2175.000000 |
|  2850.00 | 1566.666667 |
|  5000.00 | 2916.666667 |
+----------+-------------+
3 rows in set (0.57 sec)


### 16

mysql> select max(sal),avg(sal),deptno from EMP group by DEPTNO;
+----------+-------------+--------+
| max(sal) | avg(sal)    | deptno |
+----------+-------------+--------+
|  3000.00 | 2175.000000 |     20 |
|  2850.00 | 1566.666667 |     30 |
|  5000.00 | 2916.666667 |     10 |
+----------+-------------+--------+
3 rows in set (0.00 sec)

### 17


mysql> select sum(sal),deptno from EMP group by deptno having sum(sal)>3000;
+----------+--------+
| sum(sal) | deptno |
+----------+--------+
| 10875.00 |     20 |
|  9400.00 |     30 |
|  8750.00 |     10 |
+----------+--------+
3 rows in set (0.03 sec)


### 18

mysql>  SELECT count(*) FROM EMP GROUP BY deptno HAVING count(*)<=5;
+----------+
| count(*) |
+----------+
|        5 |
|        3 |
+----------+
2 rows in set (0.00 sec)

### 19

mysql> SELECT COUNT(*) FROM EMP WHERE sal>2000 GROUP BY job;
+----------+
| COUNT(*) |
+----------+
|        3 |
|        2 |
|        1 |
+----------+
3 rows in set (0.03 sec)

### 20

mysql> SELECT lpad(ename,15,'*'),lpad(job,15,'*')  FROM EMP;
+--------------------+------------------+
| lpad(ename,15,'*') | lpad(job,15,'*') |
+--------------------+------------------+
| **********SMITH    | **********CLERK  |
| **********ALLEN    | *******SALESMAN  |
| ***********WARD    | *******SALESMAN  |
| **********JONES    | ********MANAGER  |
| *********MARTIN    | *******SALESMAN  |
| **********BLAKE    | ********MANAGER  |
| **********CLARK    | ********MANAGER  |
| **********SCOTT    | ********ANALYST  |
| ***********KING    | ******PRESIDENT  |
| *********TURNER    | *******SALESMAN  |
| **********ADAMS    | **********CLERK  |
| **********JAMES    | **********CLERK  |
| ***********FORD    | ********ANALYST  |
| *********MILLER    | **********CLERK  |
+--------------------+------------------+
14 rows in set (0.00 sec)



