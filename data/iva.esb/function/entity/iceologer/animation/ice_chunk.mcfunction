scoreboard players add @s iva.esb.entity_animation 1
execute if score @s iva.esb.entity_animation matches 1 run tag @s add iva.esb.animation_playing
execute if score @s iva.esb.entity_animation matches 1 run tag @s add iva.esb.animation_ice_chunk
execute if score @s iva.esb.entity_animation matches 1 run data modify entity @s item.components."minecraft:custom_model_data" set value {strings:["cast"]}
execute if score @s iva.esb.entity_animation matches 1 store result entity @s item.components."minecraft:potion_contents".custom_color int 1 run scoreboard players operation #gametime iva.esb.entity_animation %= #45 iva.esb.const

execute if score @s iva.esb.entity_animation matches 14 as @e[limit=1,distance=..64,type=pillager,tag=iva.esb.entity.iceologer,predicate=iva.esb:entity_id] at @s run playsound minecraft:block.enchantment_table.use hostile @a ~ ~ ~ 1 1.2
execute if score @s iva.esb.entity_animation matches 14 as @e[limit=1,distance=..64,type=pillager,tag=iva.esb.entity.iceologer,predicate=iva.esb:entity_id] at @s run particle minecraft:trial_spawner_detection_ominous ~ ~.5 ~ .4 .8 .4 .01 25
execute if score @s iva.esb.entity_animation matches 14 as @e[limit=1,distance=..64,type=pillager,tag=iva.esb.entity.iceologer,predicate=iva.esb:entity_id] at @s positioned ^ ^2 ^1.5 run function iva.esb:entity/iceologer/attack/ice_chunk/run

execute if score @s iva.esb.entity_animation matches 44.. run tag @s remove iva.esb.animation_playing
execute if score @s iva.esb.entity_animation matches 44.. run tag @s remove iva.esb.animation_ice_chunk
execute if score @s iva.esb.entity_animation matches 44.. run scoreboard players reset @s iva.esb.entity_animation