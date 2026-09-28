scoreboard players operation #temp iva.esb.entity_id = @s iva.esb.entity_id
execute at @e[type=parched,tag=iva.esb.entity_brain,tag=iva.esb.entity.taiga_sapling,predicate=iva.esb:entity_id] run tp @s ~ ~.5 ~ ~ 0

execute if entity @e[type=parched,tag=iva.esb.entity_brain,tag=iva.esb.entity.taiga_sapling,predicate=iva.esb:entity_id,nbt=!{Motion:[.0,.0,.0]}] run function iva.esb:entity/taiga_sapling/animation/walk
execute if entity @e[type=parched,tag=iva.esb.entity_brain,tag=iva.esb.entity.taiga_sapling,predicate=iva.esb:entity_id,nbt={Motion:[.0,.0,.0]}] run data modify entity @s item.components."minecraft:custom_model_data" set value {}

execute unless entity @e[type=parched,tag=iva.esb.entity_brain,tag=iva.esb.entity.taiga_sapling,predicate=iva.esb:entity_id] run kill