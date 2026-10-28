execute as @e[type=item_display,tag=iva.esb.entity.copper_golem] run function iva.esb:entity/copper_golem/animation/animation
execute as @e[type=parched,tag=iva.esb.entity.copper_golem,tag=!iva.esb.animation_playing] run function iva.esb:entity/copper_golem/attack/attack_choose
function iva.esb:entity/copper_golem/spawn
function iva.esb:entity/copper_golem/attack/attack

execute as @e[type=parched,tag=iva.esb.entity.copper_golem] store result score @s iva.esb.entity_health run data get entity @s Health
execute as @e[type=parched,tag=iva.esb.entity.copper_golem] if score @s iva.esb.entity_health matches ..99 run tag @s add iva.esb.entity_boss_phase2
execute as @e[type=parched,tag=iva.esb.entity.copper_golem] if score @s iva.esb.entity_health matches ..99 run scoreboard players set @s iva.esb.effect.conductivity 20
execute as @e[type=parched,tag=iva.esb.entity.copper_golem,tag=iva.esb.entity.copper_golem_thunder] run scoreboard players set @s iva.esb.effect.conductivity 20

execute as @e[type=parched,tag=iva.esb.entity_brain,tag=iva.esb.entity.copper_golem] at @s run function iva.esb:entity/copper_golem/sounds

execute as @e[type=parched,tag=iva.esb.entity.copper_golem] at @s unless entity @a[distance=..64] run tp ~ ~-1000 ~
#give @p bee_spawn_egg[item_name={translate:"iva.esb:item.copper_golem_spawn_egg"},item_model="iva.esb:copper_golem_spawn_egg",entity_data={id:marker,Tags:[iva.esb.entity.copper_golem_spawner]}]