scoreboard players remove @s iva.esb.effect.conductivity 1
execute at @s run particle electric_spark ~ ~1 ~ .4 .4 .4 .01 1 force
execute at @s anchored eyes if score @s iva.esb.effect.conductivity_freq matches 1 facing entity @n[scores={iva.esb.effect.conductivity=1..},distance=.1..5] eyes run function iva.esb:effect/conductivity/raycast

scoreboard players remove @s iva.esb.effect.conductivity_freq 1
execute unless score @s iva.esb.effect.conductivity_freq matches 0.. store result score @s iva.esb.effect.conductivity_freq run random value 5..100