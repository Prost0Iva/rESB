execute at @s run function iva.esb:entity/copper_golem/attack/attack_choose

execute store result score @s iva.esb.entity_health run data get entity @s Health
execute if score @s iva.esb.entity_health matches ..99 run tag @s add iva.esb.entity_boss_phase2
execute if score @s iva.esb.entity_health matches ..99 run scoreboard players set @s iva.esb.effect.conductivity 20
execute if entity @s[tag=iva.esb.entity.copper_golem_thunder] run scoreboard players set @s iva.esb.effect.conductivity 20

execute at @s run function iva.esb:entity/copper_golem/sounds

execute at @s unless entity @a[distance=..64] run tp ~ ~-1000 ~
#give @p bee_spawn_egg[item_name={translate:"iva.esb:item.copper_golem_spawn_egg"},item_model="iva.esb:copper_golem_spawn_egg",entity_data={id:marker,Tags:[iva.esb.entity.copper_golem_spawner]}]