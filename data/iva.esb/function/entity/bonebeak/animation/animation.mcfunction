scoreboard players operation #temp iva.esb.entity_id = @s iva.esb.entity_id
execute at @e[type=vex,tag=iva.esb.entity_brain,tag=iva.esb.entity.bonebeak,predicate=iva.esb:entity_id] run tp @s ~ ~1 ~ ~ 0

execute unless entity @e[type=vex,tag=iva.esb.entity_brain,tag=iva.esb.entity.bonebeak,predicate=iva.esb:entity_id] run function iva.esb:entity/bonebeak/animation/death
execute if entity @s[tag=iva.esb.animation_dash] run function iva.esb:entity/bonebeak/animation/dash
execute if entity @s[tag=iva.esb.animation_transform] run function iva.esb:entity/bonebeak/animation/transform