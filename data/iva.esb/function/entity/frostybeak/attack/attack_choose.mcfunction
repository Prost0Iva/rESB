scoreboard players operation #temp iva.esb.entity_id = @s iva.esb.entity_id
execute if entity @s[predicate=iva.esb:entity_has_target] if entity @e[limit=1,distance=..64,type=item_display,tag=iva.esb.entity.frostybeak,predicate=iva.esb:entity_id,tag=!iva.esb.animation_playing] run scoreboard players remove @s iva.esb.entity_attack_freq 1
execute if score @s iva.esb.entity_attack_freq matches ..0 store result score @s iva.esb.entity_attack_choose run random value 1..100

execute if entity @s[tag=!iva.esb.entity_boss_phase2] if score @s iva.esb.entity_attack_freq matches ..0 if score @s iva.esb.entity_attack_choose matches 1..32 on target if entity @s[distance=..8] as @e[limit=1,distance=..64,type=item_display,tag=iva.esb.entity.frostybeak,predicate=iva.esb:entity_id] run function iva.esb:entity/frostybeak/animation/dash
execute if entity @s[tag=!iva.esb.entity_boss_phase2] if score @s iva.esb.entity_attack_freq matches ..0 if score @s iva.esb.entity_attack_choose matches 33..100 as @e[limit=1,distance=..64,type=item_display,tag=iva.esb.entity.frostybeak,predicate=iva.esb:entity_id] run function iva.esb:entity/frostybeak/animation/icicle

execute if entity @s[tag=iva.esb.entity_boss_phase2] if score @s iva.esb.entity_attack_freq matches ..0 if score @s iva.esb.entity_attack_choose matches 1..75 as @e[limit=1,distance=..64,type=item_display,tag=iva.esb.entity.frostybeak,predicate=iva.esb:entity_id] run function iva.esb:entity/frostybeak/animation/dash
execute if entity @s[tag=iva.esb.entity_boss_phase2] if score @s iva.esb.entity_attack_freq matches ..0 if score @s iva.esb.entity_attack_choose matches 76..100 as @e[limit=1,distance=..64,type=item_display,tag=iva.esb.entity.frostybeak,predicate=iva.esb:entity_id] run function iva.esb:entity/frostybeak/animation/icicle

execute if entity @s[tag=!iva.esb.entity_boss_phase2] if score @s iva.esb.entity_attack_freq matches ..0 store result score @s iva.esb.entity_attack_freq run random value 80..90
execute if entity @s[tag=iva.esb.entity_boss_phase2] if score @s iva.esb.entity_attack_freq matches ..0 store result score @s iva.esb.entity_attack_freq run random value 40..50