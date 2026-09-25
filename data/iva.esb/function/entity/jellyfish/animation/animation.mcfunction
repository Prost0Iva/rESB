scoreboard players operation #temp iva.esb.entity_id = @s iva.esb.entity_id

execute at @e[type=cod,tag=iva.esb.entity_brain,tag=iva.esb.entity.jellyfish,predicate=iva.esb:entity_id] run tp @s ~ ~.5 ~ ~ 0

execute if predicate iva.esb:in_water run function iva.esb:entity/jellyfish/animation/swim
execute unless predicate iva.esb:in_water run data modify entity @s item.components."minecraft:custom_model_data" set value {strings:["on_land"]}

execute unless entity @e[type=cod,tag=iva.esb.entity_brain,tag=iva.esb.entity.jellyfish,predicate=iva.esb:entity_id] run kill