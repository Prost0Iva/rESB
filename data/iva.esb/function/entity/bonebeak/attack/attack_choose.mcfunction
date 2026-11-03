scoreboard players operation #temp iva.esb.entity_id = @s iva.esb.entity_id
execute if entity @s[predicate=iva.esb:entity_has_target] if entity @e[limit=1,distance=..64,type=item_display,tag=iva.esb.entity.bonebeak,predicate=iva.esb:entity_id,tag=!iva.esb.animation_playing] run scoreboard players remove @s iva.esb.entity_attack_freq 1

execute if score @s iva.esb.entity_attack_freq matches ..0 on target if entity @s[distance=..5] as @e[limit=1,distance=..64,type=item_display,tag=iva.esb.entity.bonebeak,predicate=iva.esb:entity_id,tag=!iva.esb.animation_playing] run function iva.esb:entity/bonebeak/animation/dash

execute if score @s iva.esb.entity_attack_freq matches ..0 store result score @s iva.esb.entity_attack_freq run random value 60..80