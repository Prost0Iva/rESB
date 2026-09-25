scoreboard players add @s iva.esb.entity_animation 1
execute if score @s iva.esb.entity_animation matches 0 run data modify entity @s item.components."minecraft:custom_model_data" set value {}
execute if score @s iva.esb.entity_animation matches 5 run data modify entity @s item.components."minecraft:custom_model_data" set value {strings:["swim/0"]}
execute if score @s iva.esb.entity_animation matches 10 run data modify entity @s item.components."minecraft:custom_model_data" set value {strings:["swim/1"]}
execute if score @s iva.esb.entity_animation matches 15 run data modify entity @s item.components."minecraft:custom_model_data" set value {strings:["swim/2"]}
execute if score @s iva.esb.entity_animation matches 18 run data modify entity @s item.components."minecraft:custom_model_data" set value {strings:["swim/1"]}
execute if score @s iva.esb.entity_animation matches 20 run data modify entity @s item.components."minecraft:custom_model_data" set value {strings:["swim/0"]}
execute if score @s iva.esb.entity_animation matches 20.. run scoreboard players reset @s iva.esb.entity_animation
