scoreboard players add @s iva.esb.entity_animation 1
execute if score @s iva.esb.entity_animation matches 1 run tag @s add iva.esb.animation_playing
execute if score @s iva.esb.entity_animation matches 1 run tag @s add iva.esb.animation_dash
execute if score @s iva.esb.entity_animation matches 1 run data modify entity @s item.components."minecraft:custom_model_data" set value {strings:["dash"]}
execute if score @s iva.esb.entity_animation matches 1 store result entity @s item.components."minecraft:potion_contents".custom_color int 1 run scoreboard players operation #gametime iva.esb.entity_animation %= #20 iva.esb.const
execute if score @s iva.esb.entity_animation matches 1 at @s run playsound minecraft:entity.breeze.charge hostile @a ~ ~ ~ 1 .8

execute if score @s iva.esb.entity_animation matches 5 as @e[limit=1,distance=..64,type=vex,tag=iva.esb.entity.bonebeak,predicate=iva.esb:entity_id] at @s on target run rotate @n[distance=...1,type=vex,tag=iva.esb.entity.bonebeak,predicate=iva.esb:entity_id] facing entity @s
execute if score @s iva.esb.entity_animation matches 5 as @e[limit=1,distance=..64,type=vex,tag=iva.esb.entity.bonebeak,predicate=iva.esb:entity_id] at @s run function iva.esb:api/rotation_motion {scale_x:.17, scale_y:.17, scale_z:.17}
execute if score @s iva.esb.entity_animation matches 5.. as @e[limit=1,distance=..64,type=vex,tag=iva.esb.entity.bonebeak,predicate=iva.esb:entity_id] at @s run particle snowflake ~ ~.3 ~ 0 0 0 .05 1
execute if score @s iva.esb.entity_animation matches 5.. as @e[limit=1,distance=..64,type=vex,tag=iva.esb.entity.bonebeak,predicate=iva.esb:entity_id] at @s on target positioned ~-.5 ~-.5 ~-.5 as @s[dx=0] positioned ~.5 ~.5 ~.5 run damage @s 5 mob_attack by @n[distance=...1,type=vex,tag=iva.esb.entity.bonebeak,predicate=iva.esb:entity_id]

execute if score @s iva.esb.entity_animation matches 19.. run data modify entity @s item.components."minecraft:custom_model_data" set value {}
execute if score @s iva.esb.entity_animation matches 19.. run tag @s remove iva.esb.animation_playing
execute if score @s iva.esb.entity_animation matches 19.. run tag @s remove iva.esb.animation_dash
execute if score @s iva.esb.entity_animation matches 19.. run scoreboard players reset @s iva.esb.entity_animation