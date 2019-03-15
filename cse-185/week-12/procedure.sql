

create or replace procedure prime(n number)  is

    
    i number :=2;
    cnt number :=0;
begin
    while i<n/2
    loop
    if mod(n,i)=0 then
    cnt:= cnt+1;
    end if;
    i:=i+1;
          
    end loop;
    if cnt=0 then
        dbms_output.put_line('is prime');
    else
        dbms_output.put_line('not prime');
    end if;
end;
/
set serveroutput on
exec prime(7);