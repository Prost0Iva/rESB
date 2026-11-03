function iva.esb:entity/frostybeak/attack/attack_choose

execute store result score @s iva.esb.entity_health run data get entity @s Health
execute if score @s iva.esb.entity_health matches ..50 run tag @s add iva.esb.entity_boss_phase2

execute if predicate iva.esb:undead_burn_condition run tp ~ ~-1000 ~
execute unless entity @a[distance=..64] run tp ~ ~-1000 ~

function iva.esb:entity/frostybeak/sounds

#give @p bee_spawn_egg[item_name={translate:"iva.esb:item.frostybeak_spawn_egg"},item_model="iva.esb:frostybeak_spawn_egg",entity_data={id:marker,Tags:[iva.esb.entity.frostybeak_spawner]}]