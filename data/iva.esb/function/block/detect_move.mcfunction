execute if block ~ ~ ~ moving_piston run tag @s add iva.esb.block_move
execute if block ~ ~ ~ moving_piston[facing=north] run tag @s add iva.esb.block_move_n
execute if block ~ ~ ~ moving_piston[facing=south] run tag @s add iva.esb.block_move_s
execute if block ~ ~ ~ moving_piston[facing=west] run tag @s add iva.esb.block_move_w
execute if block ~ ~ ~ moving_piston[facing=east] run tag @s add iva.esb.block_move_e
execute if block ~ ~ ~ moving_piston[facing=down] run tag @s add iva.esb.block_move_d
execute if block ~ ~ ~ moving_piston[facing=up] run tag @s add iva.esb.block_move_u

execute if entity @s[tag=iva.esb.block_move] run function iva.esb:block/setblock_move