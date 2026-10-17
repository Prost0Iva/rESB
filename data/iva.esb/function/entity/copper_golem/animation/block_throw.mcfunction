scoreboard players add @s iva.esb.entity_animation 1
execute if score @s iva.esb.entity_animation matches 1 run tag @s add iva.esb.animation_playing
execute if score @s iva.esb.entity_animation matches 1 run tag @s add iva.esb.animation_block_throw
execute if score @s iva.esb.entity_animation matches 1 run data modify entity @s item.components."minecraft:custom_model_data" set value {strings:["block_throw"]}
execute if score @s iva.esb.entity_animation matches 1 store result entity @s item.components."minecraft:potion_contents".custom_color int 1 run scoreboard players operation #gametime iva.esb.entity_animation %= #40 iva.esb.const

execute if score @s iva.esb.entity_animation matches 1 run effect give @e[type=parched,tag=iva.esb.entity.copper_golem,predicate=iva.esb:entity_id] slowness 2 20 true
execute if score @s iva.esb.entity_animation matches 20 as @e[type=parched,tag=iva.esb.entity.copper_golem,predicate=iva.esb:entity_id] at @s positioned ^ ^.4 ^2 unless block ~ ~ ~ #iva.esb:not_movable run function iva.esb:entity/copper_golem/attack/block_throw/run

execute if score @s iva.esb.entity_animation matches 39.. run tag @s remove iva.esb.animation_playing
execute if score @s iva.esb.entity_animation matches 39.. run tag @s remove iva.esb.animation_block_throw
execute if score @s iva.esb.entity_animation matches 39.. run scoreboard players reset @s iva.esb.entity_animation