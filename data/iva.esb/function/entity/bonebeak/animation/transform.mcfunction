scoreboard players add @s iva.esb.entity_animation 1
execute if score @s iva.esb.entity_animation matches 1 run tag @s add iva.esb.animation_playing
execute if score @s iva.esb.entity_animation matches 1 run tag @s add iva.esb.animation_transform

execute if score @s iva.esb.entity_animation matches 1.. as @e[type=vex,tag=iva.esb.entity.bonebeak,predicate=iva.esb:entity_id] at @s run particle snowflake ~ ~.3 ~ 0 0 0 .05 1

execute if score @s iva.esb.entity_animation matches 100.. at @s run playsound minecraft:entity.skeleton.converted_to_stray hostile @a ~ ~ ~ 1 .6
execute if score @s iva.esb.entity_animation matches 100.. at @s run summon marker ~ ~ ~ {Tags:[iva.esb.entity.frostybeak_spawner]}
execute if score @s iva.esb.entity_animation matches 100.. as @e[type=vex,tag=iva.esb.entity.bonebeak,predicate=iva.esb:entity_id] run kill
execute if score @s iva.esb.entity_animation matches 100.. run kill