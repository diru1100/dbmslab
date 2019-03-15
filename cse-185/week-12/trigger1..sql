create or replace trigger t1
before 
    insert on emp1
    for each row
    
    declare
        no_action exception;
        cursor c1 is select deptno from dept1;
    
    begin
        for i in c1  loop
            if :new.deptno=50 then--i.deptno then 
                raise no_action;
            end if;
        end loop;
    exception
        when no_action then 
            raise_application_error(-20001,'DEPTNO is a foreign key in emp1');
    end; 
   / 
   drop trigger cse_185.TRIGGERcreate or replace trigger t1
before 
    insert on emp1
    for each row
    
    declare
        no_action exception;
        cursor c1 is select deptno from dept1;
    
    begin
        for i in c1  loop
            if :new.deptno=50 then--i.deptno then 
                raise no_action;
            end if;
        end loop;
    exception
        when no_action then 
            raise_application_error(-20001,'DEPTNO is a foreign key in emp1');
    end; 
   / 
1;
delete from emp1 where ename='chicken';
   select * from all_triggers;
    select * from emp1;
    insert  into emp1 (empno,ename,job,mgr,hiredate,sal,comm,deptno) values('7935','chicken','salesman','7092','01-01-2000','2000','','30');
    insert  into emp1 (empno,ename,job,mgr,hiredate,sal,comm,deptno) values('&empno','&ename','&job','&mgr','&hiredate','&sal','&comm','&deptno')
    
