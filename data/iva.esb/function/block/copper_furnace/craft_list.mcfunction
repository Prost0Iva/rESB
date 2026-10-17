scoreboard players remove @s iva.esb.furnace_cooking_time 1
execute if score @s iva.esb.furnace_cooking_time matches 200.. run scoreboard players reset @s iva.esb.furnace_cooking_time
execute if score @s iva.esb.furnace_cooking_time matches ..0 run scoreboard players reset @s iva.esb.furnace_cooking_time
execute if score @s iva.esb.furnace_cooking_time matches -2147483648..2147483647 store result block ~ ~ ~ cooking_time_spent int 1 run scoreboard players get @s iva.esb.furnace_cooking_time
execute store result score @s iva.esb.furnace_lit_time run data get block ~ ~ ~ lit_time_remaining

execute if predicate iva.esb:craft/copper_furnace/stalum_ingot run function iva.esb:block/copper_furnace/craft/stalum_ingot