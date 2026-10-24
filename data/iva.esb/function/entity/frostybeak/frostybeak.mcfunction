execute as @e[type=item_display,tag=iva.esb.entity_model,tag=iva.esb.entity.frostybeak] run function iva.esb:entity/frostybeak/animation/animation
execute as @e[type=vex,tag=iva.esb.entity.frostybeak,tag=!iva.esb.animation_playing] run function iva.esb:entity/frostybeak/attack/attack_choose

execute as @e[type=vex,tag=iva.esb.entity.frostybeak] store result score @s iva.esb.entity_health run data get entity @s Health
execute as @e[type=vex,tag=iva.esb.entity.frostybeak] if score @s iva.esb.entity_health matches ..50 run tag @s add iva.esb.entity_boss_phase2

execute as @e[type=vex,tag=iva.esb.entity_brain,tag=iva.esb.entity.frostybeak] at @s if predicate iva.esb:undead_burn_condition run tp ~ ~-1000 ~
execute as @e[type=vex,tag=iva.esb.entity.frostybeak] at @s unless entity @a[distance=..64] run tp ~ ~-1000 ~

function iva.esb:entity/frostybeak/spawn
function iva.esb:entity/frostybeak/attack/attack

#give @p bee_spawn_egg[item_name={translate:"iva.esb:item.frostybeak_spawn_egg"},item_model="iva.esb:frostybeak_spawn_egg",entity_data={id:marker,Tags:[iva.esb.entity.frostybeak_spawner]}]