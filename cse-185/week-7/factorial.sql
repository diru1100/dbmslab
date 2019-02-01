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




