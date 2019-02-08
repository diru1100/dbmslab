select max(sal),deptno from emp1 group by deptno;

select * from emp1 ;

--Program to print ename of employees 

SET SERVEROUTPUT ON;

DECLARE
    emp_rec1 emp1%ROWTYPE;
    CURSOR emp_cur1 IS
    SELECT * FROM emp1;    
BEGIN
    OPEN emp_cur1;
    LOOP
    FETCH emp_cur1 INTO emp_rec1;
    EXIT WHEN emp_cur1%NOTFOUND;
        dbms_output.put_line(emp_rec1.ename );       
    END LOOP;

END;
/
select * from emp1 ;

select ename,mgr from emp1 where deptno in (select max() from dept wher)


--Program to print max sal employee in each department 

SET SERVEROUTPUT ON;

DECLARE
    emp_rec1 emp1%ROWTYPE;
    CURSOR emp_cur1 IS
    SELECT * FROM emp1 where sal IN (SELECT MAX(sal) FROM emp1   GROUP BY deptno );    
    temp NUMBER;
BEGIN
 
    FOR emp_rec1 IN emp_cur1
    LOOP
        dbms_output.put_line(emp_rec1.ename ||  emp_rec1.deptno);       
    END LOOP;
END;
/

SET SERVEROUTPUT ON;

DECLARE
    emp_rec1 emp1%ROWTYPE;
    CURSOR emp_cur1 IS
    SELECT * FROM emp1 where sal IN (SELECT MAX(sal) FROM emp1   GROUP BY deptno );    
BEGIN
    OPEN emp_cur1;
    LOOP
    FETCH emp_cur1 INTO emp_rec1;
    EXIT WHEN emp_cur1%NOTFOUND;
        dbms_output.put_line(emp_rec1.ename );       
    END LOOP;

END;
/


--Program to print manager who managers the department with highest budget

SELECT * FROM DEPT1;

ALTER TABLE dept1 ADD  budget number(15);

UPDATE dept1 SET budget='100000' where deptno=10;
UPDATE dept1 SET budget='200000' where deptno=20;
UPDATE dept1 SET budget='300000' where deptno=30;
UPDATE dept1 SET budget='400000' where deptno=40;
UPDATE dept1 SET budget='500000' where deptno=50;

SET SERVEROUTPUT ON;

DECLARE
    emp_rec1 emp1%ROWTYPE;
    CURSOR emp_cur1 IS
    SELECT * FROM emp1,dept1 where emp1.deptno=dept1.deptno and budget in(select max(budget) FROM dept1);


--Program to give hike according to employee salaries

SET SERVEROUTPUT ON;

DECLARE
    emp_rec1 emp1%ROWTYPE;
    CURSOR emp_cur1 IS
    SELECT * FROM emp1;  
    
BEGIN
open emp_cur1;
fetch emp_cur1 into emp_rec1;

          
             update emp1 set sal= sal+0.2*sal   where sal<1000  ;  
             update emp1 set   sal= sal+0.15*sal where sal>1000 and sal<2000;                
             update emp1 set sal=sal+0.05*sal where sal>3000  ; 
         
       close emp_cur1;
END;
/

set serveroutput on;


declare
emp_rec emp1%rowtype;
cursor c is select * from emp1;
begin
open c;
fetch c into emp_rec;
update  emp1 set sal = emp_rec.sal+100 where empno=7369;
dbms_output.put_line(  'sal of 7369 is ' ||  emp_rec.sal );  
close c;
end;


  