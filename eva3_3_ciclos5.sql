delimiter $$
create function calcular_pot_while(base int, expo int)
returns int deterministic
begin
	declare potencia int default 0;
    declare cont int default 1;
    
    while base <= expo do
		set potencia = base * base;
        set expo = base + 1;
    end while;
    
    return potencia;
end $$
delimiter ;