execute if entity @s[advancements={iva.esb:api/kill_counter={frostybeak=true}}] run scoreboard players add %frostybeak iva.esb.kill_counter 1
execute if entity @s[advancements={iva.esb:api/kill_counter={copper_golem=true}}] run scoreboard players add %copper_golem iva.esb.kill_counter 1
execute if entity @s[advancements={iva.esb:api/kill_counter={copper_golem_thunder=true}}] run scoreboard players add %copper_golem_thunder iva.esb.kill_counter 1

advancement revoke @s only iva.esb:api/kill_counter