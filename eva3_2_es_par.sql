delimiter $$
create function es_par(val1 int)
returns varchar(20) deterministic
begin
    declare resu varchar(20);
    declare residuo int;
    set residuo = mod(val1,2);
    if residuo = 0 then
		set resu = "es par";
	else
		set resu = "es impar";
	end if;
    return resu;
end $$
delimiter ;
	