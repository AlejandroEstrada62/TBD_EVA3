delimiter $$
create function calcular_pot_loop(base int, expo int)
returns int deterministic
begin
	declare potencia int default 0;
    declare cont int default 1;
    
    miciclo: loop
		set potencia = base * base;
        set expo = base + 1;
        if expo > base then
			leave miciclo;
        end if;
    end loop miciclo;
    return potencia;
end $$
delimiter ;