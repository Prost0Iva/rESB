execute store result score @s iva.esb.entity_health run data get entity @s Health
execute if score @s iva.esb.entity_health matches ..50 run tag @s add iva.esb.entity_boss_phase2
execute store result bossbar iva.esb:frostybeak max run data get entity @s attributes[{id:"minecraft:max_health"}].base
execute store result bossbar iva.esb:frostybeak value run data get entity @s Health
bossbar set iva.esb:frostybeak players @a[distance=..64]