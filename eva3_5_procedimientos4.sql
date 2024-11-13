delimiter $$
 create procedure contar_empleado(out cont int)
 begin
	select count(*) into cont from employees;
end$$
delimiter ;