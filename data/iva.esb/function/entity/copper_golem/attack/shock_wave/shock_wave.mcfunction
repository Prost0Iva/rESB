scoreboard players add @s iva.esb.entity_lifetime 1
execute if score @s iva.esb.entity_lifetime matches 1 at @s as @e[type=!#iva.esb:no_mob,tag=!iva.esb.entity.shock_wave,tag=!iva.esb.entity.copper_golem,distance=..1] run damage @s 15 fall at ~ ~ ~
execute if score @s iva.esb.entity_lifetime matches 1 at @s run particle minecraft:block{block_state:{id:"dirt"}} ~ ~2 ~ .25 2 .25 .01 100

execute if score @s iva.esb.entity_lifetime matches 5 at @s as @e[type=!#iva.esb:no_mob,tag=!iva.esb.entity.shock_wave,tag=!iva.esb.entity.copper_golem,distance=..2] run damage @s 7.5 fall at ~ ~ ~
execute if score @s iva.esb.entity_lifetime matches 5 at @s run particle minecraft:block{block_state:{id:"dirt"}} ~-1 ~1.5 ~-1 .25 1.5 .25 .01 75
execute if score @s iva.esb.entity_lifetime matches 5 at @s run particle minecraft:block{block_state:{id:"dirt"}} ~1 ~1.5 ~1 .25 1.5 .25 .01 75
execute if score @s iva.esb.entity_lifetime matches 5 at @s run particle minecraft:block{block_state:{id:"dirt"}} ~1 ~1.5 ~-1 .25 1.5 .25 .01 75
execute if score @s iva.esb.entity_lifetime matches 5 at @s run particle minecraft:block{block_state:{id:"dirt"}} ~-1 ~1.5 ~1 .25 1.5 .25 .01 75
execute if score @s iva.esb.entity_lifetime matches 5 at @s run particle minecraft:block{block_state:{id:"dirt"}} ~ ~1.5 ~1.5 .25 1.5 .25 .01 75
execute if score @s iva.esb.entity_lifetime matches 5 at @s run particle minecraft:block{block_state:{id:"dirt"}} ~ ~1.5 ~-1.5 .25 1.5 .25 .01 75
execute if score @s iva.esb.entity_lifetime matches 5 at @s run particle minecraft:block{block_state:{id:"dirt"}} ~1.5 ~1.5 ~ .25 1.5 .25 .01 75
execute if score @s iva.esb.entity_lifetime matches 5 at @s run particle minecraft:block{block_state:{id:"dirt"}} ~-1.5 ~1.5 ~ .25 1.5 .25 .01 75

execute if score @s iva.esb.entity_lifetime matches 10 at @s as @e[type=!#iva.esb:no_mob,tag=!iva.esb.entity.shock_wave,tag=!iva.esb.entity.copper_golem,distance=..3] run damage @s 4 fall at ~ ~ ~
execute if score @s iva.esb.entity_lifetime matches 10 at @s run particle minecraft:block{block_state:{id:"dirt"}} ~-2 ~1 ~-2 .25 1 .25 .01 50
execute if score @s iva.esb.entity_lifetime matches 10 at @s run particle minecraft:block{block_state:{id:"dirt"}} ~2 ~1 ~2 .25 1 .25 .01 50
execute if score @s iva.esb.entity_lifetime matches 10 at @s run particle minecraft:block{block_state:{id:"dirt"}} ~2 ~1 ~-2 .25 1 .25 .01 50
execute if score @s iva.esb.entity_lifetime matches 10 at @s run particle minecraft:block{block_state:{id:"dirt"}} ~-2 ~1 ~2 .25 1 .25 .01 50
execute if score @s iva.esb.entity_lifetime matches 10 at @s run particle minecraft:block{block_state:{id:"dirt"}} ~ ~1 ~3 .25 1 .25 .01 50
execute if score @s iva.esb.entity_lifetime matches 10 at @s run particle minecraft:block{block_state:{id:"dirt"}} ~ ~1 ~-3 .25 1 .25 .01 50
execute if score @s iva.esb.entity_lifetime matches 10 at @s run particle minecraft:block{block_state:{id:"dirt"}} ~3 ~1 ~ .25 1 .25 .01 50
execute if score @s iva.esb.entity_lifetime matches 10 at @s run particle minecraft:block{block_state:{id:"dirt"}} ~-3 ~1 ~ .25 1 .25 .01 50

execute if score @s iva.esb.entity_lifetime matches 10.. run kill