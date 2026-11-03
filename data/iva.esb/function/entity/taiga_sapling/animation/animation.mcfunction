scoreboard players operation #temp iva.esb.entity_id = @s iva.esb.entity_id
execute at @e[limit=1,distance=..64,type=parched,tag=iva.esb.entity_brain,tag=iva.esb.entity.taiga_sapling,predicate=iva.esb:entity_id] run tp @s ~ ~.5 ~ ~ 0

execute if entity @s[tag=!iva.esb.animation_playing] if entity @e[limit=1,distance=..64,type=parched,tag=iva.esb.entity.taiga_sapling,predicate=iva.esb:entity_id,predicate=!iva.esb:entity_speed_0] run data modify entity @s item.components."minecraft:custom_model_data" set value {strings:["walk"]}
execute if entity @s[tag=!iva.esb.animation_playing] if entity @e[limit=1,distance=..64,type=parched,tag=iva.esb.entity.taiga_sapling,predicate=iva.esb:entity_id,predicate=iva.esb:entity_speed_0] run data modify entity @s item.components."minecraft:custom_model_data" set value {}

execute unless entity @e[limit=1,distance=..64,type=parched,tag=iva.esb.entity_brain,tag=iva.esb.entity.taiga_sapling,predicate=iva.esb:entity_id] run function iva.esb:entity/taiga_sapling/animation/death