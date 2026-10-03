execute at @s positioned ~-.1 ~-.1 ~-.1 as @e[tag=!iva.esb.entity.energy_ball,dx=0] positioned ~-.8 ~-.8 ~-.8 if entity @s positioned ~.9 ~.9 ~.9 run damage @s 7.5 arrow at ~ ~ ~
execute at @s run particle dust{color:[0.35,1.0,0.96],scale:2} ~ ~ ~ 0 0 0 0 1 force
scoreboard players add @s iva.esb.entity_lifetime 1
execute if score @s iva.esb.entity_lifetime matches 100.. run kill
execute at @s run tp ^ ^ ^.25