select to_char(sysdate,'dy') from dual;

create or replace trigger tr
before insert or update or delete 
on emp1  for each row
when(to_char(sysdate,'dy')not in('sat','sun'))

declare 
    e1 exception;
begin
    raise e1;
exception
    when e1 then 
    raise_application_error(-20002,'no working during weekdays');
end;
/
delete from emp1 where ename='rohit';
rollback emp1;
select * from emp1;