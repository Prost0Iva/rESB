execute store result storage iva.esb:bossbar bossbar_temp_id int 1 run scoreboard players operation #temp iva.esb.entity_id = @s iva.esb.entity_id
execute as @e[limit=1,distance=..64,type=vex,tag=iva.esb.entity.frostybeak,predicate=iva.esb:entity_id] at @s run function iva.esb:entity/bossbar_upd with storage iva.esb:bossbar
execute unless entity @e[limit=1,distance=..64,type=vex,tag=iva.esb.entity_brain,tag=iva.esb.entity.frostybeak,predicate=iva.esb:entity_id] run function iva.esb:entity/remove_bossbar with storage iva.esb:bossbar
execute at @e[limit=1,distance=..64,type=vex,tag=iva.esb.entity_brain,tag=iva.esb.entity.frostybeak,predicate=iva.esb:entity_id] run tp @s ~ ~1 ~ ~ 0

execute unless entity @e[limit=1,distance=..64,type=vex,tag=iva.esb.entity_brain,tag=iva.esb.entity.frostybeak,predicate=iva.esb:entity_id] run function iva.esb:entity/frostybeak/animation/death
execute if entity @s[tag=iva.esb.animation_dash] run function iva.esb:entity/frostybeak/animation/dash
execute if entity @s[tag=iva.esb.animation_icicle] run function iva.esb:entity/frostybeak/animation/icicle