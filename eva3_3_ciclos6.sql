delimiter $$
create function calcular_pot_repeat(base int, expo int)
returns int deterministic
begin
	declare potencia int default 0;
    declare cont int default 1;
    repeat
		set potencia = base + base;
        set expo = base + 1;
    until expo > base end repeat;
    
    return potencia;
end $$
delimiter ;