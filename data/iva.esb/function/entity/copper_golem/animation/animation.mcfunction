execute store result storage iva.esb:bossbar bossbar_temp_id int 1 run scoreboard players operation #temp iva.esb.entity_id = @s iva.esb.entity_id
execute as @e[limit=1,distance=..64,type=parched,tag=iva.esb.entity.copper_golem,predicate=iva.esb:entity_id] at @s run function iva.esb:entity/bossbar_upd with storage iva.esb:bossbar
execute unless entity @e[limit=1,distance=..64,type=parched,tag=iva.esb.entity.copper_golem,predicate=iva.esb:entity_id] run function iva.esb:entity/remove_bossbar with storage iva.esb:bossbar
execute at @e[limit=1,distance=..64,type=parched,tag=iva.esb.entity.copper_golem,predicate=iva.esb:entity_id] run tp @s ~ ~.75 ~ ~ 0

execute if entity @s[tag=!iva.esb.animation_playing] if entity @e[limit=1,distance=..64,type=parched,tag=iva.esb.entity.copper_golem,predicate=iva.esb:entity_id,predicate=!iva.esb:entity_speed_0] run data modify entity @s item.components."minecraft:custom_model_data" set value {strings:["walk"]}
execute if entity @s[tag=!iva.esb.animation_playing] if entity @e[limit=1,distance=..64,type=parched,tag=iva.esb.entity.copper_golem,predicate=iva.esb:entity_id,predicate=iva.esb:entity_speed_0] run data modify entity @s item.components."minecraft:custom_model_data" set value {}

execute unless entity @e[limit=1,distance=..64,type=parched,tag=iva.esb.entity.copper_golem,predicate=iva.esb:entity_id] run function iva.esb:entity/copper_golem/animation/death
execute if entity @s[tag=iva.esb.animation_energy_ball] run function iva.esb:entity/copper_golem/animation/energy_ball
execute if entity @s[tag=iva.esb.animation_shock_wave] run function iva.esb:entity/copper_golem/animation/shock_wave
execute if entity @s[tag=iva.esb.animation_block_throw] run function iva.esb:entity/copper_golem/animation/block_throw