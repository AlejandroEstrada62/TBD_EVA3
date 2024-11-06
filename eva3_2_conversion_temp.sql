delimiter $$
create function conversion_temp (valor int, formula varchar(10))
returns varchar(20) deterministic
begin
	declare resu int;
    case formula
		when "k" then set resu = (valor + 273);
		when "f" then set resu = (valor * 1.8 + 32);
		when "c" then set resu = (valor - 273);
		else
			set resu = 0;
		end case;
		return resu;
end $$
delimiter ;