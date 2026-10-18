scoreboard players operation #temp iva.esb.entity_id = @s iva.esb.entity_id
execute at @e[type=pillager,tag=iva.esb.entity_brain,tag=iva.esb.entity.iceologer,predicate=iva.esb:entity_id] run tp @s ~ ~.5 ~ ~ 0

execute as @s[tag=!iva.esb.animation_playing] if entity @e[type=pillager,tag=iva.esb.entity.iceologer,predicate=iva.esb:entity_id,nbt=!{Motion:[.0,.0,.0]}] run data modify entity @s item.components."minecraft:custom_model_data" set value {strings:["walk"]}
execute as @s[tag=!iva.esb.animation_playing] if entity @e[type=pillager,tag=iva.esb.entity.iceologer,predicate=iva.esb:entity_id,nbt={Motion:[.0,.0,.0]}] run data modify entity @s item.components."minecraft:custom_model_data" set value {}

execute unless entity @e[type=pillager,tag=iva.esb.entity_brain,tag=iva.esb.entity.iceologer,predicate=iva.esb:entity_id] run function iva.esb:entity/iceologer/animation/death
execute if entity @s[tag=iva.esb.animation_ice_chunk] run function iva.esb:entity/iceologer/animation/ice_chunk