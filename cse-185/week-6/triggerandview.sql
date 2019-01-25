
/* Here we created a view from 2 tables and tring to update/alter it's data which is giving an error */
create view sample2 as select emp1.ename,dept1.deptno from emp1,dept1 where emp1.deptno=dept1.deptno;


update sample2 
    set ename='rohit'
    where deptno=20;
/* Here we did the same as above but to a single table view */   
create view sample4 as select ename,deptno from emp1;


update sample4 
    set ename='rohit'
    where deptno=20;
    
select * from sample4;

/* Here we tried inserting to view4 which should work normally but doesn't as empno is set to primary key in emp1 which can't hold a null value */

insert into  sample4 values('&ename','&deptno');

select * from sample4;    

update sample4 add column empno;

select * from emp1;

/* Here we are trying to see the implementation of trigger*/

create or replace trigger trigger1
before insert on emp1 for each row
begin 
    : new.ename: =upper(: new.ename);
end;  


INSERT INTO emp1 VALUES(7699,'cb','clerk',7666,'01-01-01',99,99,20);

