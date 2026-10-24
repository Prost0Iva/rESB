execute store result storage iva.esb:bossbar bossbar_temp_id int 1 run scoreboard players operation #temp iva.esb.entity_id = @s iva.esb.entity_id
execute as @e[type=parched,tag=iva.esb.entity.copper_golem,predicate=iva.esb:entity_id] at @s run function iva.esb:entity/bossbar_upd with storage iva.esb:bossbar
execute unless entity @e[type=parched,tag=iva.esb.entity_brain,tag=iva.esb.entity.copper_golem,predicate=iva.esb:entity_id] run function iva.esb:entity/remove_bossbar with storage iva.esb:bossbar
execute at @e[type=parched,tag=iva.esb.entity_brain,tag=iva.esb.entity.copper_golem,predicate=iva.esb:entity_id] run tp @s ~ ~.75 ~ ~ 0

execute as @s[tag=!iva.esb.animation_playing] if entity @e[type=parched,tag=iva.esb.entity.copper_golem,predicate=iva.esb:entity_id,nbt=!{Motion:[.0,.0,.0]}] run data modify entity @s item.components."minecraft:custom_model_data" set value {strings:["walk"]}
execute as @s[tag=!iva.esb.animation_playing] if entity @e[type=parched,tag=iva.esb.entity.copper_golem,predicate=iva.esb:entity_id,nbt={Motion:[.0,.0,.0]}] run data modify entity @s item.components."minecraft:custom_model_data" set value {}

execute unless entity @e[type=parched,tag=iva.esb.entity_brain,tag=iva.esb.entity.copper_golem,predicate=iva.esb:entity_id] run function iva.esb:entity/copper_golem/animation/death
execute if entity @s[tag=iva.esb.animation_energy_ball] run function iva.esb:entity/copper_golem/animation/energy_ball
execute if entity @s[tag=iva.esb.animation_shock_wave] run function iva.esb:entity/copper_golem/animation/shock_wave
execute if entity @s[tag=iva.esb.animation_block_throw] run function iva.esb:entity/copper_golem/animation/block_throw