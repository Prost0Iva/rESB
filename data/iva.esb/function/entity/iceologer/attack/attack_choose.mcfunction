scoreboard players operation #temp iva.esb.entity_id = @s iva.esb.entity_id
execute at @s on target run scoreboard players remove @n[type=pillager,tag=iva.esb.entity.iceologer,tag=!iva.esb.animation_playing,distance=..0] iva.esb.entity_attack_freq 1

execute if score @s iva.esb.entity_attack_freq matches ..0 as @e[type=item_display,tag=iva.esb.entity.iceologer,predicate=iva.esb:entity_id] run function iva.esb:entity/iceologer/animation/ice_chunk

execute if score @s iva.esb.entity_attack_freq matches ..0 store result score @s iva.esb.entity_attack_freq run random value 90..100