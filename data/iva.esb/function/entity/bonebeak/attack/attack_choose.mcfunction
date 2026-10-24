scoreboard players operation #temp iva.esb.entity_id = @s iva.esb.entity_id
execute at @s on target run scoreboard players remove @n[type=vex,tag=iva.esb.entity.bonebeak,tag=!iva.esb.animation_playing,distance=..0] iva.esb.entity_attack_freq 1

execute at @s if score @s iva.esb.entity_attack_freq matches ..0 on target if entity @s[distance=..5] as @n[type=vex,tag=iva.esb.entity.bonebeak,tag=!iva.esb.animation_playing,distance=..0] as @e[type=item_display,tag=iva.esb.entity.bonebeak,predicate=iva.esb:entity_id] run function iva.esb:entity/bonebeak/animation/dash

execute if score @s iva.esb.entity_attack_freq matches ..0 store result score @s iva.esb.entity_attack_freq run random value 60..80