scoreboard players operation #temp iva.esb.entity_id = @s iva.esb.entity_id
execute at @e[type=parched,tag=iva.esb.entity_brain,tag=iva.esb.entity.copper_golem,predicate=iva.esb:entity_id] run tp @s ~ ~.75 ~ ~ 0

execute as @s[tag=!iva.esb.animation_playing] if entity @e[type=parched,tag=iva.esb.entity.copper_golem,predicate=iva.esb:entity_id,nbt=!{Motion:[.0,.0,.0]}] run data modify entity @s item.components."minecraft:custom_model_data" set value {strings:["walk"]}
execute as @s[tag=!iva.esb.animation_playing] if entity @e[type=parched,tag=iva.esb.entity.copper_golem,predicate=iva.esb:entity_id,nbt={Motion:[.0,.0,.0]}] run data modify entity @s item.components."minecraft:custom_model_data" set value {}

execute unless entity @e[type=parched,tag=iva.esb.entity_brain,tag=iva.esb.entity.copper_golem,predicate=iva.esb:entity_id] run function iva.esb:entity/copper_golem/animation/death