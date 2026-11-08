scoreboard players add @s iva.esb.entity_animation 1
execute if score @s iva.esb.entity_animation matches 1 run tag @s add iva.esb.animation_playing
execute if score @s iva.esb.entity_animation matches 1 at @s run playsound minecraft:entity.copper_golem.death hostile @a ~ ~ ~ 1 0
execute if score @s iva.esb.entity_animation matches 1 run data modify entity @s item.components."minecraft:custom_model_data" set value {strings:["death"]}
#execute if score @s iva.esb.entity_animation matches 1 run data modify entity @s item.components."minecraft:potion_contents" set value {custom_color:0}
execute if score @s iva.esb.entity_animation matches 1 store result entity @s item.components."minecraft:potion_contents".custom_color int 1 run scoreboard players operation #gametime iva.esb.entity_animation %= #40 iva.esb.const
execute if score @s iva.esb.entity_animation matches 39.. store result storage iva.esb:bossbar temp_id int 1 run scoreboard players get @s iva.esb.entity_id
execute if score @s iva.esb.entity_animation matches 39.. run function iva.esb:entity/bossbar_remove with storage iva.esb:bossbar
execute if score @s iva.esb.entity_animation matches 39.. run kill