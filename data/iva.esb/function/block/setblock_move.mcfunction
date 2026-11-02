execute if entity @s[tag=iva.esb.block_move_s] unless block ~ ~ ~1 moving_piston run setblock ~ ~ ~1 air
execute if entity @s[tag=iva.esb.block_move_s] unless block ~ ~ ~1 moving_piston run tag @s remove iva.esb.block_move_s
execute if entity @s[tag=iva.esb.block_move_n] unless block ~ ~ ~-1 moving_piston run setblock ~ ~ ~-1 air
execute if entity @s[tag=iva.esb.block_move_n] unless block ~ ~ ~-1 moving_piston run tag @s remove iva.esb.block_move_n
execute if entity @s[tag=iva.esb.block_move_e] unless block ~1 ~ ~ moving_piston run setblock ~1 ~ ~ air
execute if entity @s[tag=iva.esb.block_move_e] unless block ~1 ~ ~ moving_piston run tag @s remove iva.esb.block_move_e
execute if entity @s[tag=iva.esb.block_move_w] unless block ~-1 ~ ~ moving_piston run setblock ~-1 ~ ~ air
execute if entity @s[tag=iva.esb.block_move_w] unless block ~-1 ~ ~ moving_piston run tag @s remove iva.esb.block_move_w
execute if entity @s[tag=iva.esb.block_move_u] unless block ~ ~1 ~ moving_piston run setblock ~ ~1 ~ air
execute if entity @s[tag=iva.esb.block_move_u] unless block ~ ~1 ~ moving_piston run tag @s remove iva.esb.block_move_u
execute if entity @s[tag=iva.esb.block_move_d] unless block ~ ~-1 ~ moving_piston run setblock ~ ~-1 ~ air
execute if entity @s[tag=iva.esb.block_move_d] unless block ~ ~-1 ~ moving_piston run tag @s remove iva.esb.block_move_d
execute if entity @s[tag=!iva.esb.block_move_s,tag=!iva.esb.block_move_n,tag=!iva.esb.block_move_e,tag=!iva.esb.block_move_w,tag=!iva.esb.block_move_u,tag=!iva.esb.block_move_d] run tag @s remove iva.esb.block_move