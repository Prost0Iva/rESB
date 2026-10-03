scoreboard players add @s iva.esb.entity_lifetime 1
execute if score @s iva.esb.entity_lifetime matches 1 at @s positioned ~-.5 ~-.5 ~-.5 as @e[tag=!iva.esb.entity.shock_wave,dx=0] positioned ~.5 ~.5 ~.5 run damage @s 15 arrow at ~ ~ ~
execute if score @s iva.esb.entity_lifetime matches 1 at @s run particle minecraft:block{block_state:{id:"dirt"}} ~ ~2 ~ .25 2 .25 .01 100

execute if score @s iva.esb.entity_lifetime matches 15 at @s positioned ~-1.5 ~-.5 ~-1.5 as @e[tag=!iva.esb.entity.shock_wave,dx=2,dz=2] positioned ~1.5 ~1.5 ~1.5 run damage @s 7.5 arrow at ~ ~ ~
execute if score @s iva.esb.entity_lifetime matches 15 at @s run particle minecraft:block{block_state:{id:"dirt"}} ~-1 ~1.5 ~-1 .25 1.5 .25 .01 75
execute if score @s iva.esb.entity_lifetime matches 15 at @s run particle minecraft:block{block_state:{id:"dirt"}} ~1 ~1.5 ~1 .25 1.5 .25 .01 75
execute if score @s iva.esb.entity_lifetime matches 15 at @s run particle minecraft:block{block_state:{id:"dirt"}} ~1 ~1.5 ~-1 .25 1.5 .25 .01 75
execute if score @s iva.esb.entity_lifetime matches 15 at @s run particle minecraft:block{block_state:{id:"dirt"}} ~-1 ~1.5 ~1 .25 1.5 .25 .01 75
execute if score @s iva.esb.entity_lifetime matches 15 at @s run particle minecraft:block{block_state:{id:"dirt"}} ~ ~1.5 ~1.5 .25 1.5 .25 .01 75
execute if score @s iva.esb.entity_lifetime matches 15 at @s run particle minecraft:block{block_state:{id:"dirt"}} ~ ~1.5 ~-1.5 .25 1.5 .25 .01 75
execute if score @s iva.esb.entity_lifetime matches 15 at @s run particle minecraft:block{block_state:{id:"dirt"}} ~1.5 ~1.5 ~ .25 1.5 .25 .01 75
execute if score @s iva.esb.entity_lifetime matches 15 at @s run particle minecraft:block{block_state:{id:"dirt"}} ~-1.5 ~1.5 ~ .25 1.5 .25 .01 75

execute if score @s iva.esb.entity_lifetime matches 30 at @s positioned ~-3 ~-.5 ~-3 as @e[tag=!iva.esb.entity.shock_wave,dx=5,dz=5] positioned ~3 ~3 ~3 run damage @s 4 arrow at ~ ~ ~
execute if score @s iva.esb.entity_lifetime matches 30 at @s run particle minecraft:block{block_state:{id:"dirt"}} ~-2 ~1 ~-2 .25 1 .25 .01 50
execute if score @s iva.esb.entity_lifetime matches 30 at @s run particle minecraft:block{block_state:{id:"dirt"}} ~2 ~1 ~2 .25 1 .25 .01 50
execute if score @s iva.esb.entity_lifetime matches 30 at @s run particle minecraft:block{block_state:{id:"dirt"}} ~2 ~1 ~-2 .25 1 .25 .01 50
execute if score @s iva.esb.entity_lifetime matches 30 at @s run particle minecraft:block{block_state:{id:"dirt"}} ~-2 ~1 ~2 .25 1 .25 .01 50
execute if score @s iva.esb.entity_lifetime matches 30 at @s run particle minecraft:block{block_state:{id:"dirt"}} ~ ~1 ~3 .25 1 .25 .01 50
execute if score @s iva.esb.entity_lifetime matches 30 at @s run particle minecraft:block{block_state:{id:"dirt"}} ~ ~1 ~-3 .25 1 .25 .01 50
execute if score @s iva.esb.entity_lifetime matches 30 at @s run particle minecraft:block{block_state:{id:"dirt"}} ~3 ~1 ~ .25 1 .25 .01 50
execute if score @s iva.esb.entity_lifetime matches 30 at @s run particle minecraft:block{block_state:{id:"dirt"}} ~-3 ~1 ~ .25 1 .25 .01 50

execute if score @s iva.esb.entity_lifetime matches 30.. run kill