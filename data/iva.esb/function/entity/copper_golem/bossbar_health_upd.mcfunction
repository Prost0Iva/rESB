execute store result score @s iva.esb.entity_health run data get entity @s Health
execute if score @s iva.esb.entity_health matches ..99 run tag @s add iva.esb.entity_boss_phase2
execute if score @s iva.esb.entity_health matches ..99 run scoreboard players set @s iva.esb.effect.conductivity 20
execute if entity @s[tag=iva.esb.entity.copper_golem_thunder] run scoreboard players set @s iva.esb.effect.conductivity 20
execute store result bossbar iva.esb:copper_golem max run data get entity @s attributes[{id:"minecraft:max_health"}].base
execute store result bossbar iva.esb:copper_golem value run data get entity @s Health
bossbar set iva.esb:copper_golem players @a[distance=..64]