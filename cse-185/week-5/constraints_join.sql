select * from tab;
select * from user_tables;

select * from user_constraints;

select * from emp1;

select * from dept1;

create table employee(person_name varchar(10),street varchar(15),city varcher(10));

create table salgrade1 as select * from scott.salgrade;

select * from salgrade1;

select ename,sal,grade from emp1,salgrade1 where sal between losal and hisal;

select ename,sal,grade from emp1,salgrade1 where sal >= losal and sal <=hisal; //non-equi //

INSERT INTO emp1 VALUES('&empno','&ename','&job','&mgr','&hiredate','&sal','&comm','&deptno');

INSERT INTO dept1 VALUES('&deptno','&dname','&loc');

select * from emp1 natural join dept1;

select * from emp1 , dept1 where emp1.deptno = dept1.deptno(+) union select * from emp1 , dept1 where emp1.deptno(+) = dept1.deptno ;

select * from emp1 full outer join dept1 on emp1.deptno = dept1.deptno;

alter table emp1 add constraint emp1_primarykey primary key (empno);
 
 delete from emp1 where empno='121';
select * from emp1,dept1;

select * from emp1,dept1 where emp1.deptno=dept1.deptno;

alter table emp1 drop constraint emp1_primarykey;