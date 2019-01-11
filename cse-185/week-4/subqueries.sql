select empno,ename,sal from emp1
where sal>6000;

select * from emp1;

select * from dept1;


select * from emp1 where sal=(select max(sal) from emp1);

select * from emp1  where sal in (select sal from emp1 where emp1.empno='7698' )and empno not in 7698  ;

INSERT INTO EMP1
    VALUES(121,'kiran','BOSS','7888','12-12-99',800,200,20);
    
INSERT INTO EMP1
    VALUES(122,'drake','clerk','0888','12-12-99',800,200,20);    
    
    
INSERT INTO EMP1
    VALUES(8888,'Juice','sales','9999','12-11-99',2850,200,20);  
    
   
    
select ename,JOB,hiredate from emp1  where sal = ( select emp1.sal from emp1,dept1 where  emp1.deptno=dept1.deptno and dept1.dname='sales' )    ;

select * from emp1 where rownum<='2' and sal in (select sal from emp1 order by sal desc) ;

select * from emp1 where sal = (select max(sal) from emp1 ) ;

select * from emp1 where mgr not in(select mgr from emp1 where mgr in (select empno from emp1 )) ;