scoreboard players operation #temp iva.esb.entity_id = @s iva.esb.entity_id
execute if entity @s[predicate=iva.esb:entity_has_target] if entity @e[limit=1,distance=..64,type=item_display,tag=iva.esb.entity.copper_golem,predicate=iva.esb:entity_id,tag=!iva.esb.animation_playing] run scoreboard players remove @s iva.esb.entity_attack_freq 1
execute if score @s iva.esb.entity_attack_freq matches ..0 store result score @s iva.esb.entity_attack_choose run random value 1..100

execute if score @s iva.esb.entity_attack_freq matches ..0 if score @s iva.esb.entity_attack_choose matches 1..32 as @e[limit=1,distance=..64,type=item_display,tag=iva.esb.entity.copper_golem,predicate=iva.esb:entity_id] run function iva.esb:entity/copper_golem/animation/energy_ball
execute if score @s iva.esb.entity_attack_freq matches ..0 if score @s iva.esb.entity_attack_choose matches 33..65 as @e[limit=1,distance=..64,type=item_display,tag=iva.esb.entity.copper_golem,predicate=iva.esb:entity_id] run function iva.esb:entity/copper_golem/animation/block_throw
execute if score @s iva.esb.entity_attack_freq matches ..0 if score @s iva.esb.entity_attack_choose matches 66..100 as @e[limit=1,distance=..64,type=item_display,tag=iva.esb.entity.copper_golem,predicate=iva.esb:entity_id] run function iva.esb:entity/copper_golem/animation/shock_wave

execute if entity @s[tag=!iva.esb.entity_boss_phase2] if score @s iva.esb.entity_attack_freq matches ..0 store result score @s iva.esb.entity_attack_freq run random value 100..140
execute if entity @s[tag=iva.esb.entity_boss_phase2] if score @s iva.esb.entity_attack_freq matches ..0 store result score @s iva.esb.entity_attack_freq run random value 60..100