execute as @e[scores={iva.esb.effect.conductivity=1..}] run function iva.esb:effect/conductivity/conductivity
execute as @e[type=lightning_bolt] at @s run scoreboard players set @e[type=!#iva.esb:no_mob,distance=..5] iva.esb.effect.conductivity 400

execute as @a if score @s iva.esb.player_death matches 1.. run scoreboard players reset @s iva.esb.effect.conductivity
execute as @a if score @s iva.esb.player_death matches 1.. run scoreboard players reset @s iva.esb.player_death
