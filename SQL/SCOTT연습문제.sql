--巩力1
SELECT empno, ename, sal
FROM  emp
WHERE deptno = 10;

--巩力2
SELECT ename, hiredate, deptno
FROM emp
WHERE empno = 7369;

--巩力3
SELECT empno, ename, job, mgr, hiredate, sal, comm, deptno
FROM emp
WHERE ename = 'ALLEN';

--巩力4
SELECT ename, deptno, sal
FROM emp
WHERE hiredate = '81/02/20';

--巩力5
SELECT empno, ename, job, mgr, hiredate, sal, comm, deptno
FROM emp
WHERE job != 'MANAGER';

--巩力6
SELECT empno, ename, job, mgr, hiredate, sal, comm, deptno
FROM emp
WHERE hiredate >= '81/04/02';

--巩力7
SELECT ename, sal, deptno
FROM emp
WHERE sal >= 800;

--巩力8
SELECT empno, ename, job, mgr, hiredate, sal, comm, deptno
FROM emp
WHERE deptno >= 20;

--巩力9
SELECT empno, ename, job, mgr, hiredate, sal, comm, deptno
FROM emp
WHERE ename > 'L';

--巩力10
SELECT empno, ename, job, mgr, hiredate, sal, comm, deptno
FROM emp
WHERE hiredate < '81/12/09';

--巩力11
SELECT empno, ename
FROM emp
WHERE empno <= 7698;

--巩力12
SELECT ename, sal, deptno
FROM emp
WHERE hiredate BETWEEN '81/04/02' AND '82/12/09';

--巩力13
SELECT empno, job, sal
FROM emp
WHERE sal BETWEEN 1601 AND 2999;

SELECT empno, job, sal
FROM emp
WHERE sal > 1600
AND sal < 3000;


--巩力14
SELECT empno, ename, job, mgr, hiredate, sal, comm, deptno
FROM emp
WHERE empno NOT BETWEEN 7654 AND 7782;

--巩力15
SELECT empno, ename, job, mgr, hiredate, sal, comm, deptno
FROM emp
WHERE ename BETWEEN 'B' AND 'J';

--巩力16
SELECT empno, ename, job, mgr, hiredate, sal, comm, deptno
FROM emp
WHERE NOT (hiredate > '81/01/01'
AND hiredate < '81/12/31');

SELECT empno, ename, job, mgr, hiredate, sal, comm, deptno
FROM emp
WHERE hiredate NOT BETWEEN '81/01/01' AND '81/12/31';

--巩力17
SELECT empno, ename, job, mgr, hiredate, sal, comm, deptno
FROM emp
WHERE job = 'MANAGER'
OR job = 'SALESMAN';

--巩力18
SELECT ename, empno, deptno
FROM emp
WHERE deptno NOT IN(20, 30);

--巩力19
SELECT empno, ename, hiredate, deptno
FROM emp
WHERE ename LIKE 'S%';

--巩力20
SELECT empno, ename, job, mgr, hiredate, sal, comm, deptno
FROM emp
WHERE hiredate BETWEEN '81/01/01' AND '81/12/31';

--巩力21
SELECT empno, ename, job, mgr, hiredate, sal, comm, deptno
FROM emp
WHERE ename LIKE '%S%';

--巩力22
SELECT empno, ename, job, mgr, hiredate, sal, comm, deptno
FROM emp
WHERE ename LIKE 'M%'
AND ename LIKE '%N';

SELECT empno, ename, job, mgr, hiredate, sal, comm, deptno
FROM emp
WHERE ename LIKE 'M____N';

--巩力23
SELECT empno, ename, job, mgr, hiredate, sal, comm, deptno
FROM emp
WHERE ename LIKE '_A%';

--巩力24
SELECT empno, ename, job, mgr, hiredate, sal, comm, deptno
FROM emp
WHERE comm IS NULL;

--巩力25
SELECT empno, ename, job, mgr, hiredate, sal, comm, deptno
FROM emp
WHERE comm IS NOT NULL;

--巩力26
SELECT ename, deptno, sal
FROM emp
WHERE deptno = 30
AND sal >= 1500;

--巩力27
SELECT empno, ename, deptno
FROM emp
WHERE ename LIKE 'K%'
OR deptno = 30;

--巩力28
SELECT empno, ename, job, mgr, hiredate, sal, comm, deptno
FROM emp
WHERE sal >= 1500
AND deptno = 30
AND job = 'MANAGER';

--巩力29
SELECT empno, ename, job, mgr, hiredate, sal, comm, deptno
FROM emp
WHERE deptno = 30
ORDER BY empno ASC;

--巩力30
SELECT empno, ename, job, mgr, hiredate, sal, comm, deptno
FROM emp
ORDER BY sal DESC;

--巩力31
SELECT empno, ename, job, mgr, hiredate, sal, comm, deptno
FROM emp
ORDER BY deptno, sal DESC;

--巩力32
SELECT deptno, ename, sal
FROM emp
ORDER BY deptno DESC, ename, sal DESC;

--巩力33
SELECT ename, sal, round(sal*0.13) 焊呈胶, deptno
FROM emp
WHERE deptno = 10;

--巩力34
SELECT ename, sal, NVL(comm, 0), sal+NVL(comm, 0) total
FROM emp
ORDER BY total DESC;

--巩力35
SELECT ename, sal, TO_CHAR(round(sal*0.15, 1), '$999.9') 雀厚
FROM emp
WHERE sal BETWEEN 1500 AND 3000;

--巩力36
SELECT dname, COUNT(e.empno)
FROM emp e
JOIN dept d
ON e.deptno=d.deptno
GROUP BY dname
HAVING COUNT(*) > 5;

--巩力37
SELECT job, SUM(sal) 鞭咯钦拌
FROM emp
WHERE job != 'SALESMAN'
GROUP by job
HAVING SUM(sal) > 5000;

--巩力38
SELECT empno, ename, sal, grade
FROM emp
JOIN salgrade
ON sal BETWEEN losal AND hisal
ORDER BY sal;

--巩力39
SELECT deptno, COUNT(deptno) 荤盔荐, COUNT(comm) "目固记 罐篮 荤盔荐"
FROM emp
GROUP BY deptno;

--巩力40
SELECT ename, deptno, DECODE(deptno, 10, '醚公何',
                                     20, '俺惯何',
                                         '康诀何') 何辑疙
FROM emp;

SELECT ename, deptno, CASE deptno WHEN 10 THEN '醚公何'
                                  WHEN 20 THEN '俺惯何'
                                  ELSE         '康诀何'
                      END 何辑疙
FROM emp;






