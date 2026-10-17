scoreboard players add @s iva.esb.entity_animation 1
execute if score @s iva.esb.entity_animation matches 1 run tag @s add iva.esb.animation_playing
execute if score @s iva.esb.entity_animation matches 1 run tag @s add iva.esb.animation_energy_ball
execute if score @s iva.esb.entity_animation matches 1 run data modify entity @s item.components."minecraft:custom_model_data" set value {strings:["energy_ball"]}
execute if score @s iva.esb.entity_animation matches 1 store result entity @s item.components."minecraft:potion_contents".custom_color int 1 run scoreboard players operation #gametime iva.esb.entity_animation %= #40 iva.esb.const

execute if score @s iva.esb.entity_animation matches 1 run effect give @e[type=parched,tag=iva.esb.entity.copper_golem,predicate=iva.esb:entity_id] slowness 2 20 true
execute if score @s iva.esb.entity_animation matches 25 as @e[type=parched,tag=iva.esb.entity.copper_golem,predicate=iva.esb:entity_id,tag=!iva.esb.entity_boss_phase2,tag=!iva.esb.entity.copper_golem_thunder] at @s run function iva.esb:entity/copper_golem/attack/energy_ball/run
execute if score @s iva.esb.entity_animation matches 25 as @e[type=parched,tag=iva.esb.entity.copper_golem,predicate=iva.esb:entity_id,tag=iva.esb.entity_boss_phase2,tag=!iva.esb.entity.copper_golem_thunder] at @s run function iva.esb:entity/copper_golem/attack/energy_ball/run_3

execute if score @s iva.esb.entity_animation matches 1 as @e[type=parched,tag=iva.esb.entity.copper_golem,predicate=iva.esb:entity_id,tag=iva.esb.entity.copper_golem_thunder] run function iva.esb:api/rotation_motion {scale_x:-.25, scale_y:.3, scale_z:-.25}
execute if score @s iva.esb.entity_animation matches 25 as @e[type=parched,tag=iva.esb.entity.copper_golem,predicate=iva.esb:entity_id,tag=!iva.esb.entity_boss_phase2,tag=iva.esb.entity.copper_golem_thunder] at @s run function iva.esb:entity/copper_golem/attack/energy_ball/run_3
execute if score @s iva.esb.entity_animation matches 25 as @e[type=parched,tag=iva.esb.entity.copper_golem,predicate=iva.esb:entity_id,tag=iva.esb.entity_boss_phase2,tag=iva.esb.entity.copper_golem_thunder] at @s run function iva.esb:entity/copper_golem/attack/energy_ball/run_5

execute if score @s iva.esb.entity_animation matches 39.. run tag @s remove iva.esb.animation_playing
execute if score @s iva.esb.entity_animation matches 39.. run tag @s remove iva.esb.animation_energy_ball
execute if score @s iva.esb.entity_animation matches 39.. run scoreboard players reset @s iva.esb.entity_animation