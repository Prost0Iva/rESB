scoreboard players add @s iva.esb.entity_animation 1
execute if score @s iva.esb.entity_animation matches 1 run tag @s add iva.esb.animation_playing
execute if score @s iva.esb.entity_animation matches 1 run tag @s add iva.esb.animation_dash
execute if score @s iva.esb.entity_animation matches 1 run data modify entity @s item.components."minecraft:custom_model_data" set value {strings:["dash"]}
execute if score @s iva.esb.entity_animation matches 1 store result entity @s item.components."minecraft:potion_contents".custom_color int 1 run scoreboard players operation #gametime iva.esb.entity_animation %= #26 iva.esb.const
execute if score @s iva.esb.entity_animation matches 1 at @s run playsound minecraft:entity.breeze.charge hostile @a ~ ~ ~ 1 .5

execute if score @s iva.esb.entity_animation matches 4 as @e[type=vex,tag=iva.esb.entity.frostybeak,predicate=iva.esb:entity_id] at @s on target run rotate @n[distance=...1,type=vex,tag=iva.esb.entity.frostybeak,predicate=iva.esb:entity_id] facing entity @s
execute if score @s iva.esb.entity_animation matches 4 as @e[type=vex,tag=iva.esb.entity.frostybeak,predicate=iva.esb:entity_id] at @s run function iva.esb:api/rotation_motion {scale_x:.22, scale_y:.22, scale_z:.22}
execute if score @s iva.esb.entity_animation matches 4.. as @e[type=vex,tag=iva.esb.entity.frostybeak,predicate=iva.esb:entity_id] at @s run particle snowflake ~ ~.3 ~ .2 .2 .2 .05 2
execute if score @s iva.esb.entity_animation matches 4.. as @e[type=vex,tag=iva.esb.entity.frostybeak,predicate=iva.esb:entity_id] at @s on target positioned ~-.5 ~-.5 ~-.5 as @s[dx=0] positioned ~.5 ~.5 ~.5 run damage @s 8 mob_attack by @n[distance=...1,type=vex,tag=iva.esb.entity.frostybeak,predicate=iva.esb:entity_id]

execute if score @s iva.esb.entity_animation matches 25.. run data modify entity @s item.components."minecraft:custom_model_data" set value {}
execute if score @s iva.esb.entity_animation matches 25.. run tag @s remove iva.esb.animation_playing
execute if score @s iva.esb.entity_animation matches 25.. run tag @s remove iva.esb.animation_dash
execute if score @s iva.esb.entity_animation matches 25.. run scoreboard players reset @s iva.esb.entity_animation