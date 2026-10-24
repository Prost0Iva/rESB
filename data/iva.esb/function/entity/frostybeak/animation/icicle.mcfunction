scoreboard players add @s iva.esb.entity_animation 1
execute if score @s iva.esb.entity_animation matches 1 run tag @s add iva.esb.animation_playing
execute if score @s iva.esb.entity_animation matches 1 run tag @s add iva.esb.animation_icicle
execute if score @s iva.esb.entity_animation matches 1 run data modify entity @s item.components."minecraft:custom_model_data" set value {strings:["attack"]}
execute if score @s iva.esb.entity_animation matches 1 store result entity @s item.components."minecraft:potion_contents".custom_color int 1 run scoreboard players operation #gametime iva.esb.entity_animation %= #20 iva.esb.const

execute if score @s iva.esb.entity_animation matches 5 as @e[type=vex,tag=iva.esb.entity.frostybeak,predicate=iva.esb:entity_id] at @s on target run rotate @n[distance=...1,type=vex,tag=iva.esb.entity.frostybeak,predicate=iva.esb:entity_id] facing entity @s
execute if score @s iva.esb.entity_animation matches 5 as @e[type=vex,tag=iva.esb.entity.frostybeak,predicate=iva.esb:entity_id,tag=!iva.esb.entity_boss_phase2] at @s run function iva.esb:entity/frostybeak/attack/icicle/run_5
execute if score @s iva.esb.entity_animation matches 5 as @e[type=vex,tag=iva.esb.entity.frostybeak,predicate=iva.esb:entity_id,tag=iva.esb.entity_boss_phase2] at @s run function iva.esb:entity/frostybeak/attack/icicle/run_9

execute if score @s iva.esb.entity_animation matches 19.. run data modify entity @s item.components."minecraft:custom_model_data" set value {}
execute if score @s iva.esb.entity_animation matches 19.. run tag @s remove iva.esb.animation_playing
execute if score @s iva.esb.entity_animation matches 19.. run tag @s remove iva.esb.animation_icicle
execute if score @s iva.esb.entity_animation matches 19.. run scoreboard players reset @s iva.esb.entity_animation