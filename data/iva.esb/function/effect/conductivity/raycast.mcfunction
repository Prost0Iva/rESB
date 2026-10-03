execute unless score #conductivity iva.esb.raycast matches 0.. run scoreboard players set #conductivity iva.esb.raycast 50
execute if score #conductivity iva.esb.raycast matches 1.. run tag @s add iva.esb.effect.conductivity
particle electric_spark ~ ~ ~ .05 .05 .05 .01 1 force
execute positioned ~-.9 ~-.9 ~-.9 as @e[tag=!iva.esb.effect.conductivity,dx=0] positioned ~.9 ~.9 ~.9 if entity @s[dx=0] run scoreboard players set #conductivity iva.esb.raycast -1
execute positioned ~-.9 ~-.9 ~-.9 as @e[tag=!iva.esb.effect.conductivity,dx=0] positioned ~.9 ~.9 ~.9 if entity @s[dx=0] run function iva.esb:effect/conductivity/hit
#execute unless block ~ ~ ~ #air run scoreboard players set #conductivity iva.esb.raycast
execute if score #conductivity iva.esb.raycast matches ..0 run tag @s remove iva.esb.effect.conductivity
execute if score #conductivity iva.esb.raycast matches 0.. run scoreboard players remove #conductivity iva.esb.raycast 1
execute if score #conductivity iva.esb.raycast matches 0.. positioned ^ ^ ^.1 run function iva.esb:effect/conductivity/raycast