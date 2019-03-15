set serveroutput on;

declare 
    var_factof number;
    var_fact number;
    temp number;  

begin 
    var_factof:=&var_factof;
    var_fact:=1;
    for temp IN 1 .. var_factof
    loop
        var_fact:=var_fact*temp;
    end loop;
    dbms_output.put_line(var_fact);
end;


select * from emp1;

select * from dept1;
alter table dept1 add budget number(9);

update  dept1 set budget='100000' where deptno='10'; 


update  dept1 set budget='200000' where deptno='20';
update  dept1 set budget='300000' where deptno='30';
update  dept1 set budget='400000' where deptno='40';


set serveroutput on;

declare
    emp_rec emp1%rowtype;
    cursor emp_cur is select emp1.ename from emp1,dept1 where emp1.deptno=dept1.deptno and budget=(select max(budget) from dept1);
begin
    FOR emp_rec in emp_cur 
    LOOP  
       dbms_output.put_line (emp_rec.ename);
       END LOOP; 
end;
/
    













--max sal 

set serveroutput on;

declare
    emp_rec emp1%rowtype;
    cursor emp_cur is select ename from emp1  where sal=(select max(sal) from emp1);
begin
    FOR emp_rec in emp_cur 
    LOOP    
       dbms_output.put_line(emp_rec.ename);
       END LOOP; 
end;
/
    








--max sal by dept
    
    set serveroutput on;

declare
    emp_rec emp1%rowtype;
    cursor emp_cur is select ename from emp1 where sal in(select max(sal) from emp1 group by deptno);
begin
    FOR emp_rec in emp_cur 
    LOOP  
       dbms_output.put_line (emp_rec.ename);
       END LOOP; 
end;
/
    
    
    
    
    
    
    
    
    
    
    