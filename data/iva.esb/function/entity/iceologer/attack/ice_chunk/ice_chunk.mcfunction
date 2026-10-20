scoreboard players add @s iva.esb.entity_animation 1
execute if score @s iva.esb.entity_animation matches 1 store result entity @s item.components."minecraft:potion_contents".custom_color int 1 run scoreboard players operation #gametime iva.esb.entity_animation %= #30 iva.esb.const
execute if score @s iva.esb.entity_animation matches 29 run data modify entity @s item.components."minecraft:potion_contents".custom_color set value -39

execute if score @s iva.esb.entity_animation matches 29 if entity @s[tag=iva.esb.from_player] run scoreboard players operation #temp iva.esb.entity_id = @s iva.esb.entity_id
execute if score @s iva.esb.entity_animation matches 29 if entity @s[tag=iva.esb.from_player] as @n[type=player,predicate=iva.esb:entity_id] at @s anchored eyes positioned ^ ^ ^ run function iva.esb:entity/iceologer/attack/ice_chunk/player_raycast
execute if score @s iva.esb.entity_animation matches 29 unless entity @s[tag=iva.esb.from_player] run function iva.esb:entity/iceologer/attack/ice_chunk/iceologer_target

execute if score @s iva.esb.entity_animation matches 30.. at @s run tp @s ~ ~-.75 ~
execute if score @s iva.esb.entity_animation matches 30.. at @s as @e[type=!#iva.esb:no_mob,distance=..3] run damage @s 6 cramming at ~ ~ ~
execute if score @s iva.esb.entity_animation matches 30.. at @s unless block ~ ~1 ~ #air run particle minecraft:block{block_state:{id:"packed_ice"}} ~ ~2 ~ .8 .4 .8 .01 50
execute if score @s iva.esb.entity_animation matches 30.. at @s unless block ~ ~1 ~ #air run particle minecraft:snowflake ~ ~2 ~ 1.2 .1 1.2 .01 100
execute if score @s iva.esb.entity_animation matches 30.. at @s unless block ~ ~1 ~ #air run playsound minecraft:block.glass.break block @a ~ ~ ~ 1 .6
execute if score @s iva.esb.entity_animation matches 30.. at @s unless block ~ ~1 ~ #air run kill
execute if score @s iva.esb.entity_animation matches 200.. run kill
